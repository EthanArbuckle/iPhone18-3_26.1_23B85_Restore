@interface KnowledgeGraphTestEnvironment
+ (NSArray)matisseGraphs;
+ (NSArray)testEnvironmentsForExistingStores;
+ (NSArray)testEnvironmentsForOnDiskExistingStores;
+ (id)environmentWithTestDBWithStoreType:(Class)type extraOptions:(unint64_t)options;
+ (id)temporaryURLWithFileExtension:(id)extension;
- (BOOL)deleteEdge:(id)edge;
- (BOOL)deleteNode:(id)node;
- (KnowledgeGraphTestEnvironment)initWithKGGraph:(id)graph;
- (id)addEdgeWithLabels:(id)labels properties:(id)properties sourceNode:(id)node targetNode:(id)targetNode;
- (id)addNodeWithLabels:(id)labels properties:(id)properties;
- (id)placeholderEdgeWithLabels:(id)labels properties:(id)properties sourceNode:(id)node targetNode:(id)targetNode;
- (id)placeholderNodeWithLabels:(id)labels properties:(id)properties;
- (id)refetchEdge:(id)edge;
- (id)refetchNode:(id)node;
- (unint64_t)edgeCount;
- (unint64_t)nodeCount;
- (void)beginTransaction;
- (void)closeAndDeleteEnvironment;
- (void)commitTransaction;
- (void)populateGraph;
@end

@implementation KnowledgeGraphTestEnvironment

- (unint64_t)edgeCount
{
  graph = self->_graph;
  v3 = +[(KGElementFilter *)KGEdgeFilter];
  v4 = [(KGGraph *)graph edgeIdentifiersMatchingFilter:v3];
  v5 = [v4 count];

  return v5;
}

- (unint64_t)nodeCount
{
  graph = self->_graph;
  v3 = +[(KGElementFilter *)KGNodeFilter];
  v4 = [(KGGraph *)graph nodeIdentifiersMatchingFilter:v3];
  v5 = [v4 count];

  return v5;
}

- (void)populateGraph
{
  [(KnowledgeGraphTestEnvironment *)self beginTransaction];
  v25 = [(KnowledgeGraphTestEnvironment *)self addNodeWithLabels:&unk_2867B4EE8 properties:&unk_2867B5168];
  v3 = [(KnowledgeGraphTestEnvironment *)self addNodeWithLabels:&unk_2867B4F00 properties:&unk_2867B5190];
  v4 = [(KnowledgeGraphTestEnvironment *)self addNodeWithLabels:&unk_2867B4F18 properties:&unk_2867B51B8];
  v5 = [(KnowledgeGraphTestEnvironment *)self addNodeWithLabels:&unk_2867B4F30 properties:&unk_2867B51E0];
  v24 = [(KnowledgeGraphTestEnvironment *)self addNodeWithLabels:&unk_2867B4F48 properties:&unk_2867B5208];
  v6 = MEMORY[0x277CBEC10];
  v7 = [(KnowledgeGraphTestEnvironment *)self addNodeWithLabels:&unk_2867B4F60 properties:MEMORY[0x277CBEC10]];
  v23 = [(KnowledgeGraphTestEnvironment *)self addNodeWithLabels:&unk_2867B4F78 properties:v6];
  v22 = [(KnowledgeGraphTestEnvironment *)self addNodeWithLabels:&unk_2867B4F90 properties:v6];
  v8 = [(KnowledgeGraphTestEnvironment *)self addNodeWithLabels:&unk_2867B4FA8 properties:v6];
  v9 = [(KnowledgeGraphTestEnvironment *)self addNodeWithLabels:&unk_2867B4FC0 properties:&unk_2867B5230];
  v10 = [(KnowledgeGraphTestEnvironment *)self addNodeWithLabels:&unk_2867B4FD8 properties:&unk_2867B5258];
  v11 = [(KnowledgeGraphTestEnvironment *)self addNodeWithLabels:&unk_2867B4FF0 properties:&unk_2867B5280];
  v12 = [(KnowledgeGraphTestEnvironment *)self addEdgeWithLabels:&unk_2867B5008 properties:v6 sourceNode:v25 targetNode:v3];
  v13 = [(KnowledgeGraphTestEnvironment *)self addEdgeWithLabels:&unk_2867B5020 properties:v6 sourceNode:v25 targetNode:v4];
  v14 = [(KnowledgeGraphTestEnvironment *)self addEdgeWithLabels:&unk_2867B5038 properties:v6 sourceNode:v5 targetNode:v22];
  v15 = [(KnowledgeGraphTestEnvironment *)self addEdgeWithLabels:&unk_2867B5050 properties:v6 sourceNode:v25 targetNode:v7];
  v16 = [(KnowledgeGraphTestEnvironment *)self addEdgeWithLabels:&unk_2867B5068 properties:v6 sourceNode:v3 targetNode:v7];
  v17 = [(KnowledgeGraphTestEnvironment *)self addEdgeWithLabels:&unk_2867B5080 properties:v6 sourceNode:v4 targetNode:v23];
  v18 = [(KnowledgeGraphTestEnvironment *)self addEdgeWithLabels:&unk_2867B5098 properties:v6 sourceNode:v24 targetNode:v5];
  v19 = [(KnowledgeGraphTestEnvironment *)self addEdgeWithLabels:&unk_2867B50B0 properties:&unk_2867B52A8 sourceNode:v24 targetNode:v3];
  v20 = [(KnowledgeGraphTestEnvironment *)self addEdgeWithLabels:&unk_2867B50C8 properties:&unk_2867B52D0 sourceNode:v9 targetNode:v25];
  v21 = [(KnowledgeGraphTestEnvironment *)self addEdgeWithLabels:&unk_2867B50E0 properties:&unk_2867B52F8 sourceNode:v10 targetNode:v11];
  [(KnowledgeGraphTestEnvironment *)self commitTransaction];
}

- (BOOL)deleteEdge:(id)edge
{
  edgeCopy = edge;
  v5 = objc_alloc_init(KGGraphChangeRequest);
  [(KGGraphChangeRequest *)v5 removeEdge:edgeCopy];

  LOBYTE(self) = [(KGMutableGraph *)self->_graph performChangesAndWait:v5 error:0];
  return self;
}

- (BOOL)deleteNode:(id)node
{
  nodeCopy = node;
  v5 = objc_alloc_init(KGGraphChangeRequest);
  [(KGGraphChangeRequest *)v5 removeNode:nodeCopy];

  LOBYTE(self) = [(KGMutableGraph *)self->_graph performChangesAndWait:v5 error:0];
  return self;
}

- (id)refetchEdge:(id)edge
{
  graph = self->_graph;
  identifier = [edge identifier];

  return [(KGGraph *)graph edgeForIdentifier:identifier];
}

- (id)refetchNode:(id)node
{
  graph = self->_graph;
  identifier = [node identifier];

  return [(KGGraph *)graph nodeForIdentifier:identifier];
}

- (id)addEdgeWithLabels:(id)labels properties:(id)properties sourceNode:(id)node targetNode:(id)targetNode
{
  targetNodeCopy = targetNode;
  nodeCopy = node;
  propertiesCopy = properties;
  labelsCopy = labels;
  v14 = objc_alloc_init(KGGraphChangeRequest);
  v15 = [(KnowledgeGraphTestEnvironment *)self placeholderEdgeWithLabels:labelsCopy properties:propertiesCopy sourceNode:nodeCopy targetNode:targetNodeCopy];

  [(KGGraphChangeRequest *)v14 insertEdge:v15];
  [(KGMutableGraph *)self->_graph performChangesAndWait:v14 error:0];

  return v15;
}

- (id)addNodeWithLabels:(id)labels properties:(id)properties
{
  propertiesCopy = properties;
  labelsCopy = labels;
  v8 = objc_alloc_init(KGGraphChangeRequest);
  v9 = [(KnowledgeGraphTestEnvironment *)self placeholderNodeWithLabels:labelsCopy properties:propertiesCopy];

  [(KGGraphChangeRequest *)v8 insertNode:v9];
  [(KGMutableGraph *)self->_graph performChangesAndWait:v8 error:0];

  return v9;
}

- (id)placeholderEdgeWithLabels:(id)labels properties:(id)properties sourceNode:(id)node targetNode:(id)targetNode
{
  targetNodeCopy = targetNode;
  nodeCopy = node;
  labelsCopy = labels;
  v13 = [KGPropertyValue kgPropertiesWithMAProperties:properties];
  entityFactory = [(KGGraph *)self->_graph entityFactory];
  v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:labelsCopy];

  v16 = [entityFactory edgeWithIdentifier:0 labels:v15 properties:v13 sourceNode:nodeCopy targetNode:targetNodeCopy];

  return v16;
}

- (id)placeholderNodeWithLabels:(id)labels properties:(id)properties
{
  labelsCopy = labels;
  v7 = [KGPropertyValue kgPropertiesWithMAProperties:properties];
  entityFactory = [(KGGraph *)self->_graph entityFactory];
  v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:labelsCopy];

  v10 = [entityFactory nodeWithIdentifier:0 labels:v9 properties:v7];

  return v10;
}

- (void)commitTransaction
{
  store = [(KGStoredGraph *)self->_graph store];
  [store commitTransactionWithError:0];
}

- (void)beginTransaction
{
  store = [(KGStoredGraph *)self->_graph store];
  [store beginTransactionWithError:0];
}

- (void)closeAndDeleteEnvironment
{
  graph = self->_graph;
  if (graph)
  {
    store = [(KGStoredGraph *)graph store];
    [store close];

    store2 = [(KGStoredGraph *)self->_graph store];
    v6 = objc_opt_class();
    store3 = [(KGStoredGraph *)self->_graph store];
    v8 = [store3 url];
    [v6 destroyAtURL:v8 error:0];

    v9 = self->_graph;
    self->_graph = 0;
  }
}

- (KnowledgeGraphTestEnvironment)initWithKGGraph:(id)graph
{
  graphCopy = graph;
  v9.receiver = self;
  v9.super_class = KnowledgeGraphTestEnvironment;
  v6 = [(KnowledgeGraphTestEnvironment *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graph, graph);
  }

  return v7;
}

+ (NSArray)testEnvironmentsForOnDiskExistingStores
{
  v20 = *MEMORY[0x277D85DE8];
  testEnvironmentsForExistingStores = [self testEnvironmentsForExistingStores];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(testEnvironmentsForExistingStores, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = testEnvironmentsForExistingStores;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        graph = [v9 graph];
        store = [graph store];
        persistentStoreFileExtension = [objc_opt_class() persistentStoreFileExtension];

        if (persistentStoreFileExtension)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (NSArray)testEnvironmentsForExistingStores
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = [KnowledgeGraphTestEnvironment environmentWithTestDBWithStoreType:objc_opt_class() extraOptions:0];
  v3 = [KnowledgeGraphTestEnvironment environmentWithTestDBWithStoreType:objc_opt_class() extraOptions:0, v2];
  v8[1] = v3;
  v4 = [KnowledgeGraphTestEnvironment environmentWithTestDBWithStoreType:objc_opt_class() extraOptions:0];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (NSArray)matisseGraphs
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [MAKGTestGraph alloc];
  v4 = [self temporaryURLWithFileExtension:@"kgdb"];
  v5 = [(MAGraph *)v3 initWithPersistentStoreURL:v4 options:0 error:0];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)environmentWithTestDBWithStoreType:(Class)type extraOptions:(unint64_t)options
{
  v20 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == type)
  {
    v9 = objc_alloc_init(type);
  }

  else
  {
    persistentStoreFileExtension = [(objc_class *)type persistentStoreFileExtension];
    v8 = [self temporaryURLWithFileExtension:persistentStoreFileExtension];

    v9 = [[type alloc] initWithURL:v8];
  }

  v17 = 0;
  v10 = [v9 openWithMode:options | 6 error:&v17];
  v11 = v17;
  if (v10)
  {
    v12 = objc_alloc_init(KGLabelBasedEntityFactory);
    v13 = [[KGStoredGraph alloc] initGraphWithStore:v9 entityFactory:v12];
    v14 = [[self alloc] initWithKGGraph:v13];
  }

  else
  {
    v12 = KGLoggingConnection();
    if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v11;
      _os_log_error_impl(&dword_255870000, &v12->super, OS_LOG_TYPE_ERROR, "Error opening store %@", buf, 0xCu);
    }

    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)temporaryURLWithFileExtension:(id)extension
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CCAD78];
  extensionCopy = extension;
  uUID = [v4 UUID];
  uUIDString = [uUID UUIDString];
  extensionCopy = [v3 stringWithFormat:@"%@.%@", uUIDString, extensionCopy];

  v9 = NSTemporaryDirectory();
  v10 = [v9 stringByAppendingString:extensionCopy];

  v11 = [MEMORY[0x277CBEBC0] URLWithString:v10];

  return v11;
}

@end