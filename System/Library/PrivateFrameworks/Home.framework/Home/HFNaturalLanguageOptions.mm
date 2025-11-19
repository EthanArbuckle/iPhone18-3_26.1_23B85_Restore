@interface HFNaturalLanguageOptions
- (HFNaturalLanguageOptions)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HFNaturalLanguageOptions

- (HFNaturalLanguageOptions)init
{
  v6.receiver = self;
  v6.super_class = HFNaturalLanguageOptions;
  v2 = [(HFNaturalLanguageOptions *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    extraOptions = v2->_extraOptions;
    v2->_extraOptions = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(HFNaturalLanguageOptions *)self home];
  [v4 setHome:v5];

  v6 = [(HFNaturalLanguageOptions *)self extraOptions];
  v7 = [v6 mutableCopy];
  v8 = v4[2];
  v4[2] = v7;

  return v4;
}

@end