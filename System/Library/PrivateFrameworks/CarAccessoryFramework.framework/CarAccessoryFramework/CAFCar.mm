@interface CAFCar
- (BOOL)hasAccessoryType:(id)type;
- (BOOL)isConfigured;
- (BOOL)registeredForAccessory:(id)accessory;
- (BOOL)rightHandDrive;
- (BOOL)usable;
- (CAFAudioSettings)audioSettings;
- (CAFAutomakerApps)automakerApps;
- (CAFAutomakerExteriorCamera)automakerExteriorCamera;
- (CAFAutomakerNotificationHistory)automakerNotificationHistory;
- (CAFAutomakerOverlays)automakerOverlays;
- (CAFAutomakerSettings)automakerSettings;
- (CAFCar)initWithManager:(id)manager car:(id)car;
- (CAFCarObserver)combineObserver;
- (CAFCharging)charging;
- (CAFClimate)climate;
- (CAFClosure)closure;
- (CAFDriveState)driveState;
- (CAFElectricEngine)electricEngine;
- (CAFEnvironmentalConditions)environmentalConditions;
- (CAFFuel)fuel;
- (CAFHighVoltageBattery)highVoltageBattery;
- (CAFIndicators)indicators;
- (CAFInternalCombustionEngine)internalCombustionEngine;
- (CAFLighting)lighting;
- (CAFMedia)media;
- (CAFMediaItems)np_currentMediaItems;
- (CAFMediaSource)currentMediaSource;
- (CAFNavigation)navigation;
- (CAFNowPlayingInformation)nowPlayingInformation;
- (CAFPairedDevices)pairedDevices;
- (CAFSeat)seat;
- (CAFStatusIndicators)statusIndicators;
- (CAFTire)tire;
- (CAFTripComputer)tripComputer;
- (CAFUInt32Range)np_currentFrequencyRange;
- (CAFVehicleResources)vehicleResources;
- (NSArray)automakerInputStreams;
- (NSArray)automakerNotifications;
- (NSArray)automakerRequestContent;
- (NSArray)driverAssistance;
- (NSArray)sortedAccessories;
- (NSArray)testingUseOnly;
- (NSArray)uiControl;
- (NSArray)vehicleMotion;
- (NSArray)vehicleUnits;
- (NSString)description;
- (NSString)name;
- (NSString)np_titleForCurrentMediaSource;
- (NSUUID)uniqueIdentifier;
- (id)accessoriesForCategory:(id)category;
- (id)currentDescriptionForCache:(id)cache;
- (id)mediaSourceWithIdentifier:(id)identifier;
- (unint64_t)state;
- (unsigned)np_currentFrequency;
- (void)_accessoryDidUpdate:(id)update service:(id)service characteristic:(id)characteristic;
- (void)_accessoryDidUpdate:(id)update service:(id)service control:(id)control;
- (void)_accessoryReceivedAllValues:(id)values;
- (void)_groupInitialization:(id)initialization controls:(id)controls;
- (void)_refreshAccessories;
- (void)addRegistrationForCharacteristics:(id)characteristics;
- (void)dealloc;
- (void)didNotifyPluginID:(id)d instanceID:(id)iD value:(id)value;
- (void)didRequestPluginID:(id)d instanceID:(id)iD value:(id)value withResponse:(id)response;
- (void)didUpdatePluginID:(id)d values:(id)values;
- (void)invalidate;
- (void)notifyControl:(id)control value:(id)value;
- (void)performGroupRead:(id)read completion:(id)completion;
- (void)performGroupWrite:(id)write completion:(id)completion;
- (void)performGroupedRequest:(id)request key:(id)key value:(id)value withResponse:(id)response;
- (void)readCharacteristic:(id)characteristic response:(id)response;
- (void)refreshAllCharacteristics;
- (void)refreshCharacteristics:(id)characteristics;
- (void)registerObserver:(id)observer;
- (void)removeRegistrationForCharacteristics:(id)characteristics;
- (void)requestControl:(id)control value:(id)value response:(id)response;
- (void)setReceivedAllValues:(BOOL)values;
- (void)trimAccessories;
- (void)unregisterObserver:(id)observer;
- (void)writeCharacteristic:(id)characteristic value:(id)value response:(id)response;
@end

@implementation CAFCar

- (CAFCar)initWithManager:(id)manager car:(id)car
{
  managerCopy = manager;
  carCopy = car;
  v40.receiver = self;
  v40.super_class = CAFCar;
  v9 = [(CAFCar *)&v40 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_carManager, manager);
    objc_storeStrong(&v10->_car, car);
    [(CAFCarConfiguration *)v10->_car setDelegate:v10];
    v11 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_28468B110];
    observers = v10->_observers;
    v10->_observers = v11;

    v13 = [[CAFCachedDescription alloc] initWithCacheable:v10];
    cachedDescription = v10->_cachedDescription;
    v10->_cachedDescription = v13;

    v15 = [[CAFValueMonitor alloc] initWithDelegate:v10];
    valueMonitor = v10->_valueMonitor;
    v10->_valueMonitor = v15;

    v17 = [[CAFPositionManager alloc] initWithCar:v10];
    positionManager = v10->_positionManager;
    v10->_positionManager = v17;

    v19 = [[CAFDimensionManager alloc] initWithCar:v10];
    dimensionManager = v10->_dimensionManager;
    v10->_dimensionManager = v19;

    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_attr_make_with_qos_class(v21, QOS_CLASS_DEFAULT, 0);

    v23 = dispatch_queue_create("com.apple.CarAccessoryFramework.Car.Refresh", v22);
    refreshQueue = v10->_refreshQueue;
    v10->_refreshQueue = v23;

    v25 = objc_opt_new();
    updatables = v10->_updatables;
    v10->_updatables = v25;

    v27 = objc_opt_new();
    accessoryTypes = v10->_accessoryTypes;
    v10->_accessoryTypes = v27;

    v29 = objc_opt_new();
    accessories = v10->_accessories;
    v10->_accessories = v29;

    v31 = objc_opt_new();
    accessoriesByCategory = v10->_accessoriesByCategory;
    v10->_accessoriesByCategory = v31;

    v33 = objc_opt_new();
    processedPluginIDs = v10->_processedPluginIDs;
    v10->_processedPluginIDs = v33;

    pluginConfigs = [carCopy pluginConfigs];
    v36 = [pluginConfigs count];

    if (v36)
    {
      [(CAFCar *)v10 _refreshAccessories];
    }

    cachedDescription = [(CAFCar *)v10 cachedDescription];
    [cachedDescription setNeedsRefreshDescription];

    v38 = CAFCarLogging();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      [CAFCar initWithManager:car:];
    }
  }

  return v10;
}

- (void)dealloc
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)rightHandDrive
{
  v2 = [(CAFCar *)self car];
  rightHandDrive = [v2 rightHandDrive];

  return rightHandDrive;
}

- (NSArray)sortedAccessories
{
  accessories = [(CAFCar *)self accessories];
  allValues = [accessories allValues];
  v4 = [allValues sortedArrayUsingSelector:sel_compare_];

  return v4;
}

- (void)setReceivedAllValues:(BOOL)values
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_receivedAllValues != values)
  {
    valuesCopy = values;
    v5 = CAFCarLogging();
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
      cachedDescription = [(CAFCar *)self cachedDescription];
      [cachedDescription setNeedsRefreshDescription];

      v7 = CARSignpostLogForCategory();
      if (os_signpost_enabled(v7))
      {
        v13 = 138412290;
        selfCopy2 = self;
        _os_signpost_emit_with_name_impl(&dword_231618000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReceivedAllValues", "%@", &v13, 0xCu);
      }

      combineObserver = [(CAFCar *)self combineObserver];
      [combineObserver carDidUpdate:self receivedAllValues:1];

      observers = [(CAFCar *)self observers];
      [observers carDidUpdate:self receivedAllValues:1];
    }

    else
    {
      observers = CAFGeneralLogging();
      if (os_log_type_enabled(observers, OS_LOG_TYPE_FAULT))
      {
        [CAFCar setReceivedAllValues:];
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)accessoriesForCategory:(id)category
{
  categoryCopy = category;
  accessoriesByCategory = [(CAFCar *)self accessoriesByCategory];
  v6 = [accessoriesByCategory objectForKeyedSubscript:categoryCopy];

  return v6;
}

- (void)refreshAllCharacteristics
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CAFCar *)self observers];
  [observers registerObserver:observerCopy];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CAFCar *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (NSString)description
{
  cachedDescription = [(CAFCar *)self cachedDescription];
  v3 = [cachedDescription description];

  return v3;
}

- (void)_refreshAccessories
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __29__CAFCar__refreshAccessories__block_invoke(uint64_t a1)
{
  v2 = CAFCarLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __29__CAFCar__refreshAccessories__block_invoke_cold_1(a1);
  }

  v46 = 0;
  v47[0] = &v46;
  v47[1] = 0x2020000000;
  v48 = 0;
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  v5 = [v4 accessories];
  v6 = [v5 mutableCopy];

  v7 = [*v3 accessoriesByCategory];
  v8 = [v7 mutableCopy];

  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v11 = [*v3 updatables];
  v12 = [v11 mutableCopy];

  v13 = [*v3 car];
  v14 = [v13 pluginConfigs];
  v15 = [v14 copy];

  v16 = objc_opt_new();
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __29__CAFCar__refreshAccessories__block_invoke_92;
  v38[3] = &unk_27890D7D8;
  v38[4] = *v3;
  v17 = v6;
  v39 = v17;
  v45 = &v46;
  v18 = v9;
  v40 = v18;
  v19 = v12;
  v41 = v19;
  v20 = v10;
  v42 = v20;
  v21 = v8;
  v43 = v21;
  v22 = v16;
  v44 = v22;
  [v15 enumerateKeysAndObjectsUsingBlock:v38];
  v23 = [*v3 processedPluginIDs];
  [v23 addObjectsFromArray:v22];

  if (*(v47[0] + 24) == 1)
  {
    [*v3 setAccessories:v17];
    [*v3 setAccessoriesByCategory:v21];
    v24 = [v17 allValues];
    [*v3 setAllAccessories:v24];

    [*v3 setUpdatables:v19];
    v25 = [*v3 cachedDescription];
    [v25 setNeedsRefreshDescription];

    v26 = [*v3 combineObserver];
    [v26 carDidUpdateAccessories:*v3];

    v27 = [*v3 observers];
    [v27 carDidUpdateAccessories:*v3];
  }

  if ([*v3 isConfigured])
  {
    v28 = [*v3 cachedDescription];
    [v28 setNeedsRefreshDescription];

    v29 = [*v3 observers];
    [v29 carIsConfigured:*v3];

    v30 = [*v3 observers];
    [v30 carHasAllBridges:*v3];

    v31 = [*v3 valueMonitor];
    [v31 signalReadyToMonitor];

    v32 = [*v3 valueMonitor];
    [*v3 setReceivedAllValues:{objc_msgSend(v32, "receivedAllValues")}];
  }

  [*v3 _groupInitialization:v18 controls:v20];
  v33 = CAFCarLogging();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    __29__CAFCar__refreshAccessories__block_invoke_cold_2(v3, v47);
  }

  v34 = CARSignpostLogForCategory();
  if (*v3)
  {
    v35 = CARSignpostLogForCategory();
    v36 = os_signpost_id_make_with_pointer(v35, *v3);

    if (v36 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v36 = 0xEEEEB0B5B2B2EEEELL;
  }

  if (os_signpost_enabled(v34))
  {
    *v37 = 0;
    _os_signpost_emit_with_name_impl(&dword_231618000, v34, OS_SIGNPOST_INTERVAL_END, v36, "Car-RefreshAccessories", &unk_231733279, v37, 2u);
  }

LABEL_15:

  _Block_object_dispose(&v46, 8);
}

void __29__CAFCar__refreshAccessories__block_invoke_92(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) processedPluginIDs];
  v8 = [v7 containsObject:v5];

  v9 = CAFCarLogging();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v10)
    {
      __29__CAFCar__refreshAccessories__block_invoke_92_cold_3();
    }
  }

  else
  {
    if (v10)
    {
      __29__CAFCar__refreshAccessories__block_invoke_92_cold_1();
    }

    objc_opt_class();
    v11 = [v6 objectForKeyedSubscript:@"accessories"];
    if (v11 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = v11;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __29__CAFCar__refreshAccessories__block_invoke_94;
      v21 = &unk_27890D7B0;
      v22 = v5;
      v17 = *(a1 + 32);
      v12 = *(&v17 + 1);
      v27 = *(a1 + 88);
      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      *&v15 = v13;
      *(&v15 + 1) = v14;
      v23 = v17;
      v24 = v15;
      v25 = *(a1 + 64);
      v26 = *(a1 + 72);
      [v9 enumerateObjectsUsingBlock:&v18];
    }

    [*(a1 + 80) addObject:{v5, v17, v18, v19, v20, v21}];
    v16 = CAFCarLogging();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __29__CAFCar__refreshAccessories__block_invoke_92_cold_2();
    }
  }
}

void __29__CAFCar__refreshAccessories__block_invoke_94(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    objc_opt_class();
    v5 = [v4 objectForKeyedSubscript:@"iid"];
    if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      v8 = CAFCarLogging();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __29__CAFCar__refreshAccessories__block_invoke_94_cold_3(a1);
      }

      goto LABEL_24;
    }

    v8 = [CAFCarConfiguration getType:v4];
    v9 = [*(a1 + 40) accessoryTypes];
    [v9 addObject:v8];

    v10 = [*(a1 + 40) carManager];
    v11 = [v10 shouldAllocAccessoryType:v8];

    if (!v11)
    {
LABEL_24:

      v7 = v4;
      goto LABEL_25;
    }

    v12 = [CAFCarConfiguration getUUID:*(a1 + 32) instanceID:v6];
    v13 = [*(a1 + 48) objectForKeyedSubscript:v12];
    if (!v13)
    {
      v14 = CAFCarLogging();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __29__CAFCar__refreshAccessories__block_invoke_94_cold_1((a1 + 32));
      }

      v15 = [CAFAccessory accessoryWithCar:*(a1 + 40) pluginID:*(a1 + 32) config:v4];
      if (!v15)
      {
        v13 = CAFCarLogging();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __29__CAFCar__refreshAccessories__block_invoke_94_cold_2((a1 + 32));
        }

        goto LABEL_21;
      }

      v13 = v15;
      *(*(*(a1 + 88) + 8) + 24) = 1;
      [*(a1 + 48) setObject:v15 forKeyedSubscript:v12];
      if (([v13 receivedAllValues]& 1) == 0)
      {
        v16 = [*(a1 + 40) valueMonitor];
        v17 = [v13 uniqueIdentifier];
        [v16 monitorForValue:v17];
      }

      v18 = [v13 allCharacteristics];
      [*(a1 + 56) addObjectsFromArray:v18];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __29__CAFCar__refreshAccessories__block_invoke_98;
      v30[3] = &unk_27890D760;
      v31 = *(a1 + 64);
      [v18 enumerateObjectsUsingBlock:v30];
      v19 = [v13 allControls];
      [*(a1 + 72) addObjectsFromArray:v19];
      v25 = MEMORY[0x277D85DD0];
      v26 = 3221225472;
      v27 = __29__CAFCar__refreshAccessories__block_invoke_2;
      v28 = &unk_27890D788;
      v29 = *(a1 + 64);
      [v19 enumerateObjectsUsingBlock:&v25];
    }

    v20 = *(a1 + 80);
    v21 = [v13 categoryType:v25];
    v22 = [v20 objectForKeyedSubscript:v21];

    if (!v22)
    {
      v22 = objc_opt_new();
      v23 = *(a1 + 80);
      v24 = [v13 categoryType];
      [v23 setObject:v22 forKeyedSubscript:v24];
    }

    [v22 addObject:v13];

LABEL_21:
    goto LABEL_24;
  }

  v7 = CAFCarLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __29__CAFCar__refreshAccessories__block_invoke_94_cold_4(a1);
  }

LABEL_25:
}

void __29__CAFCar__refreshAccessories__block_invoke_98(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 pluginID];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v3 allInstanceIDs];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 setObject:v3 forKeyedSubscript:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __29__CAFCar__refreshAccessories__block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 pluginID];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v3 allInstanceIDs];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 setObject:v3 forKeyedSubscript:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)performGroupRead:(id)read completion:(id)completion
{
  completionCopy = completion;
  readCopy = read;
  v8 = [(CAFGroupRequest *)[CAFGroupReadRequest alloc] initWithCar:self];
  [(CAFGroupRequest *)v8 addCharacteristics:readCopy];

  [(CAFGroupRequest *)v8 performWithCompletion:completionCopy];
}

- (void)performGroupWrite:(id)write completion:(id)completion
{
  completionCopy = completion;
  writeCopy = write;
  v8 = [(CAFGroupRequest *)[CAFGroupWriteRequest alloc] initWithCar:self];
  [(CAFGroupWriteRequest *)v8 addCharacteristicsAndValues:writeCopy];

  [(CAFGroupRequest *)v8 performWithCompletion:completionCopy];
}

- (void)_groupInitialization:(id)initialization controls:(id)controls
{
  v74 = *MEMORY[0x277D85DE8];
  initializationCopy = initialization;
  controlsCopy = controls;
  v7 = [(CAFGroupRequest *)[CAFGroupReadRequest alloc] initWithCar:self];
  v8 = [(CAFGroupRequest *)[CAFGroupEnableNotificationRequest alloc] initWithCar:self];
  v9 = CAFCarLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v61 = [initializationCopy count];
    v62 = 2112;
    v63 = v7;
    v64 = 2112;
    v65 = v8;
    _os_log_debug_impl(&dword_231618000, v9, OS_LOG_TYPE_DEBUG, "Group initialization start (count=%lu) read=%@ notify=%@", buf, 0x20u);
  }

  v48 = v7;

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v10 = initializationCopy;
  v11 = [v10 countByEnumeratingWithState:&v56 objects:v73 count:16];
  v49 = v8;
  v50 = v10;
  if (!v11)
  {
    v51 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_30;
  }

  v12 = v11;
  v51 = 0;
  v13 = 0;
  v14 = 0;
  v15 = *v57;
  do
  {
    v16 = 0;
    do
    {
      if (*v57 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v56 + 1) + 8 * v16);
      if (([v17 shouldInitialize] & 1) == 0)
      {
        v18 = CAFCarLogging();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_13;
        }

        pluginID = [v17 pluginID];
        instanceID = [v17 instanceID];
        *buf = 138412546;
        v61 = pluginID;
        v62 = 2112;
        v63 = instanceID;
        v21 = v18;
        v22 = "Skipping pluginID: %@ instanceID: %@";
        goto LABEL_26;
      }

      if ([v17 hasLargePayload])
      {
        v18 = CAFCarLogging();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
LABEL_13:

          v14 = (v14 + 1);
          goto LABEL_14;
        }

        pluginID = [v17 pluginID];
        instanceID = [v17 instanceID];
        *buf = 138412546;
        v61 = pluginID;
        v62 = 2112;
        v63 = instanceID;
        v21 = v18;
        v22 = "Skipping large payload pluginID: %@ instanceID: %@";
LABEL_26:
        _os_log_debug_impl(&dword_231618000, v21, OS_LOG_TYPE_DEBUG, v22, buf, 0x16u);

        v10 = v50;
        goto LABEL_13;
      }

      if ([v17 notifies])
      {
        v23 = CAFCarLogging();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          pluginID2 = [v17 pluginID];
          instanceID2 = [v17 instanceID];
          *buf = 138412546;
          v61 = pluginID2;
          v62 = 2112;
          v63 = instanceID2;
          _os_log_debug_impl(&dword_231618000, v23, OS_LOG_TYPE_DEBUG, "Notifies pluginID: %@ instanceID: %@", buf, 0x16u);

          v8 = v49;
          v10 = v50;
        }

        [(CAFGroupRequest *)v8 addCharacteristic:v17];
        [v17 groupInitializationRequested];
        ++v13;
      }

      else if ([v17 readable] && (objc_msgSend(v17, "hasInitialValue") & 1) == 0)
      {
        v24 = CAFCarLogging();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          pluginID3 = [v17 pluginID];
          instanceID3 = [v17 instanceID];
          *buf = 138412546;
          v61 = pluginID3;
          v62 = 2112;
          v63 = instanceID3;
          _os_log_debug_impl(&dword_231618000, v24, OS_LOG_TYPE_DEBUG, "Read pluginID: %@ instanceID: %@", buf, 0x16u);

          v10 = v50;
          v8 = v49;
        }

        [(CAFGroupRequest *)v48 addCharacteristic:v17];
        [v17 groupInitializationRequested];
        v51 = (v51 + 1);
      }

LABEL_14:
      ++v16;
    }

    while (v12 != v16);
    v29 = [v10 countByEnumeratingWithState:&v56 objects:v73 count:16];
    v12 = v29;
  }

  while (v29);
LABEL_30:

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v30 = controlsCopy;
  v31 = [v30 countByEnumeratingWithState:&v52 objects:v72 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v53;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v53 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v52 + 1) + 8 * i);
        if ([v35 shouldInitialize])
        {
          if ([v35 notifies])
          {
            v36 = CAFCarLogging();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              pluginID4 = [v35 pluginID];
              instanceID4 = [v35 instanceID];
              *buf = 138412546;
              v61 = pluginID4;
              v62 = 2112;
              v63 = instanceID4;
              _os_log_debug_impl(&dword_231618000, v36, OS_LOG_TYPE_DEBUG, "Notifies pluginID: %@ instanceID: %@", buf, 0x16u);

              v8 = v49;
            }

            [(CAFGroupEnableNotificationRequest *)v8 addControl:v35];
            ++v13;
          }
        }

        else
        {
          v37 = CAFCarLogging();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            pluginID5 = [v35 pluginID];
            instanceID5 = [v35 instanceID];
            *buf = 138412546;
            v61 = pluginID5;
            v62 = 2112;
            v63 = instanceID5;
            _os_log_debug_impl(&dword_231618000, v37, OS_LOG_TYPE_DEBUG, "Skipping pluginID: %@ instanceID: %@", buf, 0x16u);

            v8 = v49;
          }

          v14 = (v14 + 1);
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v52 objects:v72 count:16];
    }

    while (v32);
  }

  v42 = CAFCarLogging();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    v45 = [v50 count];
    v46 = [v30 count];
    *buf = 134219266;
    v61 = v46 + v45;
    v62 = 2048;
    v63 = v14;
    v64 = 2048;
    v65 = v51;
    v66 = 2048;
    v67 = v13;
    v68 = 2112;
    v69 = v48;
    v70 = 2112;
    v71 = v8;
    _os_log_debug_impl(&dword_231618000, v42, OS_LOG_TYPE_DEBUG, "Group initialization perform (total: %lu skipped: %lu read: %lu notify: %lu) read: %@ notify: %@", buf, 0x3Eu);
  }

  if ([(CAFGroupRequest *)v8 count])
  {
    [(CAFGroupRequest *)v8 performWithCompletion:&__block_literal_global_5];
  }

  if ([(CAFGroupRequest *)v48 count])
  {
    [(CAFGroupRequest *)v48 performWithCompletion:&__block_literal_global_111_0];
  }

  v43 = CAFCarLogging();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    [CAFCar _groupInitialization:controls:];
  }

  v44 = *MEMORY[0x277D85DE8];
}

void __40__CAFCar__groupInitialization_controls___block_invoke()
{
  v0 = CAFCarLogging();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __40__CAFCar__groupInitialization_controls___block_invoke_cold_1();
  }
}

void __40__CAFCar__groupInitialization_controls___block_invoke_109()
{
  v0 = CAFCarLogging();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __40__CAFCar__groupInitialization_controls___block_invoke_109_cold_1();
  }
}

- (BOOL)registeredForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  v8 = [registrations hasAccessory:accessoryCopy];

  return v8;
}

- (BOOL)hasAccessoryType:(id)type
{
  typeCopy = type;
  accessoryTypes = [(CAFCar *)self accessoryTypes];
  v6 = [accessoryTypes containsObject:typeCopy];

  return v6;
}

- (BOOL)isConfigured
{
  v3 = [(CAFCar *)self car];
  if ([v3 isConfigured])
  {
    processedPluginIDs = [(CAFCar *)self processedPluginIDs];
    v5 = [processedPluginIDs count];
    v6 = [(CAFCar *)self car];
    v7 = v5 == [v6 pluginCount];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)trimAccessories
{
  refreshQueue = [(CAFCar *)self refreshQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__CAFCar_trimAccessories__block_invoke;
  block[3] = &unk_27890D4D0;
  block[4] = self;
  dispatch_async(refreshQueue, block);
}

uint64_t __25__CAFCar_trimAccessories__block_invoke(uint64_t a1)
{
  v2 = CAFCarLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __25__CAFCar_trimAccessories__block_invoke_cold_1(a1);
  }

  v3 = MEMORY[0x277CBEC10];
  [*(a1 + 32) setAccessories:MEMORY[0x277CBEC10]];
  [*(a1 + 32) setAllAccessories:MEMORY[0x277CBEBF8]];
  [*(a1 + 32) setAccessoriesByCategory:v3];
  return [*(a1 + 32) setTrimmedAccessories:1];
}

- (void)removeRegistrationForCharacteristics:(id)characteristics
{
  characteristicsCopy = characteristics;
  v5 = [(CAFGroupRequest *)[CAFGroupDisableNotificationRequest alloc] initWithCar:self];
  [(CAFGroupDisableNotificationRequest *)v5 setNeedsForced];
  [(CAFGroupRequest *)v5 addCharacteristics:characteristicsCopy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__CAFCar_removeRegistrationForCharacteristics___block_invoke;
  v7[3] = &unk_27890D820;
  v7[4] = self;
  v8 = characteristicsCopy;
  v6 = characteristicsCopy;
  [(CAFGroupRequest *)v5 performWithCompletion:v7];
}

void __47__CAFCar_removeRegistrationForCharacteristics___block_invoke(uint64_t a1)
{
  v2 = CAFCarLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __47__CAFCar_removeRegistrationForCharacteristics___block_invoke_cold_1(a1);
  }
}

- (void)addRegistrationForCharacteristics:(id)characteristics
{
  characteristicsCopy = characteristics;
  v5 = [(CAFGroupRequest *)[CAFGroupEnableNotificationRequest alloc] initWithCar:self];
  [(CAFGroupRequest *)v5 addCharacteristics:characteristicsCopy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__CAFCar_addRegistrationForCharacteristics___block_invoke;
  v7[3] = &unk_27890D820;
  v7[4] = self;
  v8 = characteristicsCopy;
  v6 = characteristicsCopy;
  [(CAFGroupRequest *)v5 performWithCompletion:v7];
}

void __44__CAFCar_addRegistrationForCharacteristics___block_invoke(uint64_t a1)
{
  v2 = CAFCarLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __44__CAFCar_addRegistrationForCharacteristics___block_invoke_cold_1(a1);
  }
}

- (void)didUpdatePluginID:(id)d values:(id)values
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  valuesCopy = values;
  if (!valuesCopy)
  {
    v11 = CAFGeneralLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CAFCar didUpdatePluginID:values:];
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = CAFGeneralLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(CAFCar *)dCopy didUpdatePluginID:valuesCopy values:v11];
    }

LABEL_10:

    goto LABEL_17;
  }

  v8 = CARSignpostLogForCategory();
  if (!self)
  {
    v10 = 0xEEEEB0B5B2B2EEEELL;
LABEL_12:
    if (os_signpost_enabled(v8))
    {
      *buf = 138412546;
      v19 = dCopy;
      v20 = 2048;
      v21 = [valuesCopy count];
      _os_signpost_emit_with_name_impl(&dword_231618000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "Car-UpdateValues", "Update values from pluginID: %@ with value count %ld", buf, 0x16u);
    }

    goto LABEL_14;
  }

  v9 = CARSignpostLogForCategory();
  v10 = os_signpost_id_make_with_pointer(v9, self);

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_12;
  }

LABEL_14:

  v12 = CAFGeneralLogging();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [CAFCar didUpdatePluginID:dCopy values:valuesCopy];
  }

  refreshQueue = [(CAFCar *)self refreshQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__CAFCar_didUpdatePluginID_values___block_invoke;
  block[3] = &unk_27890D598;
  block[4] = self;
  v16 = dCopy;
  v17 = valuesCopy;
  dispatch_async(refreshQueue, block);

LABEL_17:
  v14 = *MEMORY[0x277D85DE8];
}

void __35__CAFCar_didUpdatePluginID_values___block_invoke(id *a1)
{
  v2 = 0xEEEEB0B5B2B2EEEELL;
  v3 = [a1[4] updatables];
  v4 = [v3 objectForKeyedSubscript:a1[5]];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = a1[6];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __35__CAFCar_didUpdatePluginID_values___block_invoke_116;
    v17 = &unk_27890D848;
    v18 = v4;
    v19 = a1[5];
    v20 = a1[6];
    v7 = v5;
    v21 = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:&v14];
    if ([a1[6] count] >= 2)
    {
      v8 = CAFCarLogging();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __35__CAFCar_didUpdatePluginID_values___block_invoke_cold_1(a1 + 6, v7);
      }

      [v7 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_122];
    }

    v9 = CAFGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __35__CAFCar_didUpdatePluginID_values___block_invoke_cold_2(a1 + 5, a1 + 6);
    }

    v10 = CARSignpostLogForCategory();
    if (!a1[4] || (CARSignpostLogForCategory(), v11 = objc_claimAutoreleasedReturnValue(), v2 = os_signpost_id_make_with_pointer(v11, a1[4]), v11, v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL))
    {
      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_231618000, v10, OS_SIGNPOST_INTERVAL_END, v2, "Car-UpdateValues", &unk_231733279, buf, 2u);
      }
    }
  }

  else
  {
    v12 = CAFGeneralLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __35__CAFCar_didUpdatePluginID_values___block_invoke_cold_3(a1 + 5);
    }

    v7 = CARSignpostLogForCategory();
    if (!a1[4] || (CARSignpostLogForCategory(), v13 = objc_claimAutoreleasedReturnValue(), v2 = os_signpost_id_make_with_pointer(v13, a1[4]), v13, v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL))
    {
      if (os_signpost_enabled(v7))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_231618000, v7, OS_SIGNPOST_INTERVAL_END, v2, "Car-UpdateValues", &unk_231733279, buf, 2u);
      }
    }
  }
}

void __35__CAFCar_didUpdatePluginID_values___block_invoke_116(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] objectForKeyedSubscript:v5];
  v8 = v7;
  if (!v7)
  {
    v9 = CAFCarLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __35__CAFCar_didUpdatePluginID_values___block_invoke_116_cold_1(a1);
    }

    goto LABEL_9;
  }

  [v7 handleUpdateWithInstanceID:v5 value:v6];
  if ([a1[6] count] >= 2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v10 = [v9 service];
      v11 = [v10 uniqueIdentifier];

      v12 = [a1[7] objectForKeyedSubscript:v11];
      if (!v12)
      {
        v12 = [MEMORY[0x277CBEB58] set];
      }

      [v12 addObject:v9];
      [a1[7] setObject:v12 forKey:v11];

LABEL_9:
    }
  }
}

void __35__CAFCar_didUpdatePluginID_values___block_invoke_119(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v6 = [v3 anyObject];
  v4 = [v6 service];
  v5 = [v3 allObjects];

  [v4 _didUpdateValuesForGroupedCharacteristics:v5];
}

- (void)didRequestPluginID:(id)d instanceID:(id)iD value:(id)value withResponse:(id)response
{
  v36 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  valueCopy = value;
  responseCopy = response;
  v14 = CARSignpostLogForCategory();
  if (self)
  {
    v15 = CARSignpostLogForCategory();
    v16 = os_signpost_id_make_with_pointer(v15, self);

    if (v16 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = 0xEEEEB0B5B2B2EEEELL;
  }

  if (os_signpost_enabled(v14))
  {
    *buf = 138412802;
    v31 = dCopy;
    v32 = 2112;
    v33 = iDCopy;
    v34 = 2048;
    v35 = [valueCopy count];
    _os_signpost_emit_with_name_impl(&dword_231618000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "Car-RequestValues", "Request from pluginID: %@ instanceID: %@ with request count %ld", buf, 0x20u);
  }

LABEL_7:

  v17 = CAFGeneralLogging();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v24 = [valueCopy count];
    *buf = 138412802;
    v31 = dCopy;
    v32 = 2112;
    v33 = iDCopy;
    v34 = 2048;
    v35 = v24;
    _os_log_debug_impl(&dword_231618000, v17, OS_LOG_TYPE_DEBUG, "Request received from pluginID: %@ instanceID: %@ with request count %ld START", buf, 0x20u);
  }

  refreshQueue = [(CAFCar *)self refreshQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CAFCar_didRequestPluginID_instanceID_value_withResponse___block_invoke;
  block[3] = &unk_27890D890;
  block[4] = self;
  v26 = dCopy;
  v28 = valueCopy;
  v29 = responseCopy;
  v27 = iDCopy;
  v19 = valueCopy;
  v20 = iDCopy;
  v21 = responseCopy;
  v22 = dCopy;
  dispatch_async(refreshQueue, block);

  v23 = *MEMORY[0x277D85DE8];
}

void __59__CAFCar_didRequestPluginID_instanceID_value_withResponse___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) updatables];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (!v3)
  {
    v9 = CAFGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __59__CAFCar_didRequestPluginID_instanceID_value_withResponse___block_invoke_cold_3((a1 + 40));
    }

    v10 = CARSignpostLogForCategory();
    if (*(a1 + 32))
    {
      v11 = CARSignpostLogForCategory();
      v12 = os_signpost_id_make_with_pointer(v11, *(a1 + 32));

      if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
LABEL_23:

        v15 = *(a1 + 64);
        v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
        (*(v15 + 16))(v15, 0, v4);
        goto LABEL_24;
      }
    }

    else
    {
      v12 = 0xEEEEB0B5B2B2EEEELL;
    }

    if (os_signpost_enabled(v10))
    {
      LOWORD(v20) = 0;
      _os_signpost_emit_with_name_impl(&dword_231618000, v10, OS_SIGNPOST_INTERVAL_END, v12, "Car-RequestValues", &unk_231733279, &v20, 2u);
    }

    goto LABEL_23;
  }

  v4 = [v3 objectForKeyedSubscript:*(a1 + 48)];
  if (!v4)
  {
    v13 = CAFCarLogging();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __59__CAFCar_didRequestPluginID_instanceID_value_withResponse___block_invoke_cold_2((a1 + 40), (a1 + 48));
    }

    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = CAFCarLogging();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __59__CAFCar_didRequestPluginID_instanceID_value_withResponse___block_invoke_cold_1((a1 + 40), (a1 + 48));
    }

LABEL_18:

    v14 = *(a1 + 64);
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
    (*(v14 + 16))(v14, 0, v6);
    goto LABEL_19;
  }

  [v4 handleRequestWithValue:*(a1 + 56) withResponse:*(a1 + 64)];
  v5 = CAFGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v19 = [*(a1 + 56) count];
    v20 = 138412802;
    v21 = v17;
    v22 = 2112;
    v23 = v18;
    v24 = 2048;
    v25 = v19;
    _os_log_debug_impl(&dword_231618000, v5, OS_LOG_TYPE_DEBUG, "Request received from pluginID: %@ instanceID: %@ with request count %ld END", &v20, 0x20u);
  }

  v6 = CARSignpostLogForCategory();
  if (!*(a1 + 32))
  {
    v8 = 0xEEEEB0B5B2B2EEEELL;
    goto LABEL_26;
  }

  v7 = CARSignpostLogForCategory();
  v8 = os_signpost_id_make_with_pointer(v7, *(a1 + 32));

  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_26:
    if (os_signpost_enabled(v6))
    {
      LOWORD(v20) = 0;
      _os_signpost_emit_with_name_impl(&dword_231618000, v6, OS_SIGNPOST_INTERVAL_END, v8, "Car-RequestValues", &unk_231733279, &v20, 2u);
    }
  }

LABEL_19:

LABEL_24:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)didNotifyPluginID:(id)d instanceID:(id)iD value:(id)value
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  valueCopy = value;
  v11 = CARSignpostLogForCategory();
  if (self)
  {
    v12 = CARSignpostLogForCategory();
    v13 = os_signpost_id_make_with_pointer(v12, self);

    if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = 0xEEEEB0B5B2B2EEEELL;
  }

  if (os_signpost_enabled(v11))
  {
    *buf = 138412802;
    v26 = dCopy;
    v27 = 2112;
    v28 = iDCopy;
    v29 = 2048;
    v30 = [valueCopy count];
    _os_signpost_emit_with_name_impl(&dword_231618000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "Car-RequestValues", "Notification from pluginID: %@ instanceID: %@ with request count %ld", buf, 0x20u);
  }

LABEL_7:

  v14 = CAFGeneralLogging();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v20 = [valueCopy count];
    *buf = 138412802;
    v26 = dCopy;
    v27 = 2112;
    v28 = iDCopy;
    v29 = 2048;
    v30 = v20;
    _os_log_debug_impl(&dword_231618000, v14, OS_LOG_TYPE_DEBUG, "Notification received from pluginID: %@ instanceID: %@ with request count %ld START", buf, 0x20u);
  }

  refreshQueue = [(CAFCar *)self refreshQueue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __45__CAFCar_didNotifyPluginID_instanceID_value___block_invoke;
  v21[3] = &unk_27890D8B8;
  v21[4] = self;
  v22 = dCopy;
  v23 = iDCopy;
  v24 = valueCopy;
  v16 = valueCopy;
  v17 = iDCopy;
  v18 = dCopy;
  dispatch_async(refreshQueue, v21);

  v19 = *MEMORY[0x277D85DE8];
}

void __45__CAFCar_didNotifyPluginID_instanceID_value___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) updatables];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [v3 objectForKeyedSubscript:*(a1 + 48)];
    if (!v4)
    {
      v6 = CAFCarLogging();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __45__CAFCar_didNotifyPluginID_instanceID_value___block_invoke_cold_2((a1 + 40), (a1 + 48));
      }

      goto LABEL_24;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = CAFCarLogging();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __45__CAFCar_didNotifyPluginID_instanceID_value___block_invoke_cold_1((a1 + 40), (a1 + 48));
      }

      goto LABEL_24;
    }

    [v4 handleNotificationWithValue:*(a1 + 56)];
    v5 = CAFGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = [*(a1 + 56) count];
      v16 = 138412802;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      v20 = 2048;
      v21 = v15;
      _os_log_debug_impl(&dword_231618000, v5, OS_LOG_TYPE_DEBUG, "Notification received from pluginID: %@ instanceID: %@ with request count %ld END", &v16, 0x20u);
    }

    v6 = CARSignpostLogForCategory();
    if (*(a1 + 32))
    {
      v7 = CARSignpostLogForCategory();
      v8 = os_signpost_id_make_with_pointer(v7, *(a1 + 32));

      if (v8 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
LABEL_24:

        goto LABEL_25;
      }
    }

    else
    {
      v8 = 0xEEEEB0B5B2B2EEEELL;
    }

    if (os_signpost_enabled(v6))
    {
      LOWORD(v16) = 0;
      _os_signpost_emit_with_name_impl(&dword_231618000, v6, OS_SIGNPOST_INTERVAL_END, v8, "Car-RequestValues", &unk_231733279, &v16, 2u);
    }

    goto LABEL_24;
  }

  v9 = CAFGeneralLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __45__CAFCar_didNotifyPluginID_instanceID_value___block_invoke_cold_3((a1 + 40));
  }

  v4 = CARSignpostLogForCategory();
  if (*(a1 + 32))
  {
    v10 = CARSignpostLogForCategory();
    v11 = os_signpost_id_make_with_pointer(v10, *(a1 + 32));

    if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v11 = 0xEEEEB0B5B2B2EEEELL;
  }

  if (os_signpost_enabled(v4))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&dword_231618000, v4, OS_SIGNPOST_INTERVAL_END, v11, "Car-RequestValues", &unk_231733279, &v16, 2u);
  }

LABEL_25:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)requestControl:(id)control value:(id)value response:(id)response
{
  responseCopy = response;
  valueCopy = value;
  controlCopy = control;
  carManager = [(CAFCar *)self carManager];
  [carManager requestControl:controlCopy value:valueCopy response:responseCopy];
}

- (void)notifyControl:(id)control value:(id)value
{
  valueCopy = value;
  controlCopy = control;
  carManager = [(CAFCar *)self carManager];
  [carManager notifyControl:controlCopy value:valueCopy];
}

- (void)readCharacteristic:(id)characteristic response:(id)response
{
  responseCopy = response;
  characteristicCopy = characteristic;
  carManager = [(CAFCar *)self carManager];
  [carManager readCharacteristic:characteristicCopy response:responseCopy];
}

- (void)writeCharacteristic:(id)characteristic value:(id)value response:(id)response
{
  responseCopy = response;
  valueCopy = value;
  characteristicCopy = characteristic;
  carManager = [(CAFCar *)self carManager];
  [carManager writeCharacteristic:characteristicCopy value:valueCopy response:responseCopy];
}

- (void)performGroupedRequest:(id)request key:(id)key value:(id)value withResponse:(id)response
{
  responseCopy = response;
  valueCopy = value;
  keyCopy = key;
  requestCopy = request;
  carManager = [(CAFCar *)self carManager];
  [carManager performGroupedRequest:requestCopy key:keyCopy value:valueCopy withResponse:responseCopy];
}

- (void)_accessoryDidUpdate:(id)update service:(id)service characteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  serviceCopy = service;
  updateCopy = update;
  observers = [(CAFCar *)self observers];
  [observers carDidUpdate:self accessory:updateCopy service:serviceCopy characteristic:characteristicCopy];
}

- (void)refreshCharacteristics:(id)characteristics
{
  v14 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [characteristicsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(characteristicsCopy);
        }

        [*(*(&v9 + 1) + 8 * v7++) updateValueRequiringRead:1];
      }

      while (v5 != v7);
      v5 = [characteristicsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_accessoryReceivedAllValues:(id)values
{
  valuesCopy = values;
  valueMonitor = [(CAFCar *)self valueMonitor];
  uniqueIdentifier = [valuesCopy uniqueIdentifier];

  -[CAFCar setReceivedAllValues:](self, "setReceivedAllValues:", [valueMonitor valueReceivedFor:uniqueIdentifier]);
}

- (void)_accessoryDidUpdate:(id)update service:(id)service control:(id)control
{
  controlCopy = control;
  serviceCopy = service;
  updateCopy = update;
  observers = [(CAFCar *)self observers];
  [observers carDidUpdate:self accessory:updateCopy service:serviceCopy control:controlCopy];
}

- (NSUUID)uniqueIdentifier
{
  v2 = [(CAFCar *)self car];
  uniqueIdentifier = [v2 uniqueIdentifier];

  return uniqueIdentifier;
}

- (NSString)name
{
  v2 = [(CAFCar *)self car];
  name = [v2 name];
  v4 = name;
  if (name)
  {
    v5 = name;
  }

  else
  {
    v5 = @"_unnamed_";
  }

  v6 = v5;

  return &v5->isa;
}

- (BOOL)usable
{
  accessories = [(CAFCar *)self accessories];
  v3 = [accessories count] != 0;

  return v3;
}

- (void)invalidate
{
  v8 = *MEMORY[0x277D85DE8];
  allAccessories = [self allAccessories];
  [allAccessories count];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (CAFCarObserver)combineObserver
{
  observableCache = [(CAFCar *)self observableCache];
  if ([observableCache conformsToProtocol:&unk_28468B070])
  {
    v3 = observableCache;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)currentDescriptionForCache:(id)cache
{
  if ([(CAFCar *)self trimmedAccessories])
  {
    v4 = @"Accessories Trimmed";
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = MEMORY[0x277CCABB0];
    accessories = [(CAFCar *)self accessories];
    v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(accessories, "count")}];
    v4 = [v5 stringWithFormat:@"accessoriesCount=%@", v8];
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = [(CAFCar *)self car];
  name = [(CAFCar *)self name];
  uniqueIdentifier = [(CAFCar *)self uniqueIdentifier];
  if ([(CAFCar *)self isConfigured])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  if ([(CAFCar *)self receivedAllValues])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v16 = [v9 stringWithFormat:@"<%@ %p(%p): name=%@ uniqueIdentifier=%@ %@ isConfigured=%@ recievedAllValues=%@>", v10, self, v11, name, uniqueIdentifier, v4, v14, v15];

  return v16;
}

- (unint64_t)state
{
  if ([(CAFCar *)self receivedAllValues])
  {
    return 3;
  }

  else
  {
    return 6;
  }
}

- (CAFAudioSettings)audioSettings
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x0000000002000001"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x0000000002000001"];
  firstObject = [v6 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CAFAutomakerApps)automakerApps
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x0000000001800001"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x0000000001800001"];
  firstObject = [v6 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CAFAutomakerExteriorCamera)automakerExteriorCamera
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x0000000001300001"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x0000000001300001"];
  firstObject = [v6 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSArray)automakerInputStreams
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x000000000C000001"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x000000000C000001"];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CAFAutomakerNotificationHistory)automakerNotificationHistory
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x0000000001400001"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x0000000001400001"];
  firstObject = [v6 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSArray)automakerNotifications
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x0000000006000001"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x0000000006000001"];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CAFAutomakerOverlays)automakerOverlays
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x000000000C000002"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x000000000C000002"];
  firstObject = [v6 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSArray)automakerRequestContent
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x0000000001200001"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x0000000001200001"];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CAFAutomakerSettings)automakerSettings
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x0000000005000001"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x0000000005000001"];
  firstObject = [v6 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CAFCharging)charging
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x0000000009000008"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x0000000009000008"];
  firstObject = [v6 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CAFClimate)climate
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x0000000001000001"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x0000000001000001"];
  firstObject = [v6 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CAFClosure)closure
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x000000000D000001"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x000000000D000001"];
  firstObject = [v6 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CAFDriveState)driveState
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x0000000009000003"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x0000000009000003"];
  firstObject = [v6 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSArray)driverAssistance
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x000000000E000001"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x000000000E000001"];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CAFElectricEngine)electricEngine
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x0000000009000004"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x0000000009000004"];
  firstObject = [v6 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CAFEnvironmentalConditions)environmentalConditions
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x0000000001600001"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x0000000001600001"];
  firstObject = [v6 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CAFFuel)fuel
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x0000000009000006"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x0000000009000006"];
  firstObject = [v6 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CAFHighVoltageBattery)highVoltageBattery
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x0000000009000007"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x0000000009000007"];
  firstObject = [v6 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CAFIndicators)indicators
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x0000000001900001"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x0000000001900001"];
  firstObject = [v6 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CAFInternalCombustionEngine)internalCombustionEngine
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x0000000009000005"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x0000000009000005"];
  firstObject = [v6 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CAFLighting)lighting
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x0000000002100001"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x0000000002100001"];
  firstObject = [v6 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CAFMedia)media
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x0000000003000001"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x0000000003000001"];
  firstObject = [v6 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CAFNavigation)navigation
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x000000000E000002"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x000000000E000002"];
  firstObject = [v6 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CAFNowPlayingInformation)nowPlayingInformation
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x000000000F000001"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x000000000F000001"];
  firstObject = [v6 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CAFPairedDevices)pairedDevices
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x000000000B000001"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x000000000B000001"];
  firstObject = [v6 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CAFSeat)seat
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x0000000001500001"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x0000000001500001"];
  firstObject = [v6 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CAFStatusIndicators)statusIndicators
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x0000000005100001"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x0000000005100001"];
  firstObject = [v6 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSArray)testingUseOnly
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x00000000FD000001"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x00000000FD000001"];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CAFTire)tire
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x000000000A000001"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x000000000A000001"];
  firstObject = [v6 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CAFTripComputer)tripComputer
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x0000000004000001"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x0000000004000001"];
  firstObject = [v6 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSArray)uiControl
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x0000000001100001"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x0000000001100001"];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)vehicleMotion
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x0000000009000001"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x0000000009000001"];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CAFVehicleResources)vehicleResources
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x0000000001200002"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x0000000001200002"];
  firstObject = [v6 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSArray)vehicleUnits
{
  carManager = [(CAFCar *)self carManager];
  config = [carManager config];
  registrations = [config registrations];
  [registrations validateRegisteredForAccessory:@"0x0000000001700001"];

  objc_opt_class();
  v6 = [(CAFCar *)self accessoriesForCategory:@"0x0000000001700001"];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)mediaSourceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  media = [(CAFCar *)self media];
  mediaSources = [media mediaSources];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__CAFCar_CAFNowPlaying__mediaSourceWithIdentifier___block_invoke;
  v13[3] = &unk_27890EFA8;
  v7 = identifierCopy;
  v14 = v7;
  v8 = [mediaSources indexOfObjectPassingTest:v13];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    media2 = [(CAFCar *)self media];
    mediaSources2 = [media2 mediaSources];
    v9 = [mediaSources2 objectAtIndexedSubscript:v8];
  }

  return v9;
}

uint64_t __51__CAFCar_CAFNowPlaying__mediaSourceWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (CAFMediaSource)currentMediaSource
{
  nowPlayingInformation = [(CAFCar *)self nowPlayingInformation];
  nowPlaying = [nowPlayingInformation nowPlaying];
  currentMediaSourceIdentifier = [nowPlaying currentMediaSourceIdentifier];

  v6 = [(CAFCar *)self mediaSourceWithIdentifier:currentMediaSourceIdentifier];

  return v6;
}

- (unsigned)np_currentFrequency
{
  currentMediaSource = [(CAFCar *)self currentMediaSource];
  currentFrequency = [currentMediaSource currentFrequency];

  return currentFrequency;
}

- (CAFUInt32Range)np_currentFrequencyRange
{
  currentMediaSource = [(CAFCar *)self currentMediaSource];
  currentFrequencyRange = [currentMediaSource currentFrequencyRange];

  return currentFrequencyRange;
}

- (CAFMediaItems)np_currentMediaItems
{
  currentMediaSource = [(CAFCar *)self currentMediaSource];
  mediaItems = [currentMediaSource mediaItems];

  return mediaItems;
}

- (NSString)np_titleForCurrentMediaSource
{
  currentMediaSource = [(CAFCar *)self currentMediaSource];
  userVisibleLabel = [currentMediaSource userVisibleLabel];

  return userVisibleLabel;
}

- (void)initWithManager:car:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __29__CAFCar__refreshAccessories__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __29__CAFCar__refreshAccessories__block_invoke_cold_2(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_5_0(a1, a2, *MEMORY[0x277D85DE8]);
  *(v2 + 24);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_231618000, v3, v4, "%{public}@ done didUpdate=%@");
  v5 = *MEMORY[0x277D85DE8];
}

void __29__CAFCar__refreshAccessories__block_invoke_92_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __29__CAFCar__refreshAccessories__block_invoke_92_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __29__CAFCar__refreshAccessories__block_invoke_92_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __29__CAFCar__refreshAccessories__block_invoke_94_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_231618000, v1, v2, "New accessory from pluginID: %@ instanceID: %@ found");
  v3 = *MEMORY[0x277D85DE8];
}

void __29__CAFCar__refreshAccessories__block_invoke_94_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&dword_231618000, v1, v2, "Creating accessory from pluginID: %@ instanceID: %@ failed");
  v3 = *MEMORY[0x277D85DE8];
}

void __29__CAFCar__refreshAccessories__block_invoke_94_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8_0(&dword_231618000, v1, v2, "Parsing accessory config from pluginID: %@ failed for instanceID", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __29__CAFCar__refreshAccessories__block_invoke_94_cold_4(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8_0(&dword_231618000, v1, v2, "Parsing accessory config from pluginID: %@ failed for accessory", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_groupInitialization:controls:.cold.1()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__CAFCar__groupInitialization_controls___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__CAFCar__groupInitialization_controls___block_invoke_109_cold_1()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __25__CAFCar_trimAccessories__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__CAFCar_removeRegistrationForCharacteristics___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  [*(a1 + 40) count];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __44__CAFCar_addRegistrationForCharacteristics___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  [*(a1 + 40) count];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)didUpdatePluginID:(NSObject *)a3 values:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = objc_opt_class();
  v4 = v9;
  _os_log_error_impl(&dword_231618000, a3, OS_LOG_TYPE_ERROR, "Error updating pluginID: %@ with wrong updates type: %@", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didUpdatePluginID:(uint64_t)a1 values:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  [a2 count];
  v3 = [a2 allKeys];
  v4 = [v3 componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)didUpdatePluginID:values:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8_0(&dword_231618000, v0, v1, "Error updating pluginID: %@ without values", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __35__CAFCar_didUpdatePluginID_values___block_invoke_cold_1(id *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  [*a1 count];
  [a2 count];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __35__CAFCar_didUpdatePluginID_values___block_invoke_cold_2(uint64_t *a1, id *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  [*a2 count];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __35__CAFCar_didUpdatePluginID_values___block_invoke_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8_0(&dword_231618000, v1, v2, "Update values from pluginID: %@, but updatables do not exist.", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __35__CAFCar_didUpdatePluginID_values___block_invoke_116_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&dword_231618000, v2, v3, "Received update from pluginID: %@, but updatable for instanceID: %@ does not exist.");
  v4 = *MEMORY[0x277D85DE8];
}

void __59__CAFCar_didRequestPluginID_instanceID_value_withResponse___block_invoke_cold_1(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_5_0(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&dword_231618000, v2, v3, "Request received from pluginID: %@, but updatable for instanceID: %@ is not a control.");
  v4 = *MEMORY[0x277D85DE8];
}

void __59__CAFCar_didRequestPluginID_instanceID_value_withResponse___block_invoke_cold_2(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_5_0(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&dword_231618000, v2, v3, "Request received from pluginID: %@, but updatable for instanceID: %@ does not exist.");
  v4 = *MEMORY[0x277D85DE8];
}

void __59__CAFCar_didRequestPluginID_instanceID_value_withResponse___block_invoke_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8_0(&dword_231618000, v1, v2, "Request received from pluginID: %@, but updatables do not exist.", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __45__CAFCar_didNotifyPluginID_instanceID_value___block_invoke_cold_1(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_5_0(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&dword_231618000, v2, v3, "Notification received from pluginID: %@, but updatable for instanceID: %@ is not a control.");
  v4 = *MEMORY[0x277D85DE8];
}

void __45__CAFCar_didNotifyPluginID_instanceID_value___block_invoke_cold_2(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_5_0(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&dword_231618000, v2, v3, "Notification received from pluginID: %@, but updatable for instanceID: %@ does not exist.");
  v4 = *MEMORY[0x277D85DE8];
}

void __45__CAFCar_didNotifyPluginID_instanceID_value___block_invoke_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8_0(&dword_231618000, v1, v2, "Notification received from pluginID: %@, but updatables do not exist.", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end