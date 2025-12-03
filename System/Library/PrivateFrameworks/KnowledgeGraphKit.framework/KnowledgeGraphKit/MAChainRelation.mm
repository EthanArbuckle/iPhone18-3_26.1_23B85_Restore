@interface MAChainRelation
+ (id)scanRelationWithScanner:(id)scanner;
- (BOOL)isEqual:(id)equal;
- (MAChainRelation)initWithSteps:(id)steps;
- (id)adjacencyByJoiningWithAdjacency:(id)adjacency graph:(id)graph;
- (id)adjacencyWithStartNodeIdentifiers:(id)identifiers graph:(id)graph;
- (id)inverse;
- (id)visualString;
- (unint64_t)hash;
- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)identifiers toTargetNodeIdentifiers:(id)nodeIdentifiers graph:(id)graph;
@end

@implementation MAChainRelation

- (unint64_t)hash
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_steps;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 ^= (v5 << 6) + (v5 >> 2) + 2654435769u + [*(*(&v10 + 1) + 8 * i) hash];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      steps = self->_steps;
      steps = [(MAChainRelation *)equalCopy steps];
      v7 = [(NSArray *)steps isEqual:steps];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)visualString
{
  v17 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_steps;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        visualString = [*(*(&v12 + 1) + 8 * i) visualString];
        [string appendString:visualString];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return string;
}

- (id)adjacencyByJoiningWithAdjacency:(id)adjacency graph:(id)graph
{
  v21 = *MEMORY[0x277D85DE8];
  adjacencyCopy = adjacency;
  graphCopy = graph;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_steps;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      v13 = adjacencyCopy;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        adjacencyCopy = [*(*(&v16 + 1) + 8 * v12) adjacencyByJoiningWithAdjacency:v13 graph:{graphCopy, v16}];

        ++v12;
        v13 = adjacencyCopy;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return adjacencyCopy;
}

- (id)adjacencyWithStartNodeIdentifiers:(id)identifiers graph:(id)graph
{
  v23 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  graphCopy = graph;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_steps;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v9)
  {

LABEL_14:
    v11 = [KGDirectedBinaryAdjacency identityWith:identifiersCopy, v18];
    goto LABEL_15;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v19;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v19 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v18 + 1) + 8 * i);
      if (v11)
      {
        v15 = [v14 adjacencyByJoiningWithAdjacency:v11 graph:graphCopy];

        v11 = v15;
      }

      else
      {
        v11 = [v14 adjacencyWithStartNodeIdentifiers:identifiersCopy graph:{graphCopy, v18}];
      }
    }

    v10 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v10);

  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_15:

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)identifiers toTargetNodeIdentifiers:(id)nodeIdentifiers graph:(id)graph
{
  v27 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  nodeIdentifiersCopy = nodeIdentifiers;
  graphCopy = graph;
  v10 = identifiersCopy;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = self->_steps;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  v21 = v10;
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      v15 = 0;
      v16 = v10;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v22 + 1) + 8 * v15);
        v18 = objc_autoreleasePoolPush();
        v10 = objc_alloc_init(KGMutableElementIdentifierSet);
        [v17 unionAdjacencySetFromSourceNodeIdentifiers:v16 toTargetNodeIdentifiers:v10 graph:graphCopy];

        objc_autoreleasePoolPop(v18);
        ++v15;
        v16 = v10;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  [nodeIdentifiersCopy unionWithIdentifierSet:v10];
  v19 = *MEMORY[0x277D85DE8];
}

- (id)inverse
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  reverseObjectEnumerator = [(NSArray *)self->_steps reverseObjectEnumerator];
  v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        inverse = [*(*(&v13 + 1) + 8 * i) inverse];
        [v3 addObject:inverse];
      }

      v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [[MAChainRelation alloc] initWithSteps:v3];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (MAChainRelation)initWithSteps:(id)steps
{
  stepsCopy = steps;
  v9.receiver = self;
  v9.super_class = MAChainRelation;
  initForSubclassing = [(MARelation *)&v9 initForSubclassing];
  v7 = initForSubclassing;
  if (initForSubclassing)
  {
    objc_storeStrong(initForSubclassing + 1, steps);
  }

  return v7;
}

+ (id)scanRelationWithScanner:(id)scanner
{
  scannerCopy = scanner;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [MARelation _scanNonChainRelationWithScanner:scannerCopy];
  if (v5)
  {
    v6 = v5;
    do
    {
      [v4 addObject:v6];
      v7 = [MARelation _scanNonChainRelationWithScanner:scannerCopy];

      v6 = v7;
    }

    while (v7);
  }

  v8 = [v4 count];
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = [v4 objectAtIndexedSubscript:0];
    }

    else
    {
      v9 = [[MAChainRelation alloc] initWithSteps:v4];
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end