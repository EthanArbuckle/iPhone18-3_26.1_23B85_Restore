@interface MANode
- (BOOL)conformsToNodeSchema:(id)schema;
- (BOOL)hasEdge:(id)edge isIn:(BOOL *)in;
- (BOOL)hasEqualPropertiesToNode:(id)node;
- (BOOL)hasProperties;
- (BOOL)hasProperties:(id)properties;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNode:(id)node;
- (BOOL)isSameNodeAsNode:(id)node;
- (BOOL)isUnique;
- (BOOL)matchesNode:(id)node includingProperties:(BOOL)properties;
- (MANode)init;
- (MANode)initWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties;
- (MANode)initWithLabel:(id)label domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties;
- (NSDictionary)properties;
- (NSSet)labels;
- (NSString)description;
- (id)anyEdgeOfType:(unint64_t)type withNode:(id)node;
- (id)changingPropertiesWithProperties:(id)properties;
- (id)edgesOfType:(unint64_t)type withNode:(id)node;
- (id)propertyDictionary;
- (id)propertyForKey:(id)key;
- (id)propertyForKey:(id)key kindOfClass:(Class)class;
- (id)propertyKeys;
- (id)shortDescription;
- (id)visualStringWithName:(id)name andPropertyKeys:(id)keys;
- (unint64_t)edgesCount;
- (unint64_t)hash;
- (unint64_t)inEdgesCount;
- (unint64_t)outEdgesCount;
- (unint64_t)propertiesCount;
- (void)enumerateEdgesInDomains:(id)domains usingBlock:(id)block;
- (void)enumerateEdgesOfType:(unint64_t)type usingBlock:(id)block;
- (void)enumerateEdgesUsingBlock:(id)block;
- (void)enumerateEdgesWithDomains:(id)domains usingBlock:(id)block;
- (void)enumerateInEdgesUsingBlock:(id)block;
- (void)enumerateNeighborEdgesAndNodesThroughEdgesWithDomains:(id)domains usingBlock:(id)block;
- (void)enumerateNeighborEdgesAndNodesThroughInEdgesUsingBlock:(id)block;
- (void)enumerateNeighborEdgesAndNodesThroughOutEdgesUsingBlock:(id)block;
- (void)enumerateNeighborEdgesAndNodesUsingBlock:(id)block;
- (void)enumerateNeighborNodesThroughEdgesWithDomains:(id)domains usingBlock:(id)block;
- (void)enumerateNeighborNodesThroughInEdgesUsingBlock:(id)block;
- (void)enumerateNeighborNodesThroughOutEdgesUsingBlock:(id)block;
- (void)enumerateNeighborNodesUsingBlock:(id)block;
- (void)enumerateOutEdgesUsingBlock:(id)block;
- (void)enumeratePropertiesUsingBlock:(id)block;
- (void)enumerateSiblingNodesThroughEdgesWithDomains:(id)domains usingBlock:(id)block;
- (void)setGraphReference:(id)reference;
@end

@implementation MANode

- (id)visualStringWithName:(id)name andPropertyKeys:(id)keys
{
  nameCopy = name;
  keysCopy = keys;
  v8 = objc_autoreleasePoolPush();
  string = [MEMORY[0x277CCAB68] string];
  objc_msgSend(string, "appendString:", @"(");
  if (nameCopy)
  {
    [string appendString:nameCopy];
  }

  label = [(MANode *)self label];

  if (label)
  {
    label2 = [(MANode *)self label];
    [string appendFormat:@":%@", label2];
  }

  else
  {
    [string appendFormat:@":"];
  }

  if ([(MANode *)self domain]&& [(MANode *)self domain]!= 1)
  {
    [string appendFormat:@":%lu", -[MANode domain](self, "domain")];
  }

  propertyDictionary = [(MANode *)self propertyDictionary];
  v13 = PropertiesVisualStringForKeys(keysCopy, propertyDictionary);

  if ([v13 length] >= 3)
  {
    [string appendFormat:@" %@", v13];
  }

  [string appendString:@""]);

  objc_autoreleasePoolPop(v8);

  return string;
}

void __71__MANode_enumerateSiblingNodesThroughEdgesWithLabel_domain_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (([v8 isSameNodeAsNode:*(a1 + 32)] & 1) == 0)
  {
    v9 = *(a1 + 56);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__MANode_enumerateSiblingNodesThroughEdgesWithLabel_domain_usingBlock___block_invoke_2;
    v11[3] = &unk_2797FEC98;
    v10 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v14 = *(a1 + 48);
    v12 = v8;
    v13 = v7;
    v15 = a4;
    [v12 enumerateNeighborEdgesAndNodesThroughEdgesWithLabel:v10 domain:v9 usingBlock:v11];
  }
}

void __71__MANode_enumerateSiblingNodesThroughEdgesWithLabel_domain_usingBlock___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  if (([v7 isSameNodeAsNode:*(a1 + 32)] & 1) == 0)
  {
    v8 = *(a1 + 48);
    v9 = *(a1 + 40);
    (*(*(a1 + 56) + 16))();
    **(a1 + 64) = *a4;
  }
}

- (void)enumerateSiblingNodesThroughEdgesWithDomains:(id)domains usingBlock:(id)block
{
  domainsCopy = domains;
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__MANode_enumerateSiblingNodesThroughEdgesWithDomains_usingBlock___block_invoke;
  v10[3] = &unk_2797FECC0;
  v10[4] = self;
  v11 = domainsCopy;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = domainsCopy;
  [(MANode *)self enumerateNeighborEdgesAndNodesThroughEdgesWithDomains:v9 usingBlock:v10];
}

void __66__MANode_enumerateSiblingNodesThroughEdgesWithDomains_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (([v8 isSameNodeAsNode:*(a1 + 32)] & 1) == 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__MANode_enumerateSiblingNodesThroughEdgesWithDomains_usingBlock___block_invoke_2;
    v10[3] = &unk_2797FEC98;
    v9 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v13 = *(a1 + 48);
    v11 = v8;
    v12 = v7;
    v14 = a4;
    [v11 enumerateNeighborEdgesAndNodesThroughEdgesWithDomains:v9 usingBlock:v10];
  }
}

void __66__MANode_enumerateSiblingNodesThroughEdgesWithDomains_usingBlock___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  if (([v7 isSameNodeAsNode:*(a1 + 32)] & 1) == 0)
  {
    v8 = *(a1 + 48);
    v9 = *(a1 + 40);
    (*(*(a1 + 56) + 16))();
    **(a1 + 64) = *a4;
  }
}

- (void)enumerateNeighborEdgesAndNodesThroughEdgesWithDomains:(id)domains usingBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__MANode_enumerateNeighborEdgesAndNodesThroughEdgesWithDomains_usingBlock___block_invoke;
  v8[3] = &unk_2797FEBF8;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [(MANode *)self enumerateEdgesInDomains:domains usingBlock:v8];
}

void __75__MANode_enumerateNeighborEdgesAndNodesThroughEdgesWithDomains_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 oppositeNode:v3];
  (*(*(a1 + 40) + 16))();
}

- (void)enumerateNeighborNodesThroughEdgesWithDomains:(id)domains usingBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__MANode_enumerateNeighborNodesThroughEdgesWithDomains_usingBlock___block_invoke;
  v8[3] = &unk_2797FEBF8;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [(MANode *)self enumerateEdgesInDomains:domains usingBlock:v8];
}

void __67__MANode_enumerateNeighborNodesThroughEdgesWithDomains_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 oppositeNode:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

- (BOOL)hasEdge:(id)edge isIn:(BOOL *)in
{
  edgeCopy = edge;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  sourceNode = [edgeCopy sourceNode];
  targetNode = [edgeCopy targetNode];
  v9 = [MAEdgeFilter alloc];
  label = [edgeCopy label];
  v11 = -[MAElementFilter initWithLabel:domain:](v9, "initWithLabel:domain:", label, [edgeCopy domain]);

  propertyDictionary = [edgeCopy propertyDictionary];
  implementation = self->_implementation;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __23__MANode_hasEdge_isIn___block_invoke;
  v18[3] = &unk_2797FEC20;
  v14 = sourceNode;
  v19 = v14;
  v15 = targetNode;
  v20 = v15;
  v16 = propertyDictionary;
  v23 = &v25;
  inCopy = in;
  v21 = v16;
  selfCopy = self;
  [(MANodeImplementationProtocol *)implementation enumerateEdgesOfType:3 matchingFilter:v11 usingBlock:v18];
  LOBYTE(self) = *(v26 + 24);

  _Block_object_dispose(&v25, 8);
  return self;
}

void __23__MANode_hasEdge_isIn___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  v5 = [v11 sourceNode];
  if ([v5 isSameNodeAsNode:*(a1 + 32)])
  {
    v6 = [v11 targetNode];
    v7 = [v6 isSameNodeAsNode:*(a1 + 40)];

    v8 = v11;
    if (!v7)
    {
      goto LABEL_9;
    }

    v5 = [v11 propertyDictionary];
    v9 = *(a1 + 48);
    if (v9 == v5 || [v9 isEqualToDictionary:v5])
    {
      v10 = *(a1 + 72);
      *(*(*(a1 + 64) + 8) + 24) = 1;
      if (v10)
      {
        **(a1 + 72) = [*(a1 + 56) isEqualToNode:*(a1 + 40)];
      }

      *a3 = 1;
    }
  }

  v8 = v11;
LABEL_9:
}

- (void)enumerateNeighborNodesThroughInEdgesUsingBlock:(id)block
{
  implementation = self->_implementation;
  blockCopy = block;
  v5 = +[(MAElementFilter *)MAEdgeFilter];
  [(MANodeImplementationProtocol *)implementation enumerateNeighborNodesThroughEdgesOfType:1 matchingFilter:v5 usingBlock:blockCopy];
}

- (void)enumerateNeighborEdgesAndNodesThroughInEdgesUsingBlock:(id)block
{
  implementation = self->_implementation;
  blockCopy = block;
  v5 = +[(MAElementFilter *)MAEdgeFilter];
  [(MANodeImplementationProtocol *)implementation enumerateNeighborEdgesAndNodesThroughEdgesOfType:1 matchingFilter:v5 usingBlock:blockCopy];
}

- (void)enumerateNeighborNodesThroughOutEdgesUsingBlock:(id)block
{
  implementation = self->_implementation;
  blockCopy = block;
  v5 = +[(MAElementFilter *)MAEdgeFilter];
  [(MANodeImplementationProtocol *)implementation enumerateNeighborNodesThroughEdgesOfType:2 matchingFilter:v5 usingBlock:blockCopy];
}

- (void)enumerateNeighborEdgesAndNodesThroughOutEdgesUsingBlock:(id)block
{
  implementation = self->_implementation;
  blockCopy = block;
  v5 = +[(MAElementFilter *)MAEdgeFilter];
  [(MANodeImplementationProtocol *)implementation enumerateNeighborEdgesAndNodesThroughEdgesOfType:2 matchingFilter:v5 usingBlock:blockCopy];
}

- (void)enumerateEdgesInDomains:(id)domains usingBlock:(id)block
{
  v25 = *MEMORY[0x277D85DE8];
  domainsCopy = domains;
  blockCopy = block;
  v8 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = domainsCopy;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 addIndex:{objc_msgSend(*(*(&v20 + 1) + 8 * v13++), "unsignedIntegerValue")}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __45__MANode_enumerateEdgesInDomains_usingBlock___block_invoke;
  v17[3] = &unk_2797FEBF8;
  v18 = v8;
  v19 = blockCopy;
  v14 = blockCopy;
  v15 = v8;
  [(MANode *)self enumerateEdgesOfType:3 withLabel:0 domain:0 usingBlock:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __45__MANode_enumerateEdgesInDomains_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsIndex:{objc_msgSend(v3, "domain")}])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)enumerateNeighborNodesUsingBlock:(id)block
{
  implementation = self->_implementation;
  blockCopy = block;
  v5 = +[(MAElementFilter *)MANodeFilter];
  [(MANodeImplementationProtocol *)implementation enumerateNeighborNodesMatchingFilter:v5 usingBlock:blockCopy];
}

- (void)enumerateNeighborEdgesAndNodesUsingBlock:(id)block
{
  implementation = self->_implementation;
  blockCopy = block;
  v5 = +[(MAElementFilter *)MANodeFilter];
  [(MANodeImplementationProtocol *)implementation enumerateNeighborEdgesAndNodesMatchingFilter:v5 usingBlock:blockCopy];
}

- (void)enumerateEdgesWithDomains:(id)domains usingBlock:(id)block
{
  v25 = *MEMORY[0x277D85DE8];
  domainsCopy = domains;
  blockCopy = block;
  v8 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = domainsCopy;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 addIndex:{objc_msgSend(*(*(&v20 + 1) + 8 * v13++), "unsignedIntegerValue")}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __47__MANode_enumerateEdgesWithDomains_usingBlock___block_invoke;
  v17[3] = &unk_2797FEBF8;
  v18 = v8;
  v19 = blockCopy;
  v14 = blockCopy;
  v15 = v8;
  [(MANode *)self enumerateEdgesOfType:3 withLabel:0 domain:0 usingBlock:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __47__MANode_enumerateEdgesWithDomains_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsIndex:{objc_msgSend(v3, "domain")}])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)enumerateOutEdgesUsingBlock:(id)block
{
  implementation = self->_implementation;
  blockCopy = block;
  v5 = +[(MAElementFilter *)MAEdgeFilter];
  [(MANodeImplementationProtocol *)implementation enumerateEdgesOfType:2 matchingFilter:v5 usingBlock:blockCopy];
}

- (void)enumerateInEdgesUsingBlock:(id)block
{
  implementation = self->_implementation;
  blockCopy = block;
  v5 = +[(MAElementFilter *)MAEdgeFilter];
  [(MANodeImplementationProtocol *)implementation enumerateEdgesOfType:1 matchingFilter:v5 usingBlock:blockCopy];
}

- (void)enumerateEdgesOfType:(unint64_t)type usingBlock:(id)block
{
  implementation = self->_implementation;
  blockCopy = block;
  v7 = +[(MAElementFilter *)MAEdgeFilter];
  [(MANodeImplementationProtocol *)implementation enumerateEdgesOfType:type matchingFilter:v7 usingBlock:blockCopy];
}

- (void)enumerateEdgesUsingBlock:(id)block
{
  implementation = self->_implementation;
  blockCopy = block;
  v5 = +[(MAElementFilter *)MAEdgeFilter];
  [(MANodeImplementationProtocol *)implementation enumerateEdgesOfType:3 matchingFilter:v5 usingBlock:blockCopy];
}

- (id)anyEdgeOfType:(unint64_t)type withNode:(id)node
{
  nodeCopy = node;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__2787;
  v14 = __Block_byref_object_dispose__2788;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__MANode_anyEdgeOfType_withNode___block_invoke;
  v9[3] = &unk_2797FFB10;
  v9[4] = &v10;
  [(MANode *)self enumerateEdgesOfType:type withNode:nodeCopy usingBlock:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)edgesOfType:(unint64_t)type withNode:(id)node
{
  v6 = MEMORY[0x277CBEB58];
  nodeCopy = node;
  v8 = objc_alloc_init(v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __31__MANode_edgesOfType_withNode___block_invoke;
  v11[3] = &unk_2797FFB60;
  v9 = v8;
  v12 = v9;
  [(MANode *)self enumerateEdgesOfType:type withNode:nodeCopy usingBlock:v11];

  return v9;
}

- (unint64_t)outEdgesCount
{
  implementation = self->_implementation;
  v3 = +[(MAElementFilter *)MAEdgeFilter];
  v4 = [(MANodeImplementationProtocol *)implementation countOfEdgesOfType:2 matchingFilter:v3];

  return v4;
}

- (unint64_t)inEdgesCount
{
  implementation = self->_implementation;
  v3 = +[(MAElementFilter *)MAEdgeFilter];
  v4 = [(MANodeImplementationProtocol *)implementation countOfEdgesOfType:1 matchingFilter:v3];

  return v4;
}

- (unint64_t)edgesCount
{
  implementation = self->_implementation;
  v3 = +[(MAElementFilter *)MAEdgeFilter];
  v4 = [(MANodeImplementationProtocol *)implementation countOfEdgesOfType:3 matchingFilter:v3];

  return v4;
}

- (BOOL)isUnique
{
  concreteGraph = [(MAGraphReference *)self->_graphReference concreteGraph];
  if (concreteGraph)
  {
    label = [(MANode *)self label];
    domain = [(MANode *)self domain];
    propertyDictionary = [(MANode *)self propertyDictionary];
    v7 = [concreteGraph nodesForLabel:label domain:domain properties:propertyDictionary];
    v8 = [v7 count] == 1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)changingPropertiesWithProperties:(id)properties
{
  propertiesCopy = properties;
  properties = [(MANode *)self properties];
  v6 = [properties isEqual:propertiesCopy];
  v7 = MEMORY[0x277CBEC10];
  if ((v6 & 1) == 0)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__2787;
    v17 = __Block_byref_object_dispose__2788;
    v18 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__MANode_changingPropertiesWithProperties___block_invoke;
    v10[3] = &unk_2797FEBD0;
    v11 = properties;
    v12 = &v13;
    [propertiesCopy enumerateKeysAndObjectsUsingBlock:v10];
    v8 = v14[5];
    if (!v8)
    {
      v8 = v7;
    }

    v7 = v8;

    _Block_object_dispose(&v13, 8);
  }

  return v7;
}

void __43__MANode_changingPropertiesWithProperties___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v12];
  v7 = v6;
  if (v6 && ([v6 isEqual:v5] & 1) == 0)
  {
    v8 = *(*(*(a1 + 40) + 8) + 40);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v8 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v8 setObject:v5 forKeyedSubscript:v12];
  }
}

- (id)propertyDictionary
{
  v2 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (id)propertyKeys
{
  v2 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (unint64_t)propertiesCount
{
  v2 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (BOOL)hasProperties
{
  v2 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (void)enumeratePropertiesUsingBlock:(id)block
{
  blockCopy = block;
  propertyDictionary = [(MANode *)self propertyDictionary];
  [propertyDictionary enumerateKeysAndObjectsUsingBlock:blockCopy];
}

- (id)propertyForKey:(id)key kindOfClass:(Class)class
{
  v4 = [(MANode *)self propertyForKey:key];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)propertyForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  propertyDictionary = [(MANode *)selfCopy propertyDictionary];
  v7 = propertyDictionary;
  if (propertyDictionary)
  {
    v8 = [propertyDictionary objectForKeyedSubscript:keyCopy];
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(selfCopy);

  return v8;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
  {
    v6 = [v5 count];
    if (v6 <= [(MANode *)self propertiesCount])
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v13 = 1;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __24__MANode_hasProperties___block_invoke;
      v9[3] = &unk_2797FF298;
      v9[4] = self;
      v9[5] = &v10;
      [v5 enumerateKeysAndObjectsUsingBlock:v9];
      v7 = *(v11 + 24);
      _Block_object_dispose(&v10, 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

void __24__MANode_hasProperties___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = [v7 propertyForKey:a2];
  LOBYTE(v7) = [v9 isEqual:v8];

  *(*(*(a1 + 40) + 8) + 24) = v7;
  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

- (BOOL)matchesNode:(id)node includingProperties:(BOOL)properties
{
  nodeCopy = node;
  label = [nodeCopy label];
  domain = [nodeCopy domain];
  v10 = [label isEqualToString:@"*"];
  if ((v10 & 1) == 0)
  {
    label2 = [(MANode *)self label];
    if (![label2 isEqualToString:label])
    {
      v11 = 0;
      goto LABEL_14;
    }
  }

  if (domain)
  {
    v11 = [(MANode *)self domain]== domain;
    if (!v11 || !properties)
    {
LABEL_10:
      if (v10)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_9:
    propertyDictionary = [nodeCopy propertyDictionary];
    v11 = [(MANode *)self hasProperties:propertyDictionary];

    goto LABEL_10;
  }

  if (properties)
  {
    goto LABEL_9;
  }

  v11 = 1;
  if ((v10 & 1) == 0)
  {
LABEL_14:
  }

LABEL_15:

  return v11;
}

- (BOOL)isEqualToNode:(id)node
{
  nodeCopy = node;
  v5 = nodeCopy;
  if (!nodeCopy)
  {
    goto LABEL_5;
  }

  if (nodeCopy == self)
  {
    v10 = 1;
    goto LABEL_12;
  }

  domain = [(MANode *)self domain];
  if (domain == [(MANode *)v5 domain]&& ([(MANode *)self weight], v8 = v7, [(MANode *)v5 weight], v8 == v9))
  {
    label = [(MANode *)self label];
    label2 = [(MANode *)v5 label];
    v10 = (label == label2 || [label isEqualToString:label2]) && -[MANode hasEqualPropertiesToNode:](self, "hasEqualPropertiesToNode:", v5);
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

LABEL_12:

  return v10;
}

- (BOOL)isSameNodeAsNode:(id)node
{
  nodeCopy = node;
  v5 = nodeCopy;
  if (nodeCopy == self)
  {
    v8 = 1;
  }

  else
  {
    graphReference = [(MANode *)nodeCopy graphReference];
    graphReference2 = [(MANode *)self graphReference];
    if (graphReference == graphReference2)
    {
      identifier = [(MANode *)v5 identifier];
      v8 = identifier == [(MANode *)self identifier];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)hasEqualPropertiesToNode:(id)node
{
  nodeCopy = node;
  propertyDictionary = [(MANode *)self propertyDictionary];
  propertyDictionary2 = [nodeCopy propertyDictionary];

  LOBYTE(nodeCopy) = [propertyDictionary isEqualToDictionary:propertyDictionary2];
  return nodeCopy;
}

- (unint64_t)hash
{
  v3 = [(MAGraphReference *)self->_graphReference hash];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_identifier];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
    goto LABEL_13;
  }

  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    v8 = v7;
    identifier = self->_identifier;
    if (identifier == 0x7FFFFFFFFFFFFFFFLL && v7->_identifier == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_9;
    }

    if (self->_graphReference != v7->_graphReference)
    {
      graph = [(MANode *)self graph];
      graph2 = [(MANode *)v8 graph];

      if (graph != graph2)
      {
LABEL_9:
        v6 = [(MANode *)self isEqualToNode:v8];
LABEL_12:

        goto LABEL_13;
      }

      identifier = self->_identifier;
    }

    v6 = identifier == v8->_identifier;
    goto LABEL_12;
  }

  v6 = 0;
LABEL_13:

  return v6;
}

- (NSDictionary)properties
{
  propertyDictionary = [(MANode *)self propertyDictionary];
  [(MANode *)self weight];
  v5 = [(MAKGWeightConversion *)v4 kgPropertiesForMAProperties:propertyDictionary weight:?];

  return v5;
}

- (NSSet)labels
{
  graphReference = [(MANode *)self graphReference];
  concreteGraph = [graphReference concreteGraph];
  label = [(MANode *)self label];
  v6 = [concreteGraph labelsForLabel:label domain:{-[MANode domain](self, "domain")}];

  return v6;
}

- (MANode)initWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties
{
  v17 = 1;
  v16 = 0;
  propertiesCopy = properties;
  MALabelAndDomainFromKGLabels(labels, &v16, &v17);
  v9 = v16;
  v15 = 0;
  v14 = 0;
  [MAKGWeightConversion maPropertiesAndWeightForKGProperties:propertiesCopy maProperties:&v14 maWeight:&v15];

  LODWORD(v10) = v15;
  v11 = [(MANode *)self initWithLabel:v9 domain:v17 weight:v14 properties:v10];
  v12 = v11;
  if (v11)
  {
    [(MANode *)v11 setIdentifier:identifier];
  }

  return v12;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MANode;
  v4 = [(MANode *)&v12 description];
  identifier = self->_identifier;
  [(MANode *)self weight];
  v7 = v6;
  label = [(MANode *)self label];
  v9 = [v3 stringWithFormat:@"[%@] id:[%lu] weight:[%f] label:[%@]", v4, identifier, *&v7, label];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ edgesCount:[%ld] inEdgesCount:[%ld] outEdgesCount:[%ld]", v9, -[MANode edgesCount](self, "edgesCount"), -[MANode inEdgesCount](self, "inEdgesCount"), -[MANode outEdgesCount](self, "outEdgesCount")];

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [(MANode *)self shortDescription];
  visualString = [(MANode *)self visualString];
  v6 = [v3 stringWithFormat:@"%@ %@", shortDescription, visualString];

  return v6;
}

- (void)setGraphReference:(id)reference
{
  referenceCopy = reference;
  if (self->_graphReference != referenceCopy)
  {
    v9 = referenceCopy;
    concreteGraph = [(MAGraphReference *)referenceCopy concreteGraph];
    v7 = [objc_alloc(objc_msgSend(concreteGraph "nodeClass"))];
    implementation = self->_implementation;
    self->_implementation = v7;

    objc_storeStrong(&self->_graphReference, reference);
    referenceCopy = v9;
  }
}

- (MANode)initWithLabel:(id)label domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties
{
  labelCopy = label;
  propertiesCopy = properties;
  v11 = KGMethodNotImplentedException(self, a2);
  objc_exception_throw(v11);
}

- (MANode)init
{
  v3.receiver = self;
  v3.super_class = MANode;
  return [(MANode *)&v3 init];
}

- (BOOL)conformsToNodeSchema:(id)schema
{
  schemaCopy = schema;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__MANode_Schema__conformsToNodeSchema___block_invoke;
  v7[3] = &unk_2797FF270;
  v5 = schemaCopy;
  v8 = v5;
  v9 = &v10;
  [(MANode *)self enumerateEdgesUsingBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __39__MANode_Schema__conformsToNodeSchema___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__MANode_Schema__conformsToNodeSchema___block_invoke_2;
  v8[3] = &unk_2797FF270;
  v7 = v5;
  v9 = v7;
  v10 = &v11;
  [v6 enumerateEdgesUsingBlock:v8];
  *(*(*(a1 + 40) + 8) + 24) = *(v12 + 24);
  *a3 = *(*(*(a1 + 40) + 8) + 24) ^ 1;

  _Block_object_dispose(&v11, 8);
}

void __39__MANode_Schema__conformsToNodeSchema___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (elementMatchesDefinition(v5, *(a1 + 32)))
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) conformsToEdgeSchema:v5];
    *a3 = *(*(*(a1 + 40) + 8) + 24);
  }
}

@end