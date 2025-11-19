@interface HMBCloudZoneShareModel
+ (id)hmbProperties;
@end

@implementation HMBCloudZoneShareModel

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_228 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_228, &__block_literal_global_229);
  }

  v3 = hmbProperties__properties_230;

  return v3;
}

void __39__HMBCloudZoneShareModel_hmbProperties__block_invoke()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"share";
  v0 = objc_opt_class();
  v1 = +[HMBModelFieldOption excludeFromCloudStorage];
  v7 = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:1];
  v3 = [HMBModelField fieldWithClass:v0 options:v2];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = hmbProperties__properties_230;
  hmbProperties__properties_230 = v4;

  v6 = *MEMORY[0x277D85DE8];
}

@end