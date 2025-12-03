@interface HMDConfigurationMessagePolicy
+ (id)policyWithOperationTypes:(unint64_t)types;
- (BOOL)isEqual:(id)equal;
- (HMDConfigurationMessagePolicy)init;
- (id)__initWithOperationTypes:(unint64_t)types;
@end

@implementation HMDConfigurationMessagePolicy

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      operationTypes = [(HMDConfigurationMessagePolicy *)self operationTypes];
      v8 = operationTypes == [(HMDConfigurationMessagePolicy *)v6 operationTypes];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)__initWithOperationTypes:(unint64_t)types
{
  v5.receiver = self;
  v5.super_class = HMDConfigurationMessagePolicy;
  result = [(HMDConfigurationMessagePolicy *)&v5 init];
  if (result)
  {
    *(result + 1) = types;
  }

  return result;
}

- (HMDConfigurationMessagePolicy)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)policyWithOperationTypes:(unint64_t)types
{
  v3 = [[self alloc] __initWithOperationTypes:types];

  return v3;
}

@end