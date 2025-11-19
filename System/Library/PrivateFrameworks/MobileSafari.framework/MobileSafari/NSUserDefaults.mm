@interface NSUserDefaults
@end

@implementation NSUserDefaults

uint64_t __81__NSUserDefaults_BrowsingAssistantExtras__browsingAssistant_favoritedMenuActions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = SFIsMenuActionConfigurable(v2) ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

@end