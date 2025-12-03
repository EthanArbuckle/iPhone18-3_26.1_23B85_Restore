@interface FCIAdConfiguration
- (BOOL)isEqual:(id)equal;
- (FCIAdConfiguration)initWithConfigDictionary:(id)dictionary;
- (FCIAdConfiguration)initWithPBIAdConfig:(id)config;
@end

@implementation FCIAdConfiguration

- (FCIAdConfiguration)initWithPBIAdConfig:(id)config
{
  configCopy = config;
  v17.receiver = self;
  v17.super_class = FCIAdConfiguration;
  v6 = [(FCIAdConfiguration *)&v17 init];
  v7 = v6;
  if (v6)
  {
    if (configCopy)
    {
      objc_storeStrong(&v6->_pbConfig, config);
      v7->_segmentsEnabled = [configCopy segmentsEnabled];
      [configCopy segmentsThreshold];
      v7->_segmentsThreshold = v8;
      v7->_segmentsSubmissionFrequency = [configCopy segmentsSubmissionFrequency];
      v7->_segmentsHistoryWindowInterval = [configCopy segmentsHistoryWindowInterval];
      v7->_segmentsMinimumArticleCount = [configCopy segmentsMinimumArticleCount];
      iAdSegmentIDs = v7->_iAdSegmentIDs;
      v7->_iAdSegmentIDs = 0;

      adStatusConditionsByType = v7->_adStatusConditionsByType;
      v7->_adStatusConditionsByType = 0;

      __asm { FMOV            V0.2D, #1.0 }

      *&v7->_feedNumberOfViewportsBetweenAds = _Q0;
      *&v7->_preRequestPolicyValidationEnabled = 256;
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (FCIAdConfiguration)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = FCIAdConfiguration;
  v6 = [(FCIAdConfiguration *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configDict, dictionary);
    v7->_segmentsEnabled = FCAppConfigurationBoolValue(dictionaryCopy, @"segmentsEnabled", 1);
    v7->_segmentsThreshold = FCAppConfigurationDoubleValue(dictionaryCopy, @"segmentsThreshold", 0.15);
    v7->_segmentsSubmissionFrequency = FCAppConfigurationIntegerValue(dictionaryCopy, @"segmentsSubmissionFrequency", 1296000);
    v7->_segmentsHistoryWindowInterval = FCAppConfigurationIntegerValue(dictionaryCopy, @"segmentsHistoryWindowInterval", 1296000);
    v7->_segmentsMinimumArticleCount = FCAppConfigurationIntegerValue(dictionaryCopy, @"segmentsMinimumArticleCount", 10);
    v7->_segmentsMinimumEventCount = FCAppConfigurationIntegerValue(dictionaryCopy, @"segmentsMinimumEventCount", 20);
    v7->_segmentsMinRelativeRate = FCAppConfigurationDoubleValue(dictionaryCopy, @"segmentsMinimumEventCount", 0.75);
    array = [MEMORY[0x1E695DEC8] array];
    v9 = FCAppConfigurationArrayValueWithDefaultValue(dictionaryCopy, @"iAdSegmentIds", array);
    iAdSegmentIDs = v7->_iAdSegmentIDs;
    v7->_iAdSegmentIDs = v9;

    array2 = [MEMORY[0x1E695DEC8] array];
    v12 = FCAppConfigurationArrayValueWithDefaultValue(dictionaryCopy, @"adStatusConditions", array2);

    v13 = [FCAdStatusCondition adStatusConditionsFromConditionsArray:v12];
    adStatusConditionsByType = v7->_adStatusConditionsByType;
    v7->_adStatusConditionsByType = v13;

    v7->_feedNumberOfViewportsBetweenAds = FCAppConfigurationDoubleValue(dictionaryCopy, @"feedNumberofViewportsBetweenAds", 1.0);
    v7->_articleNumberOfViewportsBetweenAds = FCAppConfigurationDoubleValue(dictionaryCopy, @"articleNumberofViewportsBetweenAds", 1.0);
    v7->_preRequestPolicyValidationEnabled = FCAppConfigurationBoolValue(dictionaryCopy, @"preRequestPolicyValidationEnabled", 0);
    v7->_recipeCardUseTopAdPlacement = FCAppConfigurationBoolValue(dictionaryCopy, @"recipeCardUseTopAdPlacement", 1);
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

  if (v6 && [MEMORY[0x1E69E58C0] nf_object:self->_pbConfig isEqualToObject:v6[1]])
  {
    v7 = [MEMORY[0x1E69E58C0] nf_object:self->_configDict isEqualToObject:v6[2]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end