@interface HMDMediaAccessoryModel
+ (id)properties;
@end

@implementation HMDMediaAccessoryModel

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__HMDMediaAccessoryModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_62282 != -1)
  {
    dispatch_once(&properties_onceToken_62282, block);
  }

  v2 = properties__properties_62283;

  return v2;
}

void __36__HMDMediaAccessoryModel_properties__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CBEB38];
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___HMDMediaAccessoryModel;
  v2 = objc_msgSendSuper2(&v5, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_62283;
  properties__properties_62283 = v3;
}

@end