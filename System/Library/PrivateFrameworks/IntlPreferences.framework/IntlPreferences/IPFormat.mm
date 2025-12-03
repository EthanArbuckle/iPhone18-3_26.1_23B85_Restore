@interface IPFormat
+ (id)localeFromDeviceLanguage;
+ (id)localeFromDeviceLocale;
@end

@implementation IPFormat

+ (id)localeFromDeviceLocale
{
  v2 = MEMORY[0x277CBEAF8];
  preferredLocale = [MEMORY[0x277CBEAF8] preferredLocale];
  localeIdentifier = [preferredLocale localeIdentifier];
  v5 = [v2 localeWithLocaleIdentifier:localeIdentifier];

  return v5;
}

+ (id)localeFromDeviceLanguage
{
  _deviceLanguage = [MEMORY[0x277CBEAF8] _deviceLanguage];
  v3 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:_deviceLanguage];
  v4 = [v3 mutableCopy];

  v5 = MEMORY[0x277CBEAF8];
  preferredLocale = [MEMORY[0x277CBEAF8] preferredLocale];
  localeIdentifier = [preferredLocale localeIdentifier];
  v8 = [v5 componentsFromLocaleIdentifier:localeIdentifier];

  v9 = [v8 objectForKeyedSubscript:@"numbers"];
  [v4 setObject:v9 forKeyedSubscript:@"numbers"];

  v10 = [v8 objectForKeyedSubscript:@"calendar"];
  [v4 setObject:v10 forKeyedSubscript:@"calendar"];

  v11 = MEMORY[0x277CBEAF8];
  v12 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v4];
  v13 = [v11 localeWithLocaleIdentifier:v12];

  return v13;
}

@end