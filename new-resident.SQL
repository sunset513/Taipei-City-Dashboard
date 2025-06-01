-- public table
CREATE TABLE new_resident_restaurants (
    餐廳名稱 VARCHAR(50),
    認證別 VARCHAR(50),
    縣市 VARCHAR(50),
    性質 VARCHAR(50),
    認證單位 VARCHAR(50),
    地址 VARCHAR(50),
    經度 DECIMAL(9,6),
    緯度 DECIMAL(9,6),
    行政區 VARCHAR(50),
    類別  VARCHAR(50)
);

CREATE TABLE new_resident_nationality_distribution (
    餐廳名稱 VARCHAR(50),
    地址 VARCHAR(500),
    店長國籍 VARCHAR(50),
    行政區 VARCHAR(50),
    經度 DECIMAL(9,6),
    緯度 DECIMAL(9,6),
    縣市 VARCHAR(500)
);

CREATE TABLE business_districts_distribution (
    商圈名稱 VARCHAR(100),
    行政區 VARCHAR(50),
    縣市 VARCHAR(20),
    經度 DECIMAL(9,6),
    緯度 DECIMAL(9,6),
    建議半徑 INTEGER,
    參考說明 TEXT,
);

CREATE TABLE new_resident_area_statistics (
    城市 VARCHAR(50),
    行政區 VARCHAR(50),
    新住民人口數 INT,
    新住民國中小學生數 INT,
    新住民學生占該區國中小學生比率 DECIMAL(5,2),
    中心點緯度 DECIMAL(9,6),
    中心點經度 DECIMAL(9,6),
    建議半徑_公尺 INT
);

-- components maps table
INSERT INTO component_maps(index, title, type, source, size, icon, paint, property)
VALUES('muslim_rest_taipei', '穆斯林友善餐廳分佈', 'circle', 'geojson', 'big', null, '{
  "circle-color": "#9E1510"
}','[{"key":"餐廳名稱","name":"餐廳名稱"},{"key":"地址","name":"地址"}]');

INSERT INTO component_maps(index, title, type, source, size, icon, paint, property)
VALUES('muslim_rest_metrotaipei', '穆斯林友善餐廳分佈', 'circle', 'geojson', 'big', null, '{
  "circle-color": "#9E1510"
}','[{"key":"餐廳名稱","name":"餐廳名稱"},{"key":"地址","name":"地址"}]');

INSERT INTO component_maps(index, title, type, source, size, icon, paint, property)
VALUES('muslim_hotel_taipei', '穆斯林友善商旅分佈', 'circle', 'geojson', 'big', null, '{
  "circle-color": "#9E1510"
}','[{"key":"餐廳名稱","name":"商旅名稱"},{"key":"地址","name":"地址"}]');

INSERT INTO component_maps(index, title, type, source, size, icon, paint, property)
VALUES('muslim_hotel_metrotaipei', '穆斯林友善商旅分佈', 'circle', 'geojson', 'big', null, '{
  "circle-color": "#9E1510"
}','[{"key":"餐廳名稱","name":"商旅名稱"},{"key":"地址","name":"地址"}]');


INSERT INTO component_maps(index, title, type, source, size, icon, paint, property)
VALUES('new_resident_nationality_distribution_taipei', '新住民老闆餐廳國籍分布', 'circle', 'geojson', 'big', null, '{
  "circle-color": "#77EDA0"
}','[{"key":"餐廳名稱","name":"餐廳名稱"},{"key":"店長國籍","name":"店長國籍"},{"key":"地址","name":"地址"}]');


INSERT INTO component_maps(index, title, type, source, size, icon, paint, property)
VALUES('new_resident_nationality_distribution_metrotaipei', '新住民老闆餐廳國籍分布', 'circle', 'geojson', 'big', null, '{
  "circle-color": "#77EDA0"
}','[{"key":"餐廳名稱","name":"餐廳名稱"},{"key":"店長國籍","name":"店長國籍"},{"key":"地址","name":"地址"}]');


INSERT INTO component_maps(index, title, type, source, size, icon, paint, property)
VALUES('new_resident_area_statistics_metrotaipei', '新住民人口分布', 'circle', 'geojson', 'big', null, '{
  "circle-color": "#DBA6E6",
  "circle-opacity": 0.4,
  "circle-radius": ["/", ["get", "建議半徑(公尺)"], 10]
}','[{"key":"行政區","name":"行政區"},{"key":"新住民人口數","name":"新住民人口數"}]');

INSERT INTO component_maps(index, title, type, source, size, icon, paint, property)
VALUES('new_resident_area_statistics_taipei', '新住民人口分布', 'circle', 'geojson', 'big', null, '{
  "circle-color": "#DBA6E6",
  "circle-opacity": 0.4,
  "circle-radius": ["/", ["get", "建議半徑(公尺)"], 10]
}','[{"key":"行政區","name":"行政區"},{"key":"新住民人口數","name":"新住民人口數"}]');

INSERT INTO component_maps(index, title, type, source, size, icon, paint, property)
VALUES('business_district_distribution_metrotaipei', '商圈行政區分布', 'circle', 'geojson', 'big', null, '{
  "circle-color": "#EDDD77",
  "circle-opacity": 0.5,
  "circle-radius": ["/", ["get", "建議半徑"], 10]
}','[{"key":"商圈名稱","name":"商圈名稱"}]');

INSERT INTO component_maps(index, title, type, source, size, icon, paint, property)
VALUES('business_district_distribution_taipei', '商圈行政區分布', 'circle', 'geojson', 'big', null, '{
  "circle-color": "#EDDD77",
  "circle-opacity": 0.5,
  "circle-radius": ["/", ["get", "建議半徑"], 10]
}','[{"key":"商圈名稱","name":"商圈名稱"}]');


-- components table
INSERT INTO components(index, name)
VALUES('muslim_hotel', '穆斯林友善商旅分佈');

INSERT INTO components(index, name)
VALUES('muslim_rest', '穆斯林友善餐廳分佈');

INSERT INTO components (index, name)
VALUES ('new_resident_nationality_distribution', '新住民老闆餐廳國籍分布');

INSERT INTO components (index, name)
VALUES ('business_district_distribution', '商圈行政區分布');

INSERT INTO components (index, name)
VALUES ('new_resident_area_statistics', '新住民人口分布');

-- component_charts table
INSERT INTO component_charts(index, color, types, unit)
VALUES('muslim_hotel', '{#24B0DD,#56B96D,#F8CF58,#F5AD4A,#E170A6,#ED6A45,#AF4137,#10294A}', '{ColumnChart}', '間');

INSERT INTO component_charts(index, color, types, unit)
VALUES('muslim_rest', '{#24B0DD,#56B96D,#F8CF58,#F5AD4A,#E170A6,#ED6A45,#AF4137,#10294A}', '{ColumnChart}', '間');

INSERT INTO component_charts (index, color, types, unit)
VALUES ('business_district_distribution', '{#F5A623, #50E3C2, #B8E986, #F8E71C, #BD10E0, #4A90E2, #7ED321, #D0021B}', '{DistrictChart}', '商圈');

INSERT INTO component_charts (index, color, types, unit)
VALUES ('new_resident_area_statistics','{#F5A623, #50E3C2, #B8E986, #F8E71C, #BD10E0, #4A90E2, #7ED321, #D0021B}', '{DistrictChart}', '人口數量');

INSERT INTO component_charts (index, color, types, unit)
VALUES ('new_resident_nationality_distribution','{#F5A623, #50E3C2, #B8E986, #F8E71C, #BD10E0, #4A90E2, #7ED321, #D0021B}', '{DonutChart}', '人口數量');

-- query_charts table
-- 台北穆斯林友善商旅
INSERT INTO query_charts(index, time_from, created_at, updated_at, query_type, query_chart, city)
VALUES(
  'muslim_hotel',
  'static',
  '2025-05-31 15:52:00+00',
  '2025-05-31 15:52:00+00',
  'three_d',
  'SELECT * FROM (
    SELECT 
      行政區 AS x_axis,
      類別 AS y_axis,
      COUNT(*) AS data
    FROM new_resident_restaurants
    WHERE 類別 <> ''無'' AND 地區 = ''臺北市'' AND 類別 in (''穆斯林商旅'', ''穆斯林友善商旅'')
    GROUP BY 
      行政區,
      類別
  ) AS t
  ORDER BY 
    ARRAY_POSITION(ARRAY[''北投區'', ''士林區'', ''內湖區'', ''南港區'', ''松山區'', ''信義區'', ''中山區'', ''大同區'', ''中正區'', ''萬華區'', ''大安區'', ''文山區'', ''新莊區'', ''淡水區'', ''汐止區'', ''板橋區'', ''三重區'', ''樹林區'', ''土城區'', ''蘆洲區'', ''中和區'', ''永和區'', ''新店區'', ''鶯歌區'', ''三峽區'', ''瑞芳區'', ''五股區'', ''泰山區'', ''林口區'', ''深坑區'', ''石碇區'', ''坪林區'', ''三芝區'', ''石門區'', ''八里區'', ''平溪區'', ''雙溪區'', ''貢寮區'', ''金山區'', ''萬里區'', ''烏來區''], t.x_axis),
    ARRAY_POSITION(ARRAY[''穆斯林商旅'', ''穆斯林友善商旅''], t.y_axis)
  ',
  'taipei'
);
-- 雙北穆斯林友善商旅
INSERT INTO query_charts("index", time_from, created_at, updated_at, query_type, query_chart, city)
VALUES(
  'muslim_hotel',
  'static',
  '2025-05-31 15:52:00+00',
  '2025-05-31 15:52:00+00',
  'three_d',
  'SELECT * FROM (
    SELECT 
      行政區 AS x_axis,
      類別 AS y_axis,
      COUNT(*) AS data
    FROM new_resident_restaurants
    WHERE 類別 <> ''無'' AND 類別 in (''穆斯林商旅'', ''穆斯林友善商旅'')
    GROUP BY 
      行政區,
      類別
  ) AS t
  ORDER BY 
    ARRAY_POSITION(ARRAY[''北投區'', ''士林區'', ''內湖區'', ''南港區'', ''松山區'', ''信義區'', ''中山區'', ''大同區'', ''中正區'', ''萬華區'', ''大安區'', ''文山區'', ''新莊區'', ''淡水區'', ''汐止區'', ''板橋區'', ''三重區'', ''樹林區'', ''土城區'', ''蘆洲區'', ''中和區'', ''永和區'', ''新店區'', ''鶯歌區'', ''三峽區'', ''瑞芳區'', ''五股區'', ''泰山區'', ''林口區'', ''深坑區'', ''石碇區'', ''坪林區'', ''三芝區'', ''石門區'', ''八里區'', ''平溪區'', ''雙溪區'', ''貢寮區'', ''金山區'', ''萬里區'', ''烏來區''], t.x_axis),
    ARRAY_POSITION(ARRAY[''穆斯林商旅'', ''穆斯林友善商旅''], t.y_axis)
  ',
  'metrotaipei'
);
-- 台北穆斯林友善餐廳
INSERT INTO query_charts("index", time_from, created_at, updated_at, query_type, query_chart, city)
VALUES(
  'muslim_rest',
  'static',
  '2025-05-31 15:52:00+00',
  '2025-05-31 15:52:00+00',
  'three_d',
  'SELECT * FROM (
    SELECT 
      行政區 AS x_axis,
      類別 AS y_axis,
      COUNT(*) AS data
    FROM new_resident_restaurants
    WHERE 類別 <> ''無'' AND 縣市 = ''臺北市'' AND 類別 in (''穆斯林餐廳'', ''穆斯林友善餐廳'')
    GROUP BY 
      行政區,
      類別
  ) AS t
  ORDER BY 
    ARRAY_POSITION(ARRAY[''北投區'', ''士林區'', ''內湖區'', ''南港區'', ''松山區'', ''信義區'', ''中山區'', ''大同區'', ''中正區'', ''萬華區'', ''大安區'', ''文山區'', ''新莊區'', ''淡水區'', ''汐止區'', ''板橋區'', ''三重區'', ''樹林區'', ''土城區'', ''蘆洲區'', ''中和區'', ''永和區'', ''新店區'', ''鶯歌區'', ''三峽區'', ''瑞芳區'', ''五股區'', ''泰山區'', ''林口區'', ''深坑區'', ''石碇區'', ''坪林區'', ''三芝區'', ''石門區'', ''八里區'', ''平溪區'', ''雙溪區'', ''貢寮區'', ''金山區'', ''萬里區'', ''烏來區''], t.x_axis),
    ARRAY_POSITION(ARRAY[''穆斯林餐廳'', ''穆斯林友善餐廳''], t.y_axis)
  ',
  'taipei'
);
-- 雙北穆斯林友善餐廳
INSERT INTO query_charts("index", time_from, created_at, updated_at, query_type, query_chart, city)
VALUES(
  'muslim_rest',
  'static',
  '2025-05-31 15:52:00+00',
  '2025-05-31 15:52:00+00',
  'three_d',
  'SELECT * FROM (
    SELECT 
      行政區 AS x_axis,
      類別 AS y_axis,
      COUNT(*) AS data
    FROM new_resident_restaurants
    WHERE 類別 <> ''無'' AND 類別 in (''穆斯林餐廳'', ''穆斯林友善餐廳'')
    GROUP BY 
      行政區,
      類別
  ) AS t
  ORDER BY 
    ARRAY_POSITION(ARRAY[''北投區'', ''士林區'', ''內湖區'', ''南港區'', ''松山區'', ''信義區'', ''中山區'', ''大同區'', ''中正區'', ''萬華區'', ''大安區'', ''文山區'', ''新莊區'', ''淡水區'', ''汐止區'', ''板橋區'', ''三重區'', ''樹林區'', ''土城區'', ''蘆洲區'', ''中和區'', ''永和區'', ''新店區'', ''鶯歌區'', ''三峽區'', ''瑞芳區'', ''五股區'', ''泰山區'', ''林口區'', ''深坑區'', ''石碇區'', ''坪林區'', ''三芝區'', ''石門區'', ''八里區'', ''平溪區'', ''雙溪區'', ''貢寮區'', ''金山區'', ''萬里區'', ''烏來區''], t.x_axis),
    ARRAY_POSITION(ARRAY[''穆斯林餐廳'', ''穆斯林友善餐廳''], t.y_axis)
  ',
  'metrotaipei'
);

-- 台北新住民老闆餐廳國籍分布
-- 雙北新住民老闆餐廳國籍分布

-- 台北新住民人口分布
-- 雙北新住民人口分布

-- 台北商圈行政區分布
-- 雙北商圈行政區分布
