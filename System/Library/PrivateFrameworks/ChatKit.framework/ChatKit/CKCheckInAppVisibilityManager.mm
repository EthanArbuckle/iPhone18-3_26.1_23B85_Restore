@interface CKCheckInAppVisibilityManager
+ (BOOL)isCheckInVisibleInConversation:(id)conversation;
- (CKCheckInAppVisibilityManager)init;
@end

@implementation CKCheckInAppVisibilityManager

+ (BOOL)isCheckInVisibleInConversation:(id)conversation
{
  conversationCopy = conversation;
  conversationCopy2 = conversation;
  LOBYTE(conversationCopy) = _s7ChatKit23CheckInSendMenuListItemC09isVisibleD12ConversationySbSo14CKConversationCSgFZ_0(conversationCopy);

  return conversationCopy & 1;
}

- (CKCheckInAppVisibilityManager)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CheckInAppVisibilityManager();
  return [(CKCheckInAppVisibilityManager *)&v3 init];
}

@end