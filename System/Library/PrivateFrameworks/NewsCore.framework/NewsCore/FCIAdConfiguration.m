@interface FCIAdConfiguration
- (BOOL)isEqual:(id)a3;
- (FCIAdConfiguration)initWithConfigDictionary:(id)a3;
- (FCIAdConfiguration)initWithPBIAdConfig:(id)a3;
@end

@implementation FCIAdConfiguration

- (FCIAdConfiguration)initWithPBIAdConfig:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = FCIAdConfiguration;
  v6 = [(FCIAdConfiguration *)&v17 init];
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      objc_storeStrong(&v6->_pbConfig, a3);
      v7->_segmentsEnabled = [v5 segmentsEnabled];
      [v5 segmentsThreshold];
      v7->_segmentsThreshold = v8;
      v7->_segmentsSubmissionFrequency = [v5 segmentsSubmissionFrequency];
      v7->_segmentsHistoryWindowInterval = [v5 segmentsHistoryWindowInterval];
      v7->_segmentsMinimumArticleCount = [v5 segmentsMinimumArticleCount];
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

- (FCIAdConfiguration)initWithConfigDictionary:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = FCIAdConfiguration;
  v6 = [(FCIAdConfiguration *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configDict, a3);
    v7->_segmentsEnabled = FCAppConfigurationBoolValue(v5, @"segmentsEnabled", 1);
    v7->_segmentsThreshold = FCAppConfigurationDoubleValue(v5, @"segmentsThreshold", 0.15);
    v7->_segmentsSubmissionFrequency = FCAppConfigurationIntegerValue(v5, @"segmentsSubmissionFrequency", 1296000);
    v7->_segmentsHistoryWindowInterval = FCAppConfigurationIntegerValue(v5, @"segmentsHistoryWindowInterval", 1296000);
    v7->_segmentsMinimumArticleCount = FCAppConfigurationIntegerValue(v5, @"segmentsMinimumArticleCount", 10);
    v7->_segmentsMinimumEventCount = FCAppConfigurationIntegerValue(v5, @"segmentsMinimumEventCount", 20);
    v7->_segmentsMinRelativeRate = FCAppConfigurationDoubleValue(v5, @"segmentsMinimumEventCount", 0.75);
    v8 = [MEMORY[0x1E695DEC8] array];
    v9 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"iAdSegmentIds", v8);
    iAdSegmentIDs = v7->_iAdSegmentIDs;
    v7->_iAdSegmentIDs = v9;

    v11 = [MEMORY[0x1E695DEC8] array];
    v12 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"adStatusConditions", v11);

    v13 = [FCAdStatusCondition adStatusConditionsFromConditionsArray:v12];
    adStatusConditionsByType = v7->_adStatusConditionsByType;
    v7->_adStatusConditionsByType = v13;

    v7->_feedNumberOfViewportsBetweenAds = FCAppConfigurationDoubleValue(v5, @"feedNumberofViewportsBetweenAds", 1.0);
    v7->_articleNumberOfViewportsBetweenAds = FCAppConfigurationDoubleValue(v5, @"articleNumberofViewportsBetweenAds", 1.0);
    v7->_preRequestPolicyValidationEnabled = FCAppConfigurationBoolValue(v5, @"preRequestPolicyValidationEnabled", 0);
    v7->_recipeCardUseTopAdPlacement = FCAppConfigurationBoolValue(v5, @"recipeCardUseTopAdPlacement", 1);
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