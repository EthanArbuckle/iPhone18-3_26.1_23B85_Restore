@interface GEOWifiAccessPoint
- (id)initWithRTWiFiAccessPoint:(id)point includeTimeStamp:(BOOL)stamp;
@end

@implementation GEOWifiAccessPoint

- (id)initWithRTWiFiAccessPoint:(id)point includeTimeStamp:(BOOL)stamp
{
  stampCopy = stamp;
  pointCopy = point;
  if (pointCopy)
  {
    v20.receiver = self;
    v20.super_class = GEOWifiAccessPoint;
    v7 = [(GEOWifiAccessPoint *)&v20 init];
    v8 = v7;
    if (v7)
    {
      if (stampCopy)
      {
        [pointCopy age];
        v10 = v9;
        date = [pointCopy date];
        v12 = [NSDate dateWithTimeInterval:date sinceDate:v10];
        [v12 timeIntervalSinceReferenceDate];
        [(GEOWifiAccessPoint *)v8 setScanTimestamp:v13];
      }

      else
      {
        [(GEOWifiAccessPoint *)v7 setScanTimestamp:0];
      }

      [pointCopy age];
      [(GEOWifiAccessPoint *)v8 setAge:v16];
      -[GEOWifiAccessPoint setChannel:](v8, "setChannel:", [pointCopy channel]);
      v17 = [pointCopy mac];
      v18 = [v17 copy];
      [(GEOWifiAccessPoint *)v8 setMacId:v18];

      -[GEOWifiAccessPoint setRssi:](v8, "setRssi:", [pointCopy rssi]);
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    v14 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[GEOWifiAccessPoint(XPCMapItemService) initWithRTWiFiAccessPoint:includeTimeStamp:]";
      v23 = 1024;
      v24 = 133;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: accessPoint (in %s:%d)", buf, 0x12u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end