@interface MADUserSafetyPolicy
- (MADUserSafetyPolicy)initWithCoder:(id)a3;
- (MADUserSafetyPolicy)initWithPolicyType:(int64_t)a3;
- (id)description;
@end

@implementation MADUserSafetyPolicy

- (MADUserSafetyPolicy)initWithPolicyType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = MADUserSafetyPolicy;
  result = [(MADUserSafetyPolicy *)&v5 init];
  if (result)
  {
    result->_policyType = a3;
  }

  return result;
}

- (MADUserSafetyPolicy)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MADUserSafetyPolicy;
  v5 = [(MADUserSafetyPolicy *)&v7 init];
  if (v5)
  {
    v5->_policyType = [v4 decodeIntegerForKey:@"PolicyType"];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"policyType: %d>", self->_policyType];

  return v3;
}

@end