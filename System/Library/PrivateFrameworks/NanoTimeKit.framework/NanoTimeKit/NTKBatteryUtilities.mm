@interface NTKBatteryUtilities
+ (id)chargingStringForState:(int64_t)state longText:(BOOL)text;
+ (id)colorForLevel:(float)level andState:(int64_t)state;
+ (id)modularRingColorForLevel:(float)level;
@end

@implementation NTKBatteryUtilities

+ (id)chargingStringForState:(int64_t)state longText:(BOOL)text
{
  v4 = @"BATTERY_CHARGING";
  if (text)
  {
    v4 = @"BATTERY_CHARGING_LONG";
  }

  v5 = @"BATTERY_REMAINING_LONG";
  if (!text)
  {
    v5 = @"BATTERY_BATTERY";
  }

  v6 = @"BATTERY_CHARGED";
  if (text)
  {
    v6 = @"BATTERY_CHARGED_LONG";
  }

  if (state == 3)
  {
    v5 = v6;
  }

  if (state == 2)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  return NTKClockFaceLocalizedString(v7, @"charging");
}

+ (id)colorForLevel:(float)level andState:(int64_t)state
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *&v10 = level;
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:state];
    v15 = 138412802;
    v16 = v9;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "%@ invoking colorForLevel with level:%@ and state:%@", &v15, 0x20u);
  }

  if ([self chargingForState:state])
  {
    systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
  }

  else
  {
    systemGreenColor = 0;
    if (level >= 0.0 && level <= 0.2)
    {
      systemGreenColor = [MEMORY[0x277D75348] systemRedColor];
    }
  }

  return systemGreenColor;
}

+ (id)modularRingColorForLevel:(float)level
{
  if (level <= 0.2)
  {
    if (level >= 0.0)
    {
      systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    }

    else
    {
      systemRedColor = 0;
    }
  }

  else
  {
    systemRedColor = [MEMORY[0x277D75348] systemGreenColor];
  }

  return systemRedColor;
}

@end