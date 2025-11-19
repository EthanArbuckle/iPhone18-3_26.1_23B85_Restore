@interface COHomeKitAdapter
+ (COHomeKitAdapter)sharedInstance;
+ (void)setSharedInstance:(id)a3;
- (BOOL)hasOptedToHH2;
- (BOOL)isAlarmsCollectionSetting:(id)a3 forAccessory:(id)a4 inHome:(id)a5;
- (BOOL)isReady;
- (COHomeKitAdapter)initWithHomeManager:(id)a3 MediaGroupsDaemon:(id)a4;
- (HMHomeManager)homekit;
- (HMMediaSystem)currentMediaSystem;
- (id)accessoriesForSiriContextTargetReference:(id)a3;
- (id)accessoriesInMediaSystem:(id)a3 inHome:(id)a4;
- (id)accessoriesInRoom:(id)a3 inHome:(id)a4;
- (id)accessoriesInZone:(id)a3 inHome:(id)a4;
- (id)accessoryWithUniqueIdentifier:(id)a3;
- (id)addAlarm:(id)a3 toAccessory:(id)a4 inHome:(id)a5;
- (id)alarmsCollectionForAccessory:(id)a3 inHome:(id)a4 isMediaSystem:(BOOL *)a5;
- (id)alarmsForAccessory:(id)a3 inHome:(id)a4;
- (id)allAccessoriesForSiriContextTargetReference:(id)a3;
- (id)homeForAccessory:(id)a3;
- (id)identifiersForAccessoriesAssociatedWithAccessory:(id)a3 inHome:(id)a4;
- (id)mediaSystemForAccessory:(id)a3 inHome:(id)a4;
- (id)registerMediaSystemUpdateHandler:(id)a3;
- (id)removeAlarm:(id)a3 fromAccessory:(id)a4 inHome:(id)a5;
- (id)roomForAccessory:(id)a3 inHome:(id)a4;
- (id)settingsForKeyPath:(id)a3 fromSettings:(id)a4;
- (id)settingsForKeyPath:(id)a3 onAccessory:(id)a4;
- (id)settingsForKeyPath:(id)a3 onMediaObject:(id)a4;
- (id)updateAlarm:(id)a3 onAccessory:(id)a4 inHome:(id)a5;
- (id)zoneForAccessory:(id)a3 inHome:(id)a4;
- (void)_addAudioDestinationControllerListenerForAccessory:(id)a3 home:(id)a4;
- (void)_postUsersChangedNotificationForHome:(id)a3;
- (void)_removeAudioDestinationControllerListenerForAccessory:(id)a3 home:(id)a4;
- (void)_withLock:(id)a3;
- (void)audioDestinationControllerDidUpdateForAccessory:(id)a3 inHome:(id)a4;
- (void)home:(id)a3 didAddAccessory:(id)a4;
- (void)home:(id)a3 didAddMediaSystem:(id)a4;
- (void)home:(id)a3 didAddRoom:(id)a4;
- (void)home:(id)a3 didAddRoom:(id)a4 toZone:(id)a5;
- (void)home:(id)a3 didAddUser:(id)a4;
- (void)home:(id)a3 didAddZone:(id)a4;
- (void)home:(id)a3 didRemoveAccessory:(id)a4;
- (void)home:(id)a3 didRemoveMediaSystem:(id)a4;
- (void)home:(id)a3 didRemoveRoom:(id)a4;
- (void)home:(id)a3 didRemoveUser:(id)a4;
- (void)home:(id)a3 didRemoveZone:(id)a4;
- (void)home:(id)a3 didUpdateRoom:(id)a4 forAccessory:(id)a5;
- (void)homeManager:(id)a3 didAddHome:(id)a4;
- (void)homeManager:(id)a3 didRemoveHome:(id)a4;
- (void)homeManager:(id)a3 didUpdateAuthorizationStatus:(unint64_t)a4;
- (void)homeManager:(id)a3 didUpdateStatus:(unint64_t)a4;
- (void)homeManagerDidUpdateCurrentHome:(id)a3;
- (void)homeManagerDidUpdateHomes:(id)a3;
- (void)prewarm;
- (void)setCurrentMediaSystem:(id)a3;
- (void)unregisterMediaSystemUpdateHandler:(id)a3;
@end

@implementation COHomeKitAdapter

- (COHomeKitAdapter)initWithHomeManager:(id)a3 MediaGroupsDaemon:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = COHomeKitAdapter;
  v9 = [(COHomeKitAdapter *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_homekit, a3);
    v11 = objc_alloc_init(MEMORY[0x277CCA928]);
    condition = v10->_condition;
    v10->_condition = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mediaSystemUpdateHandlers = v10->_mediaSystemUpdateHandlers;
    v10->_mediaSystemUpdateHandlers = v13;

    objc_storeStrong(&v10->_mediaGroupsDaemon, a4);
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
        v20 = [(HMHomeManager *)v18 status];
        v19 = (v20 & 0x21) != 1 || (v20 & 0x10) != 0;
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
    v4 = objc_alloc_init(a1);
    v5 = _COHomeKitAdapterSharedInstance;
    _COHomeKitAdapterSharedInstance = v4;

    v3 = v4;
  }

  os_unfair_lock_unlock(&_COHomeKitAdapterSharedInstanceLock);

  return v3;
}

+ (void)setSharedInstance:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&_COHomeKitAdapterSharedInstanceLock);
  v4 = _COHomeKitAdapterSharedInstance;
  _COHomeKitAdapterSharedInstance = v3;

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
  v7 = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_1_3(&dword_244378000, v0, v1, "%p request to prewarm HomeKit from %@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasOptedToHH2
{
  v2 = [(COHomeKitAdapter *)self homekit];
  v3 = [v2 hasOptedToHH2];

  return v3;
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
  v3 = [(COHomeKitAdapter *)self condition];
  [v3 lock];
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
        v19 = self;
        _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p having to wait for HomeKit to come ready!", buf, 0xCu);
      }

      [v3 wait];
      if (self->_ready)
      {
        v6 = COCoreLogForCategory(7);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v10;
          v19 = self;
          _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p is able to move forward again.", buf, 0xCu);
        }

        if (self->_ready)
        {
          break;
        }
      }
    }
  }

  [v3 unlock];
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

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

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

- (void)setCurrentMediaSystem:(id)a3
{
  v4 = a3;
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
  v5 = v4;
  v8 = v5;
  v9 = self;
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

- (id)accessoryWithUniqueIdentifier:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [(COHomeKitAdapter *)self homekit];
  v6 = [v5 homes];

  v22 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v10 = [v9 accessories];
        v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v23 + 1) + 8 * j);
              v16 = [v15 uniqueIdentifier];
              v17 = [v16 isEqual:v4];

              if (v17)
              {
                v18 = v15;

                goto LABEL_20;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v7 = v21;
      }

      v22 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v22);
  }

  v6 = COCoreLogForCategory(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [COHomeKitAdapter accessoryWithUniqueIdentifier:];
  }

  v18 = 0;
LABEL_20:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)identifiersForAccessoriesAssociatedWithAccessory:(id)a3 inHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v9 = [(COHomeKitAdapter *)self mediaSystemForAccessory:v6 inHome:v7];
  if (v9)
  {
    v10 = [(COHomeKitAdapter *)self accessoriesInMediaSystem:v9 inHome:v7];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __76__COHomeKitAdapter_identifiersForAccessoriesAssociatedWithAccessory_inHome___block_invoke;
    v13[3] = &unk_278E16838;
    v14 = v8;
    [v10 enumerateObjectsUsingBlock:v13];
  }

  else
  {
    v10 = [v6 uniqueIdentifier];
    [v8 addObject:v10];
  }

  v11 = [v8 allObjects];

  return v11;
}

void __76__COHomeKitAdapter_identifiersForAccessoriesAssociatedWithAccessory_inHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueIdentifier];
  [v2 addObject:v3];
}

- (id)mediaSystemForAccessory:(id)a3 inHome:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COHomeKitAdapter *)self homekit];
  v9 = [v8 homes];
  v10 = [v9 containsObject:v7];

  if (v10)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = [v7 mediaSystems];
    v27 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v27)
    {
      v12 = *v35;
      v29 = v11;
      v26 = *v35;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(v11);
          }

          v14 = *(*(&v34 + 1) + 8 * i);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v28 = v14;
          v15 = [v14 components];
          v16 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
                  objc_enumerationMutation(v15);
                }

                v20 = [*(*(&v30 + 1) + 8 * j) mediaProfile];
                v21 = [v20 accessory];
                v22 = [v21 isEqual:v6];

                if (v22)
                {
                  v23 = v28;

                  v11 = v29;
                  goto LABEL_21;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v12 = v26;
          v11 = v29;
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

- (id)accessoriesInMediaSystem:(id)a3 inHome:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v9 = [v6 components];
  v10 = [(COHomeKitAdapter *)self homekit];
  v11 = [v10 homes];
  v12 = [v11 containsObject:v7];

  if (v12)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = v9;
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

          v18 = [*(*(&v23 + 1) + 8 * i) mediaProfile];
          v19 = [v18 accessory];

          if (v19)
          {
            v20 = [v8 arrayByAddingObject:v19];

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

- (id)homeForAccessory:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(COHomeKitAdapter *)self homekit];
  v6 = [v5 homes];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 accessories];
        v12 = [v11 containsObject:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)zoneForAccessory:(id)a3 inHome:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(COHomeKitAdapter *)self roomForAccessory:a3 inHome:v6];
  if (v7)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v6 zones];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 rooms];
          v14 = [v13 containsObject:v7];

          if (v14)
          {
            v9 = v12;
            goto LABEL_12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (id)accessoriesInZone:(id)a3 inHome:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [v6 rooms];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v9);
        }

        v15 = [(COHomeKitAdapter *)self accessoriesInRoom:*(*(&v18 + 1) + 8 * v13) inHome:v7];
        v8 = [v14 arrayByAddingObjectsFromArray:v15];

        ++v13;
        v14 = v8;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)roomForAccessory:(id)a3 inHome:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [v7 rooms];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [(COHomeKitAdapter *)self accessoriesInRoom:v13 inHome:v7];
        v15 = [v14 containsObject:v6];

        if (v15)
        {
          v16 = v13;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

- (id)accessoriesInRoom:(id)a3 inHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COHomeKitAdapter *)self homekit];
  v9 = [v8 homes];
  if ([v9 containsObject:v7])
  {
    v10 = [v7 rooms];
    v11 = [v10 containsObject:v6];

    if (v11)
    {
      v12 = [v6 accessories];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v12 = MEMORY[0x277CBEBF8];
LABEL_6:

  return v12;
}

- (id)settingsForKeyPath:(id)a3 fromSettings:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (settingsForKeyPath_fromSettings__onceToken != -1)
  {
    [COHomeKitAdapter settingsForKeyPath:fromSettings:];
  }

  v7 = [v5 componentsSeparatedByString:@"."];
  v38 = [v7 count];
  if (v38 && ([v7 firstObject], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", *MEMORY[0x277CCEDC0]), v8, v9))
  {
    v10 = [v6 rootGroup];
    if (v10)
    {
      v35 = v6;
      v36 = v5;
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
        v14 = [v10 groups];
        v15 = [v14 countByEnumeratingWithState:&v43 objects:v49 count:16];
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
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v43 + 1) + 8 * i);
              v20 = [v19 keyPath];
              v21 = [v20 isEqualToString:v13];

              if (v21)
              {
                v22 = v19;

                v10 = v22;
                goto LABEL_17;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v43 objects:v49 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }

LABEL_17:
          v7 = v37;
        }

        if (!v10)
        {
          break;
        }

        ++v11;
      }

      while (v11 <= v38);
      if (v10)
      {
        v23 = [v10 keyPath];
        v5 = v36;
        v24 = [v23 isEqualToString:v36];

        if (v24)
        {
          v25 = [v10 settings];
        }

        else
        {
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v26 = [v10 settings];
          v25 = [v26 countByEnumeratingWithState:&v39 objects:v48 count:16];
          if (v25)
          {
            v27 = v7;
            v28 = *v40;
            while (2)
            {
              for (j = 0; j != v25; j = j + 1)
              {
                if (*v40 != v28)
                {
                  objc_enumerationMutation(v26);
                }

                v30 = *(*(&v39 + 1) + 8 * j);
                v31 = [v30 keyPath];
                v32 = [v31 isEqualToString:v36];

                if (v32)
                {
                  v47 = v30;
                  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
                  goto LABEL_36;
                }
              }

              v25 = [v26 countByEnumeratingWithState:&v39 objects:v48 count:16];
              if (v25)
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
        v25 = 0;
        v5 = v36;
      }

      v6 = v35;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v25;
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

- (id)settingsForKeyPath:(id)a3 onAccessory:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 settings];
  v9 = [(COHomeKitAdapter *)self settingsForKeyPath:v6 fromSettings:v8];

  if (!v9)
  {
    v10 = COCoreLogForCategory(7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = [v7 uniqueIdentifier];
      v14 = 134218498;
      v15 = self;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v13;
      _os_log_error_impl(&dword_244378000, v10, OS_LOG_TYPE_ERROR, "%p was not able to retrieve %@ for accessory %@!", &v14, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)settingsForKeyPath:(id)a3 onMediaObject:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 settings];
  v9 = [(COHomeKitAdapter *)self settingsForKeyPath:v6 fromSettings:v8];

  if (!v9)
  {
    v10 = COCoreLogForCategory(7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 134218498;
      v14 = self;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_error_impl(&dword_244378000, v10, OS_LOG_TYPE_ERROR, "%p was not able to retrieve %@ for %@!", &v13, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)registerMediaSystemUpdateHandler:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__COHomeKitAdapter_registerMediaSystemUpdateHandler___block_invoke;
  v8[3] = &unk_278E16240;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
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

- (void)unregisterMediaSystemUpdateHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__COHomeKitAdapter_unregisterMediaSystemUpdateHandler___block_invoke;
  v6[3] = &unk_278E156B0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(COHomeKitAdapter *)self _withLock:v6];
}

void __55__COHomeKitAdapter_unregisterMediaSystemUpdateHandler___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) mediaSystemUpdateHandlers];
  v2 = MEMORY[0x245D5FF10](*(a1 + 40));
  [v3 removeObject:v2];
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = COCoreLogForCategory(7);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [COHomeKitAdapter homeManagerDidUpdateHomes:v5];
  }

  v6 = [(COHomeKitAdapter *)self condition];
  [v6 lock];
  if (!self->_ready)
  {
    v7 = COCoreLogForCategory(7);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v30 = self;
      _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p is marking HomeKit ready!", buf, 0xCu);
    }

    self->_ready = 1;
    [v6 broadcast];
  }

  [v6 unlock];
  v8 = [(COHomeKitAdapter *)self currentAccessory];
  if (v8)
  {
    v9 = [(COHomeKitAdapter *)self homeForAccessory:v8];
    if (v9)
    {
      v10 = [(COHomeKitAdapter *)self mediaSystemForAccessory:v8 inHome:v9];
    }

    else
    {
      v10 = 0;
    }

    [(COHomeKitAdapter *)self setCurrentMediaSystem:v10];
  }

  v11 = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [v4 homes];
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
        if (v11)
        {
          [v11 addHomeKitHome:v16];
        }

        v17 = [v16 accessories];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __46__COHomeKitAdapter_homeManagerDidUpdateHomes___block_invoke;
        v23[3] = &unk_278E16860;
        v23[4] = self;
        v23[5] = v16;
        [v17 enumerateObjectsUsingBlock:v23];
      }

      v13 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  v18 = [MEMORY[0x277CCAB88] notificationWithName:@"COHomeKitAdapterSignificantHomeChangeNotification" object:self];
  v19 = [MEMORY[0x277CCAB98] defaultCenter];
  [v19 postNotification:v18];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)homeManager:(id)a3 didUpdateAuthorizationStatus:(unint64_t)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(COHomeKitAdapter *)self condition];
  [v6 lock];
  if (!self->_ready)
  {
    v7 = v5;
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
      v14 = self;
      _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p not waiting for home updates.  Marking HomeKit ready now!", &v13, 0xCu);
    }

    [v6 broadcast];
  }

LABEL_10:
  [v6 unlock];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)homeManager:(id)a3 didUpdateStatus:(unint64_t)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(COHomeKitAdapter *)self condition];
  [v6 lock];
  if (!self->_ready)
  {
    v7 = v5;
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
      v14 = self;
      _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p got impatient for home updates.  Marking HomeKit ready now!", &v13, 0xCu);
    }

    [v6 broadcast];
  }

LABEL_10:
  [v6 unlock];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)homeManager:(id)a3 didAddHome:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v17 = self;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p Added Home %@", buf, 0x16u);
  }

  [v5 setDelegate:self];
  v7 = [MEMORY[0x277CCAB88] notificationWithName:@"COHomeKitAdapterSignificantHomeChangeNotification" object:self];
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 postNotification:v7];

  v9 = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  v10 = v9;
  if (v9)
  {
    [v9 addHomeKitHome:v5];
  }

  v11 = [v5 accessories];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __43__COHomeKitAdapter_homeManager_didAddHome___block_invoke;
  v14[3] = &unk_278E16860;
  v14[4] = self;
  v15 = v5;
  v12 = v5;
  [v11 enumerateObjectsUsingBlock:v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)homeManagerDidUpdateCurrentHome:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = self;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p Updated Current Home", &v9, 0xCu);
  }

  v6 = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  if (v6)
  {
    v7 = [v4 currentHome];
    if (v7)
    {
      [v6 addHomeKitHome:v7];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)homeManager:(id)a3 didRemoveHome:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v21 = self;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p Removed Home %@", buf, 0x16u);
  }

  v7 = [MEMORY[0x277CCAB88] notificationWithName:@"COHomeKitAdapterSignificantHomeChangeNotification" object:self];
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 postNotification:v7];

  v9 = [v5 accessories];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __46__COHomeKitAdapter_homeManager_didRemoveHome___block_invoke;
  v17 = &unk_278E16860;
  v18 = self;
  v10 = v5;
  v19 = v10;
  [v9 enumerateObjectsUsingBlock:&v14];

  v11 = [(COHomeKitAdapter *)self mediaGroupsDaemon:v14];
  v12 = v11;
  if (v11)
  {
    [v11 removeHomeKitHome:v10];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didAddAccessory:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COHomeKitAdapter *)self currentAccessory];
  v9 = [v8 uniqueIdentifier];
  v10 = [v7 uniqueIdentifier];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    v12 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134218242;
      v19 = self;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%p Added Accessory %@", &v18, 0x16u);
    }

    v13 = [MEMORY[0x277CCAB88] notificationWithName:@"COHomeKitAdapterSignificantHomeChangeNotification" object:self];
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 postNotification:v13];
  }

  v15 = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  v16 = v15;
  if (v15)
  {
    [v15 addHomeKitAccessory:v7 fromHome:v6];
  }

  [(COHomeKitAdapter *)self _addAudioDestinationControllerListenerForAccessory:v7 home:v6];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didRemoveAccessory:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COHomeKitAdapter *)self currentAccessory];
  v9 = [v8 uniqueIdentifier];
  v10 = [v7 uniqueIdentifier];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    v12 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134218242;
      v19 = self;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%p Removed Accessory %@", &v18, 0x16u);
    }

    v13 = [MEMORY[0x277CCAB88] notificationWithName:@"COHomeKitAdapterSignificantHomeChangeNotification" object:self];
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 postNotification:v13];
  }

  v15 = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  v16 = v15;
  if (v15)
  {
    [v15 removeHomeKitAccessory:v7 fromHome:v6];
  }

  [(COHomeKitAdapter *)self _removeAudioDestinationControllerListenerForAccessory:v7 home:v6];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didUpdateRoom:(id)a4 forAccessory:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [(COHomeKitAdapter *)self currentAccessory];
  v10 = [v9 uniqueIdentifier];
  v11 = [v8 uniqueIdentifier];
  v12 = [v10 isEqual:v11];

  if (v12)
  {
    v13 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218242;
      v20 = self;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%p Updated Room for Accessory  %@", &v19, 0x16u);
    }

    v14 = [MEMORY[0x277CCAB88] notificationWithName:@"COHomeKitAdapterSignificantHomeChangeNotification" object:self];
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 postNotification:v14];
  }

  v16 = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  v17 = v16;
  if (v16)
  {
    [v16 addHomeKitHome:v7];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didAddRoom:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COHomeKitAdapter *)self currentAccessory];
  if (v8)
  {
    v9 = [(COHomeKitAdapter *)self roomForAccessory:v8 inHome:v6];
    v10 = [v9 isEqual:v7];

    if (v10)
    {
      v11 = COCoreLogForCategory(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134218242;
        v18 = self;
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p Added Room  %@", &v17, 0x16u);
      }

      v12 = [MEMORY[0x277CCAB88] notificationWithName:@"COHomeKitAdapterSignificantHomeChangeNotification" object:self];
      v13 = [MEMORY[0x277CCAB98] defaultCenter];
      [v13 postNotification:v12];
    }
  }

  v14 = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  v15 = v14;
  if (v14)
  {
    [v14 addHomeKitRoom:v7 fromHome:v6];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didRemoveRoom:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COHomeKitAdapter *)self currentAccessory];
  if (v8)
  {
    v9 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134218242;
      v16 = self;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%p Removed Room  %@", &v15, 0x16u);
    }

    v10 = [MEMORY[0x277CCAB88] notificationWithName:@"COHomeKitAdapterSignificantHomeChangeNotification" object:self];
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 postNotification:v10];
  }

  v12 = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  v13 = v12;
  if (v12)
  {
    [v12 removeHomeKitRoom:v7 fromHome:v6];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didAddRoom:(id)a4 toZone:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COHomeKitAdapter *)self currentAccessory];
  if (v11)
  {
    v12 = [(COHomeKitAdapter *)self zoneForAccessory:v11 inHome:v8];
    v13 = [v12 isEqual:v10];

    if (v13)
    {
      v14 = COCoreLogForCategory(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 134218242;
        v21 = self;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p Updated Zone for Room %@", &v20, 0x16u);
      }

      v15 = [MEMORY[0x277CCAB88] notificationWithName:@"COHomeKitAdapterSignificantHomeChangeNotification" object:self];
      v16 = [MEMORY[0x277CCAB98] defaultCenter];
      [v16 postNotification:v15];
    }
  }

  v17 = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  v18 = v17;
  if (v17)
  {
    [v17 addHomeKitHome:v8];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didAddZone:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COHomeKitAdapter *)self currentAccessory];
  if (v8)
  {
    v9 = [(COHomeKitAdapter *)self zoneForAccessory:v8 inHome:v6];
    v10 = [v9 isEqual:v7];

    if (v10)
    {
      v11 = COCoreLogForCategory(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134218242;
        v18 = self;
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p Added Zone  %@", &v17, 0x16u);
      }

      v12 = [MEMORY[0x277CCAB88] notificationWithName:@"COHomeKitAdapterSignificantHomeChangeNotification" object:self];
      v13 = [MEMORY[0x277CCAB98] defaultCenter];
      [v13 postNotification:v12];
    }
  }

  v14 = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  v15 = v14;
  if (v14)
  {
    [v14 addHomeKitZone:v7 fromHome:v6];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didRemoveZone:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COHomeKitAdapter *)self currentAccessory];
  if (v8)
  {
    v9 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134218242;
      v16 = self;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%p Removed Zone  %@", &v15, 0x16u);
    }

    v10 = [MEMORY[0x277CCAB88] notificationWithName:@"COHomeKitAdapterSignificantHomeChangeNotification" object:self];
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 postNotification:v10];
  }

  v12 = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  v13 = v12;
  if (v12)
  {
    [v12 removeHomeKitZone:v7 fromHome:v6];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didAddMediaSystem:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134218242;
    v17 = self;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p Added Media System %@", &v16, 0x16u);
  }

  v9 = [(COHomeKitAdapter *)self currentAccessory];
  if (v9)
  {
    v10 = [(COHomeKitAdapter *)self mediaSystemForAccessory:v9 inHome:v6];
    if ([v10 isEqual:v7])
    {
      [(COHomeKitAdapter *)self setCurrentMediaSystem:v7];
    }
  }

  v11 = [MEMORY[0x277CCAB88] notificationWithName:@"COHomeKitAdapterSignificantHomeChangeNotification" object:self];
  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 postNotification:v11];

  v13 = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  v14 = v13;
  if (v13)
  {
    [v13 addHomeKitMediaSystem:v7 fromHome:v6];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didRemoveMediaSystem:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134218242;
    v17 = self;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p Removed Media System %@", &v16, 0x16u);
  }

  v9 = [(COHomeKitAdapter *)self currentMediaSystem];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    [(COHomeKitAdapter *)self setCurrentMediaSystem:0];
  }

  v11 = [MEMORY[0x277CCAB88] notificationWithName:@"COHomeKitAdapterSignificantHomeChangeNotification" object:self];
  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 postNotification:v11];

  v13 = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  v14 = v13;
  if (v13)
  {
    [v13 removeHomeKitMediaSystem:v7 fromHome:v6];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didAddUser:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    v9 = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p User added to home %@", &v8, 0x16u);
  }

  [(COHomeKitAdapter *)self _postUsersChangedNotificationForHome:v5];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didRemoveUser:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    v9 = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p User removed from home %@", &v8, 0x16u);
  }

  [(COHomeKitAdapter *)self _postUsersChangedNotificationForHome:v5];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)audioDestinationControllerDidUpdateForAccessory:(id)a3 inHome:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218242;
    v13 = self;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p audio destination controller updated for %@", &v12, 0x16u);
  }

  v9 = [(COHomeKitAdapter *)self mediaGroupsDaemon];
  v10 = v9;
  if (v9)
  {
    [v9 addHomeKitAccessory:v6 fromHome:v7];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_addAudioDestinationControllerListenerForAccessory:(id)a3 home:(id)a4
{
  v19[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 category];
  v9 = [v8 categoryType];
  v10 = [v9 isEqualToString:*MEMORY[0x277CCE870]];

  if (v10)
  {
    v11 = [(COHomeKitAdapter *)self audioDestinationControllerListeners];
    v12 = [v7 uniqueIdentifier];
    v19[0] = v12;
    v13 = [v6 uniqueIdentifier];
    v19[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];

    v15 = [v11 objectForKey:v14];

    if (!v15)
    {
      v16 = [v11 mutableCopy];
      v17 = [[_COHomeKitAudioDestinationControllerListener alloc] initWitAccessory:v6 home:v7 delegate:self];
      [v16 setObject:v17 forKey:v14];
      [(COHomeKitAdapter *)self setAudioDestinationControllerListeners:v16];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_removeAudioDestinationControllerListenerForAccessory:(id)a3 home:(id)a4
{
  v15[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(COHomeKitAdapter *)self audioDestinationControllerListeners];
  v9 = [v6 uniqueIdentifier];

  v15[0] = v9;
  v10 = [v7 uniqueIdentifier];

  v15[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

  v12 = [v8 objectForKey:v11];
  if (v12)
  {
    v13 = [v8 mutableCopy];
    [v13 removeObjectForKey:v11];
    [(COHomeKitAdapter *)self setAudioDestinationControllerListeners:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_postUsersChangedNotificationForHome:(id)a3
{
  v10 = a3;
  v4 = [(COHomeKitAdapter *)self homekit];
  v5 = [v4 currentAccessory];
  v6 = [objc_alloc(MEMORY[0x277CCAB88]) initWithName:@"COHomeKitAdapterUsersChangedInHome" object:v10 userInfo:0];
  if (!v5 || (-[COHomeKitAdapter homeForAccessory:](self, "homeForAccessory:", v5), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isEqual:v10], v7, v8))
  {
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 postNotification:v6];
  }
}

- (id)alarmsCollectionForAccessory:(id)a3 inHome:(id)a4 isMediaSystem:(BOOL *)a5
{
  v8 = a3;
  v9 = [(COHomeKitAdapter *)self mediaSystemForAccessory:v8 inHome:a4];
  if (v9)
  {
    v10 = [(COHomeKitAdapter *)self settingsForKeyPath:@"root.mobileTimer.alarms" onMediaObject:v9];
    v11 = 1;
  }

  else
  {
    v10 = [(COHomeKitAdapter *)self settingsForKeyPath:@"root.mobileTimer.alarms" onAccessory:v8];
    v11 = 0;
  }

  *a5 = v11;
  v12 = [v10 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (BOOL)isAlarmsCollectionSetting:(id)a3 forAccessory:(id)a4 inHome:(id)a5
{
  v11 = 0;
  v8 = a3;
  v9 = [(COHomeKitAdapter *)self alarmsCollectionForAccessory:a4 inHome:a5 isMediaSystem:&v11];
  LOBYTE(a4) = [v9 isEqual:v8];

  return a4;
}

- (id)alarmsForAccessory:(id)a3 inHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27 = 0;
  v8 = [(COHomeKitAdapter *)self alarmsCollectionForAccessory:v6 inHome:v7 isMediaSystem:&v27];
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
    v11 = [v8 co_alarms];
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
    [v11 enumerateObjectsUsingBlock:v16];

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

- (id)accessoriesForSiriContextTargetReference:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v5 = [MEMORY[0x277CCACE0] componentsWithString:v3];
  v6 = [v5 scheme];
  if ([v6 isEqualToString:@"siri-hk-target"])
  {
    v7 = [v5 path];
    v8 = [v7 isEqualToString:@"accessory"];

    if (v8)
    {
      v25 = v3;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v9 = [v5 queryItems];
      v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v27 + 1) + 8 * i);
            v15 = [v14 name];
            v16 = [@"identifier" isEqualToString:v15];

            if (v16)
            {
              v17 = objc_alloc(MEMORY[0x277CCAD78]);
              v18 = [v14 value];
              v19 = [v17 initWithUUIDString:v18];

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

          v11 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v11);
      }

      v3 = v25;
    }
  }

  else
  {
  }

  v23 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)allAccessoriesForSiriContextTargetReference:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v5 = [MEMORY[0x277CCACE0] componentsWithString:v3];
  v6 = [v5 scheme];
  if ([v6 isEqualToString:@"siri-hk-target"])
  {
    v7 = [v5 path];
    v8 = [v7 isEqualToString:@"accessory"];

    if (v8)
    {
      v26 = v3;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v9 = [v5 queryItems];
      v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v28 + 1) + 8 * i);
            v15 = [v14 name];
            v16 = [@"identifier" isEqualToString:v15];

            if (v16)
            {
              v17 = objc_alloc(MEMORY[0x277CCAD78]);
              v18 = [v14 value];
              v19 = [v17 initWithUUIDString:v18];

              if (!v19 || ([(COHomeKitAdapter *)self accessoryWithUniqueIdentifier:v19], (v20 = objc_claimAutoreleasedReturnValue()) == 0))
              {

                v23 = 0;
                v3 = v26;
                goto LABEL_17;
              }

              v21 = v20;
              v22 = [v4 arrayByAddingObject:v20];

              v4 = v22;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v3 = v26;
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

- (id)addAlarm:(id)a3 toAccessory:(id)a4 inHome:(id)a5
{
  v8 = a3;
  v9 = a4;
  v18 = 0;
  v10 = [(COHomeKitAdapter *)self alarmsCollectionForAccessory:v9 inHome:a5 isMediaSystem:&v18];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277D2C900]);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __66__COHomeKitAdapter_COMeshAlarmAddOn__addAlarm_toAccessory_inHome___block_invoke;
    v16[3] = &unk_278E15B38;
    v12 = v11;
    v17 = v12;
    [v10 co_addAlarm:v8 completionHandler:v16];
    v13 = v17;
  }

  else
  {
    v14 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [COHomeKitAdapter(COMeshAlarmAddOn) addAlarm:v9 toAccessory:? inHome:?];
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

- (id)updateAlarm:(id)a3 onAccessory:(id)a4 inHome:(id)a5
{
  v8 = a3;
  v9 = a4;
  v18 = 0;
  v10 = [(COHomeKitAdapter *)self alarmsCollectionForAccessory:v9 inHome:a5 isMediaSystem:&v18];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277D2C900]);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__COHomeKitAdapter_COMeshAlarmAddOn__updateAlarm_onAccessory_inHome___block_invoke;
    v16[3] = &unk_278E15B38;
    v12 = v11;
    v17 = v12;
    [v10 co_updateAlarm:v8 completionHandler:v16];
    v13 = v17;
  }

  else
  {
    v14 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [COHomeKitAdapter(COMeshAlarmAddOn) updateAlarm:v9 onAccessory:? inHome:?];
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

- (id)removeAlarm:(id)a3 fromAccessory:(id)a4 inHome:(id)a5
{
  v8 = a3;
  v9 = a4;
  v18 = 0;
  v10 = [(COHomeKitAdapter *)self alarmsCollectionForAccessory:v9 inHome:a5 isMediaSystem:&v18];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277D2C900]);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__COHomeKitAdapter_COMeshAlarmAddOn__removeAlarm_fromAccessory_inHome___block_invoke;
    v16[3] = &unk_278E15B38;
    v12 = v11;
    v17 = v12;
    [v10 co_removeAlarm:v8 completionHandler:v16];
    v13 = v17;
  }

  else
  {
    v14 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [COHomeKitAdapter(COMeshAlarmAddOn) updateAlarm:v9 onAccessory:? inHome:?];
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