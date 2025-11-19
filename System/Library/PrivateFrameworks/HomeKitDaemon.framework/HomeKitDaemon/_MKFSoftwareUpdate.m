@interface _MKFSoftwareUpdate
+ (NSPredicate)homeRelation;
- (MKFHome)home;
- (MKFSoftwareUpdateDatabaseID)databaseID;
@end

@implementation _MKFSoftwareUpdate

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t0_147562 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t0_147562, &__block_literal_global_147563);
  }

  v3 = homeRelation__hmf_once_v1_147564;

  return v3;
}

- (MKFHome)home
{
  v2 = [(_MKFSoftwareUpdate *)self accessory];
  v3 = [v2 home];

  return v3;
}

- (MKFSoftwareUpdateDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFSoftwareUpdateDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end