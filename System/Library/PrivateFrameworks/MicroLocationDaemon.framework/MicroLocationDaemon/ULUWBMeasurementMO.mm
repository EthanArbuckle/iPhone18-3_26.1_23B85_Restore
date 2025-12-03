@interface ULUWBMeasurementMO
+ (id)createFromDO:(const void *)o withScanningEventMO:(id)mO inManagedObjectContext:(id)context;
- (optional<ULUWBMeasurementDO>)convertToDO;
@end

@implementation ULUWBMeasurementMO

+ (id)createFromDO:(const void *)o withScanningEventMO:(id)mO inManagedObjectContext:(id)context
{
  mOCopy = mO;
  contextCopy = context;
  v9 = [[ULUWBMeasurementMO alloc] initWithContext:contextCopy];
  [(ULUWBMeasurementMO *)v9 setScanningEvent:mOCopy];
  [(ULUWBMeasurementMO *)v9 setDeviceModel:*(o + 14)];
  LODWORD(v10) = *(o + 2);
  [(ULUWBMeasurementMO *)v9 setRange:v10];
  v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:o + 12];
  uUIDString = [v11 UUIDString];
  [(ULUWBMeasurementMO *)v9 setSourceIdsUUID:uUIDString];

  [(ULUWBMeasurementMO *)v9 setTimestamp:*o];

  return v9;
}

- (optional<ULUWBMeasurementDO>)convertToDO
{
  v3 = v1;
  v18 = *MEMORY[0x277D85DE8];
  [(ULUWBMeasurementMO *)self timestamp];
  v14 = v4;
  sourceIdsUUID = [(ULUWBMeasurementMO *)self sourceIdsUUID];
  v6 = sourceIdsUUID;
  if (sourceIdsUUID)
  {
    [sourceIdsUUID boostUUID];
  }

  else
  {
    v16 = 0uLL;
    v17 = 0;
  }

  if (v17)
  {
    [(ULUWBMeasurementMO *)self range];
    v8 = v7;
    deviceModel = [(ULUWBMeasurementMO *)self deviceModel];
    ULUWBMeasurementDO::ULUWBMeasurementDO(buf, &v14, &v16, &deviceModel, v8);
    ULUWBMeasurementDO::ULUWBMeasurementDO(v3, buf);
    v3[32] = 1;
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULUWBMeasurementMO convertToDO];
    }

    v11 = logObject_MicroLocation_Default;
    v9 = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_ERROR, "convertToDO: UWB measuremnt's sourceIdsUUID has no value", buf, 2u);
    }

    *v3 = 0;
    v3[32] = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  *(&result.var0.var4 + 1) = v10;
  *&result.var0.var0 = v9;
  return result;
}

@end