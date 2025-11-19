@interface MAElementCollection
- (BOOL)isEqual:(id)a3;
- (MAElementCollection)initWithArray:(id)a3 graph:(id)a4;
- (MAElementCollection)initWithGraph:(id)a3;
- (MAElementCollection)initWithGraph:(id)a3 elementIdentifiers:(id)a4;
- (MAElementCollection)initWithGraphReference:(id)a3 elementIdentifiers:(id)a4;
- (MAElementCollection)initWithSet:(id)a3 graph:(id)a4;
- (NSSet)labels;
- (id)_anyElement;
- (id)array;
- (id)collectionByFormingUnionWith:(id)a3;
- (id)collectionByIntersecting:(id)a3;
- (id)collectionBySubtracting:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)filteredCollectionUsingBlock:(id)a3;
- (id)set;
- (id)sortedArrayUsingDescriptors:(id)a3;
- (void)_enumerateUsingBlock:(id)a3;
- (void)enumerateDoublePropertyValuesForKey:(id)a3 withBlock:(id)a4;
- (void)enumerateIdentifiersAsCollectionsWithBlock:(id)a3;
- (void)enumerateIntegerPropertyValuesForKey:(id)a3 withBlock:(id)a4;
- (void)enumerateStringPropertyValuesForKey:(id)a3 withBlock:(id)a4;
- (void)enumerateUnsignedIntegerPropertyValuesForKey:(id)a3 withBlock:(id)a4;
- (void)enumerateUnsignedLongLongPropertyValuesForKey:(id)a3 withBlock:(id)a4;
@end

@implementation MAElementCollection

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  graphReference = self->_graphReference;
  v7 = [(KGElementIdentifierSet *)self->_elementIdentifiers copyWithZone:a3];
  v8 = [v5 initWithGraphReference:graphReference elementIdentifiers:v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      graphReference = self->_graphReference;
      v7 = [(MAElementCollection *)v5 graphReference];

      if (graphReference == v7)
      {
        v9 = [(MAElementCollection *)self elementIdentifiers];
        v10 = [(MAElementCollection *)v5 elementIdentifiers];
        v8 = [v9 isEqualToElementIdentifierSet:v10];
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

- (id)collectionBySubtracting:(id)a3
{
  elementIdentifiers = self->_elementIdentifiers;
  v5 = [a3 elementIdentifiers];
  v6 = [(KGElementIdentifierSet *)elementIdentifiers identifierSetBySubtractingIdentifierSet:v5];

  v7 = [objc_alloc(objc_opt_class()) initWithGraphReference:self->_graphReference elementIdentifiers:v6];

  return v7;
}

- (id)collectionByIntersecting:(id)a3
{
  elementIdentifiers = self->_elementIdentifiers;
  v5 = [a3 elementIdentifiers];
  v6 = [(KGElementIdentifierSet *)elementIdentifiers identifierSetByIntersectingIdentifierSet:v5];

  v7 = [objc_alloc(objc_opt_class()) initWithGraphReference:self->_graphReference elementIdentifiers:v6];

  return v7;
}

- (id)collectionByFormingUnionWith:(id)a3
{
  elementIdentifiers = self->_elementIdentifiers;
  v5 = [a3 elementIdentifiers];
  v6 = [(KGElementIdentifierSet *)elementIdentifiers identifierSetByFormingUnion:v5];

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

- (id)sortedArrayUsingDescriptors:(id)a3
{
  v4 = a3;
  v5 = [(MAElementCollection *)self array];
  v6 = [v5 sortedArrayUsingDescriptors:v4];

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

- (id)filteredCollectionUsingBlock:(id)a3
{
  v4 = a3;
  elementIdentifiers = self->_elementIdentifiers;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __52__MAElementCollection_filteredCollectionUsingBlock___block_invoke;
  v15 = &unk_2797FE5F0;
  v16 = self;
  v6 = v4;
  v17 = v6;
  v7 = [(KGElementIdentifierSet *)elementIdentifiers identifierSetByFilteringUsingBlock:&v12];
  if (v7 == self->_elementIdentifiers)
  {
    v9 = self;
  }

  else
  {
    v8 = objc_alloc(objc_opt_class());
    v9 = [v8 initWithGraphReference:self->_graphReference elementIdentifiers:{v7, v12, v13, v14, v15, v16}];
  }

  v10 = v9;

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

- (void)enumerateUnsignedLongLongPropertyValuesForKey:(id)a3 withBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v9);
}

- (void)enumerateUnsignedIntegerPropertyValuesForKey:(id)a3 withBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v9);
}

- (void)enumerateDoublePropertyValuesForKey:(id)a3 withBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v9);
}

- (void)enumerateStringPropertyValuesForKey:(id)a3 withBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v9);
}

- (void)enumerateIntegerPropertyValuesForKey:(id)a3 withBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v9);
}

- (void)enumerateIdentifiersAsCollectionsWithBlock:(id)a3
{
  v4 = a3;
  elementIdentifiers = self->_elementIdentifiers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__MAElementCollection_enumerateIdentifiersAsCollectionsWithBlock___block_invoke;
  v7[3] = &unk_2797FE5C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)_enumerateUsingBlock:(id)a3
{
  v5 = a3;
  v6 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v6);
}

- (NSSet)labels
{
  v2 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (MAElementCollection)initWithSet:(id)a3 graph:(id)a4
{
  v6 = a3;
  v7 = [a4 graphReference];
  v8 = KGElementIdentifierSetWithSet(v6);

  v9 = [(MAElementCollection *)self initWithGraphReference:v7 elementIdentifiers:v8];
  return v9;
}

- (MAElementCollection)initWithArray:(id)a3 graph:(id)a4
{
  v6 = a3;
  v7 = [a4 graphReference];
  v8 = KGElementIdentifierSetWithArray(v6);

  v9 = [(MAElementCollection *)self initWithGraphReference:v7 elementIdentifiers:v8];
  return v9;
}

- (MAElementCollection)initWithGraph:(id)a3
{
  v4 = [a3 graphReference];
  v5 = objc_alloc_init(KGElementIdentifierSet);
  v6 = [(MAElementCollection *)self initWithGraphReference:v4 elementIdentifiers:v5];

  return v6;
}

- (MAElementCollection)initWithGraph:(id)a3 elementIdentifiers:(id)a4
{
  v6 = a4;
  v7 = [a3 graphReference];
  v8 = [(MAElementCollection *)self initWithGraphReference:v7 elementIdentifiers:v6];

  return v8;
}

- (MAElementCollection)initWithGraphReference:(id)a3 elementIdentifiers:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MAElementCollection;
  v9 = [(MAElementCollection *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_graphReference, a3);
    if (v8)
    {
      v11 = v8;
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