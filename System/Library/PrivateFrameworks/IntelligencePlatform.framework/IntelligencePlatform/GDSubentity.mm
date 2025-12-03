@interface GDSubentity
- (GDSubentity)initWithParentEntityIdentifier:(id)identifier relationshipIdentifier:(id)relationshipIdentifier facts:(id)facts entityClass:(unint64_t)class;
@end

@implementation GDSubentity

- (GDSubentity)initWithParentEntityIdentifier:(id)identifier relationshipIdentifier:(id)relationshipIdentifier facts:(id)facts entityClass:(unint64_t)class
{
  identifierCopy = identifier;
  relationshipIdentifierCopy = relationshipIdentifier;
  factsCopy = facts;
  v17.receiver = self;
  v17.super_class = GDSubentity;
  v14 = [(GDSubentity *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_parentEntityIdentifier, identifier);
    objc_storeStrong(&v15->_relationshipIdentifier, relationshipIdentifier);
    objc_storeStrong(&v15->_facts, facts);
    v15->_entityClass = class;
  }

  return v15;
}

@end