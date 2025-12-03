@interface _MKFResidentSelection
+ (NSPredicate)homeRelation;
+ (id)modelIDForParentRelationshipTo:(id)to;
- (MKFResidentSelectionDatabaseID)databaseID;
@end

@implementation _MKFResidentSelection

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t0_95950 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t0_95950, &__block_literal_global_95951);
  }

  v3 = homeRelation__hmf_once_v1_95952;

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

- (MKFResidentSelectionDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFResidentSelectionDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end