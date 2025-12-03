@interface FCNewsPersonalizationArticleEmbeddingsFittingRequirements
- (FCNewsPersonalizationArticleEmbeddingsFittingRequirements)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCNewsPersonalizationArticleEmbeddingsFittingRequirements

- (FCNewsPersonalizationArticleEmbeddingsFittingRequirements)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = FCNewsPersonalizationArticleEmbeddingsFittingRequirements;
  v5 = [(FCNewsPersonalizationArticleEmbeddingsFittingRequirements *)&v13 init];
  if (v5)
  {
    v6 = FCAppConfigurationNumberValue(dictionaryCopy, @"minimumNumberOfEmbeddings", 0);
    minimumNumberOfEmbeddings = v5->_minimumNumberOfEmbeddings;
    v5->_minimumNumberOfEmbeddings = v6;

    v8 = FCAppConfigurationNumberValue(dictionaryCopy, @"maximumNumberOfEmbeddings", 0);
    maximumNumberOfEmbeddings = v5->_maximumNumberOfEmbeddings;
    v5->_maximumNumberOfEmbeddings = v8;

    v10 = FCAppConfigurationNumberValue(dictionaryCopy, @"minimumDuration", 0);
    minimumDuration = v5->_minimumDuration;
    v5->_minimumDuration = v10;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  minimumNumberOfEmbeddings = [(FCNewsPersonalizationArticleEmbeddingsFittingRequirements *)self minimumNumberOfEmbeddings];
  [v3 appendFormat:@"; minimumNumberOfEmbeddings: %@", minimumNumberOfEmbeddings];

  maximumNumberOfEmbeddings = [(FCNewsPersonalizationArticleEmbeddingsFittingRequirements *)self maximumNumberOfEmbeddings];
  [v3 appendFormat:@"; maximumNumberOfEmbeddings: %@", maximumNumberOfEmbeddings];

  minimumDuration = [(FCNewsPersonalizationArticleEmbeddingsFittingRequirements *)self minimumDuration];
  [v3 appendFormat:@"; minimumDuration: %@", minimumDuration];

  [v3 appendString:@">"];

  return v3;
}

@end