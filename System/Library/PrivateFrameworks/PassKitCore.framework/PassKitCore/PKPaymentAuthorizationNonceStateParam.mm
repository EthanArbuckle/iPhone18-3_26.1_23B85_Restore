@interface PKPaymentAuthorizationNonceStateParam
+ (id)paramWithAuthenticatorEvaluationResponse:(id)a3;
+ (id)paramWithCredential:(id)a3;
- (id)description;
@end

@implementation PKPaymentAuthorizationNonceStateParam

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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PKPaymentAuthorizationNonceStateParam *)self credential];
  v6 = [v3 stringWithFormat:@"<%@: %p credential: (%tu bytes)>", v4, self, objc_msgSend(v5, "length")];;

  return v6;
}

@end