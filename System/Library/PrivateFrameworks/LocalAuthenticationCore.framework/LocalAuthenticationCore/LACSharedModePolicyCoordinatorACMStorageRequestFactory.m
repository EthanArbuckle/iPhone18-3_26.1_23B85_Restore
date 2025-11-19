@interface LACSharedModePolicyCoordinatorACMStorageRequestFactory
- (id)requestWithPolicyTraits:(int64_t)a3;
@end

@implementation LACSharedModePolicyCoordinatorACMStorageRequestFactory

- (id)requestWithPolicyTraits:(int64_t)a3
{
  v3 = [[LACSharedModePolicyCoordinatorACMStorageRequest alloc] initWithKey:4 BOOLValue:(a3 & 3) != 0];

  return v3;
}

@end