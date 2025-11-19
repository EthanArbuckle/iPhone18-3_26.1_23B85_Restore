@interface IRNearbyDeviceMO
+ (id)nearbyDeviceMOWithNearbyDeviceDO:(id)a3 nearbyDeviceContainer:(id)a4 inManagedObjectContext:(id)a5;
+ (void)setPropertiesOfnearbyDeviceMO:(id)a3 withNearbyDeviceDO:(id)a4;
- (id)convert;
@end

@implementation IRNearbyDeviceMO

+ (id)nearbyDeviceMOWithNearbyDeviceDO:(id)a3 nearbyDeviceContainer:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[IRNearbyDeviceMO alloc] initWithContext:v7];

  [(IRNearbyDeviceMO *)v10 setNearbyDeviceContainer:v8];
  [IRNearbyDeviceMO setPropertiesOfnearbyDeviceMO:v10 withNearbyDeviceDO:v9];

  return v10;
}

+ (void)setPropertiesOfnearbyDeviceMO:(id)a3 withNearbyDeviceDO:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v5 range];
  [v6 setRange:?];
  v7 = [v5 idsIdentifier];
  [v6 setIdsIdentifier:v7];

  v8 = [v5 measurementDate];
  [v6 setMeasurementDate:v8];

  v9 = [v5 mediaRemoteIdentifier];
  [v6 setMediaRemoteIdentifier:v9];

  v10 = [v5 proximityType];

  [v6 setProximityType:v10];
}

- (id)convert
{
  v3 = [IRNearbyDeviceDO alloc];
  [(IRNearbyDeviceMO *)self range];
  v5 = v4;
  v6 = [(IRNearbyDeviceMO *)self idsIdentifier];
  v7 = [(IRNearbyDeviceMO *)self mediaRemoteIdentifier];
  v8 = [(IRNearbyDeviceMO *)self proximityType];
  v9 = [(IRNearbyDeviceMO *)self measurementDate];
  v10 = [(IRNearbyDeviceDO *)v3 initWithRange:v6 idsIdentifier:v7 mediaRemoteIdentifier:v8 proximityType:v9 measurementDate:v5];

  return v10;
}

@end