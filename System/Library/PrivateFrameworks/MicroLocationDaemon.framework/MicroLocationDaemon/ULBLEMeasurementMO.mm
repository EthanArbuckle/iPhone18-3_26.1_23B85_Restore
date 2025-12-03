@interface ULBLEMeasurementMO
+ (id)createFromDO:(const void *)o withScanningEventMO:(id)mO inManagedObjectContext:(id)context;
- (optional<ULBLEMeasurementDO>)convertToDO;
@end

@implementation ULBLEMeasurementMO

+ (id)createFromDO:(const void *)o withScanningEventMO:(id)mO inManagedObjectContext:(id)context
{
  mOCopy = mO;
  contextCopy = context;
  v9 = [[ULBLEMeasurementMO alloc] initWithContext:contextCopy];
  [(ULBLEMeasurementMO *)v9 setScanningEvent:mOCopy];
  [(ULBLEMeasurementMO *)v9 setDeviceModel:*(o + 14)];
  [(ULBLEMeasurementMO *)v9 setRssi:*(o + 2)];
  v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:o + 12];
  uUIDString = [v10 UUIDString];
  [(ULBLEMeasurementMO *)v9 setSourceIdsUUID:uUIDString];

  [(ULBLEMeasurementMO *)v9 setTimestamp:*o];

  return v9;
}

- (optional<ULBLEMeasurementDO>)convertToDO
{
  v3 = v1;
  v17 = *MEMORY[0x277D85DE8];
  [(ULBLEMeasurementMO *)self timestamp];
  v13 = v4;
  sourceIdsUUID = [(ULBLEMeasurementMO *)self sourceIdsUUID];
  v6 = sourceIdsUUID;
  if (sourceIdsUUID)
  {
    [sourceIdsUUID boostUUID];
  }

  else
  {
    v15 = 0uLL;
    v16 = 0;
  }

  if (v16)
  {
    rssi = [(ULBLEMeasurementMO *)self rssi];
    deviceModel = [(ULBLEMeasurementMO *)self deviceModel];
    ULBLEMeasurementDO::ULBLEMeasurementDO(buf, &v13, rssi, &v15, &deviceModel);
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