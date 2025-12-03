@interface FCNewsArticleEmbeddingsConfiguration
- (FCNewsArticleEmbeddingsConfiguration)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCNewsArticleEmbeddingsConfiguration

- (FCNewsArticleEmbeddingsConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = FCNewsArticleEmbeddingsConfiguration;
  v5 = [(FCNewsArticleEmbeddingsConfiguration *)&v16 init];
  if (v5)
  {
    v6 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"titleEmbedding", 0);
    v7 = [[FCNewsArticleEmbeddingConfiguration alloc] initWithDictionary:v6];
    titleEmbeddingConfiguration = v5->_titleEmbeddingConfiguration;
    v5->_titleEmbeddingConfiguration = v7;

    v9 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"bodyEmbedding", 0);
    v10 = [[FCNewsArticleEmbeddingConfiguration alloc] initWithDictionary:v9];
    bodyEmbeddingConfiguration = v5->_bodyEmbeddingConfiguration;
    v5->_bodyEmbeddingConfiguration = v10;

    v12 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"fittingConfiguration", 0);
    v13 = [[FCNewsPersonalizationArticleEmbeddingsFittingConfiguration alloc] initWithDictionary:v12];
    fittingConfiguration = v5->_fittingConfiguration;
    v5->_fittingConfiguration = v13;

    v5->_requiredDimensions = FCAppConfigurationIntegerValue(dictionaryCopy, @"requiredDimensions", 768);
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  titleEmbeddingConfiguration = [(FCNewsArticleEmbeddingsConfiguration *)self titleEmbeddingConfiguration];
  [v3 appendFormat:@"; titleEmbeddingConfiguration: %@", titleEmbeddingConfiguration];

  bodyEmbeddingConfiguration = [(FCNewsArticleEmbeddingsConfiguration *)self bodyEmbeddingConfiguration];
  [v3 appendFormat:@"; bodyEmbeddingConfiguration: %@", bodyEmbeddingConfiguration];

  fittingConfiguration = [(FCNewsArticleEmbeddingsConfiguration *)self fittingConfiguration];
  [v3 appendFormat:@"; fittingConfiguration: %@", fittingConfiguration];

  [v3 appendFormat:@"; requiredDimensions: %llu", -[FCNewsArticleEmbeddingsConfiguration requiredDimensions](self, "requiredDimensions")];
  [v3 appendString:@">"];

  return v3;
}

@end