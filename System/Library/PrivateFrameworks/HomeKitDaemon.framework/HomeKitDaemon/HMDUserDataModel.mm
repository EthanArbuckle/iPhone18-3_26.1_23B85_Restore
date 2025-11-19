@interface HMDUserDataModel
+ (id)hmbProperties;
@end

@implementation HMDUserDataModel

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_142108 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_142108, &__block_literal_global_142109);
  }

  v3 = hmbProperties__properties_142110;

  return v3;
}

void __33__HMDUserDataModel_hmbProperties__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"settingsRootUUID";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = hmbProperties__properties_142110;
  hmbProperties__properties_142110 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

@end