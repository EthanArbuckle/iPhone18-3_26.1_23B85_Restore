@interface DNDModeConfigurationSleepingTrigger(Record)
+ (uint64_t)newWithDictionaryRepresentation:()Record context:;
- (id)dictionaryRepresentationWithContext:()Record;
@end

@implementation DNDModeConfigurationSleepingTrigger(Record)

+ (uint64_t)newWithDictionaryRepresentation:()Record context:
{
  v3 = [a3 bs_safeNumberForKey:@"enabledSetting"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  v5 = objc_alloc(MEMORY[0x277D059D0]);

  return [v5 initWithEnabledSetting:unsignedIntegerValue];
}

- (id)dictionaryRepresentationWithContext:()Record
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"class";
  v5[1] = @"enabledSetting";
  v6[0] = @"DNDModeConfigurationSleepingTrigger";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "enabledSetting")}];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end