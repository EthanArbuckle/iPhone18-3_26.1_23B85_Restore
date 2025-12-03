@interface _MKFZone
+ (NSPredicate)homeRelation;
+ (id)modelIDForParentRelationshipTo:(id)to;
- (BOOL)shouldIncludeForRestrictedGuestWithContext:(id)context;
- (MKFZoneDatabaseID)databaseID;
- (NSArray)rooms;
@end

@implementation _MKFZone

- (BOOL)shouldIncludeForRestrictedGuestWithContext:(id)context
{
  contextCopy = context;
  rooms = [(_MKFZone *)self rooms];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75___MKFZone_ResidentSyncCoding__shouldIncludeForRestrictedGuestWithContext___block_invoke;
  v9[3] = &unk_27867CD40;
  v10 = contextCopy;
  v6 = contextCopy;
  v7 = [rooms na_any:v9];

  return v7;
}

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t0_198891 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t0_198891, &__block_literal_global_198892);
  }

  v3 = homeRelation__hmf_once_v1_198893;

  return v3;
}

+ (id)modelIDForParentRelationshipTo:(id)to
{
  toCopy = to;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (NSArray)rooms
{
  v2 = [(_MKFZone *)self valueForKey:@"rooms_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (MKFZoneDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFZoneDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end