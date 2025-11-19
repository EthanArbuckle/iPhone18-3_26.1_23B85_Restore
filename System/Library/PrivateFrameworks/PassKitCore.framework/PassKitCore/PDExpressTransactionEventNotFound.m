@interface PDExpressTransactionEventNotFound
- (PDExpressTransactionEventNotFound)init;
@end

@implementation PDExpressTransactionEventNotFound

- (PDExpressTransactionEventNotFound)init
{
  v3.receiver = self;
  v3.super_class = PDExpressTransactionEventNotFound;
  return [(PDExpressTransactionEvent *)&v3 _initWithType:5];
}

@end