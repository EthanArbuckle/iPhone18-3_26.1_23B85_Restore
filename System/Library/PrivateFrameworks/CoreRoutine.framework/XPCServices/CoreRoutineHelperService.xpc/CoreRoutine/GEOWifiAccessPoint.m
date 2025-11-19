@interface GEOWifiAccessPoint
- (id)initWithRTWiFiAccessPoint:(id)a3 includeTimeStamp:(BOOL)a4;
@end

@implementation GEOWifiAccessPoint

- (id)initWithRTWiFiAccessPoint:(id)a3 includeTimeStamp:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v20.receiver = self;
    v20.super_class = GEOWifiAccessPoint;
    v7 = [(GEOWifiAccessPoint *)&v20 init];
    v8 = v7;
    if (v7)
    {
      if (v4)
      {
        [v6 age];
        v10 = v9;
        v11 = [v6 date];
        v12 = [NSDate dateWithTimeInterval:v11 sinceDate:v10];
        [v12 timeIntervalSinceReferenceDate];
        [(GEOWifiAccessPoint *)v8 setScanTimestamp:v13];
      }

      else
      {
        [(GEOWifiAccessPoint *)v7 setScanTimestamp:0];
      }

      [v6 age];
      [(GEOWifiAccessPoint *)v8 setAge:v16];
      -[GEOWifiAccessPoint setChannel:](v8, "setChannel:", [v6 channel]);
      v17 = [v6 mac];
      v18 = [v17 copy];
      [(GEOWifiAccessPoint *)v8 setMacId:v18];

      -[GEOWifiAccessPoint setRssi:](v8, "setRssi:", [v6 rssi]);
    }

    self = v8;
    v15 = self;
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

    v15 = 0;
  }

  return v15;
}

@end