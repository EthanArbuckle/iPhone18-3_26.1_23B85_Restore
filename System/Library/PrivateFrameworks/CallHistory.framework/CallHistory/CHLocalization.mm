@interface CHLocalization
+ (NSBundle)classBundle;
+ (id)localizedStringForKey:(id)key;
@end

@implementation CHLocalization

+ (NSBundle)classBundle
{
  v2 = MEMORY[0x1E696AAE8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

+ (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  classBundle = [self classBundle];
  localizationTableName = [self localizationTableName];
  v7 = [classBundle localizedStringForKey:keyCopy value:&stru_1F438BFD8 table:localizationTableName];

  return v7;
}

@end