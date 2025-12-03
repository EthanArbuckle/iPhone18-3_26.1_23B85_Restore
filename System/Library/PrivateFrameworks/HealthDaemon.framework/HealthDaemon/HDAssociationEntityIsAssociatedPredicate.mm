@interface HDAssociationEntityIsAssociatedPredicate
+ (id)predicateWithInvertedCondition:(BOOL)condition;
- (id)SQLForEntityClass:(Class)class;
@end

@implementation HDAssociationEntityIsAssociatedPredicate

+ (id)predicateWithInvertedCondition:(BOOL)condition
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[8] = condition;

  return v4;
}

- (id)SQLForEntityClass:(Class)class
{
  v5 = +[(HDSQLiteSchemaEntity *)HDAssociationEntity];
  v6 = MEMORY[0x277CCACA8];
  v7 = [-[objc_class entityClassForEnumeration](class "entityClassForEnumeration")];
  v8 = [v6 stringWithFormat:@"%@.%@", v7, @"data_id"];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v5, @"source_object_id"];
  if (self->_inverted)
  {
    v10 = @"IS NULL";
  }

  else
  {
    v10 = @"IS NOT NULL";
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"((SELECT 1 FROM %@ WHERE (%@ = %@) LIMIT 1) %@)", v5, v8, v9, v10];

  return v11;
}

@end