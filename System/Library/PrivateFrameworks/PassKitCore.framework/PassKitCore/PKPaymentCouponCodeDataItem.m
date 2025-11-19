@interface PKPaymentCouponCodeDataItem
- (BOOL)isAwaitingCouponCodeUpdate;
- (NSArray)errors;
- (NSString)couponCode;
@end

@implementation PKPaymentCouponCodeDataItem

- (NSString)couponCode
{
  v2 = [(PKPaymentDataItem *)self model];
  v3 = [v2 couponCode];

  return v3;
}

- (BOOL)isAwaitingCouponCodeUpdate
{
  v2 = [(PKPaymentDataItem *)self model];
  v3 = [v2 numberOfOutstandingCouponCodeUpdates] != 0;

  return v3;
}

- (NSArray)errors
{
  v2 = [(PKPaymentDataItem *)self model];
  v3 = [v2 paymentErrors];
  v4 = [v3 pk_objectsPassingTest:&__block_literal_global_382];

  return v4;
}

@end