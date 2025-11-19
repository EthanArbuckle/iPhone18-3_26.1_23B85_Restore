@interface _MKFHomeSetting
+ (NSPredicate)homeRelation;
+ (id)modelIDForParentRelationshipTo:(id)a3;
- (MKFHomeSettingDatabaseID)databaseID;
@end

@implementation _MKFHomeSetting

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t0_59429 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t0_59429, &__block_literal_global_59430);
  }

  v3 = homeRelation__hmf_once_v1_59431;

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

- (MKFHomeSettingDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFHomeSettingDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end