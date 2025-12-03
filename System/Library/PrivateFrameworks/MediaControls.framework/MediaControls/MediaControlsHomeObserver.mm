@interface MediaControlsHomeObserver
- (BOOL)hasAccessoryWithUID:(id)d;
- (MediaControlsHomeObserver)init;
- (MediaControlsHomeObserverDelegate)delegate;
- (void)_notifyDelegate;
- (void)_updateUIDs;
- (void)beginObserving;
- (void)home:(id)home didAddAccessory:(id)accessory;
- (void)home:(id)home didRemoveAccessory:(id)accessory;
- (void)homeManager:(id)manager didAddHome:(id)home;
- (void)homeManager:(id)manager didRemoveHome:(id)home;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)stopObserving;
@end

@implementation MediaControlsHomeObserver

- (MediaControlsHomeObserver)init
{
  v20.receiver = self;
  v20.super_class = MediaControlsHomeObserver;
  v2 = [(MediaControlsHomeObserver *)&v20 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(MediaControlsHomeObserver *)v2 description];
    uTF8String = [v4 UTF8String];

    v6 = dispatch_queue_create(uTF8String, 0);
    serialQueue = v3->_serialQueue;
    v3->_serialQueue = v6;

    v8 = dispatch_get_global_queue(0, 0);
    notifyQueue = v3->_notifyQueue;
    v3->_notifyQueue = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    knownUIDs = v3->_knownUIDs;
    v3->_knownUIDs = v10;

    defaultPrivateConfiguration = [MEMORY[0x1E696CC08] defaultPrivateConfiguration];
    [defaultPrivateConfiguration setOptions:1344];
    [defaultPrivateConfiguration setDiscretionary:1];
    v13 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [v13 setUnderlyingQueue:v3->_serialQueue];
    [v13 setQualityOfService:-1];
    [defaultPrivateConfiguration setDelegateQueue:v13];
    [defaultPrivateConfiguration setAdaptive:1];
    v14 = [objc_alloc(MEMORY[0x1E696CBA0]) initWithHomeMangerConfiguration:defaultPrivateConfiguration];
    homeManager = v3->_homeManager;
    v3->_homeManager = v14;

    v16 = v3->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__MediaControlsHomeObserver_init__block_invoke;
    block[3] = &unk_1E7663898;
    v19 = v3;
    dispatch_async(v16, block);
  }

  return v3;
}

- (void)beginObserving
{
  v13 = *MEMORY[0x1E69E9840];
  [(HMHomeManager *)self->_homeManager setDelegate:self];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  homes = [(HMHomeManager *)self->_homeManager homes];
  v4 = [homes countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(homes);
        }

        [*(*(&v8 + 1) + 8 * v7++) setDelegate:self];
      }

      while (v5 != v7);
      v5 = [homes countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)stopObserving
{
  v13 = *MEMORY[0x1E69E9840];
  [(HMHomeManager *)self->_homeManager setDelegate:0];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  homes = [(HMHomeManager *)self->_homeManager homes];
  v4 = [homes countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(homes);
        }

        [*(*(&v8 + 1) + 8 * v7++) setDelegate:0];
      }

      while (v5 != v7);
      v5 = [homes countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (BOOL)hasAccessoryWithUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__MediaControlsHomeObserver_hasAccessoryWithUID___block_invoke;
  block[3] = &unk_1E7664168;
  v9 = dCopy;
  v10 = &v11;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(serialQueue, block);
  LOBYTE(serialQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return serialQueue;
}

uint64_t __49__MediaControlsHomeObserver_hasAccessoryWithUID___block_invoke(void *a1)
{
  result = [*(a1[4] + 16) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)_updateUIDs
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(HMHomeManager *)self->_homeManager homes];
  v3 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      v6 = 0;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * v6);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        accessories = [v7 accessories];
        v9 = [accessories countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v17;
          do
          {
            v12 = 0;
            do
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(accessories);
              }

              mediaProfile = [*(*(&v16 + 1) + 8 * v12) mediaProfile];
              routeUID = [mediaProfile routeUID];

              if ([routeUID length])
              {
                [(NSMutableSet *)self->_knownUIDs addObject:routeUID];
              }

              ++v12;
            }

            while (v10 != v12);
            v10 = [accessories countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v4);
  }

  [(MediaControlsHomeObserver *)self _notifyDelegate];
}

- (void)_notifyDelegate
{
  delegate = [(MediaControlsHomeObserver *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    notifyQueue = self->_notifyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__MediaControlsHomeObserver__notifyDelegate__block_invoke;
    block[3] = &unk_1E7663898;
    block[4] = self;
    dispatch_async(notifyQueue, block);
  }
}

void __44__MediaControlsHomeObserver__notifyDelegate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 homeObserverDidUpdateKnownUIDs:*(a1 + 32)];
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  homes = [homes homes];
  v5 = [homes countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(homes);
        }

        [*(*(&v9 + 1) + 8 * v8++) setDelegate:self];
      }

      while (v6 != v8);
      v6 = [homes countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(MediaControlsHomeObserver *)self _updateUIDs];
}

- (void)homeManager:(id)manager didAddHome:(id)home
{
  v18 = *MEMORY[0x1E69E9840];
  homeCopy = home;
  [homeCopy setDelegate:self];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  accessories = [homeCopy accessories];
  v7 = [accessories countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(accessories);
        }

        mediaProfile = [*(*(&v13 + 1) + 8 * v10) mediaProfile];
        routeUID = [mediaProfile routeUID];

        if ([routeUID length])
        {
          [(NSMutableSet *)self->_knownUIDs addObject:routeUID];
          [(MediaControlsHomeObserver *)self _notifyDelegate];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [accessories countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)homeManager:(id)manager didRemoveHome:(id)home
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  accessories = [home accessories];
  v6 = [accessories countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(accessories);
        }

        mediaProfile = [*(*(&v12 + 1) + 8 * v9) mediaProfile];
        routeUID = [mediaProfile routeUID];

        if ([routeUID length])
        {
          [(NSMutableSet *)self->_knownUIDs removeObject:routeUID];
          [(MediaControlsHomeObserver *)self _notifyDelegate];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [accessories countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)home:(id)home didAddAccessory:(id)accessory
{
  mediaProfile = [accessory mediaProfile];
  routeUID = [mediaProfile routeUID];

  if ([routeUID length])
  {
    [(NSMutableSet *)self->_knownUIDs addObject:routeUID];
    [(MediaControlsHomeObserver *)self _notifyDelegate];
  }
}

- (void)home:(id)home didRemoveAccessory:(id)accessory
{
  mediaProfile = [accessory mediaProfile];
  routeUID = [mediaProfile routeUID];

  if ([routeUID length])
  {
    [(NSMutableSet *)self->_knownUIDs removeObject:routeUID];
    [(MediaControlsHomeObserver *)self _notifyDelegate];
  }
}

- (MediaControlsHomeObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end