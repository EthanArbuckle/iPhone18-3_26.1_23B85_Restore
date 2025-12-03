@interface GDEntity
- (GDEntity)initWithEntityIdentifier:(id)identifier facts:(id)facts entityClass:(unint64_t)class;
@end

@implementation GDEntity

- (GDEntity)initWithEntityIdentifier:(id)identifier facts:(id)facts entityClass:(unint64_t)class
{
  identifierCopy = identifier;
  factsCopy = facts;
  v14.receiver = self;
  v14.super_class = GDEntity;
  v11 = [(GDEntity *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_entityIdentifier, identifier);
    objc_storeStrong(&v12->_facts, facts);
    v12->_entityClass = class;
  }

  return v12;
}

@end