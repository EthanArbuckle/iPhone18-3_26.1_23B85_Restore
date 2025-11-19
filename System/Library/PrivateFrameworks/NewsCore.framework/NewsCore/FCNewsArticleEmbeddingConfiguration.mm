@interface FCNewsArticleEmbeddingConfiguration
- (FCNewsArticleEmbeddingConfiguration)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsArticleEmbeddingConfiguration

- (FCNewsArticleEmbeddingConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = FCNewsArticleEmbeddingConfiguration;
  v5 = [(FCNewsArticleEmbeddingConfiguration *)&v7 init];
  if (v5)
  {
    v5->_shouldFetch = FCAppConfigurationBoolValue(v4, @"fetch", 0);
    v5->_shouldPersist = FCAppConfigurationBoolValue(v4, @"persist", 0);
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