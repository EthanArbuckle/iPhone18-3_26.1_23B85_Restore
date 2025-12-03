@interface HCSettings
+ (id)additionalInfoForPrefenceUpdate;
- (BOOL)BOOLValueForPreferenceKey:(id)key withDefaultValue:(BOOL)value;
- (BOOL)_switchFromRootUserIfNecessary:(id)necessary;
- (BOOL)shouldSaveUpdateInfoForPreferenceKey:(id)key;
- (HCSettings)init;
- (double)cgfloatValueForPreferenceKey:(id)key withDefaultValue:(double)value;
- (id)_valueForPreferenceKey:(id)key;
- (id)nanoDomainAccessor;
- (id)objectValueForKey:(id)key withClass:(Class)class andDefaultValue:(id)value;
- (id)preferenceDomainForPreferenceKey:(id)key;
- (int64_t)integerValueForKey:(id)key withDefaultValue:(int64_t)value;
- (void)_handlePreferenceChanged:(id)changed;
- (void)_registerForNotification:(id)notification;
- (void)_synchronizeIfNecessary:(id)necessary;
- (void)dealloc;
- (void)logMessage:(id)message;
- (void)pairedWatchDidChange:(id)change;
- (void)registerUpdateBlock:(id)block forRetrieveSelector:(SEL)selector withListener:(id)listener;
- (void)resetValueForSelector:(SEL)selector;
- (void)saveUpdateInfoIfNeededForPreferenceKey:(id)key toDomain:(__CFString *)domain;
- (void)setValue:(id)value forPreferenceKey:(id)key;
@end

@implementation HCSettings

+ (id)additionalInfoForPrefenceUpdate
{
  v2 = objc_opt_new();
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v3 setDateFormat:@"yyyy-MM-dd"];
  v4 = [MEMORY[0x1E695DF00] now];
  v5 = [v3 stringFromDate:v4];

  if (+[HCUtilities currentProcessIsHeard])
  {
    v6 = @"heard";
  }

  else if (+[HCUtilities currentProcessIsSpringBoard])
  {
    v6 = @"SpringBoard";
  }

  else if (+[HCUtilities currentProcessIsPreferences])
  {
    v6 = @"Preferences";
  }

  else
  {
    v6 = @"Other";
  }

  [v2 setValue:v6 forKey:v5];

  return v2;
}

- (HCSettings)init
{
  v19.receiver = self;
  v19.super_class = HCSettings;
  v2 = [(HCSettings *)&v19 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    registeredNotifications = v2->_registeredNotifications;
    v2->_registeredNotifications = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    synchronizePreferences = v2->_synchronizePreferences;
    v2->_synchronizePreferences = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    updateBlocks = v2->_updateBlocks;
    v2->_updateBlocks = v7;

    v2->_syncLock._os_unfair_lock_opaque = 0;
    keysToSync = [(HCSettings *)v2 keysToSync];
    v10 = [keysToSync count];

    if (v10)
    {
      v11 = dispatch_queue_create("accessibility.hearing.domain.accessor", 0);
      [(HCSettings *)v2 setNanoDomainAccessorQueue:v11];

      nanoDomainAccessorQueue = [(HCSettings *)v2 nanoDomainAccessorQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __18__HCSettings_init__block_invoke;
      block[3] = &unk_1E857EDF0;
      v13 = v2;
      v18 = v13;
      dispatch_async(nanoDomainAccessorQueue, block);

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v13 selector:sel_pairedWatchDidChange_ name:*MEMORY[0x1E69B3688] object:0];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:v13 selector:sel_pairedWatchDidChange_ name:*MEMORY[0x1E69B3660] object:0];
    }
  }

  return v2;
}

void __18__HCSettings_init__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69B3588]) initWithDomain:@".GlobalPreferences"];
  [*(a1 + 32) setGlobalDomainAccessor:v2];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HCSettings;
  [(HCSettings *)&v4 dealloc];
}

- (void)pairedWatchDidChange:(id)change
{
  nanoDomainAccessorQueue = [(HCSettings *)self nanoDomainAccessorQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__HCSettings_pairedWatchDidChange___block_invoke;
  block[3] = &unk_1E857EDF0;
  block[4] = self;
  dispatch_async(nanoDomainAccessorQueue, block);
}

void __35__HCSettings_pairedWatchDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (id)nanoDomainAccessor
{
  domainAccessor = self->_domainAccessor;
  if (!domainAccessor)
  {
    v4 = objc_alloc(MEMORY[0x1E69B3588]);
    nanoPreferenceDomain = [(HCSettings *)self nanoPreferenceDomain];
    v6 = [v4 initWithDomain:nanoPreferenceDomain];
    v7 = self->_domainAccessor;
    self->_domainAccessor = v6;

    domainAccessor = self->_domainAccessor;
  }

  return domainAccessor;
}

- (void)_handlePreferenceChanged:(id)changed
{
  changedCopy = changed;
  [changedCopy stringByReplacingOccurrencesOfString:@"_AXNotification_" withString:&stru_1F54E6330];
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v4 = v10 = 0;
  AX_PERFORM_WITH_LOCK();
  [v6[5] enumerateObjectsUsingBlock:&__block_literal_global_1];

  _Block_object_dispose(&v5, 8);
}

void __39__HCSettings__handlePreferenceChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) synchronizePreferences];
  [v2 addObject:*(a1 + 40)];

  v7 = [*(a1 + 32) updateBlocks];
  v3 = [v7 objectForKey:*(a1 + 40)];
  v4 = [v3 copy];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __39__HCSettings__handlePreferenceChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectAtIndexedSubscript:1];
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

- (void)resetValueForSelector:(SEL)selector
{
  v4 = [(HCSettings *)self preferenceKeyForSelector:selector];
  [(HCSettings *)self setValue:0 forPreferenceKey:v4];
}

- (void)_registerForNotification:(id)notification
{
  notificationCopy = notification;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__HCSettings__registerForNotification___block_invoke;
  v9[3] = &unk_1E857EDF0;
  v9[4] = self;
  if (_registerForNotification__onceToken != -1)
  {
    dispatch_once(&_registerForNotification__onceToken, v9);
  }

  v5 = _registerForNotification__RegistrationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__HCSettings__registerForNotification___block_invoke_2;
  block[3] = &unk_1E857ED78;
  block[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_sync(v5, block);
}

void __39__HCSettings__registerForNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v6 = NSStringFromClass(v2);
  v3 = v6;
  v4 = dispatch_queue_create([v6 UTF8String], 0);
  v5 = _registerForNotification__RegistrationQueue;
  _registerForNotification__RegistrationQueue = v4;
}

void __39__HCSettings__registerForNotification___block_invoke_2(uint64_t a1)
{
  v6 = [*(a1 + 32) registeredNotifications];
  if (([v6 containsObject:*(a1 + 40)] & 1) == 0)
  {
    [v6 addObject:*(a1 + 40)];
    v2 = [*(a1 + 32) notificationForPreferenceKey:*(a1 + 40)];
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Registering for %@", v2];
    [v3 logMessage:v4];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), _axSettingsHandlePreferenceChanged, v2, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

- (void)registerUpdateBlock:(id)block forRetrieveSelector:(SEL)selector withListener:(id)listener
{
  blockCopy = block;
  listenerCopy = listener;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:listenerCopy];
  v13 = blockCopy;
  v12 = listenerCopy;
  v9 = listenerCopy;
  v10 = v8;
  v11 = blockCopy;
  AX_PERFORM_WITH_LOCK();
}

void __67__HCSettings_registerUpdateBlock_forRetrieveSelector_withListener___block_invoke(uint64_t a1)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) updateBlocks];
  v3 = [*(a1 + 32) preferenceKeyForSelector:*(a1 + 64)];
  v4 = [v2 objectForKey:v3];
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = [v5 copy];
    v16[0] = *(a1 + 40);
    v7 = MEMORY[0x1DA731E20]();
    v16[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];

    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
      [v2 setObject:v4 forKey:v3];
    }

    [v4 addObject:v8];
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Registering %@ - %@", v3, *(a1 + 48)];
    [v9 logMessage:v10];

    v11 = objc_getAssociatedObject(*(a1 + 48), &HCSettingsDestructionHelperKey);
    if (!v11)
    {
      v11 = [[HCSettingsListenerHelper alloc] initWithListenerAddress:*(a1 + 48) andDelegate:*(a1 + 32)];
      objc_setAssociatedObject(*(a1 + 48), &HCSettingsDestructionHelperKey, v11, 1);
    }

    [(HCSettingsListenerHelper *)v11 addSelectorKey:*(a1 + 64)];
    [*(a1 + 32) _registerForNotification:v3];
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __67__HCSettings_registerUpdateBlock_forRetrieveSelector_withListener___block_invoke_2;
    v14[3] = &unk_1E857EE38;
    v15 = *(a1 + 40);
    v12 = [v4 indexesOfObjectsPassingTest:v14];
    if ([v12 count])
    {
      [v4 removeObjectsAtIndexes:v12];
    }

    v6 = v15;
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __67__HCSettings_registerUpdateBlock_forRetrieveSelector_withListener___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndexedSubscript:0];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (BOOL)_switchFromRootUserIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if (!geteuid())
  {
    v6 = getpwnam("mobile");
    if (v6)
    {
      pw_uid = v6->pw_uid;
      if (pw_uid)
      {
        seteuid(pw_uid);
        necessaryCopy[2](necessaryCopy);
        seteuid(0);
        v4 = 1;
        goto LABEL_3;
      }

      v8 = AXLogSettings();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [HCSettings _switchFromRootUserIfNecessary:v8];
      }
    }
  }

  v4 = 0;
LABEL_3:

  return v4;
}

- (void)setValue:(id)value forPreferenceKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __40__HCSettings_setValue_forPreferenceKey___block_invoke;
  v18[3] = &unk_1E857EE88;
  v18[4] = self;
  v8 = valueCopy;
  v19 = v8;
  v9 = keyCopy;
  v20 = v9;
  LOBYTE(keyCopy) = [(HCSettings *)self _switchFromRootUserIfNecessary:v18];

  if ((keyCopy & 1) == 0)
  {
    if ([(HCSettings *)self shouldStoreLocally])
    {
      v10 = [(HCSettings *)self preferenceDomainForPreferenceKey:v9];
      CFPreferencesSetAppValue(v9, v8, v10);
      [(HCSettings *)self saveUpdateInfoIfNeededForPreferenceKey:v9 toDomain:v10];
      CFPreferencesAppSynchronize(v10);
      v11 = [(HCSettings *)self notificationForPreferenceKey:v9];
      if (v11)
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, v11, 0, 0, 1u);
      }
    }

    keysToSync = [(HCSettings *)self keysToSync];
    if ([keysToSync count] && objc_msgSend(keysToSync, "containsObject:", v9))
    {
      nanoDomainAccessorQueue = [(HCSettings *)self nanoDomainAccessorQueue];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __40__HCSettings_setValue_forPreferenceKey___block_invoke_2;
      v15[3] = &unk_1E857EE88;
      v15[4] = self;
      v16 = v8;
      v17 = v9;
      dispatch_async(nanoDomainAccessorQueue, v15);
    }
  }
}

void __40__HCSettings_setValue_forPreferenceKey___block_invoke_2(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) nanoDomainAccessor];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
  v3 = [v2 synchronize];
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error synchronizing accessor %@", v3];
    [v4 logMessage:v5];
  }

  v6 = objc_opt_new();
  v7 = [*(a1 + 32) nanoPreferenceDomain];
  v8 = MEMORY[0x1E695DFD8];
  v12[0] = *(a1 + 48);
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10 = [v8 setWithArray:v9];
  [v6 synchronizeNanoDomain:v7 keys:v10];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_synchronizeIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v3 = necessaryCopy;
  AX_PERFORM_WITH_LOCK();
}

void __38__HCSettings__synchronizeIfNecessary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) synchronizePreferences];
  if ([v2 containsObject:*(a1 + 40)])
  {
    CFPreferencesAppSynchronize([*(a1 + 32) preferenceDomainForPreferenceKey:*(a1 + 40)]);
    [v2 removeObject:*(a1 + 40)];
  }
}

- (id)objectValueForKey:(id)key withClass:(Class)class andDefaultValue:(id)value
{
  valueCopy = value;
  v8 = [(HCSettings *)self _valueForPreferenceKey:key];
  if (!v8 || (objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = valueCopy;

    v8 = v9;
  }

  return v8;
}

- (int64_t)integerValueForKey:(id)key withDefaultValue:(int64_t)value
{
  v5 = [(HCSettings *)self _valueForPreferenceKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = [v5 integerValue];
  }

  return value;
}

- (BOOL)BOOLValueForPreferenceKey:(id)key withDefaultValue:(BOOL)value
{
  v5 = [(HCSettings *)self _valueForPreferenceKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = [v5 BOOLValue];
  }

  return value;
}

- (double)cgfloatValueForPreferenceKey:(id)key withDefaultValue:(double)value
{
  keyCopy = key;
  v7 = objc_opt_class();
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:value];
  v9 = [(HCSettings *)self objectValueForKey:keyCopy withClass:v7 andDefaultValue:v8];

  [v9 doubleValue];
  v11 = v10;

  return v11;
}

- (id)_valueForPreferenceKey:(id)key
{
  keyCopy = key;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __37__HCSettings__valueForPreferenceKey___block_invoke;
  v21[3] = &unk_1E857EEB0;
  v23 = &v24;
  v21[4] = self;
  v5 = keyCopy;
  v22 = v5;
  if ([(HCSettings *)self _switchFromRootUserIfNecessary:v21])
  {
    v6 = v25[5];
    v7 = v22;
  }

  else
  {

    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__0;
    v19 = __Block_byref_object_dispose__0;
    v20 = 0;
    if ([(HCSettings *)self shouldStoreLocally])
    {
      [(HCSettings *)self _synchronizeIfNecessary:v5];
      [(HCSettings *)self _registerForNotification:v5];
      v8 = CFPreferencesCopyAppValue(v5, [(HCSettings *)self preferenceDomainForPreferenceKey:v5]);
      v9 = v16[5];
      v16[5] = v8;
    }

    else
    {
      nanoDomainAccessorQueue = [(HCSettings *)self nanoDomainAccessorQueue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __37__HCSettings__valueForPreferenceKey___block_invoke_2;
      v12[3] = &unk_1E857EED8;
      v12[4] = self;
      v14 = &v15;
      v13 = v5;
      dispatch_sync(nanoDomainAccessorQueue, v12);
    }

    v6 = v16[5];
    _Block_object_dispose(&v15, 8);
    v7 = v20;
  }

  _Block_object_dispose(&v24, 8);

  return v6;
}

uint64_t __37__HCSettings__valueForPreferenceKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _valueForPreferenceKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __37__HCSettings__valueForPreferenceKey___block_invoke_2(uint64_t a1)
{
  v8 = [*(a1 + 32) nanoDomainAccessor];
  v2 = [v8 synchronize];
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error synchronizing accessor %@", v2];
    [v3 logMessage:v4];
  }

  v5 = [v8 objectForKey:*(a1 + 40)];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)shouldSaveUpdateInfoForPreferenceKey:(id)key
{
  if (!key)
  {
    return 0;
  }

  keyCopy = key;
  keysMonitoredForUpdates = [(HCSettings *)self keysMonitoredForUpdates];
  v6 = [keysMonitoredForUpdates containsObject:keyCopy];

  return v6;
}

- (void)saveUpdateInfoIfNeededForPreferenceKey:(id)key toDomain:(__CFString *)domain
{
  keyCopy = key;
  if ([(HCSettings *)self shouldSaveUpdateInfoForPreferenceKey:?])
  {
    v6 = +[HCSettings additionalInfoForPrefenceUpdate];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", keyCopy, @"_UpdateInfo"];
    CFPreferencesSetAppValue(v7, v6, domain);
  }
}

- (id)preferenceDomainForPreferenceKey:(id)key
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return &stru_1F54E6330;
}

- (void)logMessage:(id)message
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end