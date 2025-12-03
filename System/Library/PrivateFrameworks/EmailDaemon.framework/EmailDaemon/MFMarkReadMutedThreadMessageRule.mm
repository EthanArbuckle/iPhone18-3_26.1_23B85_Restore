@interface MFMarkReadMutedThreadMessageRule
- (void)performOperationOnMessages:(id)messages withMessageChangeManager:(id)manager;
@end

@implementation MFMarkReadMutedThreadMessageRule

- (void)performOperationOnMessages:(id)messages withMessageChangeManager:(id)manager
{
  messagesCopy = messages;
  managerCopy = manager;
  v6 = +[ECMessageFlagChange setRead];
  v7 = [managerCopy applyFlagChange:v6 toMessages:messagesCopy];
}

@end