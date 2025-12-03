@interface MTRPluginDeviceControllerRegistry
+ (id)sharedInstance;
- (BOOL)addDeviceController:(id)controller;
- (BOOL)addDeviceController:(id)controller forEntityWithIdentifier:(id)identifier;
- (BOOL)removeDeviceController:(id)controller;
- (MTRPluginDeviceControllerRegistry)init;
- (NSArray)controllers;
- (id)_deviceControllerEntityForIdentifier:(id)identifier;
- (id)deviceControllerForUUID:(id)d;
- (int64_t)_runningModeForUUID:(id)d;
- (void)_forceUpdateRunningModeForController:(id)controller;
- (void)_queryAndUpdateRunningModeForHomeUUID:(id)d;
- (void)_resumeControllerForPotentialPairing:(id)pairing;
- (void)_runningModeChanged:(int64_t)changed forHomeUUID:(id)d;
- (void)_updateRunningMode:(int64_t)mode forceUpdateControllerConfiguration:(BOOL)configuration forHomeUUID:(id)d;
- (void)_updateRunningModeForAllControllers;
- (void)_updateRunningModeOfAllClientsForHome:(id)home;
- (void)_updateSuspendedStateBasedOnRunningMode:(id)mode;
- (void)devicesChangedForController:(id)controller;
@end

@implementation MTRPluginDeviceControllerRegistry

+ (id)sharedInstance
{
  if (sharedInstance_creation_3 != -1)
  {
    +[MTRPluginDeviceControllerRegistry sharedInstance];
  }

  v3 = sharedInstance_sInstance_3;

  return v3;
}

uint64_t __51__MTRPluginDeviceControllerRegistry_sharedInstance__block_invoke()
{
  sharedInstance_sInstance_3 = objc_alloc_init(MTRPluginDeviceControllerRegistry);

  return MEMORY[0x2821F96F8]();
}

- (MTRPluginDeviceControllerRegistry)init
{
  v10.receiver = self;
  v10.super_class = MTRPluginDeviceControllerRegistry;
  v2 = [(MTRPluginDeviceControllerRegistry *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    controllers = v2->_controllers;
    v2->_controllers = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    controllerEntities = v2->_controllerEntities;
    v2->_controllerEntities = v5;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__resumeControllerForPotentialPairing_ name:@"MTRPluginPairingPotentiallyStartingNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__updateSuspendedStateBasedOnRunningMode_ name:@"MTRPluginPairingPotentiallyCompletedNotification" object:0];
  }

  return v2;
}

- (NSArray)controllers
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  controllerEntities = [(MTRPluginDeviceControllerRegistry *)selfCopy controllerEntities];
  v5 = [controllerEntities countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(controllerEntities);
        }

        controller = [*(*(&v11 + 1) + 8 * i) controller];
        [array addObject:controller];
      }

      v5 = [controllerEntities countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  objc_sync_exit(selfCopy);
  v9 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)deviceControllerForUUID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(MTRPluginDeviceControllerRegistry *)selfCopy _deviceControllerEntityForIdentifier:dCopy];
  controller = [v6 controller];

  if (controller)
  {
    controller2 = [v6 controller];
  }

  else
  {
    v9 = matterPluginLog_default;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      controllerEntities = [(MTRPluginDeviceControllerRegistry *)selfCopy controllerEntities];
      v13 = 138412802;
      v14 = selfCopy;
      v15 = 2112;
      v16 = dCopy;
      v17 = 2048;
      v18 = [controllerEntities count];
      _os_log_error_impl(&dword_25830F000, v9, OS_LOG_TYPE_ERROR, "%@ Cannot find controller for UUID %@ in %lu controllers - controller was not added to registry", &v13, 0x20u);
    }

    controller2 = 0;
  }

  objc_sync_exit(selfCopy);
  v10 = *MEMORY[0x277D85DE8];

  return controller2;
}

- (int64_t)_runningModeForUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(MTRPluginDeviceControllerRegistry *)selfCopy _deviceControllerEntityForIdentifier:dCopy];
    controller = [v6 controller];

    if (controller)
    {
      runningMode = [v6 runningMode];
    }

    else
    {
      v9 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
      {
        [(MTRPluginDeviceControllerRegistry *)selfCopy _runningModeForUUID:dCopy, v9];
      }

      runningMode = 0;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    runningMode = 0;
  }

  return runningMode;
}

- (id)_deviceControllerEntityForIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    controllerEntities = [(MTRPluginDeviceControllerRegistry *)self controllerEntities];
    v6 = [controllerEntities countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(controllerEntities);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          entityIdentifier = [v9 entityIdentifier];
          v11 = [entityIdentifier isEqual:identifierCopy];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [controllerEntities countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
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
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)addDeviceController:(id)controller
{
  controllerCopy = controller;
  uniqueIdentifier = [controllerCopy uniqueIdentifier];
  LOBYTE(self) = [(MTRPluginDeviceControllerRegistry *)self addDeviceController:controllerCopy forEntityWithIdentifier:uniqueIdentifier];

  return self;
}

- (BOOL)addDeviceController:(id)controller forEntityWithIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(MTRPluginDeviceControllerRegistry *)selfCopy _deviceControllerEntityForIdentifier:identifierCopy];
  v10 = matterPluginLog_default;
  if (v9)
  {
    v11 = matterPluginLog_default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      controller = [v9 controller];
      v17 = 138412802;
      v18 = selfCopy;
      v19 = 2112;
      v20 = controller;
      v21 = 2112;
      v22 = identifierCopy;
      _os_log_impl(&dword_25830F000, v11, OS_LOG_TYPE_DEFAULT, "%@ Found existing controller %@ for entity UUID %@, ignoring add request", &v17, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412802;
      v18 = selfCopy;
      v19 = 2112;
      v20 = controllerCopy;
      v21 = 2112;
      v22 = identifierCopy;
      _os_log_impl(&dword_25830F000, v10, OS_LOG_TYPE_DEFAULT, "%@ Adding device controller: %@ for entityIdentifier %@", &v17, 0x20u);
    }

    MTRAssociateControllerWithHomeUUID(controllerCopy, identifierCopy);
    controllerEntities = [(MTRPluginDeviceControllerRegistry *)selfCopy controllerEntities];
    v14 = [[MTRDeviceControllerEntity alloc] initWithController:controllerCopy entityIdentifier:identifierCopy runningMode:0];
    [controllerEntities addObject:v14];

    v11 = +[MTRPluginLocalClient localDispatchQueue];
    [controllerCopy addDeviceControllerDelegate:selfCopy queue:v11];
  }

  objc_sync_exit(selfCopy);
  if (!v9)
  {
    [(MTRPluginDeviceControllerRegistry *)selfCopy _queryAndUpdateRunningModeForHomeUUID:identifierCopy];
  }

  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)removeDeviceController:(id)controller
{
  v31 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = selfCopy;
  controllerEntities = [(MTRPluginDeviceControllerRegistry *)selfCopy controllerEntities];
  v7 = [controllerEntities copy];

  v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v8)
  {
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        controller = [v11 controller];
        uniqueIdentifier = [controller uniqueIdentifier];
        uniqueIdentifier2 = [controllerCopy uniqueIdentifier];
        v15 = [uniqueIdentifier isEqual:uniqueIdentifier2];

        if (v15)
        {
          v17 = matterPluginLog_default;
          if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v27 = obj;
            v28 = 2112;
            v29 = v11;
            _os_log_impl(&dword_25830F000, v17, OS_LOG_TYPE_DEFAULT, "%@ Removing device controller entity: %@", buf, 0x16u);
          }

          [controllerCopy removeDeviceControllerDelegate:obj];
          controllerEntities2 = [(MTRPluginDeviceControllerRegistry *)obj controllerEntities];
          [controllerEntities2 removeObject:v11];

          goto LABEL_14;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v16 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = obj;
    v28 = 2112;
    v29 = controllerCopy;
    _os_log_impl(&dword_25830F000, v16, OS_LOG_TYPE_DEFAULT, "%@ Tried to remove device controller, but wasn't present: %@", buf, 0x16u);
  }

LABEL_14:
  objc_sync_exit(obj);

  v19 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_forceUpdateRunningModeForController:(id)controller
{
  v44 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v37 = 2112;
    v38 = controllerCopy;
    _os_log_impl(&dword_25830F000, v5, OS_LOG_TYPE_DEFAULT, "%@ _forceUpdateRunningModeForController for controller %@", buf, 0x16u);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  controllerEntities = [(MTRPluginDeviceControllerRegistry *)self controllerEntities];
  v7 = [controllerEntities copy];

  obj = v7;
  v30 = [v7 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v30)
  {
    v8 = *v32;
    v28 = controllerCopy;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        if (!controllerCopy)
        {
          goto LABEL_10;
        }

        controller = [*(*(&v31 + 1) + 8 * i) controller];
        uniqueIdentifier = [controller uniqueIdentifier];
        uniqueIdentifier2 = [controllerCopy uniqueIdentifier];
        v14 = [uniqueIdentifier isEqual:uniqueIdentifier2];

        if (v14)
        {
LABEL_10:
          v15 = +[MTRPluginServer sharedInstance];
          entityIdentifier = [v10 entityIdentifier];
          v17 = [v15 _unsafeQueryRunningModeFromDelegateForHomeUUID:entityIdentifier];

          v18 = matterPluginLog_default;
          if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
          {
            v19 = v18;
            controller2 = [v10 controller];
            uniqueIdentifier3 = [controller2 uniqueIdentifier];
            [v10 entityIdentifier];
            v22 = v8;
            v24 = v23 = self;
            v25 = MTRPluginHomeRunnningModeAsString(v17);
            *buf = 138413058;
            selfCopy = v23;
            v37 = 2112;
            v38 = uniqueIdentifier3;
            v39 = 2112;
            v40 = v24;
            v41 = 2112;
            v42 = v25;
            _os_log_impl(&dword_25830F000, v19, OS_LOG_TYPE_DEFAULT, "%@ _forceUpdateRunningModeForController found controller UUID %@ homeUUID %@ current running mode %@", buf, 0x2Au);

            self = v23;
            v8 = v22;
            controllerCopy = v28;
          }

          entityIdentifier2 = [v10 entityIdentifier];
          [(MTRPluginDeviceControllerRegistry *)self _runningModeChanged:v17 forHomeUUID:entityIdentifier2];
        }
      }

      v30 = [obj countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v30);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)devicesChangedForController:(id)controller
{
  v16 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = matterPluginLog_default;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [controllerCopy uniqueIdentifier];
    devices = [controllerCopy devices];
    v10 = 138412802;
    v11 = selfCopy;
    v12 = 2112;
    v13 = uniqueIdentifier;
    v14 = 2048;
    v15 = [devices count];
    _os_log_impl(&dword_25830F000, v6, OS_LOG_TYPE_DEFAULT, "%@ Device controller delegate devices changed for controller UUID %@ devices count %lu", &v10, 0x20u);
  }

  [(MTRPluginDeviceControllerRegistry *)selfCopy _forceUpdateRunningModeForController:controllerCopy];
  objc_sync_exit(selfCopy);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_resumeControllerForPotentialPairing:(id)pairing
{
  v19 = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
  v5 = +[MTRPluginServer sharedInstance];
  isRunning = [v5 isRunning];

  v7 = matterPluginLog_default;
  v8 = os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT);
  if (isRunning)
  {
    if (v8)
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_25830F000, v7, OS_LOG_TYPE_DEFAULT, "*** We are potentially pairing, forcing/returning local mode without querying delegate", &v15, 2u);
    }

    object = [pairingCopy object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      object2 = [pairingCopy object];
    }

    else
    {
      object2 = 0;
    }

    v12 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      selfCopy2 = self;
      v17 = 2112;
      v18 = object2;
      _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Forcing running mode to local for home %@, since we are potentially pairing", &v15, 0x16u);
    }

    [(MTRPluginDeviceControllerRegistry *)self _runningModeChanged:2 forHomeUUID:object2];
    v13 = +[MTRPluginServer sharedInstance];
    [v13 runningModeForHomeUUID:object2 runningModeChanged:2];

    goto LABEL_12;
  }

  if (v8)
  {
    object2 = v7;
    name = [pairingCopy name];
    v15 = 138412546;
    selfCopy2 = self;
    v17 = 2112;
    v18 = name;
    _os_log_impl(&dword_25830F000, object2, OS_LOG_TYPE_DEFAULT, "%@ Ignoring handling notification %@ since and server running state is NO", &v15, 0x16u);

LABEL_12:
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateSuspendedStateBasedOnRunningMode:(id)mode
{
  v35 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  v5 = +[MTRPluginServer sharedInstance];
  isRunning = [v5 isRunning];

  if (isRunning)
  {
    object = [modeCopy object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      object2 = [modeCopy object];

      if (object2)
      {
        v9 = matterPluginLog_default;
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
          name = [modeCopy name];
          *buf = 138412802;
          selfCopy3 = self;
          v30 = 2112;
          v31 = object2;
          v32 = 2112;
          v33 = name;
          _os_log_impl(&dword_25830F000, v10, OS_LOG_TYPE_DEFAULT, "%@ Potentially updating running mode for home %@, due to notification %@", buf, 0x20u);
        }

        [(MTRPluginDeviceControllerRegistry *)self _queryAndUpdateRunningModeForHomeUUID:object2];
        goto LABEL_19;
      }
    }

    else
    {
    }

    v14 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      name2 = [modeCopy name];
      *buf = 138412546;
      selfCopy3 = self;
      v30 = 2112;
      v31 = name2;
      _os_log_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEFAULT, "%@ Handling notification %@ and re-querying running mode for all homes", buf, 0x16u);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    controllerEntities = [(MTRPluginDeviceControllerRegistry *)self controllerEntities];
    object2 = [controllerEntities copy];

    v18 = [object2 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      do
      {
        v21 = 0;
        do
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(object2);
          }

          entityIdentifier = [*(*(&v24 + 1) + 8 * v21) entityIdentifier];
          [(MTRPluginDeviceControllerRegistry *)self _queryAndUpdateRunningModeForHomeUUID:entityIdentifier];

          ++v21;
        }

        while (v19 != v21);
        v19 = [object2 countByEnumeratingWithState:&v24 objects:v34 count:16];
      }

      while (v19);
    }

    goto LABEL_19;
  }

  v12 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    object2 = v12;
    name3 = [modeCopy name];
    *buf = 138412546;
    selfCopy3 = self;
    v30 = 2112;
    v31 = name3;
    _os_log_impl(&dword_25830F000, object2, OS_LOG_TYPE_DEFAULT, "%@ Ignoring handling notification %@ since and server running state is NO", buf, 0x16u);

LABEL_19:
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_queryAndUpdateRunningModeForHomeUUID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    v5 = +[MTRPluginServer sharedInstance];
    v6 = [v5 _safeQueryRunningModeFromDelegateForHomeUUID:dCopy];

    v7 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = MTRPluginHomeRunnningModeAsString(v6);
      v12 = 138412802;
      selfCopy = self;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ Home delegate returned running mode: %@ for homeUUID: %@", &v12, 0x20u);
    }

    v10 = +[MTRPluginServer sharedInstance];
    [v10 runningModeForHomeUUID:dCopy runningModeChanged:v6];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_updateRunningModeForAllControllers
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  controllerEntities = [(MTRPluginDeviceControllerRegistry *)self controllerEntities];
  v4 = [controllerEntities copy];

  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = +[MTRPluginServer sharedInstance];
        entityIdentifier = [v9 entityIdentifier];
        v12 = [v10 _unsafeQueryRunningModeFromDelegateForHomeUUID:entityIdentifier];

        entityIdentifier2 = [v9 entityIdentifier];
        [(MTRPluginDeviceControllerRegistry *)self _updateRunningMode:v12 forceUpdateControllerConfiguration:1 forHomeUUID:entityIdentifier2];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateRunningMode:(int64_t)mode forceUpdateControllerConfiguration:(BOOL)configuration forHomeUUID:(id)d
{
  configurationCopy = configuration;
  v42 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = [(MTRPluginDeviceControllerRegistry *)self _runningModeForUUID:dCopy];
  v10 = v9;
  if (!dCopy || v9 != mode)
  {
    v11 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = MTRPluginHomeRunnningModeAsString(v10);
      v14 = MTRPluginHomeRunnningModeAsString(mode);
      *buf = 138413058;
      selfCopy2 = self;
      v36 = 2112;
      v37 = v13;
      v38 = 2112;
      v39 = v14;
      v40 = 2112;
      v41 = dCopy;
      _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Switching running mode from '%@' to '%@' for home %@", buf, 0x2Au);
    }

    [(MTRPluginDeviceControllerRegistry *)self _runningModeChanged:mode forHomeUUID:dCopy];
  }

  if (dCopy && !configurationCopy && v10 == mode)
  {
    v15 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = MTRPluginHomeRunnningModeAsString(mode);
      *buf = 138412802;
      selfCopy2 = self;
      v36 = 2112;
      v37 = v17;
      v38 = 2112;
      v39 = dCopy;
      _os_log_impl(&dword_25830F000, v16, OS_LOG_TYPE_DEFAULT, "%@ Running mode '%@' unchanged for home %@", buf, 0x20u);
    }
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = +[MTRPluginClientManager sharedInstance];
    clients = [v18 clients];
    v20 = [clients copy];

    v21 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v30;
      do
      {
        v24 = 0;
        do
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v29 + 1) + 8 * v24);
          if (!dCopy || ([*(*(&v29 + 1) + 8 * v24) homeUUID], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(dCopy, "isEqual:", v26), v26, v27))
          {
            [v25 runningModeChanged:mode];
          }

          ++v24;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v22);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_runningModeChanged:(int64_t)changed forHomeUUID:(id)d
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  controllerEntities = [(MTRPluginDeviceControllerRegistry *)selfCopy controllerEntities];
  v9 = [controllerEntities countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v9)
  {
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(controllerEntities);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (dCopy)
        {
          entityIdentifier = [*(*(&v19 + 1) + 8 * i) entityIdentifier];
          v14 = [dCopy isEqual:entityIdentifier];

          if (!v14)
          {
            continue;
          }
        }

        v15 = matterPluginLog_default;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = MTRPluginHomeRunnningModeAsString(changed);
          *buf = 138412802;
          v24 = selfCopy;
          v25 = 2112;
          v26 = v16;
          v27 = 2112;
          v28 = dCopy;
          _os_log_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEFAULT, "%@ Switching running mode to '%@' for home %@", buf, 0x20u);
        }

        [v12 setRunningMode:changed];
        controller = [v12 controller];
        MTRUpdateRunningModeForController(changed, controller, selfCopy);
      }

      v9 = [controllerEntities countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v9);
  }

  objc_sync_exit(selfCopy);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)_updateRunningModeOfAllClientsForHome:(id)home
{
  v32 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  if (homeCopy)
  {
    v5 = +[MTRPluginServer sharedInstance];
    v6 = [v5 _unsafeQueryRunningModeFromDelegateForHomeUUID:homeCopy];

    v7 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = MTRPluginHomeRunnningModeAsString(v6);
      *buf = 138412802;
      selfCopy = self;
      v28 = 2112;
      v29 = v9;
      v30 = 2112;
      v31 = homeCopy;
      _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ Updating running mode for all clients to '%@' for home %@", buf, 0x20u);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = +[MTRPluginClientManager sharedInstance];
    clients = [v10 clients];
    v12 = [clients copy];

    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          homeUUID = [v17 homeUUID];
          v19 = [homeCopy isEqual:homeUUID];

          if (v19)
          {
            [v17 runningModeChanged:v6];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_runningModeForUUID:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_25830F000, log, OS_LOG_TYPE_ERROR, "%@ Cannot find controller for UUID %@ - returning unknown running mode, controller was not added to registry", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end