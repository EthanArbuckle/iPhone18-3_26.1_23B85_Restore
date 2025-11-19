@interface PKAuthenticatorEvaluationResponse
+ (id)responseWithResult:(int64_t)a3 biometricMatch:(BOOL)a4 credential:(id)a5;
@end

@implementation PKAuthenticatorEvaluationResponse

+ (id)responseWithResult:(int64_t)a3 biometricMatch:(BOOL)a4 credential:(id)a5
{
  v8 = a5;
  v9 = objc_alloc_init(PKAuthenticatorEvaluationResponse);
  v10 = v9;
  if (v9)
  {
    v9->_result = a3;
    v9->_biometricMatch = a4;
    objc_storeStrong(&v9->_credential, a5);
  }

  return v10;
}

@end