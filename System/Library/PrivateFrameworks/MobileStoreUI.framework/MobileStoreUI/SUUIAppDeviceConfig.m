@interface SUUIAppDeviceConfig
- (CGSize)screenSize;
- (id)systemLanguage;
@end

@implementation SUUIAppDeviceConfig

- (CGSize)screenSize
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)systemLanguage
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 arrayForKey:@"AppleLanguages"];

  v4 = [v3 firstObject];

  return v4;
}

@end