@interface GEOLocation
- (id)initWithRTLocation:(id)a3 includeTimeStamp:(BOOL)a4;
@end

@implementation GEOLocation

- (id)initWithRTLocation:(id)a3 includeTimeStamp:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v7 = [GEOLocation alloc];
    [v6 latitude];
    v9 = v8;
    [v6 longitude];
    v11 = [v7 initWithLatitude:v9 longitude:v10];
    [v6 horizontalUncertainty];
    [v11 setHorizontalAccuracy:?];
    if (v4)
    {
      v12 = [v6 date];
      [v12 timeIntervalSinceReferenceDate];
      [v11 setTimestamp:?];
    }

    else
    {
      [v11 setTimestamp:0.0];
    }

    v14 = [v6 referenceFrame];
    if (v14 > 2)
    {
      v15 = 0;
    }

    else
    {
      v15 = dword_1000927A0[v14];
    }

    [v11 setReferenceFrame:v15];
  }

  else
  {
    v13 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "[GEOLocation(XPCMapItemService) initWithRTLocation:includeTimeStamp:]";
      v19 = 1024;
      v20 = 93;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location (in %s:%d)", &v17, 0x12u);
    }

    v11 = 0;
  }

  return v11;
}

@end