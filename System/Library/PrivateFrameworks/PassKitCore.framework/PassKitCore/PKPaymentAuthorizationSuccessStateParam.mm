@interface PKPaymentAuthorizationSuccessStateParam
+ (id)paramWithPeerPaymentTransactionMetadata:(id)metadata;
@end

@implementation PKPaymentAuthorizationSuccessStateParam

+ (id)paramWithPeerPaymentTransactionMetadata:(id)metadata
{
  metadataCopy = metadata;
  param = [self param];
  [param setPeerPaymentTransactionMetadata:metadataCopy];

  return param;
}

@end