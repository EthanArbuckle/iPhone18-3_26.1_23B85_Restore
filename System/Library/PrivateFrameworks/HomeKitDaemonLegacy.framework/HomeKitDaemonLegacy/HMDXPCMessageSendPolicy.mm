@interface HMDXPCMessageSendPolicy
- (BOOL)canSendWithPolicyParameters:(id)parameters;
- (BOOL)isEqual:(id)equal;
@end

@implementation HMDXPCMessageSendPolicy

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    v5 = objc_opt_isKindOfClass() & (equalCopy != 0);
  }

  return v5;
}

- (BOOL)canSendWithPolicyParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

@end