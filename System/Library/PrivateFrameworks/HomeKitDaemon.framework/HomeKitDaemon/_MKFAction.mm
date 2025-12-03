@interface _MKFAction
+ (NSPredicate)homeRelation;
+ (id)modelIDForParentRelationshipTo:(id)to;
- (MKFActionDatabaseID)databaseID;
- (MKFHome)home;
@end

@implementation _MKFAction

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t0_108738 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t0_108738, &__block_literal_global_108739);
  }

  v3 = homeRelation__hmf_once_v1_108740;

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
  actionSet = [(_MKFAction *)self actionSet];
  home = [actionSet home];

  return home;
}

- (MKFActionDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFActionDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end