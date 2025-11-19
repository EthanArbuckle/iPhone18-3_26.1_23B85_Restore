@interface __HMFEmbeddedSystemInfo
- (__HMFEmbeddedSystemInfo)init;
@end

@implementation __HMFEmbeddedSystemInfo

- (__HMFEmbeddedSystemInfo)init
{
  v10.receiver = self;
  v10.super_class = __HMFEmbeddedSystemInfo;
  v2 = [(__HMFEmbeddedSystemInfo *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(__HMFMobileGestaltDataSource);
    objc_storeStrong(&v2->super._nameDataSource, v3);
    [(HMFSystemInfoNameDataSource *)v2->super._nameDataSource setDelegate:v2];
    objc_storeStrong(&v2->super._marketingDataSource, v3);
    objc_storeStrong(&v2->super._serialNumberDataSource, v3);
    objc_storeStrong(&v2->super._productInfoDataSource, v3);
    objc_storeStrong(&v2->super._softwareVersionDataSource, v3);
    objc_storeStrong(&v2->super._WiFiDataSource, v3);
    objc_storeStrong(&v2->super._bluetoothLEDataSource, v3);
    productColorDataSource = v2->super._productColorDataSource;
    v2->super._productColorDataSource = v3;
    v5 = v3;

    v6 = objc_alloc_init(__HMFSetupAssistantDataSource);
    migrationDataSource = v2->super._migrationDataSource;
    v2->super._migrationDataSource = v6;
    v8 = v6;

    [(HMFSystemInfoMigrationDataSource *)v2->super._migrationDataSource setDelegate:v2];
  }

  return v2;
}

@end