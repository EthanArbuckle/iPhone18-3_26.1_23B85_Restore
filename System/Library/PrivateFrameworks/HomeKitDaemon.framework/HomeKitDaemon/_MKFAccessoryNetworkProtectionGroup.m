@interface _MKFAccessoryNetworkProtectionGroup
+ (NSPredicate)homeRelation;
- (MKFAccessoryNetworkProtectionGroupDatabaseID)databaseID;
@end

@implementation _MKFAccessoryNetworkProtectionGroup

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t0_200171 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t0_200171, &__block_literal_global_200172);
  }

  v3 = homeRelation__hmf_once_v1_200173;

  return v3;
}

- (MKFAccessoryNetworkProtectionGroupDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFAccessoryNetworkProtectionGroupDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end