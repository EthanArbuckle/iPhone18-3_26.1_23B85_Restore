@interface MANode
- (BOOL)conformsToNodeSchema:(id)a3;
- (BOOL)hasEdge:(id)a3 isIn:(BOOL *)a4;
- (BOOL)hasEqualPropertiesToNode:(id)a3;
- (BOOL)hasProperties;
- (BOOL)hasProperties:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToNode:(id)a3;
- (BOOL)isSameNodeAsNode:(id)a3;
- (BOOL)isUnique;
- (BOOL)matchesNode:(id)a3 includingProperties:(BOOL)a4;
- (MANode)init;
- (MANode)initWithIdentifier:(unint64_t)a3 labels:(id)a4 properties:(id)a5;
- (MANode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 weight:(float)a5 properties:(id)a6;
- (NSDictionary)properties;
- (NSSet)labels;
- (NSString)description;
- (id)anyEdgeOfType:(unint64_t)a3 withNode:(id)a4;
- (id)changingPropertiesWithProperties:(id)a3;
- (id)edgesOfType:(unint64_t)a3 withNode:(id)a4;
- (id)propertyDictionary;
- (id)propertyForKey:(id)a3;
- (id)propertyForKey:(id)a3 kindOfClass:(Class)a4;
- (id)propertyKeys;
- (id)shortDescription;
- (id)visualStringWithName:(id)a3 andPropertyKeys:(id)a4;
- (unint64_t)edgesCount;
- (unint64_t)hash;
- (unint64_t)inEdgesCount;
- (unint64_t)outEdgesCount;
- (unint64_t)propertiesCount;
- (void)enumerateEdgesInDomains:(id)a3 usingBlock:(id)a4;
- (void)enumerateEdgesOfType:(unint64_t)a3 usingBlock:(id)a4;
- (void)enumerateEdgesUsingBlock:(id)a3;
- (void)enumerateEdgesWithDomains:(id)a3 usingBlock:(id)a4;
- (void)enumerateInEdgesUsingBlock:(id)a3;
- (void)enumerateNeighborEdgesAndNodesThroughEdgesWithDomains:(id)a3 usingBlock:(id)a4;
- (void)enumerateNeighborEdgesAndNodesThroughInEdgesUsingBlock:(id)a3;
- (void)enumerateNeighborEdgesAndNodesThroughOutEdgesUsingBlock:(id)a3;
- (void)enumerateNeighborEdgesAndNodesUsingBlock:(id)a3;
- (void)enumerateNeighborNodesThroughEdgesWithDomains:(id)a3 usingBlock:(id)a4;
- (void)enumerateNeighborNodesThroughInEdgesUsingBlock:(id)a3;
- (void)enumerateNeighborNodesThroughOutEdgesUsingBlock:(id)a3;
- (void)enumerateNeighborNodesUsingBlock:(id)a3;
- (void)enumerateOutEdgesUsingBlock:(id)a3;
- (void)enumeratePropertiesUsingBlock:(id)a3;
- (void)enumerateSiblingNodesThroughEdgesWithDomains:(id)a3 usingBlock:(id)a4;
- (void)setGraphReference:(id)a3;
@end

@implementation MANode

- (id)visualStringWithName:(id)a3 andPropertyKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x277CCAB68] string];
  objc_msgSend(v9, "appendString:", @"(");
  if (v6)
  {
    [v9 appendString:v6];
  }

  v10 = [(MANode *)self label];

  if (v10)
  {
    v11 = [(MANode *)self label];
    [v9 appendFormat:@":%@", v11];
  }

  else
  {
    [v9 appendFormat:@":"];
  }

  if ([(MANode *)self domain]&& [(MANode *)self domain]!= 1)
  {
    [v9 appendFormat:@":%lu", -[MANode domain](self, "domain")];
  }

  v12 = [(MANode *)self propertyDictionary];
  v13 = PropertiesVisualStringForKeys(v7, v12);

  if ([v13 length] >= 3)
  {
    [v9 appendFormat:@" %@", v13];
  }

  [v9 appendString:@""]);

  objc_autoreleasePoolPop(v8);

  return v9;
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

- (void)enumerateSiblingNodesThroughEdgesWithDomains:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__MANode_enumerateSiblingNodesThroughEdgesWithDomains_usingBlock___block_invoke;
  v10[3] = &unk_2797FECC0;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)enumerateNeighborEdgesAndNodesThroughEdgesWithDomains:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__MANode_enumerateNeighborEdgesAndNodesThroughEdgesWithDomains_usingBlock___block_invoke;
  v8[3] = &unk_2797FEBF8;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(MANode *)self enumerateEdgesInDomains:a3 usingBlock:v8];
}

void __75__MANode_enumerateNeighborEdgesAndNodesThroughEdgesWithDomains_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 oppositeNode:v3];
  (*(*(a1 + 40) + 16))();
}

- (void)enumerateNeighborNodesThroughEdgesWithDomains:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__MANode_enumerateNeighborNodesThroughEdgesWithDomains_usingBlock___block_invoke;
  v8[3] = &unk_2797FEBF8;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(MANode *)self enumerateEdgesInDomains:a3 usingBlock:v8];
}

void __67__MANode_enumerateNeighborNodesThroughEdgesWithDomains_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 oppositeNode:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

- (BOOL)hasEdge:(id)a3 isIn:(BOOL *)a4
{
  v6 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v7 = [v6 sourceNode];
  v8 = [v6 targetNode];
  v9 = [MAEdgeFilter alloc];
  v10 = [v6 label];
  v11 = -[MAElementFilter initWithLabel:domain:](v9, "initWithLabel:domain:", v10, [v6 domain]);

  v12 = [v6 propertyDictionary];
  implementation = self->_implementation;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __23__MANode_hasEdge_isIn___block_invoke;
  v18[3] = &unk_2797FEC20;
  v14 = v7;
  v19 = v14;
  v15 = v8;
  v20 = v15;
  v16 = v12;
  v23 = &v25;
  v24 = a4;
  v21 = v16;
  v22 = self;
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

- (void)enumerateNeighborNodesThroughInEdgesUsingBlock:(id)a3
{
  implementation = self->_implementation;
  v4 = a3;
  v5 = +[(MAElementFilter *)MAEdgeFilter];
  [(MANodeImplementationProtocol *)implementation enumerateNeighborNodesThroughEdgesOfType:1 matchingFilter:v5 usingBlock:v4];
}

- (void)enumerateNeighborEdgesAndNodesThroughInEdgesUsingBlock:(id)a3
{
  implementation = self->_implementation;
  v4 = a3;
  v5 = +[(MAElementFilter *)MAEdgeFilter];
  [(MANodeImplementationProtocol *)implementation enumerateNeighborEdgesAndNodesThroughEdgesOfType:1 matchingFilter:v5 usingBlock:v4];
}

- (void)enumerateNeighborNodesThroughOutEdgesUsingBlock:(id)a3
{
  implementation = self->_implementation;
  v4 = a3;
  v5 = +[(MAElementFilter *)MAEdgeFilter];
  [(MANodeImplementationProtocol *)implementation enumerateNeighborNodesThroughEdgesOfType:2 matchingFilter:v5 usingBlock:v4];
}

- (void)enumerateNeighborEdgesAndNodesThroughOutEdgesUsingBlock:(id)a3
{
  implementation = self->_implementation;
  v4 = a3;
  v5 = +[(MAElementFilter *)MAEdgeFilter];
  [(MANodeImplementationProtocol *)implementation enumerateNeighborEdgesAndNodesThroughEdgesOfType:2 matchingFilter:v5 usingBlock:v4];
}

- (void)enumerateEdgesInDomains:(id)a3 usingBlock:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v6;
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
  v19 = v7;
  v14 = v7;
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

- (void)enumerateNeighborNodesUsingBlock:(id)a3
{
  implementation = self->_implementation;
  v4 = a3;
  v5 = +[(MAElementFilter *)MANodeFilter];
  [(MANodeImplementationProtocol *)implementation enumerateNeighborNodesMatchingFilter:v5 usingBlock:v4];
}

- (void)enumerateNeighborEdgesAndNodesUsingBlock:(id)a3
{
  implementation = self->_implementation;
  v4 = a3;
  v5 = +[(MAElementFilter *)MANodeFilter];
  [(MANodeImplementationProtocol *)implementation enumerateNeighborEdgesAndNodesMatchingFilter:v5 usingBlock:v4];
}

- (void)enumerateEdgesWithDomains:(id)a3 usingBlock:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v6;
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
  v19 = v7;
  v14 = v7;
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

- (void)enumerateOutEdgesUsingBlock:(id)a3
{
  implementation = self->_implementation;
  v4 = a3;
  v5 = +[(MAElementFilter *)MAEdgeFilter];
  [(MANodeImplementationProtocol *)implementation enumerateEdgesOfType:2 matchingFilter:v5 usingBlock:v4];
}

- (void)enumerateInEdgesUsingBlock:(id)a3
{
  implementation = self->_implementation;
  v4 = a3;
  v5 = +[(MAElementFilter *)MAEdgeFilter];
  [(MANodeImplementationProtocol *)implementation enumerateEdgesOfType:1 matchingFilter:v5 usingBlock:v4];
}

- (void)enumerateEdgesOfType:(unint64_t)a3 usingBlock:(id)a4
{
  implementation = self->_implementation;
  v6 = a4;
  v7 = +[(MAElementFilter *)MAEdgeFilter];
  [(MANodeImplementationProtocol *)implementation enumerateEdgesOfType:a3 matchingFilter:v7 usingBlock:v6];
}

- (void)enumerateEdgesUsingBlock:(id)a3
{
  implementation = self->_implementation;
  v4 = a3;
  v5 = +[(MAElementFilter *)MAEdgeFilter];
  [(MANodeImplementationProtocol *)implementation enumerateEdgesOfType:3 matchingFilter:v5 usingBlock:v4];
}

- (id)anyEdgeOfType:(unint64_t)a3 withNode:(id)a4
{
  v6 = a4;
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
  [(MANode *)self enumerateEdgesOfType:a3 withNode:v6 usingBlock:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)edgesOfType:(unint64_t)a3 withNode:(id)a4
{
  v6 = MEMORY[0x277CBEB58];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __31__MANode_edgesOfType_withNode___block_invoke;
  v11[3] = &unk_2797FFB60;
  v9 = v8;
  v12 = v9;
  [(MANode *)self enumerateEdgesOfType:a3 withNode:v7 usingBlock:v11];

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
  v3 = [(MAGraphReference *)self->_graphReference concreteGraph];
  if (v3)
  {
    v4 = [(MANode *)self label];
    v5 = [(MANode *)self domain];
    v6 = [(MANode *)self propertyDictionary];
    v7 = [v3 nodesForLabel:v4 domain:v5 properties:v6];
    v8 = [v7 count] == 1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)changingPropertiesWithProperties:(id)a3
{
  v4 = a3;
  v5 = [(MANode *)self properties];
  v6 = [v5 isEqual:v4];
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
    v11 = v5;
    v12 = &v13;
    [v4 enumerateKeysAndObjectsUsingBlock:v10];
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

- (void)enumeratePropertiesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(MANode *)self propertyDictionary];
  [v5 enumerateKeysAndObjectsUsingBlock:v4];
}

- (id)propertyForKey:(id)a3 kindOfClass:(Class)a4
{
  v4 = [(MANode *)self propertyForKey:a3];
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

- (id)propertyForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MANode *)v5 propertyDictionary];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:v4];
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(v5);

  return v8;
}

- (BOOL)hasProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
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

- (BOOL)matchesNode:(id)a3 includingProperties:(BOOL)a4
{
  v7 = a3;
  v8 = [v7 label];
  v9 = [v7 domain];
  v10 = [v8 isEqualToString:@"*"];
  if ((v10 & 1) == 0)
  {
    v4 = [(MANode *)self label];
    if (![v4 isEqualToString:v8])
    {
      v11 = 0;
      goto LABEL_14;
    }
  }

  if (v9)
  {
    v11 = [(MANode *)self domain]== v9;
    if (!v11 || !a4)
    {
LABEL_10:
      if (v10)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_9:
    v12 = [v7 propertyDictionary];
    v11 = [(MANode *)self hasProperties:v12];

    goto LABEL_10;
  }

  if (a4)
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

- (BOOL)isEqualToNode:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 == self)
  {
    v10 = 1;
    goto LABEL_12;
  }

  v6 = [(MANode *)self domain];
  if (v6 == [(MANode *)v5 domain]&& ([(MANode *)self weight], v8 = v7, [(MANode *)v5 weight], v8 == v9))
  {
    v11 = [(MANode *)self label];
    v12 = [(MANode *)v5 label];
    v10 = (v11 == v12 || [v11 isEqualToString:v12]) && -[MANode hasEqualPropertiesToNode:](self, "hasEqualPropertiesToNode:", v5);
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

LABEL_12:

  return v10;
}

- (BOOL)isSameNodeAsNode:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v6 = [(MANode *)v4 graphReference];
    v7 = [(MANode *)self graphReference];
    if (v6 == v7)
    {
      v9 = [(MANode *)v5 identifier];
      v8 = v9 == [(MANode *)self identifier];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)hasEqualPropertiesToNode:(id)a3
{
  v4 = a3;
  v5 = [(MANode *)self propertyDictionary];
  v6 = [v4 propertyDictionary];

  LOBYTE(v4) = [v5 isEqualToDictionary:v6];
  return v4;
}

- (unint64_t)hash
{
  v3 = [(MAGraphReference *)self->_graphReference hash];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_identifier];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
    goto LABEL_13;
  }

  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    v8 = v7;
    identifier = self->_identifier;
    if (identifier == 0x7FFFFFFFFFFFFFFFLL && v7->_identifier == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_9;
    }

    if (self->_graphReference != v7->_graphReference)
    {
      v10 = [(MANode *)self graph];
      v11 = [(MANode *)v8 graph];

      if (v10 != v11)
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
  v3 = [(MANode *)self propertyDictionary];
  [(MANode *)self weight];
  v5 = [(MAKGWeightConversion *)v4 kgPropertiesForMAProperties:v3 weight:?];

  return v5;
}

- (NSSet)labels
{
  v3 = [(MANode *)self graphReference];
  v4 = [v3 concreteGraph];
  v5 = [(MANode *)self label];
  v6 = [v4 labelsForLabel:v5 domain:{-[MANode domain](self, "domain")}];

  return v6;
}

- (MANode)initWithIdentifier:(unint64_t)a3 labels:(id)a4 properties:(id)a5
{
  v17 = 1;
  v16 = 0;
  v8 = a5;
  MALabelAndDomainFromKGLabels(a4, &v16, &v17);
  v9 = v16;
  v15 = 0;
  v14 = 0;
  [MAKGWeightConversion maPropertiesAndWeightForKGProperties:v8 maProperties:&v14 maWeight:&v15];

  LODWORD(v10) = v15;
  v11 = [(MANode *)self initWithLabel:v9 domain:v17 weight:v14 properties:v10];
  v12 = v11;
  if (v11)
  {
    [(MANode *)v11 setIdentifier:a3];
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
  v8 = [(MANode *)self label];
  v9 = [v3 stringWithFormat:@"[%@] id:[%lu] weight:[%f] label:[%@]", v4, identifier, *&v7, v8];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ edgesCount:[%ld] inEdgesCount:[%ld] outEdgesCount:[%ld]", v9, -[MANode edgesCount](self, "edgesCount"), -[MANode inEdgesCount](self, "inEdgesCount"), -[MANode outEdgesCount](self, "outEdgesCount")];

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MANode *)self shortDescription];
  v5 = [(MANode *)self visualString];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setGraphReference:(id)a3
{
  v5 = a3;
  if (self->_graphReference != v5)
  {
    v9 = v5;
    v6 = [(MAGraphReference *)v5 concreteGraph];
    v7 = [objc_alloc(objc_msgSend(v6 "nodeClass"))];
    implementation = self->_implementation;
    self->_implementation = v7;

    objc_storeStrong(&self->_graphReference, a3);
    v5 = v9;
  }
}

- (MANode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 weight:(float)a5 properties:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = KGMethodNotImplentedException(self, a2);
  objc_exception_throw(v11);
}

- (MANode)init
{
  v3.receiver = self;
  v3.super_class = MANode;
  return [(MANode *)&v3 init];
}

- (BOOL)conformsToNodeSchema:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__MANode_Schema__conformsToNodeSchema___block_invoke;
  v7[3] = &unk_2797FF270;
  v5 = v4;
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