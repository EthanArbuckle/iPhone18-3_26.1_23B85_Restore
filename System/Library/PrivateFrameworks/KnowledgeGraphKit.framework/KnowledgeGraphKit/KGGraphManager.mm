@interface KGGraphManager
- (BOOL)checkValidState;
- (BOOL)replaceFromGraph:(id)graph error:(id *)error;
- (KGGraphManager)initWithURL:(id)l entityFactory:(id)factory;
- (id)obtainReadOnlyStore:(id *)store;
- (id)obtainReadWriteStore:(id *)store;
- (void)asyncClose:(id)close;
- (void)checkinReadOnlyStore:(id)store;
- (void)close;
- (void)dealloc;
- (void)decrementReadCount;
- (void)doClose;
- (void)incrementReadCount;
- (void)setEntityFactory:(id)factory;
- (void)submitExclusiveBlock:(id)block async:(BOOL)async;
- (void)submitReadBlock:(id)block async:(BOOL)async;
- (void)submitWriteBlock:(id)block async:(BOOL)async;
@end

@implementation KGGraphManager

- (BOOL)checkValidState
{
  os_unfair_lock_assert_owner(&self->_lock);
  readRunningCount = self->_readRunningCount;
  if (readRunningCount >= 5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "invalid state", v5, 2u);
  }

  return readRunningCount < 5;
}

- (void)submitReadBlock:(id)block async:(BOOL)async
{
  asyncCopy = async;
  blockCopy = block;
  selfCopy = self;
  entityFactory = selfCopy->_entityFactory;
  if (entityFactory)
  {
    v9 = entityFactory;
  }

  else
  {
    v9 = objc_alloc_init(KGLabelBasedEntityFactory);
  }

  v10 = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__KGGraphManager_submitReadBlock_async___block_invoke;
  aBlock[3] = &unk_2797FEF10;
  v11 = selfCopy;
  v25 = v11;
  v12 = blockCopy;
  v27 = v12;
  v13 = v10;
  v26 = v13;
  v14 = _Block_copy(aBlock);
  if (asyncCopy)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __40__KGGraphManager_submitReadBlock_async___block_invoke_13;
    v21[3] = &unk_2797FEF38;
    v15 = &v22;
    v16 = v11;
    v22 = v16;
    v23 = v14;
    v17 = _Block_copy(v21);
    dispatch_async(v16[5], v17);
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __40__KGGraphManager_submitReadBlock_async___block_invoke_2;
    v19[3] = &unk_2797FEEC0;
    v15 = &v20;
    v18 = v11;
    v20 = v18;
    v17 = _Block_copy(v19);
    dispatch_sync(v18[5], v17);
    dispatch_sync(v18[6], v14);
  }
}

void __40__KGGraphManager_submitReadBlock_async___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v18 = 0;
  v3 = [v2 obtainReadOnlyStore:&v18];
  v4 = v18;
  v5 = v4;
  if (!v3)
  {
    (*(*(a1 + 48) + 16))();
LABEL_12:
    [*(a1 + 32) decrementReadCount];
    v7 = v5;
    goto LABEL_13;
  }

  v17 = v4;
  v6 = [v3 beginTransactionWithError:&v17];
  v7 = v17;

  if (v6)
  {
    v8 = [[KGGraph alloc] initWithImplementation:v3 entityFactory:*(a1 + 40)];
    v9 = (*(*(a1 + 48) + 16))();

    if (v9)
    {
      v16 = v7;
      v10 = [v3 commitTransactionWithError:&v16];
      v5 = v16;

      if ((v10 & 1) != 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *buf = 138412290;
      v20 = v5;
      v11 = MEMORY[0x277D86220];
      v12 = "database commit failed: %@";
    }

    else
    {
      v15 = v7;
      v13 = [v3 rollbackTransactionWithError:&v15];
      v5 = v15;

      if ((v13 & 1) != 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *buf = 138412290;
      v20 = v5;
      v11 = MEMORY[0x277D86220];
      v12 = "database rollback failed: %@";
    }

    _os_log_error_impl(&dword_255870000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
LABEL_11:
    [*(a1 + 32) checkinReadOnlyStore:v3];

    goto LABEL_12;
  }

  (*(*(a1 + 48) + 16))();

LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
}

void __40__KGGraphManager_submitReadBlock_async___block_invoke_13(uint64_t a1)
{
  [*(a1 + 32) incrementReadCount];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 48);

  dispatch_async(v3, v2);
}

- (void)submitWriteBlock:(id)block async:(BOOL)async
{
  asyncCopy = async;
  blockCopy = block;
  selfCopy = self;
  entityFactory = selfCopy->_entityFactory;
  if (entityFactory)
  {
    v9 = entityFactory;
  }

  else
  {
    v9 = objc_alloc_init(KGLabelBasedEntityFactory);
  }

  v10 = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__KGGraphManager_submitWriteBlock_async___block_invoke;
  aBlock[3] = &unk_2797FEF10;
  v11 = selfCopy;
  v23 = v11;
  v12 = blockCopy;
  v25 = v12;
  v13 = v10;
  v24 = v13;
  v14 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __41__KGGraphManager_submitWriteBlock_async___block_invoke_11;
  v19[3] = &unk_2797FEF38;
  v15 = v11;
  v20 = v15;
  v16 = v14;
  v21 = v16;
  v17 = _Block_copy(v19);
  writeFeederQueue = v15->_writeFeederQueue;
  if (asyncCopy)
  {
    dispatch_async(writeFeederQueue, v17);
  }

  else
  {
    dispatch_sync(writeFeederQueue, v17);
  }
}

void __41__KGGraphManager_submitWriteBlock_async___block_invoke(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v19 = 0;
  v3 = [v2 obtainReadWriteStore:&v19];
  v4 = v19;
  v5 = v4;
  if (v3)
  {
    v18 = v4;
    v6 = [v3 beginTransactionWithError:&v18];
    v7 = v18;

    if (v6)
    {
      v8 = [[KGMutableGraph alloc] initWithMutableImplementation:v3 entityFactory:a1[5]];
      v9 = (*(a1[6] + 16))();

      if (v9)
      {
        v17 = v7;
        v10 = [v3 commitTransactionWithError:&v17];
        v11 = v17;

        if ((v10 & 1) != 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 138412290;
        v21 = v11;
        v12 = MEMORY[0x277D86220];
        v13 = "database commit failed: %@";
      }

      else
      {
        v16 = v7;
        v14 = [v3 rollbackTransactionWithError:&v16];
        v11 = v16;

        if ((v14 & 1) != 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 138412290;
        v21 = v11;
        v12 = MEMORY[0x277D86220];
        v13 = "database rollback failed: %@";
      }

      _os_log_error_impl(&dword_255870000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);
LABEL_11:
      v7 = v11;
      goto LABEL_12;
    }

    (*(a1[6] + 16))();
  }

  else
  {
    (*(a1[6] + 16))();
    v7 = v5;
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)submitExclusiveBlock:(id)block async:(BOOL)async
{
  asyncCopy = async;
  blockCopy = block;
  selfCopy = self;
  entityFactory = selfCopy->_entityFactory;
  if (entityFactory)
  {
    v9 = entityFactory;
  }

  else
  {
    v9 = objc_alloc_init(KGLabelBasedEntityFactory);
  }

  v10 = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__KGGraphManager_submitExclusiveBlock_async___block_invoke;
  aBlock[3] = &unk_2797FEF10;
  v11 = selfCopy;
  v17 = v11;
  v12 = blockCopy;
  v19 = v12;
  v13 = v10;
  v18 = v13;
  v14 = _Block_copy(aBlock);
  executionQueue = v11->_executionQueue;
  if (asyncCopy)
  {
    dispatch_barrier_async(executionQueue, v14);
  }

  else
  {
    dispatch_barrier_sync(executionQueue, v14);
  }
}

void __45__KGGraphManager_submitExclusiveBlock_async___block_invoke(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v19 = 0;
  v3 = [v2 obtainReadWriteStore:&v19];
  v4 = v19;
  v5 = v4;
  if (v3)
  {
    v18 = v4;
    v6 = [v3 beginTransactionWithError:&v18];
    v7 = v18;

    if (v6)
    {
      v8 = [[KGMutableGraph alloc] initWithMutableImplementation:v3 entityFactory:a1[5]];
      v9 = (*(a1[6] + 16))();

      if (v9)
      {
        v17 = v7;
        v10 = [v3 commitTransactionWithError:&v17];
        v11 = v17;

        if ((v10 & 1) != 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 138412290;
        v21 = v11;
        v12 = MEMORY[0x277D86220];
        v13 = "database commit failed: %@";
      }

      else
      {
        v16 = v7;
        v14 = [v3 rollbackTransactionWithError:&v16];
        v11 = v16;

        if ((v14 & 1) != 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 138412290;
        v21 = v11;
        v12 = MEMORY[0x277D86220];
        v13 = "database rollback failed: %@";
      }

      _os_log_error_impl(&dword_255870000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);
LABEL_11:
      v7 = v11;
      goto LABEL_12;
    }

    (*(a1[6] + 16))();
  }

  else
  {
    (*(a1[6] + 16))();
    v7 = v5;
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)decrementReadCount
{
  os_unfair_lock_lock(&self->_lock);
  readRunningCount = self->_readRunningCount;
  self->_readRunningCount = readRunningCount - 1;
  if (!self->_readFeeding && readRunningCount <= 4)
  {
    self->_readFeeding = 1;
    dispatch_resume(self->_readFeederQueue);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)incrementReadCount
{
  os_unfair_lock_lock(&self->_lock);
  readRunningCount = self->_readRunningCount;
  self->_readRunningCount = readRunningCount + 1;
  if (readRunningCount >= 4)
  {
    __assert_rtn("[KGGraphManager incrementReadCount]", "KGGraphManager.m", 250, "_readRunningCount <= kMaximumReaderCount");
  }

  if (readRunningCount == 3 && self->_readFeeding)
  {
    self->_readFeeding = 0;
    dispatch_suspend(self->_readFeederQueue);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)replaceFromGraph:(id)graph error:(id *)error
{
  graphCopy = graph;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3362;
  v23 = __Block_byref_object_dispose__3363;
  v24 = 0;
  v7 = self->_url;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__KGGraphManager_replaceFromGraph_error___block_invoke;
  block[3] = &unk_2797FEEE8;
  block[4] = self;
  v17 = &v25;
  v8 = graphCopy;
  v15 = v8;
  v9 = v7;
  v16 = v9;
  v18 = &v19;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_barrier_sync(self->_executionQueue, v10);
  v11 = *(v26 + 24);
  if ((v11 & 1) == 0)
  {
    v11 = 0;
    if (error)
    {
      v12 = v20[5];
      if (v12)
      {
        *error = v12;
        v11 = *(v26 + 24);
      }
    }
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v11 & 1;
}

void __41__KGGraphManager_replaceFromGraph_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) doClose];
  v2 = [*(a1 + 40) store];
  v3 = *(a1 + 48);
  v7 = 0;
  v4 = [v2 copyToURL:v3 error:&v7];
  v5 = v7;
  v6 = v7;
  *(*(*(a1 + 56) + 8) + 24) = v4;

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v5);
  }
}

- (void)asyncClose:(id)close
{
  selfCopy = self;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__KGGraphManager_asyncClose___block_invoke;
  block[3] = &unk_2797FEEC0;
  v7 = selfCopy;
  v4 = selfCopy;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_barrier_async(v4[6], v5);
}

- (void)close
{
  selfCopy = self;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__KGGraphManager_close__block_invoke;
  block[3] = &unk_2797FEEC0;
  v6 = selfCopy;
  v3 = selfCopy;
  v4 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_barrier_sync(v3[6], v4);
}

- (void)doClose
{
  v17 = *MEMORY[0x277D85DE8];
  readWriteStore = self->_readWriteStore;
  if (readWriteStore)
  {
    [(KGDegasGraphStore *)readWriteStore close];
    v4 = self->_readWriteStore;
    self->_readWriteStore = 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_readOnlyStores;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * v9++) close];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  readOnlyStores = self->_readOnlyStores;
  self->_readOnlyStores = 0;

  *self->_readStoreBooking = 0;
  self->_closed = 1;
  v11 = *MEMORY[0x277D85DE8];
}

- (id)obtainReadWriteStore:(id *)store
{
  os_unfair_lock_lock(&self->_lock);
  p_readWriteStore = &self->_readWriteStore;
  if (!self->_readWriteStore)
  {
    v6 = [[KGDegasGraphStore alloc] initWithURL:self->_url];
    v13 = 0;
    v7 = [(KGDegasGraphStore *)v6 openWithMode:134 error:&v13];
    v8 = v13;
    v9 = v8;
    if (v7)
    {
      objc_storeStrong(&self->_readWriteStore, v6);
    }

    else if (store)
    {
      v10 = v8;
      *store = v9;
    }
  }

  if (self->_closed && *p_readWriteStore)
  {
    self->_closed = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = *p_readWriteStore;

  return v11;
}

- (void)checkinReadOnlyStore:(id)store
{
  storeCopy = store;
  os_unfair_lock_lock(&self->_lock);
  v4 = 0;
  while ([(NSMutableArray *)self->_readOnlyStores count]>= v4)
  {
    v5 = [(NSMutableArray *)self->_readOnlyStores objectAtIndexedSubscript:v4];

    if (v5 == storeCopy)
    {
      self->_readStoreBooking[v4] = 0;
      break;
    }

    if (++v4 == 4)
    {
      break;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)obtainReadOnlyStore:(id *)store
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_closed)
  {
    self->_closed = 0;
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
    readOnlyStores = self->_readOnlyStores;
    self->_readOnlyStores = v5;

    *self->_readStoreBooking = 0;
  }

  v7 = 0;
  readStoreBooking = self->_readStoreBooking;
  while (readStoreBooking[v7])
  {
    if (++v7 == 4)
    {
      goto LABEL_15;
    }
  }

  if ([(NSMutableArray *)self->_readOnlyStores count]> v7)
  {
    v9 = [(NSMutableArray *)self->_readOnlyStores objectAtIndexedSubscript:v7];
LABEL_11:
    readStoreBooking[v7] = 1;
    goto LABEL_16;
  }

  v9 = [[KGDegasGraphStore alloc] initWithURL:self->_url];
  v14 = 0;
  v10 = [(KGDegasGraphStore *)v9 openWithMode:1 error:&v14];
  v11 = v14;
  if (v10)
  {
    [(NSMutableArray *)self->_readOnlyStores addObject:v9];

    goto LABEL_11;
  }

  if (store)
  {
    v12 = v11;
    *store = v11;
  }

LABEL_15:
  v9 = 0;
LABEL_16:
  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_readFeeding)
  {
    dispatch_resume(self->_readFeederQueue);
  }

  os_unfair_lock_unlock(&self->_lock);
  v3.receiver = self;
  v3.super_class = KGGraphManager;
  [(KGGraphManager *)&v3 dealloc];
}

- (void)setEntityFactory:(id)factory
{
  factoryCopy = factory;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_entityFactory)
  {
    objc_storeStrong(&self->_entityFactory, factory);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (KGGraphManager)initWithURL:(id)l entityFactory:(id)factory
{
  lCopy = l;
  factoryCopy = factory;
  v27.receiver = self;
  v27.super_class = KGGraphManager;
  v9 = [(KGGraphManager *)&v27 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, l);
    objc_storeStrong(&v10->_entityFactory, factory);
    v10->_readRunningCount = 0;
    v10->_readFeeding = 1;
    v10->_closed = 0;
    v10->_lock._os_unfair_lock_opaque = 0;
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_initially_inactive(v11);

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_initially_inactive(v13);

    v15 = dispatch_queue_create("com.apple.photos.knowledgegraph.execution", v12);
    executionQueue = v10->_executionQueue;
    v10->_executionQueue = v15;

    v17 = dispatch_queue_create("com.apple.photos.knowledgegraph.readfeeder", v14);
    readFeederQueue = v10->_readFeederQueue;
    v10->_readFeederQueue = v17;

    v19 = dispatch_queue_create("com.apple.photos.knowledgegraph.writefeeder", v14);
    writeFeederQueue = v10->_writeFeederQueue;
    v10->_writeFeederQueue = v19;

    v21 = v10->_executionQueue;
    dispatch_set_qos_class_fallback();
    v22 = v10->_readFeederQueue;
    dispatch_set_qos_class_fallback();
    v23 = v10->_writeFeederQueue;
    dispatch_set_qos_class_fallback();
    dispatch_activate(v10->_executionQueue);
    dispatch_activate(v10->_readFeederQueue);
    dispatch_activate(v10->_writeFeederQueue);
    *v10->_readStoreBooking = 0;
    v24 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
    readOnlyStores = v10->_readOnlyStores;
    v10->_readOnlyStores = v24;
  }

  return v10;
}

@end