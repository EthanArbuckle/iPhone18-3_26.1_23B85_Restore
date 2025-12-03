@interface FCNewsTabiRecommendedIssuesUserContextConfiguration
- (FCNewsTabiRecommendedIssuesUserContextConfiguration)initWithDictionary:(id)dictionary;
- (FCNewsTabiRecommendedIssuesUserContextConfiguration)initWithMaximumTagCount:(int64_t)count maximumTopicTagsPerHeadline:(int64_t)headline;
- (id)description;
@end

@implementation FCNewsTabiRecommendedIssuesUserContextConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  [v3 appendFormat:@"\n\tmaximumTagCount: %lu;", -[FCNewsTabiRecommendedIssuesUserContextConfiguration maximumTagCount](self, "maximumTagCount")];
  [v3 appendFormat:@"\n\tmaximumTopicTagsPerHeadline: %lu;", -[FCNewsTabiRecommendedIssuesUserContextConfiguration maximumTopicTagsPerHeadline](self, "maximumTopicTagsPerHeadline")];
  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiRecommendedIssuesUserContextConfiguration)initWithMaximumTagCount:(int64_t)count maximumTopicTagsPerHeadline:(int64_t)headline
{
  v7.receiver = self;
  v7.super_class = FCNewsTabiRecommendedIssuesUserContextConfiguration;
  result = [(FCNewsTabiRecommendedIssuesUserContextConfiguration *)&v7 init];
  if (result)
  {
    result->_maximumTagCount = count;
    result->_maximumTopicTagsPerHeadline = headline;
  }

  return result;
}

- (FCNewsTabiRecommendedIssuesUserContextConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = FCNewsTabiRecommendedIssuesUserContextConfiguration;
  v5 = [(FCNewsTabiRecommendedIssuesUserContextConfiguration *)&v9 init];
  if (v5)
  {
    v6 = FCAppConfigurationNumberValue(dictionaryCopy, @"maximumTagCount", &unk_1F2E70F08);
    v5->_maximumTagCount = [v6 integerValue];

    v7 = FCAppConfigurationNumberValue(dictionaryCopy, @"maximumTopicTagsPerHeadline", &unk_1F2E70F20);
    v5->_maximumTopicTagsPerHeadline = [v7 integerValue];
  }

  return v5;
}

@end