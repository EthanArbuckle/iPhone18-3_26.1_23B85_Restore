@interface ULBLEMeasurementMO
+ (id)createFromDO:(const void *)a3 withScanningEventMO:(id)a4 inManagedObjectContext:(id)a5;
- (optional<ULBLEMeasurementDO>)convertToDO;
@end

@implementation ULBLEMeasurementMO

+ (id)createFromDO:(const void *)a3 withScanningEventMO:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [[ULBLEMeasurementMO alloc] initWithContext:v8];
  [(ULBLEMeasurementMO *)v9 setScanningEvent:v7];
  [(ULBLEMeasurementMO *)v9 setDeviceModel:*(a3 + 14)];
  [(ULBLEMeasurementMO *)v9 setRssi:*(a3 + 2)];
  v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3 + 12];
  v11 = [v10 UUIDString];
  [(ULBLEMeasurementMO *)v9 setSourceIdsUUID:v11];

  [(ULBLEMeasurementMO *)v9 setTimestamp:*a3];

  return v9;
}

- (optional<ULBLEMeasurementDO>)convertToDO
{
  v3 = v1;
  v17 = *MEMORY[0x277D85DE8];
  [(ULBLEMeasurementMO *)self timestamp];
  v13 = v4;
  v5 = [(ULBLEMeasurementMO *)self sourceIdsUUID];
  v6 = v5;
  if (v5)
  {
    [v5 boostUUID];
  }

  else
  {
    v15 = 0uLL;
    v16 = 0;
  }

  if (v16)
  {
    v7 = [(ULBLEMeasurementMO *)self rssi];
    v12 = [(ULBLEMeasurementMO *)self deviceModel];
    ULBLEMeasurementDO::ULBLEMeasurementDO(buf, &v13, v7, &v15, &v12);
    ULBLEMeasurementDO::ULBLEMeasurementDO(v3, buf);
    v3[32] = 1;
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBLEMeasurementMO convertToDO];
    }

    v10 = logObject_MicroLocation_Default;
    v8 = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "convertToDO: BLE measuremnt's sourceIdsUUID has no value", buf, 2u);
    }

    *v3 = 0;
    v3[32] = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  *(&result.var0.var4 + 1) = v9;
  *&result.var0.var0 = v8;
  return result;
}

@end