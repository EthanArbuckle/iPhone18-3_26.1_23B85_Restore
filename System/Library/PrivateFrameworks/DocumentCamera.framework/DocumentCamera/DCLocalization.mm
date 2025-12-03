@interface DCLocalization
+ (id)localizedStringForKey:(id)key value:(id)value table:(id)table;
@end

@implementation DCLocalization

+ (id)localizedStringForKey:(id)key value:(id)value table:(id)table
{
  v7 = MEMORY[0x277CCA8D8];
  tableCopy = table;
  valueCopy = value;
  keyCopy = key;
  v11 = [v7 bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:keyCopy value:valueCopy table:tableCopy];

  return v12;
}

@end