@interface HMDSettingGroupModel
+ (id)hmbProperties;
- (id)copyWithNewParentModelID:(id)a3;
@end

@implementation HMDSettingGroupModel

- (id)copyWithNewParentModelID:(id)a3
{
  v4 = a3;
  v5 = [HMDSettingGroupModel alloc];
  v6 = [(HMBModel *)self hmbModelID];
  v7 = [(HMBModel *)v5 initWithModelID:v6 parentModelID:v4];

  v8 = [(HMDSettingGroupModel *)self name];
  [(HMDSettingGroupModel *)v7 setName:v8];

  return v7;
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_6845 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_6845, &__block_literal_global_6846);
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