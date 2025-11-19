@interface _DPDataProtectionMaster
+ (id)sharedInstance;
- (BOOL)deviceIsLocked;
- (BOOL)deviceIsPasswordConfigured;
- (BOOL)isDataAvailableFor:(id)a3;
- (BOOL)isDataAvailableForClassA;
- (BOOL)isDataAvailableForClassC;
- (_DPDataProtectionMaster)init;
- (id)registerStateChangeHandler:(id)a3;
- (void)dealloc;
- (void)deregisterStateChangeHandler:(id)a3;
- (void)handleKeyBagLockNotification;
@end

@implementation _DPDataProtectionMaster

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41___DPDataProtectionMaster_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance_sharedInstance_0;

  return v2;
}

- (_DPDataProtectionMaster)init
{
  v34.receiver = self;
  v34.super_class = _DPDataProtectionMaster;
  v2 = [(_DPDataProtectionMaster *)&v34 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.DifferentialPrivacy.DataProtection.state", v3);
    stateQueue = v2->_stateQueue;
    v2->_stateQueue = v4;

    v2->_deviceFormatedForContentProtection = 0;
    v6 = MEMORY[0x277CBEC10];
    v7 = [MEMORY[0x277CBEC10] mutableCopy];
    handlers = v2->_handlers;
    v2->_handlers = v7;

    v9 = [v6 mutableCopy];
    availableState = v2->_availableState;
    v2->_availableState = v9;

    v11 = v2->_availableState;
    v12 = +[_DPDataProtectionStateMonitor dataProtectionClassA];
    [(NSMutableDictionary *)v11 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v12];

    v13 = v2->_availableState;
    v14 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
    v15 = MEMORY[0x277CBEC38];
    [(NSMutableDictionary *)v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v14];

    v16 = v2->_availableState;
    v17 = +[_DPDataProtectionStateMonitor dataProtectionClassD];
    [(NSMutableDictionary *)v16 setObject:v15 forKeyedSubscript:v17];

    v18 = MKBDeviceFormattedForContentProtection();
    v2->_deviceFormatedForContentProtection = v18 == 1;
    if (v18 == 1)
    {
      v19 = v2->_availableState;
      v20 = +[_DPDataProtectionStateMonitor dataProtectionClassA];
      [(NSMutableDictionary *)v19 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v20];

      v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[_DPDataProtectionMaster isDataAvailableForClassC](v2, "isDataAvailableForClassC")}];
      v22 = v2->_availableState;
      v23 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
      [(NSMutableDictionary *)v22 setObject:v21 forKeyedSubscript:v23];

      v24 = v2->_availableState;
      v25 = +[_DPDataProtectionStateMonitor dataProtectionClassD];
      [(NSMutableDictionary *)v24 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v25];

      v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v27 = dispatch_queue_create("com.apple.DifferentialPrivacy.DataProtection.notify", v26);
      notifyQueue = v2->_notifyQueue;
      v2->_notifyQueue = v27;

      v2->_notifyToken = 0;
      objc_initWeak(&location, v2);
      v29 = v2->_notifyQueue;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __31___DPDataProtectionMaster_init__block_invoke;
      v31[3] = &unk_27858B370;
      objc_copyWeak(&v32, &location);
      notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &v2->_notifyToken, v29, v31);
      v2->_notifyEnabled = 1;
      objc_destroyWeak(&v32);
      objc_destroyWeak(&location);
    }
  }

  return v2;
}

- (void)dealloc
{
  if (self->_notifyEnabled)
  {
    notifyToken = self->_notifyToken;
    stateQueue = self->_stateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34___DPDataProtectionMaster_dealloc__block_invoke;
    block[3] = &__block_descriptor_36_e5_v8__0l;
    v7 = notifyToken;
    dispatch_sync(stateQueue, block);
  }

  v5.receiver = self;
  v5.super_class = _DPDataProtectionMaster;
  [(_DPDataProtectionMaster *)&v5 dealloc];
}

- (void)handleKeyBagLockNotification
{
  v39 = *MEMORY[0x277D85DE8];
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__7;
  v35[4] = __Block_byref_object_dispose__7;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__7;
  v33 = __Block_byref_object_dispose__7;
  v34 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55___DPDataProtectionMaster_handleKeyBagLockNotification__block_invoke;
  block[3] = &unk_27858B3B8;
  block[4] = self;
  block[5] = v35;
  block[6] = &v29;
  dispatch_sync(stateQueue, block);
  v4 = [MEMORY[0x277CBEC10] mutableCopy];
  v5 = self->_stateQueue;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __55___DPDataProtectionMaster_handleKeyBagLockNotification__block_invoke_2;
  v25[3] = &unk_27858B3E0;
  v27 = v35;
  v25[4] = self;
  v6 = v4;
  v26 = v6;
  dispatch_sync(v5, v25);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v38 count:16];
  if (v8)
  {
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [v7 objectForKeyedSubscript:*(*(&v21 + 1) + 8 * v10)];
        [v11 BOOLValue];

        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v12 = v30[5];
        v13 = [v12 countByEnumeratingWithState:&v17 objects:v37 count:16];
        if (v13)
        {
          v14 = *v18;
          do
          {
            v15 = 0;
            do
            {
              if (*v18 != v14)
              {
                objc_enumerationMutation(v12);
              }

              (*(*(*(&v17 + 1) + 8 * v15++) + 16))();
            }

            while (v13 != v15);
            v13 = [v12 countByEnumeratingWithState:&v17 objects:v37 count:16];
          }

          while (v13);
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v38 count:16];
    }

    while (v8);
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(v35, 8);

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)deviceIsPasswordConfigured
{
  v2 = MGCopyAnswer();
  v3 = v2;
  v4 = *MEMORY[0x277CBED28];
  if (v2)
  {
    CFRelease(v2);
  }

  return v3 == v4;
}

- (BOOL)deviceIsLocked
{
  v2 = MGCopyAnswer();
  v3 = v2;
  v4 = *MEMORY[0x277CBED28];
  if (v2)
  {
    CFRelease(v2);
  }

  return v3 == v4;
}

- (BOOL)isDataAvailableForClassC
{
  if ([(_DPDataProtectionMaster *)self deviceHasBeenUnlockedSinceBoot])
  {
    return 1;
  }

  else
  {
    return ![(_DPDataProtectionMaster *)self deviceIsPasswordConfigured];
  }
}

- (BOOL)isDataAvailableForClassA
{
  if ([(_DPDataProtectionMaster *)self deviceIsLocked])
  {
    return ![(_DPDataProtectionMaster *)self deviceIsPasswordConfigured];
  }

  else
  {
    return 1;
  }
}

- (BOOL)isDataAvailableFor:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_deviceFormatedForContentProtection)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    stateQueue = self->_stateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46___DPDataProtectionMaster_isDataAvailableFor___block_invoke;
    block[3] = &unk_27858B408;
    block[4] = self;
    v10 = v4;
    v11 = &v12;
    dispatch_sync(stateQueue, block);
    v7 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

- (id)registerStateChangeHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CCAD78] UUID];
    stateQueue = self->_stateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54___DPDataProtectionMaster_registerStateChangeHandler___block_invoke;
    block[3] = &unk_27858B430;
    block[4] = self;
    v7 = v5;
    v12 = v7;
    v13 = v4;
    dispatch_sync(stateQueue, block);
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)deregisterStateChangeHandler:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56___DPDataProtectionMaster_deregisterStateChangeHandler___block_invoke;
  v7[3] = &unk_27858AD90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(stateQueue, v7);
}

@end