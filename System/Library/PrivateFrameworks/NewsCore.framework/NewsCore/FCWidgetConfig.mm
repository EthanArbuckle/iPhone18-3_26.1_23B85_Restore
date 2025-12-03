@interface FCWidgetConfig
- (FCWidgetConfig)initWithCoder:(id)coder;
- (FCWidgetConfig)initWithConfigDictionary:(id)dictionary;
- (FCWidgetConfig)initWithWidgetConfig:(id)config;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)forYouBackgroundMinimumUpdateInterval;
- (int64_t)minimumArticleExposureDurationToBePreseen;
- (int64_t)smallWidgetSystemHoneymoonDuration;
- (int64_t)smallWidgetSystemReloadInterval;
- (int64_t)smallWidgetSystemReloadIntervalHoneymoon;
- (int64_t)smallWidgetSystemReloadJitterMax;
- (int64_t)smallWidgetSystemReloadJitterMaxHoneymoon;
- (int64_t)widgetSystemHoneymoonDuration;
- (int64_t)widgetSystemReloadInterval;
- (int64_t)widgetSystemReloadIntervalHoneymoon;
- (int64_t)widgetSystemReloadJitterMax;
- (int64_t)widgetSystemReloadJitterMaxHoneymoon;
- (unsigned)minimumNumberOfTimesPreseenToBeSeen;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCWidgetConfig

- (FCWidgetConfig)initWithWidgetConfig:(id)config
{
  configCopy = config;
  v9.receiver = self;
  v9.super_class = FCWidgetConfig;
  v5 = [(FCWidgetConfig *)&v9 init];
  if (v5)
  {
    v6 = [configCopy copy];
    pbWidgetConfig = v5->_pbWidgetConfig;
    v5->_pbWidgetConfig = v6;
  }

  return v5;
}

- (FCWidgetConfig)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = FCWidgetConfig;
  v5 = [(FCWidgetConfig *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    configDictionary = v5->_configDictionary;
    v5->_configDictionary = v6;
  }

  return v5;
}

- (int64_t)forYouBackgroundMinimumUpdateInterval
{
  pbWidgetConfig = [(FCWidgetConfig *)self pbWidgetConfig];

  if (pbWidgetConfig)
  {
    pbWidgetConfig2 = [(FCWidgetConfig *)self pbWidgetConfig];
    forYouBackgroundMinimumUpdateInterval = [pbWidgetConfig2 forYouBackgroundMinimumUpdateInterval];
  }

  else
  {
    pbWidgetConfig2 = [(FCWidgetConfig *)self configDictionary];
    forYouBackgroundMinimumUpdateInterval = FCAppConfigurationIntegerValue(pbWidgetConfig2, @"forYouBackgroundMinimumUpdateInterval", 1200);
  }

  v6 = forYouBackgroundMinimumUpdateInterval;

  return v6;
}

- (int64_t)minimumArticleExposureDurationToBePreseen
{
  pbWidgetConfig = [(FCWidgetConfig *)self pbWidgetConfig];

  if (pbWidgetConfig)
  {
    pbWidgetConfig2 = [(FCWidgetConfig *)self pbWidgetConfig];
    minimumArticleExposureDurationToBePreseen = [pbWidgetConfig2 minimumArticleExposureDurationToBePreseen];
  }

  else
  {
    pbWidgetConfig2 = [(FCWidgetConfig *)self configDictionary];
    minimumArticleExposureDurationToBePreseen = FCAppConfigurationIntegerValue(pbWidgetConfig2, @"minimumArticleExposureDurationToBePreseen", 1000);
  }

  v6 = minimumArticleExposureDurationToBePreseen;

  return v6;
}

- (unsigned)minimumNumberOfTimesPreseenToBeSeen
{
  pbWidgetConfig = [(FCWidgetConfig *)self pbWidgetConfig];

  if (pbWidgetConfig)
  {
    pbWidgetConfig2 = [(FCWidgetConfig *)self pbWidgetConfig];
    minimumNumberOfTimesPreseenToBeSeen = [pbWidgetConfig2 minimumNumberOfTimesPreseenToBeSeen];
  }

  else
  {
    pbWidgetConfig2 = [(FCWidgetConfig *)self configDictionary];
    minimumNumberOfTimesPreseenToBeSeen = FCAppConfigurationIntegerValue(pbWidgetConfig2, @"minimumNumberOfTimesPreseenToBeSeen", 2);
  }

  return minimumNumberOfTimesPreseenToBeSeen;
}

- (int64_t)widgetSystemReloadInterval
{
  configDictionary = [(FCWidgetConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"widgetSystemReloadInterval", 300);

  return v3;
}

- (int64_t)widgetSystemReloadJitterMax
{
  configDictionary = [(FCWidgetConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"widgetSystemReloadJitterMax", 600);

  return v3;
}

- (int64_t)widgetSystemHoneymoonDuration
{
  configDictionary = [(FCWidgetConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"widgetSystemHoneymoonDuration", 172800);

  return v3;
}

- (int64_t)widgetSystemReloadIntervalHoneymoon
{
  configDictionary = [(FCWidgetConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"widgetSystemReloadIntervalHoneymoon", 300);

  return v3;
}

- (int64_t)widgetSystemReloadJitterMaxHoneymoon
{
  configDictionary = [(FCWidgetConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"widgetSystemReloadJitterMaxHoneymoon", 600);

  return v3;
}

- (int64_t)smallWidgetSystemReloadInterval
{
  configDictionary = [(FCWidgetConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"smallWidgetSystemReloadInterval", 7200);

  return v3;
}

- (int64_t)smallWidgetSystemReloadJitterMax
{
  configDictionary = [(FCWidgetConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"smallWidgetSystemReloadJitterMax", 600);

  return v3;
}

- (int64_t)smallWidgetSystemHoneymoonDuration
{
  configDictionary = [(FCWidgetConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"smallWidgetSystemHoneymoonDuration", 172800);

  return v3;
}

- (int64_t)smallWidgetSystemReloadIntervalHoneymoon
{
  configDictionary = [(FCWidgetConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"smallWidgetSystemReloadIntervalHoneymoon", 7200);

  return v3;
}

- (int64_t)smallWidgetSystemReloadJitterMaxHoneymoon
{
  configDictionary = [(FCWidgetConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"smallWidgetSystemReloadJitterMaxHoneymoon", 600);

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(FCWidgetConfig);
  pbWidgetConfig = [(FCWidgetConfig *)self pbWidgetConfig];
  [(FCWidgetConfig *)v4 setPbWidgetConfig:pbWidgetConfig];

  configDictionary = [(FCWidgetConfig *)self configDictionary];
  [(FCWidgetConfig *)v4 setConfigDictionary:configDictionary];

  return v4;
}

- (FCWidgetConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = FCWidgetConfig;
  v5 = [(FCWidgetConfig *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pbWidgetConfig"];
    pbWidgetConfig = v5->_pbWidgetConfig;
    v5->_pbWidgetConfig = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configDictionary"];
    configDictionary = v5->_configDictionary;
    v5->_configDictionary = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  pbWidgetConfig = [(FCWidgetConfig *)self pbWidgetConfig];
  [coderCopy encodeObject:pbWidgetConfig forKey:@"pbWidgetConfig"];

  configDictionary = [(FCWidgetConfig *)self configDictionary];
  [coderCopy encodeObject:configDictionary forKey:@"configDictionary"];
}

@end