@interface CHLocalization
+ (NSBundle)classBundle;
+ (id)localizedStringForKey:(id)a3;
@end

@implementation CHLocalization

+ (NSBundle)classBundle
{
  v2 = MEMORY[0x1E696AAE8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

+ (id)localizedStringForKey:(id)a3
{
  v4 = a3;
  v5 = [a1 classBundle];
  v6 = [a1 localizationTableName];
  v7 = [v5 localizedStringForKey:v4 value:&stru_1F438BFD8 table:v6];

  return v7;
}

@end