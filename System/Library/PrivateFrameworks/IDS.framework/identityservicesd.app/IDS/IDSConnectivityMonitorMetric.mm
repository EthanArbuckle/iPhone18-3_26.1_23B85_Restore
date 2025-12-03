@interface IDSConnectivityMonitorMetric
- (IDSConnectivityMonitorMetric)initWithProperties:(id)properties;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSConnectivityMonitorMetric

- (IDSConnectivityMonitorMetric)initWithProperties:(id)properties
{
  propertiesCopy = properties;
  v9.receiver = self;
  v9.super_class = IDSConnectivityMonitorMetric;
  v6 = [(IDSConnectivityMonitorMetric *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_properties, properties);
  }

  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  properties = [(IDSConnectivityMonitorMetric *)self properties];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [properties success]);

  if (v5)
  {
    CFDictionarySetValue(v3, @"MessageSuccess", v5);
  }

  properties2 = [(IDSConnectivityMonitorMetric *)self properties];
  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [properties2 terminusConnected]);

  if (v7)
  {
    CFDictionarySetValue(v3, @"TerminusConnected", v7);
  }

  properties3 = [(IDSConnectivityMonitorMetric *)self properties];
  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [properties3 terminusNearby]);

  if (v9)
  {
    CFDictionarySetValue(v3, @"TerminusConnected", v9);
  }

  properties4 = [(IDSConnectivityMonitorMetric *)self properties];
  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [properties4 terminusRegistered]);

  if (v11)
  {
    CFDictionarySetValue(v3, @"TerminusConnected", v11);
  }

  properties5 = [(IDSConnectivityMonitorMetric *)self properties];
  [properties5 timeConnected];
  v13 = [NSNumber numberWithDouble:?];

  if (v13)
  {
    CFDictionarySetValue(v3, @"TimeConnected", v13);
  }

  properties6 = [(IDSConnectivityMonitorMetric *)self properties];
  [properties6 timeDisconnected];
  v15 = [NSNumber numberWithDouble:?];

  if (v15)
  {
    CFDictionarySetValue(v3, @"TimeDisconnected", v15);
  }

  properties7 = [(IDSConnectivityMonitorMetric *)self properties];
  personalCBUUIDString = [properties7 personalCBUUIDString];

  if (personalCBUUIDString)
  {
    CFDictionarySetValue(v3, @"PersonalCBUUID", personalCBUUIDString);
  }

  properties8 = [(IDSConnectivityMonitorMetric *)self properties];
  pairedDeviceCBUUIDString = [properties8 pairedDeviceCBUUIDString];

  if (pairedDeviceCBUUIDString)
  {
    CFDictionarySetValue(v3, @"PairedDeviceCBUUID", pairedDeviceCBUUIDString);
  }

  return v3;
}

@end