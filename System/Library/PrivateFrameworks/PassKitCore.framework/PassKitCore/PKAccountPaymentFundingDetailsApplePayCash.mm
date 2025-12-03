@interface PKAccountPaymentFundingDetailsApplePayCash
- (BOOL)isEqual:(id)equal;
@end

@implementation PKAccountPaymentFundingDetailsApplePayCash

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = PKAccountPaymentFundingDetailsApplePayCash;
    v5 = [(PKAccountPaymentFundingDetails *)&v7 isEqual:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end