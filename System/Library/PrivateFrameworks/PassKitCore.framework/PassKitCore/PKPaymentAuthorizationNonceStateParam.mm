@interface PKPaymentAuthorizationNonceStateParam
+ (id)paramWithAuthenticatorEvaluationResponse:(id)response;
+ (id)paramWithCredential:(id)credential;
- (id)description;
@end

@implementation PKPaymentAuthorizationNonceStateParam

+ (id)paramWithCredential:(id)credential
{
  credentialCopy = credential;
  param = [self param];
  [param setCredential:credentialCopy];

  return param;
}

+ (id)paramWithAuthenticatorEvaluationResponse:(id)response
{
  responseCopy = response;
  param = [self param];
  [param setEvaluationResponse:responseCopy];

  return param;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  credential = [(PKPaymentAuthorizationNonceStateParam *)self credential];
  v6 = [v3 stringWithFormat:@"<%@: %p credential: (%tu bytes)>", v4, self, objc_msgSend(credential, "length")];;

  return v6;
}

@end