@interface SUUIAppDeviceConfig
- (CGSize)screenSize;
- (id)systemLanguage;
@end

@implementation SUUIAppDeviceConfig

- (CGSize)screenSize
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
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
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults arrayForKey:@"AppleLanguages"];

  firstObject = [v3 firstObject];

  return firstObject;
}

@end