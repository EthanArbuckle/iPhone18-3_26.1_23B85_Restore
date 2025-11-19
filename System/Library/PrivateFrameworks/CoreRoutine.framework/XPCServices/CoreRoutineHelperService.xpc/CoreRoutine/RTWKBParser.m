@interface RTWKBParser
- (double)readDoubleFromData:(id)a3 offset:(unint64_t *)a4 littleEndian:(BOOL)a5;
- (id)parsePolygonFromData:(id)a3 offset:(unint64_t *)a4;
- (id)parsePolygonsFromData:(id)a3;
- (unint64_t)readUInt64FromData:(id)a3 offset:(unint64_t *)a4 littleEndian:(BOOL)a5;
- (unsigned)readUInt32FromData:(id)a3 offset:(unint64_t *)a4 littleEndian:(BOOL)a5;
@end

@implementation RTWKBParser

- (unsigned)readUInt32FromData:(id)a3 offset:(unint64_t *)a4 littleEndian:(BOOL)a5
{
  v5 = a5;
  v9 = 0;
  [a3 getBytes:&v9 range:{*a4, 4}];
  v7 = bswap32(v9);
  if (v5)
  {
    result = v9;
  }

  else
  {
    result = v7;
  }

  *a4 += 4;
  return result;
}

- (unint64_t)readUInt64FromData:(id)a3 offset:(unint64_t *)a4 littleEndian:(BOOL)a5
{
  v5 = a5;
  v9 = 0;
  [a3 getBytes:&v9 range:{*a4, 8}];
  v7 = bswap64(v9);
  if (v5)
  {
    result = v9;
  }

  else
  {
    result = v7;
  }

  *a4 += 8;
  return result;
}

- (double)readDoubleFromData:(id)a3 offset:(unint64_t *)a4 littleEndian:(BOOL)a5
{
  v5 = a5;
  v10 = 0.0;
  [a3 getBytes:&v10 range:{*a4, 8}];
  v7 = v10;
  *&v8 = COERCE_DOUBLE(bswap64(*&v10));
  if (!v5)
  {
    v7 = *&v8;
  }

  *a4 += 8;
  return v7;
}

- (id)parsePolygonFromData:(id)a3 offset:(unint64_t *)a4
{
  v7 = a3;
  v15 = 0;
  [v7 getBytes:&v15 range:{(*a4)++, 1}];
  v8 = v15;
  v9 = [(RTWKBParser *)self readUInt32FromData:v7 offset:a4 littleEndian:v15 == 1];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v10 = sub_1000011A0(&qword_1000B2A00);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(a2);
      v12 = @"NO";
      *buf = 138413058;
      v17 = v11;
      if (v8 == 1)
      {
        v12 = @"YES";
      }

      v18 = 1024;
      v19 = v15;
      v20 = 2112;
      v21 = v12;
      v22 = 1024;
      v23 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@, byteOrder, %d, littleEndian, %@, geometryType, %d", buf, 0x22u);
    }
  }

  if (v9 == 3)
  {
    v13 = [(RTWKBParser *)self parsePolygonFromData:v7 offset:a4 littleEndian:v8 == 1];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)parsePolygonsFromData:(id)a3
{
  v5 = a3;
  v18 = 0;
  [v5 getBytes:&v18 range:{0, 1}];
  v19 = 1;
  v6 = v18;
  v7 = [(RTWKBParser *)self readUInt32FromData:v5 offset:&v19 littleEndian:v18 == 1];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v8 = sub_1000011A0(&qword_1000B2A00);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(a2);
      v10 = @"NO";
      *buf = 138413058;
      v21 = v9;
      if (v6 == 1)
      {
        v10 = @"YES";
      }

      v22 = 1024;
      v23 = v18;
      v24 = 2112;
      v25 = v10;
      v26 = 1024;
      v27 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@, byteOrder, %d, littleEndian, %@, geometryType, %d", buf, 0x22u);
    }
  }

  v11 = objc_opt_new();
  if (v7 == 6)
  {
    v13 = [(RTWKBParser *)self readUInt32FromData:v5 offset:&v19 littleEndian:v6 == 1];
    if (v13)
    {
      v14 = v13;
      do
      {
        v15 = [(RTWKBParser *)self parsePolygonFromData:v5 offset:&v19];
        if ([v15 count])
        {
          [v11 addObjectsFromArray:v15];
        }

        --v14;
      }

      while (v14);
    }
  }

  else if (v7 == 3)
  {
    v12 = [(RTWKBParser *)self parsePolygonFromData:v5 offset:&v19 littleEndian:v6 == 1];
    goto LABEL_16;
  }

  v12 = v11;
LABEL_16:
  v16 = v12;

  return v16;
}

@end