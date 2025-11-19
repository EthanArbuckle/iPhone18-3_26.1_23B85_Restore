@interface _MKFGuestAccessCode
+ (NSPredicate)homeRelation;
- (MKFGuestAccessCodeDatabaseID)databaseID;
@end

@implementation _MKFGuestAccessCode

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t0_79314 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t0_79314, &__block_literal_global_79315);
  }

  v3 = homeRelation__hmf_once_v1_79316;

  return v3;
}

- (MKFGuestAccessCodeDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFGuestAccessCodeDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end