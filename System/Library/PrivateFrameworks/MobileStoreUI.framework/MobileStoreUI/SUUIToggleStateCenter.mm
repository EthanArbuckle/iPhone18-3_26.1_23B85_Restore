@interface SUUIToggleStateCenter
+ (id)defaultCenter;
- (BOOL)updateItem:(id)item;
- (SUUIToggleStateCenter)init;
- (id)itemForIdentifier:(id)identifier;
- (void)_notifyObserversOfStateChanges:(id)changes;
- (void)addObserver:(id)observer;
- (void)clearAll;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation SUUIToggleStateCenter

- (SUUIToggleStateCenter)init
{
  v13.receiver = self;
  v13.super_class = SUUIToggleStateCenter;
  v2 = [(SUUIToggleStateCenter *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesStoreUI.SUUIToggleStateCenter", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = dispatch_queue_create("com.apple.iTunesStoreUI.SUUIToggleStateCenter.observers", 0);
    observerQueue = v2->_observerQueue;
    v2->_observerQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    itemStates = v2->_itemStates;
    v2->_itemStates = v7;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = *MEMORY[0x277D69D70];
    defaultStore = [MEMORY[0x277D69A20] defaultStore];
    [defaultCenter addObserver:v2 selector:sel__accountStoreChangeNotification_ name:v10 object:defaultStore];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277D69D70];
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  [defaultCenter removeObserver:self name:v4 object:defaultStore];

  v6.receiver = self;
  v6.super_class = SUUIToggleStateCenter;
  [(SUUIToggleStateCenter *)&v6 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__SUUIToggleStateCenter_addObserver___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(accessQueue, v7);
}

uint64_t __37__SUUIToggleStateCenter_addObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(*(a1 + 32) + 32);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (void)clearAll
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SUUIToggleStateCenter_clearAll__block_invoke;
  block[3] = &unk_2798F5BE8;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

void __33__SUUIToggleStateCenter_clearAll__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 16) allValues];
  v3 = [v2 copy];

  [*(*(a1 + 32) + 16) removeAllObjects];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 32) _notifyObserversOfStateChanges:{*(*(&v9 + 1) + 8 * v8++), v9}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

+ (id)defaultCenter
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SUUIToggleStateCenter_defaultCenter__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultCenter_sOnce != -1)
  {
    dispatch_once(&defaultCenter_sOnce, block);
  }

  v2 = defaultCenter_sCenter;

  return v2;
}

uint64_t __38__SUUIToggleStateCenter_defaultCenter__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = defaultCenter_sCenter;
  defaultCenter_sCenter = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (id)itemForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__53;
  v16 = __Block_byref_object_dispose__53;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SUUIToggleStateCenter_itemForIdentifier___block_invoke;
  block[3] = &unk_2798FB2E8;
  block[4] = self;
  v10 = identifierCopy;
  v11 = &v12;
  v6 = identifierCopy;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __43__SUUIToggleStateCenter_itemForIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];

  if (v2)
  {
    v13 = [*(a1[4] + 16) objectForKey:a1[5]];
    v3 = [v13 copy];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v7 = v13;
  }

  else
  {
    v8 = objc_alloc_init(SUUIToggleStateItem);
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [*(*(a1[6] + 8) + 40) setItemIdentifier:a1[5]];
    [*(*(a1[6] + 8) + 40) setToggled:0xFFFFFFFFLL];
    [*(*(a1[6] + 8) + 40) setCount:-1];
    [*(a1[4] + 16) setObject:*(*(a1[6] + 8) + 40) forKey:a1[5]];
    v6 = [*(*(a1[6] + 8) + 40) copy];
    v11 = *(a1[6] + 8);
    v7 = *(v11 + 40);
    *(v11 + 40) = v6;
  }

  return MEMORY[0x2821F96F8](v6, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SUUIToggleStateCenter_removeObserver___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(accessQueue, v7);
}

- (BOOL)updateItem:(id)item
{
  itemCopy = item;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__SUUIToggleStateCenter_updateItem___block_invoke;
  block[3] = &unk_2798FB2E8;
  block[4] = self;
  v9 = itemCopy;
  v10 = &v11;
  v6 = itemCopy;
  dispatch_sync(accessQueue, block);
  LOBYTE(accessQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return accessQueue;
}

void __36__SUUIToggleStateCenter_updateItem___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) itemIdentifier];
  v13 = [v2 objectForKey:v3];

  v4 = v13;
  if (v13)
  {
    v5 = [v13 count];
    if (v5 != [*(a1 + 40) count])
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      [v13 setCount:{objc_msgSend(*(a1 + 40), "count")}];
    }

    v6 = [*(a1 + 40) toggledString];
    if (v6)
    {
      v7 = v6;
      v8 = [*(a1 + 40) toggledString];
      v9 = [v13 toggledString];
      v10 = [v8 isEqualToString:v9];

      if ((v10 & 1) == 0)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
        v11 = [*(a1 + 40) toggledString];
        [v13 setToggledString:v11];
      }
    }

    v12 = [v13 toggled];
    if (v12 != [*(a1 + 40) toggled])
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      [v13 setToggled:{objc_msgSend(*(a1 + 40), "toggled")}];
    }

    v4 = v13;
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      [*(a1 + 32) _notifyObserversOfStateChanges:v13];
      v4 = v13;
    }
  }
}

- (void)_notifyObserversOfStateChanges:(id)changes
{
  changesCopy = changes;
  v5 = [(NSHashTable *)self->_observers copy];
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SUUIToggleStateCenter__notifyObserversOfStateChanges___block_invoke;
  block[3] = &unk_2798F5BC0;
  v10 = v5;
  selfCopy = self;
  v12 = changesCopy;
  v7 = changesCopy;
  v8 = v5;
  dispatch_async(observerQueue, block);
}

void __56__SUUIToggleStateCenter__notifyObserversOfStateChanges___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) itemStateCenter:*(a1 + 40) itemStateChanged:{*(a1 + 48), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end