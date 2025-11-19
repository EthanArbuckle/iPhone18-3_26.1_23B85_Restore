@interface HMDXPCiCloudSwitchMessagePolicy
+ (id)policyWithBundleIdentifiers:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HMDXPCiCloudSwitchMessagePolicy)initWithBundleIdentifiers:(id)a3;
- (unint64_t)hash;
@end

@implementation HMDXPCiCloudSwitchMessagePolicy

- (unint64_t)hash
{
  v2 = [(HMDXPCiCloudSwitchMessagePolicy *)self bundleIdentifiers];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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
    v7 = [(HMDXPCiCloudSwitchMessagePolicy *)self bundleIdentifiers];
    v8 = [v6 bundleIdentifiers];
    v9 = [v7 isEqualToSet:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HMDXPCiCloudSwitchMessagePolicy)initWithBundleIdentifiers:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDXPCiCloudSwitchMessagePolicy;
  v5 = [(HMDXPCiCloudSwitchMessagePolicy *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithArray:v4];
    bundleIdentifiers = v5->_bundleIdentifiers;
    v5->_bundleIdentifiers = v6;
  }

  return v5;
}

+ (id)policyWithBundleIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithBundleIdentifiers:v4];

  return v5;
}

@end