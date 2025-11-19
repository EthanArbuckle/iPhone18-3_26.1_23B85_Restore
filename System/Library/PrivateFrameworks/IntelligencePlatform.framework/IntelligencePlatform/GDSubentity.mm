@interface GDSubentity
- (GDSubentity)initWithParentEntityIdentifier:(id)a3 relationshipIdentifier:(id)a4 facts:(id)a5 entityClass:(unint64_t)a6;
@end

@implementation GDSubentity

- (GDSubentity)initWithParentEntityIdentifier:(id)a3 relationshipIdentifier:(id)a4 facts:(id)a5 entityClass:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = GDSubentity;
  v14 = [(GDSubentity *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_parentEntityIdentifier, a3);
    objc_storeStrong(&v15->_relationshipIdentifier, a4);
    objc_storeStrong(&v15->_facts, a5);
    v15->_entityClass = a6;
  }

  return v15;
}

@end