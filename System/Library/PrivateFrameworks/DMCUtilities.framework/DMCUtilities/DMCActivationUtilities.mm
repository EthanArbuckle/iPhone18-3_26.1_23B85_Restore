@interface DMCActivationUtilities
+ (id)sharedInstance;
- (id)activationRecord;
- (id)initPrivate;
- (int)activationState;
- (int)hrnMode;
- (void)_clearCache;
- (void)addDidBecomeReadyKey:(id)key callback:(id)callback;
- (void)setIsReady:(BOOL)ready;
@end

@implementation DMCActivationUtilities

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__DMCActivationUtilities_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance__sharedInstance;

  return v2;
}

uint64_t __40__DMCActivationUtilities_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance__sharedInstance = [objc_alloc(*(a1 + 32)) initPrivate];

  return MEMORY[0x1EEE66BB8]();
}

- (id)initPrivate
{
  v9.receiver = self;
  v9.super_class = DMCActivationUtilities;
  v2 = [(DMCActivationUtilities *)&v9 init];
  v3 = v2;
  if (v2)
  {
    hrnModeCache = v2->_hrnModeCache;
    v2->_hrnModeCache = 0;

    v3->_isActivatedCache = 0;
    activationRecordCache = v3->_activationRecordCache;
    v3->_activationRecordCache = 0;

    v3->_isReady = 1;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    didBecomeReadyCallbacks = v3->_didBecomeReadyCallbacks;
    v3->_didBecomeReadyCallbacks = dictionary;
  }

  return v3;
}

- (void)setIsReady:(BOOL)ready
{
  v18 = *MEMORY[0x1E69E9840];
  isReady = self->_isReady;
  self->_isReady = ready;
  if (ready && !isReady)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    allValues = [(NSMutableDictionary *)self->_didBecomeReadyCallbacks allValues];
    v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          (*(*(*(&v13 + 1) + 8 * i) + 16))();
        }

        v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    didBecomeReadyCallbacks = self->_didBecomeReadyCallbacks;
    self->_didBecomeReadyCallbacks = dictionary;
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (int)activationState
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_isReady)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ([(DMCActivationUtilities *)selfCopy isActivatedCache])
    {
      v4 = 2;
    }

    else
    {
      v16 = 0;
      v5 = DMCMAEGetActivationStateWithError(&v16);
      v6 = v16;
      if (v6)
      {
        v7 = *DMCLogObjects();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v18 = v6;
          _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_ERROR, "MAEGetActivationStateWithError() error: %@", buf, 0xCu);
        }

        self->_isReady = 0;
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v9 = DMCkNotificationActivationStateChanged();
        CFNotificationCenterAddObserver(DarwinNotifyCenter, selfCopy, DMCActivationUtilitiesWaitingForReady, v9, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
        v4 = 0;
      }

      else
      {
        v10 = DMCkMAActivationStateActivated();
        v11 = [v5 isEqualToString:v10];

        if (v11)
        {
          [(DMCActivationUtilities *)selfCopy setIsActivatedCache:1];
          v12 = CFNotificationCenterGetDarwinNotifyCenter();
          v13 = DMCkNotificationActivationStateChanged();
          CFNotificationCenterAddObserver(v12, selfCopy, DMCActivationUtilitiesDeactivated, v13, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
          v4 = 2;
        }

        else
        {
          v4 = 1;
        }
      }
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v4 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)activationRecord
{
  v11 = *MEMORY[0x1E69E9840];
  activationRecordCache = [(DMCActivationUtilities *)self activationRecordCache];
  if (!activationRecordCache)
  {
    v8 = 0;
    activationRecordCache = DMCMAECopyActivationRecordWithError(&v8);
    v4 = v8;
    if (v4)
    {
      v5 = *DMCLogObjects();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = v4;
        _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_ERROR, "MAECopyActivationRecordWithError error: %@", buf, 0xCu);
      }

      activationRecordCache = 0;
    }

    [(DMCActivationUtilities *)self setActivationRecordCache:activationRecordCache];
  }

  v6 = *MEMORY[0x1E69E9840];

  return activationRecordCache;
}

- (int)hrnMode
{
  v23 = *MEMORY[0x1E69E9840];
  if (+[DMCMultiUserModeUtilities isSharediPad])
  {
    v3 = 1;
  }

  else if (self->_isReady)
  {
    if (+[DMCFeatureFlags isHRNEnabled])
    {
      v4 = *DMCLogObjects();
      v3 = 2;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_1B1630000, v4, OS_LOG_TYPE_DEBUG, "hrnMode returning yes because of feature flag", &v21, 2u);
      }
    }

    else
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      hrnModeCache = [(DMCActivationUtilities *)selfCopy hrnModeCache];
      v8 = hrnModeCache;
      if (hrnModeCache)
      {
        bOOLValue = [hrnModeCache BOOLValue];
        v10 = *DMCLogObjects();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = "no";
          if (bOOLValue)
          {
            v11 = "yes";
          }

          v21 = 136446210;
          v22 = v11;
          _os_log_impl(&dword_1B1630000, v10, OS_LOG_TYPE_DEBUG, "hrnMode returning %{public}s from cache", &v21, 0xCu);
        }

        if (bOOLValue)
        {
          v3 = 2;
        }

        else
        {
          v3 = 1;
        }
      }

      else if ([(DMCActivationUtilities *)selfCopy activationState]== 2)
      {
        activationRecord = [(DMCActivationUtilities *)selfCopy activationRecord];
        v13 = [activationRecord objectForKeyedSubscript:@"DeviceConfigurationFlags"];
        v14 = [v13 integerValue] & 0x21;
        v15 = *DMCLogObjects();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v16 = "no";
          if (v14 == 33)
          {
            v16 = "yes";
          }

          v21 = 136446210;
          v22 = v16;
          _os_log_impl(&dword_1B1630000, v15, OS_LOG_TYPE_DEBUG, "hrnMode returning %{public}s from activation record", &v21, 0xCu);
        }

        v17 = [MEMORY[0x1E696AD98] numberWithBool:v14 == 33];
        [(DMCActivationUtilities *)selfCopy setHrnModeCache:v17];

        if (v14 == 33)
        {
          v3 = 2;
        }

        else
        {
          v3 = 1;
        }
      }

      else
      {
        v18 = *DMCLogObjects();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&dword_1B1630000, v18, OS_LOG_TYPE_DEBUG, "hrnMode returning unknown because the device isn't activated", &v21, 2u);
        }

        v3 = 0;
      }

      objc_sync_exit(selfCopy);
    }
  }

  else
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_DEBUG, "hrnMode returning unknown because it's not ready", &v21, 2u);
    }

    v3 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)addDidBecomeReadyKey:(id)key callback:(id)callback
{
  keyCopy = key;
  if (self->_isReady)
  {
    v7 = *DMCLogObjects();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_FAULT, "Ignoring an added callback when DMCActivationUtilities are already ready", v9, 2u);
    }
  }

  else
  {
    v8 = MEMORY[0x1B2731A20](callback);
    [(NSMutableDictionary *)self->_didBecomeReadyCallbacks setObject:v8 forKeyedSubscript:keyCopy];
  }
}

- (void)_clearCache
{
  observer = self;
  objc_sync_enter(observer);
  [(DMCActivationUtilities *)observer setHrnModeCache:0];
  [(DMCActivationUtilities *)observer setIsActivatedCache:0];
  [(DMCActivationUtilities *)observer setActivationRecordCache:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = DMCkNotificationActivationStateChanged();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, observer, v3, 0);
  objc_sync_exit(observer);
}

@end