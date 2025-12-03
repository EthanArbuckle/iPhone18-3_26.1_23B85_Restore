@interface CODefaults
+ (id)userDefaultsForIdentifer:(id)identifer;
@end

@implementation CODefaults

+ (id)userDefaultsForIdentifer:(id)identifer
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v5 = [bundleIdentifier isEqualToString:@"com.apple.coordinated"];

  if (v5)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  }

  else
  {
    standardUserDefaults = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.coordinated"];
  }

  return standardUserDefaults;
}

@end