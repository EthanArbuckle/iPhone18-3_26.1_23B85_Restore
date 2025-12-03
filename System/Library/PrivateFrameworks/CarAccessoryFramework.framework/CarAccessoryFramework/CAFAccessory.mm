@interface CAFAccessory
+ (CAFAccessory)accessoryWithCar:(id)car pluginID:(id)d config:(id)config;
+ (id)_sharedServiceGroupInitQueue;
+ (id)registeredAccessoryClasses;
+ (void)load;
+ (void)registerAccessoryClass:(Class)class;
- (BOOL)usable;
- (CAFAccessory)initWithCar:(id)car pluginID:(id)d config:(id)config;
- (CAFCar)car;
- (NSArray)sortedServices;
- (NSString)description;
- (id)currentDescriptionForCache:(id)cache;
- (id)servicesForIndexBy:(id)by;
- (id)servicesForType:(id)type;
- (unint64_t)state;
- (void)_serviceDidUpdate:(id)update characteristic:(id)characteristic;
- (void)_serviceDidUpdate:(id)update control:(id)control;
- (void)_serviceReceivedAllValues:(id)values;
- (void)invalidate;
- (void)refreshCharacteristics;
- (void)registerObserver:(id)observer;
- (void)setReceivedAllValues:(BOOL)values;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFAccessory

+ (void)load
{
  v2 = objc_opt_class();
  if (v2 != objc_opt_class())
  {
    v3 = objc_opt_class();

    [CAFAccessory registerAccessoryClass:v3];
  }
}

+ (void)registerAccessoryClass:(Class)class
{
  if (registerAccessoryClass__onceToken != -1)
  {
    +[CAFAccessory registerAccessoryClass:];
  }

  obj = _registeredAccessoryClasses;
  objc_sync_enter(obj);
  v4 = _registeredAccessoryClasses;
  accessoryIdentifier = [(objc_class *)class accessoryIdentifier];
  [v4 setObject:class forKeyedSubscript:accessoryIdentifier];

  objc_sync_exit(obj);
}

uint64_t __39__CAFAccessory_registerAccessoryClass___block_invoke()
{
  _registeredAccessoryClasses = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)registeredAccessoryClasses
{
  v2 = _registeredAccessoryClasses;
  objc_sync_enter(v2);
  v3 = [_registeredAccessoryClasses copy];
  objc_sync_exit(v2);

  return v3;
}

+ (CAFAccessory)accessoryWithCar:(id)car pluginID:(id)d config:(id)config
{
  configCopy = config;
  dCopy = d;
  carCopy = car;
  v10 = [CAFCarConfiguration getType:configCopy];
  v11 = +[CAFAccessory registeredAccessoryClasses];
  v12 = [v11 objectForKeyedSubscript:v10];

  if (!v12)
  {
    v12 = objc_opt_class();
  }

  v13 = [[v12 alloc] initWithCar:carCopy pluginID:dCopy config:configCopy];

  return v13;
}

+ (id)_sharedServiceGroupInitQueue
{
  if (_sharedServiceGroupInitQueue_onceToken != -1)
  {
    +[CAFAccessory _sharedServiceGroupInitQueue];
  }

  v3 = _sharedServiceGroupInitQueue__sharedServiceGroupInitQueue;

  return v3;
}

void __44__CAFAccessory__sharedServiceGroupInitQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.CarAccessoryFramework.Accessory.ServiceGroupInit", v2);
  v1 = _sharedServiceGroupInitQueue__sharedServiceGroupInitQueue;
  _sharedServiceGroupInitQueue__sharedServiceGroupInitQueue = v0;
}

- (CAFAccessory)initWithCar:(id)car pluginID:(id)d config:(id)config
{
  v94 = *MEMORY[0x277D85DE8];
  carCopy = car;
  dCopy = d;
  configCopy = config;
  v91.receiver = self;
  v91.super_class = CAFAccessory;
  v11 = [(CAFAccessory *)&v91 init];
  v12 = v11;
  if (v11)
  {
    v11->_indexLock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v11->_car, carCopy);
    objc_storeStrong((v12 + 40), d);
    objc_opt_class();
    v13 = [configCopy objectForKeyedSubscript:@"iid"];
    if (v13 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v12 + 48);
    *(v12 + 48) = v14;

    if (*(v12 + 48))
    {
      v16 = [CAFCarConfiguration getType:configCopy];
      v17 = *(v12 + 56);
      *(v12 + 56) = v16;

      if (*(v12 + 56))
      {
        v18 = [CAFCarConfiguration getUUID:*(v12 + 40) instanceID:*(v12 + 48)];
        v19 = *(v12 + 64);
        *(v12 + 64) = v18;

        v20 = [CAFAccessoryTypes accessoryNameForType:*(v12 + 56)];
        v21 = *(v12 + 72);
        *(v12 + 72) = v20;

        objc_opt_class();
        v22 = [configCopy objectForKeyedSubscript:@"version"];
        if (v22 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        v25 = *(v12 + 24);
        *(v12 + 24) = v23;

        v26 = objc_alloc(MEMORY[0x277CF89C0]);
        observerProtocol = [objc_opt_class() observerProtocol];
        v28 = [v26 initWithProtocol:observerProtocol];
        v29 = *(v12 + 136);
        *(v12 + 136) = v28;

        v30 = [[CAFCachedDescription alloc] initWithCacheable:v12];
        v31 = *(v12 + 80);
        *(v12 + 80) = v30;

        v32 = [[CAFValueMonitor alloc] initWithDelegate:v12];
        v33 = *(v12 + 88);
        *(v12 + 88) = v32;

        v34 = objc_opt_new();
        obj = objc_opt_new();
        v35 = objc_opt_new();
        objc_opt_class();
        v36 = [configCopy objectForKeyedSubscript:@"services"];
        if (v36 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v37 = v36;
        }

        else
        {
          v37 = 0;
        }

        v76 = carCopy;

        if (v37)
        {
          v86[0] = MEMORY[0x277D85DD0];
          v86[1] = 3221225472;
          v86[2] = __44__CAFAccessory_initWithCar_pluginID_config___block_invoke;
          v86[3] = &unk_27890D458;
          v87 = v12;
          v88 = v34;
          v89 = obj;
          v90 = v35;
          [v37 enumerateObjectsUsingBlock:v86];
        }

        v71 = v35;
        v72 = v37;
        v74 = configCopy;
        v75 = dCopy;
        os_unfair_lock_lock((v12 + 12));
        objc_storeStrong((v12 + 32), v34);
        v73 = v34;
        allValues = [v34 allValues];
        v39 = *(v12 + 96);
        *(v12 + 96) = allValues;

        v40 = objc_opt_new();
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v41 = *(v12 + 96);
        v42 = [v41 countByEnumeratingWithState:&v82 objects:v93 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v83;
          do
          {
            for (i = 0; i != v43; ++i)
            {
              if (*v83 != v44)
              {
                objc_enumerationMutation(v41);
              }

              characteristics = [*(*(&v82 + 1) + 8 * i) characteristics];
              allValues2 = [characteristics allValues];
              [v40 addObjectsFromArray:allValues2];
            }

            v43 = [v41 countByEnumeratingWithState:&v82 objects:v93 count:16];
          }

          while (v43);
        }

        objc_storeStrong((v12 + 104), v40);
        v48 = objc_opt_new();
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v49 = *(v12 + 96);
        v50 = [v49 countByEnumeratingWithState:&v78 objects:v92 count:16];
        if (v50)
        {
          v51 = v50;
          v52 = *v79;
          do
          {
            for (j = 0; j != v51; ++j)
            {
              if (*v79 != v52)
              {
                objc_enumerationMutation(v49);
              }

              controls = [*(*(&v78 + 1) + 8 * j) controls];
              allValues3 = [controls allValues];
              [v48 addObjectsFromArray:allValues3];
            }

            v51 = [v49 countByEnumeratingWithState:&v78 objects:v92 count:16];
          }

          while (v51);
        }

        objc_storeStrong((v12 + 112), v48);
        objc_storeStrong((v12 + 120), obj);
        v56 = *(v12 + 128);
        *(v12 + 128) = v71;
        v57 = v71;

        os_unfair_lock_unlock((v12 + 12));
        cachedDescription = [v12 cachedDescription];
        [cachedDescription setNeedsRefreshDescription];

        v59 = CAFAccessoryLogging();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          [(CAFAccessory *)v12 initWithCar:v59 pluginID:v60 config:v61, v62, v63, v64, v65];
        }

        [*(v12 + 88) signalReadyToMonitor];
        receivedAllValues = [*(v12 + 88) receivedAllValues];

        [v12 setReceivedAllValues:receivedAllValues];
        dCopy = v75;
        carCopy = v76;
        configCopy = v74;
        goto LABEL_38;
      }

      v68 = CAFAccessoryLogging();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        [CAFAccessory initWithCar:(v12 + 48) pluginID:v68 config:?];
      }
    }

    else
    {
      v24 = CAFAccessoryLogging();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [CAFAccessory initWithCar:v24 pluginID:? config:?];
      }
    }

    v67 = 0;
    goto LABEL_43;
  }

LABEL_38:
  v67 = v12;
LABEL_43:

  v69 = *MEMORY[0x277D85DE8];
  return v67;
}

void __44__CAFAccessory_initWithCar_pluginID_config___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (!v4 || (objc_opt_isKindOfClass() & 1) == 0)
  {

    v11 = CAFAccessoryLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __44__CAFAccessory_initWithCar_pluginID_config___block_invoke_cold_2(a1);
    }

    v10 = 0;
    goto LABEL_17;
  }

  v5 = (a1 + 32);
  v6 = [*(a1 + 32) car];
  v7 = [v6 carManager];
  v8 = [*(a1 + 32) categoryType];
  v9 = [v7 shouldAllocAccessoryType:v8 serviceConfig:v4];

  v10 = v4;
  if (v9)
  {
    v11 = [CAFService serviceWithAccessory:*v5 config:v4];
    if (v11)
    {
      os_unfair_lock_lock((*(a1 + 32) + 12));
      v12 = *(a1 + 40);
      v13 = [v11 uniqueIdentifier];
      [v12 setObject:v11 forKeyedSubscript:v13];

      if (([v11 receivedAllValues]& 1) == 0)
      {
        v14 = [*v5 valueMonitor];
        v15 = [v11 uniqueIdentifier];
        [v14 monitorForValue:v15];
      }

      v16 = *(a1 + 48);
      v17 = [v11 serviceType];
      v18 = [v16 objectForKeyedSubscript:v17];

      if (!v18)
      {
        v18 = objc_opt_new();
        v19 = *(a1 + 48);
        v20 = [v11 serviceType];
        [v19 setObject:v18 forKeyedSubscript:v20];
      }

      [v18 addObject:v11];
      v21 = [v11 indexBy];

      if (v21)
      {
        v22 = *(a1 + 56);
        v23 = [v11 serviceType];
        v24 = [v22 objectForKeyedSubscript:v23];

        if (!v24)
        {
          v24 = objc_opt_new();
          v25 = *(a1 + 56);
          v26 = [v11 serviceType];
          [v25 setObject:v24 forKeyedSubscript:v26];
        }
      }

      os_unfair_lock_unlock(*v5 + 3);
    }

    else
    {
      v27 = CAFAccessoryLogging();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        __44__CAFAccessory_initWithCar_pluginID_config___block_invoke_cold_1(v5);
      }
    }

    v10 = v4;
LABEL_17:
  }
}

- (NSArray)sortedServices
{
  services = [(CAFAccessory *)self services];
  allValues = [services allValues];
  v4 = [allValues sortedArrayUsingSelector:sel_compare_];

  return v4;
}

- (void)setReceivedAllValues:(BOOL)values
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_receivedAllValues != values)
  {
    valuesCopy = values;
    v5 = CAFAccessoryLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v11 = @"NO";
      if (self->_receivedAllValues)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v13 = 138543874;
      selfCopy2 = self;
      if (valuesCopy)
      {
        v11 = @"YES";
      }

      v15 = 2112;
      v16 = v12;
      v17 = 2112;
      v18 = v11;
      _os_log_debug_impl(&dword_231618000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ receivedAllValues transitioning from %@ to %@", &v13, 0x20u);
    }

    if (valuesCopy)
    {
      self->_receivedAllValues = valuesCopy;
      cachedDescription = [(CAFAccessory *)self cachedDescription];
      [cachedDescription setNeedsRefreshDescription];

      v7 = CARSignpostLogForCategory();
      if (os_signpost_enabled(v7))
      {
        v13 = 138412290;
        selfCopy2 = self;
        _os_signpost_emit_with_name_impl(&dword_231618000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReceivedAllValues", "%@", &v13, 0xCu);
      }

      v8 = [(CAFAccessory *)self car];
      [v8 _accessoryReceivedAllValues:self];

      observers = [(CAFAccessory *)self observers];
      [observers accessoryDidUpdate:self receivedAllValues:1];
    }

    else
    {
      observers = CAFGeneralLogging();
      if (os_log_type_enabled(observers, OS_LOG_TYPE_FAULT))
      {
        [CAFService setReceivedAllValues:observers];
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)servicesForType:(id)type
{
  typeCopy = type;
  servicesByType = [(CAFAccessory *)self servicesByType];
  v6 = [servicesByType objectForKeyedSubscript:typeCopy];

  return v6;
}

- (id)servicesForIndexBy:(id)by
{
  byCopy = by;
  os_unfair_lock_lock(&self->_indexLock);
  servicesIndexBy = [(CAFAccessory *)self servicesIndexBy];
  v6 = [servicesIndexBy objectForKeyedSubscript:byCopy];

  v7 = [v6 copy];
  os_unfair_lock_unlock(&self->_indexLock);

  return v7;
}

- (void)refreshCharacteristics
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3(&dword_231618000, a2, a3, "%{public}@ refreshing", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CAFAccessory *)self observers];
  [observers registerObserver:observerCopy];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CAFAccessory *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (NSString)description
{
  cachedDescription = [(CAFAccessory *)self cachedDescription];
  v3 = [cachedDescription description];

  return v3;
}

- (void)_serviceReceivedAllValues:(id)values
{
  valuesCopy = values;
  valueMonitor = [(CAFAccessory *)self valueMonitor];
  uniqueIdentifier = [valuesCopy uniqueIdentifier];

  -[CAFAccessory setReceivedAllValues:](self, "setReceivedAllValues:", [valueMonitor valueReceivedFor:uniqueIdentifier]);
}

- (void)_serviceDidUpdate:(id)update characteristic:(id)characteristic
{
  updateCopy = update;
  characteristicCopy = characteristic;
  indexBy = [updateCopy indexBy];
  if (indexBy)
  {
    v9 = indexBy;
    characteristicType = [characteristicCopy characteristicType];
    indexBy2 = [updateCopy indexBy];
    v12 = [characteristicType isEqual:indexBy2];

    if (v12)
    {
      os_unfair_lock_lock(&self->_indexLock);
      servicesIndexBy = [(CAFAccessory *)self servicesIndexBy];
      serviceType = [updateCopy serviceType];
      v15 = [servicesIndexBy objectForKeyedSubscript:serviceType];

      v28 = 0;
      v29 = &v28;
      v30 = 0x3032000000;
      v31 = __Block_byref_object_copy__2;
      v32 = __Block_byref_object_dispose__2;
      v33 = 0;
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __49__CAFAccessory__serviceDidUpdate_characteristic___block_invoke;
      v25 = &unk_27890F260;
      v16 = updateCopy;
      v26 = v16;
      v27 = &v28;
      [v15 enumerateKeysAndObjectsUsingBlock:&v22];
      if (v29[5])
      {
        [v15 removeObjectForKey:{v22, v23, v24, v25}];
      }

      indexBy3 = [v16 indexBy];
      v18 = [v16 characteristicForType:indexBy3];
      value = [v18 value];

      if (value)
      {
        [v15 setObject:v16 forKeyedSubscript:value];
      }

      os_unfair_lock_unlock(&self->_indexLock);

      _Block_object_dispose(&v28, 8);
    }
  }

  v20 = [(CAFAccessory *)self car];
  [v20 _accessoryDidUpdate:self service:updateCopy characteristic:characteristicCopy];

  observers = [(CAFAccessory *)self observers];
  [observers accessoryDidUpdate:self service:updateCopy characteristic:characteristicCopy];
}

void __49__CAFAccessory__serviceDidUpdate_characteristic___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v8 = *(a1 + 32);
  v9 = a3;
  v10 = [v8 uniqueIdentifier];
  v11 = [v9 uniqueIdentifier];

  LODWORD(v9) = [v10 isEqual:v11];
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_serviceDidUpdate:(id)update control:(id)control
{
  controlCopy = control;
  updateCopy = update;
  v8 = [(CAFAccessory *)self car];
  [v8 _accessoryDidUpdate:self service:updateCopy control:controlCopy];

  observers = [(CAFAccessory *)self observers];
  [observers accessoryDidUpdate:self service:updateCopy control:controlCopy];
}

- (BOOL)usable
{
  services = [(CAFAccessory *)self services];
  v3 = [services count] != 0;

  return v3;
}

- (void)invalidate
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3(&dword_231618000, a2, a3, "%{public}@ time to invalidate", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)currentDescriptionForCache:(id)cache
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  name = [(CAFAccessory *)self name];
  pluginID = [(CAFAccessory *)self pluginID];
  instanceID = [(CAFAccessory *)self instanceID];
  categoryType = [(CAFAccessory *)self categoryType];
  version = [(CAFAccessory *)self version];
  receivedAllValues = [(CAFAccessory *)self receivedAllValues];
  v12 = @"NO";
  if (receivedAllValues)
  {
    v12 = @"YES";
  }

  v13 = [v4 stringWithFormat:@"<%@: %p %@ %@ %@ type=%@ version=%@ recievedAllValues=%@>", v5, self, name, pluginID, instanceID, categoryType, version, v12];

  return v13;
}

- (unint64_t)state
{
  if ([(CAFAccessory *)self receivedAllValues])
  {
    return 3;
  }

  else
  {
    return 6;
  }
}

- (CAFCar)car
{
  WeakRetained = objc_loadWeakRetained(&self->_car);

  return WeakRetained;
}

- (void)initWithCar:(uint64_t)a3 pluginID:(uint64_t)a4 config:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3(&dword_231618000, a2, a3, "%{public}@ done", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithCar:(uint64_t *)a1 pluginID:(uint64_t *)a2 config:(os_log_t)log .cold.2(uint64_t *a1, uint64_t *a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v6 = 138412546;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  _os_log_error_impl(&dword_231618000, log, OS_LOG_TYPE_ERROR, "Parsing accessory config from pluginID: %@ instanceID: %@ failed for categoryType", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithCar:(uint64_t *)a1 pluginID:(NSObject *)a2 config:.cold.3(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_231618000, a2, OS_LOG_TYPE_ERROR, "Parsing accessory config from pluginID: %@ failed for instanceID", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __44__CAFAccessory_initWithCar_pluginID_config___block_invoke_cold_1(id *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*a1 pluginID];
  v3 = [*a1 instanceID];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1(&dword_231618000, v4, v5, "Creating service from pluginID: %@ instanceID: %@ failed", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __44__CAFAccessory_initWithCar_pluginID_config___block_invoke_cold_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pluginID];
  v3 = [*(a1 + 32) instanceID];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1(&dword_231618000, v4, v5, "Parsing accessory config from pluginID: %@ instanceID: %@ failed for service", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end