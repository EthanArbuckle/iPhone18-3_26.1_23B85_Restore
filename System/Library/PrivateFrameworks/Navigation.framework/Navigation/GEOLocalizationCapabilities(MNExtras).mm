@interface GEOLocalizationCapabilities(MNExtras)
+ (id)supportedPhoneticTypesForPhoneticLocaleID:()MNExtras;
@end

@implementation GEOLocalizationCapabilities(MNExtras)

+ (id)supportedPhoneticTypesForPhoneticLocaleID:()MNExtras
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  if ([v3 isEqualToString:@"fr-FR"])
  {
    [v4 addObject:&unk_1F4EE21E8];
  }

  if ([v3 isEqualToString:@"en-IN"])
  {
    v5 = &unk_1F4EE21E8;
  }

  else
  {
    v5 = &unk_1F4EE2200;
  }

  [v4 addObject:v5];
  [v4 addObject:&unk_1F4EE2218];

  return v4;
}

@end