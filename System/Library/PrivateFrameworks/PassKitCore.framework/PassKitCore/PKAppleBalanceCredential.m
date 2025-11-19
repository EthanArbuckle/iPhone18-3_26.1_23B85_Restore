@interface PKAppleBalanceCredential
- (PKAppleBalanceCredential)initWithProduct:(id)a3 eligibilitySource:(int64_t)a4;
@end

@implementation PKAppleBalanceCredential

- (PKAppleBalanceCredential)initWithProduct:(id)a3 eligibilitySource:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PKAppleBalanceCredential;
  v8 = [(PKPaymentCredential *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_product, a3);
    v9->_eligibilitySource = a4;
    v9->_isFromBackgroundProvisioning = 0;
    [(PKPaymentCredential *)v9 setCredentialType:135];
    [(PKPaymentCredential *)v9 setCardType:1];
  }

  return v9;
}

@end