@interface CNLocalizationServicesTestDouble
+ (id)storageKeyForKey:(id)key table:(id)table inBundleForClass:(Class)class;
- (CNLocalizationServicesTestDouble)init;
- (id)localizedStringForKey:(id)key value:(id)value table:(id)table bundleForClass:(Class)class comment:(id)comment;
- (void)givenLocalizedString:(id)string forKey:(id)key table:(id)table bundleForClass:(Class)class;
@end

@implementation CNLocalizationServicesTestDouble

- (CNLocalizationServicesTestDouble)init
{
  v7.receiver = self;
  v7.super_class = CNLocalizationServicesTestDouble;
  v2 = [(CNLocalizationServicesTestDouble *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    values = v2->_values;
    v2->_values = v3;

    v5 = v2;
  }

  return v2;
}

- (void)givenLocalizedString:(id)string forKey:(id)key table:(id)table bundleForClass:(Class)class
{
  tableCopy = table;
  keyCopy = key;
  stringCopy = string;
  v13 = [objc_opt_class() storageKeyForKey:keyCopy table:tableCopy inBundleForClass:class];

  [(NSMutableDictionary *)self->_values setObject:stringCopy forKeyedSubscript:v13];
}

- (id)localizedStringForKey:(id)key value:(id)value table:(id)table bundleForClass:(Class)class comment:(id)comment
{
  valueCopy = value;
  tableCopy = table;
  keyCopy = key;
  v14 = [objc_opt_class() storageKeyForKey:keyCopy table:tableCopy inBundleForClass:class];

  v15 = [(NSMutableDictionary *)self->_values objectForKeyedSubscript:v14];
  if (!v15)
  {
    v15 = valueCopy;
  }

  return v15;
}

+ (id)storageKeyForKey:(id)key table:(id)table inBundleForClass:(Class)class
{
  tableCopy = table;
  keyCopy = key;
  v9 = objc_opt_new();
  v10 = NSStringFromClass(class);
  [v9 appendString:v10];

  [v9 appendString:@"."];
  v11 = @"*";
  if (tableCopy && [(__CFString *)tableCopy length])
  {
    v11 = tableCopy;
  }

  [v9 appendString:v11];
  [v9 appendString:@"."];
  [v9 appendString:keyCopy];

  return v9;
}

@end