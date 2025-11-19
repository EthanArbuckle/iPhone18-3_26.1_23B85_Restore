@interface PDExpressTransactionEventEntered
- (PDExpressTransactionEventEntered)init;
@end

@implementation PDExpressTransactionEventEntered

- (PDExpressTransactionEventEntered)init
{
  v3.receiver = self;
  v3.super_class = PDExpressTransactionEventEntered;
  return [(PDExpressTransactionEvent *)&v3 _initWithType:0];
}

@end