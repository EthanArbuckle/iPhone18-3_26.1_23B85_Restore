@interface PDExpressTransactionEventPresentPass
- (PDExpressTransactionEventPresentPass)init;
@end

@implementation PDExpressTransactionEventPresentPass

- (PDExpressTransactionEventPresentPass)init
{
  v3.receiver = self;
  v3.super_class = PDExpressTransactionEventPresentPass;
  return [(PDExpressTransactionEvent *)&v3 _initWithType:7];
}

@end