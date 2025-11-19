@interface PKPaymentAuthorizationSuccessStateParam
+ (id)paramWithPeerPaymentTransactionMetadata:(id)a3;
@end

@implementation PKPaymentAuthorizationSuccessStateParam

+ (id)paramWithPeerPaymentTransactionMetadata:(id)a3
{
  v4 = a3;
  v5 = [a1 param];
  [v5 setPeerPaymentTransactionMetadata:v4];

  return v5;
}

@end