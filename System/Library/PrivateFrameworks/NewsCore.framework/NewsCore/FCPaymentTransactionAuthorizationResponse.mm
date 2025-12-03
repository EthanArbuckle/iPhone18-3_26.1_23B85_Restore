@interface FCPaymentTransactionAuthorizationResponse
- (FCPaymentTransactionAuthorizationResponse)initWithCredential:(id)credential accountSignupError:(id)error;
@end

@implementation FCPaymentTransactionAuthorizationResponse

- (FCPaymentTransactionAuthorizationResponse)initWithCredential:(id)credential accountSignupError:(id)error
{
  credentialCopy = credential;
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = FCPaymentTransactionAuthorizationResponse;
  v9 = [(FCPaymentTransactionAuthorizationResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_credential, credential);
    objc_storeStrong(&v10->_accountSignupError, error);
  }

  return v10;
}

@end