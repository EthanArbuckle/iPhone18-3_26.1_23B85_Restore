@interface CBABModuleiOS
- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)client;
- (BOOL)handleAODStateUpdate:(unint64_t)update transitionTime:(float)time context:(id)context;
- (BOOL)handleHIDEvent:(__IOHIDEvent *)event from:(__IOHIDServiceClient *)from;
- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)client;
- (BOOL)setProperty:(id)property forKey:(id)key;
- (BOOL)shouldMitigateHarmony:(__IOHIDServiceClient *)harmony;
- (CBABModuleiOS)initWithDisplayModule:(id)module andQueue:(id)queue;
- (id)copyIdentifiers;
- (id)copyPropertyInternalForKey:(id)key;
- (id)newGrimaldiFactory:(int)factory;
- (void)dealloc;
- (void)sendNotificationForKey:(id)key withValue:(id)value;
- (void)setupAABRear;
- (void)updateCurveStrategy:(UpdateCurveStrategy *)strategy withSettingsProvider:(id)provider;
@end

@implementation CBABModuleiOS

uint64_t __29__CBABModuleiOS_setupAABRear__block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      return [*(result + 32) sendNotificationForKey:a2 withValue:a3];
    }
  }

  return result;
}

- (CBABModuleiOS)initWithDisplayModule:(id)module andQueue:(id)queue
{
  selfCopy = self;
  v34 = a2;
  moduleCopy = module;
  queueCopy = queue;
  if (!module || !queueCopy)
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v31 = inited;
    v30 = 16;
    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      log = v31;
      type = v30;
      __os_log_helper_16_0_0(v29);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "invalid arguments", v29, 2u);
    }

    return 0;
  }

  v28.receiver = selfCopy;
  v28.super_class = CBABModuleiOS;
  selfCopy = [(CBModule *)&v28 initWithQueue:queueCopy];
  if (!selfCopy)
  {
    return selfCopy;
  }

  v4 = os_log_create("com.apple.CoreBrightness.CBABModuleiOS", "default");
  selfCopy->super._logHandle = v4;
  if (!selfCopy->super._logHandle)
  {
    v18 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
    v27 = v18;
    v26 = 16;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v16 = v27;
      v17 = v26;
      __os_log_helper_16_0_0(v25);
      _os_log_error_impl(&dword_1DE8E5000, v16, v17, "failed to create log handle", v25, 2u);
    }
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy->_alsServiceClients = v5;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy->_otherServiceClients = v6;
  if (selfCopy->_alsServiceClients && selfCopy->_otherServiceClients)
  {
    v7 = MEMORY[0x1E69E5928](moduleCopy);
    selfCopy->_display = v7;
    v8 = [CBALSTelemetry alloc];
    v9 = [(CBALSTelemetry *)v8 initWithQueue:queueCopy];
    selfCopy->_alsTelemetry = v9;
    [(CBModule *)selfCopy->_alsTelemetry registerNotificationBlock:?];
    v10 = +[CBAgregateSettingsProvider sharedInstance];
    selfCopy->_settingsProvider = v10;
    return selfCopy;
  }

  if (selfCopy->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v14 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v14 = init_default_corebrightness_log();
    }

    logHandle = v14;
  }

  v24 = logHandle;
  v23 = 16;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
  {
    v12 = v24;
    v13 = v23;
    __os_log_helper_16_0_0(v22);
    _os_log_error_impl(&dword_1DE8E5000, v12, v13, "failed to instantiate service containers", v22, 2u);
  }

  MEMORY[0x1E69E5920](selfCopy);
  selfCopy = 0;
  return 0;
}

uint64_t __48__CBABModuleiOS_initWithDisplayModule_andQueue___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      return [*(result + 32) sendNotificationForKey:a2 withValue:a3];
    }
  }

  return result;
}

- (void)dealloc
{
  selfCopy = self;
  v6 = a2;
  if (self->_AABC)
  {
    (*(*selfCopy->_AABC + 104))(selfCopy->_AABC, selfCopy->super._queue);
    (*(*selfCopy->_AABC + 72))(selfCopy->_AABC, [(CBDisplayModuleiOS *)selfCopy->_display displayInternal]);
    (*(*selfCopy->_AABC + 56))(selfCopy->_AABC, 0);
    AABC = selfCopy->_AABC;
    if (AABC)
    {
      (*(*AABC + 40))(AABC);
    }

    selfCopy->_AABC = 0;
  }

  if (selfCopy->_AABRear)
  {
    MEMORY[0x1E69E5920](selfCopy->_AABRear);
  }

  MEMORY[0x1E69E5920](selfCopy->_alsServiceClients);
  selfCopy->_alsServiceClients = 0;
  *&v2 = MEMORY[0x1E69E5920](selfCopy->_otherServiceClients).n128_u64[0];
  selfCopy->_otherServiceClients = 0;
  [(CBALSTelemetry *)selfCopy->_alsTelemetry stop];
  MEMORY[0x1E69E5920](selfCopy->_alsTelemetry);
  selfCopy->_alsTelemetry = 0;
  *&v3 = MEMORY[0x1E69E5920](selfCopy->_boltsProvider).n128_u64[0];
  selfCopy->_boltsProvider = 0;
  v5.receiver = selfCopy;
  v5.super_class = CBABModuleiOS;
  [(CBModule *)&v5 dealloc];
}

- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)client
{
  v48 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v45 = a2;
  clientCopy = client;
  if (IOHIDServiceClientConformsTo(client, 0xFF00u, 4u))
  {
    v43 = [[CBALSNode alloc] initWithALSServiceClient:clientCopy];
    if ([(NSMutableArray *)selfCopy->_alsServiceClients count]|| selfCopy->_AABC)
    {
      if (selfCopy->_AABC)
      {
        (*(*selfCopy->_AABC + 80))(selfCopy->_AABC, clientCopy);
      }
    }

    else
    {
      RegistryID = IOHIDServiceClientGetRegistryID(clientCopy);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v41 = IORegistryEntryIDMatching([RegistryID unsignedLongLongValue]);
        if (v41)
        {
          MatchingService = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v41);
          if (MatchingService)
          {
            if (!selfCopy->_AABC)
            {
              v39 = 0;
              [(CBABModuleiOS *)selfCopy updateCurveStrategy:&v39 withSettingsProvider:selfCopy->_settingsProvider];
              if (!v39)
              {
                if (selfCopy->super._logHandle)
                {
                  logHandle = selfCopy->super._logHandle;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    inited = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    inited = init_default_corebrightness_log();
                  }

                  logHandle = inited;
                }

                v38 = logHandle;
                v37 = OS_LOG_TYPE_DEFAULT;
                if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
                {
                  log = v38;
                  type = v37;
                  __os_log_helper_16_0_0(v36);
                  _os_log_impl(&dword_1DE8E5000, log, type, "AABC initialisation: failed to get strategy from setting provider, use default update curve strategy.", v36, 2u);
                }

                AABC::alloc(*MEMORY[0x1E695E480], v4);
              }

              selfCopy->_AABC = AABC::alloc(*MEMORY[0x1E695E480], v39, v3);
            }

            settingsProvider = selfCopy->_settingsProvider;
            if (objc_opt_respondsToSelector())
            {
              v7 = selfCopy->_settingsProvider;
              v30 = MEMORY[0x1E69E9820];
              v31 = -1073741824;
              v32 = 0;
              v33 = __37__CBABModuleiOS_addHIDServiceClient___block_invoke;
              v34 = &unk_1E867B480;
              v35 = selfCopy;
              [(CBAdaptiveAutoBrightnessSettingsProvider *)v7 registerAutoBrightnessSettingsUpdateHandler:?];
            }

            if (!selfCopy->_AABC)
            {
              AABC::alloc(*MEMORY[0x1E695E480], v6);
            }

            AABC::open(selfCopy->_AABC, MatchingService, 1, AABCCallback, selfCopy);
            (*(*selfCopy->_AABC + 64))(selfCopy->_AABC, [(CBDisplayModuleiOS *)selfCopy->_display displayInternal]);
            (*(*selfCopy->_AABC + 96))(selfCopy->_AABC, selfCopy->super._queue);
            (*(*selfCopy->_AABC + 80))(selfCopy->_AABC, clientCopy);
            otherServiceClients = selfCopy->_otherServiceClients;
            v24 = MEMORY[0x1E69E9820];
            v25 = -1073741824;
            v26 = 0;
            v27 = __37__CBABModuleiOS_addHIDServiceClient___block_invoke_37;
            v28 = &unk_1E867B668;
            v29 = selfCopy;
            [(NSMutableArray *)otherServiceClients enumerateObjectsUsingBlock:?];
            v23 = [[CBAPEndpoint alloc] initWithServiceName:@"cbroot-service" role:@"DCP"];
            [(CBABModuleiOS *)selfCopy setupAABRear];
            if (v23)
            {
              NSLog(&cfstr_CbapendpointRe.isa);
              if (selfCopy->_AABC)
              {
                AABC::registerEndpoint(selfCopy->_AABC, v23);
              }

              MEMORY[0x1E69E5920](v23);
            }

            else
            {
              NSLog(&cfstr_CbapendpointIn.isa);
            }

            if (selfCopy->_AABC)
            {
              if (selfCopy->super._logHandle)
              {
                v15 = selfCopy->super._logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v14 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v14 = init_default_corebrightness_log();
                }

                v15 = v14;
              }

              oslog = v15;
              v21 = OS_LOG_TYPE_DEBUG;
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                v12 = oslog;
                v13 = v21;
                __os_log_helper_16_0_0(v20);
                _os_log_debug_impl(&dword_1DE8E5000, v12, v13, "ALS service for internal display ready", v20, 2u);
              }

              [(CBABModuleiOS *)selfCopy sendNotificationForKey:@"ALSServiceReady" withValue:MEMORY[0x1E695E118]];
            }
          }
        }
      }
    }

    [(NSMutableArray *)selfCopy->_alsServiceClients addObject:clientCopy];
    if ([(CBALSTelemetry *)selfCopy->_alsTelemetry setALSService:clientCopy])
    {
      [(CBALSTelemetry *)selfCopy->_alsTelemetry start];
    }

    MEMORY[0x1E69E5920](v43);
    if (selfCopy->super._logHandle)
    {
      v11 = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v10 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v10 = init_default_corebrightness_log();
      }

      v11 = v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_66(v47, selfCopy->_alsServiceClients);
      _os_log_impl(&dword_1DE8E5000, v11, OS_LOG_TYPE_DEFAULT, "Als service clients: %{public}@", v47, 0xCu);
    }
  }

  else
  {
    if (selfCopy->_AABC)
    {
      (*(*selfCopy->_AABC + 80))(selfCopy->_AABC, clientCopy);
    }

    [(NSMutableArray *)selfCopy->_otherServiceClients addObject:clientCopy];
  }

  *MEMORY[0x1E69E9840];
  return 1;
}

void __37__CBABModuleiOS_addHIDServiceClient___block_invoke(uint64_t a1)
{
  v10 = a1;
  v9 = a1;
  v2 = *(*(a1 + 32) + 24);
  block = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __37__CBABModuleiOS_addHIDServiceClient___block_invoke_2;
  v7 = &unk_1E867B480;
  v8 = *(a1 + 32);
  dispatch_sync(v2, &block);
}

void __37__CBABModuleiOS_addHIDServiceClient___block_invoke_2(uint64_t a1)
{
  v10[2] = a1;
  v10[1] = a1;
  if (*(*(a1 + 32) + 32))
  {
    v10[0] = 0;
    [*(a1 + 32) updateCurveStrategy:v10 withSettingsProvider:*(*(a1 + 32) + 80)];
    if (!v10[0])
    {
      v5 = *(*(a1 + 32) + 32);
      operator new();
    }

    (*(**(*(a1 + 32) + 32) + 24))(*(*(a1 + 32) + 32), v10[0]);
  }

  else
  {
    if (*(*(a1 + 32) + 16))
    {
      v4 = *(*(a1 + 32) + 16);
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v4 = inited;
    }

    v9 = v4;
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v1 = v9;
      v2 = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_impl(&dword_1DE8E5000, v1, v2, "[Update curve strategy] failed to update curve strategy. AABC has not been initialized yet.", v7, 2u);
    }
  }
}

- (void)updateCurveStrategy:(UpdateCurveStrategy *)strategy withSettingsProvider:(id)provider
{
  v23 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v20 = a2;
  strategyCopy = strategy;
  providerCopy = provider;
  if (provider)
  {
    aabUpdateStrategyType = [providerCopy aabUpdateStrategyType];
    if (selfCopy->super._logHandle)
    {
      logHandle = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    v16 = logHandle;
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      updated = aabUpdateStrategyTypeToString(aabUpdateStrategyType);
      __os_log_helper_16_2_1_8_66(v22, updated);
      _os_log_impl(&dword_1DE8E5000, v16, v15, "Use CBAABUpdateStrategyType = %{public}@", v22, 0xCu);
    }

    if (!aabUpdateStrategyType)
    {
      operator new();
    }

    if (!selfCopy->_boltsProvider)
    {
      selfCopy->_boltsProvider = [[CBBOLTSProvider alloc] initWithQueue:selfCopy->super._queue];
    }

    newBOLTSModule = [(CBBOLTSProvider *)selfCopy->_boltsProvider newBOLTSModule];
    if (newBOLTSModule)
    {
      switch(aabUpdateStrategyType)
      {
        case 1:
          *strategyCopy = newBOLTSModule;
          break;
        case 2:
          operator new();
        case 3:
          operator new();
        default:
          *strategyCopy = 0;
          break;
      }
    }

    else
    {
      if (selfCopy->super._logHandle)
      {
        v8 = selfCopy->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v7 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v7 = init_default_corebrightness_log();
        }

        v8 = v7;
      }

      v13 = v8;
      v12 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v13;
        v6 = v12;
        __os_log_helper_16_0_0(v11);
        _os_log_impl(&dword_1DE8E5000, v5, v6, "BOLTS initialisation failed.", v11, 2u);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)handleHIDEvent:(__IOHIDEvent *)event from:(__IOHIDServiceClient *)from
{
  if (([(NSMutableArray *)self->_alsServiceClients containsObject:from]& 1) != 0 || ([(NSMutableArray *)self->_otherServiceClients containsObject:from]& 1) != 0)
  {
    if (self->_AABC)
    {
      (*(*self->_AABC + 48))(self->_AABC, from, event);
    }

    return 1;
  }

  if (!self->_AABRear)
  {
    return 1;
  }

  return [self->_AABRear handleHIDEvent:event from:from];
}

- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)client
{
  if (self->_AABC)
  {
    (*(*self->_AABC + 88))(self->_AABC, client);
  }

  [self->_AABRear removeHIDServiceClient:client];
  [(NSMutableArray *)self->_alsServiceClients removeObject:client];
  [(NSMutableArray *)self->_otherServiceClients removeObject:client];
  return 1;
}

- (BOOL)setProperty:(id)property forKey:(id)key
{
  v5 = 0;
  if (self->_AABC)
  {
    (*(*self->_AABC + 120))(self->_AABC, key, property, 0);
    v5 = 1;
  }

  [self->_AABRear setProperty:property forKey:key];
  [(CBALSTelemetry *)self->_alsTelemetry setProperty:property forKey:key];
  return v5 & 1;
}

- (void)sendNotificationForKey:(id)key withValue:(id)value
{
  if (self->super._notificationBlock)
  {
    (*(self->super._notificationBlock + 2))();
  }
}

- (id)newGrimaldiFactory:(int)factory
{
  v5 = objc_alloc_init(CBGrimaldiFactory);
  if (factory == 1)
  {
    v4 = objc_alloc_init(CBGrimaldiSamplingStrategySingleSample);
  }

  else
  {
    v4 = objc_alloc_init(CBGrimaldiSamplingStrategyLegacy);
  }

  [(CBGrimaldiFactory *)v5 setSamplingStrategy:v4];
  MEMORY[0x1E69E5920](v4);
  return v5;
}

- (void)setupAABRear
{
  selfCopy = self;
  v27 = a2;
  v26 = 0;
  if (([(CBBacklightNode *)[(CBDisplayModuleiOS *)self->_display backlightParams] loadUint:@"grimaldi-disabled" toDestination:&v26]& 1) == 0 || !v26)
  {
    if (!selfCopy->_AABRear)
    {
      v25 = 0;
      [(CBBacklightNode *)[(CBDisplayModuleiOS *)selfCopy->_display backlightParams] loadUint:@"grimaldi-sampling-strategy" toDestination:&v25];
      v24 = [(CBABModuleiOS *)selfCopy newGrimaldiFactory:v25];
      v2 = [AABRear alloc];
      v3 = [(AABRear *)v2 initWithQueue:selfCopy->super._queue andGrimaldiFactory:v24];
      selfCopy->_AABRear = v3;
      MEMORY[0x1E69E5920](v24);
      if (selfCopy->_AABRear)
      {
        if (selfCopy->super._logHandle)
        {
          logHandle = selfCopy->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            inited = init_default_corebrightness_log();
          }

          logHandle = inited;
        }

        v23 = logHandle;
        v22 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
        {
          log = v23;
          type = v22;
          __os_log_helper_16_0_0(v21);
          _os_log_impl(&dword_1DE8E5000, log, type, "Rear AAB has been initialized.", v21, 2u);
        }

        AABRear = selfCopy->_AABRear;
        v15 = MEMORY[0x1E69E9820];
        v16 = -1073741824;
        v17 = 0;
        v18 = __29__CBABModuleiOS_setupAABRear__block_invoke;
        v19 = &unk_1E867B558;
        v20 = selfCopy;
        [(CBModule *)AABRear registerNotificationBlock:?];
      }
    }

    if (selfCopy->_AABRear && selfCopy->_AABC)
    {
      v9 = MEMORY[0x1E69E9820];
      v10 = -1073741824;
      v11 = 0;
      v12 = __29__CBABModuleiOS_setupAABRear__block_invoke_2;
      v13 = &unk_1E867B480;
      v14 = selfCopy;
      v30 = &[CBABModuleiOS setupAABRear]::onceToken;
      v29 = &v9;
      if ([CBABModuleiOS setupAABRear]::onceToken != -1)
      {
        dispatch_once(v30, v29);
      }
    }
  }
}

- (BOOL)shouldMitigateHarmony:(__IOHIDServiceClient *)harmony
{
  v4 = 0;
  if (self->_AABC)
  {
    v5 = AABC::getALSSensorTypeFromService(self->_AABC, harmony) == 8;
    return (v5 | (AABC::getALSSensorTypeFromService(self->_AABC, harmony) == 9)) != 0;
  }

  return v4;
}

- (id)copyPropertyInternalForKey:(id)key
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  if ([key isEqualToString:@"StatusInfo"])
  {
    v7 = [CBStatusInfoHelper copyStatusInfoFor:self];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"CBABModuleiOS", 0}];
    }

    *&v3 = MEMORY[0x1E69E5920](v7).n128_u64[0];
  }

  else if ([key isEqualToString:@"BLControlAlsSupported"])
  {
    v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->_AABC != 0];
  }

  else if (self->_AABC)
  {
    v8 = [(*(*self->_AABC + 112))(self->_AABC key];
  }

  if (!v8)
  {
    v8 = [(CBALSTelemetry *)self->_alsTelemetry copyPropertyForKey:key, v3];
  }

  if (self->super._logHandle)
  {
    logHandle = self->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v11, key, v8);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@ result=%@", v11, 0x16u);
  }

  *MEMORY[0x1E69E9840];
  return v8;
}

- (id)copyIdentifiers
{
  selfCopy = self;
  v3 = a2;
  return [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"TrustedLux", @"Lux", @"BLControlAlsSupported", @"ALSUserPreference", @"EcoMode", @"ALSCurveInfo", @"EventTimestampFirstALSSample", @"SemanticAmbientLightLevel", 0}];
}

- (BOOL)handleAODStateUpdate:(unint64_t)update transitionTime:(float)time context:(id)context
{
  if (self->_AABC)
  {
    AABC::handleAODStateUpdate(self->_AABC, update, context, time);
  }

  return 1;
}

@end