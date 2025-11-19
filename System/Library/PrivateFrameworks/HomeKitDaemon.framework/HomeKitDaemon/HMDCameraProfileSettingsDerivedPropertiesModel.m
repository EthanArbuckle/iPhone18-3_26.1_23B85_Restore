@interface HMDCameraProfileSettingsDerivedPropertiesModel
+ (id)hmbProperties;
- (int64_t)currentAccessModeChangeReason;
- (unint64_t)currentAccessMode;
- (void)setCurrentAccessMode:(unint64_t)a3;
- (void)setCurrentAccessModeChangeReason:(int64_t)a3;
@end

@implementation HMDCameraProfileSettingsDerivedPropertiesModel

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_110 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_110, &__block_literal_global_113);
  }

  v3 = hmbProperties__properties_111;

  return v3;
}

void __63__HMDCameraProfileSettingsDerivedPropertiesModel_hmbProperties__block_invoke()
{
  v7[3] = *MEMORY[0x277D85DE8];
  v6[0] = @"currentAccessModeField";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v7[0] = v0;
  v6[1] = @"currentAccessModeChangeReasonField";
  v1 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v7[1] = v1;
  v6[2] = @"currentAccessModeChangeDate";
  v2 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v7[2] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v4 = hmbProperties__properties_111;
  hmbProperties__properties_111 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (int64_t)currentAccessModeChangeReason
{
  v2 = [(HMDCameraProfileSettingsDerivedPropertiesModel *)self currentAccessModeChangeReasonField];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setCurrentAccessModeChangeReason:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(HMDCameraProfileSettingsDerivedPropertiesModel *)self setCurrentAccessModeChangeReasonField:v4];
}

- (unint64_t)currentAccessMode
{
  v2 = [(HMDCameraProfileSettingsDerivedPropertiesModel *)self currentAccessModeField];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setCurrentAccessMode:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(HMDCameraProfileSettingsDerivedPropertiesModel *)self setCurrentAccessModeField:v4];

  v5 = [MEMORY[0x277CBEAA8] date];
  [(HMDCameraProfileSettingsDerivedPropertiesModel *)self setCurrentAccessModeChangeDate:v5];
}

@end