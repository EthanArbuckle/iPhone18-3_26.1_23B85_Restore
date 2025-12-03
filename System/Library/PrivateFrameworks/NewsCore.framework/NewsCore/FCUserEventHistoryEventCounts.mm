@interface FCUserEventHistoryEventCounts
+ (FCUserEventHistoryEventCounts)empty;
- (FCUserEventHistoryEventCounts)initWithArticleSeenEventCount:(int64_t)count articleVisitedEventCount:(int64_t)eventCount articleReadEventCount:(int64_t)readEventCount articleLikedEventCount:(int64_t)likedEventCount articleDislikedEventCount:(int64_t)dislikedEventCount articleSharedEventCount:(int64_t)sharedEventCount articleSavedEventCount:(int64_t)savedEventCount feedViewEventCount:(int64_t)self0 tagFollowedEventCount:(int64_t)self1 tagUnfollowedEventCount:(int64_t)self2 tagMutedEventCount:(int64_t)self3;
- (id)description;
@end

@implementation FCUserEventHistoryEventCounts

- (FCUserEventHistoryEventCounts)initWithArticleSeenEventCount:(int64_t)count articleVisitedEventCount:(int64_t)eventCount articleReadEventCount:(int64_t)readEventCount articleLikedEventCount:(int64_t)likedEventCount articleDislikedEventCount:(int64_t)dislikedEventCount articleSharedEventCount:(int64_t)sharedEventCount articleSavedEventCount:(int64_t)savedEventCount feedViewEventCount:(int64_t)self0 tagFollowedEventCount:(int64_t)self1 tagUnfollowedEventCount:(int64_t)self2 tagMutedEventCount:(int64_t)self3
{
  v20.receiver = self;
  v20.super_class = FCUserEventHistoryEventCounts;
  result = [(FCUserEventHistoryEventCounts *)&v20 init];
  if (result)
  {
    result->_articleSeenEventCount = count;
    result->_articleVisitedEventCount = eventCount;
    result->_articleReadEventCount = readEventCount;
    result->_articleLikedEventCount = likedEventCount;
    result->_articleDislikedEventCount = dislikedEventCount;
    result->_articleSharedEventCount = sharedEventCount;
    result->_articleSavedEventCount = savedEventCount;
    result->_feedViewEventCount = viewEventCount;
    result->_tagFollowedEventCount = followedEventCount;
    result->_tagUnfollowedEventCount = unfollowedEventCount;
    result->_tagMutedEventCount = mutedEventCount;
  }

  return result;
}

+ (FCUserEventHistoryEventCounts)empty
{
  v2 = [[FCUserEventHistoryEventCounts alloc] initWithArticleSeenEventCount:-1 articleVisitedEventCount:-1 articleReadEventCount:-1 articleLikedEventCount:-1 articleDislikedEventCount:-1 articleSharedEventCount:-1 articleSavedEventCount:-1 feedViewEventCount:-1 tagFollowedEventCount:-1 tagUnfollowedEventCount:-1 tagMutedEventCount:-1];

  return v2;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  [v3 appendFormat:@"; articleSeenEventCount: %lld", -[FCUserEventHistoryEventCounts articleSeenEventCount](self, "articleSeenEventCount")];
  [v3 appendFormat:@"; articleVisitedEventCount: %lld", -[FCUserEventHistoryEventCounts articleVisitedEventCount](self, "articleVisitedEventCount")];
  [v3 appendFormat:@"; articleReadEventCount: %lld", -[FCUserEventHistoryEventCounts articleReadEventCount](self, "articleReadEventCount")];
  [v3 appendFormat:@"; articleLikedEventCount: %lld", -[FCUserEventHistoryEventCounts articleLikedEventCount](self, "articleLikedEventCount")];
  [v3 appendFormat:@"; articleDislikedEventCount: %lld", -[FCUserEventHistoryEventCounts articleDislikedEventCount](self, "articleDislikedEventCount")];
  [v3 appendFormat:@"; articleSharedEventCount: %lld", -[FCUserEventHistoryEventCounts articleSharedEventCount](self, "articleSharedEventCount")];
  [v3 appendFormat:@"; articleSavedEventCount: %lld", -[FCUserEventHistoryEventCounts articleSavedEventCount](self, "articleSavedEventCount")];
  [v3 appendFormat:@"; feedViewEventCount: %lld", -[FCUserEventHistoryEventCounts feedViewEventCount](self, "feedViewEventCount")];
  [v3 appendFormat:@"; tagFollowedEventCount: %lld", -[FCUserEventHistoryEventCounts tagFollowedEventCount](self, "tagFollowedEventCount")];
  [v3 appendFormat:@"; tagUnfollowedEventCount: %lld", -[FCUserEventHistoryEventCounts tagUnfollowedEventCount](self, "tagUnfollowedEventCount")];
  [v3 appendFormat:@"; tagMutedEventCount: %lld", -[FCUserEventHistoryEventCounts tagMutedEventCount](self, "tagMutedEventCount")];
  [v3 appendString:@">"];

  return v3;
}

@end