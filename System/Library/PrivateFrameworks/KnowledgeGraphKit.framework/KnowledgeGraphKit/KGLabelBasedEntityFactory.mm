@interface KGLabelBasedEntityFactory
- (Class)_selectClassFromPossibleLabels:(id)labels dictionary:(id)dictionary;
- (Class)classForEdgeLabels:(id)labels;
- (Class)classForNodeLabels:(id)labels;
- (KGLabelBasedEntityFactory)init;
- (id)_generateAllPossibleLabelSetsForLabels:(id)labels labelSetsCache:(id)cache;
- (id)edgeWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties sourceNode:(id)node targetNode:(id)targetNode;
- (id)nodeWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties;
- (void)registerEdgeClass:(Class)class forLabels:(id)labels;
- (void)registerNodeClass:(Class)class forLabels:(id)labels;
@end

@implementation KGLabelBasedEntityFactory

- (id)edgeWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties sourceNode:(id)node targetNode:(id)targetNode
{
  targetNodeCopy = targetNode;
  nodeCopy = node;
  propertiesCopy = properties;
  labelsCopy = labels;
  allObjects = [labelsCopy allObjects];
  v17 = [(KGLabelBasedEntityFactory *)self classForEdgeLabels:allObjects];

  v18 = [[v17 alloc] initWithIdentifier:identifier labels:labelsCopy properties:propertiesCopy sourceNode:nodeCopy targetNode:targetNodeCopy];

  return v18;
}

- (id)nodeWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties
{
  propertiesCopy = properties;
  labelsCopy = labels;
  allObjects = [labelsCopy allObjects];
  v11 = [(KGLabelBasedEntityFactory *)self classForNodeLabels:allObjects];

  v12 = [[v11 alloc] initWithIdentifier:identifier labels:labelsCopy properties:propertiesCopy];

  return v12;
}

- (Class)classForNodeLabels:(id)labels
{
  labelsCopy = labels;
  v5 = [[KGSetWrapper alloc] initWithArray:labelsCopy];
  v6 = [(NSMutableDictionary *)self->_classByNodeLabels objectForKeyedSubscript:v5];
  if (v6 || (v6 = [(KGLabelBasedEntityFactory *)self _selectClassFromPossibleLabels:labelsCopy dictionary:self->_classByNodeLabels]) != 0)
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

- (Class)classForEdgeLabels:(id)labels
{
  labelsCopy = labels;
  v5 = [[KGSetWrapper alloc] initWithArray:labelsCopy];
  v6 = [(NSMutableDictionary *)self->_classByEdgeLabels objectForKeyedSubscript:v5];
  if (v6 || (v6 = [(KGLabelBasedEntityFactory *)self _selectClassFromPossibleLabels:labelsCopy dictionary:self->_classByEdgeLabels]) != 0)
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

- (Class)_selectClassFromPossibleLabels:(id)labels dictionary:(id)dictionary
{
  v28[1] = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  dictionaryCopy = dictionary;
  if ([dictionaryCopy count])
  {
    v8 = [(KGLabelBasedEntityFactory *)self _generateAllPossibleLabelSetsForLabels:labelsCopy labelSetsCache:0];
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

          v18 = [dictionaryCopy objectForKeyedSubscript:{*(*(&v23 + 1) + 8 * i), v23}];
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

- (id)_generateAllPossibleLabelSetsForLabels:(id)labels labelSetsCache:(id)cache
{
  labelsCopy = labels;
  cacheCopy = cache;
  v8 = cacheCopy;
  if (cacheCopy)
  {
    v9 = cacheCopy;
  }

  else
  {
    v9 = [MEMORY[0x277CBEB58] set];
  }

  v10 = v9;
  v11 = [[KGSetWrapper alloc] initWithArray:labelsCopy];
  if ([v8 containsObject:v11])
  {
    v12 = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    v12 = [MEMORY[0x277CBEB58] setWithObject:v11];
    if ([labelsCopy count] >= 2 && objc_msgSend(labelsCopy, "count"))
    {
      v13 = 0;
      do
      {
        v14 = objc_autoreleasePoolPush();
        v15 = [labelsCopy mutableCopy];
        [v15 removeObjectAtIndex:v13];
        v16 = [(KGLabelBasedEntityFactory *)self _generateAllPossibleLabelSetsForLabels:v15 labelSetsCache:v10];
        [v12 unionSet:v16];
        [v10 unionSet:v16];

        objc_autoreleasePoolPop(v14);
        ++v13;
      }

      while (v13 < [labelsCopy count]);
    }
  }

  return v12;
}

- (void)registerEdgeClass:(Class)class forLabels:(id)labels
{
  labelsCopy = labels;
  v7 = [[KGSetWrapper alloc] initWithArray:labelsCopy];

  [(NSMutableDictionary *)self->_classByEdgeLabels setObject:class forKeyedSubscript:v7];
}

- (void)registerNodeClass:(Class)class forLabels:(id)labels
{
  labelsCopy = labels;
  v7 = [[KGSetWrapper alloc] initWithArray:labelsCopy];

  [(NSMutableDictionary *)self->_classByNodeLabels setObject:class forKeyedSubscript:v7];
}

- (KGLabelBasedEntityFactory)init
{
  v12.receiver = self;
  v12.super_class = KGLabelBasedEntityFactory;
  v2 = [(KGLabelBasedEntityFactory *)&v12 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    classByNodeLabels = v2->_classByNodeLabels;
    v2->_classByNodeLabels = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    classByEdgeLabels = v2->_classByEdgeLabels;
    v2->_classByEdgeLabels = dictionary2;

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