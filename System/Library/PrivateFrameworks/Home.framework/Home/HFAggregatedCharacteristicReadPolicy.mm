@interface HFAggregatedCharacteristicReadPolicy
- (HFAggregatedCharacteristicReadPolicy)init;
- (HFAggregatedCharacteristicReadPolicy)initWithPolicies:(id)policies;
- (NSString)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)evaluateWithCharacteristic:(id)characteristic traits:(id *)traits;
@end

@implementation HFAggregatedCharacteristicReadPolicy

- (HFAggregatedCharacteristicReadPolicy)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithPolicies_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFCharacteristicReadPolicy.m" lineNumber:66 description:{@"%s is unavailable; use %@ instead", "-[HFAggregatedCharacteristicReadPolicy init]", v5}];

  return 0;
}

- (HFAggregatedCharacteristicReadPolicy)initWithPolicies:(id)policies
{
  policiesCopy = policies;
  v9.receiver = self;
  v9.super_class = HFAggregatedCharacteristicReadPolicy;
  v6 = [(HFAggregatedCharacteristicReadPolicy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_policies, policies);
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HFMutableAggregatedCharacteristicReadPolicy alloc];
  policies = [(HFAggregatedCharacteristicReadPolicy *)self policies];
  v6 = [(HFAggregatedCharacteristicReadPolicy *)v4 initWithPolicies:policies];

  return v6;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  policies = [(HFAggregatedCharacteristicReadPolicy *)self policies];
  [v3 appendArraySection:policies withName:@"policies" skipIfEmpty:0];

  build = [v3 build];

  return build;
}

- (unint64_t)evaluateWithCharacteristic:(id)characteristic traits:(id *)traits
{
  characteristicCopy = characteristic;
  policies = [(HFAggregatedCharacteristicReadPolicy *)self policies];
  v8 = [policies count];

  if (v8)
  {
    policies2 = [(HFAggregatedCharacteristicReadPolicy *)self policies];
    v10 = [policies2 count];

    if (v10 == 1)
    {
      policies3 = [(HFAggregatedCharacteristicReadPolicy *)self policies];
      firstObject = [policies3 firstObject];
      v13 = [firstObject evaluateWithCharacteristic:characteristicCopy traits:traits];
    }

    else
    {
      v14 = [MEMORY[0x277CBEB58] set];
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 1;
      policies4 = [(HFAggregatedCharacteristicReadPolicy *)self policies];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __74__HFAggregatedCharacteristicReadPolicy_evaluateWithCharacteristic_traits___block_invoke;
      v17[3] = &unk_277DFB010;
      v18 = characteristicCopy;
      policies3 = v14;
      v19 = policies3;
      v20 = &v21;
      [policies4 enumerateObjectsWithOptions:2 usingBlock:v17];

      if (traits)
      {
        *traits = [policies3 copy];
      }

      v13 = v22[3];

      _Block_object_dispose(&v21, 8);
    }
  }

  else
  {
    if (traits)
    {
      *traits = [MEMORY[0x277CBEB98] set];
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