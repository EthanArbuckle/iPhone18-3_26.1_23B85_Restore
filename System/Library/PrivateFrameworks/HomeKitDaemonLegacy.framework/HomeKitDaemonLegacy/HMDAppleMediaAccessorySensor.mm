@interface HMDAppleMediaAccessorySensor
- (id)transactionWithObjectChangeType:(unint64_t)type;
@end

@implementation HMDAppleMediaAccessorySensor

- (id)transactionWithObjectChangeType:(unint64_t)type
{
  v5 = [HMDAppleMediaAccessorySensorModel alloc];
  uuid = [(HMDAccessory *)self uuid];
  home = [(HMDAccessory *)self home];
  uuid2 = [home uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

  return v9;
}

@end