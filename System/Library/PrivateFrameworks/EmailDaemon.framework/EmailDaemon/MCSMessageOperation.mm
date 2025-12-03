@interface MCSMessageOperation
- (BOOL)commitToMessages:(id)messages failures:(id)failures newMessages:(id)newMessages;
@end

@implementation MCSMessageOperation

- (BOOL)commitToMessages:(id)messages failures:(id)failures newMessages:(id)newMessages
{
  messagesCopy = messages;
  failuresCopy = failures;
  newMessagesCopy = newMessages;
  [(MCSMessageOperation *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MCSMessageOperation commitToMessages:failures:newMessages:]", "MCSMessageOperation.m", 17, "0");
}

@end