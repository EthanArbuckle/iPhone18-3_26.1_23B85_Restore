@interface MPCPolicyEvaluation
- (BOOL)isEqual:(id)a3;
@end

@implementation MPCPolicyEvaluation

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_policyType == v4->_policyType;
  }

  return v5;
}

@end