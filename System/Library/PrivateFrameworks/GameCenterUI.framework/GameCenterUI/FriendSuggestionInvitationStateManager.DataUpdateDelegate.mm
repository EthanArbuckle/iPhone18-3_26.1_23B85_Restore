@interface FriendSuggestionInvitationStateManager.DataUpdateDelegate
- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info;
- (void)refreshFromFriendRecommendationsNotification:(id)notification;
- (void)refreshFromMessageBasedFriendRequestSent:(id)sent;
@end

@implementation FriendSuggestionInvitationStateManager.DataUpdateDelegate

- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info
{
  v4 = *&type;
  sub_24E347C08();
  selfCopy = self;
  sub_24E156368(v4);
}

- (void)refreshFromFriendRecommendationsNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_24E156498(notificationCopy, 4);
}

- (void)refreshFromMessageBasedFriendRequestSent:(id)sent
{
  sentCopy = sent;
  selfCopy = self;
  sub_24E156498(sentCopy, 21);
}

@end