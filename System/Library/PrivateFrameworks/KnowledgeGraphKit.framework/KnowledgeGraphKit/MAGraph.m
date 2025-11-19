@interface MAGraph
+ (BOOL)populateGraph:(id)a3 withDefinitions:(id)a4 constraints:(id)a5 error:(id *)a6;
+ (BOOL)scanGraphElementOptionsString:(id)a3 minimum:(unint64_t *)a4 maximum:(unint64_t *)a5 error:(id *)a6;
+ (BOOL)scanGraphElementString:(id)a3 type:(unint64_t *)a4 optionalName:(id *)a5 label:(id *)a6 optionalDomains:(id *)a7 optionalProperties:(id *)a8 error:(id *)a9;
+ (BOOL)scanMatchString:(id)a3 definitions:(id *)a4 constraints:(id *)a5 forCreation:(BOOL)a6 error:(id *)a7;
+ (MAGraph)graphWithDefinitions:(id)a3 constraints:(id)a4 error:(id *)a5;
+ (MAGraph)graphWithVisualString:(id)a3 error:(id *)a4;
+ (id)defaultSpecification;
+ (id)graph;
+ (id)graphJSONURLWithPath:(id)a3 andName:(id)a4;
+ (id)graphMLURLWithPath:(id)a3 andName:(id)a4;
+ (id)persistentStoreURLWithPath:(id)a3 andName:(id)a4;
+ (id)scanGraphConstraintString:(id)a3 error:(id *)a4;
+ (id)visualStringWithFormat:(id)a3 elements:(id)a4;
+ (void)initialize;
- (BOOL)_matchNode:(id)a3 usingAbstractNode:(id)a4 fromEdge:(id)a5 atIteration:(unint64_t)a6 withDefinitions:(id)a7 constraints:(id)a8 unusedConstraints:(id)a9 andSubGraph:(id)a10 matchingNodeQueue:(id)a11;
- (BOOL)_shouldFail;
- (BOOL)conformsToGraphSchema:(id)a3;
- (BOOL)copyPersistentStoreToURL:(id)a3 error:(id *)a4;
- (BOOL)findAndResolveUniqueEdge:(id)a3;
- (BOOL)findAndResolveUniqueNode:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isReadOnly;
- (BOOL)migratePersistentStoreToURL:(id)a3 error:(id *)a4;
- (BOOL)noFatalError;
- (BOOL)updateGraphWithVisualString:(id)a3;
- (BOOL)usesClassADataProtection;
- (BOOL)usesClassBDataProtection;
- (BOOL)usesClassCDataProtection;
- (BOOL)writeDataToURL:(id)a3 error:(id *)a4;
- (BOOL)writeGraphJSONToURL:(id)a3 error:(id *)a4;
- (MAGraph)initWithGraphJSONURL:(id)a3 error:(id *)a4;
- (MAGraph)initWithGraphMLURL:(id)a3 error:(id *)a4;
- (MAGraph)initWithPersistenceOptions:(int64_t)a3;
- (MAGraph)initWithPersistentStoreURL:(id)a3 options:(int64_t)a4 error:(id *)a5;
- (MAGraph)initWithSpecification:(id)a3;
- (MAGraph)initWithSpecification:(id)a3 dataURL:(id)a4 error:(id *)a5;
- (MAGraph)initWithSpecification:(id)a3 persistenceStoreURL:(id)a4 error:(id *)a5;
- (NSUUID)identifier;
- (id)_constraintAbstractEdgesFromAbstractNode:(id)a3 inConstraints:(id *)a4;
- (id)_graphDictionary;
- (id)_graphJSONDictionary;
- (id)_instantiateGraphWithStoreAtURL:(id)a3 error:(id *)a4;
- (id)abstractEdges;
- (id)addEdgeFromBase:(id)a3 sourceNode:(id)a4 targetNode:(id)a5;
- (id)addNodeFromBase:(id)a3;
- (id)adjacencyWithEndNodeIdentifiers:(id)a3 edgeFilter:(id)a4 edgeType:(unint64_t)a5;
- (id)adjacencyWithStartNodeIdentifiers:(id)a3 edgeFilter:(id)a4 edgeType:(unint64_t)a5;
- (id)anyEdgeMatchingFilter:(id)a3;
- (id)anyNodeMatchingFilter:(id)a3;
- (id)databaseURL;
- (id)edgeFromFetchedRowWithIdentifier:(int)a3 domain:(signed __int16)a4 label:(id)a5 weight:(float)a6 properties:(id)a7 sourceNodeIdentifier:(int)a8 targetNodeIdentifier:(int)a9;
- (id)edgeIdentifiersMatchingFilter:(id)a3;
- (id)edgeIdentifiersMatchingFilter:(id)a3 intersectingIdentifiers:(id)a4;
- (id)edgeIdentifiersOfType:(unint64_t)a3 betweenNodesForIdentifiers:(id)a4 andNodesForIdentifiers:(id)a5 matchingFilter:(id)a6;
- (id)edgeIdentifiersOfType:(unint64_t)a3 onNodesForIdentifiers:(id)a4 matchingFilter:(id)a5;
- (id)edgeIdentifiersOfType:(unint64_t)a3 sourceNodeIdentifier:(unint64_t)a4 targetNodeIdentifier:(unint64_t)a5;
- (id)edgesDomains;
- (id)edgesForIdentifiers:(id)a3;
- (id)edgesLabels;
- (id)graphNode;
- (id)matchWithDefinitions:(id)a3 constraints:(id)a4 error:(id *)a5;
- (id)matchWithVisualFormat:(id)a3 elements:(id)a4 error:(id *)a5;
- (id)neighborNodeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeType:(unint64_t)a4 edgeFilter:(id)a5;
- (id)nodeFromFetchedRowWithIdentifier:(int)a3 domain:(signed __int16)a4 label:(id)a5 weight:(float)a6 properties:(id)a7;
- (id)nodeIdentifiersMatchingFilter:(id)a3;
- (id)nodeIdentifiersMatchingFilter:(id)a3 intersectingIdentifiers:(id)a4;
- (id)nodeIdentifiersRelatedToSourceNodeIdentifiers:(id)a3 relation:(id)a4;
- (id)nodesDomains;
- (id)nodesForIdentifiers:(id)a3;
- (id)nodesLabels;
- (id)orphanNodes;
- (id)schema:(id)a3;
- (id)selectBestRootNodeForPath:(id)a3 withDefinitions:(id)a4;
- (id)shortestPathFromNode:(id)a3 toNode:(id)a4 directed:(BOOL)a5;
- (id)transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeType:(unint64_t)a4 edgeFilter:(id)a5;
- (unint64_t)hash;
- (unint64_t)numberOfEdgesMatchingFilter:(id)a3;
- (unint64_t)numberOfNodesMatchingFilter:(id)a3;
- (unint64_t)version;
- (void)_loadWithGraphDictionary:(id)a3;
- (void)addUniqueNode:(id)a3 didInsert:(BOOL *)a4;
- (void)breadthFirstSearchFromNode:(id)a3 directed:(BOOL)a4 usingBlock:(id)a5;
- (void)closePersistentStore;
- (void)dealloc;
- (void)depthFirstSearchFromNode:(id)a3 directed:(BOOL)a4 usingBlock:(id)a5;
- (void)enterBatch;
- (void)enumerateDoublePropertyValuesForKey:(id)a3 ofEdgesWithIdentifiers:(id)a4 usingBlock:(id)a5;
- (void)enumerateDoublePropertyValuesForKey:(id)a3 ofNodesWithIdentifiers:(id)a4 usingBlock:(id)a5;
- (void)enumerateEdgesMatchingFilter:(id)a3 usingBlock:(id)a4;
- (void)enumerateEdgesWithIdentifiers:(id)a3 usingBlock:(id)a4;
- (void)enumerateIntegerPropertyValuesForKey:(id)a3 ofEdgesWithIdentifiers:(id)a4 usingBlock:(id)a5;
- (void)enumerateIntegerPropertyValuesForKey:(id)a3 ofNodesWithIdentifiers:(id)a4 usingBlock:(id)a5;
- (void)enumerateNodesMatchingFilter:(id)a3 usingBlock:(id)a4;
- (void)enumerateNodesWithIdentifiers:(id)a3 sortedByFloatPropertyForName:(id)a4 usingBlock:(id)a5;
- (void)enumerateNodesWithIdentifiers:(id)a3 sortedByIntegerPropertyForName:(id)a4 usingBlock:(id)a5;
- (void)enumerateNodesWithIdentifiers:(id)a3 sortedByStringPropertyForName:(id)a4 usingBlock:(id)a5;
- (void)enumerateNodesWithIdentifiers:(id)a3 usingBlock:(id)a4;
- (void)enumeratePropertyValuesForKey:(id)a3 ofEdgesWithIdentifiers:(id)a4 usingBlock:(id)a5;
- (void)enumeratePropertyValuesForKey:(id)a3 ofNodesWithIdentifiers:(id)a4 usingBlock:(id)a5;
- (void)enumerateStringPropertyValuesForKey:(id)a3 ofEdgesWithIdentifiers:(id)a4 usingBlock:(id)a5;
- (void)enumerateStringPropertyValuesForKey:(id)a3 ofNodesWithIdentifiers:(id)a4 usingBlock:(id)a5;
- (void)enumerateUnsignedIntegerPropertyValuesForKey:(id)a3 ofEdgesWithIdentifiers:(id)a4 usingBlock:(id)a5;
- (void)enumerateUnsignedIntegerPropertyValuesForKey:(id)a3 ofNodesWithIdentifiers:(id)a4 usingBlock:(id)a5;
- (void)enumerateUnsignedLongLongPropertyValuesForKey:(id)a3 ofEdgesWithIdentifiers:(id)a4 usingBlock:(id)a5;
- (void)enumerateUnsignedLongLongPropertyValuesForKey:(id)a3 ofNodesWithIdentifiers:(id)a4 usingBlock:(id)a5;
- (void)executeGraphChangeRequest:(id)a3;
- (void)labelAndDomainFromLabels:(id)a3 outLabel:(id *)a4 outDomain:(unsigned __int16 *)a5;
- (void)labelsAndDomainsOfEdgesForIdentifiers:(id)a3 labels:(id *)a4 domains:(id *)a5;
- (void)labelsAndDomainsOfNodesForIdentifiers:(id)a3 labels:(id *)a4 domains:(id *)a5;
- (void)leaveBatch;
- (void)legacyRemoveEdges:(id)a3;
- (void)legacyRemoveNodes:(id)a3;
- (void)loadDomains:(id)a3;
- (void)mergeWithGraph:(id)a3 strictNodes:(BOOL)a4 strictEdges:(BOOL)a5 saveToDatabase:(BOOL)a6 createdNodes:(id *)a7 createdEdges:(id *)a8;
- (void)persistModelProperties:(id)a3 forEdgeWithIdentifier:(unint64_t)a4 clobberExisting:(BOOL)a5;
- (void)persistModelProperties:(id)a3 forNodeWithIdentifier:(unint64_t)a4 clobberExisting:(BOOL)a5;
- (void)persistModelProperty:(id)a3 forKey:(id)a4 forEdgeWithIdentifier:(unint64_t)a5;
- (void)persistModelProperty:(id)a3 forKey:(id)a4 forNodeWithIdentifier:(unint64_t)a5;
- (void)persistWeight:(float)a3 forEdgeWithIdentifier:(unint64_t)a4;
- (void)persistWeight:(float)a3 forNodeWithIdentifier:(unint64_t)a4;
- (void)removeModelPropertiesForEdgeWithIdentifier:(unint64_t)a3;
- (void)removeModelPropertiesForNodeWithIdentifier:(unint64_t)a3;
- (void)removeModelPropertyForKey:(id)a3 forEdgeWithIdentifier:(unint64_t)a4;
- (void)removeModelPropertyForKey:(id)a3 forNodeWithIdentifier:(unint64_t)a4;
- (void)rollbackBatch;
- (void)setVersion:(unint64_t)a3;
- (void)unloadDomains:(id)a3;
- (void)unloadEdge:(id)a3;
@end

@implementation MAGraph

- (unint64_t)hash
{
  v2 = [(MAGraph *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = v4;
      v8 = [(MAGraph *)self identifier];
      v9 = [(MAGraph *)v7 identifier];

      v6 = [v8 isEqual:v9];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)edgeIdentifiersOfType:(unint64_t)a3 betweenNodesForIdentifiers:(id)a4 andNodesForIdentifiers:(id)a5 matchingFilter:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  if (([v10 isEmpty] & 1) != 0 || objc_msgSend(v11, "isEmpty"))
  {
    v14 = objc_alloc_init(KGElementIdentifierSet);
  }

  else
  {
    graph = self->_graph;
    v16 = [v12 kgEdgeFilter];
    v14 = [(KGGraph *)graph edgeIdentifiersBetweenStartNodeIdentifiers:v10 endNodeIdentifiers:v11 edgeFilter:v16 edgeDirection:a3];
  }

  objc_autoreleasePoolPop(v13);

  return v14;
}

- (id)edgeIdentifiersOfType:(unint64_t)a3 onNodesForIdentifiers:(id)a4 matchingFilter:(id)a5
{
  graph = self->_graph;
  v9 = a5;
  v10 = [(KGGraph *)graph edgeIdentifiersWithStartNodeIdentifiers:a4 edgeDirection:a3];
  v11 = self->_graph;
  v12 = [v9 kgEdgeFilter];

  v13 = [(KGGraph *)v11 edgeIdentifiersMatchingFilter:v12 intersectingIdentifiers:v10];

  return v13;
}

- (id)nodeIdentifiersRelatedToSourceNodeIdentifiers:(id)a3 relation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(KGMutableElementIdentifierSet);
  [v6 unionAdjacencySetFromSourceNodeIdentifiers:v7 toTargetNodeIdentifiers:v8 graph:self];

  return v8;
}

- (id)anyEdgeMatchingFilter:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__MAGraph_anyEdgeMatchingFilter___block_invoke;
  v7[3] = &unk_2797FFB10;
  v7[4] = &v8;
  [(MAGraph *)self enumerateEdgesMatchingFilter:v4 usingBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)edgeIdentifiersOfType:(unint64_t)a3 sourceNodeIdentifier:(unint64_t)a4 targetNodeIdentifier:(unint64_t)a5
{
  v9 = objc_autoreleasePoolPush();
  if (a3 - 1 > 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_255972F78[a3 - 1];
  }

  v11 = [[KGElementIdentifierSet alloc] initWithElementIdentifier:a4];
  v12 = [(KGGraph *)self->_graph edgeIdentifiersWithStartNodeIdentifiers:v11 edgeDirection:a3];
  if ([v12 isEmpty])
  {
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = objc_alloc_init(KGElementIdentifierSet);
    }

    v19 = v13;
  }

  else
  {
    v14 = [[KGElementIdentifierSet alloc] initWithElementIdentifier:a5];
    v15 = [(KGGraph *)self->_graph edgeIdentifiersWithStartNodeIdentifiers:v14 edgeDirection:v10];
    v16 = [v15 identifierSetByIntersectingIdentifierSet:v12];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = objc_alloc_init(KGElementIdentifierSet);
    }

    v19 = v18;
  }

  objc_autoreleasePoolPop(v9);

  return v19;
}

- (void)enumerateUnsignedLongLongPropertyValuesForKey:(id)a3 ofEdgesWithIdentifiers:(id)a4 usingBlock:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__MAGraph_enumerateUnsignedLongLongPropertyValuesForKey_ofEdgesWithIdentifiers_usingBlock___block_invoke;
  v10[3] = &unk_2797FDBB0;
  v11 = v8;
  v9 = v8;
  [(MAGraph *)self enumeratePropertyValuesForKey:a3 ofEdgesWithIdentifiers:a4 usingBlock:v10];
}

void __91__MAGraph_enumerateUnsignedLongLongPropertyValuesForKey_ofEdgesWithIdentifiers_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if ([v7 kgPropertyType] == 4 || objc_msgSend(v7, "kgPropertyType") == 1)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), a2, [v7 unsignedLongLongValue], a4);
  }
}

- (void)enumerateUnsignedIntegerPropertyValuesForKey:(id)a3 ofEdgesWithIdentifiers:(id)a4 usingBlock:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__MAGraph_enumerateUnsignedIntegerPropertyValuesForKey_ofEdgesWithIdentifiers_usingBlock___block_invoke;
  v10[3] = &unk_2797FDBB0;
  v11 = v8;
  v9 = v8;
  [(MAGraph *)self enumeratePropertyValuesForKey:a3 ofEdgesWithIdentifiers:a4 usingBlock:v10];
}

void __90__MAGraph_enumerateUnsignedIntegerPropertyValuesForKey_ofEdgesWithIdentifiers_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if ([v7 kgPropertyType] == 4 || objc_msgSend(v7, "kgPropertyType") == 1)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), a2, [v7 unsignedIntValue], a4);
  }
}

- (void)enumerateDoublePropertyValuesForKey:(id)a3 ofEdgesWithIdentifiers:(id)a4 usingBlock:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__MAGraph_enumerateDoublePropertyValuesForKey_ofEdgesWithIdentifiers_usingBlock___block_invoke;
  v10[3] = &unk_2797FDBB0;
  v11 = v8;
  v9 = v8;
  [(MAGraph *)self enumeratePropertyValuesForKey:a3 ofEdgesWithIdentifiers:a4 usingBlock:v10];
}

void __81__MAGraph_enumerateDoublePropertyValuesForKey_ofEdgesWithIdentifiers_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = a3;
  if ([v8 kgPropertyType] == 2)
  {
    v7 = *(a1 + 32);
    [v8 doubleValue];
    (*(v7 + 16))(v7, a2, a4);
  }
}

- (void)enumerateStringPropertyValuesForKey:(id)a3 ofEdgesWithIdentifiers:(id)a4 usingBlock:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__MAGraph_enumerateStringPropertyValuesForKey_ofEdgesWithIdentifiers_usingBlock___block_invoke;
  v10[3] = &unk_2797FDBB0;
  v11 = v8;
  v9 = v8;
  [(MAGraph *)self enumeratePropertyValuesForKey:a3 ofEdgesWithIdentifiers:a4 usingBlock:v10];
}

void __81__MAGraph_enumerateStringPropertyValuesForKey_ofEdgesWithIdentifiers_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 kgPropertyType] == 3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)enumerateIntegerPropertyValuesForKey:(id)a3 ofEdgesWithIdentifiers:(id)a4 usingBlock:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__MAGraph_enumerateIntegerPropertyValuesForKey_ofEdgesWithIdentifiers_usingBlock___block_invoke;
  v10[3] = &unk_2797FDBB0;
  v11 = v8;
  v9 = v8;
  [(MAGraph *)self enumeratePropertyValuesForKey:a3 ofEdgesWithIdentifiers:a4 usingBlock:v10];
}

void __82__MAGraph_enumerateIntegerPropertyValuesForKey_ofEdgesWithIdentifiers_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if ([v7 kgPropertyType] == 1)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), a2, [v7 integerValue], a4);
  }
}

- (void)enumeratePropertyValuesForKey:(id)a3 ofEdgesWithIdentifiers:(id)a4 usingBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(KGElementCollection *)[KGEdgeCollection alloc] initWithIdentifiers:v9 graph:self->_graph];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__MAGraph_enumeratePropertyValuesForKey_ofEdgesWithIdentifiers_usingBlock___block_invoke;
  v13[3] = &unk_2797FDB88;
  v14 = v8;
  v12 = v8;
  [(KGEdgeCollection *)v11 enumeratePropertyValuesForKey:v10 withBlock:v13];
}

uint64_t __75__MAGraph_enumeratePropertyValuesForKey_ofEdgesWithIdentifiers_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 kgPropertyValue];
  if (objc_claimAutoreleasedReturnValue())
  {
    (*(*(a1 + 32) + 16))();
  }

  return MEMORY[0x2821F9730]();
}

- (void)enumerateUnsignedLongLongPropertyValuesForKey:(id)a3 ofNodesWithIdentifiers:(id)a4 usingBlock:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__MAGraph_enumerateUnsignedLongLongPropertyValuesForKey_ofNodesWithIdentifiers_usingBlock___block_invoke;
  v10[3] = &unk_2797FDBB0;
  v11 = v8;
  v9 = v8;
  [(MAGraph *)self enumeratePropertyValuesForKey:a3 ofNodesWithIdentifiers:a4 usingBlock:v10];
}

void __91__MAGraph_enumerateUnsignedLongLongPropertyValuesForKey_ofNodesWithIdentifiers_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if ([v7 kgPropertyType] == 4 || objc_msgSend(v7, "kgPropertyType") == 1)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), a2, [v7 unsignedLongLongValue], a4);
  }
}

- (void)enumerateUnsignedIntegerPropertyValuesForKey:(id)a3 ofNodesWithIdentifiers:(id)a4 usingBlock:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__MAGraph_enumerateUnsignedIntegerPropertyValuesForKey_ofNodesWithIdentifiers_usingBlock___block_invoke;
  v10[3] = &unk_2797FDBB0;
  v11 = v8;
  v9 = v8;
  [(MAGraph *)self enumeratePropertyValuesForKey:a3 ofNodesWithIdentifiers:a4 usingBlock:v10];
}

void __90__MAGraph_enumerateUnsignedIntegerPropertyValuesForKey_ofNodesWithIdentifiers_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if ([v7 kgPropertyType] == 4 || objc_msgSend(v7, "kgPropertyType") == 1)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), a2, [v7 unsignedIntValue], a4);
  }
}

- (void)enumerateDoublePropertyValuesForKey:(id)a3 ofNodesWithIdentifiers:(id)a4 usingBlock:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__MAGraph_enumerateDoublePropertyValuesForKey_ofNodesWithIdentifiers_usingBlock___block_invoke;
  v10[3] = &unk_2797FDBB0;
  v11 = v8;
  v9 = v8;
  [(MAGraph *)self enumeratePropertyValuesForKey:a3 ofNodesWithIdentifiers:a4 usingBlock:v10];
}

void __81__MAGraph_enumerateDoublePropertyValuesForKey_ofNodesWithIdentifiers_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = a3;
  if ([v8 kgPropertyType] == 2)
  {
    v7 = *(a1 + 32);
    [v8 doubleValue];
    (*(v7 + 16))(v7, a2, a4);
  }
}

- (void)enumerateStringPropertyValuesForKey:(id)a3 ofNodesWithIdentifiers:(id)a4 usingBlock:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__MAGraph_enumerateStringPropertyValuesForKey_ofNodesWithIdentifiers_usingBlock___block_invoke;
  v10[3] = &unk_2797FDBB0;
  v11 = v8;
  v9 = v8;
  [(MAGraph *)self enumeratePropertyValuesForKey:a3 ofNodesWithIdentifiers:a4 usingBlock:v10];
}

void __81__MAGraph_enumerateStringPropertyValuesForKey_ofNodesWithIdentifiers_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 kgPropertyType] == 3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)enumerateIntegerPropertyValuesForKey:(id)a3 ofNodesWithIdentifiers:(id)a4 usingBlock:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__MAGraph_enumerateIntegerPropertyValuesForKey_ofNodesWithIdentifiers_usingBlock___block_invoke;
  v10[3] = &unk_2797FDBB0;
  v11 = v8;
  v9 = v8;
  [(MAGraph *)self enumeratePropertyValuesForKey:a3 ofNodesWithIdentifiers:a4 usingBlock:v10];
}

void __82__MAGraph_enumerateIntegerPropertyValuesForKey_ofNodesWithIdentifiers_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if ([v7 kgPropertyType] == 1)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), a2, [v7 integerValue], a4);
  }
}

- (void)enumeratePropertyValuesForKey:(id)a3 ofNodesWithIdentifiers:(id)a4 usingBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(KGElementCollection *)[KGNodeCollection alloc] initWithIdentifiers:v9 graph:self->_graph];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__MAGraph_enumeratePropertyValuesForKey_ofNodesWithIdentifiers_usingBlock___block_invoke;
  v13[3] = &unk_2797FDB88;
  v14 = v8;
  v12 = v8;
  [(KGNodeCollection *)v11 enumeratePropertyValuesForKey:v10 withBlock:v13];
}

uint64_t __75__MAGraph_enumeratePropertyValuesForKey_ofNodesWithIdentifiers_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 kgPropertyValue];
  if (objc_claimAutoreleasedReturnValue())
  {
    (*(*(a1 + 32) + 16))();
  }

  return MEMORY[0x2821F9730]();
}

- (id)abstractEdges
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __24__MAGraph_abstractEdges__block_invoke;
  v6[3] = &unk_2797FFB60;
  v4 = v3;
  v7 = v4;
  [(MAGraph *)v2 enumerateEdgesWithBlock:v6];

  objc_sync_exit(v2);

  return v4;
}

void __24__MAGraph_abstractEdges__block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = @"*";
  v4 = @"*";
  v5 = [v12 label];

  if (v5)
  {
    v3 = [v12 label];
  }

  v6 = [MAAbstractEdge alloc];
  v7 = [v12 domain];
  LODWORD(v8) = 1.0;
  v9 = [(MAAbstractEdge *)v6 initWithLabel:v3 domain:v7 weight:MEMORY[0x277CBEC10] properties:v8];
  v10 = [*(a1 + 32) objectForKeyedSubscript:v9];
  if (v10)
  {
    v11 = v10;
    [v10 addObject:v12];
  }

  else
  {
    v11 = [MEMORY[0x277CBEB58] setWithObject:v12];
    [*(a1 + 32) setObject:v11 forKeyedSubscript:v9];
  }
}

- (void)enumerateEdgesMatchingFilter:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = [(MAGraph *)self edgeIdentifiersMatchingFilter:a3];
  [(MAGraph *)self enumerateEdgesWithIdentifiers:v7 usingBlock:v6];
}

- (void)enumerateEdgesWithIdentifiers:(id)a3 usingBlock:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [(KGGraph *)self->_graph edgesForIdentifiers:v9];
  [v8 enumerateEdgesUsingBlock:v6];

  objc_autoreleasePoolPop(v7);
}

- (id)edgesDomains
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(KGGraph *)self->_graph edgeLabels];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF beginswith 'domain'"];
  v4 = [v2 filteredSetUsingPredicate:v3];
  v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) substringFromIndex:{7, v14}];
        [v5 addIndex:{objc_msgSend(v11, "integerValue")}];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)edgesLabels
{
  v2 = [(KGGraph *)self->_graph edgeLabels];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (SELF beginswith 'domain')"];
  v4 = [v2 filteredSetUsingPredicate:v3];

  return v4;
}

- (unint64_t)numberOfEdgesMatchingFilter:(id)a3
{
  v3 = [(MAGraph *)self edgeIdentifiersMatchingFilter:a3];
  v4 = [v3 count];

  return v4;
}

- (id)edgeIdentifiersMatchingFilter:(id)a3 intersectingIdentifiers:(id)a4
{
  graph = self->_graph;
  v6 = a4;
  v7 = [a3 kgEdgeFilter];
  v8 = [(KGGraph *)graph edgeIdentifiersMatchingFilter:v7 intersectingIdentifiers:v6];

  return v8;
}

- (id)edgeIdentifiersMatchingFilter:(id)a3
{
  graph = self->_graph;
  v4 = [a3 kgEdgeFilter];
  v5 = [(KGGraph *)graph edgeIdentifiersMatchingFilter:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(KGElementIdentifierSet);
  }

  v8 = v7;

  return v8;
}

- (id)edgesForIdentifiers:(id)a3
{
  v3 = [(KGGraph *)self->_graph edgesForIdentifiers:a3];
  v4 = [v3 set];

  return v4;
}

- (void)legacyRemoveEdges:(id)a3
{
  v4 = a3;
  v6 = [(MAElementCollection *)[MAEdgeCollection alloc] initWithSet:v4 graph:self];

  v5 = objc_alloc_init(MAGraphChangeRequest);
  [(MAGraphChangeRequest *)v5 removeEdges:v6];
  [(MAGraph *)self executeGraphChangeRequest:v5];
}

- (id)addEdgeFromBase:(id)a3 sourceNode:(id)a4 targetNode:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 label];
  v12 = [v10 domain];
  [v10 weight];
  v14 = v13;
  v15 = [v10 propertyDictionary];

  LODWORD(v16) = v14;
  v17 = [(MAGraph *)self addEdgeWithLabel:v11 sourceNode:v9 targetNode:v8 domain:v12 weight:v15 properties:v16];

  return v17;
}

- (id)graphNode
{
  v3 = [MAAbstractNode alloc];
  v4 = [(MAGraph *)self identifier];
  v5 = [v4 UUIDString];
  LODWORD(v6) = 1.0;
  v7 = [(MAAbstractNode *)v3 initWithLabel:v5 domain:1 weight:MEMORY[0x277CBEC10] properties:v6];

  return v7;
}

- (id)orphanNodes
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277CBEB58] set];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __22__MAGraph_orphanNodes__block_invoke;
  v8[3] = &unk_2797FF670;
  v9 = v4;
  v5 = v4;
  [(MAGraph *)self enumerateNodesWithBlock:v8];
  v6 = [MEMORY[0x277CBEB98] setWithSet:v5];

  objc_autoreleasePoolPop(v3);

  return v6;
}

void __22__MAGraph_orphanNodes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isOrphan])
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeType:(unint64_t)a4 edgeFilter:(id)a5
{
  graph = self->_graph;
  v8 = a3;
  v9 = [a5 kgEdgeFilter];
  v10 = [(KGGraph *)graph transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:v8 edgeDirection:a4 edgeFilter:v9];

  return v10;
}

- (id)neighborNodeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeType:(unint64_t)a4 edgeFilter:(id)a5
{
  graph = self->_graph;
  v8 = a3;
  v9 = [a5 kgEdgeFilter];
  v10 = [(KGGraph *)graph neighborNodeIdentifiersWithStartNodeIdentifiers:v8 edgeDirection:a4 edgeFilter:v9];

  return v10;
}

- (void)enumerateNodesMatchingFilter:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = [(MAGraph *)self nodeIdentifiersMatchingFilter:a3];
  [(MAGraph *)self enumerateNodesWithIdentifiers:v7 usingBlock:v6];
}

- (void)enumerateNodesWithIdentifiers:(id)a3 sortedByFloatPropertyForName:(id)a4 usingBlock:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = [(KGGraph *)self->_graph nodesForIdentifiers:v12];
  [v11 enumerateNodesSortedByFloatPropertyForName:v8 usingBlock:v9];

  objc_autoreleasePoolPop(v10);
}

- (void)enumerateNodesWithIdentifiers:(id)a3 sortedByIntegerPropertyForName:(id)a4 usingBlock:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = [(KGGraph *)self->_graph nodesForIdentifiers:v12];
  [v11 enumerateNodesSortedByIntegerPropertyForName:v8 usingBlock:v9];

  objc_autoreleasePoolPop(v10);
}

- (void)enumerateNodesWithIdentifiers:(id)a3 sortedByStringPropertyForName:(id)a4 usingBlock:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = [(KGGraph *)self->_graph nodesForIdentifiers:v12];
  [v11 enumerateNodesSortedByStringPropertyForName:v8 usingBlock:v9];

  objc_autoreleasePoolPop(v10);
}

- (void)enumerateNodesWithIdentifiers:(id)a3 usingBlock:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [(KGGraph *)self->_graph nodesForIdentifiers:v9];
  [v8 enumerateNodesUsingBlock:v6];

  objc_autoreleasePoolPop(v7);
}

- (id)adjacencyWithEndNodeIdentifiers:(id)a3 edgeFilter:(id)a4 edgeType:(unint64_t)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(KGDirectedBinaryAdjacency);
  v11 = objc_alloc_init(KGDirectedBinaryAdjacency);
  if ((v5 & 2) != 0)
  {
    v12 = [(MAGraph *)self edgeIdentifiersOfType:1 onNodesForIdentifiers:v8 matchingFilter:v9];
    v13 = [(MAGraph *)self targetsBySourceWithEdgeIdentifiers:v12];

    v10 = v13;
  }

  if (v5)
  {
    v14 = [(MAGraph *)self edgeIdentifiersOfType:2 onNodesForIdentifiers:v8 matchingFilter:v9];
    v15 = [(MAGraph *)self sourcesByTargetWithEdgeIdentifiers:v14];

    v11 = v15;
  }

  v16 = [(KGDirectedBinaryAdjacency *)v10 unionWith:v11];

  return v16;
}

- (id)adjacencyWithStartNodeIdentifiers:(id)a3 edgeFilter:(id)a4 edgeType:(unint64_t)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(KGDirectedBinaryAdjacency);
  v11 = objc_alloc_init(KGDirectedBinaryAdjacency);
  if ((v5 & 2) != 0)
  {
    v12 = [(MAGraph *)self edgeIdentifiersOfType:2 onNodesForIdentifiers:v8 matchingFilter:v9];
    v13 = [(MAGraph *)self targetsBySourceWithEdgeIdentifiers:v12];

    v10 = v13;
  }

  if (v5)
  {
    v14 = [(MAGraph *)self edgeIdentifiersOfType:1 onNodesForIdentifiers:v8 matchingFilter:v9];
    v15 = [(MAGraph *)self sourcesByTargetWithEdgeIdentifiers:v14];

    v11 = v15;
  }

  v16 = [(KGDirectedBinaryAdjacency *)v10 unionWith:v11];

  return v16;
}

- (void)labelsAndDomainsOfEdgesForIdentifiers:(id)a3 labels:(id *)a4 domains:(id *)a5
{
  v7 = [(KGGraph *)self->_graph labelsOfEdgesForIdentifiers:a3];
  MALabelsAndDomainsFromKGLabels(v7, a4, a5);
}

- (void)labelsAndDomainsOfNodesForIdentifiers:(id)a3 labels:(id *)a4 domains:(id *)a5
{
  v7 = [(KGGraph *)self->_graph labelsOfNodesForIdentifiers:a3];
  MALabelsAndDomainsFromKGLabels(v7, a4, a5);
}

- (id)nodesDomains
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(KGGraph *)self->_graph nodeLabels];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [MAKGDomainConversion maDomainForKGLabel:*(*(&v12 + 1) + 8 * i)];
        if (v9 != 0xFFFF)
        {
          [v3 addIndex:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)nodesLabels
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(KGGraph *)self->_graph nodeLabels];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([MAKGDomainConversion maDomainForKGLabel:v9]== 0xFFFF)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (unint64_t)numberOfNodesMatchingFilter:(id)a3
{
  v3 = [(MAGraph *)self nodeIdentifiersMatchingFilter:a3];
  v4 = [v3 count];

  return v4;
}

- (id)anyNodeMatchingFilter:(id)a3
{
  v4 = [(MAGraph *)self nodeIdentifiersMatchingFilter:a3];
  v5 = -[KGGraph nodeForIdentifier:](self->_graph, "nodeForIdentifier:", [v4 firstElement]);

  return v5;
}

- (id)nodeIdentifiersMatchingFilter:(id)a3 intersectingIdentifiers:(id)a4
{
  graph = self->_graph;
  v6 = a4;
  v7 = [a3 kgNodeFilter];
  v8 = [(KGGraph *)graph nodeIdentifiersMatchingFilter:v7 intersectingIdentifiers:v6];

  return v8;
}

- (id)nodeIdentifiersMatchingFilter:(id)a3
{
  graph = self->_graph;
  v4 = [a3 kgNodeFilter];
  v5 = [(KGGraph *)graph nodeIdentifiersMatchingFilter:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(KGElementIdentifierSet);
  }

  v8 = v7;

  return v8;
}

- (id)nodesForIdentifiers:(id)a3
{
  v3 = [(KGGraph *)self->_graph nodesForIdentifiers:a3];
  v4 = [v3 set];

  return v4;
}

- (void)legacyRemoveNodes:(id)a3
{
  v4 = a3;
  v6 = [(MAElementCollection *)[MANodeCollection alloc] initWithSet:v4 graph:self];

  v5 = objc_alloc_init(MAGraphChangeRequest);
  [(MAGraphChangeRequest *)v5 removeNodes:v6];
  [(MAGraph *)self executeGraphChangeRequest:v5];
}

void __81__MAGraph_addUniquelyIdentifiedNodeWithLabel_domain_weight_properties_didCreate___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 isIdentifiedByProperties:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (BOOL)findAndResolveUniqueEdge:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 sourceNode];
  v7 = [v6 identifier];

  v8 = [v4 targetNode];
  v9 = [v8 identifier];

  v10 = 0;
  if (v7 && v9)
  {
    v11 = [[KGElementIdentifierSet alloc] initWithElementIdentifier:v7];
    v12 = [[KGElementIdentifierSet alloc] initWithElementIdentifier:v9];
    v13 = [v4 uniquelyIdentifyingFilter];
    v14 = [(MAGraph *)self edgeIdentifiersOfType:2 betweenNodesForIdentifiers:v11 andNodesForIdentifiers:v12 matchingFilter:v13];
    v15 = [v14 count];
    v10 = v15 != 0;
    if (v15)
    {
      v16 = v15;
      if (v15 != 1)
      {
        v17 = KGLoggingConnection();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          v21 = 134218242;
          v22 = v16;
          v23 = 2112;
          v24 = v13;
          _os_log_fault_impl(&dword_255870000, v17, OS_LOG_TYPE_FAULT, "(%lu) edges found for unique insert with filter %@", &v21, 0x16u);
        }
      }

      v18 = [(MAGraph *)self graphReference];
      [v4 setGraphReference:v18];

      [v4 resolveIdentifier:{objc_msgSend(v14, "firstElement")}];
    }
  }

  objc_autoreleasePoolPop(v5);

  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)addUniqueNode:(id)a3 didInsert:(BOOL *)a4
{
  v8 = a3;
  v6 = [(MAGraph *)self findAndResolveUniqueNode:?];
  if (a4)
  {
    *a4 = !v6;
  }

  if (!v6)
  {
    v7 = objc_alloc_init(MAGraphChangeRequest);
    [(MAGraphChangeRequest *)v7 addNode:v8];
    [(MAGraph *)self executeGraphChangeRequest:v7];
  }
}

- (BOOL)findAndResolveUniqueNode:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uniquelyIdentifyingFilter];
  v6 = [(MAGraph *)self nodeIdentifiersMatchingFilter:v5];
  v7 = [v6 count];
  v8 = v7;
  if (v7)
  {
    if (v7 != 1)
    {
      v9 = KGLoggingConnection();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v13 = 134218242;
        v14 = v8;
        v15 = 2112;
        v16 = v5;
        _os_log_fault_impl(&dword_255870000, v9, OS_LOG_TYPE_FAULT, "(%lu) nodes found for unique insert with filter %@", &v13, 0x16u);
      }
    }

    v10 = [(MAGraph *)self graphReference];
    [v4 setGraphReference:v10];

    [v4 resolveIdentifier:{objc_msgSend(v6, "firstElement")}];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8 != 0;
}

- (id)addNodeFromBase:(id)a3
{
  v4 = a3;
  v5 = [v4 label];
  v6 = [v4 domain];
  [v4 weight];
  v8 = v7;
  v9 = [v4 propertyDictionary];

  LODWORD(v10) = v8;
  v11 = [(MAGraph *)self _addNodeWithLabel:v5 domain:v6 weight:v9 properties:v10];

  return v11;
}

- (void)executeGraphChangeRequest:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(KGGraphChangeRequest);
  if ([v4 numberOfChanges])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v6 = [v4 nodesToInsert];
    v7 = [v6 countByEnumeratingWithState:&v33 objects:v40 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v34;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v34 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v33 + 1) + 8 * i);
          [(KGGraphChangeRequest *)v5 insertNode:v11];
          v12 = [(MAGraph *)self specification];
          v13 = [v12 rootGraphReference];
          [v11 setGraphReference:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v33 objects:v40 count:16];
      }

      while (v8);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = [v4 edgesToInsert];
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v29 + 1) + 8 * j);
          [(KGGraphChangeRequest *)v5 insertEdge:v19];
          v20 = [(MAGraph *)self specification];
          v21 = [v20 rootGraphReference];
          [v19 setGraphReference:v21];
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v16);
    }

    v22 = [v4 nodeIdentifiersToRemove];
    if ([v22 count])
    {
      [(KGGraphChangeRequest *)v5 removeNodesForIdentifiers:v22];
    }

    v23 = [v4 edgeIdentifiersToRemove];
    if ([v23 count])
    {
      [(KGGraphChangeRequest *)v5 removeEdgesForIdentifiers:v23];
    }

    graph = self->_graph;
    v28 = 0;
    v25 = [(KGMutableGraph *)graph performChangesAndWait:v5 error:&v28];
    v26 = v28;
    if (!v25)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v38 = v26;
        _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error executing request: %@", buf, 0xCu);
      }

      [(MAGraph *)self setHadFatalError];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)usesClassCDataProtection
{
  v2 = [(MAGraph *)self specification];
  v3 = ([v2 persistenceOptions] >> 5) & 1;

  return v3;
}

- (BOOL)usesClassBDataProtection
{
  v2 = [(MAGraph *)self specification];
  v3 = ([v2 persistenceOptions] >> 4) & 1;

  return v3;
}

- (BOOL)usesClassADataProtection
{
  v2 = [(MAGraph *)self specification];
  v3 = ([v2 persistenceOptions] >> 3) & 1;

  return v3;
}

- (BOOL)isReadOnly
{
  v2 = [(MAGraph *)self specification];
  v3 = ([v2 persistenceOptions] >> 2) & 1;

  return v3;
}

- (void)rollbackBatch
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(KGStoredGraph *)self->_graph store];
  v7 = 0;
  v4 = [v3 rollbackTransactionWithError:&v7];
  v5 = v7;

  if ((v4 & 1) == 0)
  {
    [(MAGraph *)self setHadFatalError];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error rolling back transaction: %@", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)leaveBatch
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(MAGraph *)self noFatalError];
  v4 = [(KGStoredGraph *)self->_graph store];
  v5 = v4;
  if (v3)
  {
    v10 = 0;
    v6 = [v4 commitTransactionWithError:&v10];
    v7 = v10;

    if ((v6 & 1) == 0)
    {
      [(MAGraph *)self setHadFatalError];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v7;
        _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error committing transaction: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = 0;
    [v4 rollbackTransactionWithError:&v9];
    v7 = v9;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)enterBatch
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(KGStoredGraph *)self->_graph store];
  v7 = 0;
  v4 = [v3 beginTransactionWithError:&v7];
  v5 = v7;

  if ((v4 & 1) == 0)
  {
    [(MAGraph *)self setHadFatalError];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error beginning transaction: %@", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (NSUUID)identifier
{
  v2 = [(KGStoredGraph *)self->_graph store];
  v3 = [v2 graphIdentifier];

  return v3;
}

- (void)setVersion:(unint64_t)a3
{
  v4 = [(KGStoredGraph *)self->_graph store];
  [v4 setGraphVersion:a3];
}

- (unint64_t)version
{
  v2 = [(KGStoredGraph *)self->_graph store];
  v3 = [v2 graphVersion];

  return v3;
}

- (void)labelAndDomainFromLabels:(id)a3 outLabel:(id *)a4 outDomain:(unsigned __int16 *)a5
{
  v20 = a4;
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  os_unfair_lock_lock(&self->_labelMapLock);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [(NSMutableDictionary *)self->_domainByLabel objectForKeyedSubscript:v13, v20];
        if (v14)
        {
          v15 = v14;
          v16 = [v14 unsignedShortValue];
        }

        else
        {
          v17 = [MAKGDomainConversion maDomainForKGLabel:v13];
          if (v17 == 0xFFFF)
          {
            v15 = v10;
            v16 = -1;
            v10 = v13;
          }

          else
          {
            v16 = v17;
            v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v17];
            [(NSMutableDictionary *)self->_domainByLabel setObject:v15 forKeyedSubscript:v13];
            [(NSMutableDictionary *)self->_labelByDomain setObject:v13 forKeyedSubscript:v15];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v16 = -1;
  }

  os_unfair_lock_unlock(&self->_labelMapLock);
  if (v20)
  {
    v18 = v10;
    *v20 = v10;
  }

  if (a5)
  {
    *a5 = v16;
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)noFatalError
{
  if (self->_databaseStatus == 1)
  {
    v3 = [(KGGraph *)self->_graph noFatalError];
    if (v3)
    {
      LOBYTE(v3) = self->_databaseStatus == 1;
    }

    else
    {
      self->_databaseStatus = 0;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)dealloc
{
  [(MAGraph *)self closePersistentStore];
  v3.receiver = self;
  v3.super_class = MAGraph;
  [(MAGraph *)&v3 dealloc];
}

- (MAGraph)initWithPersistenceOptions:(int64_t)a3
{
  v4 = [(MAGraph *)self init];
  v5 = v4;
  if (v4)
  {
    [(MAGraphSpecification *)v4->_specification setPersistenceOptions:a3];
  }

  return v5;
}

- (MAGraph)initWithSpecification:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = MAGraph;
  v5 = [(MAGraph *)&v20 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 copy];
    }

    else
    {
      v6 = [objc_opt_class() defaultSpecification];
    }

    specification = v5->_specification;
    v5->_specification = v6;

    v8 = [[MAGraphReference alloc] initWithGraph:v5];
    [(MAGraphSpecification *)v5->_specification setRootGraphReference:v8];

    v9 = [MAKGEntityFactory alloc];
    v10 = [(MAGraph *)v5 specification];
    v11 = [(MAKGEntityFactory *)v9 initWithSpecification:v10];

    v12 = objc_alloc_init(KGMemoryGraphStore);
    v13 = [[KGStoredGraph alloc] initGraphWithStore:v12 entityFactory:v11];
    graph = v5->_graph;
    v5->_graph = v13;

    v15 = [MEMORY[0x277CBEB38] dictionary];
    labelByDomain = v5->_labelByDomain;
    v5->_labelByDomain = v15;

    v17 = [MEMORY[0x277CBEB38] dictionary];
    domainByLabel = v5->_domainByLabel;
    v5->_domainByLabel = v17;

    v5->_labelMapLock._os_unfair_lock_opaque = 0;
    v5->_databaseStatus = 1;
  }

  return v5;
}

+ (id)defaultSpecification
{
  v2 = objc_alloc_init(MAGraphSpecification);

  return v2;
}

+ (id)graph
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    dispatch_once(&initialize_onceToken, &__block_literal_global_468);
  }
}

- (void)mergeWithGraph:(id)a3 strictNodes:(BOOL)a4 strictEdges:(BOOL)a5 saveToDatabase:(BOOL)a6 createdNodes:(id *)a7 createdEdges:(id *)a8
{
  v13 = MEMORY[0x277CBEB58];
  v14 = a3;
  v15 = [v13 set];
  v16 = [MEMORY[0x277CBEB58] set];
  v17 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __106__MAGraph_Merge_Private__mergeWithGraph_strictNodes_strictEdges_saveToDatabase_createdNodes_createdEdges___block_invoke;
  v29[3] = &unk_2797FED38;
  v32 = a4;
  v29[4] = self;
  v18 = v17;
  v30 = v18;
  v19 = v15;
  v31 = v19;
  [v14 enumerateNodesWithBlock:v29];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __106__MAGraph_Merge_Private__mergeWithGraph_strictNodes_strictEdges_saveToDatabase_createdNodes_createdEdges___block_invoke_2;
  v24[3] = &unk_2797FED90;
  v28 = a5;
  v25 = v18;
  v26 = self;
  v20 = v16;
  v27 = v20;
  v21 = v18;
  [v14 enumerateEdgesWithBlock:v24];

  if (a7)
  {
    v22 = v19;
    *a7 = v19;
  }

  if (a8)
  {
    v23 = v20;
    *a8 = v20;
  }
}

void __106__MAGraph_Merge_Private__mergeWithGraph_strictNodes_strictEdges_saveToDatabase_createdNodes_createdEdges___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(a1 + 56) & 1) == 0)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__2876;
    v23 = __Block_byref_object_dispose__2877;
    v24 = [*(a1 + 32) nodeForIdentifier:{objc_msgSend(v3, "identifier")}];
    v6 = v20;
    v7 = v20[5];
    if (v7)
    {
      v8 = [v7 isEqualToNode:v4];
      v6 = v20;
      if (v8)
      {
        [*(a1 + 40) setObject:v20[5] forKey:v4];
        _Block_object_dispose(&v19, 8);

        goto LABEL_3;
      }

      v9 = v20[5];
    }

    else
    {
      v9 = 0;
    }

    v6[5] = 0;

    v10 = *(a1 + 32);
    v11 = [v4 label];
    v12 = [v4 domain];
    v13 = [v4 propertyDictionary];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __106__MAGraph_Merge_Private__mergeWithGraph_strictNodes_strictEdges_saveToDatabase_createdNodes_createdEdges___block_invoke_2;
    v15[3] = &unk_2797FED10;
    v16 = *(a1 + 40);
    v17 = v4;
    v18 = &v19;
    [v10 enumerateNodesWithLabel:v11 domain:v12 properties:v13 usingBlock:v15];

    v14 = v20[5];
    _Block_object_dispose(&v19, 8);

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v5 = [*(a1 + 32) addNodeFromBase:v4];
  [*(a1 + 48) addObject:v5];
  [*(a1 + 40) setObject:v5 forKey:v4];

LABEL_3:
}

void __106__MAGraph_Merge_Private__mergeWithGraph_strictNodes_strictEdges_saveToDatabase_createdNodes_createdEdges___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 sourceNode];
  v6 = [v4 objectForKey:v5];

  v7 = *(a1 + 32);
  v8 = [v3 targetNode];
  v9 = [v7 objectForKey:v8];

  if (!v6 || !v9)
  {
    [MEMORY[0x277CBEAD8] raise:@"MAGraphInvalidGraph" format:{@"Graph invalid for edge %@", v3}];
    goto LABEL_7;
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v11 = [*(a1 + 40) edgeForIdentifier:{objc_msgSend(v3, "identifier")}];
    v10 = v11;
    if (v11 && ([v11 isEqualToEdge:v3] & 1) != 0)
    {
      goto LABEL_5;
    }

    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__2876;
    v23 = __Block_byref_object_dispose__2877;
    v24 = 0;
    v12 = [v3 label];
    v13 = [v3 domain];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __106__MAGraph_Merge_Private__mergeWithGraph_strictNodes_strictEdges_saveToDatabase_createdNodes_createdEdges___block_invoke_3;
    v15[3] = &unk_2797FED68;
    v16 = v9;
    v17 = v3;
    v18 = &v19;
    [v6 enumerateEdgesWithLabel:v12 domain:v13 usingBlock:v15];

    v14 = v20[5];
    _Block_object_dispose(&v19, 8);

    if (v14)
    {
      goto LABEL_7;
    }
  }

  v10 = [*(a1 + 40) addEdgeFromBase:v3 sourceNode:v6 targetNode:v9];
  [*(a1 + 48) addObject:v10];
LABEL_5:

LABEL_7:
}

void __106__MAGraph_Merge_Private__mergeWithGraph_strictNodes_strictEdges_saveToDatabase_createdNodes_createdEdges___block_invoke_3(void *a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 targetNode];
  v7 = [v6 isEqualToNode:a1[4]];

  if (v7 && [v8 isEqualToEdge:a1[5]])
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *a3 = 1;
  }
}

void __106__MAGraph_Merge_Private__mergeWithGraph_strictNodes_strictEdges_saveToDatabase_createdNodes_createdEdges___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  [*(a1 + 32) setObject:v5 forKey:*(a1 + 40)];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *a3 = 1;
}

- (void)persistWeight:(float)a3 forEdgeWithIdentifier:(unint64_t)a4
{
  v29[1] = *MEMORY[0x277D85DE8];
  v6 = [(KGGraph *)self->_graph edgeForIdentifier:a4];
  [v6 weight];
  v8 = v7;
  v9 = objc_alloc_init(KGGraphChangeRequest);
  v28 = @"__weight";
  v10 = a3;
  v11 = [[KGDoublePropertyValue alloc] initWithValue:v10];
  v29[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  [(KGGraphChangeRequest *)v9 updateEdge:v6 newProperties:v12];

  graph = self->_graph;
  v17 = 0;
  LOBYTE(v12) = [(KGMutableGraph *)graph performChangesAndWait:v9 error:&v17];
  v14 = v17;
  if ((v12 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v16 = [v6 identifier];
      *buf = 138413314;
      v19 = v6;
      v20 = 2048;
      v21 = v16;
      v22 = 2048;
      v23 = v8;
      v24 = 2048;
      v25 = v10;
      v26 = 2112;
      v27 = v14;
      _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error persisting weight for edge(%@) identifier(%lu) old weight(%f) new weight(%f) error(%@)", buf, 0x34u);
    }

    [(MAGraph *)self setHadFatalError];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)persistWeight:(float)a3 forNodeWithIdentifier:(unint64_t)a4
{
  v29[1] = *MEMORY[0x277D85DE8];
  v6 = [(KGGraph *)self->_graph nodeForIdentifier:a4];
  [v6 weight];
  v8 = v7;
  v9 = objc_alloc_init(KGGraphChangeRequest);
  v28 = @"__weight";
  v10 = a3;
  v11 = [[KGDoublePropertyValue alloc] initWithValue:v10];
  v29[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  [(KGGraphChangeRequest *)v9 updateNode:v6 newProperties:v12];

  graph = self->_graph;
  v17 = 0;
  LOBYTE(v12) = [(KGMutableGraph *)graph performChangesAndWait:v9 error:&v17];
  v14 = v17;
  if ((v12 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v16 = [v6 identifier];
      *buf = 138413314;
      v19 = v6;
      v20 = 2048;
      v21 = v16;
      v22 = 2048;
      v23 = v8;
      v24 = 2048;
      v25 = v10;
      v26 = 2112;
      v27 = v14;
      _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error persisting weight for node(%@) identifier(%lu) old weight(%f) new weight(%f) error(%@)", buf, 0x34u);
    }

    [(MAGraph *)self setHadFatalError];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeModelPropertiesForEdgeWithIdentifier:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [(KGGraph *)self->_graph edgeForIdentifier:a3];
  v5 = objc_alloc_init(KGGraphChangeRequest);
  [(KGGraphChangeRequest *)v5 updateEdge:v4 newProperties:MEMORY[0x277CBEC10]];
  graph = self->_graph;
  v10 = 0;
  v7 = [(KGMutableGraph *)graph performChangesAndWait:v5 error:&v10];
  v8 = v10;
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error persisting node properties for edge %@", buf, 0xCu);
    }

    [(MAGraph *)self setHadFatalError];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeModelPropertyForKey:(id)a3 forEdgeWithIdentifier:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  graph = self->_graph;
  v7 = a3;
  v8 = [(KGGraph *)graph edgeForIdentifier:a4];
  v9 = [v8 properties];
  v10 = [v9 mutableCopy];

  [v10 removeObjectForKey:v7];
  v11 = objc_alloc_init(KGGraphChangeRequest);
  [(KGGraphChangeRequest *)v11 updateEdge:v8 newProperties:v10];
  v12 = self->_graph;
  v16 = 0;
  v13 = [(KGMutableGraph *)v12 performChangesAndWait:v11 error:&v16];
  v14 = v16;
  if (!v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error persisting edge properties for node %@", buf, 0xCu);
    }

    [(MAGraph *)self setHadFatalError];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)persistModelProperties:(id)a3 forEdgeWithIdentifier:(unint64_t)a4 clobberExisting:(BOOL)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = [KGPropertyValue kgPropertiesWithMAProperties:a3];
  if (v8)
  {
    v9 = v8;
    v10 = [(KGGraph *)self->_graph edgeForIdentifier:a4];
    v11 = v10;
    if (!a5)
    {
      v12 = [v10 properties];
      v13 = [v12 mutableCopy];

      [v13 addEntriesFromDictionary:v9];
      v9 = v13;
    }

    v14 = objc_alloc_init(KGGraphChangeRequest);
    [(KGGraphChangeRequest *)v14 updateEdge:v11 newProperties:v9];
    graph = self->_graph;
    v19 = 0;
    v16 = [(KGMutableGraph *)graph performChangesAndWait:v14 error:&v19];
    v17 = v19;
    if (!v16)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v11;
        _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error persisting edge properties for edge %@", buf, 0xCu);
      }

      [(MAGraph *)self setHadFatalError];
    }
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    *buf = 138412546;
    v21 = 0;
    v22 = 2112;
    v23 = v9;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error persisting edge properties %@ for edge with identifier %@", buf, 0x16u);
  }

LABEL_11:
  v18 = *MEMORY[0x277D85DE8];
}

- (void)persistModelProperty:(id)a3 forKey:(id)a4 forEdgeWithIdentifier:(unint64_t)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [KGPropertyValue kgPropertyValueWithMAPropertyValue:v8];
  if (v10)
  {
    v11 = [(KGGraph *)self->_graph edgeForIdentifier:a5];
    v12 = [v11 properties];
    v13 = [v12 mutableCopy];

    [v13 setObject:v10 forKeyedSubscript:v9];
    v14 = objc_alloc_init(KGGraphChangeRequest);
    [(KGGraphChangeRequest *)v14 updateEdge:v11 newProperties:v13];
    graph = self->_graph;
    v20 = 0;
    v16 = [(KGMutableGraph *)graph performChangesAndWait:v14 error:&v20];
    v17 = v20;
    if (!v16)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v11;
        _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error persisting edge property for edge %@", buf, 0xCu);
      }

      [(MAGraph *)self setHadFatalError];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
    *buf = 138412546;
    v22 = v8;
    v23 = 2112;
    v24 = v19;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error persisting edge property %@ for edge with identifier %@", buf, 0x16u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)removeModelPropertiesForNodeWithIdentifier:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [(KGGraph *)self->_graph nodeForIdentifier:a3];
  v5 = objc_alloc_init(KGGraphChangeRequest);
  [(KGGraphChangeRequest *)v5 updateNode:v4 newProperties:MEMORY[0x277CBEC10]];
  graph = self->_graph;
  v10 = 0;
  v7 = [(KGMutableGraph *)graph performChangesAndWait:v5 error:&v10];
  v8 = v10;
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error removing node properties for node %@", buf, 0xCu);
    }

    [(MAGraph *)self setHadFatalError];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeModelPropertyForKey:(id)a3 forNodeWithIdentifier:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  graph = self->_graph;
  v7 = a3;
  v8 = [(KGGraph *)graph nodeForIdentifier:a4];
  v9 = [v8 properties];
  v10 = [v9 mutableCopy];

  [v10 removeObjectForKey:v7];
  v11 = objc_alloc_init(KGGraphChangeRequest);
  [(KGGraphChangeRequest *)v11 updateNode:v8 newProperties:v10];
  v12 = self->_graph;
  v16 = 0;
  v13 = [(KGMutableGraph *)v12 performChangesAndWait:v11 error:&v16];
  v14 = v16;
  if (!v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error removing node property for node %@", buf, 0xCu);
    }

    [(MAGraph *)self setHadFatalError];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)persistModelProperties:(id)a3 forNodeWithIdentifier:(unint64_t)a4 clobberExisting:(BOOL)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = [KGPropertyValue kgPropertiesWithMAProperties:a3];
  if (v8)
  {
    v9 = v8;
    v10 = [(KGGraph *)self->_graph nodeForIdentifier:a4];
    v11 = v10;
    if (!a5)
    {
      v12 = [v10 properties];
      v13 = [v12 mutableCopy];

      [v13 addEntriesFromDictionary:v9];
      v9 = v13;
    }

    v14 = objc_alloc_init(KGGraphChangeRequest);
    [(KGGraphChangeRequest *)v14 updateNode:v11 newProperties:v9];
    graph = self->_graph;
    v19 = 0;
    v16 = [(KGMutableGraph *)graph performChangesAndWait:v14 error:&v19];
    v17 = v19;
    if (!v16)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v11;
        _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error persisting node properties for node %@", buf, 0xCu);
      }

      [(MAGraph *)self setHadFatalError];
    }
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    *buf = 138412546;
    v21 = 0;
    v22 = 2112;
    v23 = v9;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error persisting node properties %@ for node with identifier %@", buf, 0x16u);
  }

LABEL_11:
  v18 = *MEMORY[0x277D85DE8];
}

- (void)persistModelProperty:(id)a3 forKey:(id)a4 forNodeWithIdentifier:(unint64_t)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [KGPropertyValue kgPropertyValueWithMAPropertyValue:v8];
  if (v10)
  {
    v11 = [(KGGraph *)self->_graph nodeForIdentifier:a5];
    v12 = [v11 properties];
    v13 = [v12 mutableCopy];

    [v13 setObject:v10 forKeyedSubscript:v9];
    v14 = objc_alloc_init(KGGraphChangeRequest);
    [(KGGraphChangeRequest *)v14 updateNode:v11 newProperties:v13];
    graph = self->_graph;
    v20 = 0;
    v16 = [(KGMutableGraph *)graph performChangesAndWait:v14 error:&v20];
    v17 = v20;
    if (!v16)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v11;
        _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error persisting node property for node %@", buf, 0xCu);
      }

      [(MAGraph *)self setHadFatalError];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
    *buf = 138412546;
    v22 = v8;
    v23 = 2112;
    v24 = v19;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error persisting node property %@ for node with identifier %@", buf, 0x16u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)copyPersistentStoreToURL:(id)a3 error:(id *)a4
{
  graph = self->_graph;
  v6 = a3;
  v7 = [(KGStoredGraph *)graph store];
  LOBYTE(a4) = [v7 copyToURL:v6 error:a4];

  return a4;
}

- (void)closePersistentStore
{
  v3 = [(KGStoredGraph *)self->_graph store];
  [v3 close];

  graph = self->_graph;
  self->_graph = 0;
}

- (BOOL)migratePersistentStoreToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(KGStoredGraph *)self->_graph store];
  v8 = [v7 url];

  v9 = [(KGStoredGraph *)self->_graph store];
  [v9 close];

  graph = self->_graph;
  self->_graph = 0;

  if ([objc_opt_class() migratePersistentStoreFromURL:v8 toURL:v6 error:a4])
  {
    v11 = [(MAGraph *)self _instantiateGraphWithStoreAtURL:v6 error:a4];
    v12 = self->_graph;
    self->_graph = v11;

    v13 = self->_graph != 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)unloadDomains:(id)a3
{
  v5 = a3;
  v6 = KGMethodNotImplentedException(self, a2);
  objc_exception_throw(v6);
}

- (void)unloadEdge:(id)a3
{
  v5 = a3;
  v6 = KGMethodNotImplentedException(self, a2);
  objc_exception_throw(v6);
}

- (void)loadDomains:(id)a3
{
  v5 = a3;
  v6 = KGMethodNotImplentedException(self, a2);
  objc_exception_throw(v6);
}

- (id)databaseURL
{
  v2 = [(KGStoredGraph *)self->_graph store];
  v3 = [v2 url];

  return v3;
}

- (MAGraph)initWithSpecification:(id)a3 persistenceStoreURL:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(MAGraph *)self initWithSpecification:a3];
  v10 = v9;
  if (v9)
  {
    v11 = [(MAGraph *)v9 _instantiateGraphWithStoreAtURL:v8 error:a5];
    graph = v10->_graph;
    v10->_graph = v11;

    if (!v10->_graph)
    {

      v10 = 0;
    }
  }

  return v10;
}

- (MAGraph)initWithPersistentStoreURL:(id)a3 options:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [objc_opt_class() defaultSpecification];
  [v9 setPersistenceOptions:a4];
  v10 = [(MAGraph *)self initWithSpecification:v9 persistenceStoreURL:v8 error:a5];

  return v10;
}

- (id)_instantiateGraphWithStoreAtURL:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MAKGEntityFactory alloc];
  v8 = [(MAGraph *)self specification];
  v9 = [(MAKGEntityFactory *)v7 initWithSpecification:v8];

  v10 = [[KGDegasGraphStore alloc] initWithURL:v6];
  if ([(MAGraph *)self isReadOnly])
  {
    v11 = 1;
  }

  else
  {
    v11 = 6;
  }

  if ([(MAGraph *)self usesClassCDataProtection])
  {
    v11 |= 0x10uLL;
  }

  else if ([(MAGraph *)self usesClassBDataProtection])
  {
    v11 |= 0x20uLL;
  }

  else if ([(MAGraph *)self usesClassADataProtection])
  {
    v11 |= 0x40uLL;
  }

  if ([(MAGraph *)self _shouldFail])
  {
    v12 = v11 | 0x10000;
  }

  else
  {
    v12 = v11;
  }

  v20 = 0;
  v13 = [(KGDegasGraphStore *)v10 openWithMode:v12 error:&v20];
  v14 = v20;
  if (v13)
  {
    v15 = [[KGStoredGraph alloc] initGraphWithStore:v10 entityFactory:v9];
  }

  else
  {
    v16 = KGLoggingConnection();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v14;
      _os_log_error_impl(&dword_255870000, v16, OS_LOG_TYPE_ERROR, "Opening graph store failed: %@", buf, 0xCu);
    }

    [(MAGraph *)self setHadFatalError];
    if (a4)
    {
      v17 = v14;
      v15 = 0;
      *a4 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)_shouldFail
{
  v2 = [(MAGraph *)self specification];
  v3 = ([v2 persistenceOptions] >> 8) & 1;

  return v3;
}

- (id)edgeFromFetchedRowWithIdentifier:(int)a3 domain:(signed __int16)a4 label:(id)a5 weight:(float)a6 properties:(id)a7 sourceNodeIdentifier:(int)a8 targetNodeIdentifier:(int)a9
{
  v12 = a5;
  v13 = a7;
  v14 = KGMethodNotImplentedException(self, a2);
  objc_exception_throw(v14);
}

- (id)nodeFromFetchedRowWithIdentifier:(int)a3 domain:(signed __int16)a4 label:(id)a5 weight:(float)a6 properties:(id)a7
{
  v10 = a5;
  v11 = a7;
  v12 = KGMethodNotImplentedException(self, a2);
  objc_exception_throw(v12);
}

+ (id)persistentStoreURLWithPath:(id)a3 andName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 persistentStoreFileExtension];
  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];

  v10 = [v9 URLByAppendingPathComponent:v6];

  v11 = [v10 URLByAppendingPathExtension:v8];

  return v11;
}

- (BOOL)writeGraphJSONToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MAGraph *)self _graphJSONDictionary];
  v8 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v9 = [v6 URLByDeletingLastPathComponent];
  v10 = [v9 path];
  v11 = [v8 fileExistsAtPath:v10];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v18 = 0;
    [v8 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v18];
    v12 = v18;
  }

  v13 = [objc_alloc(MEMORY[0x277CBEB78]) initWithURL:v6 append:0];
  v14 = v13;
  if (v12 || !v13)
  {
    if (a4)
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot write data to URL %@", v6];
      *a4 = [v15 errorWithDescription:v16];

      LOBYTE(a4) = 0;
    }
  }

  else
  {
    [v13 open];
    a4 = [MEMORY[0x277CCAAA0] writeJSONObject:v7 toStream:v14 options:0 error:a4];
    [v14 close];
    if (a4)
    {
      LOBYTE(a4) = 1;
    }

    else
    {
      [v8 removeItemAtURL:v6 error:0];
    }
  }

  return a4;
}

- (id)_graphJSONDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(MAGraph *)self identifier];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKey:@"id"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MAGraph version](self, "version")}];
  [v3 setObject:v6 forKey:@"version"];

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __45__MAGraph_File_Private___graphJSONDictionary__block_invoke;
  v17[3] = &unk_2797FF670;
  v18 = v7;
  v8 = v7;
  [(MAGraph *)self enumerateNodesWithBlock:v17];
  [v3 setObject:v8 forKey:@"nodes"];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __45__MAGraph_File_Private___graphJSONDictionary__block_invoke_2;
  v15 = &unk_2797FFB60;
  v16 = v9;
  v10 = v9;
  [(MAGraph *)self enumerateEdgesWithBlock:&v12];
  [v3 setObject:v10 forKey:{@"edges", v12, v13, v14, v15}];

  return v3;
}

void __45__MAGraph_File_Private___graphJSONDictionary__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v14 = objc_alloc_init(v3);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "identifier")}];
  [v14 setObject:v5 forKey:@"id"];

  v6 = [v4 label];
  [v14 setObject:v6 forKey:@"name"];

  v7 = [v4 propertyDictionary];
  [v14 setObject:v7 forKey:@"properties"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v4, "domain")}];
  [v14 setObject:v8 forKey:@"domain"];

  v9 = MEMORY[0x277CCABB0];
  [v4 weight];
  v10 = [v9 numberWithFloat:?];
  [v14 setObject:v10 forKey:@"weight"];

  v11 = MEMORY[0x277CCABB0];
  v12 = [v4 domain];

  v13 = [v11 numberWithUnsignedShort:v12];
  [v14 setObject:v13 forKey:@"cluster"];

  [*(a1 + 32) addObject:v14];
}

void __45__MAGraph_File_Private___graphJSONDictionary__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v17 = objc_alloc_init(v3);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "identifier")}];
  [v17 setObject:v5 forKey:@"id"];

  v6 = [v4 label];
  [v17 setObject:v6 forKey:@"name"];

  v7 = [v4 propertyDictionary];
  [v17 setObject:v7 forKey:@"properties"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v4, "domain")}];
  [v17 setObject:v8 forKey:@"domain"];

  v9 = MEMORY[0x277CCABB0];
  [v4 weight];
  v10 = [v9 numberWithFloat:?];
  [v17 setObject:v10 forKey:@"weight"];

  v11 = MEMORY[0x277CCABB0];
  v12 = [v4 sourceNode];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "identifier")}];
  [v17 setObject:v13 forKey:@"source"];

  v14 = MEMORY[0x277CCABB0];
  v15 = [v4 targetNode];

  v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(v15, "identifier")}];
  [v17 setObject:v16 forKey:@"target"];

  [*(a1 + 32) addObject:v17];
}

- (MAGraph)initWithGraphJSONURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = KGMethodNotImplentedException(self, a2);
  objc_exception_throw(v7);
}

- (MAGraph)initWithGraphMLURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = KGMethodNotImplentedException(self, a2);
  objc_exception_throw(v7);
}

- (MAGraph)initWithSpecification:(id)a3 dataURL:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(MAGraph *)self initWithSpecification:a3];
  if (!v9)
  {
LABEL_5:
    v11 = v9;
    goto LABEL_10;
  }

  v10 = [objc_alloc(MEMORY[0x277CBEAE0]) initWithURL:v8];
  [v10 open];
  if (v10)
  {
    v11 = [MEMORY[0x277CCAC58] propertyListWithStream:v10 options:0 format:0 error:a5];
    [v10 close];
    if (!v11)
    {

      goto LABEL_10;
    }

    [(MAGraph *)v9 _loadWithGraphDictionary:v11];

    goto LABEL_5;
  }

  v12 = +[MALogging sharedLogging];
  v13 = [v12 loggingConnection];

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *v15 = 0;
    _os_log_error_impl(&dword_255870000, v13, OS_LOG_TYPE_ERROR, "Bad data URL", v15, 2u);
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (void)_loadWithGraphDictionary:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v44 = v4;
  obj = [v4 objectForKey:@"nodes"];
  v6 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v53;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v52 + 1) + 8 * i);
        v11 = [v10 objectForKey:@"label"];
        v12 = [v10 objectForKey:@"domain"];
        v13 = [v12 unsignedIntegerValue];

        v14 = [v10 objectForKey:@"weight"];
        [v14 floatValue];
        v16 = v15;

        v17 = [v10 objectForKey:@"properties"];
        LODWORD(v18) = v16;
        v19 = [(MAGraph *)self addNodeWithLabel:v11 domain:v13 weight:v17 properties:v18];
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "identifier")}];
        v21 = [v10 objectForKeyedSubscript:@"identifier"];
        [v5 setObject:v20 forKeyedSubscript:v21];
      }

      v7 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v7);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v45 = [v44 objectForKey:@"edges"];
  v22 = [v45 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v22)
  {
    v23 = v22;
    obja = *v49;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v49 != obja)
        {
          objc_enumerationMutation(v45);
        }

        v25 = *(*(&v48 + 1) + 8 * j);
        v26 = [v25 objectForKey:@"sourceNodeIdentifier"];
        v27 = [v5 objectForKeyedSubscript:v26];
        v28 = [v27 unsignedIntegerValue];

        v29 = [v25 objectForKey:@"targetNodeIdentifier"];
        v30 = [v5 objectForKeyedSubscript:v29];
        v31 = [v30 unsignedIntegerValue];

        v32 = [v25 objectForKey:@"label"];
        v33 = [v25 objectForKey:@"domain"];
        v34 = [v33 unsignedIntegerValue];

        v35 = [v25 objectForKey:@"weight"];
        [v35 floatValue];
        v37 = v36;

        v38 = [v25 objectForKey:@"properties"];
        v39 = [(MAGraph *)self nodeForIdentifier:v28];
        v40 = [(MAGraph *)self nodeForIdentifier:v31];
        LODWORD(v41) = v37;
        v42 = [(MAGraph *)self addEdgeWithLabel:v32 sourceNode:v39 targetNode:v40 domain:v34 weight:v38 properties:v41];
      }

      v23 = [v45 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v23);
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (BOOL)writeDataToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MAGraph *)self _graphDictionary];
  v8 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v9 = [v6 URLByDeletingLastPathComponent];
  v10 = [v9 path];
  v11 = [v8 fileExistsAtPath:v10];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v18 = 0;
    [v8 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v18];
    v12 = v18;
  }

  v13 = [objc_alloc(MEMORY[0x277CBEB78]) initWithURL:v6 append:0];
  v14 = v13;
  if (v12 || !v13)
  {
    if (a4)
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot write data to URL %@", v6];
      *a4 = [v15 errorWithDescription:v16];

      LOBYTE(a4) = 0;
    }
  }

  else
  {
    [v13 open];
    a4 = [MEMORY[0x277CCAC58] writePropertyList:v7 toStream:v14 format:200 options:0 error:a4];
    [v14 close];
    if (a4)
    {
      LOBYTE(a4) = 1;
    }

    else
    {
      [v8 removeItemAtURL:v6 error:0];
    }
  }

  return a4;
}

- (id)_graphDictionary
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(MAGraph *)self identifier];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKey:@"identifier"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MAGraph version](self, "version")}];
  [v3 setObject:v6 forKey:@"version"];

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __41__MAGraph_File_Private___graphDictionary__block_invoke;
  v22[3] = &unk_2797FF670;
  v23 = v7;
  v8 = v7;
  [(MAGraph *)self enumerateNodesWithBlock:v22];
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"identifier" ascending:1];
  v24[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];

  v11 = [v8 sortedArrayUsingDescriptors:v10];
  [v3 setObject:v11 forKey:@"nodes"];
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __41__MAGraph_File_Private___graphDictionary__block_invoke_2;
  v20 = &unk_2797FFB60;
  v21 = v12;
  v13 = v12;
  [(MAGraph *)self enumerateEdgesWithBlock:&v17];
  v14 = [v13 sortedArrayUsingDescriptors:{v10, v17, v18, v19, v20}];
  [v3 setObject:v14 forKey:@"edges"];

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

void __41__MAGraph_File_Private___graphDictionary__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v14 = objc_alloc_init(v3);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "identifier")}];
  [v14 setObject:v5 forKey:@"identifier"];

  v6 = [v4 label];
  [v14 setObject:v6 forKey:@"label"];

  v7 = [v4 propertyDictionary];
  [v14 setObject:v7 forKey:@"properties"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v4, "domain")}];
  [v14 setObject:v8 forKey:@"domain"];

  v9 = MEMORY[0x277CCABB0];
  [v4 weight];
  v11 = v10;

  LODWORD(v12) = v11;
  v13 = [v9 numberWithFloat:v12];
  [v14 setObject:v13 forKey:@"weight"];

  [*(a1 + 32) addObject:v14];
}

void __41__MAGraph_File_Private___graphDictionary__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v17 = objc_alloc_init(v3);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "identifier")}];
  [v17 setObject:v5 forKey:@"identifier"];

  v6 = [v4 label];
  [v17 setObject:v6 forKey:@"label"];

  v7 = [v4 propertyDictionary];
  [v17 setObject:v7 forKey:@"properties"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v4, "domain")}];
  [v17 setObject:v8 forKey:@"domain"];

  v9 = MEMORY[0x277CCABB0];
  [v4 weight];
  v10 = [v9 numberWithFloat:?];
  [v17 setObject:v10 forKey:@"weight"];

  v11 = MEMORY[0x277CCABB0];
  v12 = [v4 sourceNode];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "identifier")}];
  [v17 setObject:v13 forKey:@"sourceNodeIdentifier"];

  v14 = MEMORY[0x277CCABB0];
  v15 = [v4 targetNode];

  v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(v15, "identifier")}];
  [v17 setObject:v16 forKey:@"targetNodeIdentifier"];

  [*(a1 + 32) addObject:v17];
}

+ (id)graphJSONURLWithPath:(id)a3 andName:(id)a4
{
  v5 = MEMORY[0x277CBEBC0];
  v6 = a4;
  v7 = [v5 fileURLWithPath:a3];
  v8 = [v7 URLByAppendingPathComponent:v6];

  v9 = [v8 URLByAppendingPathExtension:@"json"];

  return v9;
}

+ (id)graphMLURLWithPath:(id)a3 andName:(id)a4
{
  v5 = MEMORY[0x277CBEBC0];
  v6 = a4;
  v7 = [v5 fileURLWithPath:a3];
  v8 = [v7 URLByAppendingPathComponent:v6];

  v9 = [v8 URLByAppendingPathExtension:@"graphml"];

  return v9;
}

- (id)schema:(id)a3
{
  v4 = a3;
  v5 = +[MAGraph graph];
  v6 = [(MAGraph *)self edgesLabels];
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __34__MAGraph_Schema_Private__schema___block_invoke;
  v14[3] = &unk_2797FF9A8;
  v14[4] = self;
  v15 = v4;
  v16 = v7;
  v8 = v5;
  v17 = v8;
  v9 = v7;
  v10 = v4;
  [v6 enumerateObjectsUsingBlock:v14];
  v11 = v17;
  v12 = v8;

  return v8;
}

void __34__MAGraph_Schema_Private__schema___block_invoke(uint64_t a1, void *a2)
{
  v111 = *MEMORY[0x277D85DE8];
  v78 = a2;
  v71 = [*(a1 + 32) edgesForLabel:?];
  [v71 valueForKeyPath:@"domain"];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = v98 = 0u;
  v72 = [obj countByEnumeratingWithState:&v95 objects:v110 count:16];
  if (v72)
  {
    v70 = *v96;
    do
    {
      v3 = 0;
      do
      {
        if (*v96 != v70)
        {
          objc_enumerationMutation(obj);
        }

        v73 = v3;
        v4 = *(*(&v95 + 1) + 8 * v3);
        v94[0] = MEMORY[0x277D85DD0];
        v94[1] = 3221225472;
        v94[2] = __34__MAGraph_Schema_Private__schema___block_invoke_2;
        v94[3] = &unk_2797FF980;
        v80 = v4;
        v94[4] = v4;
        v5 = [MEMORY[0x277CCAC30] predicateWithBlock:v94];
        v6 = [v71 filteredSetUsingPredicate:v5];

        v84 = [MEMORY[0x277CBEB58] set];
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v76 = v6;
        v7 = [v76 countByEnumeratingWithState:&v90 objects:v109 count:16];
        if (v7)
        {
          v8 = v7;
          v82 = *v91;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v91 != v82)
              {
                objc_enumerationMutation(v76);
              }

              v10 = *(*(&v90 + 1) + 8 * i);
              v11 = [v10 sourceNode];
              v12 = [v10 targetNode];
              v13 = [v11 label];
              v108[0] = v13;
              v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v11, "domain")}];
              v108[1] = v14;
              v15 = [v12 label];
              v108[2] = v15;
              v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v12, "domain")}];
              v108[3] = v16;
              v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:4];
              [v84 addObject:v17];
            }

            v8 = [v76 countByEnumeratingWithState:&v90 objects:v109 count:16];
          }

          while (v8);
        }

        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v75 = v84;
        v81 = [v75 countByEnumeratingWithState:&v86 objects:v107 count:16];
        if (v81)
        {
          v79 = *v87;
          do
          {
            for (j = 0; j != v81; ++j)
            {
              if (*v87 != v79)
              {
                objc_enumerationMutation(v75);
              }

              v19 = *(*(&v86 + 1) + 8 * j);
              v20 = [v19 objectAtIndexedSubscript:0];
              v21 = [v19 objectAtIndexedSubscript:1];
              v22 = [v21 unsignedShortValue];

              v85 = [v19 objectAtIndexedSubscript:2];
              v23 = [v19 objectAtIndexedSubscript:3];
              v24 = [v23 unsignedShortValue];

              v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"NODE %@ %u", v20, v22];
              v26 = *(a1 + 40);
              if (v26 && ([v26 containsIndex:v22] & 1) != 0)
              {
                v27 = 0;
              }

              else
              {
                v28 = [*(a1 + 32) nodesForDomain:v22];
                v29 = [v28 valueForKeyPath:@"label"];

                v30 = [v29 count];
                v27 = v30 > 1;
                if (v30 >= 2)
                {
                  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"NODE %u", v22];

                  v25 = v31;
                }
              }

              v32 = [*(a1 + 48) objectForKey:v25];
              if (!v32)
              {
                v33 = *(a1 + 56);
                if (v27)
                {
                  v34 = [v33 nodesCountForLabel:0 domain:v22 properties:MEMORY[0x277CBEC10]];
                  v35 = *(a1 + 56);
                  v105 = @"cid";
                  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v34];
                  v106 = v36;
                  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
                  LODWORD(v38) = 1.0;
                  [v35 addUniqueNodeWithLabel:0 domain:v22 weight:v37 properties:0 didCreate:v38];
                }

                else
                {
                  v39 = [v33 nodesCountForLabel:v20 domain:v22 properties:MEMORY[0x277CBEC10]];
                  v40 = *(a1 + 56);
                  v103 = @"cid";
                  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v39];
                  v104 = v36;
                  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
                  LODWORD(v41) = 1.0;
                  [v40 addNodeWithLabel:v20 domain:v22 weight:v37 properties:v41];
                }
                v32 = ;

                [*(a1 + 48) setObject:v32 forKey:v25];
              }

              v83 = v25;
              v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"NODE %@ %u", v85, v24];
              v43 = *(a1 + 40);
              if (v43 && ([v43 containsIndex:v24] & 1) != 0)
              {
                v44 = 1;
              }

              else
              {
                v45 = v20;
                v46 = [*(a1 + 32) nodesForDomain:v24];
                v47 = [v46 valueForKeyPath:@"label"];

                v48 = [v47 count];
                v44 = v48 < 2;
                if (v48 >= 2)
                {
                  v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"NODE %u", v24];

                  v42 = v49;
                }

                v20 = v45;
              }

              v50 = v22;
              v51 = [*(a1 + 48) objectForKey:v42];
              v52 = [v20 isEqualToString:v85];
              if (v50 == v24)
              {
                v53 = v52;
              }

              else
              {
                v53 = 0;
              }

              if (!v51 || v53)
              {
                v77 = v20;
                v56 = *(a1 + 56);
                if ((v44 | v53))
                {
                  v57 = [v56 nodesCountForLabel:v85 domain:v24 properties:MEMORY[0x277CBEC10]];
                  v74 = *(a1 + 56);
                  v99 = @"cid";
                  v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v57];
                  v100 = v58;
                  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
                  LODWORD(v60) = 1.0;
                  [v74 addNodeWithLabel:v85 domain:v24 weight:v59 properties:v60];
                }

                else
                {
                  v61 = [v56 nodesCountForLabel:0 domain:v24 properties:MEMORY[0x277CBEC10]];
                  v62 = *(a1 + 56);
                  v101 = @"cid";
                  v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v61];
                  v102 = v58;
                  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
                  LODWORD(v63) = 1.0;
                  [v62 addUniqueNodeWithLabel:0 domain:v24 weight:v59 properties:0 didCreate:v63];
                }
                v54 = ;

                v55 = v83;
                if ((v53 & 1) == 0)
                {
                  [*(a1 + 48) setObject:v54 forKey:v42];
                }

                v20 = v77;
              }

              else
              {
                v54 = v51;
                v55 = v83;
              }

              v64 = *(a1 + 56);
              v65 = [v80 intValue];
              LODWORD(v66) = 1.0;
              v67 = [v64 addUniqueEdgeWithLabel:v78 sourceNode:v32 targetNode:v54 domain:v65 weight:MEMORY[0x277CBEC10] properties:v66];
            }

            v81 = [v75 countByEnumeratingWithState:&v86 objects:v107 count:16];
          }

          while (v81);
        }

        v3 = v73 + 1;
      }

      while (v73 + 1 != v72);
      v72 = [obj countByEnumeratingWithState:&v95 objects:v110 count:16];
    }

    while (v72);
  }

  v68 = *MEMORY[0x277D85DE8];
}

- (BOOL)conformsToGraphSchema:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __49__MAGraph_Schema_Private__conformsToGraphSchema___block_invoke;
  v16 = &unk_2797FF958;
  v6 = v4;
  v17 = v6;
  v19 = &v21;
  v20 = &v25;
  v7 = v5;
  v18 = v7;
  [(MAGraph *)self enumerateNodesWithBlock:&v13];
  v8 = [v7 count];
  if (v8 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v30 = v7;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Not verified nodes:%@\n", buf, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = v26[3];
    *buf = 134217984;
    v30 = v9;
    _os_log_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Verified %lu nodes", buf, 0xCu);
  }

  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v22 + 24);
  }

  *(v22 + 24) = v10;

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void __49__MAGraph_Schema_Private__conformsToGraphSchema___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [v5 label];
  v8 = [v6 nodesForLabel:v7 domain:{objc_msgSend(v5, "domain")}];
  v9 = [v8 anyObject];

  if (!v9)
  {
    v12 = [*(a1 + 32) nodesForDomain:{objc_msgSend(v5, "domain")}];
    v9 = [v12 anyObject];

    v13 = [v9 label];
    v14 = [v13 isEqualToString:@"*"];

    if (v14)
    {
      if (v9)
      {
        goto LABEL_2;
      }
    }

    else
    {
    }

    [*(a1 + 40) addObject:v5];
    v9 = 0;
    goto LABEL_10;
  }

LABEL_2:
  *(*(*(a1 + 48) + 8) + 24) = [v5 conformsToNodeSchema:v9];
  ++*(*(*(a1 + 56) + 8) + 24);
  *a3 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v10 = nodePrintableSchema(v5, @"REAL_NODE");
    v11 = nodePrintableSchema(v9, @"DEFINITION_NODE");
    v16 = 138412546;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to verify:\n%@\n%@\n", &v16, 0x16u);
  }

LABEL_10:

  v15 = *MEMORY[0x277D85DE8];
}

- (id)matchWithDefinitions:(id)a3 constraints:(id)a4 error:(id *)a5
{
  v70 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    if (v7 && [v7 count])
    {
      v8 = [MEMORY[0x277CBEB40] orderedSetWithArray:v7];
      v9 = [MASubGraph subGraphWithGraph:self];
      if ([v8 count])
      {
        v52 = v8;
        v53 = v6;
        v47 = v7;
        v54 = v9;
        while (1)
        {
          v10 = [v8 firstObject];
          if (!v10)
          {
            break;
          }

          v11 = v10;
          v12 = [(MAGraph *)self selectBestRootNodeForPath:v10 withDefinitions:v6];
          if (!v12)
          {
            goto LABEL_39;
          }

          v13 = v12;
          v14 = [v12 label];
          v15 = [v6 objectForKey:v14];

          if (![v15 count])
          {

LABEL_39:
            break;
          }

          v48 = v11;
          v16 = [MEMORY[0x277CBEB58] set];
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          obj = v15;
          v17 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v61;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v61 != v19)
                {
                  objc_enumerationMutation(obj);
                }

                v21 = *(*(&v60 + 1) + 8 * i);
                v22 = -[MAGraph nodeForIdentifier:](self, "nodeForIdentifier:", [v21 identifier]);
                if ([v22 isEqualToNode:v21] && (v23 = objc_msgSend(v22, "edgesCount"), v23 == objc_msgSend(v21, "edgesCount")))
                {
                  v24 = [MEMORY[0x277CBEB98] setWithObject:v21];
                }

                else
                {
                  v25 = [v21 label];
                  if ([v25 isEqualToString:@"*"])
                  {

                    v25 = 0;
                  }

                  v26 = [v21 domain];
                  v27 = [v21 propertyDictionary];
                  v24 = [(MAGraph *)self nodesForLabel:v25 domain:v26 properties:v27];
                }

                [v16 unionSet:v24];
              }

              v18 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
            }

            while (v18);
          }

          v28 = [MEMORY[0x277CBEB58] set];
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v49 = v16;
          v29 = [v49 countByEnumeratingWithState:&v56 objects:v68 count:16];
          if (v29)
          {
            v30 = v29;
            v51 = *v57;
            do
            {
              for (j = 0; j != v30; ++j)
              {
                if (*v57 != v51)
                {
                  objc_enumerationMutation(v49);
                }

                v32 = *(*(&v56 + 1) + 8 * j);
                v33 = objc_autoreleasePoolPush();
                v34 = [MEMORY[0x277CBEB58] set];
                v35 = MEMORY[0x277CBEB18];
                v66[0] = @"node";
                v66[1] = @"label";
                v67[0] = v32;
                v36 = [v13 label];
                v67[1] = v36;
                v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:2];
                v38 = [v35 arrayWithObject:v37];

                v39 = [v52 array];
                LODWORD(v37) = [(MAGraph *)self _matchNode:v32 usingAbstractNode:v13 fromEdge:0 atIteration:0 withDefinitions:v53 constraints:v39 unusedConstraints:v34 andSubGraph:v54 matchingNodeQueue:v38];

                if (v37)
                {
                  v40 = [v13 label];
                  [v54 _addNode:v32 withName:v40];
                }

                if ([v28 count])
                {
                  [v28 intersectSet:v34];
                }

                else
                {
                  [v28 unionSet:v34];
                }

                objc_autoreleasePoolPop(v33);
              }

              v30 = [v49 countByEnumeratingWithState:&v56 objects:v68 count:16];
            }

            while (v30);
          }

          v8 = v52;
          [v52 intersectSet:v28];

          v6 = v53;
          v9 = v54;
          v7 = v47;
          if (![v52 count])
          {
            goto LABEL_35;
          }
        }

        v41 = 0;
      }

      else
      {
LABEL_35:
        v41 = v9;
      }
    }

    else
    {
      v42 = [MASubGraph subGraphWithGraph:self];
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __65__MAGraph_QueryInternal__matchWithDefinitions_constraints_error___block_invoke;
      v64[3] = &unk_2797FFAC0;
      v64[4] = self;
      v43 = v42;
      v65 = v43;
      [v6 enumerateKeysAndObjectsUsingBlock:v64];
      v44 = v65;
      v8 = v43;

      v41 = v8;
    }
  }

  else
  {
    v41 = 0;
  }

  v45 = *MEMORY[0x277D85DE8];

  return v41;
}

void __65__MAGraph_QueryInternal__matchWithDefinitions_constraints_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = a3;
  v6 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        objc_opt_class();
        v12 = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v13 = v10;
          v14 = [v13 label];
          if ([v14 isEqualToString:@"*"])
          {

            v14 = 0;
          }

          v15 = *(a1 + 32);
          v16 = [v13 domain];
          v17 = [v13 propertyDictionary];
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __65__MAGraph_QueryInternal__matchWithDefinitions_constraints_error___block_invoke_2;
          v28[3] = &unk_2797FFA70;
          v29 = *(a1 + 40);
          v30 = v5;
          [v15 enumerateNodesWithLabel:v14 domain:v16 properties:v17 usingBlock:v28];
          v19 = &v30;
          v18 = &v29;
        }

        else
        {
          if ((v12 & 1) == 0)
          {
            continue;
          }

          v20 = v10;
          v14 = [v20 label];
          if ([v14 isEqualToString:@"*"])
          {

            v14 = 0;
          }

          v21 = *(a1 + 32);
          v22 = [v20 domain];
          v17 = [v20 propertyDictionary];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __65__MAGraph_QueryInternal__matchWithDefinitions_constraints_error___block_invoke_3;
          v25[3] = &unk_2797FFA98;
          v26 = *(a1 + 40);
          v27 = v5;
          [v21 enumerateEdgesWithLabel:v14 domain:v22 properties:v17 usingBlock:v25];
          v19 = &v27;
          v18 = &v26;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v7);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)matchWithVisualFormat:(id)a3 elements:(id)a4 error:(id *)a5
{
  v26 = self;
  v40 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v6 = a4;
  v27 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = [v6 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        v14 = [v6 objectForKeyedSubscript:{v13, v26}];
        v38 = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
        [v7 setObject:v15 forKey:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v10);
  }

  v32 = 0;
  v33 = v7;
  v31 = 0;
  v16 = [objc_opt_class() scanMatchString:v29 definitions:&v33 constraints:&v32 forCreation:0 error:&v31];
  v17 = v33;

  v18 = v32;
  v19 = v31;
  v20 = v19;
  if (v16)
  {
    v30 = v19;
    v21 = [(MAGraph *)v26 matchWithDefinitions:v17 constraints:v18 error:&v30];
    v22 = v30;

    v20 = v22;
  }

  else
  {
    v21 = 0;
  }

  objc_autoreleasePoolPop(v27);
  if (a5)
  {
    v23 = v20;
    *a5 = v20;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)selectBestRootNodeForPath:(id)a3 withDefinitions:(id)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 sourceNode];
  v9 = [v8 label];
  v10 = [v7 objectForKey:v9];

  v46 = v6;
  v11 = [v6 targetNode];
  v12 = [v11 label];
  v45 = v7;
  v50 = [v7 objectForKey:v12];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v10;
  v13 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (!v13)
  {
    v15 = 0;
    v52 = 0;
    goto LABEL_20;
  }

  v14 = v13;
  v15 = 0;
  v52 = 0;
  v16 = *v58;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v58 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v57 + 1) + 8 * i);
      v19 = [v18 edgesCount];
      v20 = [v18 graphReference];

      if (!v20)
      {
        goto LABEL_13;
      }

      v21 = -[MAGraph nodeForIdentifier:](self, "nodeForIdentifier:", [v18 identifier]);
      if (([v21 isEqualToNode:v18] & 1) == 0)
      {

LABEL_13:
        v25 = [v18 label];
        if ([v25 isEqualToString:@"*"])
        {

          v25 = 0;
        }

        v26 = [v18 domain];
        v27 = [v18 propertyDictionary];
        v52 += [(MAGraph *)self nodesCountForLabel:v25 domain:v26 properties:v27];

        goto LABEL_16;
      }

      v22 = [v21 edgesCount];
      v23 = [v18 edgesCount];

      v24 = v52;
      if (v22 == v23)
      {
        v24 = v52 + 1;
      }

      v52 = v24;
      if (v22 != v23)
      {
        goto LABEL_13;
      }

LABEL_16:
      v15 += v19;
    }

    v14 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
  }

  while (v14);
LABEL_20:

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v47 = v50;
  v51 = [v47 countByEnumeratingWithState:&v53 objects:v61 count:16];
  v28 = 0;
  v29 = 0;
  if (v51)
  {
    v49 = *v54;
    do
    {
      for (j = 0; j != v51; ++j)
      {
        if (*v54 != v49)
        {
          objc_enumerationMutation(v47);
        }

        v31 = *(*(&v53 + 1) + 8 * j);
        v32 = [v31 edgesCount];
        v33 = [v31 graphReference];

        if (v33)
        {
          v34 = -[MAGraph nodeForIdentifier:](self, "nodeForIdentifier:", [v31 identifier]);
          if ([v34 isEqualToNode:v31])
          {
            v35 = [v34 edgesCount];
            v36 = [v31 edgesCount];

            if (v35 == v36)
            {
              ++v28;
              goto LABEL_33;
            }
          }

          else
          {
          }
        }

        v37 = [v31 label];
        if ([v37 isEqualToString:@"*"])
        {

          v37 = 0;
        }

        v38 = [v31 domain];
        v39 = [v31 propertyDictionary];
        v28 += [(MAGraph *)self nodesCountForLabel:v37 domain:v38 properties:v39];

LABEL_33:
        v29 += v32;
      }

      v51 = [v47 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v51);
  }

  if (v52 > v28 || v52 >= v28 && v15 >= v29)
  {
    v40 = v46;
    v41 = [v46 targetNode];
  }

  else
  {
    v40 = v46;
    v41 = [v46 sourceNode];
  }

  v42 = v41;

  v43 = *MEMORY[0x277D85DE8];

  return v42;
}

- (BOOL)_matchNode:(id)a3 usingAbstractNode:(id)a4 fromEdge:(id)a5 atIteration:(unint64_t)a6 withDefinitions:(id)a7 constraints:(id)a8 unusedConstraints:(id)a9 andSubGraph:(id)a10 matchingNodeQueue:(id)a11
{
  v258 = *MEMORY[0x277D85DE8];
  v168 = a3;
  v17 = a4;
  v163 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v125 = a10;
  v160 = a11;
  v243 = v19;
  v21 = v19;
  v154 = self;
  v22 = [(MAGraph *)self _constraintAbstractEdgesFromAbstractNode:v17 inConstraints:&v243];
  v153 = v243;

  v167 = v17;
  v126 = v21;
  if (![v22 count])
  {
    [v20 addObjectsFromArray:v21];
    v114 = [v17 label];
    v115 = [v18 objectForKey:v114];

    v116 = [v17 hasProperties];
    v239 = 0u;
    v240 = 0u;
    v241 = 0u;
    v242 = 0u;
    v113 = v115;
    v117 = [v113 countByEnumeratingWithState:&v239 objects:v257 count:16];
    if (v117)
    {
      v118 = v117;
      v119 = *v240;
      while (2)
      {
        for (i = 0; i != v118; ++i)
        {
          if (*v240 != v119)
          {
            objc_enumerationMutation(v113);
          }

          if ([v168 matchesNode:*(*(&v239 + 1) + 8 * i) includingProperties:v116])
          {
            LOBYTE(v62) = 1;
            goto LABEL_148;
          }
        }

        v118 = [v113 countByEnumeratingWithState:&v239 objects:v257 count:16];
        if (v118)
        {
          continue;
        }

        break;
      }

      LOBYTE(v62) = 0;
LABEL_148:
      v132 = v113;
      v17 = v167;
    }

    else
    {
      LOBYTE(v62) = 0;
      v132 = v113;
    }

    goto LABEL_153;
  }

  v132 = objc_opt_new();
  v235 = 0u;
  v236 = 0u;
  v237 = 0u;
  v238 = 0u;
  obj = v22;
  v131 = [obj countByEnumeratingWithState:&v235 objects:v256 count:16];
  if (v131)
  {
    v128 = 0;
    v136 = a6 + 1;
    v130 = *v236;
    v124 = v209;
    v158 = v18;
    v159 = v20;
    v152 = v22;
LABEL_4:
    v23 = 0;
    while (1)
    {
      if (*v236 != v130)
      {
        objc_enumerationMutation(obj);
      }

      v133 = v23;
      v24 = *(*(&v235 + 1) + 8 * v23);
      v134 = objc_autoreleasePoolPush();
      v161 = [MASubGraph subGraphWithGraph:v154];
      [v132 addObject:?];
      v25 = [v24 oppositeNode:v17];
      v173 = v24;
      v26 = [v24 label];
      v27 = [v18 objectForKey:v26];

      v135 = v27;
      if (![v27 count])
      {
        v62 = 0;
        goto LABEL_127;
      }

      v28 = [v25 label];
      v29 = [v18 objectForKey:v28];

      v148 = v29;
      if ([v29 count])
      {
        break;
      }

      v62 = 0;
LABEL_126:

LABEL_127:
      objc_autoreleasePoolPop(v134);
      if (!v62)
      {
        v113 = obj;
        goto LABEL_153;
      }

      v23 = v133 + 1;
      if (v133 + 1 == v131)
      {
        v112 = [obj countByEnumeratingWithState:&v235 objects:v256 count:16];
        v131 = v112;
        if (!v112)
        {
          goto LABEL_144;
        }

        goto LABEL_4;
      }
    }

    v30 = [v173 minimum];
    v31 = [v173 maximum];
    v164 = [v173 isDirected];
    v32 = [MEMORY[0x277CBEB58] set];
    v33 = v136;
    v137 = v31;
    v162 = v25;
    v166 = v32;
    if (v136 >= v31)
    {
      v63 = 0;
    }

    else
    {
      v127 = v30;
      v234 = 0u;
      v233 = 0u;
      v232 = 0u;
      v231 = 0u;
      v169 = v135;
      v34 = [v169 countByEnumeratingWithState:&v231 objects:v255 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v232;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v232 != v36)
            {
              objc_enumerationMutation(v169);
            }

            v38 = *(*(&v231 + 1) + 8 * j);
            v39 = objc_autoreleasePoolPush();
            v40 = [v38 label];
            if ([v40 isEqualToString:@"*"])
            {

              v40 = 0;
            }

            v230 = 0;
            v41 = [v38 propertyDictionary];
            if ([v167 hasEdge:v173 isIn:&v230])
            {
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 3221225472;
              aBlock[2] = __144__MAGraph_Query___matchNode_usingAbstractNode_fromEdge_atIteration_withDefinitions_constraints_unusedConstraints_andSubGraph_matchingNodeQueue___block_invoke;
              aBlock[3] = &unk_2797FF9F8;
              v224 = v163;
              v225 = v41;
              v42 = v168;
              v226 = v42;
              v228 = v164;
              v229 = v230;
              v227 = v166;
              v43 = _Block_copy(aBlock);
              [v42 enumerateEdgesWithLabel:v40 domain:objc_msgSend(v38 usingBlock:{"domain"), v43}];
            }

            objc_autoreleasePoolPop(v39);
          }

          v35 = [v169 countByEnumeratingWithState:&v231 objects:v255 count:16];
        }

        while (v35);
      }

      if (![v166 count])
      {
        v62 = 0;
        v32 = v166;
        v17 = v167;
        v18 = v158;
        v20 = v159;
        v25 = v162;
LABEL_125:

        goto LABEL_126;
      }

      context = [MEMORY[0x277CBEB18] array];
      v219 = 0u;
      v220 = 0u;
      v221 = 0u;
      v222 = 0u;
      v44 = v126;
      v45 = [v44 countByEnumeratingWithState:&v219 objects:v254 count:16];
      v18 = v158;
      v20 = v159;
      v25 = v162;
      if (v45)
      {
        v46 = v45;
        v47 = *v220;
        do
        {
          for (k = 0; k != v46; ++k)
          {
            if (*v220 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = *(*(&v219 + 1) + 8 * k);
            if ([v49 containsEdge:v173])
            {
              [context addObject:v49];
            }
          }

          v46 = [v44 countByEnumeratingWithState:&v219 objects:v254 count:16];
        }

        while (v46);
      }

      v145 = [MEMORY[0x277CBEB18] array];
      v215 = 0u;
      v216 = 0u;
      v217 = 0u;
      v218 = 0u;
      v142 = v166;
      v170 = [v142 countByEnumeratingWithState:&v215 objects:v253 count:16];
      if (v170)
      {
        v140 = 0;
        v155 = *v216;
        do
        {
          for (m = 0; m != v170; m = m + 1)
          {
            if (*v216 != v155)
            {
              objc_enumerationMutation(v142);
            }

            v51 = *(*(&v215 + 1) + 8 * m);
            v52 = objc_autoreleasePoolPush();
            v53 = [v51 oppositeNode:v168];
            v211 = 0u;
            v212 = 0u;
            v213 = 0u;
            v214 = 0u;
            v54 = v160;
            v55 = [v54 countByEnumeratingWithState:&v211 objects:v252 count:16];
            if (v55)
            {
              v56 = v55;
              v57 = *v212;
              while (2)
              {
                for (n = 0; n != v56; ++n)
                {
                  if (*v212 != v57)
                  {
                    objc_enumerationMutation(v54);
                  }

                  v59 = [*(*(&v211 + 1) + 8 * n) objectForKeyedSubscript:@"node"];
                  v60 = [v59 isEqual:v53];

                  if (v60)
                  {

                    v18 = v158;
                    v20 = v159;
                    goto LABEL_47;
                  }
                }

                v56 = [v54 countByEnumeratingWithState:&v211 objects:v252 count:16];
                if (v56)
                {
                  continue;
                }

                break;
              }
            }

            v123 = v54;
            v18 = v158;
            v20 = v159;
            if ([(MAGraph *)v154 _matchNode:v53 usingAbstractNode:v167 fromEdge:v51 atIteration:v136 withDefinitions:v158 constraints:context unusedConstraints:v159 andSubGraph:v161 matchingNodeQueue:v123, v124])
            {
              ++v140;
              v61 = [v173 label];
              [v161 _addEdge:v51 withName:v61];
            }

            else
            {
LABEL_47:
              [v145 addObject:v51];
            }

            v22 = v152;
            v25 = v162;

            objc_autoreleasePoolPop(v52);
          }

          v170 = [v142 countByEnumeratingWithState:&v215 objects:v253 count:16];
        }

        while (v170);
      }

      else
      {
        v140 = 0;
      }

      v208[0] = MEMORY[0x277D85DD0];
      v208[1] = 3221225472;
      v209[0] = __144__MAGraph_Query___matchNode_usingAbstractNode_fromEdge_atIteration_withDefinitions_constraints_unusedConstraints_andSubGraph_matchingNodeQueue___block_invoke_2;
      v209[1] = &unk_2797FFA20;
      v210 = v142;
      [v145 enumerateObjectsUsingBlock:v208];

      v32 = v166;
      v17 = v167;
      v33 = v136;
      v63 = v140;
      v30 = v127;
    }

    if (v33 < v30 || v33 > v137)
    {
LABEL_122:
      v62 = v63 != 0;
      v111 = v128;
      if (v63)
      {
        v111 = v128 + 1;
      }

      v128 = v111;
    }

    else
    {
      v141 = v63;
      v206 = 0u;
      v207 = 0u;
      v204 = 0u;
      v205 = 0u;
      v138 = v135;
      v146 = [v138 countByEnumeratingWithState:&v204 objects:v251 count:16];
      if (v146)
      {
        v143 = *v205;
        do
        {
          v64 = 0;
          do
          {
            if (*v205 != v143)
            {
              objc_enumerationMutation(v138);
            }

            v65 = *(*(&v204 + 1) + 8 * v64);
            v66 = objc_autoreleasePoolPush();
            v67 = [v65 label];
            v156 = v64;
            contexta = v66;
            if ([v67 isEqualToString:@"*"])
            {

              v67 = 0;
            }

            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v171 = v148;
            v68 = [v171 countByEnumeratingWithState:&v200 objects:v250 count:16];
            if (v68)
            {
              v69 = v68;
              v70 = *v201;
              do
              {
                for (ii = 0; ii != v69; ++ii)
                {
                  if (*v201 != v70)
                  {
                    objc_enumerationMutation(v171);
                  }

                  v72 = *(*(&v200 + 1) + 8 * ii);
                  v230 = 0;
                  if ([v17 hasEdge:v173 isIn:&v230])
                  {
                    v73 = v67;
                    v74 = [v65 propertyDictionary];
                    v75 = [v72 graphReference];
                    v76 = v75 == 0;

                    if (v75)
                    {
                      LOBYTE(v77) = 0;
                    }

                    else
                    {
                      v77 = [v72 hasProperties];
                    }

                    v190[0] = MEMORY[0x277D85DD0];
                    v190[1] = 3221225472;
                    v190[2] = __144__MAGraph_Query___matchNode_usingAbstractNode_fromEdge_atIteration_withDefinitions_constraints_unusedConstraints_andSubGraph_matchingNodeQueue___block_invoke_3;
                    v190[3] = &unk_2797FFA48;
                    v191 = v163;
                    v192 = v74;
                    v78 = v168;
                    v196 = v164;
                    v197 = v230;
                    v198 = v76;
                    v193 = v78;
                    v194 = v72;
                    v199 = v77;
                    v195 = v166;
                    v79 = v74;
                    v80 = _Block_copy(v190);
                    v67 = v73;
                    [v78 enumerateEdgesWithLabel:v73 domain:objc_msgSend(v65 usingBlock:{"domain"), v80}];

                    v17 = v167;
                  }
                }

                v69 = [v171 countByEnumeratingWithState:&v200 objects:v250 count:16];
              }

              while (v69);
            }

            objc_autoreleasePoolPop(contexta);
            v64 = v156 + 1;
            v20 = v159;
            v22 = v152;
          }

          while (v156 + 1 != v146);
          v146 = [v138 countByEnumeratingWithState:&v204 objects:v251 count:16];
        }

        while (v146);
      }

      if ([v166 count])
      {
        v188 = 0u;
        v189 = 0u;
        v186 = 0u;
        v187 = 0u;
        v139 = v166;
        v18 = v158;
        v25 = v162;
        v147 = [v139 countByEnumeratingWithState:&v186 objects:v249 count:16];
        if (!v147)
        {
          goto LABEL_121;
        }

        v144 = *v187;
        while (1)
        {
          for (jj = 0; jj != v147; jj = jj + 1)
          {
            if (*v187 != v144)
            {
              objc_enumerationMutation(v139);
            }

            v157 = *(*(&v186 + 1) + 8 * jj);
            v82 = [v157 oppositeNode:v168];
            v182 = 0u;
            v183 = 0u;
            v184 = 0u;
            v185 = 0u;
            v165 = v148;
            v83 = [v165 countByEnumeratingWithState:&v182 objects:v248 count:16];
            if (!v83)
            {
              v18 = v158;
              v25 = v162;
              goto LABEL_119;
            }

            v84 = v83;
            contextb = jj;
            v85 = *v183;
            while (2)
            {
              for (kk = 0; kk != v84; ++kk)
              {
                if (*v183 != v85)
                {
                  objc_enumerationMutation(v165);
                }

                v87 = *(*(&v182 + 1) + 8 * kk);
                v88 = objc_autoreleasePoolPush();
                v89 = [v87 graphReference];

                if (v89)
                {
                  if (![v82 isSameNodeAsNode:v87])
                  {
                    goto LABEL_106;
                  }
                }

                else if (([v82 matchesNode:v87 includingProperties:{objc_msgSend(v87, "hasProperties")}] & 1) == 0)
                {
                  goto LABEL_106;
                }

                v172 = v88;
                v90 = v84;
                v180 = 0u;
                v181 = 0u;
                v178 = 0u;
                v179 = 0u;
                v91 = v160;
                v92 = [v91 countByEnumeratingWithState:&v178 objects:v247 count:16];
                if (v92)
                {
                  v93 = v92;
                  v94 = *v179;
                  while (2)
                  {
                    for (mm = 0; mm != v93; ++mm)
                    {
                      if (*v179 != v94)
                      {
                        objc_enumerationMutation(v91);
                      }

                      v96 = [*(*(&v178 + 1) + 8 * mm) objectForKeyedSubscript:@"node"];
                      v97 = [v96 isEqual:v82];

                      if (v97)
                      {

                        v84 = v90;
                        v88 = v172;
                        goto LABEL_106;
                      }
                    }

                    v93 = [v91 countByEnumeratingWithState:&v178 objects:v247 count:16];
                    if (v93)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v246[0] = v82;
                v245[0] = @"node";
                v245[1] = @"label";
                v98 = [v162 label];
                v246[1] = v98;
                v99 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v246 forKeys:v245 count:2];
                [v91 addObject:v99];

                LODWORD(v98) = [(MAGraph *)v154 _matchNode:v82 usingAbstractNode:v162 fromEdge:v157 atIteration:0 withDefinitions:v158 constraints:v153 unusedConstraints:v159 andSubGraph:v161 matchingNodeQueue:v91];
                [v91 removeLastObject];
                v84 = v90;
                v88 = v172;
                if (v98)
                {
                  v176 = 0u;
                  v177 = 0u;
                  v174 = 0u;
                  v175 = 0u;
                  v100 = v91;
                  v101 = [v100 countByEnumeratingWithState:&v174 objects:v244 count:16];
                  if (v101)
                  {
                    v102 = v101;
                    v103 = *v175;
                    do
                    {
                      for (nn = 0; nn != v102; ++nn)
                      {
                        if (*v175 != v103)
                        {
                          objc_enumerationMutation(v100);
                        }

                        v105 = *(*(&v174 + 1) + 8 * nn);
                        v106 = [v105 objectForKeyedSubscript:@"node"];
                        v107 = [v105 objectForKeyedSubscript:@"label"];
                        [v161 _addNode:v106 withName:v107 forKeyNode:v82];
                        v108 = [v162 label];
                        [v161 _addNode:v82 withName:v108 forKeyNode:v106];
                      }

                      v102 = [v100 countByEnumeratingWithState:&v174 objects:v244 count:16];
                    }

                    while (v102);
                  }

                  ++v141;

                  v25 = v162;
                  v109 = [v162 label];
                  [v161 _addNode:v82 withName:v109];

                  v110 = [v173 label];
                  [v161 _addEdge:v157 withName:v110];

                  objc_autoreleasePoolPop(v172);
                  v17 = v167;
                  v22 = v152;
                  v18 = v158;
                  goto LABEL_117;
                }

LABEL_106:
                objc_autoreleasePoolPop(v88);
              }

              v84 = [v165 countByEnumeratingWithState:&v182 objects:v248 count:16];
              if (v84)
              {
                continue;
              }

              break;
            }

            v17 = v167;
            v18 = v158;
            v22 = v152;
            v25 = v162;
LABEL_117:
            jj = contextb;
LABEL_119:
          }

          v147 = [v139 countByEnumeratingWithState:&v186 objects:v249 count:16];
          if (!v147)
          {
LABEL_121:

            v20 = v159;
            v32 = v166;
            v63 = v141;
            goto LABEL_122;
          }
        }
      }

      v62 = 0;
      v18 = v158;
      v25 = v162;
      v32 = v166;
    }

    goto LABEL_125;
  }

  v128 = 0;
LABEL_144:

  if (v128 == [obj count])
  {
    if ([v132 count] == 1)
    {
      [v132 firstObject];
    }

    else
    {
      [MASubGraph subGraphIntersectionsWithSubGraphs:v132];
    }
    v113 = ;
    [v125 mergeWithSubGraph:v113];
    LOBYTE(v62) = 1;
LABEL_153:

    goto LABEL_154;
  }

  LOBYTE(v62) = 0;
LABEL_154:

  v121 = *MEMORY[0x277D85DE8];
  return v62;
}

void __144__MAGraph_Query___matchNode_usingAbstractNode_fromEdge_atIteration_withDefinitions_constraints_unusedConstraints_andSubGraph_matchingNodeQueue___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 isEqual:*(a1 + 32)] & 1) == 0)
  {
    if ([v5 hasProperties:*(a1 + 40)])
    {
      v3 = [v5 targetNode];
      v4 = [v3 isSameNodeAsNode:*(a1 + 48)];

      if (!*(a1 + 64) || *(a1 + 65) == v4)
      {
        [*(a1 + 56) addObject:v5];
      }
    }
  }
}

void __144__MAGraph_Query___matchNode_usingAbstractNode_fromEdge_atIteration_withDefinitions_constraints_unusedConstraints_andSubGraph_matchingNodeQueue___block_invoke_3(uint64_t a1, void *a2)
{
  v12 = a2;
  if (([v12 isEqual:*(a1 + 32)] & 1) == 0 && objc_msgSend(v12, "hasProperties:", *(a1 + 40)))
  {
    v3 = [v12 sourceNode];
    v4 = [v12 targetNode];
    v5 = [v4 isSameNodeAsNode:*(a1 + 48)];
    v6 = v5;
    if (*(a1 + 72))
    {
      v7 = *(a1 + 73);
      if (v5)
      {
        v8 = v3;
      }

      else
      {
        v8 = v4;
      }

      v9 = v8;
      if (v7 != v6)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v5)
      {
        v10 = v3;
      }

      else
      {
        v10 = v4;
      }

      v9 = v10;
    }

    v11 = *(a1 + 74);
    if (v11 == 1)
    {
      if ([v9 matchesNode:*(a1 + 56) includingProperties:*(a1 + 75)])
      {
LABEL_18:
        [*(a1 + 64) addObject:v12];
LABEL_19:

        goto LABEL_20;
      }

      v11 = *(a1 + 74);
    }

    if (v11 || ![v9 isSameNodeAsNode:*(a1 + 56)])
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_20:
}

- (id)_constraintAbstractEdgesFromAbstractNode:(id)a3 inConstraints:(id *)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v28 = [MEMORY[0x277CBEB18] array];
  [MEMORY[0x277CBEB58] set];
  v26 = v25 = a4;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = *a4;
  v30 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v30)
  {
    v29 = *v32;
    do
    {
      v6 = 0;
      do
      {
        if (*v32 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v31 + 1) + 8 * v6);
        v8 = [v5 hasProperties];
        v9 = [v7 nodesCount];
        if (!v9)
        {
          v12 = 0;
LABEL_19:
          [v28 addObject:v7];
          goto LABEL_20;
        }

        v10 = v9;
        v11 = 0;
        v12 = 0;
        v13 = 1;
        v14 = v9;
        while (1)
        {
          v15 = v12;
          v12 = [v7 nodeAtIndex:v11];

          if ([v12 matchesNode:v5 includingProperties:v8])
          {
            break;
          }

          ++v11;
          --v14;
          ++v13;
          if (v10 == v11)
          {
            goto LABEL_19;
          }
        }

        if (!v12)
        {
          goto LABEL_19;
        }

        if (v11)
        {
          v16 = [v7 edgeAtIndex:v11 - 1];
          [v26 addObject:v16];

          v17 = [v7 copy];
          if (v11 < v10)
          {
            do
            {
              [v17 removeLastEdge];
              --v14;
            }

            while (v14);
          }

          if ([v17 edgesCount])
          {
            [v28 addObject:v17];
          }

          v18 = v11;
        }

        else
        {
          v18 = 0;
        }

        if (v11 < v10 - 1)
        {
          v19 = [v7 edgeAtIndex:v18];
          [v26 addObject:v19];

          v20 = [v7 copy];
          do
          {
            [v20 removeFirstEdge];
            --v13;
          }

          while (v13);
          if ([v20 edgesCount])
          {
            [v28 addObject:v20];
          }
        }

LABEL_20:

        ++v6;
      }

      while (v6 != v30);
      v21 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      v30 = v21;
    }

    while (v21);
  }

  v22 = v28;
  *v25 = v22;

  v23 = *MEMORY[0x277D85DE8];

  return v26;
}

- (BOOL)updateGraphWithVisualString:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v5 = [objc_opt_class() scanMatchString:v4 definitions:&v15 constraints:&v14 forCreation:1 error:&v13];

  v6 = v15;
  v7 = v14;
  v8 = v13;
  if (v5)
  {
    v12 = v8;
    v9 = [objc_opt_class() populateGraph:self withDefinitions:v6 constraints:v7 error:&v12];
    v10 = v12;

    v8 = v10;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)scanGraphElementOptionsString:(id)a3 minimum:(unint64_t *)a4 maximum:(unint64_t *)a5 error:(id *)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v32 = 0;
  v9 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[\\w\\d\\ options:\\-\\ \\:\\{\\'\\\\}\\#\\%\\+\\$\\^\\/\\(\\)\\?\\=]+\\](?:\\*(\\d+)\\.\\.(\\d+))?" error:{0, &v32}];;
  v10 = v32;
  v11 = v10;
  *a4 = 1;
  *a5 = 1;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v14 = [v9 matchesInString:v8 options:0 range:{0, objc_msgSend(v8, "length")}];
    v15 = v14;
    if (v14)
    {
      memset(v31, 0, sizeof(v31));
      v17 = [v14 countByEnumeratingWithState:v31 objects:v33 count:16];
      if (v17)
      {
        v18 = **(&v31[0] + 1);
        if ([**(&v31[0] + 1) numberOfRanges] == 3)
        {
          v19 = [v18 rangeAtIndex:1];
          v21 = v20;
          v22 = [v18 rangeAtIndex:2];
          v16 = 0;
          if (v19 != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (v21)
            {
              v24 = v22;
              if (v22 != 0x7FFFFFFFFFFFFFFFLL)
              {
                if (v23)
                {
                  v25 = v21;
                  v26 = v23;
                  v27 = [v8 substringWithRange:{v19, v25}];
                  v28 = [v8 substringWithRange:{v24, v26}];
                  *a4 = [v27 integerValue];
                  *a5 = [v28 integerValue];

                  v16 = 1;
                }
              }
            }
          }
        }

        else
        {
          v16 = 0;
        }
      }

      v13 = (v17 != 0) & v16;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)scanGraphConstraintString:(id)a3 error:(id *)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 hasPrefix:{@"(", "hasSuffix:", @")"}])
  {
    v5 = objc_opt_new();
    v30 = 0;
    v6 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(\\(|<?-\\[)([\\w\\d\\ options:\\-\\ \\:\\{\\'\\\\}\\#\\%\\+\\$\\^\\/\\(\\)\\?\\=]+)(\\)|\\](?:\\*\\d+\\.\\.\\d+)?->?)" error:{0, &v30}];;
    v7 = v30;
    v8 = v7;
    v9 = 0;
    if (v6 && !v7)
    {
      v10 = [v6 matchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];
      v11 = v10;
      if (v10)
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v12 = v10;
        v13 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v27;
          v25 = v11;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v27 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v26 + 1) + 8 * i);
              if ([v17 numberOfRanges] != 4 || ((v18 = objc_msgSend(v17, "rangeAtIndex:", 0), v18 != 0x7FFFFFFFFFFFFFFFLL) ? (v20 = v19 == 0) : (v20 = 1), v20))
              {

                v9 = 0;
                v11 = v25;
                goto LABEL_25;
              }

              v21 = [v4 substringWithRange:{v18, v19}];
              [v5 addObject:v21];
            }

            v14 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
            v11 = v25;
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        if ([v5 count])
        {
          v22 = v5;
        }

        else
        {
          v22 = 0;
        }

        v9 = v22;
      }

      else
      {
        v9 = 0;
      }

LABEL_25:
    }
  }

  else
  {
    v9 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (BOOL)scanGraphElementString:(id)a3 type:(unint64_t *)a4 optionalName:(id *)a5 label:(id *)a6 optionalDomains:(id *)a7 optionalProperties:(id *)a8 error:(id *)a9
{
  v77[2] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = [MEMORY[0x277CCAC80] scannerWithString:v13];
  v15 = [MEMORY[0x277CCAB50] alphanumericCharacterSet];
  [v15 addCharactersInString:@"_"];
  [v15 removeCharactersInString:@"([:{';}])"];
  v16 = [MEMORY[0x277CCAB50] alphanumericCharacterSet];
  [v16 addCharactersInString:@"_ -%:/+*.$^(?)><="];
  [v16 removeCharactersInString:@"[{';}]"];
  if ([v14 scanString:@"(" intoString:{0) && objc_msgSend(v14, "scanLocation") == 1}]
  {
    v64 = 0;
    v17 = 1;
    v18 = 1;
  }

  else
  {
    if (![v14 scanString:@"[" intoString:0])
    {
      v69 = 0;
      v70 = 0;
      v67 = 0;
      v19 = 0;
      v23 = 0;
      v17 = 0;
      goto LABEL_79;
    }

    v17 = 0;
    if ([v14 scanLocation] != 1)
    {
      v69 = 0;
      v70 = 0;
      v67 = 0;
      v19 = 0;
      v23 = 0;
      goto LABEL_79;
    }

    v64 = 1;
    v18 = 2;
  }

  v66 = v18;
  v75 = 0;
  [v14 scanCharactersFromSet:v15 intoString:&v75];
  v19 = v75;
  if ([v14 scanString:@":" intoString:0])
  {
    v74 = 0;
    [v14 scanCharactersFromSet:v15 intoString:&v74];
    v20 = v74;
    v21 = @"*";
    if (v20)
    {
      v21 = v20;
    }

    v69 = v21;
    v62 = a5;
    v63 = v19;
    if (![v14 scanString:@":" intoString:0])
    {
      v67 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
LABEL_26:
      v70 = 0;
      if ([v14 scanString:@"{" intoString:0])
      {
        v58 = a6;
        v59 = a7;
        v60 = a8;
        v61 = v13;
        v70 = [MEMORY[0x277CBEB38] dictionary];
        v25 = 0;
        v26 = 0;
        while (1)
        {
          v27 = v25;
          v72 = v25;
          v28 = [v14 scanCharactersFromSet:v15 intoString:&v72];
          v25 = v72;

          if (!v28 || ([v14 scanString:@":" intoString:0] & 1) == 0 && !objc_msgSend(v14, "scanUpToString:intoString:", @":", 0) || (objc_msgSend(v14, "scanString:intoString:", @"'", 0) & 1) == 0 && !objc_msgSend(v14, "scanUpToString:intoString:", @"'", 0))
          {
            goto LABEL_59;
          }

          v29 = v15;
          v71 = v26;
          v30 = v16;
          v31 = [v14 scanCharactersFromSet:v16 intoString:&v71];
          v32 = v71;

          if (!v31 || ![v14 scanString:@"'" intoString:0])
          {
            v26 = v32;
            v16 = v30;
            v15 = v29;
LABEL_59:
            v19 = v63;
            goto LABEL_60;
          }

          v33 = @">";
          if (([v32 hasPrefix:@">"] & 1) == 0 && !objc_msgSend(v32, "hasPrefix:", @"<"))
          {
            v36 = objc_alloc_init(MEMORY[0x277CCABB8]);
            v40 = [v36 numberFromString:v32];
            v38 = v40;
            if (v40)
            {
              v41 = v40;
            }

            else
            {
              v41 = v32;
            }

            [v70 setObject:v41 forKey:v25];
            v26 = v32;
            v16 = v30;
            goto LABEL_49;
          }

          v34 = @">=";
          if ([v32 hasPrefix:@">="] & 1) != 0 || (v34 = @"<=", (objc_msgSend(v32, "hasPrefix:", @"<=")))
          {
            v35 = 2;
            v65 = v34;
          }

          else
          {
            if ([v32 hasPrefix:@">"])
            {
              v35 = 1;
            }

            else
            {
              v33 = @"<";
              v35 = 1;
              if (![v32 hasPrefix:@"<"])
              {
                v65 = 0;
                v26 = v32;
                goto LABEL_41;
              }
            }

            v65 = v33;
          }

          v26 = [v32 substringFromIndex:v35];

          LOBYTE(v35) = 0;
LABEL_41:
          v36 = objc_alloc_init(MEMORY[0x277CCABB8]);
          v37 = [v36 numberFromString:v26];
          v38 = v37;
          v16 = v30;
          if ((v35 & 1) != 0 || !v37)
          {
            [v70 setObject:v26 forKey:v25];
          }

          else
          {
            v76[0] = @"operator";
            v76[1] = @"value";
            v77[0] = v65;
            v77[1] = v37;
            v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:2];
            [v70 setObject:v39 forKey:v25];
          }

LABEL_49:
          v15 = v29;

          if (([v14 scanString:@";" intoString:0] & 1) == 0)
          {
            v43 = [v14 scanString:@"}" intoString:0];
            v19 = v63;
            if (v43)
            {

              a8 = v60;
              v13 = v61;
              a6 = v58;
              a7 = v59;
              a5 = v62;
              break;
            }

LABEL_60:

            v17 = 0;
            a8 = v60;
            v13 = v61;
            a6 = v58;
            a7 = v59;
            a5 = v62;
            goto LABEL_74;
          }
        }
      }

      if (!v17 || [v14 scanString:@"" intoString:?], 0))
      {
        if (!v64 || [v14 scanString:@"]" intoString:0])
        {
          v44 = v19;
          v45 = [v14 scanLocation];
          v46 = v45 == [v13 length];
          v19 = v44;
          v17 = v46;
          goto LABEL_74;
        }

        goto LABEL_78;
      }

LABEL_77:
      v17 = 0;
      v23 = 1;
      goto LABEL_79;
    }

    v73 = 0;
    [v14 scanInteger:&v73];
    v22 = [MEMORY[0x277CCAB58] indexSetWithIndex:v73];
    if ([v14 scanString:@" intoString:{", 0}])
    {
      do
      {
        [v14 scanInteger:&v73];
        [v22 addIndex:v73];
      }

      while (([v14 scanString:@" intoString:{", 0}] & 1) != 0);
    }

    if ([v22 count] < 2 || -[__CFString isEqualToString:](v69, "isEqualToString:", @"*"))
    {
      v67 = [v22 copy];

      v19 = v63;
      goto LABEL_26;
    }

    v70 = 0;
    v67 = 0;
    v17 = 0;
LABEL_63:
    v42 = a4;
    v19 = v63;
    goto LABEL_75;
  }

  if (!v19)
  {
    v69 = 0;
    v70 = 0;
    v67 = 0;
    v17 = 0;
LABEL_74:
    v42 = a4;
LABEL_75:
    v23 = v66;
    if (!v42)
    {
      goto LABEL_83;
    }

    goto LABEL_80;
  }

  if (v17 && ([v14 scanString:@"" intoString:?], 0) & 1) != 0)
  {
    goto LABEL_22;
  }

  if (!v64)
  {
    v69 = 0;
    v70 = 0;
    v67 = 0;
    goto LABEL_77;
  }

  if ([v14 scanString:@"]" intoString:0])
  {
LABEL_22:
    v63 = v19;
    v24 = [v14 scanLocation];
    if (v24 == [v13 length])
    {
      v67 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
      v69 = 0;
      v70 = 0;
      v17 = 1;
    }

    else
    {
      v69 = 0;
      v70 = 0;
      v67 = 0;
      v17 = 0;
    }

    goto LABEL_63;
  }

  v69 = 0;
  v70 = 0;
  v67 = 0;
LABEL_78:
  v17 = 0;
  v23 = 2;
LABEL_79:
  v42 = a4;
  if (!a4)
  {
    goto LABEL_83;
  }

LABEL_80:
  if (!v17)
  {
    v23 = 0;
  }

  *v42 = v23;
LABEL_83:
  if (a5)
  {
    if (v17)
    {
      v47 = v19;
    }

    else
    {
      v47 = 0;
    }

    *a5 = v47;
  }

  if (a6)
  {
    if (v17)
    {
      v48 = v69;
    }

    else
    {
      v48 = 0;
    }

    *a6 = v48;
  }

  if (a7)
  {
    if (v17)
    {
      v49 = v67;
    }

    else
    {
      v49 = 0;
    }

    *a7 = v49;
  }

  if (a8)
  {
    if (v17)
    {
      if ([v70 count])
      {
        v50 = v70;
      }

      else
      {
        v50 = 0;
      }
    }

    else
    {
      v50 = 0;
    }

    *a8 = v50;
  }

  if (a9)
  {
    v51 = v17;
  }

  else
  {
    v51 = 1;
  }

  if ((v51 & 1) == 0)
  {
    v52 = v19;
    v53 = MEMORY[0x277CCA9B8];
    v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@' do not match element requirement.", v13];
    v55 = v53;
    v19 = v52;
    *a9 = [v55 errorWithDescription:v54];
  }

  v56 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (BOOL)scanMatchString:(id)a3 definitions:(id *)a4 constraints:(id *)a5 forCreation:(BOOL)a6 error:(id *)a7
{
  v112 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (a4 && *a4)
  {
    v10 = [*a4 mutableCopy];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB38] dictionary];
  }

  v11 = v10;
  v77 = [MEMORY[0x277CBEB18] array];
  v12 = objc_alloc_init(MAAbstractGraph);
  v13 = [MEMORY[0x277CBEB18] array];
  v14 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"([\\(|\\[](?:[\\w\\|\\*\\ \\.\\'\\{\\}\\:\\(\\)\\-\\>\\<\\[\\]\\%\\+\\$\\^\\/\\?\\=]|\\d options:)+[\\)|\\]])" error:{0, a7}];;
  if (v14)
  {
    v15 = [v14 matchesInString:v9 options:0 range:{0, objc_msgSend(v9, "length")}];
    v16 = v15;
    if (v15)
    {
      v67 = a4;
      v68 = a5;
      v70 = v14;
      v71 = v13;
      v75 = v12;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v69 = v15;
      obj = v15;
      v73 = [obj countByEnumeratingWithState:&v106 objects:v111 count:16];
      if (v73)
      {
        v17 = 0x2797FD000uLL;
        v74 = *v107;
        v18 = 1;
        v78 = v9;
        v80 = v11;
        do
        {
          v19 = 0;
          v20 = a7;
          do
          {
            if (*v107 != v74)
            {
              v21 = v19;
              objc_enumerationMutation(obj);
              v19 = v21;
            }

            v76 = v19;
            v22 = *(*(&v106 + 1) + 8 * v19);
            if ([v22 numberOfRanges] >= 2)
            {
              v23 = 1;
              v81 = v22;
              while (2)
              {
                if ([v22 rangeAtIndex:v23] == 0x7FFFFFFFFFFFFFFFLL || !v24)
                {
                  goto LABEL_71;
                }

                v25 = [v22 rangeAtIndex:v23];
                v27 = [v9 substringWithRange:{v25, v26}];
                v104 = 0;
                v105 = 0;
                v102 = 0;
                v103 = 0;
                v101 = 0;
                v82 = v27;
                v28 = [a1 scanGraphElementString:0 type:? optionalName:? label:? optionalDomains:? optionalProperties:? error:?];
                v94 = v104;
                v29 = v103;
                v92 = v102;
                v89 = v101;
                v90 = v29;
                if (v28 && v29)
                {
                  if (v105 != 2)
                  {
                    if (v105 == 1)
                    {
                      v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v92, "count")}];
                      v31 = [v92 firstIndex];
                      while (v31 != 0xFFFF)
                      {
                        v32 = v30;
                        v33 = [MAAbstractNode alloc];
                        LODWORD(v34) = 1.0;
                        v35 = [(MAAbstractNode *)v33 initWithLabel:v90 domain:v31 weight:v89 properties:v34];
                        [(MANode *)v35 setIdentifier:v18];
                        v36 = v94;
                        if (!v94)
                        {
                          v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"#NodeID%ld", -[MANode identifier](v35, "identifier")];
                        }

                        ++v18;
                        v94 = v36;
                        v37 = [v11 objectForKey:v36];

                        if (v37)
                        {
                          if (!v20)
                          {
                            goto LABEL_67;
                          }

                          v61 = MEMORY[0x277CCA9B8];
                          [MEMORY[0x277CCACA8] stringWithFormat:@"Query string malformed, node named '%@' has no matching definition.", v94];
                          goto LABEL_66;
                        }

                        v30 = v32;
                        [v32 addObject:v35];
                        v31 = [v92 indexGreaterThanIndex:v31];
                      }

                      goto LABEL_48;
                    }

                    if (v20)
                    {
                      v60 = MEMORY[0x277CCA9B8];
                      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Query string malformed, element '%@' doesn't match any type.", v82];
                      [v60 errorWithDescription:v30];
                      *v20 = v54 = 0;
                      goto LABEL_69;
                    }

                    v54 = 0;
LABEL_70:

                    if (!v54)
                    {

                      v12 = v75;
                      v13 = v71;
                      goto LABEL_87;
                    }

LABEL_71:
                    ++v23;
                    v22 = v81;
                    if (v23 >= [v81 numberOfRanges])
                    {
                      goto LABEL_72;
                    }

                    continue;
                  }

                  v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v92, "count")}];
                  v55 = [v92 firstIndex];
                  while (v55 != 0xFFFF)
                  {
                    v32 = v30;
                    v56 = objc_alloc(*(v17 + 432));
                    LODWORD(v57) = 1.0;
                    v35 = [v56 initWithLabel:v90 domain:v55 weight:v89 properties:v57];
                    [(MANode *)v35 setIdentifier:v18];
                    v58 = v94;
                    if (!v94)
                    {
                      v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"#EdgeID%ld", -[MANode identifier](v35, "identifier")];
                    }

                    ++v18;
                    v94 = v58;
                    v59 = [v11 objectForKey:v58];

                    if (v59)
                    {
                      if (v20)
                      {
                        v61 = MEMORY[0x277CCA9B8];
                        [MEMORY[0x277CCACA8] stringWithFormat:@"Query string malformed, edge named '%@' has no matching definition.", v94];
                        v62 = LABEL_66:;
                        *v20 = [v61 errorWithDescription:v62];
                      }

LABEL_67:

                      v54 = 0;
                      v30 = v32;
                      goto LABEL_68;
                    }

                    v30 = v32;
                    [v32 addObject:v35];
                    v55 = [v92 indexGreaterThanIndex:v55];
                  }

LABEL_48:
                  [v11 setObject:v30 forKey:v94];
                  v54 = 1;
LABEL_68:
                  v9 = v78;
LABEL_69:

                  goto LABEL_70;
                }

                break;
              }

              v38 = [a1 scanGraphConstraintString:v82 error:v20];
              v79 = objc_opt_new();
              v39 = +[MAPath path];
              v99 = 1;
              v100 = 1;
              v95 = 0u;
              v96 = 0u;
              v97 = 0u;
              v98 = 0u;
              v30 = v38;
              if ([v30 countByEnumeratingWithState:&v95 objects:v110 count:16])
              {
                v84 = v30;
                v85 = v23;
                v83 = v39;
                *v96;
                *v96;
                v40 = **(&v95 + 1);
                v41 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(\\(|\\[)([\\w\\d\\ options:\\-\\ \\:\\{\\'\\\\}\\#\\%\\+\\$\\^\\/\\(\\)\\?\\=]+)(\\)|\\])" error:{0, v20}];;
                if (v41)
                {
                  v42 = v41;
                  v43 = [v41 matchesInString:v40 options:0 range:{0, objc_msgSend(v40, "length")}];
                  if ([v43 count] == 1)
                  {
                    v44 = [v43 firstObject];
                    if ([v44 numberOfRanges] == 4)
                    {
                      v45 = [v44 rangeAtIndex:0];
                      v88 = [v40 substringWithRange:{v45, v46}];
                      v47 = [a1 scanGraphElementString:v20 type:? optionalName:? label:? optionalDomains:? optionalProperties:? error:?];
                      v48 = 0;
                      v49 = 0;
                      v93 = 0;
                      v50 = 0;
                      v91 = v49;
                      if (v47)
                      {
                        if (v49 | v48)
                        {
                          v20 = a7;
                          if (a7)
                          {
                            v51 = MEMORY[0x277CCA9B8];
                            v52 = v50;
                            v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"Query string malformed, element '%@' has no matching type.", v88];
                            *a7 = [v51 errorWithDescription:v53];

                            v50 = v52;
                            v20 = a7;
                          }

                          v23 = v85;
LABEL_35:

                          v11 = v80;
                          v30 = v84;
                          v39 = v83;
LABEL_59:

                          v54 = 0;
LABEL_60:
                          v17 = 0x2797FD000;
                          goto LABEL_69;
                        }

                        v48 = 0;
                      }

                      v23 = v85;
                      v20 = a7;
                      goto LABEL_35;
                    }

                    if (v20)
                    {
                      *v20 = [MEMORY[0x277CCA9B8] errorWithDescription:{@"Query string malformed, constraint result has wrong number of ranges."}];
                    }

                    v11 = v80;
                    v23 = v85;
                    v39 = v83;
                  }

                  else
                  {
                    v11 = v80;
                    v23 = v85;
                    if (v20)
                    {
                      *v20 = [MEMORY[0x277CCA9B8] errorWithDescription:{@"Query string malformed, constraintString should match exactly once."}];
                    }
                  }
                }

                else
                {
                  v11 = v80;
                  v23 = v85;
                }

                v30 = v84;
                goto LABEL_59;
              }

              [v77 addObject:v79];
              if (([v39 isEmpty] & 1) == 0)
              {
                [v71 addObject:v39];
              }

              v54 = 1;
              v11 = v80;
              goto LABEL_60;
            }

LABEL_72:
            v19 = v76 + 1;
          }

          while (v76 + 1 != v73);
          v73 = [obj countByEnumeratingWithState:&v106 objects:v111 count:16];
        }

        while (v73);
      }

      if (v67)
      {
        if ([v11 count])
        {
          v63 = v11;
        }

        else
        {
          v63 = 0;
        }

        *v67 = v63;
      }

      v12 = v75;
      v13 = v71;
      if (v68)
      {
        if ([v71 count])
        {
          v64 = v71;
        }

        else
        {
          v64 = 0;
        }

        *v68 = v64;
      }

      LOBYTE(v54) = 1;
LABEL_87:
      v16 = v69;
      v14 = v70;
    }

    else if (a7)
    {
      [MEMORY[0x277CCA9B8] errorWithDescription:{@"Query string malformed, not matching any expression."}];
      *a7 = LOBYTE(v54) = 0;
    }

    else
    {
      LOBYTE(v54) = 0;
    }
  }

  else
  {
    LOBYTE(v54) = 0;
  }

  v65 = *MEMORY[0x277D85DE8];
  return v54;
}

+ (id)visualStringWithFormat:(id)a3 elements:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [MEMORY[0x277CCAB68] stringWithString:a3];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [v5 allKeys];
  v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v5 objectForKeyedSubscript:v11];
        v13 = [v12 visualString];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v14 = [v12 visualStringWithName:v11];

          v13 = v14;
        }

        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", v11];
        [v6 replaceOccurrencesOfString:v15 withString:v13 options:0 range:{0, objc_msgSend(v6, "length")}];
      }

      v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (MAGraph)graphWithDefinitions:(id)a3 constraints:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() graph];
  LODWORD(a5) = [a1 populateGraph:v10 withDefinitions:v9 constraints:v8 error:a5];

  if (a5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)populateGraph:(id)a3 withDefinitions:(id)a4 constraints:(id)a5 error:(id *)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v20 = a4;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 1;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = a5;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v8)
  {
    v9 = *v30;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __66__MAGraph_Query__populateGraph_withDefinitions_constraints_error___block_invoke;
        v25[3] = &unk_2797FF9D0;
        v12 = v20;
        v26 = v12;
        v28 = &v33;
        v13 = v19;
        v27 = v13;
        [v11 enumerateWithBlock:v25];
        if (!*(v34 + 24))
        {

          goto LABEL_12;
        }

        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __66__MAGraph_Query__populateGraph_withDefinitions_constraints_error___block_invoke_2;
        v21[3] = &unk_2797FF9D0;
        v22 = v12;
        v24 = &v33;
        v23 = v13;
        [v11 enumerateWithBlock:v21];
        v14 = *(v34 + 24) == 0;

        if (v14)
        {
          goto LABEL_12;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v15 = *(v34 + 24);
  _Block_object_dispose(&v33, 8);

  v16 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

void __66__MAGraph_Query__populateGraph_withDefinitions_constraints_error___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (v7)
  {
    v9 = a1[4];
    v10 = [v7 label];
    v11 = [v9 objectForKey:v10];

    if ([v11 count])
    {
      v25 = a4;
      v26 = v8;
      v27 = v7;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v29;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v29 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v28 + 1) + 8 * i);
            v18 = a1[5];
            v19 = [v17 label];
            v20 = [v17 domain];
            v21 = [v17 propertyDictionary];
            LODWORD(v22) = 1.0;
            v23 = [v18 addUniqueNodeWithLabel:v19 domain:v20 weight:v21 properties:0 didCreate:v22];

            if (!v23)
            {
              *(*(a1[6] + 8) + 24) = 0;
              *v25 = 1;
              goto LABEL_13;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:

      v8 = v26;
      v7 = v27;
    }

    else
    {
      *(*(a1[6] + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __66__MAGraph_Query__populateGraph_withDefinitions_constraints_error___block_invoke_2(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v88 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    v10 = a1[4];
    v11 = [v8 label];
    v12 = [v10 objectForKey:v11];

    v13 = [v9 sourceNode];
    v14 = [v9 targetNode];
    if ([v12 count])
    {
      v69 = a4;
      v72 = a1;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v15 = v12;
      v16 = [v15 countByEnumeratingWithState:&v81 objects:v87 count:16];
      if (!v16)
      {
        goto LABEL_36;
      }

      v17 = v16;
      v18 = *v82;
      while (1)
      {
        v19 = 0;
        do
        {
          if (*v82 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v64 = v19;
          v20 = *(*(&v81 + 1) + 8 * v19);
          v21 = v72[4];
          v22 = [v13 label];
          v23 = [v21 objectForKey:v22];

          if (![v23 count])
          {
            *(*(v72[6] + 8) + 24) = 0;
            *v69 = 1;
            goto LABEL_35;
          }

          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v24 = v23;
          v25 = [v24 countByEnumeratingWithState:&v77 objects:v86 count:16];
          if (!v25)
          {
            goto LABEL_27;
          }

          v26 = *v78;
          v65 = v14;
          v66 = v13;
          v67 = v24;
          v68 = v15;
          v58 = v17;
          v59 = v18;
          v57 = *v78;
          do
          {
            v27 = 0;
            v60 = v25;
            do
            {
              if (*v78 != v26)
              {
                v28 = v27;
                objc_enumerationMutation(v24);
                v27 = v28;
              }

              v61 = v27;
              v29 = *(*(&v77 + 1) + 8 * v27);
              v30 = v72[5];
              v31 = [v29 label];
              v32 = [v29 domain];
              v33 = [v29 propertyDictionary];
              v34 = [v30 nodesForLabel:v31 domain:v32 properties:v33];

              if ([v34 count] != 1)
              {
                *(*(v72[6] + 8) + 24) = 0;
                *v69 = 1;
                goto LABEL_34;
              }

              v71 = [v34 anyObject];
              v35 = v72[4];
              v36 = [v14 label];
              v37 = [v35 objectForKey:v36];

              if (![v37 count])
              {
                *(*(v72[6] + 8) + 24) = 0;
                *v69 = 1;

LABEL_34:
                v23 = v67;
                v15 = v68;

LABEL_35:
                goto LABEL_36;
              }

              v75 = 0u;
              v76 = 0u;
              v73 = 0u;
              v74 = 0u;
              obj = v37;
              v38 = [obj countByEnumeratingWithState:&v73 objects:v85 count:16];
              if (!v38)
              {
                goto LABEL_25;
              }

              v39 = v38;
              v40 = *v74;
              v41 = v72;
              v62 = v9;
              v63 = v7;
              while (2)
              {
                v42 = 0;
                v43 = v34;
                do
                {
                  if (*v74 != v40)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v44 = *(*(&v73 + 1) + 8 * v42);
                  v45 = v41[5];
                  v46 = [v44 label];
                  v47 = [v44 domain];
                  v48 = [v44 propertyDictionary];
                  v34 = [v45 nodesForLabel:v46 domain:v47 properties:v48];

                  if ([v34 count] != 1)
                  {
                    *(*(v41[6] + 8) + 24) = 0;
                    *v69 = 1;
LABEL_33:

                    v9 = v62;
                    v7 = v63;
                    v14 = v65;
                    v13 = v66;
                    goto LABEL_34;
                  }

                  v49 = [v34 anyObject];
                  v50 = v41[5];
                  v51 = [v20 label];
                  v52 = [v20 domain];
                  v53 = [v20 propertyDictionary];
                  LODWORD(v54) = 1.0;
                  v55 = [v50 addUniqueEdgeWithLabel:v51 sourceNode:v71 targetNode:v49 domain:v52 weight:v53 properties:v54];

                  if (!v55)
                  {
                    *(*(v72[6] + 8) + 24) = 0;
                    *v69 = 1;

                    goto LABEL_33;
                  }

                  ++v42;
                  v43 = v34;
                  v41 = v72;
                }

                while (v39 != v42);
                v39 = [obj countByEnumeratingWithState:&v73 objects:v85 count:16];
                v9 = v62;
                v7 = v63;
                if (v39)
                {
                  continue;
                }

                break;
              }

LABEL_25:

              v27 = v61 + 1;
              v14 = v65;
              v13 = v66;
              v24 = v67;
              v15 = v68;
              v17 = v58;
              v18 = v59;
              v26 = v57;
            }

            while (v61 + 1 != v60);
            v25 = [v67 countByEnumeratingWithState:&v77 objects:v86 count:16];
          }

          while (v25);
LABEL_27:

          v19 = v64 + 1;
        }

        while (v64 + 1 != v17);
        v17 = [v15 countByEnumeratingWithState:&v81 objects:v87 count:16];
        if (!v17)
        {
LABEL_36:

          goto LABEL_37;
        }
      }
    }

    *(*(a1[6] + 8) + 24) = 0;
    *a4 = 1;
  }

LABEL_37:

  v56 = *MEMORY[0x277D85DE8];
}

+ (MAGraph)graphWithVisualString:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12 = 0;
  v13 = 0;
  v7 = [objc_opt_class() scanMatchString:v6 definitions:&v13 constraints:&v12 forCreation:1 error:a4];

  v8 = v13;
  v9 = v12;
  v10 = 0;
  if (v7)
  {
    v10 = [a1 graphWithDefinitions:v8 constraints:v9 error:a4];
  }

  return v10;
}

- (void)breadthFirstSearchFromNode:(id)a3 directed:(BOOL)a4 usingBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CBEB58] set];
  v19 = 0;
  [v9 addObject:v7];
  if ([v9 count])
  {
    while (1)
    {
      v11 = [v9 firstObject];
      if ([v10 containsObject:v11])
      {
        goto LABEL_8;
      }

      v12 = v8[2](v8, v11, &v19);
      if (v19 == 1)
      {

        goto LABEL_12;
      }

      v13 = v12;
      [v10 addObject:v11];
      if (v13)
      {
        break;
      }

LABEL_9:

      if (![v9 count])
      {
        goto LABEL_12;
      }
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __69__MAGraph_Traversal__breadthFirstSearchFromNode_directed_usingBlock___block_invoke;
    v17[3] = &unk_2797FFB60;
    v14 = v9;
    v18 = v14;
    [v11 enumerateOutEdgesUsingBlock:v17];
    if (!a4)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __69__MAGraph_Traversal__breadthFirstSearchFromNode_directed_usingBlock___block_invoke_2;
      v15[3] = &unk_2797FFB60;
      v16 = v14;
      [v11 enumerateInEdgesUsingBlock:v15];
    }

LABEL_8:
    [v9 removeObject:v11];
    goto LABEL_9;
  }

LABEL_12:
}

void __69__MAGraph_Traversal__breadthFirstSearchFromNode_directed_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 targetNode];
  [v2 addObject:v3];
}

void __69__MAGraph_Traversal__breadthFirstSearchFromNode_directed_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 sourceNode];
  [v2 addObject:v3];
}

- (void)depthFirstSearchFromNode:(id)a3 directed:(BOOL)a4 usingBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CBEB58] set];
  v20 = 0;
  [v9 addObject:v7];
  if ([v9 count])
  {
    while (1)
    {
      v11 = [v9 lastObject];
      v12 = [v9 count];
      if ([v10 containsObject:v11])
      {
        goto LABEL_8;
      }

      v13 = v8[2](v8, v11, &v20);
      if (v20 == 1)
      {

        goto LABEL_12;
      }

      v14 = v13;
      [v10 addObject:v11];
      if (v14)
      {
        break;
      }

LABEL_9:

      if (![v9 count])
      {
        goto LABEL_12;
      }
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __67__MAGraph_Traversal__depthFirstSearchFromNode_directed_usingBlock___block_invoke;
    v18[3] = &unk_2797FFB60;
    v15 = v9;
    v19 = v15;
    [v11 enumerateOutEdgesUsingBlock:v18];
    if (!a4)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __67__MAGraph_Traversal__depthFirstSearchFromNode_directed_usingBlock___block_invoke_2;
      v16[3] = &unk_2797FFB60;
      v17 = v15;
      [v11 enumerateInEdgesUsingBlock:v16];
    }

LABEL_8:
    [v9 removeObjectAtIndex:v12 - 1];
    goto LABEL_9;
  }

LABEL_12:
}

void __67__MAGraph_Traversal__depthFirstSearchFromNode_directed_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 targetNode];
  [v2 addObject:v3];
}

void __67__MAGraph_Traversal__depthFirstSearchFromNode_directed_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 sourceNode];
  [v2 addObject:v3];
}

- (id)shortestPathFromNode:(id)a3 toNode:(id)a4 directed:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v24 = a4;
  v21 = +[MAPath path];
  v23 = [MEMORY[0x277CBEB40] orderedSet];
  v8 = objc_opt_new();
  v22 = [MEMORY[0x277CBEB40] orderedSet];
  v9 = v7;
  [v8 setObject:&unk_2867B4ED0 forKey:v9];
  if (v5)
  {
    v10 = 2;
  }

  else
  {
    v10 = 3;
  }

  v19 = v9;
  while (([v9 isEqual:{v24, v19}] & 1) == 0)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__MAGraph_Traversal__shortestPathFromNode_toNode_directed___block_invoke;
    aBlock[3] = &unk_2797FFAE8;
    v11 = v23;
    v50 = v5;
    v46 = v11;
    v47 = v9;
    v12 = v22;
    v48 = v12;
    v49 = v8;
    v13 = v9;
    v14 = _Block_copy(aBlock);
    [v13 enumerateEdgesOfType:v10 usingBlock:v14];
    v9 = [v12 firstObject];

    if (v9)
    {
      [v12 removeObject:v9];
    }

    else
    {
      v20 = v21;
    }

    if (!v9)
    {
      goto LABEL_17;
    }
  }

  v15 = v24;

  do
  {
    if (!v15)
    {
      break;
    }

    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x2020000000;
    v44[3] = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__6272;
    v42 = __Block_byref_object_dispose__6273;
    v43 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__6272;
    v36 = __Block_byref_object_dispose__6273;
    v37 = 0;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __59__MAGraph_Traversal__shortestPathFromNode_toNode_directed___block_invoke_5;
    v25[3] = &unk_2797FFB38;
    v16 = v15;
    v26 = v16;
    v27 = v8;
    v28 = v44;
    v29 = &v38;
    v30 = &v32;
    v31 = v5;
    [v16 enumerateNeighborNodesUsingBlock:v25];
    if (v33[5])
    {
      [v21 addFirstEdge:?];
    }

    v15 = v39[5];

    v17 = [v15 isEqual:v19];
    _Block_object_dispose(&v32, 8);

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(v44, 8);
  }

  while (!v17);
  v20 = v21;

LABEL_17:

  return v20;
}

uint64_t __59__MAGraph_Traversal__shortestPathFromNode_toNode_directed___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  if (([*(a1 + 32) containsObject:v18] & 1) == 0)
  {
    [*(a1 + 32) addObject:v18];
    v3 = [v18 targetNode];
    v4 = v3;
    if ((*(a1 + 64) & 1) == 0 && [v3 isEqual:*(a1 + 40)])
    {
      v5 = [v18 sourceNode];

      v4 = v5;
    }

    if (([*(a1 + 48) containsObject:v4] & 1) == 0)
    {
      [*(a1 + 48) addObject:v4];
    }

    v6 = [*(a1 + 56) objectForKey:*(a1 + 40)];
    [v6 doubleValue];
    v8 = v7;
    [v18 weight];
    v10 = v8 + v9;

    v11 = [*(a1 + 56) objectForKey:v4];
    [v11 doubleValue];
    v13 = v12;

    if (v10 < v13 || ([*(a1 + 56) objectForKey:v4], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
    {
      v15 = *(a1 + 56);
      v16 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
      [v15 setObject:v16 forKey:v4];
    }
  }

  return MEMORY[0x2821F96F8]();
}

void __59__MAGraph_Traversal__shortestPathFromNode_toNode_directed___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 32) != v4)
  {
    v5 = [*(a1 + 40) objectForKey:v4];

    if (v5)
    {
      v6 = [*(a1 + 40) objectForKey:v4];
      [v6 doubleValue];
      v8 = v7;

      if (v8 < *(*(*(a1 + 48) + 8) + 24) || !*(*(*(a1 + 56) + 8) + 40))
      {
        v9 = *(*(a1 + 64) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = 0;

        *(*(*(a1 + 48) + 8) + 24) = v8;
        objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
        v11 = MEMORY[0x277CBEB58];
        v12 = [*(a1 + 32) edgesFromNode:*(*(*(a1 + 56) + 8) + 40)];
        v13 = [v11 setWithSet:v12];

        if ((*(a1 + 72) & 1) == 0)
        {
          v14 = [*(a1 + 32) edgesTowardNode:*(*(*(a1 + 56) + 8) + 40)];
          [v13 unionSet:v14];
        }

        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __59__MAGraph_Traversal__shortestPathFromNode_toNode_directed___block_invoke_2;
        v15[3] = &unk_2797FFB10;
        v15[4] = *(a1 + 64);
        [v13 enumerateObjectsUsingBlock:v15];
      }
    }
  }
}

void __59__MAGraph_Traversal__shortestPathFromNode_toNode_directed___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v6 = *(v4 + 40);
  v5 = (v4 + 40);
  v14 = v3;
  if (v6)
  {
    [v3 weight];
    v8 = v7;
    [*(*(*(a1 + 32) + 8) + 40) weight];
    v9 = *(*(a1 + 32) + 8);
    v10 = v14;
    if (v8 >= v11)
    {
      v10 = *(v9 + 40);
    }

    v5 = (v9 + 40);
  }

  else
  {
    v10 = v3;
  }

  v12 = v10;
  v13 = *v5;
  *v5 = v12;
}

@end