@interface NTKFaceViewClassPrewarmCache
+ (id)sharedInstance;
- (NTKFaceViewClassPrewarmCache)init;
- (id)prewarmDataForClass:(Class)class;
- (void)prewarmClasses:(id)classes;
@end

@implementation NTKFaceViewClassPrewarmCache

- (NTKFaceViewClassPrewarmCache)init
{
  v6.receiver = self;
  v6.super_class = NTKFaceViewClassPrewarmCache;
  v2 = [(NTKFaceViewClassPrewarmCache *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    prewarmCache = v2->_prewarmCache;
    v2->_prewarmCache = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[NTKFaceViewClassPrewarmCache sharedInstance];
  }

  v3 = sharedInstance_singleton;

  return v3;
}

void __46__NTKFaceViewClassPrewarmCache_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(NTKFaceViewClassPrewarmCache);
  v1 = sharedInstance_singleton;
  sharedInstance_singleton = v0;
}

- (id)prewarmDataForClass:(Class)class
{
  v5 = NSStringFromClass(class);
  _prewarmSharedData = [(NSMutableDictionary *)self->_prewarmCache objectForKeyedSubscript:v5];
  if (!_prewarmSharedData)
  {
    _prewarmSharedData = [(objc_class *)class _prewarmSharedData];
    if (_prewarmSharedData)
    {
      [(NSMutableDictionary *)self->_prewarmCache setObject:_prewarmSharedData forKey:v5];
    }
  }

  return _prewarmSharedData;
}

- (void)prewarmClasses:(id)classes
{
  v45 = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  v5 = MEMORY[0x277CBEB58];
  allKeys = [(NSMutableDictionary *)self->_prewarmCache allKeys];
  v7 = [v5 setWithArray:allKeys];

  v8 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = classesCopy;
  v10 = [v9 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = NSStringFromClass(*(*(&v38 + 1) + 8 * i));
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v11);
  }

  v15 = [v7 mutableCopy];
  [v15 minusSet:v8];
  v16 = [v8 mutableCopy];
  v29 = v7;
  [v16 minusSet:v7];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = v15;
  v18 = [v17 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v35;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(NSMutableDictionary *)self->_prewarmCache removeObjectForKey:*(*(&v34 + 1) + 8 * j)];
      }

      v19 = [v17 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v19);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v22 = v16;
  v23 = [v22 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v31;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v30 + 1) + 8 * k);
        _prewarmSharedData = [NSClassFromString(v27) _prewarmSharedData];
        if (_prewarmSharedData)
        {
          [(NSMutableDictionary *)self->_prewarmCache setObject:_prewarmSharedData forKey:v27];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v24);
  }
}

@end