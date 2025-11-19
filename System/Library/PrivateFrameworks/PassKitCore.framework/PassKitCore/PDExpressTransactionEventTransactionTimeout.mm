@interface PDExpressTransactionEventTransactionTimeout
- (PDExpressTransactionEventTransactionTimeout)init;
@end

@implementation PDExpressTransactionEventTransactionTimeout

- (PDExpressTransactionEventTransactionTimeout)init
{
  v3.receiver = self;
  v3.super_class = PDExpressTransactionEventTransactionTimeout;
  return [(PDExpressTransactionEvent *)&v3 _initWithType:3];
}

@end