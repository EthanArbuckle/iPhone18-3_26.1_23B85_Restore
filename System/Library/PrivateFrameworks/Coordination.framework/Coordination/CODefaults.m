@interface CODefaults
+ (id)userDefaultsForIdentifer:(id)a3;
@end

@implementation CODefaults

+ (id)userDefaultsForIdentifer:(id)a3
{
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.coordinated"];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.coordinated"];
  }

  return v6;
}

@end