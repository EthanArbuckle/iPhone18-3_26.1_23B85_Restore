@interface FCNewsTabiRecommendedTagsContextConfiguration
- (FCNewsTabiRecommendedTagsContextConfiguration)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsTabiRecommendedTagsContextConfiguration

- (FCNewsTabiRecommendedTagsContextConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FCNewsTabiRecommendedTagsContextConfiguration;
  v5 = [(FCNewsTabiRecommendedTagsContextConfiguration *)&v8 init];
  if (v5)
  {
    v6 = FCAppConfigurationNumberValue(v4, @"maximumTagCount", &unk_1F2E6FD80);
    v5->_maximumTagCount = [v6 integerValue];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  [v3 appendFormat:@"\n\tmaximumTagCount: %ld;", -[FCNewsTabiRecommendedTagsContextConfiguration maximumTagCount](self, "maximumTagCount")];
  [v3 appendString:@"\n>"];

  return v3;
}

@end