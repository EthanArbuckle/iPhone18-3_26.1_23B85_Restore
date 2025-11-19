@interface MFMutedThreadMessageRule
- (BOOL)canExecuteRuleOnMessage:(id)a3;
- (void)performOperationOnMessages:(id)a3 withMessageChangeManager:(id)a4;
@end

@implementation MFMutedThreadMessageRule

- (BOOL)canExecuteRuleOnMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 conversationFlags];
  v5 = (([v3 messageFlags] & 0x1000000) == 0) & (v4 >> 2);

  return v5;
}

- (void)performOperationOnMessages:(id)a3 withMessageChangeManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(MFMutedThreadMessageRule *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFMutedThreadMessageRule performOperationOnMessages:withMessageChangeManager:]", "MFMutedThreadMessageRule.m", 33, "0");
}

@end