@interface FriendSuggestionInvitationStateManager.DataUpdateDelegate
- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4;
- (void)refreshFromFriendRecommendationsNotification:(id)a3;
- (void)refreshFromMessageBasedFriendRequestSent:(id)a3;
@end

@implementation FriendSuggestionInvitationStateManager.DataUpdateDelegate

- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4
{
  v4 = *&a3;
  sub_24E347C08();
  v6 = self;
  sub_24E156368(v4);
}

- (void)refreshFromFriendRecommendationsNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E156498(v4, 4);
}

- (void)refreshFromMessageBasedFriendRequestSent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E156498(v4, 21);
}

@end