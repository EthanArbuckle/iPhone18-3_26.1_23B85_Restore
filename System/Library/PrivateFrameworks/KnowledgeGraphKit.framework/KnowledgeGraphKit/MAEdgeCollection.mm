@interface MAEdgeCollection
+ (id)edgesMatchingFilter:(id)filter inGraph:(id)graph;
+ (id)edgesOfType:(unint64_t)type betweenNodes:(id)nodes andNodes:(id)andNodes matchingFilter:(id)filter;
+ (id)edgesOfType:(unint64_t)type onNodes:(id)nodes matchingFilter:(id)filter;
- (BOOL)containsEdge:(id)edge;
- (MAEdgeCollection)initWithEdge:(id)edge;
- (id)edgesMatchingFilter:(id)filter;
- (id)firstEdge;
- (id)labels;
- (id)randomEdge;
- (void)_enumerateUsingBlock:(id)block;
- (void)enumerateDoublePropertyValuesForKey:(id)key withBlock:(id)block;
- (void)enumerateEdgesUsingBlock:(id)block;
- (void)enumerateIntegerPropertyValuesForKey:(id)key withBlock:(id)block;
- (void)enumerateStringPropertyValuesForKey:(id)key withBlock:(id)block;
- (void)enumerateUnsignedIntegerPropertyValuesForKey:(id)key withBlock:(id)block;
- (void)enumerateUnsignedLongLongPropertyValuesForKey:(id)key withBlock:(id)block;
@end

@implementation MAEdgeCollection

+ (id)edgesMatchingFilter:(id)filter inGraph:(id)graph
{
  filterCopy = filter;
  graphReference = [graph graphReference];
  concreteGraph = [graphReference concreteGraph];
  v9 = [concreteGraph edgeIdentifiersMatchingFilter:filterCopy];

  v10 = [[self alloc] initWithGraphReference:graphReference elementIdentifiers:v9];

  return v10;
}

+ (id)edgesOfType:(unint64_t)type betweenNodes:(id)nodes andNodes:(id)andNodes matchingFilter:(id)filter
{
  filterCopy = filter;
  andNodesCopy = andNodes;
  nodesCopy = nodes;
  graphReference = [nodesCopy graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [nodesCopy elementIdentifiers];

  elementIdentifiers2 = [andNodesCopy elementIdentifiers];

  v17 = [concreteGraph edgeIdentifiersOfType:type betweenNodesForIdentifiers:elementIdentifiers andNodesForIdentifiers:elementIdentifiers2 matchingFilter:filterCopy];

  v18 = [[self alloc] initWithGraphReference:graphReference elementIdentifiers:v17];

  return v18;
}

+ (id)edgesOfType:(unint64_t)type onNodes:(id)nodes matchingFilter:(id)filter
{
  filterCopy = filter;
  nodesCopy = nodes;
  graphReference = [nodesCopy graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [nodesCopy elementIdentifiers];

  v13 = [concreteGraph edgeIdentifiersOfType:type onNodesForIdentifiers:elementIdentifiers matchingFilter:filterCopy];

  v14 = [[self alloc] initWithGraphReference:graphReference elementIdentifiers:v13];

  return v14;
}

- (id)edgesMatchingFilter:(id)filter
{
  filterCopy = filter;
  graphReference = [(MAElementCollection *)self graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  v8 = [concreteGraph edgeIdentifiersMatchingFilter:filterCopy intersectingIdentifiers:elementIdentifiers];

  v9 = [objc_alloc(objc_opt_class()) initWithGraphReference:graphReference elementIdentifiers:v8];

  return v9;
}

- (id)labels
{
  graphReference = [(MAElementCollection *)self graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  v9 = 0;
  [concreteGraph labelsAndDomainsOfEdgesForIdentifiers:elementIdentifiers labels:&v9 domains:0];
  v6 = v9;
  v7 = v9;

  return v6;
}

- (BOOL)containsEdge:(id)edge
{
  edgeCopy = edge;
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  identifier = [edgeCopy identifier];

  LOBYTE(edgeCopy) = [elementIdentifiers containsIdentifier:identifier];
  return edgeCopy;
}

- (id)randomEdge
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
    v5 = [concreteGraph edgeForIdentifier:randomElement];
  }

  return v5;
}

- (id)firstEdge
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__888;
  v14 = __Block_byref_object_dispose__889;
  v15 = 0;
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  v4 = [elementIdentifiers prefix:1];

  graphReference = [(MAElementCollection *)self graphReference];
  concreteGraph = [graphReference concreteGraph];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __29__MAEdgeCollection_firstEdge__block_invoke;
  v9[3] = &unk_2797FFB10;
  v9[4] = &v10;
  [concreteGraph enumerateEdgesWithIdentifiers:v4 usingBlock:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (void)enumerateUnsignedLongLongPropertyValuesForKey:(id)key withBlock:(id)block
{
  blockCopy = block;
  keyCopy = key;
  graphReference = [(MAElementCollection *)self graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  [concreteGraph enumerateUnsignedLongLongPropertyValuesForKey:keyCopy ofEdgesWithIdentifiers:elementIdentifiers usingBlock:blockCopy];
}

- (void)enumerateUnsignedIntegerPropertyValuesForKey:(id)key withBlock:(id)block
{
  blockCopy = block;
  keyCopy = key;
  graphReference = [(MAElementCollection *)self graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  [concreteGraph enumerateUnsignedIntegerPropertyValuesForKey:keyCopy ofEdgesWithIdentifiers:elementIdentifiers usingBlock:blockCopy];
}

- (void)enumerateDoublePropertyValuesForKey:(id)key withBlock:(id)block
{
  blockCopy = block;
  keyCopy = key;
  graphReference = [(MAElementCollection *)self graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  [concreteGraph enumerateDoublePropertyValuesForKey:keyCopy ofEdgesWithIdentifiers:elementIdentifiers usingBlock:blockCopy];
}

- (void)enumerateStringPropertyValuesForKey:(id)key withBlock:(id)block
{
  blockCopy = block;
  keyCopy = key;
  graphReference = [(MAElementCollection *)self graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  [concreteGraph enumerateStringPropertyValuesForKey:keyCopy ofEdgesWithIdentifiers:elementIdentifiers usingBlock:blockCopy];
}

- (void)enumerateIntegerPropertyValuesForKey:(id)key withBlock:(id)block
{
  blockCopy = block;
  keyCopy = key;
  graphReference = [(MAElementCollection *)self graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  [concreteGraph enumerateIntegerPropertyValuesForKey:keyCopy ofEdgesWithIdentifiers:elementIdentifiers usingBlock:blockCopy];
}

- (void)enumerateEdgesUsingBlock:(id)block
{
  blockCopy = block;
  graphReference = [(MAElementCollection *)self graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  [concreteGraph enumerateEdgesWithIdentifiers:elementIdentifiers usingBlock:blockCopy];
}

- (MAEdgeCollection)initWithEdge:(id)edge
{
  edgeCopy = edge;
  graphReference = [edgeCopy graphReference];
  v6 = [KGElementIdentifierSet alloc];
  identifier = [edgeCopy identifier];

  v8 = [(KGElementIdentifierSet *)v6 initWithElementIdentifier:identifier];
  v9 = [(MAElementCollection *)self initWithGraphReference:graphReference elementIdentifiers:v8];

  return v9;
}

- (void)_enumerateUsingBlock:(id)block
{
  blockCopy = block;
  graphReference = [(MAElementCollection *)self graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [(MAElementCollection *)self elementIdentifiers];
  [concreteGraph enumerateEdgesWithIdentifiers:elementIdentifiers usingBlock:blockCopy];
}

@end