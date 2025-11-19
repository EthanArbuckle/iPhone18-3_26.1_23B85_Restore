@interface PDExpressTransactionEventTransactionEnd
- (PDExpressTransactionEventTransactionEnd)init;
@end

@implementation PDExpressTransactionEventTransactionEnd

- (PDExpressTransactionEventTransactionEnd)init
{
  v3.receiver = self;
  v3.super_class = PDExpressTransactionEventTransactionEnd;
  return [(PDExpressTransactionEvent *)&v3 _initWithType:4];
}

@end