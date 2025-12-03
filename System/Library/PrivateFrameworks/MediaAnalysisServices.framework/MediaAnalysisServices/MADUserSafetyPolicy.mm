@interface MADUserSafetyPolicy
- (MADUserSafetyPolicy)initWithCoder:(id)coder;
- (MADUserSafetyPolicy)initWithPolicyType:(int64_t)type;
- (id)description;
@end

@implementation MADUserSafetyPolicy

- (MADUserSafetyPolicy)initWithPolicyType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = MADUserSafetyPolicy;
  result = [(MADUserSafetyPolicy *)&v5 init];
  if (result)
  {
    result->_policyType = type;
  }

  return result;
}

- (MADUserSafetyPolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MADUserSafetyPolicy;
  v5 = [(MADUserSafetyPolicy *)&v7 init];
  if (v5)
  {
    v5->_policyType = [coderCopy decodeIntegerForKey:@"PolicyType"];
  }

  return v5;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"policyType: %d>", self->_policyType];

  return string;
}

@end