@interface PKPaymentMultiTokenDataItem
- (NSArray)multiTokenContexts;
@end

@implementation PKPaymentMultiTokenDataItem

- (NSArray)multiTokenContexts
{
  v2 = [(PKPaymentDataItem *)self model];
  v3 = [v2 paymentRequest];
  v4 = [v3 multiTokenContexts];

  return v4;
}

@end