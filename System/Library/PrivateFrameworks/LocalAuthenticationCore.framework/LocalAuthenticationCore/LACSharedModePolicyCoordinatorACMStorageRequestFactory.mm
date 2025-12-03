@interface LACSharedModePolicyCoordinatorACMStorageRequestFactory
- (id)requestWithPolicyTraits:(int64_t)traits;
@end

@implementation LACSharedModePolicyCoordinatorACMStorageRequestFactory

- (id)requestWithPolicyTraits:(int64_t)traits
{
  v3 = [[LACSharedModePolicyCoordinatorACMStorageRequest alloc] initWithKey:4 BOOLValue:(traits & 3) != 0];

  return v3;
}

@end