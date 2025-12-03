@interface FCTopStoriesConfiguration
- (BOOL)isEqual:(id)equal;
- (FCTopStoriesConfiguration)initWithConfigDictionary:(id)dictionary;
@end

@implementation FCTopStoriesConfiguration

- (FCTopStoriesConfiguration)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = FCTopStoriesConfiguration;
  v6 = [(FCTopStoriesConfiguration *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configDict, dictionary);
    v7->_promotingEnabled = FCAppConfigurationBoolValue(dictionaryCopy, @"promotingEnabled", 1);
    v8 = FCAppConfigurationStringValue(dictionaryCopy, @"channelId", 0);
    channelID = v7->_channelID;
    v7->_channelID = v8;

    v7->_storyTypeTimeout = FCAppConfigurationIntegerValue(dictionaryCopy, @"badgesTimeout", 21600);
    v10 = FCAppConfigurationArrayValueWithDefaultValue(dictionaryCopy, @"styleConfigs", 0);
    v11 = [v10 fc_dictionaryWithKeyBlock:&__block_literal_global_282 valueBlock:&__block_literal_global_288_0];
    styleConfigurations = v7->_styleConfigurations;
    v7->_styleConfigurations = v11;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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