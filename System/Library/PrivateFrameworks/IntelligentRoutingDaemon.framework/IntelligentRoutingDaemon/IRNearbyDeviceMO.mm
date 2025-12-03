@interface IRNearbyDeviceMO
+ (id)nearbyDeviceMOWithNearbyDeviceDO:(id)o nearbyDeviceContainer:(id)container inManagedObjectContext:(id)context;
+ (void)setPropertiesOfnearbyDeviceMO:(id)o withNearbyDeviceDO:(id)dO;
- (id)convert;
@end

@implementation IRNearbyDeviceMO

+ (id)nearbyDeviceMOWithNearbyDeviceDO:(id)o nearbyDeviceContainer:(id)container inManagedObjectContext:(id)context
{
  contextCopy = context;
  containerCopy = container;
  oCopy = o;
  v10 = [[IRNearbyDeviceMO alloc] initWithContext:contextCopy];

  [(IRNearbyDeviceMO *)v10 setNearbyDeviceContainer:containerCopy];
  [IRNearbyDeviceMO setPropertiesOfnearbyDeviceMO:v10 withNearbyDeviceDO:oCopy];

  return v10;
}

+ (void)setPropertiesOfnearbyDeviceMO:(id)o withNearbyDeviceDO:(id)dO
{
  dOCopy = dO;
  oCopy = o;
  [dOCopy range];
  [oCopy setRange:?];
  idsIdentifier = [dOCopy idsIdentifier];
  [oCopy setIdsIdentifier:idsIdentifier];

  measurementDate = [dOCopy measurementDate];
  [oCopy setMeasurementDate:measurementDate];

  mediaRemoteIdentifier = [dOCopy mediaRemoteIdentifier];
  [oCopy setMediaRemoteIdentifier:mediaRemoteIdentifier];

  proximityType = [dOCopy proximityType];

  [oCopy setProximityType:proximityType];
}

- (id)convert
{
  v3 = [IRNearbyDeviceDO alloc];
  [(IRNearbyDeviceMO *)self range];
  v5 = v4;
  idsIdentifier = [(IRNearbyDeviceMO *)self idsIdentifier];
  mediaRemoteIdentifier = [(IRNearbyDeviceMO *)self mediaRemoteIdentifier];
  proximityType = [(IRNearbyDeviceMO *)self proximityType];
  measurementDate = [(IRNearbyDeviceMO *)self measurementDate];
  v10 = [(IRNearbyDeviceDO *)v3 initWithRange:idsIdentifier idsIdentifier:mediaRemoteIdentifier mediaRemoteIdentifier:proximityType proximityType:measurementDate measurementDate:v5];

  return v10;
}

@end