@interface _MKFRoom
+ (NSPredicate)homeRelation;
- (BOOL)shouldIncludeForRestrictedGuestWithContext:(id)a3;
- (MKFRoomDatabaseID)databaseID;
- (NSArray)accessories;
- (NSArray)localPresenceAccessories;
- (NSArray)zones;
@end

@implementation _MKFRoom

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t0_79837 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t0_79837, &__block_literal_global_79838);
  }

  v3 = homeRelation__hmf_once_v1_79839;

  return v3;
}

- (NSArray)localPresenceAccessories
{
  v2 = [(_MKFRoom *)self valueForKey:@"localPresenceAccessories_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)zones
{
  v2 = [(_MKFRoom *)self valueForKey:@"zones_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)accessories
{
  v2 = [(_MKFRoom *)self valueForKey:@"accessories_"];
  v3 = [v2 allObjects];

  return v3;
}

- (MKFRoomDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFRoomDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (BOOL)shouldIncludeForRestrictedGuestWithContext:(id)a3
{
  v4 = a3;
  v5 = [(_MKFRoom *)self home];
  v6 = [v5 defaultRoom];

  if (v6 == self)
  {
    v8 = 1;
  }

  else
  {
    v7 = [(_MKFRoom *)self accessories];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __75___MKFRoom_ResidentSyncCoding__shouldIncludeForRestrictedGuestWithContext___block_invoke;
    v10[3] = &unk_27867CD18;
    v11 = v4;
    v8 = [v7 na_any:v10];
  }

  return v8;
}

@end