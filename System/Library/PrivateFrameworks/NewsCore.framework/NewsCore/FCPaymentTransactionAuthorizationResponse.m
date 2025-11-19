@interface FCPaymentTransactionAuthorizationResponse
- (FCPaymentTransactionAuthorizationResponse)initWithCredential:(id)a3 accountSignupError:(id)a4;
@end

@implementation FCPaymentTransactionAuthorizationResponse

- (FCPaymentTransactionAuthorizationResponse)initWithCredential:(id)a3 accountSignupError:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FCPaymentTransactionAuthorizationResponse;
  v9 = [(FCPaymentTransactionAuthorizationResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_credential, a3);
    objc_storeStrong(&v10->_accountSignupError, a4);
  }

  return v10;
}

@end