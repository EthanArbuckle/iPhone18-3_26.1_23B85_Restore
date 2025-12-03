@interface HMDXPCBackgroundMessagePolicy
- (BOOL)isEqual:(id)equal;
- (HMDXPCBackgroundMessagePolicy)init;
- (id)__initWithEntitlementRequirement:(BOOL)requirement;
@end

@implementation HMDXPCBackgroundMessagePolicy

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v8) = 1;
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
      requiresEntitlement = [(HMDXPCBackgroundMessagePolicy *)self requiresEntitlement];
      v8 = requiresEntitlement ^ [(HMDXPCBackgroundMessagePolicy *)v6 requiresEntitlement]^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (id)__initWithEntitlementRequirement:(BOOL)requirement
{
  v5.receiver = self;
  v5.super_class = HMDXPCBackgroundMessagePolicy;
  result = [(HMDXPCBackgroundMessagePolicy *)&v5 init];
  if (result)
  {
    *(result + 8) = requirement;
  }

  return result;
}

- (HMDXPCBackgroundMessagePolicy)init
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

@end