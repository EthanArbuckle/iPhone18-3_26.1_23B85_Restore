@interface MANodeCollection
+ (id)nodesMatchingFilter:(id)a3 inGraph:(id)a4;
+ (id)nodesOfEdges:(id)a3;
+ (id)nodesRelatedToNodes:(id)a3 withRelation:(id)a4;
+ (id)sourceNodesOfEdges:(id)a3;
+ (id)targetNodesOfEdges:(id)a3;
+ (unint64_t)numberOfNodesRelatedToNodes:(id)a3 withRelation:(id)a4;
- (BOOL)containsNode:(id)a3;
- (MANodeCollection)initWithNode:(id)a3;
- (id)debugDescription;
- (id)firstNode;
- (id)labels;
- (id)nodesMatchingFilter:(id)a3;
- (id)randomNode;
- (void)_enumerateUsingBlock:(id)a3;
- (void)enumerateDoublePropertyValuesForKey:(id)a3 withBlock:(id)a4;
- (void)enumerateIntegerPropertyValuesForKey:(id)a3 withBlock:(id)a4;
- (void)enumerateNodesSortedByFloatPropertyForName:(id)a3 usingBlock:(id)a4;
- (void)enumerateNodesSortedByIntegerPropertyForName:(id)a3 usingBlock:(id)a4;
- (void)enumerateNodesSortedByStringPropertyForName:(id)a3 usingBlock:(id)a4;
- (void)enumerateNodesUsingBlock:(id)a3;
- (void)enumerateStringPropertyValuesForKey:(id)a3 withBlock:(id)a4;
- (void)enumerateUnsignedIntegerPropertyValuesForKey:(id)a3 withBlock:(id)a4;
- (void)enumerateUnsignedLongLongPropertyValuesForKey:(id)a3 withBlock:(id)a4;
@end

@implementation MANodeCollection

- (id)nodesMatchingFilter:(id)a3
{
  v4 = a3;
  v5 = [(MAElementCollection *)self graphReference];
  v6 = [v5 concreteGraph];
  v7 = [(MAElementCollection *)self elementIdentifiers];
  v8 = [v6 nodeIdentifiersMatchingFilter:v4 intersectingIdentifiers:v7];

  v9 = [objc_alloc(objc_opt_class()) initWithGraphReference:v5 elementIdentifiers:v8];

  return v9;
}

- (id)labels
{
  v3 = [(MAElementCollection *)self graphReference];
  v4 = [v3 concreteGraph];
  v5 = [(MAElementCollection *)self elementIdentifiers];
  v9 = 0;
  [v4 labelsAndDomainsOfNodesForIdentifiers:v5 labels:&v9 domains:0];
  v6 = v9;
  v7 = v9;

  return v6;
}

- (BOOL)containsNode:(id)a3
{
  v4 = a3;
  v5 = [(MAElementCollection *)self elementIdentifiers];
  v6 = [v4 identifier];

  LOBYTE(v4) = [v5 containsIdentifier:v6];
  return v4;
}

- (id)randomNode
{
  v3 = [(MAElementCollection *)self elementIdentifiers];
  v4 = [v3 randomElement];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(MAElementCollection *)self graphReference];
    v7 = [v6 concreteGraph];
    v5 = [v7 nodeForIdentifier:v4];
  }

  return v5;
}

- (id)firstNode
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__832;
  v14 = __Block_byref_object_dispose__833;
  v15 = 0;
  v3 = [(MAElementCollection *)self elementIdentifiers];
  v4 = [v3 prefix:1];

  v5 = [(MAElementCollection *)self graphReference];
  v6 = [v5 concreteGraph];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __29__MANodeCollection_firstNode__block_invoke;
  v9[3] = &unk_2797FEC48;
  v9[4] = &v10;
  [v6 enumerateNodesWithIdentifiers:v4 usingBlock:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __107__MANodeCollection_enumerateNodesAsCollectionsSortedByUnsignedIntegerPropertyForName_ascending_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = [[KGElementIdentifierSet alloc] initWithElementIdentifier:a2];
  v3 = *(a1 + 32);
  v4 = objc_alloc(objc_opt_class());
  v5 = [*(a1 + 32) graphReference];
  v6 = [v4 initWithGraphReference:v5 elementIdentifiers:v7];

  (*(*(a1 + 40) + 16))();
}

void __98__MANodeCollection_enumerateNodesAsCollectionsSortedByDoublePropertyForName_ascending_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = [[KGElementIdentifierSet alloc] initWithElementIdentifier:a2];
  v3 = *(a1 + 32);
  v4 = objc_alloc(objc_opt_class());
  v5 = [*(a1 + 32) graphReference];
  v6 = [v4 initWithGraphReference:v5 elementIdentifiers:v7];

  (*(*(a1 + 40) + 16))();
}

void __99__MANodeCollection_enumerateNodesAsCollectionsSortedByIntegerPropertyForName_ascending_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = [[KGElementIdentifierSet alloc] initWithElementIdentifier:a2];
  v3 = *(a1 + 32);
  v4 = objc_alloc(objc_opt_class());
  v5 = [*(a1 + 32) graphReference];
  v6 = [v4 initWithGraphReference:v5 elementIdentifiers:v7];

  (*(*(a1 + 40) + 16))();
}

void __98__MANodeCollection_enumerateNodesAsCollectionsSortedByStringPropertyForName_ascending_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = [[KGElementIdentifierSet alloc] initWithElementIdentifier:a2];
  v3 = *(a1 + 32);
  v4 = objc_alloc(objc_opt_class());
  v5 = [*(a1 + 32) graphReference];
  v6 = [v4 initWithGraphReference:v5 elementIdentifiers:v7];

  (*(*(a1 + 40) + 16))();
}

- (void)enumerateUnsignedLongLongPropertyValuesForKey:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(MAElementCollection *)self graphReference];
  v8 = [v10 concreteGraph];
  v9 = [(MAElementCollection *)self elementIdentifiers];
  [v8 enumerateUnsignedLongLongPropertyValuesForKey:v7 ofNodesWithIdentifiers:v9 usingBlock:v6];
}

- (void)enumerateUnsignedIntegerPropertyValuesForKey:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(MAElementCollection *)self graphReference];
  v8 = [v10 concreteGraph];
  v9 = [(MAElementCollection *)self elementIdentifiers];
  [v8 enumerateUnsignedIntegerPropertyValuesForKey:v7 ofNodesWithIdentifiers:v9 usingBlock:v6];
}

- (void)enumerateDoublePropertyValuesForKey:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(MAElementCollection *)self graphReference];
  v8 = [v10 concreteGraph];
  v9 = [(MAElementCollection *)self elementIdentifiers];
  [v8 enumerateDoublePropertyValuesForKey:v7 ofNodesWithIdentifiers:v9 usingBlock:v6];
}

- (void)enumerateStringPropertyValuesForKey:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(MAElementCollection *)self graphReference];
  v8 = [v10 concreteGraph];
  v9 = [(MAElementCollection *)self elementIdentifiers];
  [v8 enumerateStringPropertyValuesForKey:v7 ofNodesWithIdentifiers:v9 usingBlock:v6];
}

- (void)enumerateIntegerPropertyValuesForKey:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(MAElementCollection *)self graphReference];
  v8 = [v10 concreteGraph];
  v9 = [(MAElementCollection *)self elementIdentifiers];
  [v8 enumerateIntegerPropertyValuesForKey:v7 ofNodesWithIdentifiers:v9 usingBlock:v6];
}

- (void)enumerateNodesSortedByFloatPropertyForName:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(MAElementCollection *)self graphReference];
  v8 = [v10 concreteGraph];
  v9 = [(MAElementCollection *)self elementIdentifiers];
  [v8 enumerateNodesWithIdentifiers:v9 sortedByFloatPropertyForName:v7 usingBlock:v6];
}

- (void)enumerateNodesSortedByIntegerPropertyForName:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(MAElementCollection *)self graphReference];
  v8 = [v10 concreteGraph];
  v9 = [(MAElementCollection *)self elementIdentifiers];
  [v8 enumerateNodesWithIdentifiers:v9 sortedByIntegerPropertyForName:v7 usingBlock:v6];
}

- (void)enumerateNodesSortedByStringPropertyForName:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(MAElementCollection *)self graphReference];
  v8 = [v10 concreteGraph];
  v9 = [(MAElementCollection *)self elementIdentifiers];
  [v8 enumerateNodesWithIdentifiers:v9 sortedByStringPropertyForName:v7 usingBlock:v6];
}

- (void)enumerateNodesUsingBlock:(id)a3
{
  v4 = a3;
  v7 = [(MAElementCollection *)self graphReference];
  v5 = [v7 concreteGraph];
  v6 = [(MAElementCollection *)self elementIdentifiers];
  [v5 enumerateNodesWithIdentifiers:v6 usingBlock:v4];
}

- (void)_enumerateUsingBlock:(id)a3
{
  v4 = a3;
  v7 = [(MAElementCollection *)self graphReference];
  v5 = [v7 concreteGraph];
  v6 = [(MAElementCollection *)self elementIdentifiers];
  [v5 enumerateNodesWithIdentifiers:v6 usingBlock:v4];
}

- (MANodeCollection)initWithNode:(id)a3
{
  v4 = a3;
  v5 = [v4 graphReference];
  v6 = [KGElementIdentifierSet alloc];
  v7 = [v4 identifier];

  v8 = [(KGElementIdentifierSet *)v6 initWithElementIdentifier:v7];
  v9 = [(MAElementCollection *)self initWithGraphReference:v5 elementIdentifiers:v8];

  return v9;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MANodeCollection;
  v4 = [(MANodeCollection *)&v8 description];
  v5 = [(MAElementCollection *)self array];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

+ (unint64_t)numberOfNodesRelatedToNodes:(id)a3 withRelation:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 graphReference];
  v8 = [v7 concreteGraph];
  v9 = [v6 elementIdentifiers];

  v10 = [v8 nodeIdentifiersRelatedToSourceNodeIdentifiers:v9 relation:v5];

  v11 = [v10 count];
  return v11;
}

+ (id)targetNodesOfEdges:(id)a3
{
  v4 = a3;
  v5 = [v4 graphReference];
  v6 = [v5 concreteGraph];
  v7 = [v4 elementIdentifiers];

  v8 = [v6 nodeIdentifiersOfEdgeIdentifiers:v7 ofType:1];

  v9 = [[a1 alloc] initWithGraphReference:v5 elementIdentifiers:v8];

  return v9;
}

+ (id)sourceNodesOfEdges:(id)a3
{
  v4 = a3;
  v5 = [v4 graphReference];
  v6 = [v5 concreteGraph];
  v7 = [v4 elementIdentifiers];

  v8 = [v6 nodeIdentifiersOfEdgeIdentifiers:v7 ofType:2];

  v9 = [[a1 alloc] initWithGraphReference:v5 elementIdentifiers:v8];

  return v9;
}

+ (id)nodesOfEdges:(id)a3
{
  v4 = a3;
  v5 = [v4 graphReference];
  v6 = [v5 concreteGraph];
  v7 = [v4 elementIdentifiers];

  v8 = [v6 nodeIdentifiersOfEdgeIdentifiers:v7 ofType:3];

  v9 = [[a1 alloc] initWithGraphReference:v5 elementIdentifiers:v8];

  return v9;
}

+ (id)nodesRelatedToNodes:(id)a3 withRelation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 graphReference];
  v9 = [v8 concreteGraph];
  v10 = [v7 elementIdentifiers];

  v11 = [v9 nodeIdentifiersRelatedToSourceNodeIdentifiers:v10 relation:v6];

  v12 = [[a1 alloc] initWithGraphReference:v8 elementIdentifiers:v11];

  return v12;
}

+ (id)nodesMatchingFilter:(id)a3 inGraph:(id)a4
{
  v6 = a3;
  v7 = [a4 graphReference];
  v8 = [v7 concreteGraph];
  v9 = [v8 nodeIdentifiersMatchingFilter:v6];

  v10 = [[a1 alloc] initWithGraphReference:v7 elementIdentifiers:v9];

  return v10;
}

@end