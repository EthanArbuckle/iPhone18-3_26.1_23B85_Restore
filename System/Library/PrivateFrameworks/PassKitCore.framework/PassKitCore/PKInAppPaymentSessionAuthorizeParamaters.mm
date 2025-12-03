@interface PKInAppPaymentSessionAuthorizeParamaters
- (PKInAppPaymentSessionAuthorizeParamaters)initWithNonce:(id)nonce authenticationCredential:(id)credential networkMerchantIdentifier:(id)identifier cryptogramType:(int64_t)type;
@end

@implementation PKInAppPaymentSessionAuthorizeParamaters

- (PKInAppPaymentSessionAuthorizeParamaters)initWithNonce:(id)nonce authenticationCredential:(id)credential networkMerchantIdentifier:(id)identifier cryptogramType:(int64_t)type
{
  nonceCopy = nonce;
  credentialCopy = credential;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = PKInAppPaymentSessionAuthorizeParamaters;
  v14 = [(PKInAppPaymentSessionAuthorizeParamaters *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_nonce, nonce);
    objc_storeStrong(&v15->_authenticationCredential, credential);
    objc_storeStrong(&v15->_networkMerchantIdentifier, identifier);
    v15->_cryptogramType = type;
  }

  return v15;
}

@end