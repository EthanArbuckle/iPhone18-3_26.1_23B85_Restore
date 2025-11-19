@interface FCTopStoriesConfiguration
- (BOOL)isEqual:(id)a3;
- (FCTopStoriesConfiguration)initWithConfigDictionary:(id)a3;
@end

@implementation FCTopStoriesConfiguration

- (FCTopStoriesConfiguration)initWithConfigDictionary:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = FCTopStoriesConfiguration;
  v6 = [(FCTopStoriesConfiguration *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configDict, a3);
    v7->_promotingEnabled = FCAppConfigurationBoolValue(v5, @"promotingEnabled", 1);
    v8 = FCAppConfigurationStringValue(v5, @"channelId", 0);
    channelID = v7->_channelID;
    v7->_channelID = v8;

    v7->_storyTypeTimeout = FCAppConfigurationIntegerValue(v5, @"badgesTimeout", 21600);
    v10 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"styleConfigs", 0);
    v11 = [v10 fc_dictionaryWithKeyBlock:&__block_literal_global_282 valueBlock:&__block_literal_global_288_0];
    styleConfigurations = v7->_styleConfigurations;
    v7->_styleConfigurations = v11;
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