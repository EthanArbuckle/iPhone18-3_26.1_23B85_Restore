@interface CRKTrustEvaluationPolicies
+ (CRKTrustEvaluationPolicies)defaultPolicicesForServerEvaluation;
+ (CRKTrustEvaluationPolicies)defaultPoliciesForClientEvaluation;
- (CRKTrustEvaluationPolicies)initWithPolicyRefs:(id)a3;
@end

@implementation CRKTrustEvaluationPolicies

+ (CRKTrustEvaluationPolicies)defaultPoliciesForClientEvaluation
{
  v2 = objc_opt_new();

  return v2;
}

+ (CRKTrustEvaluationPolicies)defaultPolicicesForServerEvaluation
{
  v2 = objc_opt_new();

  return v2;
}

- (CRKTrustEvaluationPolicies)initWithPolicyRefs:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRKTrustEvaluationPolicies;
  v5 = [(CRKTrustEvaluationPolicies *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    policyRefs = v5->_policyRefs;
    v5->_policyRefs = v6;
  }

  return v5;
}

@end