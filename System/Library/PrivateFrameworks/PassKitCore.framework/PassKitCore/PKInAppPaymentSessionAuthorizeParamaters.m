@interface PKInAppPaymentSessionAuthorizeParamaters
- (PKInAppPaymentSessionAuthorizeParamaters)initWithNonce:(id)a3 authenticationCredential:(id)a4 networkMerchantIdentifier:(id)a5 cryptogramType:(int64_t)a6;
@end

@implementation PKInAppPaymentSessionAuthorizeParamaters

- (PKInAppPaymentSessionAuthorizeParamaters)initWithNonce:(id)a3 authenticationCredential:(id)a4 networkMerchantIdentifier:(id)a5 cryptogramType:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = PKInAppPaymentSessionAuthorizeParamaters;
  v14 = [(PKInAppPaymentSessionAuthorizeParamaters *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_nonce, a3);
    objc_storeStrong(&v15->_authenticationCredential, a4);
    objc_storeStrong(&v15->_networkMerchantIdentifier, a5);
    v15->_cryptogramType = a6;
  }

  return v15;
}

@end