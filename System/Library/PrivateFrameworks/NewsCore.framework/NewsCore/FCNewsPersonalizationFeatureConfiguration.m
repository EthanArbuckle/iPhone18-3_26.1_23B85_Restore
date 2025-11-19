@interface FCNewsPersonalizationFeatureConfiguration
- (FCNewsPersonalizationFeatureConfiguration)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsPersonalizationFeatureConfiguration

- (FCNewsPersonalizationFeatureConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = FCNewsPersonalizationFeatureConfiguration;
  v5 = [(FCNewsPersonalizationFeatureConfiguration *)&v7 init];
  if (v5)
  {
    v5->_articleLengthMediumThreshold = FCAppConfigurationPositiveIntegerValue(v4, @"articleLengthMediumThreshold", +[FCNewsPersonalizationFeatureConfiguration defaultArticleLengthMediumThreshold]);
    v5->_articleLengthLongThreshold = FCAppConfigurationPositiveIntegerValue(v4, @"articleLengthLongThreshold", +[FCNewsPersonalizationFeatureConfiguration defaultArticleLengthLongThreshold]);
    v5->_publisherTopicPairPublisherEventCountThreshold = FCAppConfigurationPositiveIntegerValue(v4, @"publisherTopicPairPublisherEventCountThreshold", +[FCNewsPersonalizationFeatureConfiguration defaultPublisherTopicPairPublisherEventCountThreshold]);
    v5->_publisherTopicPairTopicEventCountThreshold = FCAppConfigurationPositiveIntegerValue(v4, @"publisherTopicPairTopicEventCountThreshold", +[FCNewsPersonalizationFeatureConfiguration defaultPublisherTopicPairTopicEventCountThreshold]);
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  [v3 appendFormat:@"; articleLengthMediumThreshold: %lu", -[FCNewsPersonalizationFeatureConfiguration articleLengthMediumThreshold](self, "articleLengthMediumThreshold")];
  [v3 appendFormat:@"; articleLengthLongThreshold: %lu", -[FCNewsPersonalizationFeatureConfiguration articleLengthLongThreshold](self, "articleLengthLongThreshold")];
  [v3 appendFormat:@"; publisherTopicPairPublisherEventCountThreshold: %lu", -[FCNewsPersonalizationFeatureConfiguration publisherTopicPairPublisherEventCountThreshold](self, "publisherTopicPairPublisherEventCountThreshold")];
  [v3 appendFormat:@"; publisherTopicPairTopicEventCountThreshold: %lu", -[FCNewsPersonalizationFeatureConfiguration publisherTopicPairTopicEventCountThreshold](self, "publisherTopicPairTopicEventCountThreshold")];
  [v3 appendString:@">"];

  return v3;
}

@end