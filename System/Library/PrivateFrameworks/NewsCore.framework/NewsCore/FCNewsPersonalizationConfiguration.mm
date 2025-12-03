@interface FCNewsPersonalizationConfiguration
+ (id)defaultConfiguration;
- (FCNewsPersonalizationConfiguration)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCNewsPersonalizationConfiguration

- (FCNewsPersonalizationConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = FCNewsPersonalizationConfiguration;
  v5 = [(FCNewsPersonalizationConfiguration *)&v22 init];
  if (v5)
  {
    v6 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"userEventHistoryTrackingConfiguration", 0);
    v7 = [[FCUserEventHistoryTrackingConfiguration alloc] initWithDictionary:v6];
    trackingConfiguration = v5->_trackingConfiguration;
    v5->_trackingConfiguration = v7;

    v9 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"featureConfiguration", 0);
    v10 = [[FCNewsPersonalizationFeatureConfiguration alloc] initWithDictionary:v9];
    featureConfiguration = v5->_featureConfiguration;
    v5->_featureConfiguration = v10;

    v12 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"statelessPersonalizationConfiguration", 0);
    v13 = [[FCStatelessPersonalizationConfiguration alloc] initWithDictionary:v12];
    statelessPersonalizationConfiguration = v5->_statelessPersonalizationConfiguration;
    v5->_statelessPersonalizationConfiguration = v13;

    v15 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"trainingConfiguration", 0);
    v16 = [[FCNewsPersonalizationTrainingConfiguration alloc] initWithDictionary:v15];
    trainingConfiguration = v5->_trainingConfiguration;
    v5->_trainingConfiguration = v16;

    v18 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"articleEmbeddingsConfiguration", 0);
    v19 = [[FCNewsArticleEmbeddingsConfiguration alloc] initWithDictionary:v18];
    articleEmbeddingsConfiguration = v5->_articleEmbeddingsConfiguration;
    v5->_articleEmbeddingsConfiguration = v19;
  }

  return v5;
}

+ (id)defaultConfiguration
{
  v2 = [[FCNewsPersonalizationConfiguration alloc] initWithDictionary:&unk_1F2E718C0];

  return v2;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  statelessPersonalizationConfiguration = [(FCNewsPersonalizationConfiguration *)self statelessPersonalizationConfiguration];
  [v3 appendFormat:@"; statelessPersonalizationConfiguration: %@", statelessPersonalizationConfiguration];

  trackingConfiguration = [(FCNewsPersonalizationConfiguration *)self trackingConfiguration];
  [v3 appendFormat:@"; trackingConfiguration: %@", trackingConfiguration];

  featureConfiguration = [(FCNewsPersonalizationConfiguration *)self featureConfiguration];
  [v3 appendFormat:@"; featureConfiguration: %@", featureConfiguration];

  trainingConfiguration = [(FCNewsPersonalizationConfiguration *)self trainingConfiguration];
  [v3 appendFormat:@"; trainingConfiguration: %@", trainingConfiguration];

  articleEmbeddingsConfiguration = [(FCNewsPersonalizationConfiguration *)self articleEmbeddingsConfiguration];
  [v3 appendFormat:@"; articleEmbeddingsConfiguration: %@", articleEmbeddingsConfiguration];

  [v3 appendString:@">"];

  return v3;
}

@end