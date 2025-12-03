@interface COHomeKitAdapter
+ (COHomeKitAdapter)sharedInstance;
+ (void)setSharedInstance:(id)instance;
- (BOOL)hasOptedToHH2;
- (BOOL)isAlarmsCollectionSetting:(id)setting forAccessory:(id)accessory inHome:(id)home;
- (BOOL)isReady;
- (COHomeKitAdapter)initWithHomeManager:(id)manager MediaGroupsDaemon:(id)daemon;
- (HMHomeManager)homekit;
- (HMMediaSystem)currentMediaSystem;
- (id)accessoriesForSiriContextTargetReference:(id)reference;
- (id)accessoriesInMediaSystem:(id)system inHome:(id)home;
- (id)accessoriesInRoom:(id)room inHome:(id)home;
- (id)accessoriesInZone:(id)zone inHome:(id)home;
- (id)accessoryWithUniqueIdentifier:(id)identifier;
- (id)addAlarm:(id)alarm toAccessory:(id)accessory inHome:(id)home;
- (id)alarmsCollectionForAccessory:(id)accessory inHome:(id)home isMediaSystem:(BOOL *)system;
- (id)alarmsForAccessory:(id)accessory inHome:(id)home;
- (id)allAccessoriesForSiriContextTargetReference:(id)reference;
- (id)homeForAccessory:(id)accessory;
- (id)identifiersForAccessoriesAssociatedWithAccessory:(id)accessory inHome:(id)home;
- (id)mediaSystemForAccessory:(id)accessory inHome:(id)home;
- (id)registerMediaSystemUpdateHandler:(id)handler;
- (id)removeAlarm:(id)alarm fromAccessory:(id)accessory inHome:(id)home;
- (id)roomForAccessory:(id)accessory inHome:(id)home;
- (id)settingsForKeyPath:(id)path fromSettings:(id)settings;
- (id)settingsForKeyPath:(id)path onAccessory:(id)accessory;
- (id)settingsForKeyPath:(id)path onMediaObject:(id)object;
- (id)updateAlarm:(id)alarm onAccessory:(id)accessory inHome:(id)home;
- (id)zoneForAccessory:(id)accessory inHome:(id)home;
- (void)_addAudioDestinationControllerListenerForAccessory:(id)accessory home:(id)home;
- (void)_postUsersChangedNotificationForHome:(id)home;
- (void)_removeAudioDestinationControllerListenerForAccessory:(id)accessory home:(id)home;
- (void)_withLock:(id)lock;
- (void)audioDestinationControllerDidUpdateForAccessory:(id)accessory inHome:(id)home;
- (void)home:(id)home didAddAccessory:(id)accessory;
- (void)home:(id)home didAddMediaSystem:(id)system;
- (void)home:(id)home didAddRoom:(id)room;
- (void)home:(id)home didAddRoom:(id)room toZone:(id)zone;
- (void)home:(id)home didAddUser:(id)user;
- (void)home:(id)home didAddZone:(id)zone;
- (void)home:(id)home didRemoveAccessory:(id)accessory;
- (void)home:(id)home didRemoveMediaSystem:(id)system;
- (void)home:(id)home didRemoveRoom:(id)room;
- (void)home:(id)home didRemoveUser:(id)user;
- (void)home:(id)home didRemoveZone:(id)zone;
- (void)home:(id)home didUpdateRoom:(id)room forAccessory:(id)accessory;
- (void)homeManager:(id)manager didAddHome:(id)home;
- (void)homeManager:(id)manager didRemoveHome:(id)home;
- (void)homeManager:(id)manager didUpdateAuthorizationStatus:(unint64_t)status;
- (void)homeManager:(id)manager didUpdateStatus:(unint64_t)status;
- (void)homeManagerDidUpdateCurrentHome:(id)home;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)prewarm;
- (void)setCurrentMediaSystem:(id)system;
- (void)unregisterMediaSystemUpdateHandler:(id)handler;
@end

@implementation COHomeKitAdapter

- (COHomeKitAdapter)initWithHomeManager:(id)manager MediaGroupsDaemon:(id)daemon
{
  managerCopy = manager;
  daemonCopy = daemon;
  v22.receiver = self;
  v22.super_class = COHomeKitAdapter;
  v9 = [(COHomeKitAdapter *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_homekit, manager);
    v11 = objc_alloc_init(MEMORY[0x277CCA928]);
    condition = v10->_condition;
    v10->_condition = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mediaSystemUpdateHandlers = v10->_mediaSystemUpdateHandlers;
    v10->_mediaSystemUpdateHandlers = v13;

    objc_storeStrong(&v10->_mediaGroupsDaemon, daemon);
    v15 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    audioDestinationControllerListeners = v10->_audioDestinationControllerListeners;
    v10->_audioDestinationControllerListeners = v15;

    homekit = v10->_homekit;
    if (homekit)
    {
      v18 = homekit;
      if ([(HMHomeManager *)v18 authorizationStatus]== 1)
      {
        v19 = 1;
      }

      else
      {
        status = [(HMHomeManager *)v18 status];
        v19 = (status & 0x21) != 1 || (status & 0x10) != 0;
      }

      v10->_ready = v19;
      [(HMHomeManager *)v10->_homekit setDelegate:v10];
    }
  }

  return v10;
}

+ (COHomeKitAdapter)sharedInstance
{
  os_unfair_lock_lock(&_COHomeKitAdapterSharedInstanceLock);
  v3 = _COHomeKitAdapterSharedInstance;
  if (!v3)
  {
    v4 = objc_alloc_init(self);
    v5 = _COHomeKitAdapterSharedInstance;
    _COHomeKitAdapterSharedInstance = v4;

    v3 = v4;
  }

  os_unfair_lock_unlock(&_COHomeKitAdapterSharedInstanceLock);

  return v3;
}

+ (void)setSharedInstance:(id)instance
{
  instanceCopy = instance;
  os_unfair_lock_lock(&_COHomeKitAdapterSharedInstanceLock);
  v4 = _COHomeKitAdapterSharedInstance;
  _COHomeKitAdapterSharedInstance = instanceCopy;

  os_unfair_lock_unlock(&_COHomeKitAdapterSharedInstanceLock);
}

- (BOOL)isReady
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__COHomeKitAdapter_isReady__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COHomeKitAdapter *)self _withLock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)prewarm
{
  v8 = *MEMORY[0x277D85DE8];
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_1_3(&dword_244378000, v0, v1, "%p request to prewarm HomeKit from %@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasOptedToHH2
{
  homekit = [(COHomeKitAdapter *)self homekit];
  hasOptedToHH2 = [homekit hasOptedToHH2];

  return hasOptedToHH2;
}

- (HMHomeManager)homekit
{
  v20 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __27__COHomeKitAdapter_homekit__block_invoke;
  v11[3] = &unk_278E15950;
  v11[4] = self;
  v11[5] = &v12;
  [(COHomeKitAdapter *)self _withLock:v11];
  condition = [(COHomeKitAdapter *)self condition];
  [condition lock];
  if (!self->_ready)
  {
    *&v4 = 134217984;
    v10 = v4;
    while (1)
    {
      v5 = COCoreLogForCategory(7);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v10;
        selfCopy2 = self;
        _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p having to wait for HomeKit to come ready!", buf, 0xCu);
      }

      [condition wait];
      if (self->_ready)
      {
        v6 = COCoreLogForCategory(7);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v10;
          selfCopy2 = self;
          _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p is able to move forward again.", buf, 0xCu);
        }

        if (self->_ready)
        {
          break;
        }
      }
    }
  }

  [condition unlock];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __27__COHomeKitAdapter_homekit__block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CD1C60]) initWithOptions:225 cachePolicy:0];
    [v4 setDiscretionary:0];
    v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
    [v4 setDelegateQueue:v5];

    v6 = [objc_alloc(MEMORY[0x277CD1A90]) initWithConfiguration:v4];
    v7 = *(*v2 + 16);
    *(*v2 + 16) = v6;

    v8 = *(*v2 + 16);
    if ([v8 authorizationStatus] == 1)
    {
      v9 = 1;
    }

    else
    {
      v10 = [v8 status];
      v9 = (v10 & 0x21) != 1 || (v10 & 0x10) != 0;
    }

    *(*v2 + 12) = v9;
    [*(*v2 + 16) setDelegate:?];
    v11 = COCoreLogForCategory(7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __27__COHomeKitAdapter_homekit__block_invoke_cold_1(v2);
    }

    v3 = *(*v2 + 16);
  }

  v12 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v12, v3);
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMMediaSystem)currentMediaSystem
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__10;
  v9 = __Block_byref_object_dispose__10;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__COHomeKitAdapter_currentMediaSystem__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COHomeKitAdapter *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setCurrentMediaSystem:(id)system
{
  systemCopy = system;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__11;
  v15 = __Block_byref_object_dispose__12;
  v16 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__COHomeKitAdapter_setCurrentMediaSystem___block_invoke;
  v7[3] = &unk_278E15700;
  v5 = systemCopy;
  v8 = v5;
  selfCopy = self;
  v10 = &v11;
  [(COHomeKitAdapter *)self _withLock:v7];
  v6 = v12[5];
  if (v6)
  {
    (*(v6 + 16))();
  }

  _Block_object_dispose(&v11, 8);
}

void __42__COHomeKitAdapter_setCurrentMediaSystem___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2 == *(*(a1 + 40) + 24) || ([v2 isEqual:?] & 1) != 0)
  {
    goto LABEL_18;
  }

  objc_storeStrong((*(a1 + 40) + 24), *(a1 + 32));
  v3 = COCoreLogForCategory(7);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 134218242;
    v37 = v4;
    v38 = 2112;
    v39 = v5;
    _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_DEFAULT, "%p set current media system to %@", buf, 0x16u);
  }

  v6 = [*(a1 + 32) uniqueIdentifier];
  v7 = [*(a1 + 32) components];
  v8 = [v7 firstObject];
  v9 = [v8 mediaProfile];
  v10 = [v9 accessory];

  v11 = [*(*(a1 + 40) + 16) currentAccessory];
  LODWORD(v9) = [v10 isEqual:v11];

  v30 = v7;
  if (v9)
  {
    v12 = [v7 objectAtIndex:1];
    v13 = [v12 mediaProfile];
    v14 = [v13 accessory];

    v10 = v14;
  }

  v15 = [v10 uniqueIdentifier];
  v16 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v17 = [v16 dictionaryForKey:@"HomeKitContext"];
  v18 = [v17 objectForKey:@"MediaSystemCompanion"];
  if (!v18)
  {
    v19 = 0;
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_11:
    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    goto LABEL_12;
  }

  v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v18];
  if (!v17)
  {
    goto LABEL_11;
  }

LABEL_9:
  v20 = [v17 mutableCopy];
LABEL_12:
  v21 = v20;
  v31 = v6;
  if (*(a1 + 32))
  {
    v22 = [v6 UUIDString];
    [v21 setObject:v22 forKey:@"MediaSystem"];

    v23 = [v15 UUIDString];
    [v21 setObject:v23 forKey:@"MediaSystemCompanion"];
  }

  else
  {
    [v20 removeObjectForKey:@"MediaSystem"];
    [v21 removeObjectForKey:@"MediaSystemCompanion"];
  }

  [v16 setObject:v21 forKey:@"HomeKitContext"];
  v24 = [*(a1 + 40) mediaSystemUpdateHandlers];
  v25 = [v24 copy];

  if ([v25 count])
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __42__COHomeKitAdapter_setCurrentMediaSystem___block_invoke_25;
    v32[3] = &unk_278E15728;
    v33 = v25;
    v34 = v19;
    v35 = v15;
    v26 = MEMORY[0x245D5FF10](v32);
    v27 = *(*(a1 + 48) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;
  }

LABEL_18:
  v29 = *MEMORY[0x277D85DE8];
}

void __42__COHomeKitAdapter_setCurrentMediaSystem___block_invoke_25(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = *(a1 + 48);
        (*(*(*(&v10 + 1) + 8 * v6) + 16))(*(*(&v10 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)accessoryWithUniqueIdentifier:(id)identifier
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  homekit = [(COHomeKitAdapter *)self homekit];
  homes = [homekit homes];

  v22 = [homes countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v22)
  {
    v7 = *v28;
    v21 = *v28;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(homes);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        accessories = [v9 accessories];
        v11 = [accessories countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v24;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(accessories);
              }

              v15 = *(*(&v23 + 1) + 8 * j);
              uniqueIdentifier = [v15 uniqueIdentifier];
              v17 = [uniqueIdentifier isEqual:identifierCopy];

              if (v17)
              {
                v18 = v15;

                goto LABEL_20;
              }
            }

            v12 = [accessories countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v7 = v21;
      }

      v22 = [homes countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v22);
  }

  homes = COCoreLogForCategory(7);
  if (os_log_type_enabled(homes, OS_LOG_TYPE_ERROR))
  {
    [COHomeKitAdapter accessoryWithUniqueIdentifier:];
  }

  v18 = 0;
LABEL_20:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)identifiersForAccessoriesAssociatedWithAccessory:(id)accessory inHome:(id)home
{
  accessoryCopy = accessory;
  homeCopy = home;
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v9 = [(COHomeKitAdapter *)self mediaSystemForAccessory:accessoryCopy inHome:homeCopy];
  if (v9)
  {
    uniqueIdentifier = [(COHomeKitAdapter *)self accessoriesInMediaSystem:v9 inHome:homeCopy];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __76__COHomeKitAdapter_identifiersForAccessoriesAssociatedWithAccessory_inHome___block_invoke;
    v13[3] = &unk_278E16838;
    v14 = v8;
    [uniqueIdentifier enumerateObjectsUsingBlock:v13];
  }

  else
  {
    uniqueIdentifier = [accessoryCopy uniqueIdentifier];
    [v8 addObject:uniqueIdentifier];
  }

  allObjects = [v8 allObjects];

  return allObjects;
}

void __76__COHomeKitAdapter_identifiersForAccessoriesAssociatedWithAccessory_inHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueIdentifier];
  [v2 addObject:v3];
}

- (id)mediaSystemForAccessory:(id)accessory inHome:(id)home
{
  v40 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  homeCopy = home;
  homekit = [(COHomeKitAdapter *)self homekit];
  homes = [homekit homes];
  v10 = [homes containsObject:homeCopy];

  if (v10)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    mediaSystems = [homeCopy mediaSystems];
    v27 = [mediaSystems countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v27)
    {
      v12 = *v35;
      v29 = mediaSystems;
      v26 = *v35;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(mediaSystems);
          }

          v14 = *(*(&v34 + 1) + 8 * i);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v28 = v14;
          components = [v14 components];
          v16 = [components countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v31;
            while (2)
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v31 != v18)
                {
                  objc_enumerationMutation(components);
                }

                mediaProfile = [*(*(&v30 + 1) + 8 * j) mediaProfile];
                accessory = [mediaProfile accessory];
                v22 = [accessory isEqual:accessoryCopy];

                if (v22)
                {
                  v23 = v28;

                  mediaSystems = v29;
                  goto LABEL_21;
                }
              }

              v17 = [components countByEnumeratingWithState:&v30 objects:v38 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v12 = v26;
          mediaSystems = v29;
        }

        v23 = 0;
        v27 = [v29 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v27);
    }

    else
    {
      v23 = 0;
    }

LABEL_21:
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)accessoriesInMediaSystem:(id)system inHome:(id)home
{
  v28 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  homeCopy = home;
  v8 = objc_alloc_init(MEMORY[0x277CBEA60]);
  components = [systemCopy components];
  homekit = [(COHomeKitAdapter *)self homekit];
  homes = [homekit homes];
  v12 = [homes containsObject:homeCopy];

  if (v12)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = components;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          mediaProfile = [*(*(&v23 + 1) + 8 * i) mediaProfile];
          accessory = [mediaProfile accessory];

          if (accessory)
          {
            v20 = [v8 arrayByAddingObject:accessory];

            v8 = v20;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)homeForAccessory:(id)accessory
{
  v20 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  homekit = [(COHomeKitAdapter *)self homekit];
  homes = [homekit homes];

  v7 = [homes countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(homes);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        accessories = [v10 accessories];
        v12 = [accessories containsObject:accessoryCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [homes countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)zoneForAccessory:(id)accessory inHome:(id)home
{
  v22 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v7 = [(COHomeKitAdapter *)self roomForAccessory:accessory inHome:homeCopy];
  if (v7)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    zones = [homeCopy zones];
    v9 = [zones countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(zones);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          rooms = [v12 rooms];
          v14 = [rooms containsObject:v7];

          if (v14)
          {
            v9 = v12;
            goto LABEL_12;
          }
        }

        v9 = [zones countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v9 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)accessoriesInZone:(id)zone inHome:(id)home
{
  v23 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  homeCopy = home;
  v8 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  rooms = [zoneCopy rooms];
  v10 = [rooms countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      v14 = v8;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(rooms);
        }

        v15 = [(COHomeKitAdapter *)self accessoriesInRoom:*(*(&v18 + 1) + 8 * v13) inHome:homeCopy];
        v8 = [v14 arrayByAddingObjectsFromArray:v15];

        ++v13;
        v14 = v8;
      }

      while (v11 != v13);
      v11 = [rooms countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)roomForAccessory:(id)accessory inHome:(id)home
{
  v24 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  homeCopy = home;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  rooms = [homeCopy rooms];
  v9 = [rooms countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(rooms);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [(COHomeKitAdapter *)self accessoriesInRoom:v13 inHome:homeCopy];
        v15 = [v14 containsObject:accessoryCopy];

        if (v15)
        {
          v16 = v13;
          goto LABEL_11;
        }
      }

      v10 = [rooms countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)accessoriesInRoom:(id)room inHome:(id)home
{
  roomCopy = room;
  homeCopy = home;
  homekit = [(COHomeKitAdapter *)self homekit];
  homes = [homekit homes];
  if ([homes containsObject:homeCopy])
  {
    rooms = [homeCopy rooms];
    v11 = [rooms containsObject:roomCopy];

    if (v11)
    {
      accessories = [roomCopy accessories];
      goto LABEL_6;
    }
  }

  else
  {
  }

  accessories = MEMORY[0x277CBEBF8];
LABEL_6:

  return accessories;
}

- (id)settingsForKeyPath:(id)path fromSettings:(id)settings
{
  v50 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  settingsCopy = settings;
  if (settingsForKeyPath_fromSettings__onceToken != -1)
  {
    [COHomeKitAdapter settingsForKeyPath:fromSettings:];
  }

  v7 = [pathCopy componentsSeparatedByString:@"."];
  v38 = [v7 count];
  if (v38 && ([v7 firstObject], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", *MEMORY[0x277CCEDC0]), v8, v9))
  {
    rootGroup = [settingsCopy rootGroup];
    if (rootGroup)
    {
      v35 = settingsCopy;
      v36 = pathCopy;
      v11 = 1;
      v37 = v7;
      do
      {
        v12 = [v7 subarrayWithRange:{0, v11, v35}];
        v13 = [v12 componentsJoinedByString:@"."];

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        groups = [rootGroup groups];
        v15 = [groups countByEnumeratingWithState:&v43 objects:v49 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v44;
          while (2)
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v44 != v17)
              {
                objc_enumerationMutation(groups);
              }

              v19 = *(*(&v43 + 1) + 8 * i);
              keyPath = [v19 keyPath];
              v21 = [keyPath isEqualToString:v13];

              if (v21)
              {
                v22 = v19;

                rootGroup = v22;
                goto LABEL_17;
              }
            }

            v16 = [groups countByEnumeratingWithState:&v43 objects:v49 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }

LABEL_17:
          v7 = v37;
        }

        if (!rootGroup)
        {
          break;
        }

        ++v11;
      }

      while (v11 <= v38);
      if (rootGroup)
      {
        keyPath2 = [rootGroup keyPath];
        pathCopy = v36;
        v24 = [keyPath2 isEqualToString:v36];

        if (v24)
        {
          settings = [rootGroup settings];
        }

        else
        {
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          settings2 = [rootGroup settings];
          settings = [settings2 countByEnumeratingWithState:&v39 objects:v48 count:16];
          if (settings)
          {
            v27 = v7;
            v28 = *v40;
            while (2)
            {
              for (j = 0; j != settings; j = j + 1)
              {
                if (*v40 != v28)
                {
                  objc_enumerationMutation(settings2);
                }

                v30 = *(*(&v39 + 1) + 8 * j);
                keyPath3 = [v30 keyPath];
                v32 = [keyPath3 isEqualToString:v36];

                if (v32)
                {
                  v47 = v30;
                  settings = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
                  goto LABEL_36;
                }
              }

              settings = [settings2 countByEnumeratingWithState:&v39 objects:v48 count:16];
              if (settings)
              {
                continue;
              }

              break;
            }

LABEL_36:
            v7 = v27;
          }
        }
      }

      else
      {
        settings = 0;
        pathCopy = v36;
      }

      settingsCopy = v35;
    }

    else
    {
      settings = 0;
    }
  }

  else
  {
    settings = 0;
  }

  v33 = *MEMORY[0x277D85DE8];

  return settings;
}

void __52__COHomeKitAdapter_settingsForKeyPath_fromSettings___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v0 initWithObjects:{v1, v2, v3, v4, objc_opt_class(), 0}];
  [MEMORY[0x277CD1688] setItemValueClasses:v5 forKeyPath:@"root.mobileTimer.alarms"];
}

- (id)settingsForKeyPath:(id)path onAccessory:(id)accessory
{
  v20 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  accessoryCopy = accessory;
  settings = [accessoryCopy settings];
  v9 = [(COHomeKitAdapter *)self settingsForKeyPath:pathCopy fromSettings:settings];

  if (!v9)
  {
    v10 = COCoreLogForCategory(7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      uniqueIdentifier = [accessoryCopy uniqueIdentifier];
      v14 = 134218498;
      selfCopy = self;
      v16 = 2112;
      v17 = pathCopy;
      v18 = 2112;
      v19 = uniqueIdentifier;
      _os_log_error_impl(&dword_244378000, v10, OS_LOG_TYPE_ERROR, "%p was not able to retrieve %@ for accessory %@!", &v14, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)settingsForKeyPath:(id)path onMediaObject:(id)object
{
  v19 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  settings = [objectCopy settings];
  v9 = [(COHomeKitAdapter *)self settingsForKeyPath:pathCopy fromSettings:settings];

  if (!v9)
  {
    v10 = COCoreLogForCategory(7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 134218498;
      selfCopy = self;
      v15 = 2112;
      v16 = pathCopy;
      v17 = 2112;
      v18 = objectCopy;
      _os_log_error_impl(&dword_244378000, v10, OS_LOG_TYPE_ERROR, "%p was not able to retrieve %@ for %@!", &v13, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)registerMediaSystemUpdateHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__COHomeKitAdapter_registerMediaSystemUpdateHandler___block_invoke;
  v8[3] = &unk_278E16240;
  v8[4] = self;
  v9 = handlerCopy;
  v5 = handlerCopy;
  [(COHomeKitAdapter *)self _withLock:v8];
  v6 = MEMORY[0x245D5FF10](v5);

  return v6;
}

void __53__COHomeKitAdapter_registerMediaSystemUpdateHandler___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) mediaSystemUpdateHandlers];
  v2 = MEMORY[0x245D5FF10](*(a1 + 40));
  [v3 addObject:v2];
}

- (void)unregisterMediaSystemUpdateHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__COHomeKitAdapter_unregisterMediaSystemUpdateHandler___block_invoke;
  v6[3] = &unk_278E156B0;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(COHomeKitAdapter *)self _withLock:v6];
}

void __55__COHomeKitAdapter_unregisterMediaSystemUpdateHandler___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) mediaSystemUpdateHandlers];
  v2 = MEMORY[0x245D5FF10](*(a1 + 40));
  [v3 removeObject:v2];
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  v31 = *MEMORY[0x277D85DE8];
  homesCopy = homes;
  v5 = COCoreLogForCategory(7);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [COHomeKitAdapter homeManagerDidUpdateHomes:v5];
  }

  condition = [(COHomeKitAdapter *)self condition];
  [condition lock];
  if (!self->_ready)
  {
    v7 = COCoreLogForCategory(7);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p is marking HomeKit ready!", buf, 0xCu);
    }

    self->_ready = 1;
    [condition broadcast];
  }

  [condition unlock];
  currentAccessory = [(COHomeKitAdapter *)self currentAccessory];
  if (currentAccessory)
  {
    v9 = [(COHomeKitAdapter *)self homeForAccessory:currentAccessory];
    if (v9)
    {
      v10 = [(COHomeKitAdapter *)self mediaSystemForAccessory:currentAccessory inHome:v9];
    }

    else
    {
      v10 = 0;
    }

    [(COHomeKitAdapter *)self setCurrentMediaSystem:v10];
  }

  mediaGroupsDaemon = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [homesCopy homes];
  v12 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        [v16 setDelegate:self];
        if (mediaGroupsDaemon)
        {
          [mediaGroupsDaemon addHomeKitHome:v16];
        }

        accessories = [v16 accessories];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __46__COHomeKitAdapter_homeManagerDidUpdateHomes___block_invoke;
        v23[3] = &unk_278E16860;
        v23[4] = self;
        v23[5] = v16;
        [accessories enumerateObjectsUsingBlock:v23];
      }

      v13 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  v18 = [MEMORY[0x277CCAB88] notificationWithName:@"COHomeKitAdapterSignificantHomeChangeNotification" object:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotification:v18];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)homeManager:(id)manager didUpdateAuthorizationStatus:(unint64_t)status
{
  v15 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  condition = [(COHomeKitAdapter *)self condition];
  [condition lock];
  if (!self->_ready)
  {
    v7 = managerCopy;
    if ([v7 authorizationStatus] == 1 || (v8 = objc_msgSend(v7, "status"), (v8 & 0x21) != 1))
    {

      self->_ready = 1;
    }

    else
    {
      v9 = v8;
      v10 = (v8 >> 4) & 1;

      self->_ready = v10;
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }
    }

    v11 = COCoreLogForCategory(7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p not waiting for home updates.  Marking HomeKit ready now!", &v13, 0xCu);
    }

    [condition broadcast];
  }

LABEL_10:
  [condition unlock];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)homeManager:(id)manager didUpdateStatus:(unint64_t)status
{
  v15 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  condition = [(COHomeKitAdapter *)self condition];
  [condition lock];
  if (!self->_ready)
  {
    v7 = managerCopy;
    if ([v7 authorizationStatus] == 1 || (v8 = objc_msgSend(v7, "status"), (v8 & 0x21) != 1))
    {

      self->_ready = 1;
    }

    else
    {
      v9 = v8;
      v10 = (v8 >> 4) & 1;

      self->_ready = v10;
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }
    }

    v11 = COCoreLogForCategory(7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p got impatient for home updates.  Marking HomeKit ready now!", &v13, 0xCu);
    }

    [condition broadcast];
  }

LABEL_10:
  [condition unlock];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)homeManager:(id)manager didAddHome:(id)home
{
  v20 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v6 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v18 = 2112;
    v19 = homeCopy;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p Added Home %@", buf, 0x16u);
  }

  [homeCopy setDelegate:self];
  v7 = [MEMORY[0x277CCAB88] notificationWithName:@"COHomeKitAdapterSignificantHomeChangeNotification" object:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotification:v7];

  mediaGroupsDaemon = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  v10 = mediaGroupsDaemon;
  if (mediaGroupsDaemon)
  {
    [mediaGroupsDaemon addHomeKitHome:homeCopy];
  }

  accessories = [homeCopy accessories];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __43__COHomeKitAdapter_homeManager_didAddHome___block_invoke;
  v14[3] = &unk_278E16860;
  v14[4] = self;
  v15 = homeCopy;
  v12 = homeCopy;
  [accessories enumerateObjectsUsingBlock:v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)homeManagerDidUpdateCurrentHome:(id)home
{
  v11 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p Updated Current Home", &v9, 0xCu);
  }

  mediaGroupsDaemon = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  if (mediaGroupsDaemon)
  {
    currentHome = [homeCopy currentHome];
    if (currentHome)
    {
      [mediaGroupsDaemon addHomeKitHome:currentHome];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)homeManager:(id)manager didRemoveHome:(id)home
{
  v24 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v6 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v22 = 2112;
    v23 = homeCopy;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p Removed Home %@", buf, 0x16u);
  }

  v7 = [MEMORY[0x277CCAB88] notificationWithName:@"COHomeKitAdapterSignificantHomeChangeNotification" object:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotification:v7];

  accessories = [homeCopy accessories];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __46__COHomeKitAdapter_homeManager_didRemoveHome___block_invoke;
  v17 = &unk_278E16860;
  selfCopy2 = self;
  v10 = homeCopy;
  v19 = v10;
  [accessories enumerateObjectsUsingBlock:&v14];

  v11 = [(COHomeKitAdapter *)self mediaGroupsDaemon:v14];
  v12 = v11;
  if (v11)
  {
    [v11 removeHomeKitHome:v10];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)home didAddAccessory:(id)accessory
{
  v22 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  accessoryCopy = accessory;
  currentAccessory = [(COHomeKitAdapter *)self currentAccessory];
  uniqueIdentifier = [currentAccessory uniqueIdentifier];
  uniqueIdentifier2 = [accessoryCopy uniqueIdentifier];
  v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  if (v11)
  {
    v12 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134218242;
      selfCopy = self;
      v20 = 2112;
      v21 = accessoryCopy;
      _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%p Added Accessory %@", &v18, 0x16u);
    }

    v13 = [MEMORY[0x277CCAB88] notificationWithName:@"COHomeKitAdapterSignificantHomeChangeNotification" object:self];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotification:v13];
  }

  mediaGroupsDaemon = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  v16 = mediaGroupsDaemon;
  if (mediaGroupsDaemon)
  {
    [mediaGroupsDaemon addHomeKitAccessory:accessoryCopy fromHome:homeCopy];
  }

  [(COHomeKitAdapter *)self _addAudioDestinationControllerListenerForAccessory:accessoryCopy home:homeCopy];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)home didRemoveAccessory:(id)accessory
{
  v22 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  accessoryCopy = accessory;
  currentAccessory = [(COHomeKitAdapter *)self currentAccessory];
  uniqueIdentifier = [currentAccessory uniqueIdentifier];
  uniqueIdentifier2 = [accessoryCopy uniqueIdentifier];
  v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  if (v11)
  {
    v12 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134218242;
      selfCopy = self;
      v20 = 2112;
      v21 = accessoryCopy;
      _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%p Removed Accessory %@", &v18, 0x16u);
    }

    v13 = [MEMORY[0x277CCAB88] notificationWithName:@"COHomeKitAdapterSignificantHomeChangeNotification" object:self];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotification:v13];
  }

  mediaGroupsDaemon = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  v16 = mediaGroupsDaemon;
  if (mediaGroupsDaemon)
  {
    [mediaGroupsDaemon removeHomeKitAccessory:accessoryCopy fromHome:homeCopy];
  }

  [(COHomeKitAdapter *)self _removeAudioDestinationControllerListenerForAccessory:accessoryCopy home:homeCopy];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)home didUpdateRoom:(id)room forAccessory:(id)accessory
{
  v23 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  accessoryCopy = accessory;
  currentAccessory = [(COHomeKitAdapter *)self currentAccessory];
  uniqueIdentifier = [currentAccessory uniqueIdentifier];
  uniqueIdentifier2 = [accessoryCopy uniqueIdentifier];
  v12 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  if (v12)
  {
    v13 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218242;
      selfCopy = self;
      v21 = 2112;
      v22 = accessoryCopy;
      _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%p Updated Room for Accessory  %@", &v19, 0x16u);
    }

    v14 = [MEMORY[0x277CCAB88] notificationWithName:@"COHomeKitAdapterSignificantHomeChangeNotification" object:self];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotification:v14];
  }

  mediaGroupsDaemon = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  v17 = mediaGroupsDaemon;
  if (mediaGroupsDaemon)
  {
    [mediaGroupsDaemon addHomeKitHome:homeCopy];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)home didAddRoom:(id)room
{
  v21 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  roomCopy = room;
  currentAccessory = [(COHomeKitAdapter *)self currentAccessory];
  if (currentAccessory)
  {
    v9 = [(COHomeKitAdapter *)self roomForAccessory:currentAccessory inHome:homeCopy];
    v10 = [v9 isEqual:roomCopy];

    if (v10)
    {
      v11 = COCoreLogForCategory(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134218242;
        selfCopy = self;
        v19 = 2112;
        v20 = roomCopy;
        _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p Added Room  %@", &v17, 0x16u);
      }

      v12 = [MEMORY[0x277CCAB88] notificationWithName:@"COHomeKitAdapterSignificantHomeChangeNotification" object:self];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotification:v12];
    }
  }

  mediaGroupsDaemon = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  v15 = mediaGroupsDaemon;
  if (mediaGroupsDaemon)
  {
    [mediaGroupsDaemon addHomeKitRoom:roomCopy fromHome:homeCopy];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)home didRemoveRoom:(id)room
{
  v19 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  roomCopy = room;
  currentAccessory = [(COHomeKitAdapter *)self currentAccessory];
  if (currentAccessory)
  {
    v9 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134218242;
      selfCopy = self;
      v17 = 2112;
      v18 = roomCopy;
      _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%p Removed Room  %@", &v15, 0x16u);
    }

    v10 = [MEMORY[0x277CCAB88] notificationWithName:@"COHomeKitAdapterSignificantHomeChangeNotification" object:self];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotification:v10];
  }

  mediaGroupsDaemon = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  v13 = mediaGroupsDaemon;
  if (mediaGroupsDaemon)
  {
    [mediaGroupsDaemon removeHomeKitRoom:roomCopy fromHome:homeCopy];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)home didAddRoom:(id)room toZone:(id)zone
{
  v24 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  roomCopy = room;
  zoneCopy = zone;
  currentAccessory = [(COHomeKitAdapter *)self currentAccessory];
  if (currentAccessory)
  {
    v12 = [(COHomeKitAdapter *)self zoneForAccessory:currentAccessory inHome:homeCopy];
    v13 = [v12 isEqual:zoneCopy];

    if (v13)
    {
      v14 = COCoreLogForCategory(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 134218242;
        selfCopy = self;
        v22 = 2112;
        v23 = roomCopy;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p Updated Zone for Room %@", &v20, 0x16u);
      }

      v15 = [MEMORY[0x277CCAB88] notificationWithName:@"COHomeKitAdapterSignificantHomeChangeNotification" object:self];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotification:v15];
    }
  }

  mediaGroupsDaemon = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  v18 = mediaGroupsDaemon;
  if (mediaGroupsDaemon)
  {
    [mediaGroupsDaemon addHomeKitHome:homeCopy];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)home didAddZone:(id)zone
{
  v21 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  zoneCopy = zone;
  currentAccessory = [(COHomeKitAdapter *)self currentAccessory];
  if (currentAccessory)
  {
    v9 = [(COHomeKitAdapter *)self zoneForAccessory:currentAccessory inHome:homeCopy];
    v10 = [v9 isEqual:zoneCopy];

    if (v10)
    {
      v11 = COCoreLogForCategory(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134218242;
        selfCopy = self;
        v19 = 2112;
        v20 = zoneCopy;
        _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p Added Zone  %@", &v17, 0x16u);
      }

      v12 = [MEMORY[0x277CCAB88] notificationWithName:@"COHomeKitAdapterSignificantHomeChangeNotification" object:self];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotification:v12];
    }
  }

  mediaGroupsDaemon = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  v15 = mediaGroupsDaemon;
  if (mediaGroupsDaemon)
  {
    [mediaGroupsDaemon addHomeKitZone:zoneCopy fromHome:homeCopy];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)home didRemoveZone:(id)zone
{
  v19 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  zoneCopy = zone;
  currentAccessory = [(COHomeKitAdapter *)self currentAccessory];
  if (currentAccessory)
  {
    v9 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134218242;
      selfCopy = self;
      v17 = 2112;
      v18 = zoneCopy;
      _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%p Removed Zone  %@", &v15, 0x16u);
    }

    v10 = [MEMORY[0x277CCAB88] notificationWithName:@"COHomeKitAdapterSignificantHomeChangeNotification" object:self];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotification:v10];
  }

  mediaGroupsDaemon = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  v13 = mediaGroupsDaemon;
  if (mediaGroupsDaemon)
  {
    [mediaGroupsDaemon removeHomeKitZone:zoneCopy fromHome:homeCopy];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)home didAddMediaSystem:(id)system
{
  v20 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  systemCopy = system;
  v8 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134218242;
    selfCopy = self;
    v18 = 2112;
    v19 = systemCopy;
    _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p Added Media System %@", &v16, 0x16u);
  }

  currentAccessory = [(COHomeKitAdapter *)self currentAccessory];
  if (currentAccessory)
  {
    v10 = [(COHomeKitAdapter *)self mediaSystemForAccessory:currentAccessory inHome:homeCopy];
    if ([v10 isEqual:systemCopy])
    {
      [(COHomeKitAdapter *)self setCurrentMediaSystem:systemCopy];
    }
  }

  v11 = [MEMORY[0x277CCAB88] notificationWithName:@"COHomeKitAdapterSignificantHomeChangeNotification" object:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotification:v11];

  mediaGroupsDaemon = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  v14 = mediaGroupsDaemon;
  if (mediaGroupsDaemon)
  {
    [mediaGroupsDaemon addHomeKitMediaSystem:systemCopy fromHome:homeCopy];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)home didRemoveMediaSystem:(id)system
{
  v20 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  systemCopy = system;
  v8 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134218242;
    selfCopy = self;
    v18 = 2112;
    v19 = systemCopy;
    _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p Removed Media System %@", &v16, 0x16u);
  }

  currentMediaSystem = [(COHomeKitAdapter *)self currentMediaSystem];
  v10 = [systemCopy isEqual:currentMediaSystem];

  if (v10)
  {
    [(COHomeKitAdapter *)self setCurrentMediaSystem:0];
  }

  v11 = [MEMORY[0x277CCAB88] notificationWithName:@"COHomeKitAdapterSignificantHomeChangeNotification" object:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotification:v11];

  mediaGroupsDaemon = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  v14 = mediaGroupsDaemon;
  if (mediaGroupsDaemon)
  {
    [mediaGroupsDaemon removeHomeKitMediaSystem:systemCopy fromHome:homeCopy];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)home didAddUser:(id)user
{
  v12 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v6 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    selfCopy = self;
    v10 = 2112;
    v11 = homeCopy;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p User added to home %@", &v8, 0x16u);
  }

  [(COHomeKitAdapter *)self _postUsersChangedNotificationForHome:homeCopy];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)home didRemoveUser:(id)user
{
  v12 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v6 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    selfCopy = self;
    v10 = 2112;
    v11 = homeCopy;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p User removed from home %@", &v8, 0x16u);
  }

  [(COHomeKitAdapter *)self _postUsersChangedNotificationForHome:homeCopy];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)audioDestinationControllerDidUpdateForAccessory:(id)accessory inHome:(id)home
{
  v16 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  homeCopy = home;
  v8 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218242;
    selfCopy = self;
    v14 = 2112;
    v15 = accessoryCopy;
    _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p audio destination controller updated for %@", &v12, 0x16u);
  }

  mediaGroupsDaemon = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  v10 = mediaGroupsDaemon;
  if (mediaGroupsDaemon)
  {
    [mediaGroupsDaemon addHomeKitAccessory:accessoryCopy fromHome:homeCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_addAudioDestinationControllerListenerForAccessory:(id)accessory home:(id)home
{
  v19[2] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  homeCopy = home;
  category = [accessoryCopy category];
  categoryType = [category categoryType];
  v10 = [categoryType isEqualToString:*MEMORY[0x277CCE870]];

  if (v10)
  {
    audioDestinationControllerListeners = [(COHomeKitAdapter *)self audioDestinationControllerListeners];
    uniqueIdentifier = [homeCopy uniqueIdentifier];
    v19[0] = uniqueIdentifier;
    uniqueIdentifier2 = [accessoryCopy uniqueIdentifier];
    v19[1] = uniqueIdentifier2;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];

    v15 = [audioDestinationControllerListeners objectForKey:v14];

    if (!v15)
    {
      v16 = [audioDestinationControllerListeners mutableCopy];
      v17 = [[_COHomeKitAudioDestinationControllerListener alloc] initWitAccessory:accessoryCopy home:homeCopy delegate:self];
      [v16 setObject:v17 forKey:v14];
      [(COHomeKitAdapter *)self setAudioDestinationControllerListeners:v16];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_removeAudioDestinationControllerListenerForAccessory:(id)accessory home:(id)home
{
  v15[2] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  accessoryCopy = accessory;
  audioDestinationControllerListeners = [(COHomeKitAdapter *)self audioDestinationControllerListeners];
  uniqueIdentifier = [homeCopy uniqueIdentifier];

  v15[0] = uniqueIdentifier;
  uniqueIdentifier2 = [accessoryCopy uniqueIdentifier];

  v15[1] = uniqueIdentifier2;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

  v12 = [audioDestinationControllerListeners objectForKey:v11];
  if (v12)
  {
    v13 = [audioDestinationControllerListeners mutableCopy];
    [v13 removeObjectForKey:v11];
    [(COHomeKitAdapter *)self setAudioDestinationControllerListeners:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_postUsersChangedNotificationForHome:(id)home
{
  homeCopy = home;
  homekit = [(COHomeKitAdapter *)self homekit];
  currentAccessory = [homekit currentAccessory];
  v6 = [objc_alloc(MEMORY[0x277CCAB88]) initWithName:@"COHomeKitAdapterUsersChangedInHome" object:homeCopy userInfo:0];
  if (!currentAccessory || (-[COHomeKitAdapter homeForAccessory:](self, "homeForAccessory:", currentAccessory), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isEqual:homeCopy], v7, v8))
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotification:v6];
  }
}

- (id)alarmsCollectionForAccessory:(id)accessory inHome:(id)home isMediaSystem:(BOOL *)system
{
  accessoryCopy = accessory;
  v9 = [(COHomeKitAdapter *)self mediaSystemForAccessory:accessoryCopy inHome:home];
  if (v9)
  {
    v10 = [(COHomeKitAdapter *)self settingsForKeyPath:@"root.mobileTimer.alarms" onMediaObject:v9];
    v11 = 1;
  }

  else
  {
    v10 = [(COHomeKitAdapter *)self settingsForKeyPath:@"root.mobileTimer.alarms" onAccessory:accessoryCopy];
    v11 = 0;
  }

  *system = v11;
  firstObject = [v10 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = firstObject;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (BOOL)isAlarmsCollectionSetting:(id)setting forAccessory:(id)accessory inHome:(id)home
{
  v11 = 0;
  settingCopy = setting;
  v9 = [(COHomeKitAdapter *)self alarmsCollectionForAccessory:accessory inHome:home isMediaSystem:&v11];
  LOBYTE(accessory) = [v9 isEqual:settingCopy];

  return accessory;
}

- (id)alarmsForAccessory:(id)accessory inHome:(id)home
{
  accessoryCopy = accessory;
  homeCopy = home;
  v27 = 0;
  v8 = [(COHomeKitAdapter *)self alarmsCollectionForAccessory:accessoryCopy inHome:homeCopy isMediaSystem:&v27];
  if (v8)
  {
    v9 = COTimerSiriContextTargetReferenceForAccessory();
    v10 = [MEMORY[0x277CBEAA8] now];
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__27;
    v25 = __Block_byref_object_dispose__27;
    v26 = objc_alloc_init(MEMORY[0x277CBEA60]);
    co_alarms = [v8 co_alarms];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64__COHomeKitAdapter_COMeshAlarmAddOn__alarmsForAccessory_inHome___block_invoke;
    v16[3] = &unk_278E19210;
    v12 = v9;
    v17 = v12;
    v20 = v27;
    v13 = v10;
    v18 = v13;
    v19 = &v21;
    [co_alarms enumerateObjectsUsingBlock:v16];

    v14 = v22[5];
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __64__COHomeKitAdapter_COMeshAlarmAddOn__alarmsForAccessory_inHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [v3 mutableCopy];
  [v8 co_setTargetReference:*(a1 + 32)];
  if (*(a1 + 56) == 1)
  {
    [v8 co_setIsMediaSystemOriginating];
  }

  [v8 setLastModifiedDate:*(a1 + 40)];
  v4 = [v3 lastModifiedDate];

  [v8 co_setHomeKitSaveDate:v4];
  v5 = [*(*(*(a1 + 48) + 8) + 40) arrayByAddingObject:v8];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)accessoriesForSiriContextTargetReference:(id)reference
{
  v32 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  v4 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v5 = [MEMORY[0x277CCACE0] componentsWithString:referenceCopy];
  scheme = [v5 scheme];
  if ([scheme isEqualToString:@"siri-hk-target"])
  {
    path = [v5 path];
    v8 = [path isEqualToString:@"accessory"];

    if (v8)
    {
      v25 = referenceCopy;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      queryItems = [v5 queryItems];
      v10 = [queryItems countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v28;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v28 != v12)
            {
              objc_enumerationMutation(queryItems);
            }

            v14 = *(*(&v27 + 1) + 8 * i);
            name = [v14 name];
            v16 = [@"identifier" isEqualToString:name];

            if (v16)
            {
              v17 = objc_alloc(MEMORY[0x277CCAD78]);
              value = [v14 value];
              v19 = [v17 initWithUUIDString:value];

              if (v19)
              {
                v20 = [(COHomeKitAdapter *)self accessoryWithUniqueIdentifier:v19];
                if (v20)
                {
                  v21 = v20;
                  v22 = [v4 arrayByAddingObject:v20];

                  v4 = v22;
                }
              }
            }
          }

          v11 = [queryItems countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v11);
      }

      referenceCopy = v25;
    }
  }

  else
  {
  }

  v23 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)allAccessoriesForSiriContextTargetReference:(id)reference
{
  v33 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  v4 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v5 = [MEMORY[0x277CCACE0] componentsWithString:referenceCopy];
  scheme = [v5 scheme];
  if ([scheme isEqualToString:@"siri-hk-target"])
  {
    path = [v5 path];
    v8 = [path isEqualToString:@"accessory"];

    if (v8)
    {
      v26 = referenceCopy;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      queryItems = [v5 queryItems];
      v10 = [queryItems countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v29;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v29 != v12)
            {
              objc_enumerationMutation(queryItems);
            }

            v14 = *(*(&v28 + 1) + 8 * i);
            name = [v14 name];
            v16 = [@"identifier" isEqualToString:name];

            if (v16)
            {
              v17 = objc_alloc(MEMORY[0x277CCAD78]);
              value = [v14 value];
              v19 = [v17 initWithUUIDString:value];

              if (!v19 || ([(COHomeKitAdapter *)self accessoryWithUniqueIdentifier:v19], (v20 = objc_claimAutoreleasedReturnValue()) == 0))
              {

                v23 = 0;
                referenceCopy = v26;
                goto LABEL_17;
              }

              v21 = v20;
              v22 = [v4 arrayByAddingObject:v20];

              v4 = v22;
            }
          }

          v11 = [queryItems countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      referenceCopy = v26;
    }
  }

  else
  {
  }

  v4 = v4;
  v23 = v4;
LABEL_17:

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)addAlarm:(id)alarm toAccessory:(id)accessory inHome:(id)home
{
  alarmCopy = alarm;
  accessoryCopy = accessory;
  v18 = 0;
  v10 = [(COHomeKitAdapter *)self alarmsCollectionForAccessory:accessoryCopy inHome:home isMediaSystem:&v18];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277D2C900]);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __66__COHomeKitAdapter_COMeshAlarmAddOn__addAlarm_toAccessory_inHome___block_invoke;
    v16[3] = &unk_278E15B38;
    v12 = v11;
    v17 = v12;
    [v10 co_addAlarm:alarmCopy completionHandler:v16];
    v13 = v17;
  }

  else
  {
    v14 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [COHomeKitAdapter(COMeshAlarmAddOn) addAlarm:accessoryCopy toAccessory:? inHome:?];
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
    v12 = [MEMORY[0x277D2C900] futureWithError:v13];
  }

  return v12;
}

uint64_t __66__COHomeKitAdapter_COMeshAlarmAddOn__addAlarm_toAccessory_inHome___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithError:a2];
  }

  else
  {
    return [v2 finishWithNoResult];
  }
}

- (id)updateAlarm:(id)alarm onAccessory:(id)accessory inHome:(id)home
{
  alarmCopy = alarm;
  accessoryCopy = accessory;
  v18 = 0;
  v10 = [(COHomeKitAdapter *)self alarmsCollectionForAccessory:accessoryCopy inHome:home isMediaSystem:&v18];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277D2C900]);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__COHomeKitAdapter_COMeshAlarmAddOn__updateAlarm_onAccessory_inHome___block_invoke;
    v16[3] = &unk_278E15B38;
    v12 = v11;
    v17 = v12;
    [v10 co_updateAlarm:alarmCopy completionHandler:v16];
    v13 = v17;
  }

  else
  {
    v14 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [COHomeKitAdapter(COMeshAlarmAddOn) updateAlarm:accessoryCopy onAccessory:? inHome:?];
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
    v12 = [MEMORY[0x277D2C900] futureWithError:v13];
  }

  return v12;
}

uint64_t __69__COHomeKitAdapter_COMeshAlarmAddOn__updateAlarm_onAccessory_inHome___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithError:a2];
  }

  else
  {
    return [v2 finishWithNoResult];
  }
}

- (id)removeAlarm:(id)alarm fromAccessory:(id)accessory inHome:(id)home
{
  alarmCopy = alarm;
  accessoryCopy = accessory;
  v18 = 0;
  v10 = [(COHomeKitAdapter *)self alarmsCollectionForAccessory:accessoryCopy inHome:home isMediaSystem:&v18];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277D2C900]);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__COHomeKitAdapter_COMeshAlarmAddOn__removeAlarm_fromAccessory_inHome___block_invoke;
    v16[3] = &unk_278E15B38;
    v12 = v11;
    v17 = v12;
    [v10 co_removeAlarm:alarmCopy completionHandler:v16];
    v13 = v17;
  }

  else
  {
    v14 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [COHomeKitAdapter(COMeshAlarmAddOn) updateAlarm:accessoryCopy onAccessory:? inHome:?];
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
    v12 = [MEMORY[0x277D2C900] futureWithError:v13];
  }

  return v12;
}

uint64_t __71__COHomeKitAdapter_COMeshAlarmAddOn__removeAlarm_fromAccessory_inHome___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithError:a2];
  }

  else
  {
    return [v2 finishWithNoResult];
  }
}

void __27__COHomeKitAdapter_homekit__block_invoke_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v9 = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_1_3(&dword_244378000, v2, v3, "%p pulling in HomeKit from %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)accessoryWithUniqueIdentifier:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(&dword_244378000, v0, OS_LOG_TYPE_ERROR, "%p is unable to find accessory %@!", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end