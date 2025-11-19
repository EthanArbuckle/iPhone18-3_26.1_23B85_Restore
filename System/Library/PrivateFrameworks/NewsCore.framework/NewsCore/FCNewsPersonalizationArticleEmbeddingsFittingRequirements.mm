@interface FCNewsPersonalizationArticleEmbeddingsFittingRequirements
- (FCNewsPersonalizationArticleEmbeddingsFittingRequirements)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsPersonalizationArticleEmbeddingsFittingRequirements

- (FCNewsPersonalizationArticleEmbeddingsFittingRequirements)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FCNewsPersonalizationArticleEmbeddingsFittingRequirements;
  v5 = [(FCNewsPersonalizationArticleEmbeddingsFittingRequirements *)&v13 init];
  if (v5)
  {
    v6 = FCAppConfigurationNumberValue(v4, @"minimumNumberOfEmbeddings", 0);
    minimumNumberOfEmbeddings = v5->_minimumNumberOfEmbeddings;
    v5->_minimumNumberOfEmbeddings = v6;

    v8 = FCAppConfigurationNumberValue(v4, @"maximumNumberOfEmbeddings", 0);
    maximumNumberOfEmbeddings = v5->_maximumNumberOfEmbeddings;
    v5->_maximumNumberOfEmbeddings = v8;

    v10 = FCAppConfigurationNumberValue(v4, @"minimumDuration", 0);
    minimumDuration = v5->_minimumDuration;
    v5->_minimumDuration = v10;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(FCNewsPersonalizationArticleEmbeddingsFittingRequirements *)self minimumNumberOfEmbeddings];
  [v3 appendFormat:@"; minimumNumberOfEmbeddings: %@", v4];

  v5 = [(FCNewsPersonalizationArticleEmbeddingsFittingRequirements *)self maximumNumberOfEmbeddings];
  [v3 appendFormat:@"; maximumNumberOfEmbeddings: %@", v5];

  v6 = [(FCNewsPersonalizationArticleEmbeddingsFittingRequirements *)self minimumDuration];
  [v3 appendFormat:@"; minimumDuration: %@", v6];

  [v3 appendString:@">"];

  return v3;
}

@end