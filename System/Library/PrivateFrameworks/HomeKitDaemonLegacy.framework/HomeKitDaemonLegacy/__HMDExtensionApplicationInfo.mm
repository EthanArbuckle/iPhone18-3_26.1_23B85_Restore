@interface __HMDExtensionApplicationInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)isInstalled;
- (__HMDExtensionApplicationInfo)initWithRecord:(id)record;
- (id)attributeDescriptions;
- (id)vendorIdentifier;
@end

@implementation __HMDExtensionApplicationInfo

- (BOOL)isInstalled
{
  hostApplicationInfo = [(__HMDExtensionApplicationInfo *)self hostApplicationInfo];
  v3 = hostApplicationInfo;
  if (hostApplicationInfo)
  {
    isInstalled = [hostApplicationInfo isInstalled];
  }

  else
  {
    isInstalled = 1;
  }

  return isInstalled;
}

- (id)vendorIdentifier
{
  v8.receiver = self;
  v8.super_class = __HMDExtensionApplicationInfo;
  vendorIdentifier = [(HMDApplicationInfo *)&v8 vendorIdentifier];
  v4 = vendorIdentifier;
  if (vendorIdentifier)
  {
    vendorIdentifier2 = vendorIdentifier;
  }

  else
  {
    hostApplicationInfo = [(__HMDExtensionApplicationInfo *)self hostApplicationInfo];
    vendorIdentifier2 = [hostApplicationInfo vendorIdentifier];
  }

  return vendorIdentifier2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = __HMDExtensionApplicationInfo;
    if ([(HMDApplicationInfo *)&v12 isEqual:equalCopy])
    {
      v5 = equalCopy;
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
        bundleURL = [(HMDApplicationInfo *)self bundleURL];
        bundleURL2 = [(HMDApplicationInfo *)v7 bundleURL];
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
  attributeDescriptions = [(HMDApplicationInfo *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  hostApplicationInfo = [(__HMDExtensionApplicationInfo *)self hostApplicationInfo];
  v6 = [v4 initWithName:@"Host Application" value:hostApplicationInfo];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8 = [attributeDescriptions arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (__HMDExtensionApplicationInfo)initWithRecord:(id)record
{
  v36 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  if (recordCopy)
  {
    v27.receiver = self;
    v27.super_class = __HMDExtensionApplicationInfo;
    v5 = [(__HMDBundleApplicationInfo *)&v27 initWithRecord:recordCopy];
    if (v5)
    {
      containingBundleRecord = [recordCopy containingBundleRecord];
      v7 = objc_autoreleasePoolPush();
      v8 = v5;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        bundleIdentifier = [recordCopy bundleIdentifier];
        effectiveBundleIdentifier = [recordCopy effectiveBundleIdentifier];
        *buf = 138544130;
        v29 = v10;
        v30 = 2112;
        v31 = containingBundleRecord;
        v32 = 2112;
        v33 = bundleIdentifier;
        v34 = 2112;
        v35 = effectiveBundleIdentifier;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@container: %@/ bundleID: %@, effective bundle id: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v7);
      bundleIdentifier2 = [recordCopy bundleIdentifier];
      bundleIdentifier = v8->super.super._bundleIdentifier;
      v8->super.super._bundleIdentifier = bundleIdentifier2;

      v15 = containingBundleRecord;
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
          _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@host record: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
        v22 = [[__HMDApplicationInfo alloc] initWithRecord:v17];
        hostApplicationInfo = v19->_hostApplicationInfo;
        v19->_hostApplicationInfo = &v22->super.super;
      }
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

@end