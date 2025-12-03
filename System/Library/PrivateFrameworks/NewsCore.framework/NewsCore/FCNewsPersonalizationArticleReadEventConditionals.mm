@interface FCNewsPersonalizationArticleReadEventConditionals
- (FCNewsPersonalizationArticleReadEventConditionals)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCNewsPersonalizationArticleReadEventConditionals

- (FCNewsPersonalizationArticleReadEventConditionals)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7.receiver = self;
  v7.super_class = FCNewsPersonalizationArticleReadEventConditionals;
  v5 = [(FCNewsPersonalizationArticleReadEventConditionals *)&v7 init];
  if (v5)
  {
    v5->_minimumDuration = FCAppConfigurationDoubleValue(dictionaryCopy, @"minimumDuration", 0.0);
    v5->_minimumScrollEventCount = FCAppConfigurationIntegerValue(dictionaryCopy, @"minimumScrollEventCount", 0);
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  [(FCNewsPersonalizationArticleReadEventConditionals *)self minimumDuration];
  [v3 appendFormat:@"; minimumDuration: %f", v4];
  [v3 appendFormat:@"; minimumScrollEventCount: %lld", -[FCNewsPersonalizationArticleReadEventConditionals minimumScrollEventCount](self, "minimumScrollEventCount")];
  [v3 appendString:@">"];

  return v3;
}

@end