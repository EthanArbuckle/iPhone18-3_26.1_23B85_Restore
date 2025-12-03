@interface KGElementCollection
- (BOOL)containsCollection:(id)collection;
- (BOOL)intersectsCollection:(id)collection;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCollection:(id)collection;
- (BOOL)isSubsetOfCollection:(id)collection;
- (KGElement)anyObject;
- (KGElementCollection)initWithIdentifiers:(id)identifiers graph:(id)graph;
- (NSArray)allObjects;
- (NSSet)set;
- (id)collectionByFormingUnionWithCollection:(id)collection;
- (id)collectionByIntersectingCollection:(id)collection;
- (id)collectionBySubtractingCollection:(id)collection;
- (id)description;
- (void)enumerateElementIdentifierBatchesWithBatchSize:(unint64_t)size usingBlock:(id)block;
- (void)enumerateElementsWithBatchSize:(unint64_t)size usingBlock:(id)block;
- (void)enumeratePropertyValuesForKey:(id)key withBlock:(id)block;
@end

@implementation KGElementCollection

- (BOOL)containsCollection:(id)collection
{
  identifiers = self->_identifiers;
  identifiers = [collection identifiers];
  LOBYTE(identifiers) = [(KGElementIdentifierSet *)identifiers containsIdentifierSet:identifiers];

  return identifiers;
}

- (BOOL)isSubsetOfCollection:(id)collection
{
  identifiers = self->_identifiers;
  identifiers = [collection identifiers];
  LOBYTE(identifiers) = [(KGElementIdentifierSet *)identifiers isSubsetOfIdentifierSet:identifiers];

  return identifiers;
}

- (BOOL)intersectsCollection:(id)collection
{
  identifiers = self->_identifiers;
  identifiers = [collection identifiers];
  LOBYTE(identifiers) = [(KGElementIdentifierSet *)identifiers intersectsIdentifierSet:identifiers];

  return identifiers;
}

- (id)collectionBySubtractingCollection:(id)collection
{
  identifiers = self->_identifiers;
  identifiers = [collection identifiers];
  v6 = [(KGElementIdentifierSet *)identifiers identifierSetBySubtractingIdentifierSet:identifiers];

  v7 = [objc_alloc(objc_opt_class()) initWithIdentifiers:v6 graph:self->_graph];

  return v7;
}

- (id)collectionByIntersectingCollection:(id)collection
{
  identifiers = self->_identifiers;
  identifiers = [collection identifiers];
  v6 = [(KGElementIdentifierSet *)identifiers identifierSetByIntersectingIdentifierSet:identifiers];

  v7 = [objc_alloc(objc_opt_class()) initWithIdentifiers:v6 graph:self->_graph];

  return v7;
}

- (id)collectionByFormingUnionWithCollection:(id)collection
{
  identifiers = self->_identifiers;
  identifiers = [collection identifiers];
  v6 = [(KGElementIdentifierSet *)identifiers identifierSetByFormingUnion:identifiers];

  v7 = [objc_alloc(objc_opt_class()) initWithIdentifiers:v6 graph:self->_graph];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = KGElementCollection;
    if ([(KGElementCollection *)&v7 isEqual:equalCopy])
    {
      v5 = [(KGElementCollection *)self isEqualToCollection:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToCollection:(id)collection
{
  collectionCopy = collection;
  identifiers = self->_identifiers;
  identifiers = [collectionCopy identifiers];
  LODWORD(identifiers) = [(KGElementIdentifierSet *)identifiers isEqualToElementIdentifierSet:identifiers];

  if (identifiers)
  {
    implementation = [(KGGraph *)self->_graph implementation];
    graph = [collectionCopy graph];
    implementation2 = [graph implementation];
    v10 = [implementation isEqual:implementation2];
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

- (void)enumeratePropertyValuesForKey:(id)key withBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  v9 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v9);
}

- (void)enumerateElementsWithBatchSize:(unint64_t)size usingBlock:(id)block
{
  blockCopy = block;
  v7 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v7);
}

- (void)enumerateElementIdentifierBatchesWithBatchSize:(unint64_t)size usingBlock:(id)block
{
  blockCopy = block;
  identifiers = [(KGElementCollection *)self identifiers];
  v8 = [identifiers mutableCopy];

  v12 = 0;
  do
  {
    if ([v8 isEmpty])
    {
      break;
    }

    v9 = objc_autoreleasePoolPush();
    v10 = [v8 prefix:size];
    [v8 subtractIdentifierSet:v10];
    blockCopy[2](blockCopy, v10, &v12);
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

- (KGElementCollection)initWithIdentifiers:(id)identifiers graph:(id)graph
{
  identifiersCopy = identifiers;
  graphCopy = graph;
  v12.receiver = self;
  v12.super_class = KGElementCollection;
  v9 = [(KGElementCollection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifiers, identifiers);
    objc_storeStrong(&v10->_graph, graph);
  }

  return v10;
}

@end