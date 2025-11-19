@interface DCLocalization
+ (id)localizedStringForKey:(id)a3 value:(id)a4 table:(id)a5;
@end

@implementation DCLocalization

+ (id)localizedStringForKey:(id)a3 value:(id)a4 table:(id)a5
{
  v7 = MEMORY[0x277CCA8D8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:v10 value:v9 table:v8];

  return v12;
}

@end