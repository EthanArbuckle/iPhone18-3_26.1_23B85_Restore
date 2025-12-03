@interface HFMutableAggregatedCharacteristicReadPolicy
- (id)copyWithZone:(_NSZone *)zone;
- (id)popPolicy;
- (void)pushPolicy:(id)policy;
@end

@implementation HFMutableAggregatedCharacteristicReadPolicy

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HFAggregatedCharacteristicReadPolicy alloc];
  policies = [(HFAggregatedCharacteristicReadPolicy *)self policies];
  v6 = [(HFAggregatedCharacteristicReadPolicy *)v4 initWithPolicies:policies];

  return v6;
}

- (void)pushPolicy:(id)policy
{
  policyCopy = policy;
  policies = [(HFAggregatedCharacteristicReadPolicy *)self policies];
  v5 = [policies arrayByAddingObject:policyCopy];

  [(HFMutableAggregatedCharacteristicReadPolicy *)self setPolicies:v5];
}

- (id)popPolicy
{
  policies = [(HFAggregatedCharacteristicReadPolicy *)self policies];
  lastObject = [policies lastObject];

  policies2 = [(HFAggregatedCharacteristicReadPolicy *)self policies];
  v6 = [policies2 mutableCopy];

  [v6 removeLastObject];
  v7 = [v6 copy];
  [(HFMutableAggregatedCharacteristicReadPolicy *)self setPolicies:v7];

  return lastObject;
}

@end