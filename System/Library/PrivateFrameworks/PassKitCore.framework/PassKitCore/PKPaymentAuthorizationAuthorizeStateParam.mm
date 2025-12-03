@interface PKPaymentAuthorizationAuthorizeStateParam
+ (id)paramWithAuthenticatorEvaluationResponse:(id)response;
+ (id)paramWithCredential:(id)credential;
+ (id)paramWithNonceParam:(id)param nonce:(id)nonce cryptogramType:(int64_t)type networkMerchantIdentifier:(id)identifier;
- (NSData)credential;
- (id)description;
@end

@implementation PKPaymentAuthorizationAuthorizeStateParam

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

+ (id)paramWithNonceParam:(id)param nonce:(id)nonce cryptogramType:(int64_t)type networkMerchantIdentifier:(id)identifier
{
  identifierCopy = identifier;
  nonceCopy = nonce;
  paramCopy = param;
  param = [self param];
  credential = [paramCopy credential];
  [param setCredential:credential];

  [param setNonceData:nonceCopy];
  evaluationResponse = [paramCopy evaluationResponse];

  [param setEvaluationResponse:evaluationResponse];
  [param setCryptogramType:type];
  [param setNetworkMerchantIdentifier:identifierCopy];

  return param;
}

- (NSData)credential
{
  credential = self->_credential;
  if (credential)
  {
    credential = credential;
  }

  else
  {
    credential = [(PKAuthenticatorEvaluationResponse *)self->_evaluationResponse credential];
  }

  return credential;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  credential = [(PKPaymentAuthorizationAuthorizeStateParam *)self credential];
  v6 = [v3 stringWithFormat:@"<%@: %p credential: (%tu bytes); nonce: %@; networkMerchantIdentifier: %@>", v4, self, objc_msgSend(credential, "length"), self->_nonceData, self->_networkMerchantIdentifier];;

  return v6;
}

@end