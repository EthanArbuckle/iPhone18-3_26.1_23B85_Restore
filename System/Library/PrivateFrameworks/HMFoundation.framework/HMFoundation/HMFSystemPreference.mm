@interface HMFSystemPreference
- (HMFSystemPreference)initWithKey:(id)key options:(unint64_t)options domain:(id)domain defaultValue:(id)value parent:(id)parent;
- (NSString)propertyDescription;
@end

@implementation HMFSystemPreference

- (HMFSystemPreference)initWithKey:(id)key options:(unint64_t)options domain:(id)domain defaultValue:(id)value parent:(id)parent
{
  domainCopy = domain;
  v20.receiver = self;
  v20.super_class = HMFSystemPreference;
  v13 = [(HMFPreference *)&v20 initWithKey:key options:options defaultValue:value parent:parent];
  if (v13)
  {
    if (domainCopy)
    {
      v14 = [domainCopy copy];
    }

    else
    {
      v14 = *MEMORY[0x277CBF028];
    }

    objc_storeStrong(&v13->_domain, v14);
    if (domainCopy)
    {
    }

    v15 = v13;
    v16 = [(HMFPreference *)v15 key];
    domain = [(HMFSystemPreference *)v15 domain];
    v18 = CFPreferencesCopyAppValue(v16, domain);

    if (v18)
    {
      [(HMFPreference *)v15 setValue:v18];
    }
  }

  return v13;
}

- (NSString)propertyDescription
{
  v3 = MEMORY[0x277CCACA8];
  domain = [(HMFSystemPreference *)self domain];
  v5 = [(HMFPreference *)self key];
  value = [(HMFPreference *)self value];
  v7 = [v3 stringWithFormat:@", Domain = %@, Key = %@, Value = %@", domain, v5, value];

  return v7;
}

@end