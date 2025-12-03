@interface KGGraphUniverse
+ (BOOL)hasManagerForGraphStoreAtURL:(id)l;
+ (BOOL)swapDatabaseFromURL:(id)l toURL:(id)rL error:(id *)error;
+ (id)managerForGraphStoreAtURL:(id)l entityFactory:(id)factory;
+ (void)closeDatabaseAtURL:(id)l completion:(id)completion;
+ (void)initialize;
+ (void)releaseManagerForGraphStoreAtURL:(id)l;
- (BOOL)hasManagerForGraphStoreAtURL:(id)l;
- (BOOL)swapDatabaseFromURL:(id)l toURL:(id)rL error:(id *)error;
- (KGGraphUniverse)init;
- (id)managerForGraphStoreAtURL:(id)l entityFactory:(id)factory;
- (void)closeDatabaseAtURL:(id)l completion:(id)completion;
- (void)releaseManagerForGraphStoreAtURL:(id)l;
- (void)removeDatabaseByURL:(id)l;
@end

@implementation KGGraphUniverse

- (void)closeDatabaseAtURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  v8 = [(KGGraphUniverse *)self managerForGraphStoreAtURL:lCopy entityFactory:0];
  [v8 asyncClose:completionCopy];

  [(KGGraphUniverse *)self removeDatabaseByURL:lCopy];
}

- (void)removeDatabaseByURL:(id)l
{
  lCopy = l;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_graphManagerByURL removeObjectForKey:lCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)swapDatabaseFromURL:(id)l toURL:(id)rL error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  if ([lCopy isEqual:rLCopy])
  {
    v10 = 0;
  }

  else
  {
    v11 = [(KGGraphUniverse *)self managerForGraphStoreAtURL:lCopy entityFactory:0];
    v12 = [(KGGraphUniverse *)self managerForGraphStoreAtURL:rLCopy entityFactory:0];
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__1513;
    v23 = __Block_byref_object_dispose__1514;
    v24 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __51__KGGraphUniverse_swapDatabaseFromURL_toURL_error___block_invoke;
    v15[3] = &unk_2797FE4D8;
    v17 = &v25;
    v13 = v12;
    v16 = v13;
    v18 = &v19;
    [v11 performReadBlock:v15];
    v10 = *(v26 + 24);
    if (error && (v26[3] & 1) == 0)
    {
      *error = v20[5];
      v10 = *(v26 + 24);
    }

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v25, 8);
  }

  return v10 & 1;
}

uint64_t __51__KGGraphUniverse_swapDatabaseFromURL_toURL_error___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = a1[4];
    v12 = 0;
    v8 = [v7 replaceFromGraph:v5 error:&v12];
    v9 = v12;
    *(*(a1[5] + 8) + 24) = v8;
  }

  else if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*(a1[5] + 8) + 24);
  if ((v10 & 1) == 0)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v9);
    v10 = *(*(a1[5] + 8) + 24);
  }

  return v10 & 1;
}

- (BOOL)hasManagerForGraphStoreAtURL:(id)l
{
  lCopy = l;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_graphManagerByURL objectForKeyedSubscript:lCopy];

  os_unfair_lock_unlock(&self->_lock);
  return v5 != 0;
}

- (void)releaseManagerForGraphStoreAtURL:(id)l
{
  lCopy = l;
  os_unfair_lock_lock(&self->_lock);
  v4 = [(NSMutableDictionary *)self->_graphManagerByURL objectForKeyedSubscript:lCopy];
  v5 = v4;
  if (v4 && [v4 decrementUseCount])
  {
    graphManager = [v5 graphManager];
    [graphManager close];

    [(NSMutableDictionary *)self->_graphManagerByURL removeObjectForKey:lCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)managerForGraphStoreAtURL:(id)l entityFactory:(id)factory
{
  lCopy = l;
  factoryCopy = factory;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_graphManagerByURL objectForKeyedSubscript:lCopy];
  if (v8)
  {
    v9 = v8;
    [(KGGraphManagerRecord *)v8 incrementUseCount];
    if (!factoryCopy)
    {
      goto LABEL_6;
    }

    graphManager = [(KGGraphManagerRecord *)v9 graphManager];
    [(KGGraphManager *)graphManager setEntityFactory:factoryCopy];
  }

  else
  {
    graphManager = [[KGGraphManager alloc] initWithURL:lCopy entityFactory:factoryCopy];
    v9 = [[KGGraphManagerRecord alloc] initWithGraphManager:graphManager];
    [(NSMutableDictionary *)self->_graphManagerByURL setObject:v9 forKeyedSubscript:lCopy];
  }

LABEL_6:
  os_unfair_lock_unlock(&self->_lock);
  graphManager2 = [(KGGraphManagerRecord *)v9 graphManager];

  return graphManager2;
}

- (KGGraphUniverse)init
{
  v6.receiver = self;
  v6.super_class = KGGraphUniverse;
  v2 = [(KGGraphUniverse *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    graphManagerByURL = v2->_graphManagerByURL;
    v2->_graphManagerByURL = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

+ (void)closeDatabaseAtURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  instance = [self instance];
  [instance closeDatabaseAtURL:lCopy completion:completionCopy];
}

+ (BOOL)swapDatabaseFromURL:(id)l toURL:(id)rL error:(id *)error
{
  rLCopy = rL;
  lCopy = l;
  instance = [self instance];
  LOBYTE(error) = [instance swapDatabaseFromURL:lCopy toURL:rLCopy error:error];

  return error;
}

+ (BOOL)hasManagerForGraphStoreAtURL:(id)l
{
  lCopy = l;
  instance = [self instance];
  v6 = [instance hasManagerForGraphStoreAtURL:lCopy];

  return v6;
}

+ (void)releaseManagerForGraphStoreAtURL:(id)l
{
  lCopy = l;
  instance = [self instance];
  [instance releaseManagerForGraphStoreAtURL:lCopy];
}

+ (id)managerForGraphStoreAtURL:(id)l entityFactory:(id)factory
{
  factoryCopy = factory;
  lCopy = l;
  instance = [self instance];
  v9 = [instance managerForGraphStoreAtURL:lCopy entityFactory:factoryCopy];

  return v9;
}

+ (void)initialize
{
  _sInstance = objc_alloc_init(KGGraphUniverse);

  MEMORY[0x2821F96F8]();
}

@end