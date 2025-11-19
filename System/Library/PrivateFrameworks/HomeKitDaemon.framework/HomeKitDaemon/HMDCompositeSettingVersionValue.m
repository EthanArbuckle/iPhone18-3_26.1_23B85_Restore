@interface HMDCompositeSettingVersionValue
- (HMDCompositeSettingVersionValue)initWithVersion:(id)a3 type:(int64_t)a4;
- (id)attributeDescriptions;
@end

@implementation HMDCompositeSettingVersionValue

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDCompositeSettingVersionValue *)self version];
  v5 = [v3 initWithName:@"version" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCompositeSettingVersionValue *)self type];
  v7 = HMSettingVersionValueTypeAsString();
  v8 = [v6 initWithName:@"type" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDCompositeSettingVersionValue)initWithVersion:(id)a3 type:(int64_t)a4
{
  v7 = a3;
  if (v7)
  {
    v8 = v7;
    v14.receiver = self;
    v14.super_class = HMDCompositeSettingVersionValue;
    v9 = [(HMDCompositeSettingValue *)&v14 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_version, a3);
      v10->_type = a4;
    }

    return v10;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    [(HMDCompositeSettingLanguageValue *)v12 .cxx_destruct];
  }

  return result;
}

@end