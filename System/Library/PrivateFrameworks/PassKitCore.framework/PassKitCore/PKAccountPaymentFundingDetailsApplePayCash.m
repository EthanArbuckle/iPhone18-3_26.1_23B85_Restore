@interface PKAccountPaymentFundingDetailsApplePayCash
- (BOOL)isEqual:(id)a3;
@end

@implementation PKAccountPaymentFundingDetailsApplePayCash

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = PKAccountPaymentFundingDetailsApplePayCash;
    v5 = [(PKAccountPaymentFundingDetails *)&v7 isEqual:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end