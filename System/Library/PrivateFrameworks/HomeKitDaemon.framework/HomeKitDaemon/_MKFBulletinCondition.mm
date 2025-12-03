@interface _MKFBulletinCondition
+ (NSPredicate)homeRelation;
+ (id)modelIDForParentRelationshipTo:(id)to;
- (MKFBulletinConditionDatabaseID)databaseID;
- (MKFHome)home;
@end

@implementation _MKFBulletinCondition

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t0_120622 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t0_120622, &__block_literal_global_120623);
  }

  v3 = homeRelation__hmf_once_v1_120624;

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

- (MKFHome)home
{
  bulletinRegistration = [(_MKFBulletinCondition *)self bulletinRegistration];
  home = [bulletinRegistration home];

  return home;
}

- (MKFBulletinConditionDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFBulletinConditionDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end