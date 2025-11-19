@interface HMDUserSupportsAutomaticHH2MigrationModel
+ (id)hmbProperties;
@end

@implementation HMDUserSupportsAutomaticHH2MigrationModel

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_71000 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_71000, &__block_literal_global_71001);
  }

  v3 = hmbProperties__properties_71002;

  return v3;
}

void __58__HMDUserSupportsAutomaticHH2MigrationModel_hmbProperties__block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"supportsAutomaticHH2Migration";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v5[1] = @"supportsHH2MigrationByOwnerAuto";
  v6[0] = v0;
  v1 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = hmbProperties__properties_71002;
  hmbProperties__properties_71002 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

@end