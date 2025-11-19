@interface HMDProcessInfo
+ (NSData)privateClientIdentifierSalt;
+ (id)locationAuthorizationFromEffectiveBundleIdentifier:(id)a3 processInfo:(id)a4;
+ (id)logCategory;
- (BOOL)isBackgrounded;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldMonitor;
- (HMDProcessInfo)init;
- (HMDProcessInfo)initWithAuditToken:(id *)a3;
- (id)attributeDescriptions;
- (id)clientIdentifierSalt:(id *)a3;
- (id)logIdentifier;
- (unint64_t)state;
- (void)setState:(unint64_t)a3;
@end

@implementation HMDProcessInfo

- (unint64_t)state
{
  os_unfair_lock_lock_with_options();
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock.lock);
  return state;
}

- (BOOL)shouldMonitor
{
  v2 = [(HMDProcessInfo *)self applicationInfo];

  return v2 != 0;
}

- (id)attributeDescriptions
{
  v20[3] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = HMDProcessInfo;
  v3 = [(HMFProcessInfo *)&v19 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMDProcessInfo *)self state];
  if (v5 > 4)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_278680668[v5];
  }

  v7 = v6;
  v8 = [v4 initWithName:@"State" value:v7];
  v20[0] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDProcessInfo *)self shouldMonitor];
  v10 = HMFBooleanToString();
  v11 = [v9 initWithName:@"Monitored" value:v10];
  v20[1] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [(HMDProcessInfo *)self applicationInfo];
  v14 = [v12 initWithName:@"Application" value:v13 options:1 formatter:0];
  v20[2] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
  v16 = [v3 arrayByAddingObjectsFromArray:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)isBackgrounded
{
  v3 = [(HMDProcessInfo *)self state];
  if (v3 != 1)
  {
    LOBYTE(v3) = ![(HMDProcessInfo *)self isEntitledForSPIAccess]&& [(HMDProcessInfo *)self state]== -1;
  }

  return v3;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMFProcessInfo *)self identifier];
  v5 = [(HMFProcessInfo *)self bundleIdentifier];
  v6 = [v3 stringWithFormat:@"%d/%@", v4, v5];

  return v6;
}

- (id)clientIdentifierSalt:(id *)a3
{
  if ([(HMDProcessInfo *)self isEntitledForSPIAccess])
  {
    v5 = +[HMDProcessInfo privateClientIdentifierSalt];
  }

  else
  {
    v6 = [(HMDProcessInfo *)self applicationInfo];
    v7 = v6;
    if (v6)
    {
      v5 = [v6 clientIdentifierSalt:a3];
    }

    else if (a3)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:0 reason:@"Cannot generate client identifier for non-application process." suggestion:0];
      *a3 = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)setState:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_state = a3;

  os_unfair_lock_unlock(&self->_lock.lock);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HMDProcessInfo;
    if ([(HMFProcessInfo *)&v13 isEqual:v4])
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

      v11 = 1;
      if (v7)
      {
        v8 = [(HMDProcessInfo *)self applicationInfo];
        v9 = [(HMDProcessInfo *)v7 applicationInfo];
        v10 = HMFEqualObjects();

        if (!v10)
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (HMDProcessInfo)initWithAuditToken:(id *)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = HMDProcessInfo;
  v3 = *&a3->var0[4];
  *buf = *a3->var0;
  *&buf[16] = v3;
  v4 = [(HMFProcessInfo *)&v34 initWithAuditToken:buf];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_17;
  }

  v4->_state = -1;
  v6 = MEMORY[0x277D46F48];
  v7 = [MEMORY[0x277D46F50] identifierWithPid:{-[HMFProcessInfo identifier](v4, "identifier")}];
  v33 = 0;
  v8 = [v6 handleForIdentifier:v7 error:&v33];
  v9 = v33;
  processHandle = v5->_processHandle;
  v5->_processHandle = v8;

  if (!v5->_processHandle)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v5;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMFProcessInfo identifier](v12, "identifier")}];
      *buf = 138543874;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      *&buf[22] = 2112;
      *&buf[24] = v9;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine process handle for pid %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v5->_entitledForAPIAccess = __HMDProcessInfoBoolForEntitlement(v5, @"com.apple.developer.homekit");
  v16 = __HMDProcessInfoBoolForEntitlement(v5, @"com.apple.private.homekit");
  v5->_entitledForSPIAccess = v16;
  if ((v16 & 1) == 0)
  {
    v5->_entitledForSPIAccess = __HMDProcessInfoBoolForEntitlement(v5, @"com.apple.homekit.private-spi-access");
  }

  v17 = [(HMFProcessInfo *)v5 mainBundleURL];
  if (v17)
  {
    v18 = +[HMDApplicationRegistry sharedRegistry];
    v19 = [v18 applicationInfoForBundleURL:v17];
    p_applicationInfo = &v5->_applicationInfo;
    applicationInfo = v5->_applicationInfo;
    v5->_applicationInfo = v19;
LABEL_12:

    [*p_applicationInfo addProcess:v5];
    goto LABEL_13;
  }

  v22 = [(HMFProcessInfo *)v5 bundleIdentifier];

  if (v22)
  {
    v18 = +[HMDApplicationRegistry sharedRegistry];
    applicationInfo = [(HMFProcessInfo *)v5 bundleIdentifier];
    v23 = [v18 applicationInfoForBundleIdentifier:applicationInfo];
    p_applicationInfo = &v5->_applicationInfo;
    v24 = v5->_applicationInfo;
    v5->_applicationInfo = v23;

    goto LABEL_12;
  }

LABEL_13:
  v25 = [(HMFProcessInfo *)v5 bundleIdentifier];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = [(HMDApplicationInfo *)v5->_applicationInfo bundleIdentifier];
  }

  v28 = v27;

  v29 = [objc_opt_class() locationAuthorizationFromEffectiveBundleIdentifier:v28 processInfo:v5];
  locationAuthorization = v5->_locationAuthorization;
  v5->_locationAuthorization = v29;

LABEL_17:
  v31 = *MEMORY[0x277D85DE8];
  return v5;
}

- (HMDProcessInfo)init
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
  if (logCategory__hmf_once_t5_245746 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t5_245746, &__block_literal_global_35_245747);
  }

  v3 = logCategory__hmf_once_v6_245748;

  return v3;
}

void __29__HMDProcessInfo_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v6_245748;
  logCategory__hmf_once_v6_245748 = v1;
}

+ (id)locationAuthorizationFromEffectiveBundleIdentifier:(id)a3 processInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (((__HMDProcessInfoBoolForEntitlement(v6, @"com.apple.private.homekit.location") & 1) != 0 || __HMDProcessInfoBoolForEntitlement(v6, @"com.apple.private.homekit.home-location")) && ([objc_opt_class() bundleForLocationManager], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = [objc_alloc(MEMORY[0x277D0F800]) initWithBundle:v7];
  }

  else if (v5)
  {
    v9 = [objc_alloc(MEMORY[0x277D0F800]) initWithBundleIdentifier:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (NSData)privateClientIdentifierSalt
{
  if (privateClientIdentifierSalt_onceToken != -1)
  {
    dispatch_once(&privateClientIdentifierSalt_onceToken, &__block_literal_global_245755);
  }

  v3 = privateClientIdentifierSalt_privateClientIdentifierSalt;

  return v3;
}

void __45__HMDProcessInfo_privateClientIdentifierSalt__block_invoke()
{
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"FDAF31D2-4895-48A8-BE45-04B4E974F0CD"];
  v0 = [v5 hm_convertToData];
  v1 = +[HMDApplicationInfo privateVendorIdentifier];
  v2 = [v1 mutableCopy];

  [v2 appendData:v0];
  v3 = [v2 hm_generateSHA1];
  v4 = privateClientIdentifierSalt_privateClientIdentifierSalt;
  privateClientIdentifierSalt_privateClientIdentifierSalt = v3;
}

@end