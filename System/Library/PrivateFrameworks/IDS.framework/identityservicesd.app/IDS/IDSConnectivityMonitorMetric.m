@interface IDSConnectivityMonitorMetric
- (IDSConnectivityMonitorMetric)initWithProperties:(id)a3;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSConnectivityMonitorMetric

- (IDSConnectivityMonitorMetric)initWithProperties:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSConnectivityMonitorMetric;
  v6 = [(IDSConnectivityMonitorMetric *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_properties, a3);
  }

  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(IDSConnectivityMonitorMetric *)self properties];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 success]);

  if (v5)
  {
    CFDictionarySetValue(v3, @"MessageSuccess", v5);
  }

  v6 = [(IDSConnectivityMonitorMetric *)self properties];
  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 terminusConnected]);

  if (v7)
  {
    CFDictionarySetValue(v3, @"TerminusConnected", v7);
  }

  v8 = [(IDSConnectivityMonitorMetric *)self properties];
  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 terminusNearby]);

  if (v9)
  {
    CFDictionarySetValue(v3, @"TerminusConnected", v9);
  }

  v10 = [(IDSConnectivityMonitorMetric *)self properties];
  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 terminusRegistered]);

  if (v11)
  {
    CFDictionarySetValue(v3, @"TerminusConnected", v11);
  }

  v12 = [(IDSConnectivityMonitorMetric *)self properties];
  [v12 timeConnected];
  v13 = [NSNumber numberWithDouble:?];

  if (v13)
  {
    CFDictionarySetValue(v3, @"TimeConnected", v13);
  }

  v14 = [(IDSConnectivityMonitorMetric *)self properties];
  [v14 timeDisconnected];
  v15 = [NSNumber numberWithDouble:?];

  if (v15)
  {
    CFDictionarySetValue(v3, @"TimeDisconnected", v15);
  }

  v16 = [(IDSConnectivityMonitorMetric *)self properties];
  v17 = [v16 personalCBUUIDString];

  if (v17)
  {
    CFDictionarySetValue(v3, @"PersonalCBUUID", v17);
  }

  v18 = [(IDSConnectivityMonitorMetric *)self properties];
  v19 = [v18 pairedDeviceCBUUIDString];

  if (v19)
  {
    CFDictionarySetValue(v3, @"PairedDeviceCBUUID", v19);
  }

  return v3;
}

@end