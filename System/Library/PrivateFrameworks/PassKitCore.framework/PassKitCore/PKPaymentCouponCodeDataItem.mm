@interface PKPaymentCouponCodeDataItem
- (BOOL)isAwaitingCouponCodeUpdate;
- (NSArray)errors;
- (NSString)couponCode;
@end

@implementation PKPaymentCouponCodeDataItem

- (NSString)couponCode
{
  model = [(PKPaymentDataItem *)self model];
  couponCode = [model couponCode];

  return couponCode;
}

- (BOOL)isAwaitingCouponCodeUpdate
{
  model = [(PKPaymentDataItem *)self model];
  v3 = [model numberOfOutstandingCouponCodeUpdates] != 0;

  return v3;
}

- (NSArray)errors
{
  model = [(PKPaymentDataItem *)self model];
  paymentErrors = [model paymentErrors];
  v4 = [paymentErrors pk_objectsPassingTest:&__block_literal_global_382];

  return v4;
}

@end