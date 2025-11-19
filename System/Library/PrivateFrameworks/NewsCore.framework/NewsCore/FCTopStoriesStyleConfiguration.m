@interface FCTopStoriesStyleConfiguration
- (BOOL)isEqual:(id)a3;
- (FCTopStoriesStyleConfiguration)initWithConfigDictionary:(id)a3;
@end

@implementation FCTopStoriesStyleConfiguration

- (FCTopStoriesStyleConfiguration)initWithConfigDictionary:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = FCTopStoriesStyleConfiguration;
  v6 = [(FCTopStoriesStyleConfiguration *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configDict, a3);
    v8 = FCAppConfigurationStringValue(v5, @"type", 0);
    stringType = v7->_stringType;
    v7->_stringType = v8;

    v7->_storyType = FCArticleStoryTypeForStoryTypeString(v7->_stringType);
    v10 = FCAppConfigurationStringValue(v5, @"label", 0);
    label = v7->_label;
    v7->_label = v10;

    v12 = FCAppConfigurationStringValue(v5, @"foregroundColor", 0);
    v13 = [FCColor nullableColorWithHexString:v12];
    foreground_color = v7->_foreground_color;
    v7->_foreground_color = v13;

    v15 = FCAppConfigurationStringValue(v5, @"alternateForegroundColor", 0);
    v16 = [FCColor nullableColorWithHexString:v15];
    dark_style_foreground_color = v7->_dark_style_foreground_color;
    v7->_dark_style_foreground_color = v16;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [MEMORY[0x1E69E58C0] nf_object:self->_configDict isEqualToObject:v6[1]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end