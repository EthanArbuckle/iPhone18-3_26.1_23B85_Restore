@interface CCSRemoteServiceProvider
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_init;
- (void)dealloc;
- (void)enumerateEndpointsUsingBlock:(id)block;
- (void)getEnabledStateOfModuleWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)handleControlCenterOperationType:(int64_t)type completionHandler:(id)handler;
- (void)handleIconElementRequest:(id)request completionHandler:(id)handler;
- (void)invalidate;
- (void)presentModuleWithIdentifier:(id)identifier options:(id)options completionHandler:(id)handler;
- (void)registerEndpoint:(id)endpoint;
- (void)requestAvailableModuleIdentifiersWithCompletionHandler:(id)handler;
- (void)requestDisableModuleWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)requestEnableModuleWithIdentifier:(id)identifier force:(BOOL)force completionHandler:(id)handler;
- (void)requestIconElementState:(id)state completionHandler:(id)handler;
- (void)resetToDefaultLayoutWithCompletionHandler:(id)handler;
@end

@implementation CCSRemoteServiceProvider

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CCSRemoteServiceProvider sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __42__CCSRemoteServiceProvider_sharedInstance__block_invoke()
{
  v0 = [[CCSRemoteServiceProvider alloc] _init];
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;

  _queue = dispatch_queue_create("com.apple.ControlCenter.CCSRemoteServiceProvider", 0);

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v12.receiver = self;
  v12.super_class = CCSRemoteServiceProvider;
  v2 = [(CCSRemoteServiceProvider *)&v12 init];
  if (v2)
  {
    v3 = +[CCSModuleRepository sharedInstance];
    moduleRepository = v2->_moduleRepository;
    v2->_moduleRepository = v3;

    v5 = +[CCSModuleSettingsProvider sharedProvider];
    settingsProvider = v2->_settingsProvider;
    v2->_settingsProvider = v5;

    v7 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.controlcenter.remoteservice"];
    listener = v2->_listener;
    v2->_listener = v7;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    presentationEndpoints = v2->_presentationEndpoints;
    v2->_presentationEndpoints = weakObjectsHashTable;
  }

  return v2;
}

- (void)dealloc
{
  [(CCSRemoteServiceProvider *)self invalidate];
  v3.receiver = self;
  v3.super_class = CCSRemoteServiceProvider;
  [(CCSRemoteServiceProvider *)&v3 dealloc];
}

- (void)registerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (endpointCopy)
  {
    v8 = endpointCopy;
    v6 = self->_presentationEndpoints;
    objc_sync_enter(v6);
    if ([(NSHashTable *)self->_presentationEndpoints count])
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"CCSRemoteServiceProvider.m" lineNumber:86 description:@"The primary presentation endpoint already exists."];
    }

    [(NSHashTable *)self->_presentationEndpoints addObject:v8];
    objc_sync_exit(v6);

    endpointCopy = v8;
  }
}

- (void)invalidate
{
  [(CCSModuleRepository *)self->_moduleRepository invalidate];
  listener = self->_listener;

  [(NSXPCListener *)listener invalidate];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = CCSRemoteServiceServerInterface();
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__CCSRemoteServiceProvider_listener_shouldAcceptNewConnection___block_invoke;
  v9[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  v9[4] = connectionCopy;
  [connectionCopy setInterruptionHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__CCSRemoteServiceProvider_listener_shouldAcceptNewConnection___block_invoke_22;
  v8[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  v8[4] = connectionCopy;
  [connectionCopy setInvalidationHandler:v8];
  [connectionCopy resume];

  return 1;
}

void __63__CCSRemoteServiceProvider_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = CCSLogRemoteService;
  if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_24427F000, v2, OS_LOG_TYPE_DEFAULT, "connection interrupted, %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __63__CCSRemoteServiceProvider_listener_shouldAcceptNewConnection___block_invoke_22(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = CCSLogRemoteService;
  if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_24427F000, v2, OS_LOG_TYPE_DEFAULT, "connection invalidated, %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)getEnabledStateOfModuleWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = CCSLogRemoteService;
  if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138543362;
    v23 = identifierCopy;
    _os_log_impl(&dword_24427F000, v8, OS_LOG_TYPE_DEFAULT, "Getting enabled state of module with identifier '%{public}@'", &v22, 0xCu);
  }

  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if ([currentConnection ccs_hasEntitlementForModuleIdentifier:identifierCopy])
  {
    if (handlerCopy)
    {
      loadableModuleIdentifiers = [(CCSModuleRepository *)self->_moduleRepository loadableModuleIdentifiers];
      v11 = [loadableModuleIdentifiers containsObject:identifierCopy];

      if (v11)
      {
        orderedFixedModuleIdentifiers = [(CCSModuleSettingsProvider *)self->_settingsProvider orderedFixedModuleIdentifiers];
        v13 = [orderedFixedModuleIdentifiers containsObject:identifierCopy];

        if (v13 || (-[CCSModuleSettingsProvider orderedUserEnabledFixedModuleIdentifiers](self->_settingsProvider, "orderedUserEnabledFixedModuleIdentifiers"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 containsObject:identifierCopy], v14, v15))
        {
          v16 = handlerCopy[2];
        }

        else
        {
          orderedUserEnabledModuleIdentifiers = [(CCSModuleSettingsProvider *)self->_settingsProvider orderedUserEnabledModuleIdentifiers];
          v21 = [orderedUserEnabledModuleIdentifiers containsObject:identifierCopy];

          v16 = handlerCopy[2];
          if (!v21)
          {
            v17 = handlerCopy;
            v18 = 2;
            goto LABEL_14;
          }
        }

        v17 = handlerCopy;
        v18 = 3;
      }

      else
      {
        v16 = handlerCopy[2];
        v17 = handlerCopy;
        v18 = 1;
      }

LABEL_14:
      v16(v17, v18);
    }
  }

  else
  {
    if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_ERROR))
    {
      [CCSRemoteServiceProvider getEnabledStateOfModuleWithIdentifier:completionHandler:];
    }

    [currentConnection invalidate];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)requestEnableModuleWithIdentifier:(id)identifier force:(BOOL)force completionHandler:(id)handler
{
  forceCopy = force;
  v52 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v10 = CCSLogRemoteService;
  if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v51 = identifierCopy;
    _os_log_impl(&dword_24427F000, v10, OS_LOG_TYPE_DEFAULT, "Requesting enable of module with identifier '%{public}@'", buf, 0xCu);
  }

  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  ccs_hasEntitlementForForciblyEnablingModules = [currentConnection ccs_hasEntitlementForForciblyEnablingModules];
  if (([currentConnection ccs_hasEntitlementForModuleIdentifier:identifierCopy] & 1) == 0)
  {
    if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_ERROR))
    {
      [CCSRemoteServiceProvider getEnabledStateOfModuleWithIdentifier:completionHandler:];
      if (!handlerCopy)
      {
        goto LABEL_12;
      }
    }

    else if (!handlerCopy)
    {
LABEL_12:
      [currentConnection invalidate];
      goto LABEL_26;
    }

    v22 = MEMORY[0x277CCA9B8];
    v48 = *MEMORY[0x277CCA068];
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing entitlement for module with identifier '%@'", identifierCopy];
    v49 = identifierCopy;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v25 = [v22 errorWithDomain:@"CCSControlCenterServicesErrorDomain" code:0 userInfo:v24];
    handlerCopy[2](handlerCopy, 0, v25);

    goto LABEL_12;
  }

  loadableModuleIdentifiers = [(CCSModuleRepository *)self->_moduleRepository loadableModuleIdentifiers];
  v14 = [loadableModuleIdentifiers containsObject:identifierCopy];

  if ((v14 & 1) == 0)
  {
    if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_ERROR))
    {
      [CCSRemoteServiceProvider requestEnableModuleWithIdentifier:force:completionHandler:];
      if (!handlerCopy)
      {
        goto LABEL_26;
      }
    }

    else if (!handlerCopy)
    {
      goto LABEL_26;
    }

    v17 = MEMORY[0x277CCA9B8];
    v46 = *MEMORY[0x277CCA068];
    identifierCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot enable module with identifier '%@' as it's unsupported", identifierCopy];
    v47 = identifierCopy2;
    v19 = MEMORY[0x277CBEAC0];
    v20 = &v47;
    v21 = &v46;
    goto LABEL_16;
  }

  orderedFixedModuleIdentifiers = [(CCSModuleSettingsProvider *)self->_settingsProvider orderedFixedModuleIdentifiers];
  v16 = [orderedFixedModuleIdentifiers containsObject:identifierCopy];

  if (!v16)
  {
    orderedUserEnabledFixedModuleIdentifiers = [(CCSModuleSettingsProvider *)self->_settingsProvider orderedUserEnabledFixedModuleIdentifiers];
    v29 = [orderedUserEnabledFixedModuleIdentifiers containsObject:identifierCopy];

    if (v29)
    {
      v30 = CCSLogRemoteService;
      if (!os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 138543362;
      v51 = identifierCopy;
    }

    else
    {
      orderedUserEnabledModuleIdentifiers = [(CCSModuleSettingsProvider *)self->_settingsProvider orderedUserEnabledModuleIdentifiers];
      v32 = [orderedUserEnabledModuleIdentifiers containsObject:identifierCopy];

      if (!v32)
      {
        userDisabledModuleIdentifiers = [(CCSModuleSettingsProvider *)self->_settingsProvider userDisabledModuleIdentifiers];
        v35 = [userDisabledModuleIdentifiers containsObject:identifierCopy];

        v36 = CCSLogRemoteService;
        if (v35 && (forceCopy & ccs_hasEntitlementForForciblyEnablingModules & 1) == 0)
        {
          if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_ERROR))
          {
            [CCSRemoteServiceProvider requestEnableModuleWithIdentifier:force:completionHandler:];
            if (!handlerCopy)
            {
              goto LABEL_26;
            }
          }

          else if (!handlerCopy)
          {
            goto LABEL_26;
          }

          v17 = MEMORY[0x277CCA9B8];
          v42 = *MEMORY[0x277CCA068];
          identifierCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot enable module with identifier '%@' as it's been user disabled", identifierCopy];
          v43 = identifierCopy2;
          v19 = MEMORY[0x277CBEAC0];
          v20 = &v43;
          v21 = &v42;
          goto LABEL_16;
        }

        if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v51 = identifierCopy;
          _os_log_impl(&dword_24427F000, v36, OS_LOG_TYPE_DEFAULT, "Enabling module with identifier '%{public}@'", buf, 0xCu);
        }

        v37 = [identifierCopy isEqualToString:@"com.apple.Home.ControlCenter"];
        settingsProvider = self->_settingsProvider;
        if (v37)
        {
          orderedUserEnabledFixedModuleIdentifiers2 = [(CCSModuleSettingsProvider *)settingsProvider orderedUserEnabledFixedModuleIdentifiers];
          v40 = [orderedUserEnabledFixedModuleIdentifiers2 arrayByAddingObject:identifierCopy];

          [(CCSModuleSettingsProvider *)self->_settingsProvider setAndSaveOrderedUserEnabledFixedModuleIdentifiers:v40];
        }

        else
        {
          orderedUserEnabledModuleIdentifiers2 = [(CCSModuleSettingsProvider *)settingsProvider orderedUserEnabledModuleIdentifiers];
          v40 = [orderedUserEnabledModuleIdentifiers2 arrayByAddingObject:identifierCopy];

          [(CCSModuleSettingsProvider *)self->_settingsProvider setAndSaveOrderedUserEnabledModuleIdentifiers:v40];
        }

        if (!handlerCopy)
        {
          goto LABEL_26;
        }

LABEL_25:
        handlerCopy[2](handlerCopy, 1, 0);
        goto LABEL_26;
      }

      v30 = CCSLogRemoteService;
      if (!os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_DEFAULT))
      {
LABEL_24:
        if (!handlerCopy)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      *buf = 138543362;
      v51 = identifierCopy;
    }

    _os_log_impl(&dword_24427F000, v30, OS_LOG_TYPE_DEFAULT, "Cannot enable module with identifier '%{public}@' as it's already enabled", buf, 0xCu);
    goto LABEL_24;
  }

  if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_ERROR))
  {
    [CCSRemoteServiceProvider requestEnableModuleWithIdentifier:force:completionHandler:];
    if (!handlerCopy)
    {
      goto LABEL_26;
    }

    goto LABEL_8;
  }

  if (handlerCopy)
  {
LABEL_8:
    v17 = MEMORY[0x277CCA9B8];
    v44 = *MEMORY[0x277CCA068];
    identifierCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot enable module with identifier '%@' as it's not user configurable", identifierCopy];
    v45 = identifierCopy2;
    v19 = MEMORY[0x277CBEAC0];
    v20 = &v45;
    v21 = &v44;
LABEL_16:
    v26 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:1];
    v27 = [v17 errorWithDomain:@"CCSControlCenterServicesErrorDomain" code:0 userInfo:v26];
    handlerCopy[2](handlerCopy, 0, v27);
  }

LABEL_26:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)requestDisableModuleWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = CCSLogRemoteService;
  if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v39 = identifierCopy;
    _os_log_impl(&dword_24427F000, v8, OS_LOG_TYPE_DEFAULT, "Requesting disable of module with identifier '%{public}@'", buf, 0xCu);
  }

  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (([currentConnection ccs_hasEntitlementForModuleIdentifier:identifierCopy] & 1) == 0)
  {
    if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_ERROR))
    {
      [CCSRemoteServiceProvider getEnabledStateOfModuleWithIdentifier:completionHandler:];
      if (!handlerCopy)
      {
        goto LABEL_12;
      }
    }

    else if (!handlerCopy)
    {
LABEL_12:
      [currentConnection invalidate];
      goto LABEL_18;
    }

    v19 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA068];
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing entitlement for module with identifier '%@'", identifierCopy];
    v37 = identifierCopy;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v22 = [v19 errorWithDomain:@"CCSControlCenterServicesErrorDomain" code:0 userInfo:v21];
    handlerCopy[2](handlerCopy, 0, v22);

    goto LABEL_12;
  }

  loadableModuleIdentifiers = [(CCSModuleRepository *)self->_moduleRepository loadableModuleIdentifiers];
  v11 = [loadableModuleIdentifiers containsObject:identifierCopy];

  if ((v11 & 1) == 0)
  {
    if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_ERROR))
    {
      [CCSRemoteServiceProvider requestDisableModuleWithIdentifier:completionHandler:];
      if (!handlerCopy)
      {
        goto LABEL_18;
      }
    }

    else if (!handlerCopy)
    {
      goto LABEL_18;
    }

    v14 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA068];
    identifierCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot disable module with identifier '%@' as it's unsupported", identifierCopy];
    v35 = identifierCopy2;
    v16 = MEMORY[0x277CBEAC0];
    v17 = &v35;
    v18 = &v34;
    goto LABEL_16;
  }

  orderedFixedModuleIdentifiers = [(CCSModuleSettingsProvider *)self->_settingsProvider orderedFixedModuleIdentifiers];
  v13 = [orderedFixedModuleIdentifiers containsObject:identifierCopy];

  if (v13)
  {
    if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_ERROR))
    {
      [CCSRemoteServiceProvider requestDisableModuleWithIdentifier:completionHandler:];
      if (!handlerCopy)
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    if (handlerCopy)
    {
LABEL_8:
      v14 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CCA068];
      identifierCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot disable module with identifier '%@' as it's not user configurable", identifierCopy];
      v33 = identifierCopy2;
      v16 = MEMORY[0x277CBEAC0];
      v17 = &v33;
      v18 = &v32;
LABEL_16:
      v23 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];
      v24 = [v14 errorWithDomain:@"CCSControlCenterServicesErrorDomain" code:0 userInfo:v23];
      handlerCopy[2](handlerCopy, 0, v24);

LABEL_17:
    }
  }

  else
  {
    userDisabledModuleIdentifiers = [(CCSModuleSettingsProvider *)self->_settingsProvider userDisabledModuleIdentifiers];
    v27 = [userDisabledModuleIdentifiers containsObject:identifierCopy];

    v28 = CCSLogRemoteService;
    v29 = os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_DEFAULT);
    if (!v27)
    {
      if (v29)
      {
        *buf = 138543362;
        v39 = identifierCopy;
        _os_log_impl(&dword_24427F000, v28, OS_LOG_TYPE_DEFAULT, "Disabling module with identifier '%{public}@'", buf, 0xCu);
      }

      orderedUserEnabledModuleIdentifiers = [(CCSModuleSettingsProvider *)self->_settingsProvider orderedUserEnabledModuleIdentifiers];
      identifierCopy3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF != %@", identifierCopy];
      identifierCopy2 = [orderedUserEnabledModuleIdentifiers filteredArrayUsingPredicate:identifierCopy3];

      [(CCSModuleSettingsProvider *)self->_settingsProvider setAndSaveOrderedUserEnabledModuleIdentifiers:identifierCopy2];
      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, 1, 0);
      }

      goto LABEL_17;
    }

    if (v29)
    {
      *buf = 138543362;
      v39 = identifierCopy;
      _os_log_impl(&dword_24427F000, v28, OS_LOG_TYPE_DEFAULT, "Cannot disable module with identifier '%{public}@' as it's already disabled", buf, 0xCu);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 1, 0);
    }
  }

LABEL_18:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)requestAvailableModuleIdentifiersWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = CCSLogRemoteService;
  if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_24427F000, v5, OS_LOG_TYPE_DEFAULT, "Request list of available module identifiers", v9, 2u);
  }

  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if ([currentConnection ccs_hasEntitlementForListingModuleIdentifiers])
  {
    loadableModuleIdentifiers = [(CCSModuleRepository *)self->_moduleRepository loadableModuleIdentifiers];
    allObjects = [loadableModuleIdentifiers allObjects];
    handlerCopy[2](handlerCopy, allObjects, 0);
  }

  else
  {
    if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_ERROR))
    {
      [CCSRemoteServiceProvider requestAvailableModuleIdentifiersWithCompletionHandler:];
    }

    [currentConnection invalidate];
  }
}

- (void)presentModuleWithIdentifier:(id)identifier options:(id)options completionHandler:(id)handler
{
  v38 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  optionsCopy = options;
  handlerCopy = handler;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if ([currentConnection ccs_hasEntitlementForModuleIdentifier:identifierCopy])
  {
    loadableModuleIdentifiers = [(CCSModuleRepository *)self->_moduleRepository loadableModuleIdentifiers];
    v13 = [loadableModuleIdentifiers containsObject:identifierCopy];

    v14 = CCSLogRemoteService;
    if (v13)
    {
      if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = identifierCopy;
        _os_log_impl(&dword_24427F000, v14, OS_LOG_TYPE_DEFAULT, "Present module with identifier'%{public}@'", &buf, 0xCu);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v36 = 0x2020000000;
      v37 = 0;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __82__CCSRemoteServiceProvider_presentModuleWithIdentifier_options_completionHandler___block_invoke;
      v26[3] = &unk_278E0F1F0;
      v15 = identifierCopy;
      v27 = v15;
      v28 = optionsCopy;
      v16 = handlerCopy;
      v29 = v16;
      p_buf = &buf;
      [(CCSRemoteServiceProvider *)self enumerateEndpointsUsingBlock:v26];
      if ((*(*(&buf + 1) + 24) & 1) == 0)
      {
        v17 = MEMORY[0x277CCA9B8];
        v33 = *MEMORY[0x277CCA068];
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot present module with identifier '%@' could not find an endpoint to present", v15];;
        v34 = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v20 = [v17 errorWithDomain:@"CCSControlCenterServicesErrorDomain" code:0 userInfo:v19];
        (*(v16 + 2))(v16, 0, v20);
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_ERROR))
      {
        [CCSRemoteServiceProvider presentModuleWithIdentifier:options:completionHandler:];
      }

      if (handlerCopy)
      {
        v21 = MEMORY[0x277CCA9B8];
        v31 = *MEMORY[0x277CCA068];
        identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot present module with identifier '%@' as it's unsupported", identifierCopy];
        v32 = identifierCopy;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v24 = [v21 errorWithDomain:@"CCSControlCenterServicesErrorDomain" code:0 userInfo:v23];
        (*(handlerCopy + 2))(handlerCopy, 0, v24);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_ERROR))
    {
      [CCSRemoteServiceProvider getEnabledStateOfModuleWithIdentifier:completionHandler:];
    }

    [currentConnection invalidate];
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __82__CCSRemoteServiceProvider_presentModuleWithIdentifier_options_completionHandler___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__CCSRemoteServiceProvider_presentModuleWithIdentifier_options_completionHandler___block_invoke_2;
  v11[3] = &unk_278E0F1C8;
  v12 = v5;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v16 = v7;
  v17 = v8;
  v15 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v11);
  dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  *a3 = *(*(*(a1 + 56) + 8) + 24);
}

void __82__CCSRemoteServiceProvider_presentModuleWithIdentifier_options_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__CCSRemoteServiceProvider_presentModuleWithIdentifier_options_completionHandler___block_invoke_3;
  v7[3] = &unk_278E0F1A0;
  v10 = *(a1 + 64);
  v5 = *(a1 + 40);
  v6 = *(a1 + 72);
  v8 = v5;
  v11 = v6;
  v9 = *(a1 + 56);
  [v2 presentModuleWithIdentifier:v3 options:v4 completion:v7];
}

void __82__CCSRemoteServiceProvider_presentModuleWithIdentifier_options_completionHandler___block_invoke_3(uint64_t a1, char a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v3 = *(a1 + 48);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = MEMORY[0x277CCA9B8];
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot present module with identifier '%@' endpoint unable to present", v6, *MEMORY[0x277CCA068]];;
    v12[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v5 errorWithDomain:@"CCSControlCenterServicesErrorDomain" code:0 userInfo:v8];
    (*(v4 + 16))(v4, 0, v9);
  }

  dispatch_group_leave(*(a1 + 40));
  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleIconElementRequest:(id)request completionHandler:(id)handler
{
  v20[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if ([currentConnection ccs_hasEntitlementForForciblyEnablingModules])
  {
    objc_initWeak(&location, self);
    v9 = _queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__CCSRemoteServiceProvider_handleIconElementRequest_completionHandler___block_invoke;
    block[3] = &unk_278E0F218;
    objc_copyWeak(&v17, &location);
    v15 = requestCopy;
    v16 = handlerCopy;
    dispatch_async(v9, block);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_ERROR))
    {
      [CCSRemoteServiceProvider handleIconElementRequest:completionHandler:];
    }

    v10 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA068];
    v20[0] = @"The application-identifier in your entitlements file is not allow-listed for this SPI. Please contact the Control Center team.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v12 = [v10 errorWithDomain:@"CCSControlCenterServicesErrorDomain" code:0 userInfo:v11];
    (*(handlerCopy + 2))(handlerCopy, 0, v12);

    [currentConnection invalidate];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __71__CCSRemoteServiceProvider_handleIconElementRequest_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = +[CCSControlCenterOperationService sharedService];
    [v3 handleIconElementRequest:*(a1 + 32) completionHandler:*(a1 + 40)];

    WeakRetained = v4;
  }
}

- (void)handleControlCenterOperationType:(int64_t)type completionHandler:(id)handler
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAE80];
  handlerCopy = handler;
  currentConnection = [v5 currentConnection];
  if ([currentConnection ccs_hasEntitlementForHandlingControlCenterOperation])
  {
    v8 = +[CCSControlCenterOperationService sharedService];
    [v8 handleControlCenterOperationType:type completionHandler:handlerCopy];
  }

  else
  {
    if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_ERROR))
    {
      [CCSRemoteServiceProvider handleControlCenterOperationType:completionHandler:];
    }

    v9 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA068];
    v14[0] = @"The application-identifier in your entitlements file is not allow-listed for this SPI. Please contact the Control Center team.";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v11 = [v9 errorWithDomain:@"CCSControlCenterServicesErrorDomain" code:0 userInfo:v10];
    (*(handlerCopy + 2))(handlerCopy, 0, v11);

    [currentConnection invalidate];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)requestIconElementState:(id)state completionHandler:(id)handler
{
  v15[1] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v6 = MEMORY[0x277CCAE80];
  handlerCopy = handler;
  currentConnection = [v6 currentConnection];
  if ([currentConnection ccs_hasEntitlementForForciblyEnablingModules])
  {
    v9 = +[CCSControlCenterOperationService sharedService];
    [v9 requestIconElementState:stateCopy completionHandler:handlerCopy];
  }

  else
  {
    if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_ERROR))
    {
      [CCSRemoteServiceProvider requestIconElementState:completionHandler:];
    }

    v10 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA068];
    v15[0] = @"The application-identifier in your entitlements file is not allow-listed for this SPI. Please contact the Control Center team.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v12 = [v10 errorWithDomain:@"CCSControlCenterServicesErrorDomain" code:0 userInfo:v11];
    (*(handlerCopy + 2))(handlerCopy, 0, v12);

    [currentConnection invalidate];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)resetToDefaultLayoutWithCompletionHandler:(id)handler
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAE80];
  handlerCopy = handler;
  currentConnection = [v3 currentConnection];
  if ([currentConnection ccs_hasEntitlementToResetToDefaultLayout])
  {
    v6 = +[CCSControlCenterOperationService sharedService];
    [v6 resetToDefaultLayoutWithCompletionHandler:handlerCopy];
  }

  else
  {
    if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_ERROR))
    {
      [CCSRemoteServiceProvider resetToDefaultLayoutWithCompletionHandler:];
    }

    v7 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA068];
    v12[0] = @"The application-identifier in your entitlements file is not allow-listed for this SPI. Please contact the Control Center team.";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v7 errorWithDomain:@"CCSControlCenterServicesErrorDomain" code:0 userInfo:v8];
    (*(handlerCopy + 2))(handlerCopy, 0, v9);

    [currentConnection invalidate];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)enumerateEndpointsUsingBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = self->_presentationEndpoints;
  objc_sync_enter(v5);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_presentationEndpoints;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      v12 = 0;
      blockCopy[2](blockCopy, v10, &v12);
      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_sync_exit(v5);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)getEnabledStateOfModuleWithIdentifier:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24427F000, v0, v1, "Missing entitlement for module with identifier '%{public}@'", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)requestEnableModuleWithIdentifier:force:completionHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24427F000, v0, v1, "Cannot enable module with identifier '%{public}@' as it's unsupported", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)requestEnableModuleWithIdentifier:force:completionHandler:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24427F000, v0, v1, "Cannot enable module with identifier '%{public}@' as it's been user disabled", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)requestEnableModuleWithIdentifier:force:completionHandler:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24427F000, v0, v1, "Cannot enable module with identifier '%{public}@' as it's not user configurable", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)requestDisableModuleWithIdentifier:completionHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24427F000, v0, v1, "Cannot disable module with identifier '%{public}@' as it's unsupported", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)requestDisableModuleWithIdentifier:completionHandler:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24427F000, v0, v1, "Cannot disable module with identifier '%{public}@' as it's not user configurable", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setVisibility:forModuleWithIdentifier:completionHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24427F000, v0, v1, "Cannot set visibility of module with identifier '%{public}@' as it's not unsupported", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setVisibility:forModuleWithIdentifier:completionHandler:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24427F000, v0, v1, "Cannot set visibility of module with identifier '%{public}@' as it's not found", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)requestAvailableModuleIdentifiersWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)presentModuleWithIdentifier:options:completionHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24427F000, v0, v1, "Cannot present module with identifier '%{public}@' as it's unsupported", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleIconElementRequest:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleControlCenterOperationType:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)requestIconElementState:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)resetToDefaultLayoutWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end