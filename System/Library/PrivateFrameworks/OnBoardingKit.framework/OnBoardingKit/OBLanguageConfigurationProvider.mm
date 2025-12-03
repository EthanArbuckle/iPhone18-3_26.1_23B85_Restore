@interface OBLanguageConfigurationProvider
+ (id)defaultConfiguration;
- (OBLanguageConfigurationProvider)initWithBundle:(id)bundle andTable:(id)table;
- (unint64_t)spansAllLines;
@end

@implementation OBLanguageConfigurationProvider

- (OBLanguageConfigurationProvider)initWithBundle:(id)bundle andTable:(id)table
{
  bundleCopy = bundle;
  tableCopy = table;
  v12.receiver = self;
  v12.super_class = OBLanguageConfigurationProvider;
  v9 = [(OBLanguageConfigurationProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tableName, table);
    objc_storeStrong(&v10->_bundle, bundle);
  }

  return v10;
}

+ (id)defaultConfiguration
{
  v2 = [OBLanguageConfigurationProvider alloc];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [(OBLanguageConfigurationProvider *)v2 initWithBundle:v3 andTable:@"OBLanguageConfiguration"];

  return v4;
}

- (unint64_t)spansAllLines
{
  tableName = [(OBLanguageConfigurationProvider *)self tableName];
  bundle = [(OBLanguageConfigurationProvider *)self bundle];
  displayLanguage = [(OBLanguageConfigurationProvider *)self displayLanguage];
  v6 = [OBUtilities localizedString:@"spansAllLines" forTable:tableName inBundle:bundle forLanguage:displayLanguage];

  lowercaseString = [v6 lowercaseString];

  v8 = [&unk_1F2CF8708 objectForKeyedSubscript:lowercaseString];
  intValue = [v8 intValue];

  return intValue;
}

@end