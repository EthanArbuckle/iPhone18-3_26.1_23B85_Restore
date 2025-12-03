@interface MFMutedThreadMessageRule
- (BOOL)canExecuteRuleOnMessage:(id)message;
- (void)performOperationOnMessages:(id)messages withMessageChangeManager:(id)manager;
@end

@implementation MFMutedThreadMessageRule

- (BOOL)canExecuteRuleOnMessage:(id)message
{
  messageCopy = message;
  conversationFlags = [messageCopy conversationFlags];
  v5 = (([messageCopy messageFlags] & 0x1000000) == 0) & (conversationFlags >> 2);

  return v5;
}

- (void)performOperationOnMessages:(id)messages withMessageChangeManager:(id)manager
{
  messagesCopy = messages;
  managerCopy = manager;
  [(MFMutedThreadMessageRule *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFMutedThreadMessageRule performOperationOnMessages:withMessageChangeManager:]", "MFMutedThreadMessageRule.m", 33, "0");
}

@end