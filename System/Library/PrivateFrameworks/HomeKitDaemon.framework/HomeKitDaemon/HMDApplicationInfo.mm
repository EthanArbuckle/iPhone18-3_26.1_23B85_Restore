@interface HMDApplicationInfo
+ (id)applicationInfoForBundleIdentifier:(id)identifier;
+ (id)applicationInfoForBundleURL:(id)l;
+ (id)clientIdentifierSaltForBundleIdentifier:(id)identifier error:(id *)error;
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (HMDApplicationInfo)init;
- (HMDApplicationInfo)initWithBundleIdentifier:(id)identifier bundleURL:(id)l;
- (NSArray)processes;
- (NSData)vendorIdentifier;
- (NSURL)bundleURL;
- (id)attributeDescriptions;
- (id)clientIdentifierSalt:(id *)salt;
- (id)shortDescription;
- (unint64_t)hash;
- (void)addProcess:(id)process;
- (void)removeProcess:(id)process;
@end

@implementation HMDApplicationInfo

- (id)attributeDescriptions
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  bundleIdentifier = [(HMDApplicationInfo *)self bundleIdentifier];
  v5 = [v3 initWithName:@"Bundle Identifier" value:bundleIdentifier];
  v13[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  vendorIdentifier = [(HMDApplicationInfo *)self vendorIdentifier];
  defaultFormatter = [MEMORY[0x277D0F8D8] defaultFormatter];
  v9 = [v6 initWithName:@"Vendor Identifier" value:vendorIdentifier options:1 formatter:defaultFormatter];
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSURL)bundleURL
{
  bundleURL = self->_bundleURL;
  if (!bundleURL)
  {
    v4 = MEMORY[0x277CCA8D8];
    bundleIdentifier = [(HMDApplicationInfo *)self bundleIdentifier];
    v6 = [v4 bundleWithIdentifier:bundleIdentifier];

    bundleURL = [v6 bundleURL];
    v8 = self->_bundleURL;
    self->_bundleURL = bundleURL;

    bundleURL = self->_bundleURL;
  }

  return bundleURL;
}

- (NSData)vendorIdentifier
{
  if ([(HMDApplicationInfo *)self isEntitledForSPIAccess])
  {
    v3 = +[HMDApplicationInfo privateVendorIdentifier];
  }

  else
  {
    v4 = +[HMDApplicationVendorIDStore sharedStore];
    bundleIdentifier = [(HMDApplicationInfo *)self bundleIdentifier];
    v3 = [v4 vendorIDForApplicationBundleID:bundleIdentifier];
  }

  return v3;
}

- (void)removeProcess:(id)process
{
  processCopy = process;
  if (processCopy)
  {
    v5 = processCopy;
    os_unfair_lock_lock_with_options();
    [(NSHashTable *)self->_processes removeObject:v5];
    os_unfair_lock_unlock(&self->_lock);
    processCopy = v5;
  }
}

- (void)addProcess:(id)process
{
  processCopy = process;
  if (processCopy)
  {
    v5 = processCopy;
    os_unfair_lock_lock_with_options();
    [(NSHashTable *)self->_processes addObject:v5];
    os_unfair_lock_unlock(&self->_lock);
    processCopy = v5;
  }
}

- (NSArray)processes
{
  os_unfair_lock_lock_with_options();
  allObjects = [(NSHashTable *)self->_processes allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

- (id)clientIdentifierSalt:(id *)salt
{
  if ([(HMDApplicationInfo *)self isEntitledForSPIAccess])
  {
    v5 = +[HMDProcessInfo privateClientIdentifierSalt];
  }

  else
  {
    vendorIdentifier = [(HMDApplicationInfo *)self vendorIdentifier];
    v5 = [HMDApplicationInfo clientIdentifierSaltWithVendorIdentifier:vendorIdentifier deviceSpecific:1 error:salt];
  }

  return v5;
}

- (id)shortDescription
{
  v2 = MEMORY[0x277CCACA8];
  bundleIdentifier = [(HMDApplicationInfo *)self bundleIdentifier];
  v4 = [v2 stringWithFormat:@"Application %@", bundleIdentifier];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      bundleIdentifier = [(HMDApplicationInfo *)self bundleIdentifier];
      bundleIdentifier2 = [(HMDApplicationInfo *)v6 bundleIdentifier];
      v9 = [bundleIdentifier isEqualToString:bundleIdentifier2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  bundleIdentifier = [(HMDApplicationInfo *)self bundleIdentifier];
  v3 = [bundleIdentifier hash];

  return v3;
}

- (HMDApplicationInfo)initWithBundleIdentifier:(id)identifier bundleURL:(id)l
{
  identifierCopy = identifier;
  lCopy = l;
  if (!identifierCopy)
  {
    v17 = _HMFPreconditionFailure();
    [(HMDApplicationInfo *)v17 init];
  }

  v8 = lCopy;
  v19.receiver = self;
  v19.super_class = HMDApplicationInfo;
  v9 = [(HMDApplicationInfo *)&v19 init];
  if (v9)
  {
    v10 = [v8 copy];
    bundleURL = v9->_bundleURL;
    v9->_bundleURL = v10;

    v12 = [identifierCopy copy];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = v12;

    v9->_independent = 1;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    processes = v9->_processes;
    v9->_processes = weakObjectsHashTable;
  }

  return v9;
}

- (HMDApplicationInfo)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_130324 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_130324, &__block_literal_global_130325);
  }

  v3 = logCategory__hmf_once_v9_130326;

  return v3;
}

void __33__HMDApplicationInfo_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9_130326;
  logCategory__hmf_once_v9_130326 = v1;
}

+ (id)clientIdentifierSaltForBundleIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v6 = +[HMDApplicationVendorIDStore sharedStore];
  v7 = [v6 vendorIDForApplicationBundleID:identifierCopy];

  v8 = [HMDApplicationInfo clientIdentifierSaltWithVendorIdentifier:v7 deviceSpecific:1 error:error];

  return v8;
}

+ (id)applicationInfoForBundleIdentifier:(id)identifier
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v16 = 0;
    goto LABEL_11;
  }

  v5 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:identifierCopy error:0];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543874;
    v21 = v9;
    v22 = 2112;
    v23 = identifierCopy;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Initializing application info with URL: %@, extension: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v19 = 0;
  v10 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:&v19];
  v11 = v19;
  applicationState = [v10 applicationState];
  isValid = [applicationState isValid];

  if (isValid)
  {
    v14 = [__HMDApplicationInfo alloc];
    v15 = v10;
  }

  else
  {
    if (!v5)
    {
      v16 = 0;
      goto LABEL_10;
    }

    v14 = [__HMDExtensionApplicationInfo alloc];
    v15 = v5;
  }

  v16 = [(__HMDApplicationInfo *)v14 initWithRecord:v15];
LABEL_10:

LABEL_11:
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)applicationInfoForBundleURL:(id)l
{
  v26 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!lCopy)
  {
    v16 = 0;
    goto LABEL_11;
  }

  v5 = [objc_alloc(MEMORY[0x277CC1E50]) initWithURL:lCopy error:0];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543874;
    v21 = v9;
    v22 = 2112;
    v23 = lCopy;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Initializing application info with URL: %@, extension: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v19 = 0;
  v10 = [objc_alloc(MEMORY[0x277CC1E70]) initWithURL:lCopy allowPlaceholder:0 error:&v19];
  v11 = v19;
  applicationState = [v10 applicationState];
  isValid = [applicationState isValid];

  if (isValid)
  {
    v14 = [__HMDApplicationInfo alloc];
    v15 = v10;
  }

  else
  {
    if (!v5)
    {
      v16 = 0;
      goto LABEL_10;
    }

    v14 = [__HMDExtensionApplicationInfo alloc];
    v15 = v5;
  }

  v16 = [(__HMDApplicationInfo *)v14 initWithRecord:v15];
LABEL_10:

LABEL_11:
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

@end