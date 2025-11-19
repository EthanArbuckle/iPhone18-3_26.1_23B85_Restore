@interface ULScanningEventMO
+ (id)createFromDO:(const void *)a3 withLoiMO:(id)a4 inManagedObjectContext:(id)a5;
@end

@implementation ULScanningEventMO

+ (id)createFromDO:(const void *)a3 withLoiMO:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [[ULScanningEventMO alloc] initWithContext:v8];
  if (*(a3 + 39) >= 0)
  {
    v10 = a3 + 16;
  }

  else
  {
    v10 = *(a3 + 2);
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
  [(ULScanningEventMO *)v9 setDeviceIdentifier:v11];

  [(ULScanningEventMO *)v9 setLoi:v7];
  [(ULScanningEventMO *)v9 setBleSuspended:*(a3 + 59)];
  [(ULScanningEventMO *)v9 setUwbSuspended:*(a3 + 58)];
  [(ULScanningEventMO *)v9 setWifiDisabled:*(a3 + 60)];
  [(ULScanningEventMO *)v9 setMotionState:*(a3 + 31)];
  v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];
  v13 = [v12 UUIDString];
  [(ULScanningEventMO *)v9 setScanEventUUID:v13];

  [(ULScanningEventMO *)v9 setScanResult:*(a3 + 28)];
  [(ULScanningEventMO *)v9 setScanType:*(a3 + 20)];
  [(ULScanningEventMO *)v9 setTimestamp:*(a3 + 6)];
  if (*(a3 + 192) == 1)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:CLMacAddress::toUint64(a3 + 22)];
    [(ULScanningEventMO *)v9 setWifiAssociationBSSID:v14];

    if ((*(a3 + 192) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v15 = [MEMORY[0x277CCABB0] numberWithInt:*(a3 + 46)];
    [(ULScanningEventMO *)v9 setWifiAssociationRSSI:v15];
  }

  else
  {
    [(ULScanningEventMO *)v9 setWifiAssociationBSSID:0];
    [(ULScanningEventMO *)v9 setWifiAssociationRSSI:0];
  }

  v16 = *(a3 + 11);
  for (i = *(a3 + 12); v16 != i; v16 += 32)
  {
    v18 = [ULWiFiMeasurementMO createFromDO:v16 withScanningEventMO:v9 inManagedObjectContext:v8];
    [(ULScanningEventMO *)v9 addWifiMeasurementsObject:v18];
  }

  v19 = *(a3 + 14);
  for (j = *(a3 + 15); v19 != j; v19 += 32)
  {
    v21 = [ULBLEMeasurementMO createFromDO:v19 withScanningEventMO:v9 inManagedObjectContext:v8];
    [(ULScanningEventMO *)v9 addBleMeasurementsObject:v21];
  }

  v22 = *(a3 + 17);
  for (k = *(a3 + 18); v22 != k; v22 += 32)
  {
    v24 = [ULUWBMeasurementMO createFromDO:v22 withScanningEventMO:v9 inManagedObjectContext:v8];
    [(ULScanningEventMO *)v9 addUwbMeasurementsObject:v24];
  }

  v25 = *(a3 + 25);
  for (m = *(a3 + 26); v25 != m; v25 += 32)
  {
    v27 = [ULPhotoFeaturesMO createFromDO:v25 withScanningEventMO:v9 inManagedObjectContext:v8];
    [(ULScanningEventMO *)v9 addPhotoFeaturesObject:v27];
  }

  if (*(a3 + 264))
  {
    v28 = [ULMagnetometerMO createFromDO:a3 + 224 withScanningEventMO:v9 inManagedObjectContext:v8];
    [(ULScanningEventMO *)v9 setMagnetometer:v28];
  }

  return v9;
}

@end