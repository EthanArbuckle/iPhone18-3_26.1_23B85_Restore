@interface PDExpressTransactionEventTCI
- (PDExpressTransactionEventTCI)init;
@end

@implementation PDExpressTransactionEventTCI

- (PDExpressTransactionEventTCI)init
{
  v3.receiver = self;
  v3.super_class = PDExpressTransactionEventTCI;
  return [(PDExpressTransactionEvent *)&v3 _initWithType:6];
}

@end