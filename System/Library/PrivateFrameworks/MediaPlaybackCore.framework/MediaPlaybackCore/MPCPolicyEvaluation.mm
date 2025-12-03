@interface MPCPolicyEvaluation
- (BOOL)isEqual:(id)equal;
@end

@implementation MPCPolicyEvaluation

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_policyType == equalCopy->_policyType;
  }

  return v5;
}

@end