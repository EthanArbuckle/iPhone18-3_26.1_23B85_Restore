@interface HMDAccessorySettingsMetadata
- (HMDAccessorySettingsMetadata)init;
- (HMDAccessorySettingsMetadata)initWithURL:(id)a3;
- (NSString)propertyDescription;
@end

@implementation HMDAccessorySettingsMetadata

- (NSString)propertyDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDAccessorySettingsMetadata *)self rootGroup];
  v4 = [v2 stringWithFormat:@", Root = %@", v3];

  return v4;
}

- (HMDAccessorySettingsMetadata)initWithURL:(id)a3
{
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:a3];
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
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (HMDAccessorySettingsMetadata)init
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277D0F8E8] productInfo];
  [v4 productClass];
  v5 = HMFProductClassToString();
  v6 = [v3 stringWithFormat:@"%@.plist", v5];

  v7 = [MEMORY[0x277D0F8E8] productInfo];
  v8 = [v7 productClass];

  if (v8 == 6)
  {

    v6 = @"AudioAccessory-b238.plist";
  }

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 resourceURL];
  v11 = [v10 URLByAppendingPathComponent:v6];

  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [v11 path];
  v14 = [v12 fileExistsAtPath:v13];

  if (v14)
  {
    v15 = [(HMDAccessorySettingsMetadata *)self initWithURL:v11];
    v16 = v15;
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v15 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v19;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot find setting resource at: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v16 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

@end