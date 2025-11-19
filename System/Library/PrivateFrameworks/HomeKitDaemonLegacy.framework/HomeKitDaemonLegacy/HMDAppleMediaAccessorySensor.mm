@interface HMDAppleMediaAccessorySensor
- (id)transactionWithObjectChangeType:(unint64_t)a3;
@end

@implementation HMDAppleMediaAccessorySensor

- (id)transactionWithObjectChangeType:(unint64_t)a3
{
  v5 = [HMDAppleMediaAccessorySensorModel alloc];
  v6 = [(HMDAccessory *)self uuid];
  v7 = [(HMDAccessory *)self home];
  v8 = [v7 uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:a3 uuid:v6 parentUUID:v8];

  return v9;
}

@end