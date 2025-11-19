@interface NSBundle(IconServicesAdditions)
+ (id)__IS__frameworkBundle;
+ (id)__IS__frameworkLocalizedString:()IconServicesAdditions;
+ (id)__IS__iconsetResourceAssetsCatalogURL;
+ (id)__IS__iconsetResourceBundle;
@end

@implementation NSBundle(IconServicesAdditions)

+ (id)__IS__frameworkBundle
{
  if (__IS__frameworkBundle_onceToken != -1)
  {
    +[NSBundle(IconServicesAdditions) __IS__frameworkBundle];
  }

  v1 = __IS__frameworkBundle_frameworkBundle;

  return v1;
}

+ (id)__IS__iconsetResourceBundle
{
  if (__IS__iconsetResourceBundle_onceToken != -1)
  {
    +[NSBundle(IconServicesAdditions) __IS__iconsetResourceBundle];
  }

  v1 = __IS__iconsetResourceBundle_resourceBundle;

  return v1;
}

+ (id)__IS__iconsetResourceAssetsCatalogURL
{
  v0 = [MEMORY[0x1E696AAE8] __IS__iconsetResourceBundle];
  v1 = [v0 URLForResource:@"Assets" withExtension:@"car"];

  return v1;
}

+ (id)__IS__frameworkLocalizedString:()IconServicesAdditions
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 __IS__frameworkBundle];
  v6 = [v5 localizedStringForKey:v4 value:&stru_1F1A4DB80 table:0];

  return v6;
}

@end