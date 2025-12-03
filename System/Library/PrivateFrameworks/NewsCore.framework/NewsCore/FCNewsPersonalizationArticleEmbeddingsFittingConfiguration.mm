@interface FCNewsPersonalizationArticleEmbeddingsFittingConfiguration
- (FCNewsPersonalizationArticleEmbeddingsFittingConfiguration)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCNewsPersonalizationArticleEmbeddingsFittingConfiguration

- (FCNewsPersonalizationArticleEmbeddingsFittingConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = FCNewsPersonalizationArticleEmbeddingsFittingConfiguration;
  v5 = [(FCNewsPersonalizationArticleEmbeddingsFittingConfiguration *)&v21 init];
  if (v5)
  {
    v6 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"articleReadRequirements", 0);
    v7 = [[FCNewsPersonalizationArticleEmbeddingsFittingRequirements alloc] initWithDictionary:v6];
    articleReadRequirements = v5->_articleReadRequirements;
    v5->_articleReadRequirements = v7;

    v9 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"articleSeenRequirements", 0);
    v10 = [[FCNewsPersonalizationArticleEmbeddingsFittingRequirements alloc] initWithDictionary:v9];
    articleSeenRequirements = v5->_articleSeenRequirements;
    v5->_articleSeenRequirements = v10;

    v12 = FCAppConfigurationNumberValue(dictionaryCopy, @"maximumRatioOfArticleSeenEmbeddingsToArticleReadEmbeddings", &unk_1F2E70560);
    maximumRatioOfArticleSeenEmbeddingsToArticleReadEmbeddings = v5->_maximumRatioOfArticleSeenEmbeddingsToArticleReadEmbeddings;
    v5->_maximumRatioOfArticleSeenEmbeddingsToArticleReadEmbeddings = v12;

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __81__FCNewsPersonalizationArticleEmbeddingsFittingConfiguration_initWithDictionary___block_invoke;
    v19[3] = &unk_1E7C3F068;
    v14 = dictionaryCopy;
    v20 = v14;
    v5->_embeddingType = __81__FCNewsPersonalizationArticleEmbeddingsFittingConfiguration_initWithDictionary___block_invoke(v19);
    v15 = FCAppConfigurationDictionaryValueWithDefaultValue(v14, @"logisticRegressionClassifierConfiguration", 0);
    v16 = [[FCNewsPersonalizationLogisticRegressionClassifierConfiguration alloc] initWithDictionary:v15];
    logisticRegressionClassifierConfiguration = v5->_logisticRegressionClassifierConfiguration;
    v5->_logisticRegressionClassifierConfiguration = v16;

    v5->_earliestAllowedEmbeddingEventTimestamp = FCAppConfigurationDoubleValue(v14, @"earliestAllowedEmbeddingEventTimestamp", 0.0);
    v5->_haltEmbeddingProcessingAfterEncounteringNonMatchingEmbeddingsInSession = FCAppConfigurationBoolValue(v14, @"haltEmbeddingProcessingAfterEncounteringNonMatchingEmbeddingsInSession", 1);
  }

  return v5;
}

uint64_t __81__FCNewsPersonalizationArticleEmbeddingsFittingConfiguration_initWithDictionary___block_invoke(uint64_t a1)
{
  v1 = FCAppConfigurationStringValue(*(a1 + 32), @"embeddingType", @"title");
  v2 = [v1 isEqualToString:@"body"];

  return v2;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  articleReadRequirements = [(FCNewsPersonalizationArticleEmbeddingsFittingConfiguration *)self articleReadRequirements];
  [v3 appendFormat:@"; articleReadRequirements: %@", articleReadRequirements];

  articleSeenRequirements = [(FCNewsPersonalizationArticleEmbeddingsFittingConfiguration *)self articleSeenRequirements];
  [v3 appendFormat:@"; articleSeenRequirements: %@", articleSeenRequirements];

  maximumRatioOfArticleSeenEmbeddingsToArticleReadEmbeddings = [(FCNewsPersonalizationArticleEmbeddingsFittingConfiguration *)self maximumRatioOfArticleSeenEmbeddingsToArticleReadEmbeddings];
  [v3 appendFormat:@"; maximumRatioOfArticleSeenEmbeddingsToArticleReadEmbeddings: %@", maximumRatioOfArticleSeenEmbeddingsToArticleReadEmbeddings];

  embeddingType = [(FCNewsPersonalizationArticleEmbeddingsFittingConfiguration *)self embeddingType];
  v8 = @"title";
  if (embeddingType == 1)
  {
    v8 = @"body";
  }

  [v3 appendFormat:@"; embeddingType: %@", v8];
  logisticRegressionClassifierConfiguration = [(FCNewsPersonalizationArticleEmbeddingsFittingConfiguration *)self logisticRegressionClassifierConfiguration];
  [v3 appendFormat:@"; logisticRegressionClassifierConfiguration: %@", logisticRegressionClassifierConfiguration];

  [(FCNewsPersonalizationArticleEmbeddingsFittingConfiguration *)self earliestAllowedEmbeddingEventTimestamp];
  [v3 appendFormat:@"; earliestAllowedEmbeddingEventTimestamp: %f", v10];
  [v3 appendFormat:@"; haltEmbeddingProcessingAfterEncounteringNonMatchingEmbeddingsInSession: %d", -[FCNewsPersonalizationArticleEmbeddingsFittingConfiguration haltEmbeddingProcessingAfterEncounteringNonMatchingEmbeddingsInSession](self, "haltEmbeddingProcessingAfterEncounteringNonMatchingEmbeddingsInSession")];
  [v3 appendString:@">"];

  return v3;
}

@end