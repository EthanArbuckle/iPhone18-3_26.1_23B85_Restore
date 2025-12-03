@interface PKAuthenticatorEvaluationResponse
+ (id)responseWithResult:(int64_t)result biometricMatch:(BOOL)match credential:(id)credential;
@end

@implementation PKAuthenticatorEvaluationResponse

+ (id)responseWithResult:(int64_t)result biometricMatch:(BOOL)match credential:(id)credential
{
  credentialCopy = credential;
  v9 = objc_alloc_init(PKAuthenticatorEvaluationResponse);
  v10 = v9;
  if (v9)
  {
    v9->_result = result;
    v9->_biometricMatch = match;
    objc_storeStrong(&v9->_credential, credential);
  }

  return v10;
}

@end