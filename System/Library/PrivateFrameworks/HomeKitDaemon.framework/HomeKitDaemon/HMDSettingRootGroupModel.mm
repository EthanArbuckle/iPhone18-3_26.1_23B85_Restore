@interface HMDSettingRootGroupModel
+ (id)hmbProperties;
- (HMDSettingRootGroupModel)initWithModelID:(id)d parentModelID:(id)iD;
- (id)copyWithNewParentModelID:(id)d;
@end

@implementation HMDSettingRootGroupModel

- (id)copyWithNewParentModelID:(id)d
{
  [MEMORY[0x277CBEAD8] raise:@"ProtocolMethodNotImplemented" format:@"Root group should never change it's parent model ID"];

  return self;
}

- (HMDSettingRootGroupModel)initWithModelID:(id)d parentModelID:(id)iD
{
  v8.receiver = self;
  v8.super_class = HMDSettingRootGroupModel;
  v4 = [(HMBModel *)&v8 initWithModelID:d parentModelID:iD];
  v5 = v4;
  if (v4)
  {
    [(HMDSettingRootGroupModel *)v4 setName:@"root"];
    uUID = [MEMORY[0x277CCAD78] UUID];
    [(HMDSettingRootGroupModel *)v5 setConflictResolutionToken:uUID];
  }

  return v5;
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_251006 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_251006, &__block_literal_global_251007);
  }

  v3 = hmbProperties__properties_251008;

  return v3;
}

void __41__HMDSettingRootGroupModel_hmbProperties__block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"conflictResolutionToken";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v5[1] = @"name";
  v6[0] = v0;
  v1 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = hmbProperties__properties_251008;
  hmbProperties__properties_251008 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

@end