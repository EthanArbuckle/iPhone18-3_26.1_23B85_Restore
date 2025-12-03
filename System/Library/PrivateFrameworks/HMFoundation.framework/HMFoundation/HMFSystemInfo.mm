@interface HMFSystemInfo
+ (id)allocWithZone:(_NSZone *)zone;
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
- (void)dataSource:(id)source didUpdateMigrating:(BOOL)migrating;
- (void)dataSource:(id)source didUpdateName:(id)name;
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
  productColorDataSource = [(HMFSystemInfo *)self productColorDataSource];
  productColor = [productColorDataSource productColor];

  return productColor;
}

- (int64_t)productPlatform
{
  productInfoDataSource = [(HMFSystemInfo *)self productInfoDataSource];
  productPlatform = [productInfoDataSource productPlatform];

  return productPlatform;
}

- (int64_t)productClass
{
  productInfoDataSource = [(HMFSystemInfo *)self productInfoDataSource];
  productClass = [productInfoDataSource productClass];

  return productClass;
}

- (int64_t)productVariant
{
  productInfoDataSource = [(HMFSystemInfo *)self productInfoDataSource];
  productVariant = [productInfoDataSource productVariant];

  return productVariant;
}

- (HMFSoftwareVersion)softwareVersion
{
  softwareVersionDataSource = [(HMFSystemInfo *)self softwareVersionDataSource];
  softwareVersion = [softwareVersionDataSource softwareVersion];

  return softwareVersion;
}

- (NSString)modelIdentifier
{
  productInfoDataSource = [(HMFSystemInfo *)self productInfoDataSource];
  modelIdentifier = [productInfoDataSource modelIdentifier];

  return modelIdentifier;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [(HMFSystemInfo *)__HMFEmbeddedSystemInfo allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___HMFSystemInfo;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (NSString)name
{
  nameDataSource = [(HMFSystemInfo *)self nameDataSource];
  name = [nameDataSource name];

  return name;
}

- (void)dataSource:(id)source didUpdateName:(id)name
{
  v21 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  nameCopy = name;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier(selfCopy);
    *buf = 138543618;
    v18 = v11;
    v19 = 2112;
    v20 = nameCopy;
    _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_INFO, "%{public}@Updated system name to '%@'", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = +[HMFNotificationCenter defaultCenter];
  v15 = @"HMFSystemInfoNameNotificationKey";
  v16 = nameCopy;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  [v12 postNotificationName:@"HMFSystemInfoNameUpdatedNotification" object:selfCopy userInfo:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (NSString)model
{
  marketingDataSource = [(HMFSystemInfo *)self marketingDataSource];
  model = [marketingDataSource model];

  return model;
}

- (NSString)regionInfo
{
  marketingDataSource = [(HMFSystemInfo *)self marketingDataSource];
  regionInfo = [marketingDataSource regionInfo];

  return regionInfo;
}

- (NSString)serialNumber
{
  serialNumberDataSource = [(HMFSystemInfo *)self serialNumberDataSource];
  serialNumber = [serialNumberDataSource serialNumber];

  return serialNumber;
}

- (BOOL)isMigrating
{
  migrationDataSource = [(HMFSystemInfo *)self migrationDataSource];
  isMigrating = [migrationDataSource isMigrating];

  return isMigrating;
}

- (void)dataSource:(id)source didUpdateMigrating:(BOOL)migrating
{
  migratingCopy = migrating;
  v18 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier(selfCopy);
    v11 = HMFBooleanToString(migratingCopy);
    v14 = 138543618;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_INFO, "%{public}@Updated migration status to '%@'", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = +[HMFNotificationCenter defaultCenter];
  [v12 postNotificationName:@"HMFSystemInfoMigratingUpdatedNotification" object:selfCopy userInfo:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (HMFMACAddress)WiFiInterfaceMACAddress
{
  wiFiDataSource = [(HMFSystemInfo *)self WiFiDataSource];
  wiFiInterfaceMACAddress = [wiFiDataSource WiFiInterfaceMACAddress];

  return wiFiInterfaceMACAddress;
}

- (BOOL)supportsBLE
{
  bluetoothLEDataSource = [(HMFSystemInfo *)self bluetoothLEDataSource];
  supportsBLE = [bluetoothLEDataSource supportsBLE];

  return supportsBLE;
}

@end