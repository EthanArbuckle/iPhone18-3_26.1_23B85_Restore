@interface KGNodeCollection
- (id)allObjects;
- (void)enumerateElementsWithBatchSize:(unint64_t)a3 usingBlock:(id)a4;
- (void)enumerateNodesSortedByFloatPropertyForName:(id)a3 usingBlock:(id)a4;
- (void)enumerateNodesSortedByIntegerPropertyForName:(id)a3 usingBlock:(id)a4;
- (void)enumerateNodesSortedByStringPropertyForName:(id)a3 usingBlock:(id)a4;
- (void)enumerateOrderedNodes:(id)a3 withBatchSize:(unint64_t)a4 usingBlock:(id)a5;
- (void)enumeratePropertyValuesForKey:(id)a3 withBlock:(id)a4;
@end

@implementation KGNodeCollection

- (void)enumeratePropertyValuesForKey:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(KGGraph *)self->super._graph implementation];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__KGNodeCollection_enumeratePropertyValuesForKey_withBlock___block_invoke;
  v12[3] = &unk_2797FF310;
  v13 = v8;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = v8;
  [(KGElementCollection *)self enumerateElementIdentifierBatchesWithBatchSize:256 usingBlock:v12];
}

void __60__KGNodeCollection_enumeratePropertyValuesForKey_withBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) propertiesForNodesWithIdentifiers:a2 propertyName:*(a1 + 40) error:0];
  [v3 enumerateUsingBlock:*(a1 + 48)];
}

- (void)enumerateNodesSortedByFloatPropertyForName:(id)a3 usingBlock:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  graph = self->super._graph;
  v8 = a3;
  v9 = [(KGGraph *)graph implementation];
  v10 = [(KGElementCollection *)self identifiers];
  v15 = 0;
  v11 = [v9 nodeIdentifiers:v10 sortedByFloatPropertyForName:v8 ascending:1 limit:-1 error:&v15];

  v12 = v15;
  if (v11)
  {
    [(KGNodeCollection *)self enumerateOrderedNodes:v11 withBatchSize:256 usingBlock:v6];
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

- (void)enumerateNodesSortedByIntegerPropertyForName:(id)a3 usingBlock:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  graph = self->super._graph;
  v8 = a3;
  v9 = [(KGGraph *)graph implementation];
  v10 = [(KGElementCollection *)self identifiers];
  v15 = 0;
  v11 = [v9 nodeIdentifiers:v10 sortedByIntegerPropertyForName:v8 ascending:1 limit:-1 error:&v15];

  v12 = v15;
  if (v11)
  {
    [(KGNodeCollection *)self enumerateOrderedNodes:v11 withBatchSize:256 usingBlock:v6];
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

- (void)enumerateNodesSortedByStringPropertyForName:(id)a3 usingBlock:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  graph = self->super._graph;
  v8 = a3;
  v9 = [(KGGraph *)graph implementation];
  v10 = [(KGElementCollection *)self identifiers];
  v15 = 0;
  v11 = [v9 nodeIdentifiers:v10 sortedByStringPropertyForName:v8 ascending:1 limit:-1 error:&v15];

  v12 = v15;
  if (v11)
  {
    [(KGNodeCollection *)self enumerateOrderedNodes:v11 withBatchSize:256 usingBlock:v6];
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

- (void)enumerateOrderedNodes:(id)a3 withBatchSize:(unint64_t)a4 usingBlock:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v38 = 0;
  v10 = [(KGGraph *)self->super._graph implementation];
  v11 = [(KGGraph *)self->super._graph entityFactory];
  if ([v8 count])
  {
    v12 = 0;
    v13 = 0;
    v29 = v8;
    v30 = v10;
    while (1)
    {
      v14 = v13;
      context = objc_autoreleasePoolPush();
      v15 = [v8 count];
      v16 = a4;
      v17 = v15 - v12 >= a4 ? a4 : v15 - v12;
      v18 = [v8 subarrayWithRange:{v12, v17, v29}];
      v37 = v14;
      v19 = v11;
      v20 = [v10 orderedArrayOfNodesWithIdentifiers:v18 entityFactory:v11 error:&v37];
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

            v9[2](v9, *(*(&v33 + 1) + 8 * i), &v38);
            if (v38)
            {
              v26 = v21;
              v8 = v29;
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

      v12 += v16;
      objc_autoreleasePoolPop(context);
      v8 = v29;
      v11 = v19;
      a4 = v16;
      v10 = v30;
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
      v11 = v19;
      v27 = context;
    }

    else
    {
      v26 = 0;
LABEL_18:
      v11 = v19;
      v13 = v31;
      v27 = context;
    }

    objc_autoreleasePoolPop(v27);
    v10 = v30;
LABEL_20:
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)enumerateElementsWithBatchSize:(unint64_t)a3 usingBlock:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(KGElementCollection *)self identifiers];
  v8 = [v7 mutableCopy];

  v25 = 0;
  v9 = [(KGGraph *)self->super._graph implementation];
  v10 = [(KGGraph *)self->super._graph entityFactory];
  if (([v8 isEmpty] & 1) == 0)
  {
    v19 = a3;
    do
    {
      context = objc_autoreleasePoolPush();
      v11 = [v8 prefix:a3];
      [v8 subtractIdentifierSet:v11];
      v12 = [v9 arrayOfNodesWithIdentifiers:v11 entityFactory:v10 error:0];
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

            v6[2](v6, *(*(&v21 + 1) + 8 * i), &v25);
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
      a3 = v19;
    }

    while (([v8 isEmpty] & 1) == 0);
  }

LABEL_14:

  v18 = *MEMORY[0x277D85DE8];
}

- (id)allObjects
{
  v3 = [(KGGraph *)self->super._graph implementation];
  v4 = [(KGElementCollection *)self identifiers];
  v5 = [(KGGraph *)self->super._graph entityFactory];
  v6 = [v3 arrayOfNodesWithIdentifiers:v4 entityFactory:v5 error:0];

  return v6;
}

@end