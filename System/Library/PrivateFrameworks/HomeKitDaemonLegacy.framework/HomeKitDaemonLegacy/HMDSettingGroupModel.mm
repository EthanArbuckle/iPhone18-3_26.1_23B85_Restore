@interface HMDSettingGroupModel
+ (id)hmbProperties;
- (id)copyWithNewParentModelID:(id)d;
@end

@implementation HMDSettingGroupModel

- (id)copyWithNewParentModelID:(id)d
{
  dCopy = d;
  v5 = [HMDSettingGroupModel alloc];
  hmbModelID = [(HMBModel *)self hmbModelID];
  v7 = [(HMBModel *)v5 initWithModelID:hmbModelID parentModelID:dCopy];

  name = [(HMDSettingGroupModel *)self name];
  [(HMDSettingGroupModel *)v7 setName:name];

  return v7;
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_5386 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_5386, &__block_literal_global_5387);
  }

  v3 = hmbProperties__properties;

  return v3;
}

void __37__HMDSettingGroupModel_hmbProperties__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"name";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = hmbProperties__properties;
  hmbProperties__properties = v1;

  v3 = *MEMORY[0x277D85DE8];
}

@end