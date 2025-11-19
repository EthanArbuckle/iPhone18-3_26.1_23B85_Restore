@interface KGGraphUniverse
+ (BOOL)hasManagerForGraphStoreAtURL:(id)a3;
+ (BOOL)swapDatabaseFromURL:(id)a3 toURL:(id)a4 error:(id *)a5;
+ (id)managerForGraphStoreAtURL:(id)a3 entityFactory:(id)a4;
+ (void)closeDatabaseAtURL:(id)a3 completion:(id)a4;
+ (void)initialize;
+ (void)releaseManagerForGraphStoreAtURL:(id)a3;
- (BOOL)hasManagerForGraphStoreAtURL:(id)a3;
- (BOOL)swapDatabaseFromURL:(id)a3 toURL:(id)a4 error:(id *)a5;
- (KGGraphUniverse)init;
- (id)managerForGraphStoreAtURL:(id)a3 entityFactory:(id)a4;
- (void)closeDatabaseAtURL:(id)a3 completion:(id)a4;
- (void)releaseManagerForGraphStoreAtURL:(id)a3;
- (void)removeDatabaseByURL:(id)a3;
@end

@implementation KGGraphUniverse

- (void)closeDatabaseAtURL:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KGGraphUniverse *)self managerForGraphStoreAtURL:v7 entityFactory:0];
  [v8 asyncClose:v6];

  [(KGGraphUniverse *)self removeDatabaseByURL:v7];
}

- (void)removeDatabaseByURL:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_graphManagerByURL removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)swapDatabaseFromURL:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 isEqual:v9])
  {
    v10 = 0;
  }

  else
  {
    v11 = [(KGGraphUniverse *)self managerForGraphStoreAtURL:v8 entityFactory:0];
    v12 = [(KGGraphUniverse *)self managerForGraphStoreAtURL:v9 entityFactory:0];
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
    if (a5 && (v26[3] & 1) == 0)
    {
      *a5 = v20[5];
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

- (BOOL)hasManagerForGraphStoreAtURL:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_graphManagerByURL objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_lock);
  return v5 != 0;
}

- (void)releaseManagerForGraphStoreAtURL:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = [(NSMutableDictionary *)self->_graphManagerByURL objectForKeyedSubscript:v7];
  v5 = v4;
  if (v4 && [v4 decrementUseCount])
  {
    v6 = [v5 graphManager];
    [v6 close];

    [(NSMutableDictionary *)self->_graphManagerByURL removeObjectForKey:v7];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)managerForGraphStoreAtURL:(id)a3 entityFactory:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_graphManagerByURL objectForKeyedSubscript:v6];
  if (v8)
  {
    v9 = v8;
    [(KGGraphManagerRecord *)v8 incrementUseCount];
    if (!v7)
    {
      goto LABEL_6;
    }

    v10 = [(KGGraphManagerRecord *)v9 graphManager];
    [(KGGraphManager *)v10 setEntityFactory:v7];
  }

  else
  {
    v10 = [[KGGraphManager alloc] initWithURL:v6 entityFactory:v7];
    v9 = [[KGGraphManagerRecord alloc] initWithGraphManager:v10];
    [(NSMutableDictionary *)self->_graphManagerByURL setObject:v9 forKeyedSubscript:v6];
  }

LABEL_6:
  os_unfair_lock_unlock(&self->_lock);
  v11 = [(KGGraphManagerRecord *)v9 graphManager];

  return v11;
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

+ (void)closeDatabaseAtURL:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 instance];
  [v8 closeDatabaseAtURL:v7 completion:v6];
}

+ (BOOL)swapDatabaseFromURL:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a1 instance];
  LOBYTE(a5) = [v10 swapDatabaseFromURL:v9 toURL:v8 error:a5];

  return a5;
}

+ (BOOL)hasManagerForGraphStoreAtURL:(id)a3
{
  v4 = a3;
  v5 = [a1 instance];
  v6 = [v5 hasManagerForGraphStoreAtURL:v4];

  return v6;
}

+ (void)releaseManagerForGraphStoreAtURL:(id)a3
{
  v4 = a3;
  v5 = [a1 instance];
  [v5 releaseManagerForGraphStoreAtURL:v4];
}

+ (id)managerForGraphStoreAtURL:(id)a3 entityFactory:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 instance];
  v9 = [v8 managerForGraphStoreAtURL:v7 entityFactory:v6];

  return v9;
}

+ (void)initialize
{
  _sInstance = objc_alloc_init(KGGraphUniverse);

  MEMORY[0x2821F96F8]();
}

@end