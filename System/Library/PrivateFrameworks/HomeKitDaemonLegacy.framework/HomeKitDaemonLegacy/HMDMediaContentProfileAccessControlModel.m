@interface HMDMediaContentProfileAccessControlModel
+ (id)hmbProperties;
@end

@implementation HMDMediaContentProfileAccessControlModel

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_41082 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_41082, &__block_literal_global_41083);
  }

  v3 = hmbProperties__properties_41084;

  return v3;
}

void __57__HMDMediaContentProfileAccessControlModel_hmbProperties__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"accessories";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = hmbProperties__properties_41084;
  hmbProperties__properties_41084 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

@end