@interface FCNewsPersonalizationTrainingFeatureFlags
- (FCNewsPersonalizationTrainingFeatureFlags)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCNewsPersonalizationTrainingFeatureFlags

- (FCNewsPersonalizationTrainingFeatureFlags)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = FCNewsPersonalizationTrainingFeatureFlags;
  v5 = [(FCNewsPersonalizationTrainingFeatureFlags *)&v11 init];
  if (v5)
  {
    v5->_enableSingleLifetimeSeenEventPerArticle = FCAppConfigurationBoolValue(dictionaryCopy, @"enableSingleLifetimeSeenEventPerArticle", 0);
    v5->_enableSyntheticTagFollowEvents = FCAppConfigurationBoolValue(dictionaryCopy, @"enableSyntheticTagFollowEvents", 0);
    v5->_readingHistoryItemCountToProcess = FCAppConfigurationIntegerValue(dictionaryCopy, @"readingHistoryItemCountToProcess", 0);
    v6 = FCAppConfigurationNumberValue(dictionaryCopy, @"uniqueAggregateLimit", 0);
    uniqueAggregateLimit = v5->_uniqueAggregateLimit;
    v5->_uniqueAggregateLimit = v6;

    v8 = FCAppConfigurationNumberValue(dictionaryCopy, @"eventLimit", 0);
    eventLimit = v5->_eventLimit;
    v5->_eventLimit = v8;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  [v3 appendFormat:@"; enableSingleLifetimeSeenEventPerArticle: %d", -[FCNewsPersonalizationTrainingFeatureFlags enableSingleLifetimeSeenEventPerArticle](self, "enableSingleLifetimeSeenEventPerArticle")];
  [v3 appendFormat:@"; enableSyntheticTagFollowEvents: %d", -[FCNewsPersonalizationTrainingFeatureFlags enableSyntheticTagFollowEvents](self, "enableSyntheticTagFollowEvents")];
  [v3 appendFormat:@"; readingHistoryItemCountToProcess: %llu", -[FCNewsPersonalizationTrainingFeatureFlags readingHistoryItemCountToProcess](self, "readingHistoryItemCountToProcess")];
  uniqueAggregateLimit = [(FCNewsPersonalizationTrainingFeatureFlags *)self uniqueAggregateLimit];
  [v3 appendFormat:@"; uniqueAggregateLimit: %@", uniqueAggregateLimit];

  eventLimit = [(FCNewsPersonalizationTrainingFeatureFlags *)self eventLimit];
  [v3 appendFormat:@"; eventLimit: %@", eventLimit];

  [v3 appendString:@">"];

  return v3;
}

@end