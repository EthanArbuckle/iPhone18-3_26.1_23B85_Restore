@interface FCNewsPersonalizationTrainingFeatureFlags
- (FCNewsPersonalizationTrainingFeatureFlags)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsPersonalizationTrainingFeatureFlags

- (FCNewsPersonalizationTrainingFeatureFlags)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FCNewsPersonalizationTrainingFeatureFlags;
  v5 = [(FCNewsPersonalizationTrainingFeatureFlags *)&v11 init];
  if (v5)
  {
    v5->_enableSingleLifetimeSeenEventPerArticle = FCAppConfigurationBoolValue(v4, @"enableSingleLifetimeSeenEventPerArticle", 0);
    v5->_enableSyntheticTagFollowEvents = FCAppConfigurationBoolValue(v4, @"enableSyntheticTagFollowEvents", 0);
    v5->_readingHistoryItemCountToProcess = FCAppConfigurationIntegerValue(v4, @"readingHistoryItemCountToProcess", 0);
    v6 = FCAppConfigurationNumberValue(v4, @"uniqueAggregateLimit", 0);
    uniqueAggregateLimit = v5->_uniqueAggregateLimit;
    v5->_uniqueAggregateLimit = v6;

    v8 = FCAppConfigurationNumberValue(v4, @"eventLimit", 0);
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
  v4 = [(FCNewsPersonalizationTrainingFeatureFlags *)self uniqueAggregateLimit];
  [v3 appendFormat:@"; uniqueAggregateLimit: %@", v4];

  v5 = [(FCNewsPersonalizationTrainingFeatureFlags *)self eventLimit];
  [v3 appendFormat:@"; eventLimit: %@", v5];

  [v3 appendString:@">"];

  return v3;
}

@end