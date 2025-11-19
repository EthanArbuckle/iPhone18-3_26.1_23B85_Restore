@interface HDAssociationEntityParentIDPredicate
+ (id)predicateWithParentID:(int64_t)a3;
- (id)SQLForEntityClass:(Class)a3;
- (id)SQLJoinClausesForEntityClass:(Class)a3;
@end

@implementation HDAssociationEntityParentIDPredicate

+ (id)predicateWithParentID:(int64_t)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[1] = a3;

  return v4;
}

- (id)SQLJoinClausesForEntityClass:(Class)a3
{
  v3 = MEMORY[0x277D10B50];
  v4 = [-[objc_class entityClassForEnumeration](a3 "entityClassForEnumeration")];
  v5 = [v3 innerJoinClauseFromTable:v4 toTargetEntity:objc_opt_class() as:0 localReference:@"data_id" targetKey:@"source_object_id"];

  v6 = [MEMORY[0x277CBEB98] setWithObject:v5];

  return v6;
}

- (id)SQLForEntityClass:(Class)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = +[(HDSQLiteSchemaEntity *)HDAssociationEntity];
  v5 = [v3 stringWithFormat:@"%@.%@ = ?", v4, @"destination_object_id"];

  return v5;
}

@end