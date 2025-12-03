@interface KGNodeCollection
- (id)allObjects;
- (void)enumerateElementsWithBatchSize:(unint64_t)size usingBlock:(id)block;
- (void)enumerateNodesSortedByFloatPropertyForName:(id)name usingBlock:(id)block;
- (void)enumerateNodesSortedByIntegerPropertyForName:(id)name usingBlock:(id)block;
- (void)enumerateNodesSortedByStringPropertyForName:(id)name usingBlock:(id)block;
- (void)enumerateOrderedNodes:(id)nodes withBatchSize:(unint64_t)size usingBlock:(id)block;
- (void)enumeratePropertyValuesForKey:(id)key withBlock:(id)block;
@end

@implementation KGNodeCollection

- (void)enumeratePropertyValuesForKey:(id)key withBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  implementation = [(KGGraph *)self->super._graph implementation];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__KGNodeCollection_enumeratePropertyValuesForKey_withBlock___block_invoke;
  v12[3] = &unk_2797FF310;
  v13 = implementation;
  v14 = keyCopy;
  v15 = blockCopy;
  v9 = blockCopy;
  v10 = keyCopy;
  v11 = implementation;
  [(KGElementCollection *)self enumerateElementIdentifierBatchesWithBatchSize:256 usingBlock:v12];
}

void __60__KGNodeCollection_enumeratePropertyValuesForKey_withBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) propertiesForNodesWithIdentifiers:a2 propertyName:*(a1 + 40) error:0];
  [v3 enumerateUsingBlock:*(a1 + 48)];
}

- (void)enumerateNodesSortedByFloatPropertyForName:(id)name usingBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  graph = self->super._graph;
  nameCopy = name;
  implementation = [(KGGraph *)graph implementation];
  identifiers = [(KGElementCollection *)self identifiers];
  v15 = 0;
  v11 = [implementation nodeIdentifiers:identifiers sortedByFloatPropertyForName:nameCopy ascending:1 limit:-1 error:&v15];

  v12 = v15;
  if (v11)
  {
    [(KGNodeCollection *)self enumerateOrderedNodes:v11 withBatchSize:256 usingBlock:blockCopy];
  }

  else
  {
    v13 = KGLoggingConnection();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v12;
      _os_log_error_impl(&dword_255870000, v13, OS_LOG_TYPE_ERROR, "failed loading ordered node identifiers: %@", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)enumerateNodesSortedByIntegerPropertyForName:(id)name usingBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  graph = self->super._graph;
  nameCopy = name;
  implementation = [(KGGraph *)graph implementation];
  identifiers = [(KGElementCollection *)self identifiers];
  v15 = 0;
  v11 = [implementation nodeIdentifiers:identifiers sortedByIntegerPropertyForName:nameCopy ascending:1 limit:-1 error:&v15];

  v12 = v15;
  if (v11)
  {
    [(KGNodeCollection *)self enumerateOrderedNodes:v11 withBatchSize:256 usingBlock:blockCopy];
  }

  else
  {
    v13 = KGLoggingConnection();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v12;
      _os_log_error_impl(&dword_255870000, v13, OS_LOG_TYPE_ERROR, "failed loading ordered node identifiers: %@", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)enumerateNodesSortedByStringPropertyForName:(id)name usingBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  graph = self->super._graph;
  nameCopy = name;
  implementation = [(KGGraph *)graph implementation];
  identifiers = [(KGElementCollection *)self identifiers];
  v15 = 0;
  v11 = [implementation nodeIdentifiers:identifiers sortedByStringPropertyForName:nameCopy ascending:1 limit:-1 error:&v15];

  v12 = v15;
  if (v11)
  {
    [(KGNodeCollection *)self enumerateOrderedNodes:v11 withBatchSize:256 usingBlock:blockCopy];
  }

  else
  {
    v13 = KGLoggingConnection();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v12;
      _os_log_error_impl(&dword_255870000, v13, OS_LOG_TYPE_ERROR, "failed loading ordered node identifiers: %@", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)enumerateOrderedNodes:(id)nodes withBatchSize:(unint64_t)size usingBlock:(id)block
{
  v42 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  blockCopy = block;
  v38 = 0;
  implementation = [(KGGraph *)self->super._graph implementation];
  entityFactory = [(KGGraph *)self->super._graph entityFactory];
  if ([nodesCopy count])
  {
    v12 = 0;
    v13 = 0;
    v29 = nodesCopy;
    v30 = implementation;
    while (1)
    {
      v14 = v13;
      context = objc_autoreleasePoolPush();
      v15 = [nodesCopy count];
      sizeCopy = size;
      v17 = v15 - v12 >= size ? size : v15 - v12;
      v18 = [nodesCopy subarrayWithRange:{v12, v17, v29}];
      v37 = v14;
      v19 = entityFactory;
      v20 = [implementation orderedArrayOfNodesWithIdentifiers:v18 entityFactory:entityFactory error:&v37];
      v31 = v37;

      if (!v20)
      {
        break;
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v21 = v20;
      v22 = [v21 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v34;
        while (2)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v34 != v24)
            {
              objc_enumerationMutation(v21);
            }

            blockCopy[2](blockCopy, *(*(&v33 + 1) + 8 * i), &v38);
            if (v38)
            {
              v26 = v21;
              nodesCopy = v29;
              goto LABEL_18;
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v33 objects:v39 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v12 += sizeCopy;
      objc_autoreleasePoolPop(context);
      nodesCopy = v29;
      entityFactory = v19;
      size = sizeCopy;
      implementation = v30;
      v13 = v31;
      if (v12 >= [v29 count])
      {
        goto LABEL_20;
      }
    }

    v21 = KGLoggingConnection();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v31;
      v41 = v31;
      _os_log_error_impl(&dword_255870000, v21, OS_LOG_TYPE_ERROR, "failed loading ordered nodes: %@", buf, 0xCu);
      v26 = 0;
      entityFactory = v19;
      v27 = context;
    }

    else
    {
      v26 = 0;
LABEL_18:
      entityFactory = v19;
      v13 = v31;
      v27 = context;
    }

    objc_autoreleasePoolPop(v27);
    implementation = v30;
LABEL_20:
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)enumerateElementsWithBatchSize:(unint64_t)size usingBlock:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  identifiers = [(KGElementCollection *)self identifiers];
  v8 = [identifiers mutableCopy];

  v25 = 0;
  implementation = [(KGGraph *)self->super._graph implementation];
  entityFactory = [(KGGraph *)self->super._graph entityFactory];
  if (([v8 isEmpty] & 1) == 0)
  {
    sizeCopy = size;
    do
    {
      context = objc_autoreleasePoolPush();
      v11 = [v8 prefix:size];
      [v8 subtractIdentifierSet:v11];
      v12 = [implementation arrayOfNodesWithIdentifiers:v11 entityFactory:entityFactory error:0];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v22;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v22 != v16)
            {
              objc_enumerationMutation(v13);
            }

            blockCopy[2](blockCopy, *(*(&v21 + 1) + 8 * i), &v25);
            if (v25)
            {

              objc_autoreleasePoolPop(context);
              goto LABEL_14;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v21 objects:v26 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      objc_autoreleasePoolPop(context);
      size = sizeCopy;
    }

    while (([v8 isEmpty] & 1) == 0);
  }

LABEL_14:

  v18 = *MEMORY[0x277D85DE8];
}

- (id)allObjects
{
  implementation = [(KGGraph *)self->super._graph implementation];
  identifiers = [(KGElementCollection *)self identifiers];
  entityFactory = [(KGGraph *)self->super._graph entityFactory];
  v6 = [implementation arrayOfNodesWithIdentifiers:identifiers entityFactory:entityFactory error:0];

  return v6;
}

@end