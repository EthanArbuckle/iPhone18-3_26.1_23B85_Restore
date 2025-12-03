@interface MAElementCollection
- (BOOL)isEqual:(id)equal;
- (MAElementCollection)initWithArray:(id)array graph:(id)graph;
- (MAElementCollection)initWithGraph:(id)graph;
- (MAElementCollection)initWithGraph:(id)graph elementIdentifiers:(id)identifiers;
- (MAElementCollection)initWithGraphReference:(id)reference elementIdentifiers:(id)identifiers;
- (MAElementCollection)initWithSet:(id)set graph:(id)graph;
- (NSSet)labels;
- (id)_anyElement;
- (id)array;
- (id)collectionByFormingUnionWith:(id)with;
- (id)collectionByIntersecting:(id)intersecting;
- (id)collectionBySubtracting:(id)subtracting;
- (id)copyWithZone:(_NSZone *)zone;
- (id)filteredCollectionUsingBlock:(id)block;
- (id)set;
- (id)sortedArrayUsingDescriptors:(id)descriptors;
- (void)_enumerateUsingBlock:(id)block;
- (void)enumerateDoublePropertyValuesForKey:(id)key withBlock:(id)block;
- (void)enumerateIdentifiersAsCollectionsWithBlock:(id)block;
- (void)enumerateIntegerPropertyValuesForKey:(id)key withBlock:(id)block;
- (void)enumerateStringPropertyValuesForKey:(id)key withBlock:(id)block;
- (void)enumerateUnsignedIntegerPropertyValuesForKey:(id)key withBlock:(id)block;
- (void)enumerateUnsignedLongLongPropertyValuesForKey:(id)key withBlock:(id)block;
@end

@implementation MAElementCollection

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  graphReference = self->_graphReference;
  v7 = [(KGElementIdentifierSet *)self->_elementIdentifiers copyWithZone:zone];
  v8 = [v5 initWithGraphReference:graphReference elementIdentifiers:v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      graphReference = self->_graphReference;
      graphReference = [(MAElementCollection *)v5 graphReference];

      if (graphReference == graphReference)
      {
        elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
        elementIdentifiers2 = [(MAElementCollection *)v5 elementIdentifiers];
        v8 = [elementIdentifiers isEqualToElementIdentifierSet:elementIdentifiers2];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)collectionBySubtracting:(id)subtracting
{
  elementIdentifiers = self->_elementIdentifiers;
  elementIdentifiers = [subtracting elementIdentifiers];
  v6 = [(KGElementIdentifierSet *)elementIdentifiers identifierSetBySubtractingIdentifierSet:elementIdentifiers];

  v7 = [objc_alloc(objc_opt_class()) initWithGraphReference:self->_graphReference elementIdentifiers:v6];

  return v7;
}

- (id)collectionByIntersecting:(id)intersecting
{
  elementIdentifiers = self->_elementIdentifiers;
  elementIdentifiers = [intersecting elementIdentifiers];
  v6 = [(KGElementIdentifierSet *)elementIdentifiers identifierSetByIntersectingIdentifierSet:elementIdentifiers];

  v7 = [objc_alloc(objc_opt_class()) initWithGraphReference:self->_graphReference elementIdentifiers:v6];

  return v7;
}

- (id)collectionByFormingUnionWith:(id)with
{
  elementIdentifiers = self->_elementIdentifiers;
  elementIdentifiers = [with elementIdentifiers];
  v6 = [(KGElementIdentifierSet *)elementIdentifiers identifierSetByFormingUnion:elementIdentifiers];

  v7 = [objc_alloc(objc_opt_class()) initWithGraphReference:self->_graphReference elementIdentifiers:v6];

  return v7;
}

- (id)_anyElement
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2012;
  v9 = __Block_byref_object_dispose__2013;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__MAElementCollection__anyElement__block_invoke;
  v4[3] = &unk_2797FE640;
  v4[4] = &v5;
  [(MAElementCollection *)self _enumerateUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)set
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __26__MAElementCollection_set__block_invoke;
  v6[3] = &unk_2797FE618;
  v4 = v3;
  v7 = v4;
  [(MAElementCollection *)self _enumerateUsingBlock:v6];

  return v4;
}

- (id)sortedArrayUsingDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  array = [(MAElementCollection *)self array];
  v6 = [array sortedArrayUsingDescriptors:descriptorsCopy];

  return v6;
}

- (id)array
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__MAElementCollection_array__block_invoke;
  v6[3] = &unk_2797FE618;
  v4 = v3;
  v7 = v4;
  [(MAElementCollection *)self _enumerateUsingBlock:v6];

  return v4;
}

- (id)filteredCollectionUsingBlock:(id)block
{
  blockCopy = block;
  elementIdentifiers = self->_elementIdentifiers;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __52__MAElementCollection_filteredCollectionUsingBlock___block_invoke;
  v15 = &unk_2797FE5F0;
  selfCopy = self;
  v6 = blockCopy;
  v17 = v6;
  v7 = [(KGElementIdentifierSet *)elementIdentifiers identifierSetByFilteringUsingBlock:&v12];
  if (v7 == self->_elementIdentifiers)
  {
    selfCopy2 = self;
  }

  else
  {
    v8 = objc_alloc(objc_opt_class());
    selfCopy2 = [v8 initWithGraphReference:self->_graphReference elementIdentifiers:{v7, v12, v13, v14, v15, selfCopy}];
  }

  v10 = selfCopy2;

  return v10;
}

uint64_t __52__MAElementCollection_filteredCollectionUsingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [[KGElementIdentifierSet alloc] initWithElementIdentifier:a2];
  v6 = *(a1 + 32);
  v7 = [objc_alloc(objc_opt_class()) initWithGraphReference:*(v6 + 8) elementIdentifiers:v5];
  v8 = (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v4);
  return v8;
}

- (void)enumerateUnsignedLongLongPropertyValuesForKey:(id)key withBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  v9 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v9);
}

- (void)enumerateUnsignedIntegerPropertyValuesForKey:(id)key withBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  v9 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v9);
}

- (void)enumerateDoublePropertyValuesForKey:(id)key withBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  v9 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v9);
}

- (void)enumerateStringPropertyValuesForKey:(id)key withBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  v9 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v9);
}

- (void)enumerateIntegerPropertyValuesForKey:(id)key withBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  v9 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v9);
}

- (void)enumerateIdentifiersAsCollectionsWithBlock:(id)block
{
  blockCopy = block;
  elementIdentifiers = self->_elementIdentifiers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__MAElementCollection_enumerateIdentifiersAsCollectionsWithBlock___block_invoke;
  v7[3] = &unk_2797FE5C8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(KGElementIdentifierSet *)elementIdentifiers enumerateIdentifiersWithBlock:v7];
}

void __66__MAElementCollection_enumerateIdentifiersAsCollectionsWithBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [[KGElementIdentifierSet alloc] initWithElementIdentifier:a2];
  v6 = *(a1 + 32);
  v7 = [objc_alloc(objc_opt_class()) initWithGraphReference:*(v6 + 8) elementIdentifiers:v5];
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v4);
}

- (void)_enumerateUsingBlock:(id)block
{
  blockCopy = block;
  v6 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v6);
}

- (NSSet)labels
{
  v2 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (MAElementCollection)initWithSet:(id)set graph:(id)graph
{
  setCopy = set;
  graphReference = [graph graphReference];
  v8 = KGElementIdentifierSetWithSet(setCopy);

  v9 = [(MAElementCollection *)self initWithGraphReference:graphReference elementIdentifiers:v8];
  return v9;
}

- (MAElementCollection)initWithArray:(id)array graph:(id)graph
{
  arrayCopy = array;
  graphReference = [graph graphReference];
  v8 = KGElementIdentifierSetWithArray(arrayCopy);

  v9 = [(MAElementCollection *)self initWithGraphReference:graphReference elementIdentifiers:v8];
  return v9;
}

- (MAElementCollection)initWithGraph:(id)graph
{
  graphReference = [graph graphReference];
  v5 = objc_alloc_init(KGElementIdentifierSet);
  v6 = [(MAElementCollection *)self initWithGraphReference:graphReference elementIdentifiers:v5];

  return v6;
}

- (MAElementCollection)initWithGraph:(id)graph elementIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  graphReference = [graph graphReference];
  v8 = [(MAElementCollection *)self initWithGraphReference:graphReference elementIdentifiers:identifiersCopy];

  return v8;
}

- (MAElementCollection)initWithGraphReference:(id)reference elementIdentifiers:(id)identifiers
{
  referenceCopy = reference;
  identifiersCopy = identifiers;
  v14.receiver = self;
  v14.super_class = MAElementCollection;
  v9 = [(MAElementCollection *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_graphReference, reference);
    if (identifiersCopy)
    {
      v11 = identifiersCopy;
    }

    else
    {
      v11 = objc_alloc_init(KGElementIdentifierSet);
    }

    elementIdentifiers = v10->_elementIdentifiers;
    v10->_elementIdentifiers = v11;
  }

  return v10;
}

@end