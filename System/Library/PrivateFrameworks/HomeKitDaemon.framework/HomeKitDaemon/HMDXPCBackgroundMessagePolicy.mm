@interface HMDXPCBackgroundMessagePolicy
- (BOOL)isEqual:(id)a3;
- (HMDXPCBackgroundMessagePolicy)init;
- (id)__initWithEntitlementRequirement:(BOOL)a3;
@end

@implementation HMDXPCBackgroundMessagePolicy

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMDXPCBackgroundMessagePolicy *)self requiresEntitlement];
      v8 = v7 ^ [(HMDXPCBackgroundMessagePolicy *)v6 requiresEntitlement]^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (id)__initWithEntitlementRequirement:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HMDXPCBackgroundMessagePolicy;
  result = [(HMDXPCBackgroundMessagePolicy *)&v5 init];
  if (result)
  {
    *(result + 8) = a3;
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