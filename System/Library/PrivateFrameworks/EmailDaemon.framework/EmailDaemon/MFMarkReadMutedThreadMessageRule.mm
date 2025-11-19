@interface MFMarkReadMutedThreadMessageRule
- (void)performOperationOnMessages:(id)a3 withMessageChangeManager:(id)a4;
@end

@implementation MFMarkReadMutedThreadMessageRule

- (void)performOperationOnMessages:(id)a3 withMessageChangeManager:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = +[ECMessageFlagChange setRead];
  v7 = [v5 applyFlagChange:v6 toMessages:v8];
}

@end