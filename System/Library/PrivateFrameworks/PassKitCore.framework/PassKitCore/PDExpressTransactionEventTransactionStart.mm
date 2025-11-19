@interface PDExpressTransactionEventTransactionStart
- (PDExpressTransactionEventTransactionStart)init;
@end

@implementation PDExpressTransactionEventTransactionStart

- (PDExpressTransactionEventTransactionStart)init
{
  v3.receiver = self;
  v3.super_class = PDExpressTransactionEventTransactionStart;
  return [(PDExpressTransactionEvent *)&v3 _initWithType:2];
}

@end