@interface CKAlertControllerActionHelper
+ (void)reportJunkWithConversation:(id)conversation;
- (CKAlertControllerActionHelper)init;
@end

@implementation CKAlertControllerActionHelper

+ (void)reportJunkWithConversation:(id)conversation
{
  conversationCopy = conversation;
  sub_190BC714C(conversationCopy);
}

- (CKAlertControllerActionHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AlertControllerActionHelper();
  return [(CKAlertControllerActionHelper *)&v3 init];
}

@end