@interface HDAssociationEntityIsAssociatedPredicate
+ (id)predicateWithInvertedCondition:(BOOL)a3;
- (id)SQLForEntityClass:(Class)a3;
@end

@implementation HDAssociationEntityIsAssociatedPredicate

+ (id)predicateWithInvertedCondition:(BOOL)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[8] = a3;

  return v4;
}

- (id)SQLForEntityClass:(Class)a3
{
  v5 = +[(HDSQLiteSchemaEntity *)HDAssociationEntity];
  v6 = MEMORY[0x277CCACA8];
  v7 = [-[objc_class entityClassForEnumeration](a3 "entityClassForEnumeration")];
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