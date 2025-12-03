@interface HMDXPCMessagePolicy
+ (id)policyWithEntitlements:(unint64_t)entitlements;
- (BOOL)isEqual:(id)equal;
- (HMDXPCMessagePolicy)init;
- (id)__initWithEntitlements:(unint64_t)entitlements;
@end

@implementation HMDXPCMessagePolicy

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
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
      entitlements = [(HMDXPCMessagePolicy *)self entitlements];
      v8 = entitlements == [(HMDXPCMessagePolicy *)v6 entitlements];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)__initWithEntitlements:(unint64_t)entitlements
{
  entitlementsCopy = entitlements;
  v14 = *MEMORY[0x277D85DE8];
  if ((entitlements & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Adding missing developer client entitlement requirement", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    entitlementsCopy |= 1uLL;
  }

  v11.receiver = self;
  v11.super_class = HMDXPCMessagePolicy;
  result = [(HMDXPCMessagePolicy *)&v11 init];
  if (result)
  {
    *(result + 1) = entitlementsCopy;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (HMDXPCMessagePolicy)init
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

+ (id)policyWithEntitlements:(unint64_t)entitlements
{
  v3 = [[self alloc] __initWithEntitlements:entitlements];

  return v3;
}

@end