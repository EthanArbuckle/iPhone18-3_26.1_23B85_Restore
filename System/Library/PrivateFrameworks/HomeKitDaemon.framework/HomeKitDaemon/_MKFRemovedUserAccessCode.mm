@interface _MKFRemovedUserAccessCode
+ (NSPredicate)homeRelation;
- (MKFRemovedUserAccessCodeDatabaseID)databaseID;
@end

@implementation _MKFRemovedUserAccessCode

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t0_259431 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t0_259431, &__block_literal_global_259432);
  }

  v3 = homeRelation__hmf_once_v1_259433;

  return v3;
}

- (MKFRemovedUserAccessCodeDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFRemovedUserAccessCodeDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end