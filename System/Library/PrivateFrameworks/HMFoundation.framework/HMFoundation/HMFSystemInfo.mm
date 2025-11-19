@interface HMFSystemInfo
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)systemInfo;
- (BOOL)isMigrating;
- (BOOL)supportsBLE;
- (HMFMACAddress)WiFiInterfaceMACAddress;
- (HMFSoftwareVersion)softwareVersion;
- (NSString)model;
- (NSString)modelIdentifier;
- (NSString)name;
- (NSString)regionInfo;
- (NSString)serialNumber;
- (int64_t)productClass;
- (int64_t)productColor;
- (int64_t)productPlatform;
- (int64_t)productVariant;
- (void)dataSource:(id)a3 didUpdateMigrating:(BOOL)a4;
- (void)dataSource:(id)a3 didUpdateName:(id)a4;
@end

@implementation HMFSystemInfo

+ (id)systemInfo
{
  if (_MergedGlobals_65 != -1)
  {
    dispatch_once(&_MergedGlobals_65, &__block_literal_global_32);
  }

  v3 = qword_280AFC638;

  return v3;
}

uint64_t __27__HMFSystemInfo_systemInfo__block_invoke()
{
  qword_280AFC638 = objc_alloc_init(HMFSystemInfo);

  return MEMORY[0x2821F96F8]();
}

- (int64_t)productColor
{
  v2 = [(HMFSystemInfo *)self productColorDataSource];
  v3 = [v2 productColor];

  return v3;
}

- (int64_t)productPlatform
{
  v2 = [(HMFSystemInfo *)self productInfoDataSource];
  v3 = [v2 productPlatform];

  return v3;
}

- (int64_t)productClass
{
  v2 = [(HMFSystemInfo *)self productInfoDataSource];
  v3 = [v2 productClass];

  return v3;
}

- (int64_t)productVariant
{
  v2 = [(HMFSystemInfo *)self productInfoDataSource];
  v3 = [v2 productVariant];

  return v3;
}

- (HMFSoftwareVersion)softwareVersion
{
  v2 = [(HMFSystemInfo *)self softwareVersionDataSource];
  v3 = [v2 softwareVersion];

  return v3;
}

- (NSString)modelIdentifier
{
  v2 = [(HMFSystemInfo *)self productInfoDataSource];
  v3 = [v2 modelIdentifier];

  return v3;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [(HMFSystemInfo *)__HMFEmbeddedSystemInfo allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___HMFSystemInfo;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

- (NSString)name
{
  v2 = [(HMFSystemInfo *)self nameDataSource];
  v3 = [v2 name];

  return v3;
}

- (void)dataSource:(id)a3 didUpdateName:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier(v9);
    *buf = 138543618;
    v18 = v11;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_INFO, "%{public}@Updated system name to '%@'", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = +[HMFNotificationCenter defaultCenter];
  v15 = @"HMFSystemInfoNameNotificationKey";
  v16 = v7;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  [v12 postNotificationName:@"HMFSystemInfoNameUpdatedNotification" object:v9 userInfo:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (NSString)model
{
  v2 = [(HMFSystemInfo *)self marketingDataSource];
  v3 = [v2 model];

  return v3;
}

- (NSString)regionInfo
{
  v2 = [(HMFSystemInfo *)self marketingDataSource];
  v3 = [v2 regionInfo];

  return v3;
}

- (NSString)serialNumber
{
  v2 = [(HMFSystemInfo *)self serialNumberDataSource];
  v3 = [v2 serialNumber];

  return v3;
}

- (BOOL)isMigrating
{
  v2 = [(HMFSystemInfo *)self migrationDataSource];
  v3 = [v2 isMigrating];

  return v3;
}

- (void)dataSource:(id)a3 didUpdateMigrating:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier(v8);
    v11 = HMFBooleanToString(v4);
    v14 = 138543618;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_INFO, "%{public}@Updated migration status to '%@'", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = +[HMFNotificationCenter defaultCenter];
  [v12 postNotificationName:@"HMFSystemInfoMigratingUpdatedNotification" object:v8 userInfo:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (HMFMACAddress)WiFiInterfaceMACAddress
{
  v2 = [(HMFSystemInfo *)self WiFiDataSource];
  v3 = [v2 WiFiInterfaceMACAddress];

  return v3;
}

- (BOOL)supportsBLE
{
  v2 = [(HMFSystemInfo *)self bluetoothLEDataSource];
  v3 = [v2 supportsBLE];

  return v3;
}

@end