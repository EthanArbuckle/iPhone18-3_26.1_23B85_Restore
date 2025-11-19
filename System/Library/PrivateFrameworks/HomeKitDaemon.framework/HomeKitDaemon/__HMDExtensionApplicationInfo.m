@interface __HMDExtensionApplicationInfo
- (BOOL)isEqual:(id)a3;
- (BOOL)isInstalled;
- (__HMDExtensionApplicationInfo)initWithRecord:(id)a3;
- (id)attributeDescriptions;
- (id)vendorIdentifier;
@end

@implementation __HMDExtensionApplicationInfo

- (BOOL)isInstalled
{
  v2 = [(__HMDExtensionApplicationInfo *)self hostApplicationInfo];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isInstalled];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)vendorIdentifier
{
  v8.receiver = self;
  v8.super_class = __HMDExtensionApplicationInfo;
  v3 = [(HMDApplicationInfo *)&v8 vendorIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(__HMDExtensionApplicationInfo *)self hostApplicationInfo];
    v5 = [v6 vendorIdentifier];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = __HMDExtensionApplicationInfo;
    if ([(HMDApplicationInfo *)&v12 isEqual:v4])
    {
      v5 = v4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;

      if (v7)
      {
        v8 = [(HMDApplicationInfo *)self bundleURL];
        v9 = [(HMDApplicationInfo *)v7 bundleURL];
        v10 = HMFEqualObjects();
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)attributeDescriptions
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = __HMDExtensionApplicationInfo;
  v3 = [(HMDApplicationInfo *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(__HMDExtensionApplicationInfo *)self hostApplicationInfo];
  v6 = [v4 initWithName:@"Host Application" value:v5];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8 = [v3 arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (__HMDExtensionApplicationInfo)initWithRecord:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v27.receiver = self;
    v27.super_class = __HMDExtensionApplicationInfo;
    v5 = [(__HMDBundleApplicationInfo *)&v27 initWithRecord:v4];
    if (v5)
    {
      v6 = [v4 containingBundleRecord];
      v7 = objc_autoreleasePoolPush();
      v8 = v5;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [v4 bundleIdentifier];
        v12 = [v4 effectiveBundleIdentifier];
        *buf = 138544130;
        v29 = v10;
        v30 = 2112;
        v31 = v6;
        v32 = 2112;
        v33 = v11;
        v34 = 2112;
        v35 = v12;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@container: %@/ bundleID: %@, effective bundle id: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v7);
      v13 = [v4 bundleIdentifier];
      bundleIdentifier = v8->super.super._bundleIdentifier;
      v8->super.super._bundleIdentifier = v13;

      v15 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (v17)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = v8;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543618;
          v29 = v21;
          v30 = 2112;
          v31 = v17;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@host record: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
        v22 = [[__HMDApplicationInfo alloc] initWithRecord:v17];
        hostApplicationInfo = v19->_hostApplicationInfo;
        v19->_hostApplicationInfo = &v22->super.super;
      }
    }

    self = v5;
    v24 = self;
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

@end