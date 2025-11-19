@interface PDExpressTransactionEventEnableBiometrics
- (PDExpressTransactionEventEnableBiometrics)init;
@end

@implementation PDExpressTransactionEventEnableBiometrics

- (PDExpressTransactionEventEnableBiometrics)init
{
  v3.receiver = self;
  v3.super_class = PDExpressTransactionEventEnableBiometrics;
  return [(PDExpressTransactionEvent *)&v3 _initWithType:8];
}

@end