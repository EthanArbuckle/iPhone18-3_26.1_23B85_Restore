@interface NCCGlanceUtility
+ (NCCGlanceUtility)sharedUtility;
+ (id)substituteFocusSymbolNameIfNecessary:(id)a3;
- (BOOL)companionSupportsGreyMatter;
- (BOOL)companionSupportsR2;
- (BOOL)isEitherDeviceGreenTea;
- (BOOL)isTinkerPairedDevice;
- (BOOL)maybePaired;
- (NCCGlanceUtility)init;
- (NSString)UDID;
- (NSString)companionProductType;
- (void)_updateNRDevice:(id)a3;
- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5;
- (void)runOrQueueForPairedOrFirstUnlockAction:(id)a3;
@end

@implementation NCCGlanceUtility

- (NCCGlanceUtility)init
{
  v16.receiver = self;
  v16.super_class = NCCGlanceUtility;
  v2 = [(NCCGlanceUtility *)&v16 init];
  if (v2)
  {
    v3 = dispatch_get_global_queue(21, 0);
    v4 = dispatch_queue_create_with_target_V2("com.apple.nanocontrolcenter.nrdevice-queue", 0, v3);
    workQueue = v2->_workQueue;
    v2->_workQueue = v4;

    v2->_propertyLock._os_unfair_lock_opaque = 0;
    v6 = [MEMORY[0x277CBEB18] array];
    onPairedActions = v2->_onPairedActions;
    v2->_onPairedActions = v6;

    v8 = [MEMORY[0x277CBEB18] array];
    onFirstUnlockActions = v2->_onFirstUnlockActions;
    v2->_onFirstUnlockActions = v8;

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v2 selector:sel__updateNRDevice_ name:*MEMORY[0x277D2BC48] object:0];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v2 selector:sel__updateNRDevice_ name:*MEMORY[0x277D2BC50] object:0];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v2 selector:sel__updateNRDevice_ name:*MEMORY[0x277D2BC68] object:0];

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v2 selector:sel__updateNRDevice_ name:*MEMORY[0x277D2BC78] object:0];

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v2 selector:sel__updateNRDevice_ name:*MEMORY[0x277D2BC88] object:0];

    [(NCCGlanceUtility *)v2 _updateNRDevice:0];
  }

  return v2;
}

- (void)_updateNRDevice:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [a3 name];
  v5 = v4;
  v6 = @"<nil>";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = +[NCCLogging ncc];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[NCCGlanceUtility _updateNRDevice:]";
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_25AF0B000, v8, OS_LOG_TYPE_DEFAULT, "%s notification name: %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  workQueue = self->_workQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__NCCGlanceUtility__updateNRDevice___block_invoke;
  v11[3] = &unk_27992F290;
  objc_copyWeak(&v13, buf);
  v12 = v7;
  v10 = v7;
  dispatch_async(workQueue, v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __36__NCCGlanceUtility__updateNRDevice___block_invoke(uint64_t a1)
{
  v28[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277D2BCF8] sharedInstance];
    v4 = [v3 getActivePairedDeviceIncludingAltAccount];

    v28[0] = *MEMORY[0x277D2BD48];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    [v4 addPropertyObserver:WeakRetained forPropertyChanges:v5];

    v6 = [v4 valueForProperty:*MEMORY[0x277D2BB28]];
    v18 = [v6 BOOLValue];

    v7 = [v4 valueForProperty:*MEMORY[0x277D2BBC0]];
    v8 = [v4 valueForProperty:*MEMORY[0x277D2BC30]];
    v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"59C2CEC2-60CD-4346-B9E0-B3BC5C98CA75"];
    v10 = [v4 supportsCapability:v9];

    v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"5FD17775-116B-456A-A02A-A2C8EA78027F"];
    LOBYTE(v9) = [v4 supportsCapability:v11];

    v12 = [v4 valueForProperty:*MEMORY[0x277D2BB00]];
    v13 = [v12 BOOLValue];

    v14 = [MEMORY[0x277D75418] currentDevice];
    v15 = [v14 sf_isChinaRegionCellularDevice];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__NCCGlanceUtility__updateNRDevice___block_invoke_2;
    block[3] = &unk_27992F268;
    objc_copyWeak(&v23, (a1 + 40));
    v24 = v18;
    v25 = (v15 | v13) & 1;
    v20 = v7;
    v21 = v8;
    v26 = v10;
    v27 = v9;
    v22 = *(a1 + 32);
    v16 = v8;
    v17 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v23);
  }
}

void __36__NCCGlanceUtility__updateNRDevice___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_21;
  }

  os_unfair_lock_lock(WeakRetained + 4);
  LOBYTE(v3[2]._os_unfair_lock_opaque) = *(a1 + 64);
  HIBYTE(v3[2]._os_unfair_lock_opaque) = *(a1 + 65);
  objc_storeStrong(&v3[6], *(a1 + 32));
  objc_storeStrong(&v3[8], *(a1 + 40));
  BYTE1(v3[2]._os_unfair_lock_opaque) = *(a1 + 66);
  if (*(a1 + 64))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 67);
  }

  BYTE2(v3[2]._os_unfair_lock_opaque) = v4 & 1;
  os_unfair_lock_unlock(v3 + 4);
  if ([*(a1 + 48) isEqualToString:*MEMORY[0x277D2BC68]])
  {
    v5 = 1;
LABEL_9:
    LOBYTE(v3[3]._os_unfair_lock_opaque) = v5;
    goto LABEL_10;
  }

  if ([*(a1 + 48) isEqualToString:*MEMORY[0x277D2BC78]])
  {
    v5 = 0;
    goto LABEL_9;
  }

LABEL_10:
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"com.apple.ControlCenter.activePairedDeviceChanged" object:v3];

  v7 = +[NCCGlanceUtility sharedUtility];
  v8 = [v7 maybePaired];

  v9 = +[NCCLogging ncc];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 48);
    *buf = 136315650;
    v23 = "[NCCGlanceUtility _updateNRDevice:]_block_invoke_2";
    v24 = 2114;
    v25 = v10;
    v26 = 1024;
    v27 = v8;
    _os_log_impl(&dword_25AF0B000, v9, OS_LOG_TYPE_DEFAULT, "%s notification name: %{public}@; maybePaired: %{BOOL}d", buf, 0x1Cu);
  }

  if (v8)
  {
    v11 = [*&v3[12]._os_unfair_lock_opaque copy];
    [*&v3[12]._os_unfair_lock_opaque removeAllObjects];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v12);
          }

          (*(*(*(&v17 + 1) + 8 * v16) + 16))(*(*(&v17 + 1) + 8 * v16));
          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }
  }

LABEL_21:
}

+ (NCCGlanceUtility)sharedUtility
{
  if (sharedUtility_onceToken != -1)
  {
    +[NCCGlanceUtility sharedUtility];
  }

  v3 = sharedUtility_sharedInstance;

  return v3;
}

uint64_t __33__NCCGlanceUtility_sharedUtility__block_invoke()
{
  sharedUtility_sharedInstance = objc_alloc_init(NCCGlanceUtility);

  return MEMORY[0x2821F96F8]();
}

+ (id)substituteFocusSymbolNameIfNecessary:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"emoji.face.grinning"])
  {
    v4 = @"emoji.face.grinning.inverse";
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (BOOL)isTinkerPairedDevice
{
  os_unfair_lock_lock(&self->_propertyLock);
  isTinkerPairedDevice = self->_isTinkerPairedDevice;
  os_unfair_lock_unlock(&self->_propertyLock);
  return isTinkerPairedDevice;
}

- (NSString)companionProductType
{
  os_unfair_lock_lock(&self->_propertyLock);
  v3 = self->_companionProductType;
  os_unfair_lock_unlock(&self->_propertyLock);

  return v3;
}

- (NSString)UDID
{
  os_unfair_lock_lock(&self->_propertyLock);
  v3 = self->_UDID;
  os_unfair_lock_unlock(&self->_propertyLock);

  return v3;
}

- (BOOL)companionSupportsR2
{
  os_unfair_lock_lock(&self->_propertyLock);
  companionSupportsR2 = self->_companionSupportsR2;
  os_unfair_lock_unlock(&self->_propertyLock);
  return companionSupportsR2;
}

- (BOOL)companionSupportsGreyMatter
{
  os_unfair_lock_lock(&self->_propertyLock);
  companionSupportsGreyMatter = self->_companionSupportsGreyMatter;
  os_unfair_lock_unlock(&self->_propertyLock);
  return companionSupportsGreyMatter;
}

- (BOOL)isEitherDeviceGreenTea
{
  os_unfair_lock_lock(&self->_propertyLock);
  isEitherDeviceGreenTea = self->_isEitherDeviceGreenTea;
  os_unfair_lock_unlock(&self->_propertyLock);
  return isEitherDeviceGreenTea;
}

- (void)runOrQueueForPairedOrFirstUnlockAction:(id)a3
{
  v4 = a3;
  if ([(NCCGlanceUtility *)self maybePaired])
  {
    if (MKBDeviceUnlockedSinceBoot() == 1)
    {
      v4[2](v4, 0);
    }

    else
    {
      [(NCCGlanceUtility *)self runOrQueueForPairedOrFirstUnlockAction:v4, v5];
    }
  }

  else
  {
    [(NCCGlanceUtility *)self runOrQueueForPairedOrFirstUnlockAction:v4];
  }
}

- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NCCLogging ncc];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 pairingID];
    v13 = 134218754;
    v14 = self;
    v15 = 2112;
    v16 = v12;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_25AF0B000, v11, OS_LOG_TYPE_DEFAULT, "propertyDidChange: self: (%p); device: (%@); property: (%@); fromValue: (%@)", &v13, 0x2Au);
  }

  if ([v9 isEqualToString:*MEMORY[0x277D2BD48]])
  {
    [(NCCGlanceUtility *)self _updateNRDevice:0];
  }
}

- (BOOL)maybePaired
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = NPSHasCompletedInitialSync();
  v4 = +[NCCLogging ncc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[NCCGlanceUtility maybePaired]";
    v12 = 1024;
    v13 = v3;
    _os_log_impl(&dword_25AF0B000, v4, OS_LOG_TYPE_DEFAULT, "%s initialSyncComplete: %{BOOL}d", &v10, 0x12u);
  }

  if (self && self->_didPair)
  {
    v5 = +[NCCLogging ncc];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = +[NCCGlanceUtility sharedUtility];
      v7 = v6;
      if (v6)
      {
        v8 = *(v6 + 12);
      }

      else
      {
        v8 = 0;
      }

      v10 = 136315650;
      v11 = "[NCCGlanceUtility maybePaired]";
      v12 = 1024;
      v13 = v8;
      v14 = 1024;
      v15 = v3;
      _os_log_impl(&dword_25AF0B000, v5, OS_LOG_TYPE_DEFAULT, "%s didPair: %{BOOL}d; initialSyncComplete: %{BOOL}d", &v10, 0x18u);
    }
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

void __59__NCCGlanceUtility_runOrQueueForPairedOrFirstUnlockAction___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 56);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 copy];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 56);
  }

  else
  {
    v6 = 0;
  }

  [v6 removeAllObjects];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v12 + 1) + 8 * v11) + 16))(*(*(&v12 + 1) + 8 * v11));
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)runOrQueueForPairedOrFirstUnlockAction:(uint64_t)a1 .cold.1(uint64_t a1, const void *a2)
{
  if (a1)
  {
    v3 = *(a1 + 48);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = _Block_copy(a2);
  [v4 addObject:v5];
}

- (void)runOrQueueForPairedOrFirstUnlockAction:(void *)a3 .cold.2(int *a1, const void *a2, void *a3)
{
  v5 = a1;
  if (a1)
  {
    a1 = *(a1 + 7);
  }

  v6 = [a1 count];
  if (v5)
  {
    v7 = *(v5 + 7);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = _Block_copy(a2);
  [v8 addObject:v9];

  if (!v6)
  {
    *a3 = MEMORY[0x277D85DD0];
    a3[1] = 3221225472;
    a3[2] = __59__NCCGlanceUtility_runOrQueueForPairedOrFirstUnlockAction___block_invoke;
    a3[3] = &unk_27992F2D8;
    a3[4] = v5;
    notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", v5 + 5, MEMORY[0x277D85CD0], a3);
  }
}

@end