@interface HDAssociationEntityParentIDExistsPredicate
+ (id)predicateWithParentID:(int64_t)d exists:(BOOL)exists;
- (id)SQLForEntityClass:(Class)class;
- (id)description;
@end

@implementation HDAssociationEntityParentIDExistsPredicate

+ (id)predicateWithParentID:(int64_t)d exists:(BOOL)exists
{
  v6 = objc_alloc_init(objc_opt_class());
  v6[1] = d;
  *(v6 + 16) = exists;

  return v6;
}

- (id)SQLForEntityClass:(Class)class
{
  v5 = +[(HDSQLiteSchemaEntity *)HDAssociationEntity];
  v6 = MEMORY[0x277CCACA8];
  if (self->_exists)
  {
    v7 = CFSTR("(EXISTS");
  }

  else
  {
    v7 = CFSTR("(NOT EXISTS");
  }

  v8 = [-[objc_class entityClassForEnumeration](class "entityClassForEnumeration")];
  v9 = [v6 stringWithFormat:@"%@ (SELECT 1 FROM %@ cor WHERE ((cor.%@ = ?) AND (%@=cor.%@)) LIMIT 1)"], v7, v5, @"destination_object_id", v8, @"source_object_id", 0);

  return v9;
}

- (id)description
{
  if (self->_exists)
  {
    v2 = @"exits";
  }

  else
  {
    v2 = @"does not exist";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"<%@ = %lld %@>", @"destination_object_id", self->_parentID, v2];
}

@end