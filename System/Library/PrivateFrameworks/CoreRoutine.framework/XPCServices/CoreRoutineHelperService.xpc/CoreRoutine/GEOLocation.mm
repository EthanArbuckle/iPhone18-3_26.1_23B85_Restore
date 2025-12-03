@interface GEOLocation
- (id)initWithRTLocation:(id)location includeTimeStamp:(BOOL)stamp;
@end

@implementation GEOLocation

- (id)initWithRTLocation:(id)location includeTimeStamp:(BOOL)stamp
{
  stampCopy = stamp;
  locationCopy = location;
  if (locationCopy)
  {
    v7 = [GEOLocation alloc];
    [locationCopy latitude];
    v9 = v8;
    [locationCopy longitude];
    v11 = [v7 initWithLatitude:v9 longitude:v10];
    [locationCopy horizontalUncertainty];
    [v11 setHorizontalAccuracy:?];
    if (stampCopy)
    {
      date = [locationCopy date];
      [date timeIntervalSinceReferenceDate];
      [v11 setTimestamp:?];
    }

    else
    {
      [v11 setTimestamp:0.0];
    }

    referenceFrame = [locationCopy referenceFrame];
    if (referenceFrame > 2)
    {
      v15 = 0;
    }

    else
    {
      v15 = dword_1000927A0[referenceFrame];
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