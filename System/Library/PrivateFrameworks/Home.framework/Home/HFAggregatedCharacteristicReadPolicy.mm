@interface HFAggregatedCharacteristicReadPolicy
- (HFAggregatedCharacteristicReadPolicy)init;
- (HFAggregatedCharacteristicReadPolicy)initWithPolicies:(id)a3;
- (NSString)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)evaluateWithCharacteristic:(id)a3 traits:(id *)a4;
@end

@implementation HFAggregatedCharacteristicReadPolicy

- (HFAggregatedCharacteristicReadPolicy)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithPolicies_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFCharacteristicReadPolicy.m" lineNumber:66 description:{@"%s is unavailable; use %@ instead", "-[HFAggregatedCharacteristicReadPolicy init]", v5}];

  return 0;
}

- (HFAggregatedCharacteristicReadPolicy)initWithPolicies:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFAggregatedCharacteristicReadPolicy;
  v6 = [(HFAggregatedCharacteristicReadPolicy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_policies, a3);
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HFMutableAggregatedCharacteristicReadPolicy alloc];
  v5 = [(HFAggregatedCharacteristicReadPolicy *)self policies];
  v6 = [(HFAggregatedCharacteristicReadPolicy *)v4 initWithPolicies:v5];

  return v6;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFAggregatedCharacteristicReadPolicy *)self policies];
  [v3 appendArraySection:v4 withName:@"policies" skipIfEmpty:0];

  v5 = [v3 build];

  return v5;
}

- (unint64_t)evaluateWithCharacteristic:(id)a3 traits:(id *)a4
{
  v6 = a3;
  v7 = [(HFAggregatedCharacteristicReadPolicy *)self policies];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(HFAggregatedCharacteristicReadPolicy *)self policies];
    v10 = [v9 count];

    if (v10 == 1)
    {
      v11 = [(HFAggregatedCharacteristicReadPolicy *)self policies];
      v12 = [v11 firstObject];
      v13 = [v12 evaluateWithCharacteristic:v6 traits:a4];
    }

    else
    {
      v14 = [MEMORY[0x277CBEB58] set];
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 1;
      v15 = [(HFAggregatedCharacteristicReadPolicy *)self policies];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __74__HFAggregatedCharacteristicReadPolicy_evaluateWithCharacteristic_traits___block_invoke;
      v17[3] = &unk_277DFB010;
      v18 = v6;
      v11 = v14;
      v19 = v11;
      v20 = &v21;
      [v15 enumerateObjectsWithOptions:2 usingBlock:v17];

      if (a4)
      {
        *a4 = [v11 copy];
      }

      v13 = v22[3];

      _Block_object_dispose(&v21, 8);
    }
  }

  else
  {
    if (a4)
    {
      *a4 = [MEMORY[0x277CBEB98] set];
    }

    v13 = 1;
  }

  return v13;
}

void __74__HFAggregatedCharacteristicReadPolicy_evaluateWithCharacteristic_traits___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v8 = 0;
  v4 = [a2 evaluateWithCharacteristic:v3 traits:&v8];
  v5 = v8;
  [*(a1 + 40) unionSet:v5];
  if ((v4 | 2) == 2)
  {
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 24);
    if (v7 == 1)
    {
      v7 = v4;
    }

    *(v6 + 24) = v7;
  }
}

@end