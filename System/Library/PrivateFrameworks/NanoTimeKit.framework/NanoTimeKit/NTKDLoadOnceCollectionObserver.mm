@interface NTKDLoadOnceCollectionObserver
- (NTKDLoadOnceCollectionObserver)initWithCollection:(id)collection;
- (void)_queue_performInitialLoad;
- (void)faceCollectionDidLoad:(id)load;
- (void)performOnLoad:(id)load;
@end

@implementation NTKDLoadOnceCollectionObserver

- (NTKDLoadOnceCollectionObserver)initWithCollection:(id)collection
{
  collectionCopy = collection;
  v16.receiver = self;
  v16.super_class = NTKDLoadOnceCollectionObserver;
  v6 = [(NTKDLoadOnceCollectionObserver *)&v16 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.nanotimekit.collections.loadonce", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    v6->_hasLoaded = 0;
    array = [MEMORY[0x277CBEB18] array];
    handlers = v6->_handlers;
    v6->_handlers = array;

    objc_storeStrong(&v6->_collection, collection);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __53__NTKDLoadOnceCollectionObserver_initWithCollection___block_invoke;
    v13[3] = &unk_27877E438;
    v14 = v6;
    v15 = collectionCopy;
    dispatch_async(MEMORY[0x277D85CD0], v13);
  }

  return v6;
}

void __53__NTKDLoadOnceCollectionObserver_initWithCollection___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 8) addObserver:?];
  if ([*(*(a1 + 32) + 8) hasLoaded])
  {
    v2 = _NTKLoggingObjectForDomain(1, "NTKLoggingDomainDaemon");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      *buf = 134218242;
      v10 = v3;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "LoadOnce(%p): Collection already loaded %@!", buf, 0x16u);
    }

    v5 = *(a1 + 32);
    v6 = v5[3];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__NTKDLoadOnceCollectionObserver_initWithCollection___block_invoke_2;
    block[3] = &unk_27877DB10;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

- (void)performOnLoad:(id)load
{
  v16 = *MEMORY[0x277D85DE8];
  loadCopy = load;
  v5 = _NTKLoggingObjectForDomain(1, "NTKLoggingDomainDaemon");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    collection = self->_collection;
    *buf = 134218242;
    selfCopy2 = self;
    v14 = 2112;
    v15 = collection;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "LoadOnce(%p): Collection %@ got work to do…", buf, 0x16u);
  }

  if (loadCopy)
  {
    queue = self->_queue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__NTKDLoadOnceCollectionObserver_performOnLoad___block_invoke;
    v10[3] = &unk_27877FF60;
    v10[4] = self;
    v11 = loadCopy;
    dispatch_async(queue, v10);
  }

  else
  {
    v8 = _NTKLoggingObjectForDomain(1, "NTKLoggingDomainDaemon");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_collection;
      *buf = 134218242;
      selfCopy2 = self;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "LoadOnce(%p): No work provided for %@.", buf, 0x16u);
    }
  }
}

void __48__NTKDLoadOnceCollectionObserver_performOnLoad___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  v3 = _NTKLoggingObjectForDomain(1, "NTKLoggingDomainDaemon");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(v5 + 8);
      v12 = 134218242;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "LoadOnce(%p): Already loaded %@.", &v12, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v4)
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + 8);
      v12 = 134218242;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "LoadOnce(%p): Load pending for %@.", &v12, 0x16u);
    }

    v9 = *(a1 + 40);
    v10 = *(*(a1 + 32) + 16);
    v11 = _Block_copy(v9);
    [v10 addObject:v11];
  }
}

- (void)faceCollectionDidLoad:(id)load
{
  v12 = *MEMORY[0x277D85DE8];
  loadCopy = load;
  v5 = _NTKLoggingObjectForDomain(1, "NTKLoggingDomainDaemon");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v10 = 2112;
    v11 = loadCopy;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "LoadOnce(%p): Collection loaded %@!", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__NTKDLoadOnceCollectionObserver_faceCollectionDidLoad___block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_queue_performInitialLoad
{
  v22 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_hasLoaded)
  {
    v3 = [(NSMutableArray *)self->_handlers copy];
    v4 = _NTKLoggingObjectForDomain(1, "NTKLoggingDomainDaemon");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      collection = self->_collection;
      *buf = 134218498;
      selfCopy = self;
      v18 = 2112;
      v19 = collection;
      v20 = 2048;
      v21 = [v3 count];
      _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "LoadOnce(%p): Collection %@ invoking %lu handlers!", buf, 0x20u);
    }

    [(NSMutableArray *)self->_handlers removeAllObjects];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    self->_hasLoaded = 1;
  }
}

@end