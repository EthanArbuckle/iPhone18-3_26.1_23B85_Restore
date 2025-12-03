@interface SUUIMediaPlayerInterface
+ (BOOL)identifierMatches:(id)matches item:(id)item;
+ (BOOL)isRadioItemIdentifier:(id)identifier;
+ (id)sharedInstance;
- (BOOL)identifierIsOnDeck:(id)deck;
- (BOOL)isItemWithIdentifierActive:(id)active;
- (SUUIMediaPlayerInterface)init;
- (id)_itemFromNotification:(id)notification;
- (id)_playerForNotification:(id)notification;
- (id)playerForItemWithIdentifier:(id)identifier;
- (void)_bufferingStateChangedNotification:(id)notification;
- (void)_cancelOnDeckItem;
- (void)_createPeriodicTimeObserverIfNeeded:(id)needed;
- (void)_currentItemDurationAvailableNotification:(id)notification;
- (void)_destroyPeridicTimeObseverIfNeeded:(id)needed;
- (void)_itemDidChange:(id)change incomingItem:(id)item;
- (void)_notifiyObserversOfItemChange:(id)change;
- (void)_notifyFinishedItem:(id)item;
- (void)_notifyObserversOfItemStateChange;
- (void)_onDeckTimedOut;
- (void)_playbackErrorNotification:(id)notification;
- (void)_playerItemDidChangeNotification:(id)notification;
- (void)_playerItemReady:(id)ready;
- (void)_playerItemWillChangeNotification:(id)notification;
- (void)_playerRateDidChangeNotification:(id)notification;
- (void)_registerForNotificationsForCurrentItem:(id)item;
- (void)_setCurrentTimeIfPossible:(double)possible player:(id)player;
- (void)_startOnDeckTimer;
- (void)_unregisterForNotificationsForCurrentItem:(id)item;
- (void)_updateBufferingState:(unint64_t)state player:(id)player;
- (void)_updateDurationForPlayerItem:(id)item withMPAVItem:(id)vItem;
- (void)_updateItemForPlayer:(id)player currentTime:(double)time;
- (void)_updateTimeValuesUsingItemTime:(BOOL)time player:(id)player item:(id)item;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)notifyWillChangeToItemWithItemIdentifer:(id)identifer;
- (void)removeObserver:(id)observer;
- (void)togglePlayStateForItemWithIdentifier:(id)identifier;
@end

@implementation SUUIMediaPlayerInterface

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SUUIMediaPlayerInterface_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = SUUIMediaPlayerFramework();
    v13 = *SUUIWeakLinkedSymbolForString("MPAVControllerItemChangedNotification", v12);
    [defaultCenter addObserver:v2 selector:sel__playerItemDidChangeNotification_ name:v13 object:0];
    v14 = SUUIMediaPlayerFramework();
    v15 = *SUUIWeakLinkedSymbolForString("MPAVControllerItemWillChangeNotification", v14);
    [defaultCenter addObserver:v2 selector:sel__playerItemWillChangeNotification_ name:v15 object:0];
    v16 = SUUIMediaPlayerFramework();
    v17 = *SUUIWeakLinkedSymbolForString("MPAVControllerItemReadyToPlayNotification", v16);
    [defaultCenter addObserver:v2 selector:sel__playerItemReady_ name:v17 object:0];
    v18 = SUUIMediaPlayerFramework();
    v19 = *SUUIWeakLinkedSymbolForString("MPAVControllerRateDidChangeNotification", v18);
    [defaultCenter addObserver:v2 selector:sel__playerRateDidChangeNotification_ name:v19 object:0];
    v20 = SUUIMediaPlayerFramework();
    v21 = *SUUIWeakLinkedSymbolForString("MPAVControllerBufferingStateChangedNotification", v20);
    [defaultCenter addObserver:v2 selector:sel__bufferingStateChangedNotification_ name:v21 object:0];
    v22 = SUUIMediaPlayerFramework();
    [defaultCenter addObserver:v2 selector:sel__playbackErrorNotification_ name:*SUUIWeakLinkedSymbolForString("MPAVControllerPlaybackErrorNotification" object:{v22), 0}];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = SUUIMediaPlayerFramework();
  v5 = *SUUIWeakLinkedSymbolForString("MPAVControllerItemChangedNotification", v4);
  [defaultCenter removeObserver:self name:v5 object:0];
  v6 = SUUIMediaPlayerFramework();
  v7 = *SUUIWeakLinkedSymbolForString("MPAVControllerItemWillChangeNotification", v6);
  [defaultCenter removeObserver:self name:v7 object:0];
  v8 = SUUIMediaPlayerFramework();
  v9 = *SUUIWeakLinkedSymbolForString("MPAVControllerItemReadyToPlayNotification", v8);
  [defaultCenter removeObserver:self name:v9 object:0];
  v10 = SUUIMediaPlayerFramework();
  v11 = *SUUIWeakLinkedSymbolForString("MPAVControllerRateDidChangeNotification", v10);
  [defaultCenter removeObserver:self name:v11 object:0];
  v12 = SUUIMediaPlayerFramework();
  v13 = *SUUIWeakLinkedSymbolForString("MPAVControllerBufferingStateChangedNotification", v12);
  [defaultCenter removeObserver:self name:v13 object:0];
  v14 = SUUIMediaPlayerFramework();
  [defaultCenter removeObserver:self name:*SUUIWeakLinkedSymbolForString("MPAVControllerPlaybackErrorNotification" object:{v14), 0}];

  v15.receiver = self;
  v15.super_class = SUUIMediaPlayerInterface;
  [(SUUIMediaPlayerInterface *)&v15 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SUUIMediaPlayerInterface_addObserver___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
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

- (BOOL)isItemWithIdentifierActive:(id)active
{
  v21 = *MEMORY[0x277D85DE8];
  activeCopy = active;
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
        playerItem = [v10 playerItem];
        player = [v10 player];
        currentItem = [player currentItem];

        if (currentItem && [SUUIMediaPlayerInterface identifierMatches:activeCopy item:playerItem])
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

+ (BOOL)identifierMatches:(id)matches item:(id)item
{
  matchesCopy = matches;
  itemCopy = item;
  v9 = itemCopy;
  if (matchesCopy)
  {
    storeID = [itemCopy storeID];
    if (storeID)
    {
      storeID2 = [v9 storeID];
      if ([storeID2 isEqualToString:matchesCopy])
      {
        v11 = 1;
        goto LABEL_13;
      }
    }

    storeAlbumID = [v9 storeAlbumID];
    if (storeAlbumID && ([v9 storeAlbumID], v5 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v5, "isEqualToString:", matchesCopy) & 1) != 0))
    {
      v11 = 1;
    }

    else
    {
      itemIdentifier = [v9 itemIdentifier];
      if (itemIdentifier)
      {
        v14 = itemIdentifier;
        itemIdentifier2 = [v9 itemIdentifier];
        v11 = [itemIdentifier2 isEqualToString:matchesCopy];

        if (!storeAlbumID)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v11 = 0;
        if (!storeAlbumID)
        {
LABEL_12:
          if (!storeID)
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

+ (BOOL)isRadioItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (identifierCopy)
  {
    if ([identifierCopy hasPrefix:@"ra."])
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

- (BOOL)identifierIsOnDeck:(id)deck
{
  deckCopy = deck;
  v8 = 0;
  if (deckCopy)
  {
    onDeckItem = self->_onDeckItem;
    if (onDeckItem)
    {
      itemIdentifier = [(SUUIMediaPlayerItemStatus *)onDeckItem itemIdentifier];
      v7 = [itemIdentifier isEqualToString:deckCopy];

      if (v7)
      {
        v8 = 1;
      }
    }
  }

  return v8;
}

- (void)notifyWillChangeToItemWithItemIdentifer:(id)identifer
{
  v23 = *MEMORY[0x277D85DE8];
  identiferCopy = identifer;
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
        currentItem = [v10 currentItem];
        playerItem = [v10 playerItem];
        if (playerItem && [SUUIMediaPlayerInterface identifierMatches:identiferCopy item:playerItem])
        {

          goto LABEL_18;
        }

        if (currentItem)
        {
          [(SUUIMediaPlayerInterface *)self _unregisterForNotificationsForCurrentItem:currentItem];
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

  itemIdentifier = [(SUUIMediaPlayerItemStatus *)onDeckItem itemIdentifier];
  v15 = [itemIdentifier isEqualToString:identiferCopy];

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

    [(SUUIMediaPlayerItemStatus *)self->_onDeckItem setItemIdentifier:identiferCopy];
    [(SUUIMediaPlayerItemStatus *)self->_onDeckItem setPlayState:1];
    [(SUUIMediaPlayerInterface *)self _notifiyObserversOfItemChange:self->_onDeckItem];
    [(SUUIMediaPlayerInterface *)self _startOnDeckTimer];
  }

LABEL_18:
}

- (id)playerForItemWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
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
        playerItem = [v10 playerItem];
        player = [v10 player];
        currentItem = [player currentItem];

        if (currentItem && [SUUIMediaPlayerInterface identifierMatches:identifierCopy item:playerItem])
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

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SUUIMediaPlayerInterface_removeObserver___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(accessQueue, v7);
}

- (void)togglePlayStateForItemWithIdentifier:(id)identifier
{
  v3 = [(SUUIMediaPlayerInterface *)self playerForItemWithIdentifier:identifier];
  if (v3)
  {
    v8 = v3;
    player = [v3 player];
    isPlaying = [player isPlaying];

    player2 = [v8 player];
    v7 = player2;
    if (isPlaying)
    {
      [player2 pause];
    }

    else
    {
      [player2 play];
    }

    v3 = v8;
  }
}

- (void)_bufferingStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = SUUIMediaPlayerFramework();
  v6 = *SUUIWeakLinkedSymbolForString("MPAVControllerNewStateParameter", v5);
  userInfo = [notificationCopy userInfo];
  v8 = [userInfo objectForKey:v6];

  unsignedIntegerValue = [v8 unsignedIntegerValue];
  v10 = [(SUUIMediaPlayerInterface *)self _playerForNotification:notificationCopy];

  [(SUUIMediaPlayerInterface *)self _updateBufferingState:unsignedIntegerValue player:v10];
  [(SUUIMediaPlayerInterface *)self _notifyObserversOfItemStateChange];
}

- (void)_currentItemDurationAvailableNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  object = [notification object];
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
          currentItem = [v10 currentItem];

          if (currentItem == object)
          {
            playerItem = [v11 playerItem];
            [(SUUIMediaPlayerInterface *)self _updateDurationForPlayerItem:playerItem withMPAVItem:object];

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

- (void)_notifiyObserversOfItemChange:(id)change
{
  v21 = *MEMORY[0x277D85DE8];
  changeCopy = change;
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
    v15 = changeCopy;
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

- (void)_playerItemReady:(id)ready
{
  readyCopy = ready;
  v7 = [(SUUIMediaPlayerInterface *)self _playerForNotification:readyCopy];
  v5 = [(SUUIMediaPlayerInterface *)self _itemFromNotification:readyCopy];

  if (v5)
  {
    currentItem = [v7 currentItem];

    if (currentItem != v5)
    {
      [(SUUIMediaPlayerInterface *)self _itemDidChange:v7 incomingItem:v5];
    }
  }
}

- (void)_playbackErrorNotification:(id)notification
{
  [(SUUIMediaPlayerInterface *)self _cancelOnDeckItem];
  v4 = objc_opt_new();
  [v4 setPlayState:4];
  [(SUUIMediaPlayerInterface *)self _notifiyObserversOfItemChange:v4];
}

- (void)_playerItemDidChangeNotification:(id)notification
{
  v6 = [(SUUIMediaPlayerInterface *)self _playerForNotification:notification];
  player = [v6 player];
  currentItem = [player currentItem];
  [(SUUIMediaPlayerInterface *)self _itemDidChange:v6 incomingItem:currentItem];
}

- (void)_playerItemWillChangeNotification:(id)notification
{
  notificationCopy = notification;
  v9 = [(SUUIMediaPlayerInterface *)self _playerForNotification:notificationCopy];
  v5 = [(SUUIMediaPlayerInterface *)self _itemFromNotification:notificationCopy];

  v6 = SUUIMediaPlayerFramework();
  SUUIWeakLinkedClassForString(&cfstr_Mpplaceholdera.isa, v6);
  if (v5)
  {
    currentItem = [v9 currentItem];
    if (currentItem == v5)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        goto LABEL_6;
      }

      currentItem = [v9 playerItem];
      [currentItem setPlayState:5];
    }
  }

LABEL_6:
}

- (void)_playerRateDidChangeNotification:(id)notification
{
  v17 = [(SUUIMediaPlayerInterface *)self _playerForNotification:notification];
  player = [v17 player];
  currentItem = [player currentItem];
  currentItem2 = [v17 currentItem];

  if (currentItem == currentItem2)
  {
    currentItem3 = [v17 currentItem];
    [(SUUIMediaPlayerInterface *)self _updateTimeValuesUsingItemTime:0 player:v17 item:currentItem3];

    playerItem = [v17 playerItem];
    playState = [playerItem playState];

    player2 = [v17 player];
    shouldDisplayAsPlaying = [player2 shouldDisplayAsPlaying];

    if (shouldDisplayAsPlaying)
    {
      playState = 2;
    }

    else
    {
      [(SUUIMediaPlayerInterface *)self _cancelOnDeckItem];
      player3 = [v17 player];
      state = [player3 state];

      if (state == 1)
      {
        playState = 3;
      }

      else if (state == 7)
      {
        playState = 4;
      }
    }

    playerItem2 = [v17 playerItem];
    playState2 = [playerItem2 playState];

    if (playState != playState2)
    {
      playerItem3 = [v17 playerItem];
      [playerItem3 setPlayState:playState];

      [(SUUIMediaPlayerInterface *)self _notifyObserversOfItemStateChange];
    }
  }
}

- (id)_itemFromNotification:(id)notification
{
  notificationCopy = notification;
  v4 = SUUIMediaPlayerFramework();
  v5 = *SUUIWeakLinkedSymbolForString("MPAVControllerItemParameter", v4);
  userInfo = [notificationCopy userInfo];

  v7 = [userInfo objectForKey:v5];

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

- (id)_playerForNotification:(id)notification
{
  object = [notification object];
  v5 = SUUIMediaPlayerFramework();
  SUUIWeakLinkedClassForString(&cfstr_Mpavcontroller_7.isa, v5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
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

- (void)_createPeriodicTimeObserverIfNeeded:(id)needed
{
  neededCopy = needed;
  player = [neededCopy player];
  [neededCopy rate];
  v7 = v6;
  if (v6 > 0.00000011921)
  {
    periodicTimeObserver = [neededCopy periodicTimeObserver];

    if (!periodicTimeObserver)
    {
      objc_initWeak(&location, self);
      objc_initWeak(&from, neededCopy);
      v11 = 3221225472;
      v10 = MEMORY[0x277D85DD0];
      v12 = __64__SUUIMediaPlayerInterface__createPeriodicTimeObserverIfNeeded___block_invoke;
      v13 = &unk_2798FC448;
      objc_copyWeak(&v14, &location);
      objc_copyWeak(&v15, &from);
      v9 = [player addPeriodicTimeObserverForInterval:&v10 usingBlock:1.0 / v7];
      [neededCopy setPeriodicTimeObserver:{v9, v10, v11, v12, v13}];

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

- (void)_destroyPeridicTimeObseverIfNeeded:(id)needed
{
  neededCopy = needed;
  periodicTimeObserver = [neededCopy periodicTimeObserver];

  if (periodicTimeObserver)
  {
    player = [neededCopy player];
    periodicTimeObserver2 = [neededCopy periodicTimeObserver];
    [player removeTimeObserver:periodicTimeObserver2];

    [neededCopy setPeriodicTimeObserver:0];
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
    keyEnumerator = [(NSMapTable *)self->_players keyEnumerator];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = [keyEnumerator countByEnumeratingWithState:&v20 objects:v28 count:16];
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
            objc_enumerationMutation(keyEnumerator);
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
        v12 = [keyEnumerator countByEnumeratingWithState:&v20 objects:v28 count:16];
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

- (void)_notifyFinishedItem:(id)item
{
  [item setPlayState:5];

  [(SUUIMediaPlayerInterface *)self _notifyObserversOfItemStateChange];
}

- (void)_itemDidChange:(id)change incomingItem:(id)item
{
  changeCopy = change;
  itemCopy = item;
  currentItem = [changeCopy currentItem];
  v8 = currentItem;
  if (currentItem != itemCopy)
  {
    if (currentItem)
    {
      [(SUUIMediaPlayerInterface *)self _unregisterForNotificationsForCurrentItem:currentItem];
    }

    v9 = SUUIMediaPlayerFramework();
    SUUIWeakLinkedClassForString(&cfstr_Mpplaceholdera.isa, v9);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [changeCopy setCurrentItem:itemCopy];
      SUUIMPUFoundationFramework();
      feeder = [itemCopy feeder];
      mPU_contentItemIdentifierCollection = [feeder MPU_contentItemIdentifierCollection];

      mPU_contentItemIdentifierCollection2 = [itemCopy MPU_contentItemIdentifierCollection];
      v13 = [mPU_contentItemIdentifierCollection2 identifierForIdentifierType:1];
      longLongValue = [v13 longLongValue];

      if (!longLongValue)
      {
        v15 = [mPU_contentItemIdentifierCollection2 identifierForIdentifierType:8];
        longLongValue = [v15 longLongValue];
      }

      if ([mPU_contentItemIdentifierCollection itemType] == 4)
      {
        v16 = [mPU_contentItemIdentifierCollection identifierForIdentifierType:1];
        longLongValue2 = [v16 longLongValue];

        if (!longLongValue2)
        {
          v18 = [mPU_contentItemIdentifierCollection identifierForIdentifierType:8];
          longLongValue2 = [v18 longLongValue];
        }
      }

      else
      {
        longLongValue2 = 0;
      }

      v19 = [mPU_contentItemIdentifierCollection identifierForIdentifierType:3];
      v20 = [mPU_contentItemIdentifierCollection identifierForIdentifierType:2];
      v21 = v20;
      if (!longLongValue && !longLongValue2 && !v19 && !v20)
      {
        v22 = 0;
LABEL_26:
        [(SUUIMediaPlayerInterface *)self _updateDurationForPlayerItem:v22 withMPAVItem:itemCopy];
        if (itemCopy)
        {
          [(SUUIMediaPlayerInterface *)self _updateTimeValuesUsingItemTime:1 player:changeCopy item:itemCopy];
          [(SUUIMediaPlayerInterface *)self _registerForNotificationsForCurrentItem:itemCopy];
        }

        goto LABEL_29;
      }

      v27 = mPU_contentItemIdentifierCollection2;
      v22 = objc_alloc_init(SUUIMediaPlayerItemStatus);
      if (longLongValue)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", longLongValue];
        [(SUUIMediaPlayerItemStatus *)v22 setStoreID:v23];
        if (longLongValue2)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v23 = 0;
        if (longLongValue2)
        {
LABEL_18:
          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", longLongValue2];

          [(SUUIMediaPlayerItemStatus *)v22 setStoreAlbumID:v24];
          if (longLongValue)
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
      [changeCopy setPlayerItem:v22];

      mPU_contentItemIdentifierCollection2 = v27;
      goto LABEL_26;
    }
  }

LABEL_29:
}

- (void)_registerForNotificationsForCurrentItem:(id)item
{
  if (item)
  {
    v4 = MEMORY[0x277CCAB98];
    itemCopy = item;
    defaultCenter = [v4 defaultCenter];
    v6 = SUUIMediaPlayerFramework();
    [defaultCenter addObserver:self selector:sel__currentItemDurationAvailableNotification_ name:*SUUIWeakLinkedSymbolForString("MPAVItemDurationAvailableNotification" object:{v6), itemCopy}];
  }
}

- (void)_setCurrentTimeIfPossible:(double)possible player:(id)player
{
  playerCopy = player;
  playerItem = [playerCopy playerItem];
  [playerItem currentTime];
  if (v7 != possible)
  {
    [(SUUIMediaPlayerInterface *)self _updateItemForPlayer:playerCopy currentTime:possible];
    [(SUUIMediaPlayerInterface *)self _notifyObserversOfItemStateChange];
  }
}

- (void)_unregisterForNotificationsForCurrentItem:(id)item
{
  if (item)
  {
    v4 = MEMORY[0x277CCAB98];
    itemCopy = item;
    defaultCenter = [v4 defaultCenter];
    v6 = SUUIMediaPlayerFramework();
    [defaultCenter removeObserver:self name:*SUUIWeakLinkedSymbolForString("MPAVItemDurationAvailableNotification" object:{v6), itemCopy}];
  }
}

- (void)_updateBufferingState:(unint64_t)state player:(id)player
{
  stateCopy = state;
  playerItem = [player playerItem];
  if ([playerItem playState] != 5)
  {
    if ((stateCopy & 0xB) != 0)
    {
      [(SUUIMediaPlayerInterface *)self _cancelOnDeckItem];
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    if (v6 != [playerItem playState])
    {
      [playerItem setPlayState:v6];
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

- (void)_updateDurationForPlayerItem:(id)item withMPAVItem:(id)vItem
{
  if (item)
  {
    vItemCopy = vItem;
    itemCopy = item;
    [vItemCopy durationIfAvailable];
    v7 = v6;
    isAlwaysLive = [vItemCopy isAlwaysLive];

    [itemCopy setHideDuration:isAlwaysLive];
    v9 = 0.0;
    if (v7 >= 2.22044605e-16)
    {
      v9 = v7;
    }

    [itemCopy setDuration:v9];
  }
}

- (void)_updateItemForPlayer:(id)player currentTime:(double)time
{
  playerItem = [player playerItem];
  [playerItem setCurrentTime:time];
}

- (void)_updateTimeValuesUsingItemTime:(BOOL)time player:(id)player item:(id)item
{
  timeCopy = time;
  playerCopy = player;
  itemCopy = item;
  [playerCopy rate];
  v11 = v10;
  player = [playerCopy player];
  [player rate];
  v14 = v13;

  v15 = vabds_f32(v11, v14);
  HIDWORD(v16) = 872415232;
  if (v15 > 0.00000011921)
  {
    *&v16 = v14;
    [playerCopy setRate:v16];
  }

  [itemCopy currentTimeDisplayOverride];
  v18 = v17;
  if (v17 <= 2.22044605e-16)
  {
    if (!timeCopy)
    {
      player2 = [playerCopy player];
      [player2 currentTime];
      goto LABEL_12;
    }

    v18 = 0.0;
    if ([itemCopy isAssetLoaded])
    {
      playerItem = [itemCopy playerItem];
      player2 = playerItem;
      if (playerItem)
      {
        [playerItem currentTime];
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

  [(SUUIMediaPlayerInterface *)self _setCurrentTimeIfPossible:playerCopy player:v18];
  if (v15 > 0.00000011921 || ([playerCopy periodicTimeObserver], v24 = objc_claimAutoreleasedReturnValue(), v24, !v24))
  {
    [(SUUIMediaPlayerInterface *)self _destroyPeridicTimeObseverIfNeeded:playerCopy];
    [(SUUIMediaPlayerInterface *)self _createPeriodicTimeObserverIfNeeded:playerCopy];
  }
}

@end