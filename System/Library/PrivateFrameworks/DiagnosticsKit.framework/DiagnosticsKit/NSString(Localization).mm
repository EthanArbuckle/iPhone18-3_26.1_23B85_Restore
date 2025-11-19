@interface NSString(Localization)
- (id)localizedString;
@end

@implementation NSString(Localization)

- (id)localizedString
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.DiagnosticsKit"];
  v3 = [v2 localizedStringForKey:a1 value:&stru_285B8CB68 table:0];

  return v3;
}

@end