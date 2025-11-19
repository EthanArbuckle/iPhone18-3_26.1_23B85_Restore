@interface W5PowerStatus(Strings)
- (id)dictionary;
@end

@implementation W5PowerStatus(Strings)

- (id)dictionary
{
  v2 = objc_opt_new();
  [a1 batteryWarningLevel];
  v3 = W5DescriptionForBatteryWarningLevel();
  [v2 setValue:v3 forKey:@"power_battery_warning_level"];

  [a1 powerSourceType];
  v4 = W5DescriptionForPowerSourceType();
  [v2 setValue:v4 forKey:@"power_source_type"];

  [a1 powerStateCaps];
  v5 = W5DescriptionForPowerStateCaps();
  [v2 setValue:v5 forKey:@"power_state_caps"];

  v6 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];

  return v6;
}

@end