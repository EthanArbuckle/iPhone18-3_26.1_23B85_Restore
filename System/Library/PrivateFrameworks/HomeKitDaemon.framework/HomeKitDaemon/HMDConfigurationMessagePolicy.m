@interface HMDConfigurationMessagePolicy
+ (id)policyWithOperationTypes:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (HMDConfigurationMessagePolicy)init;
- (id)__initWithOperationTypes:(unint64_t)a3;
@end

@implementation HMDConfigurationMessagePolicy

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMDConfigurationMessagePolicy *)self operationTypes];
      v8 = v7 == [(HMDConfigurationMessagePolicy *)v6 operationTypes];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)__initWithOperationTypes:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMDConfigurationMessagePolicy;
  result = [(HMDConfigurationMessagePolicy *)&v5 init];
  if (result)
  {
    *(result + 1) = a3;
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

+ (id)policyWithOperationTypes:(unint64_t)a3
{
  v3 = [[a1 alloc] __initWithOperationTypes:a3];

  return v3;
}

@end