@interface PDExpressTransactionEventExited
- (PDExpressTransactionEventExited)init;
@end

@implementation PDExpressTransactionEventExited

- (PDExpressTransactionEventExited)init
{
  v3.receiver = self;
  v3.super_class = PDExpressTransactionEventExited;
  return [(PDExpressTransactionEvent *)&v3 _initWithType:1];
}

@end