@interface SUUIMediaPlayerInterface
+ (BOOL)identifierMatches:(id)a3 item:(id)a4;
+ (BOOL)isRadioItemIdentifier:(id)a3;
+ (id)sharedInstance;
- (BOOL)identifierIsOnDeck:(id)a3;
- (BOOL)isItemWithIdentifierActive:(id)a3;
- (SUUIMediaPlayerInterface)init;
- (id)_itemFromNotification:(id)a3;
- (id)_playerForNotification:(id)a3;
- (id)playerForItemWithIdentifier:(id)a3;
- (void)_bufferingStateChangedNotification:(id)a3;
- (void)_cancelOnDeckItem;
- (void)_createPeriodicTimeObserverIfNeeded:(id)a3;
- (void)_currentItemDurationAvailableNotification:(id)a3;
- (void)_destroyPeridicTimeObseverIfNeeded:(id)a3;
- (void)_itemDidChange:(id)a3 incomingItem:(id)a4;
- (void)_notifiyObserversOfItemChange:(id)a3;
- (void)_notifyFinishedItem:(id)a3;
- (void)_notifyObserversOfItemStateChange;
- (void)_onDeckTimedOut;
- (void)_playbackErrorNotification:(id)a3;
- (void)_playerItemDidChangeNotification:(id)a3;
- (void)_playerItemReady:(id)a3;
- (void)_playerItemWillChangeNotification:(id)a3;
- (void)_playerRateDidChangeNotification:(id)a3;
- (void)_registerForNotificationsForCurrentItem:(id)a3;
- (void)_setCurrentTimeIfPossible:(double)a3 player:(id)a4;
- (void)_startOnDeckTimer;
- (void)_unregisterForNotificationsForCurrentItem:(id)a3;
- (void)_updateBufferingState:(unint64_t)a3 player:(id)a4;
- (void)_updateDurationForPlayerItem:(id)a3 withMPAVItem:(id)a4;
- (void)_updateItemForPlayer:(id)a3 currentTime:(double)a4;
- (void)_updateTimeValuesUsingItemTime:(BOOL)a3 player:(id)a4 item:(id)a5;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)notifyWillChangeToItemWithItemIdentifer:(id)a3;
- (void)removeObserver:(id)a3;
- (void)togglePlayStateForItemWithIdentifier:(id)a3;
@end

@implementation SUUIMediaPlayerInterface

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SUUIMediaPlayerInterface_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_sOnce != -1)
  {
    dispatch_once(&sharedInstance_sOnce, block);
  }

  v2 = sharedInstance_smpi;

  return v2;
}

uint64_t __42__SUUIMediaPlayerInterface_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_smpi;
  sharedInstance_smpi = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (SUUIMediaPlayerInterface)init
{
  v24.receiver = self;
  v24.super_class = SUUIMediaPlayerInterface;
  v2 = [(SUUIMediaPlayerInterface *)&v24 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    players = v2->_players;
    v2->_players = v3;

    v5 = dispatch_queue_create("com.apple.iTunesStoreUI.SUUIMediaPlayerInterface", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v5;

    v7 = dispatch_queue_create("com.apple.iTunesStoreUI.SUUIMediaPlayerInterface.dispatch", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v7;

    v9 = dispatch_queue_create("com.apple.iTunesStoreUI.SUUIMediaPlayerInterface.observers", 0);
    observerQueue = v2->_observerQueue;
    v2->_observerQueue = v9;

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = SUUIMediaPlayerFramework();
    v13 = *SUUIWeakLinkedSymbolForString("MPAVControllerItemChangedNotification", v12);
    [v11 addObserver:v2 selector:sel__playerItemDidChangeNotification_ name:v13 object:0];
    v14 = SUUIMediaPlayerFramework();
    v15 = *SUUIWeakLinkedSymbolForString("MPAVControllerItemWillChangeNotification", v14);
    [v11 addObserver:v2 selector:sel__playerItemWillChangeNotification_ name:v15 object:0];
    v16 = SUUIMediaPlayerFramework();
    v17 = *SUUIWeakLinkedSymbolForString("MPAVControllerItemReadyToPlayNotification", v16);
    [v11 addObserver:v2 selector:sel__playerItemReady_ name:v17 object:0];
    v18 = SUUIMediaPlayerFramework();
    v19 = *SUUIWeakLinkedSymbolForString("MPAVControllerRateDidChangeNotification", v18);
    [v11 addObserver:v2 selector:sel__playerRateDidChangeNotification_ name:v19 object:0];
    v20 = SUUIMediaPlayerFramework();
    v21 = *SUUIWeakLinkedSymbolForString("MPAVControllerBufferingStateChangedNotification", v20);
    [v11 addObserver:v2 selector:sel__bufferingStateChangedNotification_ name:v21 object:0];
    v22 = SUUIMediaPlayerFramework();
    [v11 addObserver:v2 selector:sel__playbackErrorNotification_ name:*SUUIWeakLinkedSymbolForString("MPAVControllerPlaybackErrorNotification" object:{v22), 0}];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = SUUIMediaPlayerFramework();
  v5 = *SUUIWeakLinkedSymbolForString("MPAVControllerItemChangedNotification", v4);
  [v3 removeObserver:self name:v5 object:0];
  v6 = SUUIMediaPlayerFramework();
  v7 = *SUUIWeakLinkedSymbolForString("MPAVControllerItemWillChangeNotification", v6);
  [v3 removeObserver:self name:v7 object:0];
  v8 = SUUIMediaPlayerFramework();
  v9 = *SUUIWeakLinkedSymbolForString("MPAVControllerItemReadyToPlayNotification", v8);
  [v3 removeObserver:self name:v9 object:0];
  v10 = SUUIMediaPlayerFramework();
  v11 = *SUUIWeakLinkedSymbolForString("MPAVControllerRateDidChangeNotification", v10);
  [v3 removeObserver:self name:v11 object:0];
  v12 = SUUIMediaPlayerFramework();
  v13 = *SUUIWeakLinkedSymbolForString("MPAVControllerBufferingStateChangedNotification", v12);
  [v3 removeObserver:self name:v13 object:0];
  v14 = SUUIMediaPlayerFramework();
  [v3 removeObserver:self name:*SUUIWeakLinkedSymbolForString("MPAVControllerPlaybackErrorNotification" object:{v14), 0}];

  v15.receiver = self;
  v15.super_class = SUUIMediaPlayerInterface;
  [(SUUIMediaPlayerInterface *)&v15 dealloc];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SUUIMediaPlayerInterface_addObserver___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

uint64_t __40__SUUIMediaPlayerInterface_addObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (BOOL)isItemWithIdentifierActive:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSMapTable *)self->_players keyEnumerator];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMapTable *)self->_players objectForKey:*(*(&v16 + 1) + 8 * i), v16];
        v11 = [v10 playerItem];
        v12 = [v10 player];
        v13 = [v12 currentItem];

        if (v13 && [SUUIMediaPlayerInterface identifierMatches:v4 item:v11])
        {

          v14 = 1;
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  return v14;
}

+ (BOOL)identifierMatches:(id)a3 item:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    v10 = [v8 storeID];
    if (v10)
    {
      v4 = [v9 storeID];
      if ([v4 isEqualToString:v7])
      {
        v11 = 1;
        goto LABEL_13;
      }
    }

    v12 = [v9 storeAlbumID];
    if (v12 && ([v9 storeAlbumID], v5 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v5, "isEqualToString:", v7) & 1) != 0))
    {
      v11 = 1;
    }

    else
    {
      v13 = [v9 itemIdentifier];
      if (v13)
      {
        v14 = v13;
        v15 = [v9 itemIdentifier];
        v11 = [v15 isEqualToString:v7];

        if (!v12)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v11 = 0;
        if (!v12)
        {
LABEL_12:
          if (!v10)
          {
LABEL_14:

            goto LABEL_15;
          }

LABEL_13:

          goto LABEL_14;
        }
      }
    }

    goto LABEL_12;
  }

  v11 = 0;
LABEL_15:

  return v11;
}

+ (BOOL)isRadioItemIdentifier:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 hasPrefix:@"ra."])
    {
      v5 = 1;
    }

    else
    {
      v5 = [v4 hasPrefix:@"st."];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)identifierIsOnDeck:(id)a3
{
  v4 = a3;
  v8 = 0;
  if (v4)
  {
    onDeckItem = self->_onDeckItem;
    if (onDeckItem)
    {
      v6 = [(SUUIMediaPlayerItemStatus *)onDeckItem itemIdentifier];
      v7 = [v6 isEqualToString:v4];

      if (v7)
      {
        v8 = 1;
      }
    }
  }

  return v8;
}

- (void)notifyWillChangeToItemWithItemIdentifer:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSMapTable *)self->_players keyEnumerator];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMapTable *)self->_players objectForKey:*(*(&v18 + 1) + 8 * v9), v18];
        v11 = [v10 currentItem];
        v12 = [v10 playerItem];
        if (v12 && [SUUIMediaPlayerInterface identifierMatches:v4 item:v12])
        {

          goto LABEL_18;
        }

        if (v11)
        {
          [(SUUIMediaPlayerInterface *)self _unregisterForNotificationsForCurrentItem:v11];
        }

        [(SUUIMediaPlayerInterface *)self _destroyPeridicTimeObseverIfNeeded:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  onDeckItem = self->_onDeckItem;
  if (!onDeckItem)
  {
    goto LABEL_16;
  }

  v14 = [(SUUIMediaPlayerItemStatus *)onDeckItem itemIdentifier];
  v15 = [v14 isEqualToString:v4];

  if ((v15 & 1) == 0)
  {
    if (self->_onDeckItem)
    {
      [(SUUIMediaPlayerInterface *)self _cancelOnDeckItem];
    }

LABEL_16:
    v16 = objc_opt_new();
    v17 = self->_onDeckItem;
    self->_onDeckItem = v16;

    [(SUUIMediaPlayerItemStatus *)self->_onDeckItem setItemIdentifier:v4];
    [(SUUIMediaPlayerItemStatus *)self->_onDeckItem setPlayState:1];
    [(SUUIMediaPlayerInterface *)self _notifiyObserversOfItemChange:self->_onDeckItem];
    [(SUUIMediaPlayerInterface *)self _startOnDeckTimer];
  }

LABEL_18:
}

- (id)playerForItemWithIdentifier:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSMapTable *)self->_players keyEnumerator];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMapTable *)self->_players objectForKey:*(*(&v15 + 1) + 8 * i), v15];
        v11 = [v10 playerItem];
        v12 = [v10 player];
        v13 = [v12 currentItem];

        if (v13 && [SUUIMediaPlayerInterface identifierMatches:v4 item:v11])
        {

          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SUUIMediaPlayerInterface_removeObserver___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, v7);
}

- (void)togglePlayStateForItemWithIdentifier:(id)a3
{
  v3 = [(SUUIMediaPlayerInterface *)self playerForItemWithIdentifier:a3];
  if (v3)
  {
    v8 = v3;
    v4 = [v3 player];
    v5 = [v4 isPlaying];

    v6 = [v8 player];
    v7 = v6;
    if (v5)
    {
      [v6 pause];
    }

    else
    {
      [v6 play];
    }

    v3 = v8;
  }
}

- (void)_bufferingStateChangedNotification:(id)a3
{
  v4 = a3;
  v5 = SUUIMediaPlayerFramework();
  v6 = *SUUIWeakLinkedSymbolForString("MPAVControllerNewStateParameter", v5);
  v7 = [v4 userInfo];
  v8 = [v7 objectForKey:v6];

  v9 = [v8 unsignedIntegerValue];
  v10 = [(SUUIMediaPlayerInterface *)self _playerForNotification:v4];

  [(SUUIMediaPlayerInterface *)self _updateBufferingState:v9 player:v10];
  [(SUUIMediaPlayerInterface *)self _notifyObserversOfItemStateChange];
}

- (void)_currentItemDurationAvailableNotification:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [a3 object];
  [(NSMapTable *)self->_players keyEnumerator];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMapTable *)self->_players objectForKey:*(*(&v14 + 1) + 8 * i), v14];
        v11 = v10;
        if (v10)
        {
          v12 = [v10 currentItem];

          if (v12 == v4)
          {
            v13 = [v11 playerItem];
            [(SUUIMediaPlayerInterface *)self _updateDurationForPlayerItem:v13 withMPAVItem:v4];

            [(SUUIMediaPlayerInterface *)self _notifyObserversOfItemStateChange];
            goto LABEL_12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (void)_notifiyObserversOfItemChange:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_observers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v5 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    observerQueue = self->_observerQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__SUUIMediaPlayerInterface__notifiyObserversOfItemChange___block_invoke;
    v13[3] = &unk_2798F5AF8;
    v14 = v5;
    v15 = v4;
    dispatch_async(observerQueue, v13);
  }
}

void __58__SUUIMediaPlayerInterface__notifiyObserversOfItemChange___block_invoke(uint64_t a1)
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

        [*(*(&v7 + 1) + 8 * v6++) mediaPlayer:0 itemStateChanged:{*(a1 + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_playerItemReady:(id)a3
{
  v4 = a3;
  v7 = [(SUUIMediaPlayerInterface *)self _playerForNotification:v4];
  v5 = [(SUUIMediaPlayerInterface *)self _itemFromNotification:v4];

  if (v5)
  {
    v6 = [v7 currentItem];

    if (v6 != v5)
    {
      [(SUUIMediaPlayerInterface *)self _itemDidChange:v7 incomingItem:v5];
    }
  }
}

- (void)_playbackErrorNotification:(id)a3
{
  [(SUUIMediaPlayerInterface *)self _cancelOnDeckItem];
  v4 = objc_opt_new();
  [v4 setPlayState:4];
  [(SUUIMediaPlayerInterface *)self _notifiyObserversOfItemChange:v4];
}

- (void)_playerItemDidChangeNotification:(id)a3
{
  v6 = [(SUUIMediaPlayerInterface *)self _playerForNotification:a3];
  v4 = [v6 player];
  v5 = [v4 currentItem];
  [(SUUIMediaPlayerInterface *)self _itemDidChange:v6 incomingItem:v5];
}

- (void)_playerItemWillChangeNotification:(id)a3
{
  v4 = a3;
  v9 = [(SUUIMediaPlayerInterface *)self _playerForNotification:v4];
  v5 = [(SUUIMediaPlayerInterface *)self _itemFromNotification:v4];

  v6 = SUUIMediaPlayerFramework();
  SUUIWeakLinkedClassForString(&cfstr_Mpplaceholdera.isa, v6);
  if (v5)
  {
    v7 = [v9 currentItem];
    if (v7 == v5)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        goto LABEL_6;
      }

      v7 = [v9 playerItem];
      [v7 setPlayState:5];
    }
  }

LABEL_6:
}

- (void)_playerRateDidChangeNotification:(id)a3
{
  v17 = [(SUUIMediaPlayerInterface *)self _playerForNotification:a3];
  v4 = [v17 player];
  v5 = [v4 currentItem];
  v6 = [v17 currentItem];

  if (v5 == v6)
  {
    v7 = [v17 currentItem];
    [(SUUIMediaPlayerInterface *)self _updateTimeValuesUsingItemTime:0 player:v17 item:v7];

    v8 = [v17 playerItem];
    v9 = [v8 playState];

    v10 = [v17 player];
    v11 = [v10 shouldDisplayAsPlaying];

    if (v11)
    {
      v9 = 2;
    }

    else
    {
      [(SUUIMediaPlayerInterface *)self _cancelOnDeckItem];
      v12 = [v17 player];
      v13 = [v12 state];

      if (v13 == 1)
      {
        v9 = 3;
      }

      else if (v13 == 7)
      {
        v9 = 4;
      }
    }

    v14 = [v17 playerItem];
    v15 = [v14 playState];

    if (v9 != v15)
    {
      v16 = [v17 playerItem];
      [v16 setPlayState:v9];

      [(SUUIMediaPlayerInterface *)self _notifyObserversOfItemStateChange];
    }
  }
}

- (id)_itemFromNotification:(id)a3
{
  v3 = a3;
  v4 = SUUIMediaPlayerFramework();
  v5 = *SUUIWeakLinkedSymbolForString("MPAVControllerItemParameter", v4);
  v6 = [v3 userInfo];

  v7 = [v6 objectForKey:v5];

  v8 = SUUIMediaPlayerFramework();
  SUUIWeakLinkedClassForString(&cfstr_Mpavitem.isa, v8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_playerForNotification:(id)a3
{
  v4 = [a3 object];
  v5 = SUUIMediaPlayerFramework();
  SUUIWeakLinkedClassForString(&cfstr_Mpavcontroller_7.isa, v5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v7 = [(NSMapTable *)self->_players objectForKey:v6];
    if (!v7)
    {
      v7 = objc_alloc_init(SUUIMediaPlayer);
      [(SUUIMediaPlayer *)v7 setPlayer:v6];
      [(NSMapTable *)self->_players setObject:v7 forKey:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_createPeriodicTimeObserverIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [v4 player];
  [v4 rate];
  v7 = v6;
  if (v6 > 0.00000011921)
  {
    v8 = [v4 periodicTimeObserver];

    if (!v8)
    {
      objc_initWeak(&location, self);
      objc_initWeak(&from, v4);
      v11 = 3221225472;
      v10 = MEMORY[0x277D85DD0];
      v12 = __64__SUUIMediaPlayerInterface__createPeriodicTimeObserverIfNeeded___block_invoke;
      v13 = &unk_2798FC448;
      objc_copyWeak(&v14, &location);
      objc_copyWeak(&v15, &from);
      v9 = [v5 addPeriodicTimeObserverForInterval:&v10 usingBlock:1.0 / v7];
      [v4 setPeriodicTimeObserver:{v9, v10, v11, v12, v13}];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&v14);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }
}

void __64__SUUIMediaPlayerInterface__createPeriodicTimeObserverIfNeeded___block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v4)
  {
    [WeakRetained _setCurrentTimeIfPossible:v4 player:a2];
  }
}

- (void)_destroyPeridicTimeObseverIfNeeded:(id)a3
{
  v6 = a3;
  v3 = [v6 periodicTimeObserver];

  if (v3)
  {
    v4 = [v6 player];
    v5 = [v6 periodicTimeObserver];
    [v4 removeTimeObserver:v5];

    [v6 setPeriodicTimeObserver:0];
  }
}

- (void)_notifyObserversOfItemStateChange
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = self->_observers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v3 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v10 = [(NSMapTable *)self->_players keyEnumerator];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        v14 = 0;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [(NSMapTable *)self->_players objectForKey:*(*(&v20 + 1) + 8 * v14)];
          if (v15)
          {
            observerQueue = self->_observerQueue;
            v17[0] = MEMORY[0x277D85DD0];
            v17[1] = 3221225472;
            v17[2] = __61__SUUIMediaPlayerInterface__notifyObserversOfItemStateChange__block_invoke;
            v17[3] = &unk_2798F5AF8;
            v18 = v3;
            v19 = v15;
            dispatch_async(observerQueue, v17);
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v12);
    }
  }
}

void __61__SUUIMediaPlayerInterface__notifyObserversOfItemStateChange__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = [*(a1 + 40) playerItem];
        if (v8)
        {
          [v7 mediaPlayer:*(a1 + 40) itemStateChanged:v8];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)_notifyFinishedItem:(id)a3
{
  [a3 setPlayState:5];

  [(SUUIMediaPlayerInterface *)self _notifyObserversOfItemStateChange];
}

- (void)_itemDidChange:(id)a3 incomingItem:(id)a4
{
  v28 = a3;
  v6 = a4;
  v7 = [v28 currentItem];
  v8 = v7;
  if (v7 != v6)
  {
    if (v7)
    {
      [(SUUIMediaPlayerInterface *)self _unregisterForNotificationsForCurrentItem:v7];
    }

    v9 = SUUIMediaPlayerFramework();
    SUUIWeakLinkedClassForString(&cfstr_Mpplaceholdera.isa, v9);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [v28 setCurrentItem:v6];
      SUUIMPUFoundationFramework();
      v10 = [v6 feeder];
      v11 = [v10 MPU_contentItemIdentifierCollection];

      v12 = [v6 MPU_contentItemIdentifierCollection];
      v13 = [v12 identifierForIdentifierType:1];
      v14 = [v13 longLongValue];

      if (!v14)
      {
        v15 = [v12 identifierForIdentifierType:8];
        v14 = [v15 longLongValue];
      }

      if ([v11 itemType] == 4)
      {
        v16 = [v11 identifierForIdentifierType:1];
        v17 = [v16 longLongValue];

        if (!v17)
        {
          v18 = [v11 identifierForIdentifierType:8];
          v17 = [v18 longLongValue];
        }
      }

      else
      {
        v17 = 0;
      }

      v19 = [v11 identifierForIdentifierType:3];
      v20 = [v11 identifierForIdentifierType:2];
      v21 = v20;
      if (!v14 && !v17 && !v19 && !v20)
      {
        v22 = 0;
LABEL_26:
        [(SUUIMediaPlayerInterface *)self _updateDurationForPlayerItem:v22 withMPAVItem:v6];
        if (v6)
        {
          [(SUUIMediaPlayerInterface *)self _updateTimeValuesUsingItemTime:1 player:v28 item:v6];
          [(SUUIMediaPlayerInterface *)self _registerForNotificationsForCurrentItem:v6];
        }

        goto LABEL_29;
      }

      v27 = v12;
      v22 = objc_alloc_init(SUUIMediaPlayerItemStatus);
      if (v14)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", v14];
        [(SUUIMediaPlayerItemStatus *)v22 setStoreID:v23];
        if (v17)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v23 = 0;
        if (v17)
        {
LABEL_18:
          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", v17];

          [(SUUIMediaPlayerItemStatus *)v22 setStoreAlbumID:v24];
          if (v14)
          {
            v25 = 1;
          }

          else
          {
            v25 = 2;
          }

          goto LABEL_24;
        }
      }

      if (!v21)
      {
        if (v19)
        {
          v26 = v19;

          v25 = 4;
          v23 = v26;
        }

        else
        {
          v25 = 0;
        }

        goto LABEL_25;
      }

      v24 = v21;

      v25 = 3;
LABEL_24:
      v23 = v24;
LABEL_25:
      [(SUUIMediaPlayerItemStatus *)v22 setItemType:v25];
      [(SUUIMediaPlayerItemStatus *)v22 setItemIdentifier:v23];
      [(SUUIMediaPlayerItemStatus *)v22 setPlayState:1];
      [v28 setPlayerItem:v22];

      v12 = v27;
      goto LABEL_26;
    }
  }

LABEL_29:
}

- (void)_registerForNotificationsForCurrentItem:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCAB98];
    v5 = a3;
    v7 = [v4 defaultCenter];
    v6 = SUUIMediaPlayerFramework();
    [v7 addObserver:self selector:sel__currentItemDurationAvailableNotification_ name:*SUUIWeakLinkedSymbolForString("MPAVItemDurationAvailableNotification" object:{v6), v5}];
  }
}

- (void)_setCurrentTimeIfPossible:(double)a3 player:(id)a4
{
  v8 = a4;
  v6 = [v8 playerItem];
  [v6 currentTime];
  if (v7 != a3)
  {
    [(SUUIMediaPlayerInterface *)self _updateItemForPlayer:v8 currentTime:a3];
    [(SUUIMediaPlayerInterface *)self _notifyObserversOfItemStateChange];
  }
}

- (void)_unregisterForNotificationsForCurrentItem:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCAB98];
    v5 = a3;
    v7 = [v4 defaultCenter];
    v6 = SUUIMediaPlayerFramework();
    [v7 removeObserver:self name:*SUUIWeakLinkedSymbolForString("MPAVItemDurationAvailableNotification" object:{v6), v5}];
  }
}

- (void)_updateBufferingState:(unint64_t)a3 player:(id)a4
{
  v4 = a3;
  v7 = [a4 playerItem];
  if ([v7 playState] != 5)
  {
    if ((v4 & 0xB) != 0)
    {
      [(SUUIMediaPlayerInterface *)self _cancelOnDeckItem];
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    if (v6 != [v7 playState])
    {
      [v7 setPlayState:v6];
    }
  }
}

- (void)_cancelOnDeckItem
{
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    dispatch_source_cancel(timeoutTimer);
    v4 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  onDeckItem = self->_onDeckItem;
  self->_onDeckItem = 0;
}

- (void)_onDeckTimedOut
{
  if (self->_onDeckItem)
  {
    v3 = objc_opt_new();
    [v3 setPlayState:4];
    [(SUUIMediaPlayerInterface *)self _notifiyObserversOfItemChange:v3];

    onDeckItem = self->_onDeckItem;
  }

  else
  {
    onDeckItem = 0;
  }

  self->_onDeckItem = 0;
}

- (void)_startOnDeckTimer
{
  objc_initWeak(&location, self);
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = v3;

  v5 = self->_timeoutTimer;
  v6 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v7 = self->_timeoutTimer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SUUIMediaPlayerInterface__startOnDeckTimer__block_invoke;
  v8[3] = &unk_2798F67A0;
  objc_copyWeak(&v9, &location);
  dispatch_source_set_event_handler(v7, v8);
  dispatch_resume(self->_timeoutTimer);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __45__SUUIMediaPlayerInterface__startOnDeckTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _onDeckTimedOut];
    WeakRetained = v2;
  }
}

- (void)_updateDurationForPlayerItem:(id)a3 withMPAVItem:(id)a4
{
  if (a3)
  {
    v5 = a4;
    v10 = a3;
    [v5 durationIfAvailable];
    v7 = v6;
    v8 = [v5 isAlwaysLive];

    [v10 setHideDuration:v8];
    v9 = 0.0;
    if (v7 >= 2.22044605e-16)
    {
      v9 = v7;
    }

    [v10 setDuration:v9];
  }
}

- (void)_updateItemForPlayer:(id)a3 currentTime:(double)a4
{
  v5 = [a3 playerItem];
  [v5 setCurrentTime:a4];
}

- (void)_updateTimeValuesUsingItemTime:(BOOL)a3 player:(id)a4 item:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  [v8 rate];
  v11 = v10;
  v12 = [v8 player];
  [v12 rate];
  v14 = v13;

  v15 = vabds_f32(v11, v14);
  HIDWORD(v16) = 872415232;
  if (v15 > 0.00000011921)
  {
    *&v16 = v14;
    [v8 setRate:v16];
  }

  [v9 currentTimeDisplayOverride];
  v18 = v17;
  if (v17 <= 2.22044605e-16)
  {
    if (!v6)
    {
      v20 = [v8 player];
      [v20 currentTime];
      goto LABEL_12;
    }

    v18 = 0.0;
    if ([v9 isAssetLoaded])
    {
      v19 = [v9 playerItem];
      v20 = v19;
      if (v19)
      {
        [v19 currentTime];
      }

      else
      {
        v25 = 0uLL;
        v26 = 0;
      }

      v22 = SUUICoreMediaFramework();
      v23 = SUUIWeakLinkedSymbolForString("CMTimeGetSeconds", v22);
      if (!v23)
      {
        goto LABEL_13;
      }

      v27 = v25;
      v28 = v26;
      v21 = v23(&v27);
LABEL_12:
      v18 = v21;
LABEL_13:
    }
  }

  [(SUUIMediaPlayerInterface *)self _setCurrentTimeIfPossible:v8 player:v18];
  if (v15 > 0.00000011921 || ([v8 periodicTimeObserver], v24 = objc_claimAutoreleasedReturnValue(), v24, !v24))
  {
    [(SUUIMediaPlayerInterface *)self _destroyPeridicTimeObseverIfNeeded:v8];
    [(SUUIMediaPlayerInterface *)self _createPeriodicTimeObserverIfNeeded:v8];
  }
}

@end