@interface ULScanningEventMO
+ (id)createFromDO:(const void *)o withLoiMO:(id)mO inManagedObjectContext:(id)context;
@end

@implementation ULScanningEventMO

+ (id)createFromDO:(const void *)o withLoiMO:(id)mO inManagedObjectContext:(id)context
{
  mOCopy = mO;
  contextCopy = context;
  v9 = [[ULScanningEventMO alloc] initWithContext:contextCopy];
  if (*(o + 39) >= 0)
  {
    v10 = o + 16;
  }

  else
  {
    v10 = *(o + 2);
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
  [(ULScanningEventMO *)v9 setDeviceIdentifier:v11];

  [(ULScanningEventMO *)v9 setLoi:mOCopy];
  [(ULScanningEventMO *)v9 setBleSuspended:*(o + 59)];
  [(ULScanningEventMO *)v9 setUwbSuspended:*(o + 58)];
  [(ULScanningEventMO *)v9 setWifiDisabled:*(o + 60)];
  [(ULScanningEventMO *)v9 setMotionState:*(o + 31)];
  v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:o];
  uUIDString = [v12 UUIDString];
  [(ULScanningEventMO *)v9 setScanEventUUID:uUIDString];

  [(ULScanningEventMO *)v9 setScanResult:*(o + 28)];
  [(ULScanningEventMO *)v9 setScanType:*(o + 20)];
  [(ULScanningEventMO *)v9 setTimestamp:*(o + 6)];
  if (*(o + 192) == 1)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:CLMacAddress::toUint64(o + 22)];
    [(ULScanningEventMO *)v9 setWifiAssociationBSSID:v14];

    if ((*(o + 192) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v15 = [MEMORY[0x277CCABB0] numberWithInt:*(o + 46)];
    [(ULScanningEventMO *)v9 setWifiAssociationRSSI:v15];
  }

  else
  {
    [(ULScanningEventMO *)v9 setWifiAssociationBSSID:0];
    [(ULScanningEventMO *)v9 setWifiAssociationRSSI:0];
  }

  v16 = *(o + 11);
  for (i = *(o + 12); v16 != i; v16 += 32)
  {
    v18 = [ULWiFiMeasurementMO createFromDO:v16 withScanningEventMO:v9 inManagedObjectContext:contextCopy];
    [(ULScanningEventMO *)v9 addWifiMeasurementsObject:v18];
  }

  v19 = *(o + 14);
  for (j = *(o + 15); v19 != j; v19 += 32)
  {
    v21 = [ULBLEMeasurementMO createFromDO:v19 withScanningEventMO:v9 inManagedObjectContext:contextCopy];
    [(ULScanningEventMO *)v9 addBleMeasurementsObject:v21];
  }

  v22 = *(o + 17);
  for (k = *(o + 18); v22 != k; v22 += 32)
  {
    v24 = [ULUWBMeasurementMO createFromDO:v22 withScanningEventMO:v9 inManagedObjectContext:contextCopy];
    [(ULScanningEventMO *)v9 addUwbMeasurementsObject:v24];
  }

  v25 = *(o + 25);
  for (m = *(o + 26); v25 != m; v25 += 32)
  {
    v27 = [ULPhotoFeaturesMO createFromDO:v25 withScanningEventMO:v9 inManagedObjectContext:contextCopy];
    [(ULScanningEventMO *)v9 addPhotoFeaturesObject:v27];
  }

  if (*(o + 264))
  {
    v28 = [ULMagnetometerMO createFromDO:o + 224 withScanningEventMO:v9 inManagedObjectContext:contextCopy];
    [(ULScanningEventMO *)v9 setMagnetometer:v28];
  }

  return v9;
}

@end