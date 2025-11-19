@interface FCPrefetchConfiguration
- (BOOL)isEqual:(id)a3;
- (FCPrefetchConfiguration)initWithConfigDictionary:(id)a3;
- (FCPrefetchConfiguration)initWithDefaults;
@end

@implementation FCPrefetchConfiguration

- (FCPrefetchConfiguration)initWithDefaults
{
  v8.receiver = self;
  v8.super_class = FCPrefetchConfiguration;
  v2 = [(FCPrefetchConfiguration *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_backgroundFetchEnabled = 257;
    scheduledBGFetchTimes = v2->_scheduledBGFetchTimes;
    v2->_minimumBackgroundFetchInterval = 0.0;
    v2->_scheduledBGFetchTimes = &unk_1F2E71AC8;

    v3->_scheduledBGFetchTimeJitter = 3600;
    v5 = FCDefaultScheduledMicroUpdateTimes();
    scheduledMicroUpdateTimes = v3->_scheduledMicroUpdateTimes;
    v3->_scheduledMicroUpdateTimes = v5;

    v3->_scheduledMicroUpdateTimeJitter = 3600;
  }

  return v3;
}

- (FCPrefetchConfiguration)initWithConfigDictionary:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = FCPrefetchConfiguration;
  v6 = [(FCPrefetchConfiguration *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configDict, a3);
    v7->_backgroundFetchEnabled = FCAppConfigurationBoolValue(v5, @"backgroundFetchEnabled2", 1);
    v7->_minimumBackgroundFetchInterval = FCAppConfigurationIntegerValue(v5, @"backgroundFetchMinimumInterval", 0);
    v7->_shouldPrefetchForYouFeed = FCAppConfigurationBoolValue(v5, @"feedPrefetchForYou", 1);
    v8 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"scheduledBGFetchTimes", &unk_1F2E71AF0);
    scheduledBGFetchTimes = v7->_scheduledBGFetchTimes;
    v7->_scheduledBGFetchTimes = v8;

    v7->_scheduledBGFetchTimeJitter = FCAppConfigurationIntegerValue(v5, @"scheduledBGFetchJitter", 3600);
    v10 = FCDefaultScheduledMicroUpdateTimes();
    v11 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"scheduledMicroUpdateTimes", v10);
    scheduledMicroUpdateTimes = v7->_scheduledMicroUpdateTimes;
    v7->_scheduledMicroUpdateTimes = v11;

    v7->_scheduledMicroUpdateTimeJitter = FCAppConfigurationIntegerValue(v5, @"scheduledMicroUpdateJitter", 3600);
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