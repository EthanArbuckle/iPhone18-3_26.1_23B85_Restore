@interface CDPEscapeOption
+ (id)cancelOption;
+ (id)okOption;
@end

@implementation CDPEscapeOption

+ (id)cancelOption
{
  v2 = objc_alloc_init(a1);
  [v2 setStyle:1];
  v3 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_CANCEL_BUTTON"];
  v4 = [v3 localizedString];
  [v2 setTitle:v4];

  [v2 setTitleLocalizationKey:@"GENERIC_CANCEL_BUTTON"];
  [v2 setTitleTelemetryKey:*MEMORY[0x277CFD958]];

  return v2;
}

+ (id)okOption
{
  v2 = objc_alloc_init(a1);
  [v2 setStyle:0];
  v3 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_ERROR_DEFAULT_BUTTON"];
  v4 = [v3 localizedString];
  [v2 setTitle:v4];

  [v2 setTitleLocalizationKey:@"GENERIC_ERROR_DEFAULT_BUTTON"];
  [v2 setTitleTelemetryKey:*MEMORY[0x277CFD988]];

  return v2;
}

@end