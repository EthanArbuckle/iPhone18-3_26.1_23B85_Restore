@interface _MKFTrigger
+ (NSPredicate)homeRelation;
+ (id)modelIDForParentRelationshipTo:(id)a3;
- (MKFTriggerDatabaseID)databaseID;
- (NSArray)actionSets;
- (void)setActionSets:(id)a3;
@end

@implementation _MKFTrigger

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t0_224387 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t0_224387, &__block_literal_global_224388);
  }

  v3 = homeRelation__hmf_once_v1_224389;

  return v3;
}

+ (id)modelIDForParentRelationshipTo:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)setActionSets:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CBEB98] setWithArray:?];
    [(_MKFTrigger *)self setValue:v4 forKey:@"actionSets_"];
  }

  else
  {

    [_MKFTrigger setValue:"setValue:forKey:" forKey:?];
  }
}

- (NSArray)actionSets
{
  v2 = [(_MKFTrigger *)self valueForKey:@"actionSets_"];
  v3 = [v2 allObjects];

  return v3;
}

- (MKFTriggerDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFTriggerDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end