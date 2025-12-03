@interface MCDPCContainer
- (BOOL)isValidForRefreshedParent:(id)parent;
- (MCDPCContainerDelegate)delegate;
- (MCDPCItem)rootItem;
- (MCDPCModel)model;
- (NSString)appTitle;
- (NSString)title;
- (id)_initWithModel:(id)model rootItem:(id)item indexPath:(id)path;
- (id)cachedIndexByIdentifier:(id)identifier;
- (id)cachedItemForIdentifier:(id)identifier;
- (id)cachedItemForIndex:(int64_t)index;
- (id)containerAtIndex:(int64_t)index;
- (id)containerForItem:(id)item;
- (id)description;
- (int64_t)showCurrentlyPlayingIndex;
- (void)_contentItemsUpdated:(id)updated;
- (void)_nowPlayingIdentifiersDidChange:(id)change;
- (void)beginLoadingItem:(id)item completion:(id)completion;
- (void)beginLoadingItemWithCompletion:(id)completion;
- (void)dealloc;
- (void)fetchContentWithCompletion:(id)completion;
- (void)getChildrenInRange:(_NSRange)range completion:(id)completion;
- (void)getCountOfChildrenWithCompletion:(id)completion;
- (void)getNowPlayingIdentifiersWithCompletion:(id)completion;
- (void)getPlaybackProgressSupportForChildrenWithCompletion:(id)completion;
- (void)invalidate;
- (void)refreshWithCompletion:(id)completion;
- (void)setCount:(int64_t)count;
- (void)setDelegate:(id)delegate;
- (void)updateRootItemWithCompletion:(id)completion;
@end

@implementation MCDPCContainer

- (id)_initWithModel:(id)model rootItem:(id)item indexPath:(id)path
{
  modelCopy = model;
  itemCopy = item;
  pathCopy = path;
  v11 = [(MCDPCContainer *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_model, modelCopy);
    objc_storeWeak(&v12->_rootItem, itemCopy);
    identifier = [itemCopy identifier];
    v14 = [identifier copy];
    identifier = v12->_identifier;
    v12->_identifier = v14;

    objc_storeStrong(&v12->_indexPath, path);
    if (!v12->_indexPath)
    {
      v16 = objc_alloc_init(MEMORY[0x277CCAA70]);
      indexPath = v12->_indexPath;
      v12->_indexPath = v16;
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    cachedItemsByIndicies = v12->_cachedItemsByIndicies;
    v12->_cachedItemsByIndicies = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    cachedIndiciesByIdentifier = v12->_cachedIndiciesByIdentifier;
    v12->_cachedIndiciesByIdentifier = dictionary2;

    v22 = dispatch_queue_create("com.apple.MusicCarDisplayUI.playableContent.serialContainerAccess", 0);
    serialAccessContainerQueue = v12->_serialAccessContainerQueue;
    v12->_serialAccessContainerQueue = v22;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    WeakRetained = objc_loadWeakRetained(&v12->_model);
    [defaultCenter addObserver:v12 selector:sel__contentItemsUpdated_ name:@"didUpdateContent" object:WeakRetained];

    [defaultCenter addObserver:v12 selector:sel__nowPlayingIdentifiersDidChange_ name:@"MCDBrowsableContentNowPlayingIdentifiersUpdatedNotification" object:0];
  }

  return v12;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = MCDPCContainer;
  [(MCDPCContainer *)&v4 dealloc];
}

- (void)invalidate
{
  [(MCDPCContainer *)self setCachedCount:0];
  serialAccessContainerQueue = [(MCDPCContainer *)self serialAccessContainerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__MCDPCContainer_invalidate__block_invoke;
  block[3] = &unk_279923B08;
  block[4] = self;
  dispatch_sync(serialAccessContainerQueue, block);
}

void __28__MCDPCContainer_invalidate__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  [*(a1 + 32) setCachedItemsByIndicies:v2];

  v3 = [MEMORY[0x277CBEB38] dictionary];
  [*(a1 + 32) setCachedIndiciesByIdentifier:v3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = _MCDStringFromIndexPath(self->_indexPath);
  identifier = self->_identifier;
  keyEnumerator = [(NSMutableDictionary *)self->_cachedItemsByIndicies keyEnumerator];
  allObjects = [keyEnumerator allObjects];
  v10 = [allObjects componentsJoinedByString:{@", "}];
  v11 = [v3 stringWithFormat:@"<%@:%p - [%@:%@] - %@>", v5, self, v6, identifier, v10];

  return v11;
}

- (void)_contentItemsUpdated:(id)updated
{
  v38 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  userInfo = [updatedCopy userInfo];
  v4 = [userInfo objectForKey:@"items"];
  v5 = +[MCDBrowsableContentUtilities sharedInstance];
  nowPlayingIdentifiers = [v5 nowPlayingIdentifiers];

  v6 = MCDGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25AD8E000, v6, OS_LOG_TYPE_DEFAULT, "Content items updated, preparing to find indicies to update", buf, 2u);
  }

  indexSet = [MEMORY[0x277CCAB58] indexSet];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v7)
  {
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v34 = __Block_byref_object_copy__0;
        v35 = __Block_byref_object_dispose__0;
        v36 = 0;
        serialAccessContainerQueue = [(MCDPCContainer *)self serialAccessContainerQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __39__MCDPCContainer__contentItemsUpdated___block_invoke;
        block[3] = &unk_279923FC8;
        block[5] = v10;
        block[6] = buf;
        block[4] = self;
        dispatch_sync(serialAccessContainerQueue, block);

        v12 = *(*&buf[8] + 40);
        if (v12)
        {
          v13 = -[MCDPCContainer cachedItemForIndex:](self, "cachedItemForIndex:", [v12 integerValue]);
          v14 = v13;
          if (v10)
          {
            identifier = [v13 identifier];
            -[NSObject setCurrentlyPlaying:](v14, "setCurrentlyPlaying:", [nowPlayingIdentifiers containsObject:identifier]);

            [indexSet addIndex:{objc_msgSend(*(*&buf[8] + 40), "integerValue")}];
          }
        }

        else
        {
          v14 = MCDGeneralLogging();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            identifier2 = [v10 identifier];
            [(MCDPCContainer *)identifier2 _contentItemsUpdated:v31, &v32, v14];
          }
        }

        _Block_object_dispose(buf, 8);
        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v7);
  }

  if ([indexSet count] && (*&self->44 & 2) != 0)
  {
    v17 = MCDGeneralLogging();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      identifier3 = [(MCDPCContainer *)self identifier];
      *buf = 138543618;
      *&buf[4] = identifier3;
      *&buf[12] = 2114;
      *&buf[14] = indexSet;
      _os_log_impl(&dword_25AD8E000, v17, OS_LOG_TYPE_DEFAULT, "Contents updated for container: %{public}@, indicies: %{public}@", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained container:self didInvalidateIndicies:indexSet];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __39__MCDPCContainer__contentItemsUpdated___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) cachedIndiciesByIdentifier];
  v2 = [*(a1 + 40) identifier];
  v3 = [v6 objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_nowPlayingIdentifiersDidChange:(id)change
{
  v41 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v4 = +[MCDBrowsableContentUtilities sharedInstance];
  nowPlayingIdentifiers = [v4 nowPlayingIdentifiers];

  indexSet = [MEMORY[0x277CCAB58] indexSet];
  v6 = MCDGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_25AD8E000, v6, OS_LOG_TYPE_DEFAULT, "Now Playing Identifiers changed, checking to see what is now playing", &buf, 2u);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  cachedItemsByIndicies = [(MCDPCContainer *)self cachedItemsByIndicies];
  obj = [cachedItemsByIndicies allKeys];

  v8 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v8)
  {
    v9 = *v32;
    do
    {
      v10 = 0;
      do
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v31 + 1) + 8 * v10);
        cachedItemsByIndicies2 = [(MCDPCContainer *)self cachedItemsByIndicies];
        v13 = [cachedItemsByIndicies2 objectForKeyedSubscript:v11];

        identifier = [v13 identifier];
        currentlyPlaying = [v13 currentlyPlaying];
        v16 = [nowPlayingIdentifiers containsObject:identifier];
        v17 = MCDGeneralLogging();
        v18 = v17;
        if (v16)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = identifier;
            _os_log_impl(&dword_25AD8E000, v18, OS_LOG_TYPE_DEFAULT, "Item currently playing. Identifier: %{public}@", &buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = identifier;
          _os_log_debug_impl(&dword_25AD8E000, v18, OS_LOG_TYPE_DEBUG, "Item not currently playing. Identifier: %{public}@", &buf, 0xCu);
        }

        [v13 setCurrentlyPlaying:v16];
        if (currentlyPlaying != [v13 currentlyPlaying])
        {
          *&buf = 0;
          *(&buf + 1) = &buf;
          v36 = 0x3032000000;
          v37 = __Block_byref_object_copy__0;
          v38 = __Block_byref_object_dispose__0;
          v39 = 0;
          v19 = MCDGeneralLogging();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *v30 = 0;
            _os_log_impl(&dword_25AD8E000, v19, OS_LOG_TYPE_DEFAULT, "Item currently playing has changed, updating indicies", v30, 2u);
          }

          serialAccessContainerQueue = self->_serialAccessContainerQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __50__MCDPCContainer__nowPlayingIdentifiersDidChange___block_invoke;
          block[3] = &unk_279923FC8;
          p_buf = &buf;
          block[4] = self;
          v28 = identifier;
          dispatch_sync(serialAccessContainerQueue, block);
          [indexSet addIndex:{objc_msgSend(*(*(&buf + 1) + 40), "integerValue")}];

          _Block_object_dispose(&buf, 8);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v8);
  }

  if ([indexSet count] && (*&self->44 & 2) != 0)
  {
    v21 = MCDGeneralLogging();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_25AD8E000, v21, OS_LOG_TYPE_DEFAULT, "Indicies invalidated based on now playing identifiers", &buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained container:self didInvalidateIndicies:indexSet];
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __50__MCDPCContainer__nowPlayingIdentifiersDidChange___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 72) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *&self->44 = *&self->44 & 0xFD | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *&self->44 = *&self->44 & 0xFB | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    *&self->44 = *&self->44 & 0xF7 | v7;
    objc_storeWeak(&self->_delegate, obj);
  }
}

- (NSString)title
{
  if ([(NSIndexPath *)self->_indexPath length])
  {
    WeakRetained = objc_loadWeakRetained(&self->_rootItem);
    [WeakRetained title];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_model);
    [WeakRetained appTitle];
  }
  v4 = ;

  return v4;
}

- (NSString)appTitle
{
  WeakRetained = objc_loadWeakRetained(&self->_model);
  appTitle = [WeakRetained appTitle];

  return appTitle;
}

- (int64_t)showCurrentlyPlayingIndex
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  cachedItemsByIndicies = [(MCDPCContainer *)self cachedItemsByIndicies];
  allKeys = [cachedItemsByIndicies allKeys];

  v5 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        cachedItemsByIndicies2 = [(MCDPCContainer *)self cachedItemsByIndicies];
        v12 = [cachedItemsByIndicies2 objectForKeyedSubscript:v10];

        integerValue = [v10 integerValue];
        currentlyPlaying = [v12 currentlyPlaying];
        if (integerValue >= v8)
        {
          v15 = v8;
        }

        else
        {
          v15 = integerValue;
        }

        if (currentlyPlaying)
        {
          v8 = v15;
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)setCount:(int64_t)count
{
  if (self->_cachedCount != count)
  {
    if ((*&self->44 & 4) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained containerWillChangeCount:self];
    }

    [(MCDPCContainer *)self setCachedCount:count];
    if ((*&self->44 & 8) != 0)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 containerDidChangeCount:self];
    }
  }
}

- (id)containerForItem:(id)item
{
  itemCopy = item;
  identifier = [itemCopy identifier];
  v6 = [(MCDPCContainer *)self cachedIndexByIdentifier:identifier];
  integerValue = [v6 integerValue];

  v8 = [MCDPCContainer alloc];
  WeakRetained = objc_loadWeakRetained(&self->_model);
  v10 = [(NSIndexPath *)self->_indexPath indexPathByAddingIndex:integerValue];
  v11 = [(MCDPCContainer *)v8 _initWithModel:WeakRetained rootItem:itemCopy indexPath:v10];

  return v11;
}

- (id)containerAtIndex:(int64_t)index
{
  v5 = [MCDPCContainer alloc];
  WeakRetained = objc_loadWeakRetained(&self->_model);
  v7 = [(MCDPCContainer *)self cachedItemForIndex:index];
  v8 = [(NSIndexPath *)self->_indexPath indexPathByAddingIndex:index];
  v9 = [(MCDPCContainer *)v5 _initWithModel:WeakRetained rootItem:v7 indexPath:v8];

  return v9;
}

- (void)updateRootItemWithCompletion:(id)completion
{
  completionCopy = completion;
  if (![(NSIndexPath *)self->_indexPath length])
  {
    completionCopy[2](completionCopy, 1);
  }

  indexPathByRemovingLastIndex = [(NSIndexPath *)self->_indexPath indexPathByRemovingLastIndex];
  v6 = [(NSIndexPath *)self->_indexPath indexAtPosition:[(NSIndexPath *)self->_indexPath length]- 1];
  WeakRetained = objc_loadWeakRetained(&self->_model);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__MCDPCContainer_updateRootItemWithCompletion___block_invoke;
  v9[3] = &unk_279923FF0;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [WeakRetained getChildrenAtIndexPath:indexPathByRemovingLastIndex inRange:v6 completion:{1, v9}];
}

void __47__MCDPCContainer_updateRootItemWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  obj = [a2 firstObject];
  v3 = [obj identifier];
  v4 = [v3 isEqualToString:*(*(a1 + 32) + 8)];

  if (v4)
  {
    objc_storeWeak((*(a1 + 32) + 24), obj);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchContentWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = MCDGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(MCDPCContainer *)self identifier];
    v7 = identifier;
    v8 = @"ROOT";
    if (identifier)
    {
      v8 = identifier;
    }

    *buf = 138412290;
    v14 = v8;
    _os_log_impl(&dword_25AD8E000, v5, OS_LOG_TYPE_DEFAULT, "Starting to refresh for %@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__MCDPCContainer_fetchContentWithCompletion___block_invoke;
  v11[3] = &unk_279924040;
  v11[4] = self;
  v12 = completionCopy;
  v9 = completionCopy;
  [(MCDPCContainer *)self getPlaybackProgressSupportForChildrenWithCompletion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __45__MCDPCContainer_fetchContentWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __45__MCDPCContainer_fetchContentWithCompletion___block_invoke_2;
  v2[3] = &unk_279924018;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 getCountOfChildrenWithCompletion:v2];
}

void __45__MCDPCContainer_fetchContentWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__MCDPCContainer_fetchContentWithCompletion___block_invoke_3;
  v4[3] = &unk_279923FF0;
  v4[4] = v3;
  v5 = *(a1 + 40);
  [v3 getChildrenInRange:0 completion:{a2, v4}];
}

uint64_t __45__MCDPCContainer_fetchContentWithCompletion___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = MCDGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) identifier];
    v4 = v3;
    v5 = @"ROOT";
    if (v3)
    {
      v5 = v3;
    }

    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_25AD8E000, v2, OS_LOG_TYPE_DEFAULT, "Finishing refresh for %@", &v8, 0xCu);
  }

  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)refreshWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MCDGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25AD8E000, v5, OS_LOG_TYPE_DEFAULT, "Starting to refresh all items, beginning with beginLoadingItem", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__MCDPCContainer_refreshWithCompletion___block_invoke;
  v7[3] = &unk_279924090;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(MCDPCContainer *)self beginLoadingItemWithCompletion:v7];
}

void __40__MCDPCContainer_refreshWithCompletion___block_invoke(uint64_t a1)
{
  v2 = MCDGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25AD8E000, v2, OS_LOG_TYPE_DEFAULT, "Begin Loading completed for refreshing all items", buf, 2u);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__MCDPCContainer_refreshWithCompletion___block_invoke_361;
  v4[3] = &unk_279924068;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 fetchContentWithCompletion:v4];
}

void __40__MCDPCContainer_refreshWithCompletion___block_invoke_361(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = MCDGeneralLogging();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_25AD8E000, v1, OS_LOG_TYPE_DEFAULT, "Completed invalidation, resetting", v2, 2u);
  }
}

- (BOOL)isValidForRefreshedParent:(id)parent
{
  parentCopy = parent;
  if (parentCopy || [(NSIndexPath *)self->_indexPath length])
  {
    v5 = [parentCopy containerAtIndex:0];
    identifier = [v5 identifier];

    if (identifier)
    {
      v7 = 0;
      while (1)
      {
        identifier2 = [v5 identifier];
        v9 = [identifier2 isEqualToString:self->_identifier];

        if (v9)
        {
          break;
        }

        v10 = [parentCopy containerAtIndex:++v7];

        identifier3 = [v10 identifier];

        v5 = v10;
        if (!identifier3)
        {
          v12 = 0;
          v5 = v10;
          goto LABEL_10;
        }
      }

      indexPath = [parentCopy indexPath];
      v14 = [indexPath indexPathByAddingIndex:v7];
      indexPath = self->_indexPath;
      self->_indexPath = v14;

      v12 = 1;
    }

    else
    {
      v12 = 0;
    }

LABEL_10:
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)beginLoadingItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  v7 = [(MCDPCContainer *)self containerForItem:item];
  [v7 beginLoadingItemWithCompletion:completionCopy];
}

- (void)beginLoadingItemWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = MCDGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(MCDPCContainer *)self identifier];
    v7 = identifier;
    v8 = @"ROOT";
    if (identifier)
    {
      v8 = identifier;
    }

    *buf = 138412290;
    v16 = v8;
    _os_log_impl(&dword_25AD8E000, v5, OS_LOG_TYPE_DEFAULT, "Preparing to begin loading item %@", buf, 0xCu);
  }

  model = [(MCDPCContainer *)self model];
  indexPath = [(MCDPCContainer *)self indexPath];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__MCDPCContainer_beginLoadingItemWithCompletion___block_invoke;
  v13[3] = &unk_279924090;
  v13[4] = self;
  v14 = completionCopy;
  v11 = completionCopy;
  [model beginLoadingItemAtIndexPath:indexPath completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __49__MCDPCContainer_beginLoadingItemWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MCDGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) identifier];
    v6 = v5;
    v7 = @"ROOT";
    if (v5)
    {
      v7 = v5;
    }

    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_25AD8E000, v4, OS_LOG_TYPE_DEFAULT, "Finished begin loading item %@", &v10, 0xCu);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)getPlaybackProgressSupportForChildrenWithCompletion:(id)completion
{
  completionCopy = completion;
  model = [(MCDPCContainer *)self model];
  indexPath = [(MCDPCContainer *)self indexPath];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__MCDPCContainer_getPlaybackProgressSupportForChildrenWithCompletion___block_invoke;
  v8[3] = &unk_279924040;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [model getChildrenSupportsPlaybackProgressForIndexPath:indexPath withCompletion:v8];
}

void __70__MCDPCContainer_getPlaybackProgressSupportForChildrenWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) setShowPlaybackProgress:a2];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

- (void)getNowPlayingIdentifiersWithCompletion:(id)completion
{
  completionCopy = completion;
  model = [(MCDPCContainer *)self model];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__MCDPCContainer_getNowPlayingIdentifiersWithCompletion___block_invoke;
  v7[3] = &unk_2799240B8;
  v8 = completionCopy;
  v6 = completionCopy;
  [model getNowPlayingIdentifiersWithCompletion:v7];
}

void __57__MCDPCContainer_getNowPlayingIdentifiersWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[MCDBrowsableContentUtilities sharedInstance];
  [v3 setNowPlayingIdentifiers:v5];

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

- (void)getCountOfChildrenWithCompletion:(id)completion
{
  completionCopy = completion;
  model = [(MCDPCContainer *)self model];
  indexPath = [(MCDPCContainer *)self indexPath];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__MCDPCContainer_getCountOfChildrenWithCompletion___block_invoke;
  v8[3] = &unk_279924018;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [model getCountOfChildrenAtIndexPath:indexPath withCompletion:v8];
}

void __51__MCDPCContainer_getCountOfChildrenWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) setCount:a2];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

- (void)getChildrenInRange:(_NSRange)range completion:(id)completion
{
  length = range.length;
  location = range.location;
  completionCopy = completion;
  model = [(MCDPCContainer *)self model];
  indexPath = [(MCDPCContainer *)self indexPath];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__MCDPCContainer_getChildrenInRange_completion___block_invoke;
  v11[3] = &unk_279924108;
  v13 = location;
  v14 = length;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [model getChildrenAtIndexPath:indexPath inRange:location completion:{length, v11}];
}

void __48__MCDPCContainer_getChildrenInRange_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  v11 = [*(a1 + 32) serialAccessContainerQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__MCDPCContainer_getChildrenInRange_completion___block_invoke_2;
  v16[3] = &unk_2799240E0;
  v21 = *(a1 + 48);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v17 = v9;
  v18 = v12;
  v22 = a3;
  v23 = a4;
  v19 = v10;
  v20 = v13;
  v14 = v10;
  v15 = v9;
  dispatch_sync(v11, v16);
}

void __48__MCDPCContainer_getChildrenInRange_completion___block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = +[MCDBrowsableContentUtilities sharedInstance];
  v24 = [v2 nowPlayingIdentifiers];

  v3 = *(a1 + 64);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [v9 identifier];
        if (v10 && (v11 = v10, [v9 identifier], v12 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v12, v11, (isKindOfClass & 1) == 0))
        {
          v15 = [v9 identifier];
          [v9 setCurrentlyPlaying:{objc_msgSend(v24, "containsObject:", v15)}];

          v16 = [*(a1 + 40) cachedItemsByIndicies];
          v17 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
          [v16 setObject:v9 forKeyedSubscript:v17];

          v18 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
          v19 = [*(a1 + 40) cachedIndiciesByIdentifier];
          v20 = [v9 identifier];
          [v19 setObject:v18 forKeyedSubscript:v20];

          ++v3;
        }

        else
        {
          v14 = MCDGeneralLogging();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v30 = v9;
            _os_log_impl(&dword_25AD8E000, v14, OS_LOG_TYPE_DEFAULT, "Skipping item %@ without identifier", buf, 0xCu);
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v6);
  }

  v21 = MCDGeneralLogging();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25AD8E000, v21, OS_LOG_TYPE_DEFAULT, "Finished adding items to cache", buf, 2u);
  }

  v22 = *(a1 + 56);
  if (v22)
  {
    (*(v22 + 16))(v22, *(a1 + 32), *(a1 + 80), *(a1 + 88), *(a1 + 48));
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)cachedItemForIndex:(int64_t)index
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  serialAccessContainerQueue = [(MCDPCContainer *)self serialAccessContainerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__MCDPCContainer_cachedItemForIndex___block_invoke;
  block[3] = &unk_279924130;
  block[4] = self;
  block[5] = &v9;
  block[6] = index;
  dispatch_sync(serialAccessContainerQueue, block);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __37__MCDPCContainer_cachedItemForIndex___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) cachedItemsByIndicies];
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v3 = [v6 objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)cachedItemForIdentifier:(id)identifier
{
  v4 = [(MCDPCContainer *)self cachedIndexByIdentifier:identifier];
  v5 = -[MCDPCContainer cachedItemForIndex:](self, "cachedItemForIndex:", [v4 integerValue]);

  return v5;
}

- (id)cachedIndexByIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  serialAccessContainerQueue = [(MCDPCContainer *)self serialAccessContainerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__MCDPCContainer_cachedIndexByIdentifier___block_invoke;
  block[3] = &unk_279923FC8;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(serialAccessContainerQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __42__MCDPCContainer_cachedIndexByIdentifier___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) cachedIndiciesByIdentifier];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (MCDPCItem)rootItem
{
  WeakRetained = objc_loadWeakRetained(&self->_rootItem);

  return WeakRetained;
}

- (MCDPCModel)model
{
  WeakRetained = objc_loadWeakRetained(&self->_model);

  return WeakRetained;
}

- (MCDPCContainerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_contentItemsUpdated:(void *)a3 .cold.1(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138543362;
  *a3 = a1;
  _os_log_debug_impl(&dword_25AD8E000, log, OS_LOG_TYPE_DEBUG, "Index was nil for %{public}@", buf, 0xCu);
}

@end