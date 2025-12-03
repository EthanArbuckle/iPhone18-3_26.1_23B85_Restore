@interface MANodeCollection
+ (id)nodesMatchingFilter:(id)filter inGraph:(id)graph;
+ (id)nodesOfEdges:(id)edges;
+ (id)nodesRelatedToNodes:(id)nodes withRelation:(id)relation;
+ (id)sourceNodesOfEdges:(id)edges;
+ (id)targetNodesOfEdges:(id)edges;
+ (unint64_t)numberOfNodesRelatedToNodes:(id)nodes withRelation:(id)relation;
- (BOOL)containsNode:(id)node;
- (MANodeCollection)initWithNode:(id)node;
- (id)debugDescription;
- (id)firstNode;
- (id)labels;
- (id)nodesMatchingFilter:(id)filter;
- (id)randomNode;
- (void)_enumerateUsingBlock:(id)block;
- (void)enumerateDoublePropertyValuesForKey:(id)key withBlock:(id)block;
- (void)enumerateIntegerPropertyValuesForKey:(id)key withBlock:(id)block;
- (void)enumerateNodesSortedByFloatPropertyForName:(id)name usingBlock:(id)block;
- (void)enumerateNodesSortedByIntegerPropertyForName:(id)name usingBlock:(id)block;
- (void)enumerateNodesSortedByStringPropertyForName:(id)name usingBlock:(id)block;
- (void)enumerateNodesUsingBlock:(id)block;
- (void)enumerateStringPropertyValuesForKey:(id)key withBlock:(id)block;
- (void)enumerateUnsignedIntegerPropertyValuesForKey:(id)key withBlock:(id)block;
- (void)enumerateUnsignedLongLongPropertyValuesForKey:(id)key withBlock:(id)block;
@end

@implementation MANodeCollection

- (id)nodesMatchingFilter:(id)filter
{
  filterCopy = filter;
  graphReference = [(MAElementCollection *)self graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  v8 = [concreteGraph nodeIdentifiersMatchingFilter:filterCopy intersectingIdentifiers:elementIdentifiers];

  v9 = [objc_alloc(objc_opt_class()) initWithGraphReference:graphReference elementIdentifiers:v8];

  return v9;
}

- (id)labels
{
  graphReference = [(MAElementCollection *)self graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  v9 = 0;
  [concreteGraph labelsAndDomainsOfNodesForIdentifiers:elementIdentifiers labels:&v9 domains:0];
  v6 = v9;
  v7 = v9;

  return v6;
}

- (BOOL)containsNode:(id)node
{
  nodeCopy = node;
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  identifier = [nodeCopy identifier];

  LOBYTE(nodeCopy) = [elementIdentifiers containsIdentifier:identifier];
  return nodeCopy;
}

- (id)randomNode
{
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  randomElement = [elementIdentifiers randomElement];

  if (randomElement == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    graphReference = [(MAElementCollection *)self graphReference];
    concreteGraph = [graphReference concreteGraph];
    v5 = [concreteGraph nodeForIdentifier:randomElement];
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
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  v4 = [elementIdentifiers prefix:1];

  graphReference = [(MAElementCollection *)self graphReference];
  concreteGraph = [graphReference concreteGraph];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __29__MANodeCollection_firstNode__block_invoke;
  v9[3] = &unk_2797FEC48;
  v9[4] = &v10;
  [concreteGraph enumerateNodesWithIdentifiers:v4 usingBlock:v9];

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

- (void)enumerateUnsignedLongLongPropertyValuesForKey:(id)key withBlock:(id)block
{
  blockCopy = block;
  keyCopy = key;
  graphReference = [(MAElementCollection *)self graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  [concreteGraph enumerateUnsignedLongLongPropertyValuesForKey:keyCopy ofNodesWithIdentifiers:elementIdentifiers usingBlock:blockCopy];
}

- (void)enumerateUnsignedIntegerPropertyValuesForKey:(id)key withBlock:(id)block
{
  blockCopy = block;
  keyCopy = key;
  graphReference = [(MAElementCollection *)self graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  [concreteGraph enumerateUnsignedIntegerPropertyValuesForKey:keyCopy ofNodesWithIdentifiers:elementIdentifiers usingBlock:blockCopy];
}

- (void)enumerateDoublePropertyValuesForKey:(id)key withBlock:(id)block
{
  blockCopy = block;
  keyCopy = key;
  graphReference = [(MAElementCollection *)self graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  [concreteGraph enumerateDoublePropertyValuesForKey:keyCopy ofNodesWithIdentifiers:elementIdentifiers usingBlock:blockCopy];
}

- (void)enumerateStringPropertyValuesForKey:(id)key withBlock:(id)block
{
  blockCopy = block;
  keyCopy = key;
  graphReference = [(MAElementCollection *)self graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  [concreteGraph enumerateStringPropertyValuesForKey:keyCopy ofNodesWithIdentifiers:elementIdentifiers usingBlock:blockCopy];
}

- (void)enumerateIntegerPropertyValuesForKey:(id)key withBlock:(id)block
{
  blockCopy = block;
  keyCopy = key;
  graphReference = [(MAElementCollection *)self graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  [concreteGraph enumerateIntegerPropertyValuesForKey:keyCopy ofNodesWithIdentifiers:elementIdentifiers usingBlock:blockCopy];
}

- (void)enumerateNodesSortedByFloatPropertyForName:(id)name usingBlock:(id)block
{
  blockCopy = block;
  nameCopy = name;
  graphReference = [(MAElementCollection *)self graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  [concreteGraph enumerateNodesWithIdentifiers:elementIdentifiers sortedByFloatPropertyForName:nameCopy usingBlock:blockCopy];
}

- (void)enumerateNodesSortedByIntegerPropertyForName:(id)name usingBlock:(id)block
{
  blockCopy = block;
  nameCopy = name;
  graphReference = [(MAElementCollection *)self graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  [concreteGraph enumerateNodesWithIdentifiers:elementIdentifiers sortedByIntegerPropertyForName:nameCopy usingBlock:blockCopy];
}

- (void)enumerateNodesSortedByStringPropertyForName:(id)name usingBlock:(id)block
{
  blockCopy = block;
  nameCopy = name;
  graphReference = [(MAElementCollection *)self graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  [concreteGraph enumerateNodesWithIdentifiers:elementIdentifiers sortedByStringPropertyForName:nameCopy usingBlock:blockCopy];
}

- (void)enumerateNodesUsingBlock:(id)block
{
  blockCopy = block;
  graphReference = [(MAElementCollection *)self graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  [concreteGraph enumerateNodesWithIdentifiers:elementIdentifiers usingBlock:blockCopy];
}

- (void)_enumerateUsingBlock:(id)block
{
  blockCopy = block;
  graphReference = [(MAElementCollection *)self graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  [concreteGraph enumerateNodesWithIdentifiers:elementIdentifiers usingBlock:blockCopy];
}

- (MANodeCollection)initWithNode:(id)node
{
  nodeCopy = node;
  graphReference = [nodeCopy graphReference];
  v6 = [KGElementIdentifierSet alloc];
  identifier = [nodeCopy identifier];

  v8 = [(KGElementIdentifierSet *)v6 initWithElementIdentifier:identifier];
  v9 = [(MAElementCollection *)self initWithGraphReference:graphReference elementIdentifiers:v8];

  return v9;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MANodeCollection;
  v4 = [(MANodeCollection *)&v8 description];
  array = [(MAElementCollection *)self array];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, array];

  return v6;
}

+ (unint64_t)numberOfNodesRelatedToNodes:(id)nodes withRelation:(id)relation
{
  relationCopy = relation;
  nodesCopy = nodes;
  graphReference = [nodesCopy graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [nodesCopy elementIdentifiers];

  v10 = [concreteGraph nodeIdentifiersRelatedToSourceNodeIdentifiers:elementIdentifiers relation:relationCopy];

  v11 = [v10 count];
  return v11;
}

+ (id)targetNodesOfEdges:(id)edges
{
  edgesCopy = edges;
  graphReference = [edgesCopy graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [edgesCopy elementIdentifiers];

  v8 = [concreteGraph nodeIdentifiersOfEdgeIdentifiers:elementIdentifiers ofType:1];

  v9 = [[self alloc] initWithGraphReference:graphReference elementIdentifiers:v8];

  return v9;
}

+ (id)sourceNodesOfEdges:(id)edges
{
  edgesCopy = edges;
  graphReference = [edgesCopy graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [edgesCopy elementIdentifiers];

  v8 = [concreteGraph nodeIdentifiersOfEdgeIdentifiers:elementIdentifiers ofType:2];

  v9 = [[self alloc] initWithGraphReference:graphReference elementIdentifiers:v8];

  return v9;
}

+ (id)nodesOfEdges:(id)edges
{
  edgesCopy = edges;
  graphReference = [edgesCopy graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [edgesCopy elementIdentifiers];

  v8 = [concreteGraph nodeIdentifiersOfEdgeIdentifiers:elementIdentifiers ofType:3];

  v9 = [[self alloc] initWithGraphReference:graphReference elementIdentifiers:v8];

  return v9;
}

+ (id)nodesRelatedToNodes:(id)nodes withRelation:(id)relation
{
  relationCopy = relation;
  nodesCopy = nodes;
  graphReference = [nodesCopy graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [nodesCopy elementIdentifiers];

  v11 = [concreteGraph nodeIdentifiersRelatedToSourceNodeIdentifiers:elementIdentifiers relation:relationCopy];

  v12 = [[self alloc] initWithGraphReference:graphReference elementIdentifiers:v11];

  return v12;
}

+ (id)nodesMatchingFilter:(id)filter inGraph:(id)graph
{
  filterCopy = filter;
  graphReference = [graph graphReference];
  concreteGraph = [graphReference concreteGraph];
  v9 = [concreteGraph nodeIdentifiersMatchingFilter:filterCopy];

  v10 = [[self alloc] initWithGraphReference:graphReference elementIdentifiers:v9];

  return v10;
}

@end