@interface KGLabelBasedEntityFactory
- (Class)_selectClassFromPossibleLabels:(id)a3 dictionary:(id)a4;
- (Class)classForEdgeLabels:(id)a3;
- (Class)classForNodeLabels:(id)a3;
- (KGLabelBasedEntityFactory)init;
- (id)_generateAllPossibleLabelSetsForLabels:(id)a3 labelSetsCache:(id)a4;
- (id)edgeWithIdentifier:(unint64_t)a3 labels:(id)a4 properties:(id)a5 sourceNode:(id)a6 targetNode:(id)a7;
- (id)nodeWithIdentifier:(unint64_t)a3 labels:(id)a4 properties:(id)a5;
- (void)registerEdgeClass:(Class)a3 forLabels:(id)a4;
- (void)registerNodeClass:(Class)a3 forLabels:(id)a4;
@end

@implementation KGLabelBasedEntityFactory

- (id)edgeWithIdentifier:(unint64_t)a3 labels:(id)a4 properties:(id)a5 sourceNode:(id)a6 targetNode:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [v15 allObjects];
  v17 = [(KGLabelBasedEntityFactory *)self classForEdgeLabels:v16];

  v18 = [[v17 alloc] initWithIdentifier:a3 labels:v15 properties:v14 sourceNode:v13 targetNode:v12];

  return v18;
}

- (id)nodeWithIdentifier:(unint64_t)a3 labels:(id)a4 properties:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [v9 allObjects];
  v11 = [(KGLabelBasedEntityFactory *)self classForNodeLabels:v10];

  v12 = [[v11 alloc] initWithIdentifier:a3 labels:v9 properties:v8];

  return v12;
}

- (Class)classForNodeLabels:(id)a3
{
  v4 = a3;
  v5 = [[KGSetWrapper alloc] initWithArray:v4];
  v6 = [(NSMutableDictionary *)self->_classByNodeLabels objectForKeyedSubscript:v5];
  if (v6 || (v6 = [(KGLabelBasedEntityFactory *)self _selectClassFromPossibleLabels:v4 dictionary:self->_classByNodeLabels]) != 0)
  {
    defaultNodeClass = v6;
  }

  else
  {
    defaultNodeClass = self->_defaultNodeClass;
  }

  v8 = defaultNodeClass;

  return defaultNodeClass;
}

- (Class)classForEdgeLabels:(id)a3
{
  v4 = a3;
  v5 = [[KGSetWrapper alloc] initWithArray:v4];
  v6 = [(NSMutableDictionary *)self->_classByEdgeLabels objectForKeyedSubscript:v5];
  if (v6 || (v6 = [(KGLabelBasedEntityFactory *)self _selectClassFromPossibleLabels:v4 dictionary:self->_classByEdgeLabels]) != 0)
  {
    defaultEdgeClass = v6;
  }

  else
  {
    defaultEdgeClass = self->_defaultEdgeClass;
  }

  v8 = defaultEdgeClass;

  return defaultEdgeClass;
}

- (Class)_selectClassFromPossibleLabels:(id)a3 dictionary:(id)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = [(KGLabelBasedEntityFactory *)self _generateAllPossibleLabelSetsForLabels:v6 labelSetsCache:0];
    v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"count" ascending:0];
    v28[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    v11 = [v8 sortedArrayUsingDescriptors:v10];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = [v7 objectForKeyedSubscript:{*(*(&v23 + 1) + 8 * i), v23}];
          if (v15)
          {
            v19 = 1;
          }

          else
          {
            v19 = v18 == 0;
          }

          if (!v19)
          {
            v15 = v18;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
    }

    v20 = v15;
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_generateAllPossibleLabelSetsForLabels:(id)a3 labelSetsCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277CBEB58] set];
  }

  v10 = v9;
  v11 = [[KGSetWrapper alloc] initWithArray:v6];
  if ([v8 containsObject:v11])
  {
    v12 = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    v12 = [MEMORY[0x277CBEB58] setWithObject:v11];
    if ([v6 count] >= 2 && objc_msgSend(v6, "count"))
    {
      v13 = 0;
      do
      {
        v14 = objc_autoreleasePoolPush();
        v15 = [v6 mutableCopy];
        [v15 removeObjectAtIndex:v13];
        v16 = [(KGLabelBasedEntityFactory *)self _generateAllPossibleLabelSetsForLabels:v15 labelSetsCache:v10];
        [v12 unionSet:v16];
        [v10 unionSet:v16];

        objc_autoreleasePoolPop(v14);
        ++v13;
      }

      while (v13 < [v6 count]);
    }
  }

  return v12;
}

- (void)registerEdgeClass:(Class)a3 forLabels:(id)a4
{
  v6 = a4;
  v7 = [[KGSetWrapper alloc] initWithArray:v6];

  [(NSMutableDictionary *)self->_classByEdgeLabels setObject:a3 forKeyedSubscript:v7];
}

- (void)registerNodeClass:(Class)a3 forLabels:(id)a4
{
  v6 = a4;
  v7 = [[KGSetWrapper alloc] initWithArray:v6];

  [(NSMutableDictionary *)self->_classByNodeLabels setObject:a3 forKeyedSubscript:v7];
}

- (KGLabelBasedEntityFactory)init
{
  v12.receiver = self;
  v12.super_class = KGLabelBasedEntityFactory;
  v2 = [(KGLabelBasedEntityFactory *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    classByNodeLabels = v2->_classByNodeLabels;
    v2->_classByNodeLabels = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    classByEdgeLabels = v2->_classByEdgeLabels;
    v2->_classByEdgeLabels = v5;

    v7 = objc_opt_class();
    defaultNodeClass = v2->_defaultNodeClass;
    v2->_defaultNodeClass = v7;

    v9 = objc_opt_class();
    defaultEdgeClass = v2->_defaultEdgeClass;
    v2->_defaultEdgeClass = v9;
  }

  return v2;
}

@end