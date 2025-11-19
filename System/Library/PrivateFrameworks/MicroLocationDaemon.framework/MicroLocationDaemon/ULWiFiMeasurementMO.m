@interface ULWiFiMeasurementMO
+ (id)createFromDO:(const void *)a3 withScanningEventMO:(id)a4 inManagedObjectContext:(id)a5;
- (optional<ULWiFiMeasurementDO>)convertToDO;
@end

@implementation ULWiFiMeasurementMO

+ (id)createFromDO:(const void *)a3 withScanningEventMO:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [[ULWiFiMeasurementMO alloc] initWithContext:v8];
  [(ULWiFiMeasurementMO *)v9 setScanningEvent:v7];
  [(ULWiFiMeasurementMO *)v9 setChannel:*(a3 + 12)];
  [(ULWiFiMeasurementMO *)v9 setFlags:*(a3 + 7)];
  [(ULWiFiMeasurementMO *)v9 setRssi:*(a3 + 2)];
  [(ULWiFiMeasurementMO *)v9 setSourceBSSID:CLMacAddress::toUint64(a3 + 2)];
  [(ULWiFiMeasurementMO *)v9 setTimestamp:*a3];
  [(ULWiFiMeasurementMO *)v9 setBand:*(a3 + 26)];

  return v9;
}

- (optional<ULWiFiMeasurementDO>)convertToDO
{
  v3 = v1;
  [(ULWiFiMeasurementMO *)self timestamp];
  v11 = v4;
  TrajectoryPointCloud = ULHomeSlamModel::getTrajectoryPointCloud([(ULWiFiMeasurementMO *)self sourceBSSID]);
  v5 = [(ULWiFiMeasurementMO *)self rssi];
  v6 = [(ULWiFiMeasurementMO *)self channel];
  v8 = [(ULWiFiMeasurementMO *)self band];
  ULWiFiMeasurementDO::ULWiFiMeasurementDO(v9, &v11, v5, &TrajectoryPointCloud, v6, &v8, [(ULWiFiMeasurementMO *)self flags]);
  v7 = ULWiFiMeasurementDO::ULWiFiMeasurementDO(v3, v9);
  *(v3 + 32) = 1;
  return v7;
}

@end