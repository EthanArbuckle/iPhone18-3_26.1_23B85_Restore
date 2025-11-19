@interface HMFSystemPreference
- (HMFSystemPreference)initWithKey:(id)a3 options:(unint64_t)a4 domain:(id)a5 defaultValue:(id)a6 parent:(id)a7;
- (NSString)propertyDescription;
@end

@implementation HMFSystemPreference

- (HMFSystemPreference)initWithKey:(id)a3 options:(unint64_t)a4 domain:(id)a5 defaultValue:(id)a6 parent:(id)a7
{
  v12 = a5;
  v20.receiver = self;
  v20.super_class = HMFSystemPreference;
  v13 = [(HMFPreference *)&v20 initWithKey:a3 options:a4 defaultValue:a6 parent:a7];
  if (v13)
  {
    if (v12)
    {
      v14 = [v12 copy];
    }

    else
    {
      v14 = *MEMORY[0x277CBF028];
    }

    objc_storeStrong(&v13->_domain, v14);
    if (v12)
    {
    }

    v15 = v13;
    v16 = [(HMFPreference *)v15 key];
    v17 = [(HMFSystemPreference *)v15 domain];
    v18 = CFPreferencesCopyAppValue(v16, v17);

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
  v4 = [(HMFSystemPreference *)self domain];
  v5 = [(HMFPreference *)self key];
  v6 = [(HMFPreference *)self value];
  v7 = [v3 stringWithFormat:@", Domain = %@, Key = %@, Value = %@", v4, v5, v6];

  return v7;
}

@end