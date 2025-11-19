@interface CAFCarManager
- (BOOL)_isEntitled;
- (BOOL)shouldAllocAccessoryType:(id)a3;
- (BOOL)shouldAllocAccessoryType:(id)a3 serviceConfig:(id)a4;
- (BOOL)shouldAllocAccessoryType:(id)a3 serviceType:(id)a4 characteristicType:(id)a5;
- (BOOL)shouldAllocAccessoryType:(id)a3 serviceType:(id)a4 controlType:(id)a5;
- (BOOL)shouldInitializeCharacteristic:(id)a3;
- (BOOL)shouldInitializeControl:(id)a3;
- (CAFCarManager)init;
- (CAFCarManager)initWithConfig:(id)a3;
- (CAFCarManager)initWithIdentifier:(id)a3;
- (CAFCarManager)initWithRegistrationFilePath:(id)a3;
- (NSString)description;
- (void)_closeConnectionWithReason:(id)a3;
- (void)_connectionDidInvalidateForProxy:(id)a3;
- (void)_didReceiveLifecycleNotification:(id)a3;
- (void)_locked_closeConnectionWithReason:(id)a3;
- (void)_setupCafdConnectionIfAvailable;
- (void)_updateCar;
- (void)dealloc;
- (void)handleResponse:(id)a3 instanceID:(id)a4 response:(id)a5;
- (void)invalidate;
- (void)notifyControl:(id)a3 value:(id)a4;
- (void)performGroupedRequest:(id)a3 key:(id)a4 value:(id)a5 withResponse:(id)a6;
- (void)readCharacteristic:(id)a3 response:(id)a4;
- (void)registerObserver:(id)a3;
- (void)requestControl:(id)a3 value:(id)a4 response:(id)a5;
- (void)unregisterObserver:(id)a3;
- (void)writeCharacteristic:(id)a3 value:(id)a4 response:(id)a5;
@end

@implementation CAFCarManager

- (CAFCarManager)init
{
  if ([(CAFCarManager *)self _isEntitled])
  {
    v3 = CAFAppIdentifier();
    v4 = [(CAFCarManager *)self initWithIdentifier:v3];
  }

  else
  {
    v3 = [[CAFCarManagerMutableConfiguration alloc] initWithRegistrationDictionary:&unk_284683570];
    v4 = [(CAFCarManager *)self initWithConfig:v3];
  }

  v5 = v4;

  return v5;
}

- (CAFCarManager)initWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = CAFCarManagerLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CAFCarManager initWithIdentifier:];
  }

  v6 = [[CAFCarManagerMutableConfiguration alloc] initWithIdentifier:v4];
  v7 = [(CAFCarManager *)self initWithConfig:v6];

  return v7;
}

- (CAFCarManager)initWithRegistrationFilePath:(id)a3
{
  v4 = CAFCarManagerLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CAFCarManager initWithRegistrationFilePath:];
  }

  v5 = CAFAppIdentifier();
  v6 = [(CAFCarManager *)self initWithIdentifier:v5];

  return v6;
}

- (CAFCarManager)initWithConfig:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v45.receiver = self;
  v45.super_class = CAFCarManager;
  v5 = [(CAFCarManager *)&v45 init];
  v6 = v5;
  if (v5)
  {
    v5->_connectionLock._os_unfair_lock_opaque = 0;
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.caraccessoryframework.notifyQueue", v7);
    notifyQueue = v6->_notifyQueue;
    v6->_notifyQueue = v8;

    v10 = [v4 copy];
    config = v6->_config;
    v6->_config = v10;

    v12 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_2846AD630];
    observers = v6->_observers;
    v6->_observers = v12;

    objc_initWeak(&location, v6);
    v14 = [(CAFCarManager *)v6 notifyQueue];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __32__CAFCarManager_initWithConfig___block_invoke;
    handler[3] = &unk_27890D928;
    objc_copyWeak(&v43, &location);
    v15 = notify_register_dispatch("com.apple.private.caraccessoryframework.cardata.available", &v6->_carDataToken, v14, handler);

    if (v15)
    {
      v16 = CAFGeneralLogging();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(CAFCarManager *)v15 initWithConfig:v16];
      }
    }

    [(CAFCarManager *)v6 _setupCafdConnectionIfAvailable];
    v17 = CAFCarManagerLogging();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [CAFCarManager initWithConfig:];
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v18 = [(CAFCarManager *)v6 config];
    v19 = [v18 registrations];
    v20 = [v19 treeLogLines];

    v21 = [v20 countByEnumeratingWithState:&v38 objects:v49 count:16];
    if (v21)
    {
      v23 = *v39;
      *&v22 = 138543362;
      v33 = v22;
      do
      {
        v24 = 0;
        do
        {
          if (*v39 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v38 + 1) + 8 * v24);
          v26 = CAFRegistrationLogging();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = v33;
            v48 = v25;
            _os_log_debug_impl(&dword_231618000, v26, OS_LOG_TYPE_DEBUG, "registrations %{public}@", buf, 0xCu);
          }

          ++v24;
        }

        while (v21 != v24);
        v21 = [v20 countByEnumeratingWithState:&v38 objects:v49 count:16];
      }

      while (v21);
    }

    v27 = [MEMORY[0x277CCAB98] defaultCenter];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v28 = [&unk_284682FB8 countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v28)
    {
      v29 = *v35;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v35 != v29)
          {
            objc_enumerationMutation(&unk_284682FB8);
          }

          [v27 addObserver:v6 selector:sel__didReceiveLifecycleNotification_ name:*(*(&v34 + 1) + 8 * i) object:{0, v33}];
        }

        v28 = [&unk_284682FB8 countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v28);
    }

    objc_destroyWeak(&v43);
    objc_destroyWeak(&location);
  }

  v31 = *MEMORY[0x277D85DE8];
  return v6;
}

void __32__CAFCarManager_initWithConfig___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = CAFCarManagerLogging();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __32__CAFCarManager_initWithConfig___block_invoke_cold_1();
    }

    [WeakRetained _setupCafdConnectionIfAvailable];
  }
}

- (void)_didReceiveLifecycleNotification:(id)a3
{
  v4 = a3;
  v5 = CAFCarManagerLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(CAFCarManager *)self _didReceiveLifecycleNotification:v4];
  }
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v5 = [(CAFCarManager *)self observers];
  [v5 registerObserver:v4];
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  v5 = [(CAFCarManager *)self observers];
  [v5 unregisterObserver:v4];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CAFCarManager *)self config];
  v6 = [(CAFCarManager *)self currentCar];
  v7 = [v3 stringWithFormat:@"<%@: %p config=[%@] car=%@>", v4, self, v5, v6];

  return v7;
}

- (void)dealloc
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isEntitled
{
  v2 = [MEMORY[0x277CF0CD0] processHandle];
  objc_opt_class();
  v3 = [v2 valueForEntitlement:@"com.apple.security.exception.mach-lookup.global-name"];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (([v4 containsObject:@"com.apple.caraccessoryframework.cardata"] & 1) == 0)
  {
    v6 = CAFGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [CAFCarManager _isEntitled];
    }

    goto LABEL_12;
  }

  if (([v2 hasEntitlement:@"com.apple.private.carp"] & 1) == 0)
  {
    v6 = CAFGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [CAFCarManager _isEntitled];
    }

LABEL_12:

    v5 = 0;
    goto LABEL_13;
  }

  v5 = 1;
LABEL_13:

  return v5;
}

- (void)_setupCafdConnectionIfAvailable
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_closeConnectionWithReason:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_connectionLock);
  [(CAFCarManager *)self _locked_closeConnectionWithReason:v4];

  os_unfair_lock_unlock(&self->_connectionLock);
}

- (void)_locked_closeConnectionWithReason:(id)a3
{
  v4 = a3;
  v5 = [(CAFCarManager *)self currentCar];

  if (v5)
  {
    v6 = [(CAFCarManager *)self observers];
    [v6 carManagerWillUpdateCar:self];

    v7 = [(CAFCarManager *)self currentCar];
    [v7 invalidate];

    [(CAFCarManager *)self setCurrentCar:0];
    v8 = [(CAFCarManager *)self observers];
    [v8 carManager:self didUpdateCurrentCar:0];
  }

  v9 = [(CAFCarManager *)self connectionProxy];
  [v9 setCarManager:0];

  v10 = [(CAFCarManager *)self connectionProxy];
  [v10 invalidate];

  v11 = CAFCarManagerLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CAFCarManager _locked_closeConnectionWithReason:];
  }
}

- (BOOL)shouldAllocAccessoryType:(id)a3
{
  v4 = a3;
  v5 = [(CAFCarManager *)self config];
  if (([v5 sparseTree] & 1) == 0)
  {

    goto LABEL_7;
  }

  v6 = [(CAFCarManager *)self config];
  v7 = [v6 registrations];
  v8 = [v7 hasAccessory:v4];

  if (v8)
  {
LABEL_7:
    v10 = 1;
    goto LABEL_8;
  }

  v9 = CAFRegistrationLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [CAFCarManager shouldAllocAccessoryType:v4];
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (BOOL)shouldAllocAccessoryType:(id)a3 serviceConfig:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [CAFCarConfiguration getType:v7];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v9 = [(CAFCarManager *)self config];
  if ([v9 sparseTree])
  {
    v10 = [(CAFCarManager *)self config];
    v11 = [v10 registrations];
    v12 = [v11 hasAccessory:v6 service:v8];
  }

  else
  {
    v12 = 1;
  }

  v30 = v12;
  if (*(v28 + 24) != 1)
  {
    goto LABEL_7;
  }

  v13 = [(CAFCarManager *)self config];
  v14 = [v13 registrations];
  v15 = [v14 nodeForAccessory:v6 serviceType:v8];

  v16 = [v15 children];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __56__CAFCarManager_shouldAllocAccessoryType_serviceConfig___block_invoke;
  v22[3] = &unk_27890D978;
  v23 = v7;
  v24 = v6;
  v25 = v8;
  v26 = &v27;
  [v16 enumerateKeysAndObjectsUsingBlock:v22];

  if (v28[3])
  {
    v17 = 1;
  }

  else
  {
LABEL_7:
    v18 = CAFRegistrationLogging();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = [CAFAccessoryTypes accessoryNameForType:v6];
      [CAFServiceTypes serviceNameForType:v8];
      objc_claimAutoreleasedReturnValue();
      [CAFCarManager shouldAllocAccessoryType:serviceConfig:];
    }

    v17 = *(v28 + 24);
  }

  _Block_object_dispose(&v27, 8);

  v20 = *MEMORY[0x277D85DE8];
  return v17 & 1;
}

void __56__CAFCarManager_shouldAllocAccessoryType_serviceConfig___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [v8 registeredValues];
  if ([v9 count])
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__0;
    v25 = __Block_byref_object_dispose__0;
    v26 = 0;
    objc_opt_class();
    v10 = [*(a1 + 32) objectForKeyedSubscript:@"characteristics"];
    if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __56__CAFCarManager_shouldAllocAccessoryType_serviceConfig___block_invoke_120;
      v18[3] = &unk_27890D950;
      v19 = v7;
      v20 = &v21;
      [v11 enumerateObjectsUsingBlock:v18];
    }

    if (v22[5])
    {
      if ([v9 containsObject:?])
      {
LABEL_15:

        _Block_object_dispose(&v21, 8);
        goto LABEL_16;
      }

      v12 = CAFRegistrationLogging();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = [CAFAccessoryTypes accessoryNameForType:*(a1 + 40)];
        v14 = [CAFServiceTypes serviceNameForType:*(a1 + 48)];
        v15 = v22[5];
        *buf = 138544130;
        v28 = v13;
        v29 = 2114;
        v30 = v14;
        v31 = 2114;
        v32 = v15;
        v33 = 2114;
        v34 = v9;
        _os_log_debug_impl(&dword_231618000, v12, OS_LOG_TYPE_DEBUG, "characteristic %{public}@.%{public}@ value %{public}@ is not in registered values %{public}@", buf, 0x2Au);
      }
    }

    else
    {
      v12 = CAFRegistrationLogging();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v16 = [CAFAccessoryTypes accessoryNameForType:*(a1 + 40)];
        [CAFServiceTypes serviceNameForType:*(a1 + 48)];
        objc_claimAutoreleasedReturnValue();
        __56__CAFCarManager_shouldAllocAccessoryType_serviceConfig___block_invoke_cold_1();
      }
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a4 = 1;
    goto LABEL_15;
  }

LABEL_16:

  v17 = *MEMORY[0x277D85DE8];
}

void __56__CAFCarManager_shouldAllocAccessoryType_serviceConfig___block_invoke_120(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  v12 = v6;
  if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = [CAFCarConfiguration getType:v12];
    v8 = v7;
    if (v7 && [v7 isEqualToString:*(a1 + 32)])
    {
      v9 = [v12 objectForKeyedSubscript:@"initialValue"];
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      *a4 = 1;
    }
  }
}

- (BOOL)shouldAllocAccessoryType:(id)a3 serviceType:(id)a4 characteristicType:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CAFCarManager *)self config];
  if (([v11 sparseTree] & 1) == 0)
  {

    goto LABEL_7;
  }

  v12 = [(CAFCarManager *)self config];
  v13 = [v12 registrations];
  v14 = [v13 hasAccessory:v8 service:v9 characteristic:v10];

  if (v14)
  {
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  v15 = CAFRegistrationLogging();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v19 = [CAFAccessoryTypes accessoryNameForType:v8];
    v20 = [CAFServiceTypes serviceNameForType:v9];
    v21 = [CAFCharacteristicTypes characteristicNameForType:v10];
    v22 = 138543874;
    v23 = v19;
    v24 = 2114;
    v25 = v20;
    v26 = 2114;
    v27 = v21;
    _os_log_debug_impl(&dword_231618000, v15, OS_LOG_TYPE_DEBUG, "should not allocate characteristic %{public}@.%{public}@.%{public}@", &v22, 0x20u);
  }

  v16 = 0;
LABEL_8:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)shouldAllocAccessoryType:(id)a3 serviceType:(id)a4 controlType:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CAFCarManager *)self config];
  if (([v11 sparseTree] & 1) == 0)
  {

    goto LABEL_7;
  }

  v12 = [(CAFCarManager *)self config];
  v13 = [v12 registrations];
  v14 = [v13 hasAccessory:v8 service:v9 control:v10];

  if (v14)
  {
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  v15 = CAFRegistrationLogging();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v19 = [CAFAccessoryTypes accessoryNameForType:v8];
    v20 = [CAFServiceTypes serviceNameForType:v9];
    v21 = [CAFControlTypes controlNameForType:v10];
    v22 = 138543874;
    v23 = v19;
    v24 = 2114;
    v25 = v20;
    v26 = 2114;
    v27 = v21;
    _os_log_debug_impl(&dword_231618000, v15, OS_LOG_TYPE_DEBUG, "should not allocate control %{public}@.%{public}@.%{public}@", &v22, 0x20u);
  }

  v16 = 0;
LABEL_8:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)shouldInitializeCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [(CAFCarManager *)self config];
  v6 = [v5 registrations];
  v7 = [v4 accessory];
  v8 = [v7 categoryType];
  v9 = [v4 service];
  v10 = [v9 serviceType];
  v11 = [v4 characteristicType];

  LOBYTE(v4) = [v6 hasAccessory:v8 service:v10 characteristic:v11];
  return v4;
}

- (BOOL)shouldInitializeControl:(id)a3
{
  v4 = a3;
  v5 = [(CAFCarManager *)self config];
  v6 = [v5 registrations];
  v7 = [v4 accessory];
  v8 = [v7 categoryType];
  v9 = [v4 service];
  v10 = [v9 serviceType];
  v11 = [v4 controlType];

  LOBYTE(v4) = [v6 hasAccessory:v8 service:v10 control:v11];
  return v4;
}

- (void)_connectionDidInvalidateForProxy:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = [v4 uniqueIdentifier];
    v6 = [(CAFCarManager *)self connectionProxy];
    v7 = [v6 uniqueIdentifier];
    v8 = BSEqualObjects();

    v4 = v9;
    if (v8)
    {
      [(CAFCarManager *)self _closeConnectionWithReason:@"proxy connection did invalidate"];
      v4 = v9;
    }
  }
}

- (void)_updateCar
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)requestControl:(id)a3 value:(id)a4 response:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = CAFRequestResponseLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CAFCarManager requestControl:value:response:];
  }

  v12 = [(CAFCarManager *)self connectionProxy];
  v13 = [v12 remoteProxy];
  v14 = [v8 pluginID];
  v15 = [v8 instanceID];
  v16 = [v8 priority];
  [v13 requestPluginID:v14 instanceID:v15 value:v10 priority:v16 withResponse:v9];
}

- (void)notifyControl:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CAFRequestResponseLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CAFCarManager notifyControl:value:];
  }

  v9 = [(CAFCarManager *)self connectionProxy];
  v10 = [v9 remoteProxy];
  v11 = [v6 pluginID];
  v12 = [v6 instanceID];
  v13 = [v6 priority];
  [v10 notifyPluginID:v11 instanceID:v12 value:v7 priority:v13];
}

- (void)handleResponse:(id)a3 instanceID:(id)a4 response:(id)a5
{
  v17 = a3;
  v7 = a4;
  v8 = a5;
  if (v8)
  {
    if (v17)
    {
      v9 = [v17 error];

      if (v9)
      {
        v10 = [CAFCharacteristicValue alloc];
        v11 = [v17 error];
        v12 = [(CAFCharacteristicValue *)v10 initWithValue:0 error:v11];
      }

      else
      {
        v13 = [v17 values];

        if (!v13)
        {
          goto LABEL_8;
        }

        v11 = [v17 values];
        v12 = [v11 objectForKeyedSubscript:v7];
      }

      v14 = v12;

      if (v14)
      {
LABEL_9:
        v8[2](v8, v14);

        goto LABEL_10;
      }
    }

LABEL_8:
    v15 = [CAFCharacteristicValue alloc];
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:7 userInfo:0];
    v14 = [(CAFCharacteristicValue *)v15 initWithValue:0 error:v16];

    goto LABEL_9;
  }

LABEL_10:
}

- (void)readCharacteristic:(id)a3 response:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CAFRequestResponseLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CAFCarManager readCharacteristic:response:];
  }

  v9 = [(CAFCarManager *)self connectionProxy];
  v10 = [v9 remoteProxy];
  v11 = [v6 pluginID];
  v12 = [v6 readInstanceIDs];
  v13 = [v6 priority];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __45__CAFCarManager_readCharacteristic_response___block_invoke;
  v16[3] = &unk_27890D9A0;
  v16[4] = self;
  v17 = v6;
  v18 = v7;
  v14 = v7;
  v15 = v6;
  [v10 readFromPluginID:v11 instanceIDs:v12 priority:v13 withResponse:v16];
}

void __45__CAFCarManager_readCharacteristic_response___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 instanceID];
  [v3 handleResponse:v5 instanceID:v6 response:a1[6]];
}

- (void)writeCharacteristic:(id)a3 value:(id)a4 response:(id)a5
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CAFRequestResponseLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CAFCarManager writeCharacteristic:value:response:];
  }

  v21 = [(CAFCarManager *)self connectionProxy];
  v12 = [v21 remoteProxy];
  v13 = [v8 pluginID];
  v14 = [v8 instanceID];
  v25 = v14;
  v15 = v9;
  if (!v9)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v26[0] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v17 = [v8 priority];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __52__CAFCarManager_writeCharacteristic_value_response___block_invoke;
  v22[3] = &unk_27890D9A0;
  v22[4] = self;
  v23 = v8;
  v24 = v10;
  v18 = v10;
  v19 = v8;
  [v12 writeToPluginID:v13 values:v16 priority:v17 withResponse:v22];

  if (!v9)
  {
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __52__CAFCarManager_writeCharacteristic_value_response___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 instanceID];
  [v3 handleResponse:v5 instanceID:v6 response:a1[6]];
}

void __69__CAFCarManager_enableNotificationForCharacteristic_enable_response___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 instanceID];
  [v3 handleResponse:v5 instanceID:v6 response:a1[6]];
}

void __69__CAFCarManager_enableNotificationForCharacteristic_enable_response___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 instanceID];
  [v3 handleResponse:v5 instanceID:v6 response:a1[6]];
}

void __62__CAFCarManager_enableNotificationForControl_enable_response___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 instanceID];
  [v3 handleResponse:v5 instanceID:v6 response:a1[6]];
}

void __62__CAFCarManager_enableNotificationForControl_enable_response___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 instanceID];
  [v3 handleResponse:v5 instanceID:v6 response:a1[6]];
}

- (void)performGroupedRequest:(id)a3 key:(id)a4 value:(id)a5 withResponse:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = CAFRequestResponseLogging();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [CAFCarManager performGroupedRequest:key:value:withResponse:];
    }

    v15 = [(CAFCarManager *)self connectionProxy];
    v16 = [v15 remoteProxy];
    v17 = [v11 pluginID];
    v18 = [v11 priority];
    [v16 readFromPluginID:v17 instanceIDs:v12 priority:v18 withResponse:v13];
LABEL_17:

    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = CAFRequestResponseLogging();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [CAFCarManager performGroupedRequest:key:value:withResponse:];
    }

    v15 = [(CAFCarManager *)self connectionProxy];
    v16 = [v15 remoteProxy];
    v17 = [v11 pluginID];
    v18 = [v11 priority];
    [v16 addRegistrationToPluginID:v17 instanceIDs:v12 priority:v18 withResponse:v13];
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = CAFRequestResponseLogging();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [CAFCarManager performGroupedRequest:key:value:withResponse:];
    }

    v15 = [(CAFCarManager *)self connectionProxy];
    v16 = [v15 remoteProxy];
    v17 = [v11 pluginID];
    v18 = [v11 priority];
    [v16 removeRegistrationFromPluginID:v17 instanceIDs:v12 priority:v18 withResponse:v13];
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = CAFRequestResponseLogging();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [CAFCarManager performGroupedRequest:key:value:withResponse:];
    }

    v15 = [(CAFCarManager *)self connectionProxy];
    v16 = [v15 remoteProxy];
    v17 = [v11 pluginID];
    v18 = [v11 priority];
    [v16 writeToPluginID:v17 values:v12 priority:v18 withResponse:v13];
    goto LABEL_17;
  }

LABEL_18:
}

- (void)invalidate
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithRegistrationFilePath:.cold.1()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithConfig:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_231618000, a2, OS_LOG_TYPE_ERROR, "Unable to register for car data available notifications (%i)", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfig:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __32__CAFCarManager_initWithConfig___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_didReceiveLifecycleNotification:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [a2 name];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_locked_closeConnectionWithReason:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 136315650;
  OUTLINED_FUNCTION_3_1();
  v5 = v0;
  v6 = v1;
  _os_log_debug_impl(&dword_231618000, v2, OS_LOG_TYPE_DEBUG, "%s %{public}@: connection cleared for %{public}@", v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)shouldAllocAccessoryType:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [CAFAccessoryTypes accessoryNameForType:a1];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)shouldAllocAccessoryType:serviceConfig:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_13(v2, v3, v4, 5.8382e-34);
  _os_log_debug_impl(&dword_231618000, v6, OS_LOG_TYPE_DEBUG, "should not allocate service %{public}@.%{public}@", v5, 0x16u);
}

void __56__CAFCarManager_shouldAllocAccessoryType_serviceConfig___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_13(v2, v3, v4, 5.8382e-34);
  _os_log_debug_impl(&dword_231618000, v6, OS_LOG_TYPE_DEBUG, "characteristic %{public}@.%{public}@ value is not available!", v5, 0x16u);
}

- (void)requestControl:value:response:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v10 = *MEMORY[0x277D85DE8];
  [v2 pluginID];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_14() instanceID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_7_1() priority];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)notifyControl:value:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v10 = *MEMORY[0x277D85DE8];
  [v2 pluginID];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_14() instanceID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_7_1() priority];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)readCharacteristic:response:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v10 = *MEMORY[0x277D85DE8];
  [v2 pluginID];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_14() instanceID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_7_1() priority];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)writeCharacteristic:value:response:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  v11 = *MEMORY[0x277D85DE8];
  v2 = [v1 pluginID];
  v3 = [v0 instanceID];
  v4 = [v0 priority];
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)enableNotificationForCharacteristic:(uint64_t)a1 enable:(void *)a2 response:.cold.1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  [a2 pluginID];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_14() instanceID];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_7_1() priority];
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)enableNotificationForControl:(uint64_t)a1 enable:(void *)a2 response:.cold.1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  [a2 pluginID];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_14() instanceID];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_7_1() priority];
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)performGroupedRequest:key:value:withResponse:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  v9 = *MEMORY[0x277D85DE8];
  [v1 pluginID];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_7_1() count];
  v2 = [OUTLINED_FUNCTION_15() priority];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)performGroupedRequest:key:value:withResponse:.cold.2()
{
  OUTLINED_FUNCTION_4_1();
  v9 = *MEMORY[0x277D85DE8];
  [v1 pluginID];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_7_1() count];
  v2 = [OUTLINED_FUNCTION_15() priority];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)performGroupedRequest:key:value:withResponse:.cold.3()
{
  OUTLINED_FUNCTION_4_1();
  v9 = *MEMORY[0x277D85DE8];
  [v1 pluginID];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_7_1() count];
  v2 = [OUTLINED_FUNCTION_15() priority];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)performGroupedRequest:key:value:withResponse:.cold.4()
{
  OUTLINED_FUNCTION_4_1();
  v9 = *MEMORY[0x277D85DE8];
  [v1 pluginID];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_7_1() count];
  v2 = [OUTLINED_FUNCTION_15() priority];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

@end