@interface PKPaymentAuthorizationAuthorizeStateParam
+ (id)paramWithAuthenticatorEvaluationResponse:(id)a3;
+ (id)paramWithCredential:(id)a3;
+ (id)paramWithNonceParam:(id)a3 nonce:(id)a4 cryptogramType:(int64_t)a5 networkMerchantIdentifier:(id)a6;
- (NSData)credential;
- (id)description;
@end

@implementation PKPaymentAuthorizationAuthorizeStateParam

+ (id)paramWithCredential:(id)a3
{
  v4 = a3;
  v5 = [a1 param];
  [v5 setCredential:v4];

  return v5;
}

+ (id)paramWithAuthenticatorEvaluationResponse:(id)a3
{
  v4 = a3;
  v5 = [a1 param];
  [v5 setEvaluationResponse:v4];

  return v5;
}

+ (id)paramWithNonceParam:(id)a3 nonce:(id)a4 cryptogramType:(int64_t)a5 networkMerchantIdentifier:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [a1 param];
  v14 = [v12 credential];
  [v13 setCredential:v14];

  [v13 setNonceData:v11];
  v15 = [v12 evaluationResponse];

  [v13 setEvaluationResponse:v15];
  [v13 setCryptogramType:a5];
  [v13 setNetworkMerchantIdentifier:v10];

  return v13;
}

- (NSData)credential
{
  credential = self->_credential;
  if (credential)
  {
    v3 = credential;
  }

  else
  {
    v3 = [(PKAuthenticatorEvaluationResponse *)self->_evaluationResponse credential];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PKPaymentAuthorizationAuthorizeStateParam *)self credential];
  v6 = [v3 stringWithFormat:@"<%@: %p credential: (%tu bytes); nonce: %@; networkMerchantIdentifier: %@>", v4, self, objc_msgSend(v5, "length"), self->_nonceData, self->_networkMerchantIdentifier];;

  return v6;
}

@end