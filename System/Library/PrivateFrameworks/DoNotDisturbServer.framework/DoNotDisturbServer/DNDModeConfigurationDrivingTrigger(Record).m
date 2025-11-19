@interface DNDModeConfigurationDrivingTrigger(Record)
+ (uint64_t)newWithDictionaryRepresentation:()Record context:;
- (id)dictionaryRepresentationWithContext:()Record;
@end

@implementation DNDModeConfigurationDrivingTrigger(Record)

+ (uint64_t)newWithDictionaryRepresentation:()Record context:
{
  v3 = [a3 bs_safeNumberForKey:@"enabledSetting"];
  v4 = [v3 unsignedIntegerValue];

  v5 = objc_alloc(MEMORY[0x277D059A0]);

  return [v5 initWithEnabledSetting:v4];
}

- (id)dictionaryRepresentationWithContext:()Record
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"class";
  v5[1] = @"enabledSetting";
  v6[0] = @"DNDModeConfigurationDrivingTrigger";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "enabledSetting")}];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end