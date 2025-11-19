@interface HMFMessageFilter
+ (id)logCategory;
+ (id)policyOfClass:(Class)a3 fromPolicies:(id)a4;
+ (id)requiredPolicyOfClass:(Class)a3 fromPolicies:(id)a4 error:(id *)a5;
+ (int64_t)filterMessage:(id)a3 withPolicies:(id)a4 error:(id *)a5;
@end

@implementation HMFMessageFilter

+ (int64_t)filterMessage:(id)a3 withPolicies:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v11 = MEMORY[0x277CCACA8];
  v12 = NSStringFromSelector(a2);
  v13 = [v11 stringWithFormat:@"You must override %@ in a subclass", v12];
  v14 = [v9 exceptionWithName:v10 reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

+ (id)policyOfClass:(Class)a3 fromPolicies:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a4;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)requiredPolicyOfClass:(Class)a3 fromPolicies:(id)a4 error:(id *)a5
{
  v8 = [a1 policyOfClass:a3 fromPolicies:a4];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else if (a5)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = MEMORY[0x277CCACA8];
    v14 = objc_opt_class();
    if (v14 == a1)
    {
      v15 = @"filter";
    }

    else
    {
      v15 = NSStringFromClass(a1);
    }

    v16 = [v13 stringWithFormat:@"%@ required by %@ is missing", a3, v15];
    *a5 = [v12 hmfErrorWithCode:2 reason:v16];

    if (v14 != a1)
    {
    }
  }

  return v9;
}

+ (id)logCategory
{
  if (_MergedGlobals_75 != -1)
  {
    dispatch_once(&_MergedGlobals_75, &__block_literal_global_45);
  }

  v3 = qword_280AFC6F0;

  return v3;
}

uint64_t __31__HMFMessageFilter_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"Messaging.Filter", @"com.apple.HMFoundation");
  v1 = qword_280AFC6F0;
  qword_280AFC6F0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end