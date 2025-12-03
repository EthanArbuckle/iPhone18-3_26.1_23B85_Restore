@interface PKPaymentMultiTokenDataItem
- (NSArray)multiTokenContexts;
@end

@implementation PKPaymentMultiTokenDataItem

- (NSArray)multiTokenContexts
{
  model = [(PKPaymentDataItem *)self model];
  paymentRequest = [model paymentRequest];
  multiTokenContexts = [paymentRequest multiTokenContexts];

  return multiTokenContexts;
}

@end