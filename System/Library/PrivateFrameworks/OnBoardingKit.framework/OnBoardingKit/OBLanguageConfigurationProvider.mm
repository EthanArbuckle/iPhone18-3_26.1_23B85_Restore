@interface OBLanguageConfigurationProvider
+ (id)defaultConfiguration;
- (OBLanguageConfigurationProvider)initWithBundle:(id)a3 andTable:(id)a4;
- (unint64_t)spansAllLines;
@end

@implementation OBLanguageConfigurationProvider

- (OBLanguageConfigurationProvider)initWithBundle:(id)a3 andTable:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = OBLanguageConfigurationProvider;
  v9 = [(OBLanguageConfigurationProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tableName, a4);
    objc_storeStrong(&v10->_bundle, a3);
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
  v3 = [(OBLanguageConfigurationProvider *)self tableName];
  v4 = [(OBLanguageConfigurationProvider *)self bundle];
  v5 = [(OBLanguageConfigurationProvider *)self displayLanguage];
  v6 = [OBUtilities localizedString:@"spansAllLines" forTable:v3 inBundle:v4 forLanguage:v5];

  v7 = [v6 lowercaseString];

  v8 = [&unk_1F2CF8708 objectForKeyedSubscript:v7];
  v9 = [v8 intValue];

  return v9;
}

@end