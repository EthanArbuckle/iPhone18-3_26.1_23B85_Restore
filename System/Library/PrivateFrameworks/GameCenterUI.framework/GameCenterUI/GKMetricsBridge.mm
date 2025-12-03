@interface GKMetricsBridge
+ (void)recordInviteFriendClickEventWithType:(int64_t)type pageType:(id)pageType pageId:(id)id;
+ (void)recordLeaderboardPageEventWithPageId:(id)id withReferrerData:(BOOL)data;
@end

@implementation GKMetricsBridge

+ (void)recordLeaderboardPageEventWithPageId:(id)id withReferrerData:(BOOL)data
{
  v4 = sub_24E347CF8();
  static GKMetricsBridge.recordLeaderboardPageEvent(pageId:withReferrerData:)(v4);
}

+ (void)recordInviteFriendClickEventWithType:(int64_t)type pageType:(id)pageType pageId:(id)id
{
  sub_24E347CF8();
  sub_24E347CF8();
  static GKMetricsBridge.recordInviteFriendClickEvent(type:pageType:pageId:)();
}

@end