@interface MAChainRelation
+ (id)scanRelationWithScanner:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MAChainRelation)initWithSteps:(id)a3;
- (id)adjacencyByJoiningWithAdjacency:(id)a3 graph:(id)a4;
- (id)adjacencyWithStartNodeIdentifiers:(id)a3 graph:(id)a4;
- (id)inverse;
- (id)visualString;
- (unint64_t)hash;
- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)a3 toTargetNodeIdentifiers:(id)a4 graph:(id)a5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      steps = self->_steps;
      v6 = [(MAChainRelation *)v4 steps];
      v7 = [(NSArray *)steps isEqual:v6];
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
  v3 = [MEMORY[0x277CCAB68] string];
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

        v9 = [*(*(&v12 + 1) + 8 * i) visualString];
        [v3 appendString:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)adjacencyByJoiningWithAdjacency:(id)a3 graph:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
      v13 = v6;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v6 = [*(*(&v16 + 1) + 8 * v12) adjacencyByJoiningWithAdjacency:v13 graph:{v7, v16}];

        ++v12;
        v13 = v6;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)adjacencyWithStartNodeIdentifiers:(id)a3 graph:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_steps;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v9)
  {

LABEL_14:
    v11 = [KGDirectedBinaryAdjacency identityWith:v6, v18];
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
        v15 = [v14 adjacencyByJoiningWithAdjacency:v11 graph:v7];

        v11 = v15;
      }

      else
      {
        v11 = [v14 adjacencyWithStartNodeIdentifiers:v6 graph:{v7, v18}];
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

- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)a3 toTargetNodeIdentifiers:(id)a4 graph:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v20 = a4;
  v9 = a5;
  v10 = v8;
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
        [v17 unionAdjacencySetFromSourceNodeIdentifiers:v16 toTargetNodeIdentifiers:v10 graph:v9];

        objc_autoreleasePoolPop(v18);
        ++v15;
        v16 = v10;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  [v20 unionWithIdentifierSet:v10];
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
  v4 = [(NSArray *)self->_steps reverseObjectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) inverse];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [[MAChainRelation alloc] initWithSteps:v3];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (MAChainRelation)initWithSteps:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MAChainRelation;
  v6 = [(MARelation *)&v9 initForSubclassing];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 1, a3);
  }

  return v7;
}

+ (id)scanRelationWithScanner:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [MARelation _scanNonChainRelationWithScanner:v3];
  if (v5)
  {
    v6 = v5;
    do
    {
      [v4 addObject:v6];
      v7 = [MARelation _scanNonChainRelationWithScanner:v3];

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