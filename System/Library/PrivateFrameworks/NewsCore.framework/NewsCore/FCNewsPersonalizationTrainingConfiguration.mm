@interface FCNewsPersonalizationTrainingConfiguration
- (FCNewsPersonalizationTrainingConfiguration)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCNewsPersonalizationTrainingConfiguration

- (FCNewsPersonalizationTrainingConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v33.receiver = self;
  v33.super_class = FCNewsPersonalizationTrainingConfiguration;
  v5 = [(FCNewsPersonalizationTrainingConfiguration *)&v33 init];
  if (v5)
  {
    v6 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"eventConditionals", 0);
    v7 = [[FCNewsPersonalizationEventConditionalsConfigurations alloc] initWithDictionary:v6];
    eventConditionalsConfigurations = v5->_eventConditionalsConfigurations;
    v5->_eventConditionalsConfigurations = v7;

    v9 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"aggregateModificationConfigurations", 0);
    v10 = [[FCNewsPersonalizationAggregateModificationConfigurations alloc] initWithDictionary:v9];
    aggregateModificationConfigurations = v5->_aggregateModificationConfigurations;
    v5->_aggregateModificationConfigurations = v10;

    v12 = FCAppConfigurationNumberValue(dictionaryCopy, @"decayRate", 0);
    if (v12)
    {
      v13 = v12;
      [v12 doubleValue];
      v5->_decayRate = v14;
      v15 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"featurePriors", 0);
      v16 = [[FCNewsPersonalizationFeaturePriorsConfiguration alloc] initWithDictionary:v15];
      if (v16)
      {
        objc_storeStrong(&v5->_priorsConfiguration, v16);
        v17 = [FCNewsPersonalizationTrainingBiases alloc];
        v18 = FCAppConfigurationArrayValueWithDefaultValue(dictionaryCopy, @"biases", 0);
        v19 = [(FCNewsPersonalizationTrainingBiases *)v17 initWithBiases:v18];
        biases = v5->_biases;
        v5->_biases = v19;

        v21 = [FCNewsPersonalizationTrainingFeatureFlags alloc];
        v22 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"featureFlags", 0);
        v23 = [(FCNewsPersonalizationTrainingFeatureFlags *)v21 initWithDictionary:v22];
        featureFlags = v5->_featureFlags;
        v5->_featureFlags = v23;

        v25 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"legacyBridgeConfiguration", 0);
        v26 = [[FCNewsPersonalizationTrainingLegacyBridgeConfiguration alloc] initWithDictionary:v25];
        legacyBridgeConfiguration = v5->_legacyBridgeConfiguration;
        v5->_legacyBridgeConfiguration = v26;

        if (NFInternalBuild() && (NewsCoreUserDefaults(), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v28 BOOLForKey:@"news.news_personalization.enable_training_configuration_override"], v28, v29))
        {
          v30 = NewsCoreUserDefaults();
          v5->_disableTrainingLegacyAggregates = [v30 BOOLForKey:@"news.news_personalization.disable_training_legacy_aggregates"];
        }

        else
        {
          v5->_disableTrainingLegacyAggregates = FCAppConfigurationBoolValue(dictionaryCopy, @"disableTrainingLegacyAggregates", 0);
        }

        if (v16)
        {
          goto LABEL_9;
        }

LABEL_12:
        v31 = 0;
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

LABEL_9:
  v31 = v5;
LABEL_13:

  return v31;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  eventConditionalsConfigurations = [(FCNewsPersonalizationTrainingConfiguration *)self eventConditionalsConfigurations];
  [v3 appendFormat:@"; eventConditionalsConfigurations: %@", eventConditionalsConfigurations];

  aggregateModificationConfigurations = [(FCNewsPersonalizationTrainingConfiguration *)self aggregateModificationConfigurations];
  [v3 appendFormat:@"; aggregateModificationConfigurations: %@", aggregateModificationConfigurations];

  [(FCNewsPersonalizationTrainingConfiguration *)self decayRate];
  [v3 appendFormat:@"; decayRate: %f", v6];
  priorsConfiguration = [(FCNewsPersonalizationTrainingConfiguration *)self priorsConfiguration];
  [v3 appendFormat:@"; priorsConfiguration: %@", priorsConfiguration];

  biases = [(FCNewsPersonalizationTrainingConfiguration *)self biases];
  [v3 appendFormat:@"; biases: %@", biases];

  featureFlags = [(FCNewsPersonalizationTrainingConfiguration *)self featureFlags];
  [v3 appendFormat:@"; featureFlags: %@", featureFlags];

  legacyBridgeConfiguration = [(FCNewsPersonalizationTrainingConfiguration *)self legacyBridgeConfiguration];
  [v3 appendFormat:@"; legacyBridgeConfiguration: %@", legacyBridgeConfiguration];

  [v3 appendFormat:@"; disableTrainingLegacyAggregates: %d", -[FCNewsPersonalizationTrainingConfiguration disableTrainingLegacyAggregates](self, "disableTrainingLegacyAggregates")];
  [v3 appendString:@">"];

  return v3;
}

@end