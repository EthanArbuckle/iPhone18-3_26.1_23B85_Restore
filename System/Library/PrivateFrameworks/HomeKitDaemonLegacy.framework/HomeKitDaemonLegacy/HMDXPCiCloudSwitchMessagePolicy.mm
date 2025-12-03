@interface HMDXPCiCloudSwitchMessagePolicy
+ (id)policyWithBundleIdentifiers:(id)identifiers;
- (BOOL)isEqual:(id)equal;
- (HMDXPCiCloudSwitchMessagePolicy)initWithBundleIdentifiers:(id)identifiers;
- (unint64_t)hash;
@end

@implementation HMDXPCiCloudSwitchMessagePolicy

- (unint64_t)hash
{
  bundleIdentifiers = [(HMDXPCiCloudSwitchMessagePolicy *)self bundleIdentifiers];
  v3 = [bundleIdentifiers hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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
    bundleIdentifiers = [(HMDXPCiCloudSwitchMessagePolicy *)self bundleIdentifiers];
    bundleIdentifiers2 = [v6 bundleIdentifiers];
    v9 = [bundleIdentifiers isEqualToSet:bundleIdentifiers2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HMDXPCiCloudSwitchMessagePolicy)initWithBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v9.receiver = self;
  v9.super_class = HMDXPCiCloudSwitchMessagePolicy;
  v5 = [(HMDXPCiCloudSwitchMessagePolicy *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithArray:identifiersCopy];
    bundleIdentifiers = v5->_bundleIdentifiers;
    v5->_bundleIdentifiers = v6;
  }

  return v5;
}

+ (id)policyWithBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [[self alloc] initWithBundleIdentifiers:identifiersCopy];

  return v5;
}

@end