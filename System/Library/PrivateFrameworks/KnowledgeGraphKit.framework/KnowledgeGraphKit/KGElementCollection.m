@interface KGElementCollection
- (BOOL)containsCollection:(id)a3;
- (BOOL)intersectsCollection:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCollection:(id)a3;
- (BOOL)isSubsetOfCollection:(id)a3;
- (KGElement)anyObject;
- (KGElementCollection)initWithIdentifiers:(id)a3 graph:(id)a4;
- (NSArray)allObjects;
- (NSSet)set;
- (id)collectionByFormingUnionWithCollection:(id)a3;
- (id)collectionByIntersectingCollection:(id)a3;
- (id)collectionBySubtractingCollection:(id)a3;
- (id)description;
- (void)enumerateElementIdentifierBatchesWithBatchSize:(unint64_t)a3 usingBlock:(id)a4;
- (void)enumerateElementsWithBatchSize:(unint64_t)a3 usingBlock:(id)a4;
- (void)enumeratePropertyValuesForKey:(id)a3 withBlock:(id)a4;
@end

@implementation KGElementCollection

- (BOOL)containsCollection:(id)a3
{
  identifiers = self->_identifiers;
  v4 = [a3 identifiers];
  LOBYTE(identifiers) = [(KGElementIdentifierSet *)identifiers containsIdentifierSet:v4];

  return identifiers;
}

- (BOOL)isSubsetOfCollection:(id)a3
{
  identifiers = self->_identifiers;
  v4 = [a3 identifiers];
  LOBYTE(identifiers) = [(KGElementIdentifierSet *)identifiers isSubsetOfIdentifierSet:v4];

  return identifiers;
}

- (BOOL)intersectsCollection:(id)a3
{
  identifiers = self->_identifiers;
  v4 = [a3 identifiers];
  LOBYTE(identifiers) = [(KGElementIdentifierSet *)identifiers intersectsIdentifierSet:v4];

  return identifiers;
}

- (id)collectionBySubtractingCollection:(id)a3
{
  identifiers = self->_identifiers;
  v5 = [a3 identifiers];
  v6 = [(KGElementIdentifierSet *)identifiers identifierSetBySubtractingIdentifierSet:v5];

  v7 = [objc_alloc(objc_opt_class()) initWithIdentifiers:v6 graph:self->_graph];

  return v7;
}

- (id)collectionByIntersectingCollection:(id)a3
{
  identifiers = self->_identifiers;
  v5 = [a3 identifiers];
  v6 = [(KGElementIdentifierSet *)identifiers identifierSetByIntersectingIdentifierSet:v5];

  v7 = [objc_alloc(objc_opt_class()) initWithIdentifiers:v6 graph:self->_graph];

  return v7;
}

- (id)collectionByFormingUnionWithCollection:(id)a3
{
  identifiers = self->_identifiers;
  v5 = [a3 identifiers];
  v6 = [(KGElementIdentifierSet *)identifiers identifierSetByFormingUnion:v5];

  v7 = [objc_alloc(objc_opt_class()) initWithIdentifiers:v6 graph:self->_graph];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = KGElementCollection;
    if ([(KGElementCollection *)&v7 isEqual:v4])
    {
      v5 = [(KGElementCollection *)self isEqualToCollection:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToCollection:(id)a3
{
  v4 = a3;
  identifiers = self->_identifiers;
  v6 = [v4 identifiers];
  LODWORD(identifiers) = [(KGElementIdentifierSet *)identifiers isEqualToElementIdentifierSet:v6];

  if (identifiers)
  {
    v7 = [(KGGraph *)self->_graph implementation];
    v8 = [v4 graph];
    v9 = [v8 implementation];
    v10 = [v7 isEqual:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v2 = [(KGElementCollection *)self set];
  v3 = [v2 description];

  return v3;
}

- (void)enumeratePropertyValuesForKey:(id)a3 withBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v9);
}

- (void)enumerateElementsWithBatchSize:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v7);
}

- (void)enumerateElementIdentifierBatchesWithBatchSize:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = [(KGElementCollection *)self identifiers];
  v8 = [v7 mutableCopy];

  v12 = 0;
  do
  {
    if ([v8 isEmpty])
    {
      break;
    }

    v9 = objc_autoreleasePoolPush();
    v10 = [v8 prefix:a3];
    [v8 subtractIdentifierSet:v10];
    v6[2](v6, v10, &v12);
    v11 = v12;

    objc_autoreleasePoolPop(v9);
  }

  while (v11 != 1);
}

- (NSArray)allObjects
{
  v2 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (KGElement)anyObject
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__4361;
  v9 = __Block_byref_object_dispose__4362;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__KGElementCollection_anyObject__block_invoke;
  v4[3] = &unk_2797FF2E8;
  v4[4] = &v5;
  [(KGElementCollection *)self enumerateElementsWithBatchSize:1 usingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSSet)set
{
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{-[KGElementCollection count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __26__KGElementCollection_set__block_invoke;
  v6[3] = &unk_2797FF2C0;
  v4 = v3;
  v7 = v4;
  [(KGElementCollection *)self enumerateElementsWithBatchSize:256 usingBlock:v6];

  return v4;
}

- (KGElementCollection)initWithIdentifiers:(id)a3 graph:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = KGElementCollection;
  v9 = [(KGElementCollection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifiers, a3);
    objc_storeStrong(&v10->_graph, a4);
  }

  return v10;
}

@end