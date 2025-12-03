@interface HMDAccessorySettingsMetadata
- (HMDAccessorySettingsMetadata)init;
- (HMDAccessorySettingsMetadata)initWithURL:(id)l;
- (NSString)propertyDescription;
@end

@implementation HMDAccessorySettingsMetadata

- (NSString)propertyDescription
{
  v2 = MEMORY[0x277CCACA8];
  rootGroup = [(HMDAccessorySettingsMetadata *)self rootGroup];
  v4 = [v2 stringWithFormat:@", Root = %@", rootGroup];

  return v4;
}

- (HMDAccessorySettingsMetadata)initWithURL:(id)l
{
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:l];
  if (v4)
  {
    v16.receiver = self;
    v16.super_class = HMDAccessorySettingsMetadata;
    v5 = [(HMDAccessorySettingsMetadata *)&v16 init];
    if (v5)
    {
      v6 = [HMDAccessorySettingGroupMetadata alloc];
      v7 = *MEMORY[0x277CCEDC0];
      v8 = [v4 hmf_arrayForKey:@"Settings"];
      v9 = [HMDAccessorySettingMetadata settingsWithArrayRepresenation:v8 parentKeyPath:@"root"];
      v10 = [v4 hmf_arrayForKey:@"Groups"];
      v11 = [HMDAccessorySettingGroupMetadata groupsWithArrayRepresenation:v10 parentKeyPath:@"root"];
      v12 = [(HMDAccessorySettingGroupMetadata *)v6 initWithName:v7 settings:v9 groups:v11];
      rootGroup = v5->_rootGroup;
      v5->_rootGroup = v12;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (HMDAccessorySettingsMetadata)init
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  [productInfo productClass];
  v5 = HMFProductClassToString();
  v6 = [v3 stringWithFormat:@"%@.plist", v5];

  productInfo2 = [MEMORY[0x277D0F8E8] productInfo];
  productClass = [productInfo2 productClass];

  if (productClass == 6)
  {

    v6 = @"AudioAccessory-b238.plist";
  }

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  resourceURL = [v9 resourceURL];
  v11 = [resourceURL URLByAppendingPathComponent:v6];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v11 path];
  v14 = [defaultManager fileExistsAtPath:path];

  if (v14)
  {
    selfCopy = [(HMDAccessorySettingsMetadata *)self initWithURL:v11];
    v16 = selfCopy;
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v19;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot find setting resource at: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v16 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

@end