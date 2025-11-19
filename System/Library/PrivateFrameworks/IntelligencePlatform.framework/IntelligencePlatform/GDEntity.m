@interface GDEntity
- (GDEntity)initWithEntityIdentifier:(id)a3 facts:(id)a4 entityClass:(unint64_t)a5;
@end

@implementation GDEntity

- (GDEntity)initWithEntityIdentifier:(id)a3 facts:(id)a4 entityClass:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = GDEntity;
  v11 = [(GDEntity *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_entityIdentifier, a3);
    objc_storeStrong(&v12->_facts, a4);
    v12->_entityClass = a5;
  }

  return v12;
}

@end