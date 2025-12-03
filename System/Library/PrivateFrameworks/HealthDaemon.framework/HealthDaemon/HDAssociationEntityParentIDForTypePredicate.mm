@interface HDAssociationEntityParentIDForTypePredicate
+ (id)predicateWithParentID:(int64_t)d type:(unint64_t)type;
- (id)SQLForEntityClass:(Class)class;
- (id)SQLJoinClausesForEntityClass:(Class)class;
@end

@implementation HDAssociationEntityParentIDForTypePredicate

+ (id)predicateWithParentID:(int64_t)d type:(unint64_t)type
{
  v6 = objc_alloc_init(objc_opt_class());
  v6[1] = d;
  v6[2] = type;

  return v6;
}

- (id)SQLJoinClausesForEntityClass:(Class)class
{
  v3 = MEMORY[0x277D10B50];
  v4 = [-[objc_class entityClassForEnumeration](class "entityClassForEnumeration")];
  v5 = [v3 innerJoinClauseFromTable:v4 toTargetEntity:objc_opt_class() as:0 localReference:@"data_id" targetKey:@"source_object_id"];

  v6 = [MEMORY[0x277CBEB98] setWithObject:v5];

  return v6;
}

- (id)SQLForEntityClass:(Class)class
{
  v4 = MEMORY[0x277CCACA8];
  v5 = +[(HDSQLiteSchemaEntity *)HDAssociationEntity];
  v6 = +[(HDSQLiteSchemaEntity *)HDAssociationEntity];
  v7 = [v4 stringWithFormat:@"%@.%@ = ? AND %@.%@ = %lld", v5, @"destination_object_id", v6, @"type", self->_type];

  return v7;
}

@end