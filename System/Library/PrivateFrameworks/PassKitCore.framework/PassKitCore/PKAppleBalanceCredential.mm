@interface PKAppleBalanceCredential
- (PKAppleBalanceCredential)initWithProduct:(id)product eligibilitySource:(int64_t)source;
@end

@implementation PKAppleBalanceCredential

- (PKAppleBalanceCredential)initWithProduct:(id)product eligibilitySource:(int64_t)source
{
  productCopy = product;
  v11.receiver = self;
  v11.super_class = PKAppleBalanceCredential;
  v8 = [(PKPaymentCredential *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_product, product);
    v9->_eligibilitySource = source;
    v9->_isFromBackgroundProvisioning = 0;
    [(PKPaymentCredential *)v9 setCredentialType:135];
    [(PKPaymentCredential *)v9 setCardType:1];
  }

  return v9;
}

@end