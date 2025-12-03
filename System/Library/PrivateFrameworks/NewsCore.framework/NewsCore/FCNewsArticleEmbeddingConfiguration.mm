@interface FCNewsArticleEmbeddingConfiguration
- (FCNewsArticleEmbeddingConfiguration)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCNewsArticleEmbeddingConfiguration

- (FCNewsArticleEmbeddingConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7.receiver = self;
  v7.super_class = FCNewsArticleEmbeddingConfiguration;
  v5 = [(FCNewsArticleEmbeddingConfiguration *)&v7 init];
  if (v5)
  {
    v5->_shouldFetch = FCAppConfigurationBoolValue(dictionaryCopy, @"fetch", 0);
    v5->_shouldPersist = FCAppConfigurationBoolValue(dictionaryCopy, @"persist", 0);
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  [v3 appendFormat:@"; shouldFetch: %d", -[FCNewsArticleEmbeddingConfiguration shouldFetch](self, "shouldFetch")];
  [v3 appendFormat:@"; shouldPersist: %d", -[FCNewsArticleEmbeddingConfiguration shouldPersist](self, "shouldPersist")];
  [v3 appendString:@">"];

  return v3;
}

@end