@interface GKMetricsBridge
+ (void)recordInviteFriendClickEventWithType:(int64_t)a3 pageType:(id)a4 pageId:(id)a5;
+ (void)recordLeaderboardPageEventWithPageId:(id)a3 withReferrerData:(BOOL)a4;
@end

@implementation GKMetricsBridge

+ (void)recordLeaderboardPageEventWithPageId:(id)a3 withReferrerData:(BOOL)a4
{
  v4 = sub_24E347CF8();
  static GKMetricsBridge.recordLeaderboardPageEvent(pageId:withReferrerData:)(v4);
}

+ (void)recordInviteFriendClickEventWithType:(int64_t)a3 pageType:(id)a4 pageId:(id)a5
{
  sub_24E347CF8();
  sub_24E347CF8();
  static GKMetricsBridge.recordInviteFriendClickEvent(type:pageType:pageId:)();
}

@end