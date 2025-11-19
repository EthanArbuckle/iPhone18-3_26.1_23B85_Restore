@interface FIPresentationNodeMap
+ (id)presentationNodeForKeyNode:(id)a3;
+ (id)shared;
+ (void)finalize;
- (FIPresentationNodeMap)init;
- (id)presentationNodeForKeyNode:(id)a3;
- (void)registerPresentationNode:(id)a3 forNode:(id)a4;
- (void)registerPresentationNode:(id)a3 forNode:(id)a4 clearOlderKeyNodes:(BOOL)a5;
- (void)unregisterAllForPresentationNode:(id)a3;
- (void)unregisterKeyNode:(id)a3;
@end

@implementation FIPresentationNodeMap

+ (id)shared
{
  std::mutex::lock(&PresentationNodeMapLock(void)::sMutex);
  v2 = gPresentationMap;
  if (!gPresentationMap)
  {
    v3 = objc_alloc_init(FIPresentationNodeMap);
    v4 = gPresentationMap;
    gPresentationMap = v3;

    v2 = gPresentationMap;
  }

  v5 = v2;
  std::mutex::unlock(&PresentationNodeMapLock(void)::sMutex);

  return v5;
}

- (FIPresentationNodeMap)init
{
  v6.receiver = self;
  v6.super_class = FIPresentationNodeMap;
  v2 = [(FIPresentationNodeMap *)&v6 init];
  v3 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:5 valueOptions:5 capacity:20];
  lookupTable = v2->_lookupTable;
  v2->_lookupTable = v3;

  return v2;
}

+ (void)finalize
{
  std::mutex::lock(&PresentationNodeMapLock(void)::sMutex);
  v2 = gPresentationMap;
  if (gPresentationMap)
  {
    v3 = LogObj(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&dword_1E5674000, v3, OS_LOG_TYPE_DEBUG, "Finalized presentation map", v4, 2u);
    }

    v2 = gPresentationMap;
  }

  gPresentationMap = 0;

  std::mutex::unlock(&PresentationNodeMapLock(void)::sMutex);
}

- (id)presentationNodeForKeyNode:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMapTable *)v5->_lookupTable objectForKey:v4];
  objc_sync_exit(v5);

  return v6;
}

+ (id)presentationNodeForKeyNode:(id)a3
{
  v4 = a3;
  v5 = [a1 shared];
  v6 = [v5 presentationNodeForKeyNode:v4];

  return v6;
}

- (void)registerPresentationNode:(id)a3 forNode:(id)a4 clearOlderKeyNodes:(BOOL)a5
{
  v5 = a5;
  v10 = a3;
  v8 = a4;
  v9 = self;
  objc_sync_enter(v9);
  if (v5)
  {
    [(FIPresentationNodeMap *)v9 unregisterAllForPresentationNode:v10];
  }

  [(FIPresentationNodeMap *)v9 registerPresentationNode:v10 forNode:v8];
  objc_sync_exit(v9);
}

- (void)registerPresentationNode:(id)a3 forNode:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = self;
    objc_sync_enter(v9);
    [(NSMapTable *)v9->_lookupTable setObject:v6 forKey:v8];
    v10 = LogObj(5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138543618;
      v13 = v6;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&dword_1E5674000, v10, OS_LOG_TYPE_DEBUG, "Adding to lookup table %{public}@ for %{public}@", &v12, 0x16u);
    }

    objc_sync_exit(v9);
  }

  else
  {
    v9 = LogObj(5);
    if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1E5674000, &v9->super, OS_LOG_TYPE_ERROR, "Trying to register a nil node", &v12, 2u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)unregisterAllForPresentationNode:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v5->_lookupTable;
  v7 = 0;
  v8 = [(NSMapTable *)v6 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v8)
  {
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [(NSMapTable *)v5->_lookupTable objectForKey:v11];
        if (v12 == v4)
        {
          if (!v7)
          {
            v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v7 addObject:v11];
        }
      }

      v8 = [(NSMapTable *)v6 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v8);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v14)
  {
    v15 = *v21;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v13);
        }

        [(NSMapTable *)v5->_lookupTable removeObjectForKey:*(*(&v20 + 1) + 8 * j), v20];
      }

      v14 = [v13 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v14);
  }

  objc_sync_exit(v5);
  if (v13)
  {
    v17 = LogObj(5);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = [v13 count];
      *buf = 134218242;
      v29 = v18;
      v30 = 2112;
      v31 = v4;
      _os_log_impl(&dword_1E5674000, v17, OS_LOG_TYPE_DEBUG, "Removed %ld keys for presentation node %@", buf, 0x16u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)unregisterKeyNode:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (IsDebugLogCategoryEnabled(5))
  {
    v6 = [(NSMapTable *)v5->_lookupTable objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  [(NSMapTable *)v5->_lookupTable removeObjectForKey:v4];
  objc_sync_exit(v5);

  if (v6)
  {
    v7 = LogObj(5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1E5674000, v7, OS_LOG_TYPE_DEBUG, "Removed keyNode %@ for presentation node %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end