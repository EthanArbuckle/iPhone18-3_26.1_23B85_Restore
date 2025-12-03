@interface EDThreadMigratorManager
+ (OS_os_log)log;
- (EDThreadMigratorManager)init;
- (id)findThreadMigratorWithThreadScope:(id)scope inMemoryThreadQueryHandler:(id *)handler;
- (void)_removeThreadMigratorWithThreadScope:(id)scope;
- (void)addThreadMigrator:(id)migrator inMemoryThreadQueryHandler:(id)handler withThreadScope:(id)scope;
- (void)dealloc;
- (void)init;
- (void)tearDown;
- (void)threadMigratorDidComplete:(id)complete;
- (void)threadMigratorDidFail:(id)fail;
@end

@implementation EDThreadMigratorManager

- (EDThreadMigratorManager)init
{
  v9.receiver = self;
  v9.super_class = EDThreadMigratorManager;
  v2 = [(EDThreadMigratorManager *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    threadMigrators = v2->_threadMigrators;
    v2->_threadMigrators = v3;

    v5 = objc_opt_new();
    queryHandlers = v2->_queryHandlers;
    v2->_queryHandlers = v5;

    v2->_lock._os_unfair_lock_opaque = 0;
    v7 = +[EDThreadMigratorManager log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(EDThreadMigratorManager *)v2 init];
    }
  }

  return v2;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__EDThreadMigratorManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_101 != -1)
  {
    dispatch_once(&log_onceToken_101, block);
  }

  v2 = log_log_101;

  return v2;
}

void __30__EDThreadMigratorManager_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_101;
  log_log_101 = v1;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  selfCopy = self;
  _os_log_debug_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_DEBUG, "%p: EDThreadMigratorManager deallocating", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)tearDown
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues = [(NSMutableDictionary *)self->_threadMigrators allValues];
  v4 = [allValues countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v16 + 1) + 8 * v6++) cancel];
      }

      while (v4 != v6);
      v4 = [allValues countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues2 = [(NSMutableDictionary *)self->_queryHandlers allValues];
  v8 = [allValues2 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(allValues2);
        }

        [*(*(&v12 + 1) + 8 * v10++) cancel];
      }

      while (v8 != v10);
      v8 = [allValues2 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v8);
  }

  [(NSMutableDictionary *)self->_threadMigrators removeAllObjects];
  [(NSMutableDictionary *)self->_queryHandlers removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)addThreadMigrator:(id)migrator inMemoryThreadQueryHandler:(id)handler withThreadScope:(id)scope
{
  v24 = *MEMORY[0x1E69E9840];
  migratorCopy = migrator;
  handlerCopy = handler;
  scopeCopy = scope;
  os_unfair_lock_lock(&self->_lock);
  if (migratorCopy)
  {
    if (handlerCopy)
    {
      if (scopeCopy)
      {
LABEL_4:
        [(NSMutableDictionary *)self->_threadMigrators setObject:migratorCopy forKeyedSubscript:scopeCopy];
        [(NSMutableDictionary *)self->_queryHandlers setObject:handlerCopy forKeyedSubscript:scopeCopy];
        os_unfair_lock_unlock(&self->_lock);
        [migratorCopy startObservingWithObserver:self];
        goto LABEL_6;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"EDThreadMigratorManager.m" lineNumber:66 description:@"EDInMemoryThreadQueryHandler is missing"];

      if (scopeCopy)
      {
        goto LABEL_4;
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"EDThreadMigratorManager.m" lineNumber:67 description:@"EMThreadScope is missing"];

    goto LABEL_4;
  }

  os_unfair_lock_unlock(&self->_lock);
LABEL_6:
  v12 = +[EDThreadMigratorManager log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v16 = 134218754;
    selfCopy = self;
    v18 = 2048;
    v19 = migratorCopy;
    v20 = 2048;
    v21 = handlerCopy;
    v22 = 2112;
    v23 = scopeCopy;
    _os_log_debug_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEBUG, "%p: Added thread migrator %p, handler %p, thread scope\n%@", &v16, 0x2Au);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_removeThreadMigratorWithThreadScope:(id)scope
{
  scopeCopy = scope;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_threadMigrators objectForKeyedSubscript:scopeCopy];
  [(NSMutableDictionary *)self->_threadMigrators setObject:0 forKeyedSubscript:scopeCopy];
  [(NSMutableDictionary *)self->_queryHandlers setObject:0 forKeyedSubscript:scopeCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    [v5 stopObservingWithObserver:self];
  }

  v6 = +[EDThreadMigratorManager log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(EDThreadMigratorManager *)self _removeThreadMigratorWithThreadScope:scopeCopy, v6];
  }
}

- (id)findThreadMigratorWithThreadScope:(id)scope inMemoryThreadQueryHandler:(id *)handler
{
  v20 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableDictionary *)self->_threadMigrators objectForKeyedSubscript:scopeCopy];
  if (handler)
  {
    v8 = [(NSMutableDictionary *)self->_queryHandlers objectForKeyedSubscript:scopeCopy];
    *handler = v8;
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = +[EDThreadMigratorManager log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134218754;
    selfCopy = self;
    v14 = 2048;
    v15 = v7;
    v16 = 2048;
    v17 = v8;
    v18 = 2112;
    v19 = scopeCopy;
    _os_log_debug_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEBUG, "%p: Found thread migrator %p, handler %p, for thread scope\n%@", &v12, 0x2Au);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)threadMigratorDidComplete:(id)complete
{
  threadScope = [complete threadScope];
  [(EDThreadMigratorManager *)self _removeThreadMigratorWithThreadScope:?];
}

- (void)threadMigratorDidFail:(id)fail
{
  threadScope = [fail threadScope];
  [(EDThreadMigratorManager *)self _removeThreadMigratorWithThreadScope:?];
}

- (void)init
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  selfCopy = self;
  _os_log_debug_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_DEBUG, "%p: EDThreadMigratorManager initializing", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_removeThreadMigratorWithThreadScope:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218242;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1C61EF000, log, OS_LOG_TYPE_DEBUG, "%p: Removed thread migrator for thread scope\n%@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end