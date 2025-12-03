@interface HFHomeKitDispatcher
+ (BOOL)synchronizesHomeDataModel;
+ (id)_logSettingsWithFormatter:(id)formatter;
+ (id)sharedDispatcher;
+ (void)initialize;
+ (void)setConfiguration:(id)configuration;
- (BOOL)_shouldPersistSelectedHomeToDefaults;
- (BOOL)selectedHomeFollowsLocation;
- (BOOL)setSelectedHomeWithName:(id)name;
- (HFHomeKitDispatcher)init;
- (NAFuture)allHomesFuture;
- (NAFuture)firstHomeAddedFuture;
- (NAFuture)homeFuture;
- (NAFuture)locationSensingAvailableFuture;
- (id)_primaryHome;
- (id)_setupLocationSensingCoordinator;
- (id)climateActivityLogCoordinatorForHome:(id)home;
- (id)homeFutureWithUser:(id)user;
- (id)homeSensingActiveFuture;
- (id)pinCodeManagerForHome:(id)home;
- (id)securityActivityLogCoordinatorForHome:(id)home;
- (id)userFutureWithUniqueIdentifierStr:(id)str;
- (int64_t)_dataModelContextForCurrentEnvironment;
- (void)_createHomeManagerIfNecessary;
- (void)_fetchSettingsForLightProfiles:(id)profiles;
- (void)_finishAllHomesPromises:(id)promises;
- (void)_finishFirstHomeAddedPromises:(id)promises;
- (void)_finishHomePromises:(id)promises;
- (void)_handleHomeManagerDidUpdateHomes:(id)homes;
- (void)_initializeObservers;
- (void)_requestSelectedHome:(id)home;
- (void)_setDelegationEnabled:(BOOL)enabled forAccessoryHierarchy:(id)hierarchy;
- (void)_setDelegationEnabled:(BOOL)enabled forMediaProfileContainer:(id)container session:(id)session;
- (void)_setDelegationEnabled:(BOOL)enabled forUser:(id)user;
- (void)_setHomePersonManagerObservationEnabled:(BOOL)enabled;
- (void)_setSoftwareUpateControllerV2DelegationEnabled:(BOOL)enabled;
- (void)_setupAccessoryObserver;
- (void)_setupHomeManagerObserver;
- (void)_setupHomeObserver;
- (void)_setupMediaObjectObserver;
- (void)_setupMediaSessionObserver;
- (void)_setupResidentDeviceObserver;
- (void)_setupSofwareUpdateControllerObserver;
- (void)_setupSofwareUpdateControllerV2Observer;
- (void)_setupStateDumpHandlers;
- (void)_setupSymptomFixSessionObserver;
- (void)_updateHomeActivityStateForHome:(id)home;
- (void)_updateRemoteAccessStateForHome:(id)home notifyingObservers:(BOOL)observers;
- (void)addAccessoryObserver:(id)observer;
- (void)addAudioControlObserver:(id)observer;
- (void)addCameraObserver:(id)observer;
- (void)addDiagnosticInfoObserver:(id)observer;
- (void)addHomeKitSettingsObserver:(id)observer;
- (void)addHomeManagerObserver:(id)observer;
- (void)addHomeObserver:(id)observer;
- (void)addHomePersonManagerObserver:(id)observer;
- (void)addLightObserver:(id)observer;
- (void)addMediaDestinationControllerObserver:(id)observer;
- (void)addMediaObjectObserver:(id)observer;
- (void)addMediaProfileObserver:(id)observer;
- (void)addMediaSessionObserver:(id)observer;
- (void)addNetworkConfigurationObserver:(id)observer;
- (void)addObservationForCameraClipManager:(id)manager;
- (void)addResidentDeviceObserver:(id)observer;
- (void)addSiriEndpointProfileObserver:(id)observer;
- (void)addSoftwareUpdateControllerObserver:(id)observer;
- (void)addSoftwareUpdateControllerV2Observer:(id)observer;
- (void)addSoftwareUpdateObserver:(id)observer;
- (void)addSymptomFixSessionObserver:(id)observer;
- (void)addSymptomsHandlerObserver:(id)observer;
- (void)addTelevisionObserver:(id)observer;
- (void)addUserObserver:(id)observer;
- (void)addWalletKeyDeviceStateObserver:(id)observer;
- (void)configureHomeStateStreamWithHome:(id)home;
- (void)configureHomeStateStreamWithHomeManager:(id)manager;
- (void)dealloc;
- (void)disconnectDataModelDelegatesWithReason:(id)reason;
- (void)disconnectHomeStateStream;
- (void)dispatchAccessoryObserverMessage:(id)message sender:(id)sender;
- (void)dispatchAudioControlObserverMessage:(id)message sender:(id)sender;
- (void)dispatchCameraObserverMessage:(id)message sender:(id)sender;
- (void)dispatchHomeKitSettingMessage:(id)message sender:(id)sender;
- (void)dispatchHomeKitSettingsObserverMessage:(id)message sender:(id)sender;
- (void)dispatchHomeManagerObserverMessage:(id)message sender:(id)sender;
- (void)dispatchHomeObserverMessage:(id)message sender:(id)sender;
- (void)dispatchHomePersonManagerObserverMessage:(id)message sender:(id)sender;
- (void)dispatchLightObserverMessage:(id)message sender:(id)sender;
- (void)dispatchLightProfileUpdate:(id)update settings:(id)settings error:(id)error;
- (void)dispatchMediaDestinationControllerObserverMessage:(id)message sender:(id)sender;
- (void)dispatchMediaObjectObserverMessage:(id)message sender:(id)sender;
- (void)dispatchMediaSessionObserverMessage:(id)message sender:(id)sender;
- (void)dispatchNetworkConfigurationObserverMessage:(id)message sender:(id)sender;
- (void)dispatchSiriEndpointObserverMessage:(id)message sender:(id)sender;
- (void)dispatchSoftwareUpdateControllerMessage:(id)message sender:(id)sender;
- (void)dispatchSoftwareUpdateMessage:(id)message sender:(id)sender;
- (void)dispatchSymptomFixSessionObserverMessage:(id)message sender:(id)sender;
- (void)dispatchSymptomsHandlerMessage:(id)message sender:(id)sender;
- (void)dispatchTelevisionObserverMessage:(id)message sender:(id)sender;
- (void)dispatchUserObserverMessage:(id)message sender:(id)sender;
- (void)dispatchWalletKeyDeviceStateObserverMessage:(id)message sender:(id)sender;
- (void)fetchSettingsForLightProfiles:(id)profiles;
- (void)homeManagerWasCreated:(id)created;
- (void)installStateArbiter:(id)arbiter installStateDidChange:(BOOL)change;
- (void)reconnectDataModelDelegatesWithReason:(id)reason;
- (void)registerHomeStateStream;
- (void)removeAccessoryObserver:(id)observer;
- (void)removeAudioControlObserver:(id)observer;
- (void)removeCameraObserver:(id)observer;
- (void)removeDiagnosticInfoObserver:(id)observer;
- (void)removeHomeKitSettingsObserver:(id)observer;
- (void)removeHomeManagerObserver:(id)observer;
- (void)removeHomeObserver:(id)observer;
- (void)removeHomePersonManagerObserver:(id)observer;
- (void)removeLightObserver:(id)observer;
- (void)removeMediaDestinationControllerObserver:(id)observer;
- (void)removeMediaObjectObserver:(id)observer;
- (void)removeMediaProfileObserver:(id)observer;
- (void)removeMediaSessionObserver:(id)observer;
- (void)removeNetworkConfigurationObserver:(id)observer;
- (void)removeObservationForCameraClipManager:(id)manager;
- (void)removeResidentDeviceObserver:(id)observer;
- (void)removeSiriEndpointProfileObserver:(id)observer;
- (void)removeSoftwareUpdateControllerObserver:(id)observer;
- (void)removeSoftwareUpdateControllerV2Observer:(id)observer;
- (void)removeSoftwareUpdateObserver:(id)observer;
- (void)removeSymptomFixSessionObserver:(id)observer;
- (void)removeSymptomsHandlerObserver:(id)observer;
- (void)removeTelevisionObserver:(id)observer;
- (void)removeUserObserver:(id)observer;
- (void)removeWalletKeyDeviceStateObserver:(id)observer;
- (void)setHomeManagerAndUpdateDelegate:(id)delegate;
- (void)setOverrideHome:(id)home;
- (void)setSelectedHome:(id)home userInitiated:(BOOL)initiated;
- (void)stateRestorationSettings:(id)settings selectedHomeIdentifierDidUpdateExternally:(id)externally;
- (void)updateHome;
- (void)updateHomeManagerConfiguration:(id)configuration;
- (void)updateHomeSensingState;
- (void)updateSelectedHome;
@end

@implementation HFHomeKitDispatcher

- (void)registerHomeStateStream
{
  selfCopy = self;
  HFHomeKitDispatcher.registerHomeStateStream()();
}

- (void)disconnectHomeStateStream
{
  selfCopy = self;
  HFHomeKitDispatcher.disconnectHomeStateStream()();
}

- (void)configureHomeStateStreamWithHomeManager:(id)manager
{
  v4 = sub_20DD639C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DD63B44();
  managerCopy = manager;
  if (sub_20DD639E4())
  {
    MEMORY[0x20F324A90]();
    (*(v5 + 104))(v8, *MEMORY[0x277D15390], v4);
    sub_20DD63AC4();

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v9 = managerCopy;
  }
}

- (void)configureHomeStateStreamWithHome:(id)home
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  sub_20DD63B44();
  homeCopy = home;
  if (sub_20DD639E4())
  {
    sub_20DD63BB4();
    v8 = sub_20DD65114();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v10 = homeCopy;
    *(v9 + 16) = homeCopy;
    v11 = v10;
    sub_20DD63B94();

    sub_20D9D76EC(v7, &qword_27C8443F0, &qword_20DD93820);
  }

  else
  {
    v12 = homeCopy;
  }
}

+ (void)initialize
{
  defaultPrivateConfiguration = [MEMORY[0x277CD1A98] defaultPrivateConfiguration];
  v3 = qword_280E03DB8;
  qword_280E03DB8 = defaultPrivateConfiguration;

  v4 = +[HFExecutionEnvironment isHomeApp](HFExecutionEnvironment, "isHomeApp") || +[HFExecutionEnvironment isShortcuts](HFExecutionEnvironment, "isShortcuts") || +[HFExecutionEnvironment isSpringBoard](HFExecutionEnvironment, "isSpringBoard") || +[HFExecutionEnvironment isMacShortcuts](HFExecutionEnvironment, "isMacShortcuts") || +[HFExecutionEnvironment isHomeControlService](HFExecutionEnvironment, "isHomeControlService") || +[HFExecutionEnvironment isSettings](HFExecutionEnvironment, "isSettings") || +[HFExecutionEnvironment isWatchApp](HFExecutionEnvironment, "isWatchApp") || +[HFExecutionEnvironment isHomeUIService];
  _MergedGlobals_327 = v4;
  v5 = +[HFExecutionEnvironment isHomeApp](HFExecutionEnvironment, "isHomeApp") || +[HFExecutionEnvironment isWatchApp];
  byte_280E03DB1 = v5;
}

+ (BOOL)synchronizesHomeDataModel
{
  if (+[HFUtilities isInternalTest]|| (_MergedGlobals_327 & 1) == 0)
  {
    v2 = byte_280E03DB2;
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

+ (void)setConfiguration:(id)configuration
{
  if (configuration)
  {
    defaultPrivateConfiguration = [configuration copy];
  }

  else
  {
    defaultPrivateConfiguration = [MEMORY[0x277CD1A98] defaultPrivateConfiguration];
  }

  v4 = qword_280E03DB8;
  qword_280E03DB8 = defaultPrivateConfiguration;
}

+ (id)sharedDispatcher
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__HFHomeKitDispatcher_sharedDispatcher__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_280E03DC8 != -1)
  {
    dispatch_once(&qword_280E03DC8, block);
  }

  v2 = qword_280E03DC0;

  return v2;
}

void __39__HFHomeKitDispatcher_sharedDispatcher__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_280E03DC0;
  qword_280E03DC0 = v1;
}

- (HFHomeKitDispatcher)init
{
  v36.receiver = self;
  v36.super_class = HFHomeKitDispatcher;
  v2 = [(HFHomeKitDispatcher *)&v36 init];
  if (v2)
  {
    v3 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Initializing HomeKit dispatcher", &buf, 2u);
    }

    v4 = HFLogForCategory(0x35uLL);
    if (os_signpost_enabled(v4))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_20D9BF000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0x1F5uLL, "HomeKitDataLoad", "Start HomeKit Warmup", &buf, 2u);
    }

    [(HFHomeKitDispatcher *)v2 _initializeObservers];
    array = [MEMORY[0x277CBEB18] array];
    homePromises = v2->_homePromises;
    v2->_homePromises = array;

    array2 = [MEMORY[0x277CBEB18] array];
    firstHomeAddedPromises = v2->_firstHomeAddedPromises;
    v2->_firstHomeAddedPromises = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    allHomesPromises = v2->_allHomesPromises;
    v2->_allHomesPromises = array3;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    remoteAccessStateByHomeID = v2->_remoteAccessStateByHomeID;
    v2->_remoteAccessStateByHomeID = dictionary;

    v2->_willAcceptHomeFutures = 0;
    v13 = objc_alloc_init(HFHomeKitPreferencesUtilities);
    v14 = [HFHomeManagerCreator alloc];
    v15 = +[HFExecutionEnvironment sharedInstance];
    hostProcess = [v15 hostProcess];
    v17 = [(HFHomeManagerCreator *)v14 initWithHostProcess:hostProcess configuration:qword_280E03DB8 homeStatus:v13 delegate:v2];
    [(HFHomeKitDispatcher *)v2 setHomeManagerCreator:v17];

    [(HFHomeKitDispatcher *)v2 _createHomeManagerIfNecessary];
    allHomesFuture = [(HFHomeKitDispatcher *)v2 allHomesFuture];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __27__HFHomeKitDispatcher_init__block_invoke;
    v34[3] = &unk_277DF9508;
    v19 = v2;
    v35 = v19;
    v20 = [allHomesFuture addSuccessBlock:v34];
    _setupLocationSensingCoordinator = [(HFHomeKitDispatcher *)v19 _setupLocationSensingCoordinator];
    [(HFHomeKitDispatcher *)v19 setLocationCoordinatorSetupFuture:_setupLocationSensingCoordinator];

    v22 = +[HFHomeAppInstallStateArbiter sharedInstance];
    [v22 addObserver:v19];

    v23 = +[HFStateRestorationSettings sharedInstance];
    [v23 addObserver:v19];

    objc_initWeak(&buf, v19);
    v24 = *MEMORY[0x277CD02E8];
    v25 = MEMORY[0x277D85CD0];
    v26 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __27__HFHomeKitDispatcher_init__block_invoke_2;
    handler[3] = &unk_277DF3CC8;
    objc_copyWeak(&v32, &buf);
    notify_register_dispatch(v24, &v19->_homeKitPreferencesChangedNotifyToken, v25, handler);

    if (v19->_homeManager)
    {
      v27 = [[HFHomeKitAccessorySettingsDataSource alloc] initWithHomeManager:v19->_homeManager];
      accessorySettingsDataSource = v19->_accessorySettingsDataSource;
      v19->_accessorySettingsDataSource = v27;
    }

    [(HFHomeKitDispatcher *)v19 _setupStateDumpHandlers];
    [(HFHomeKitDispatcher *)v19 _setUpCameraEventDiagnosticsAttachmentRequestListener];
    v29 = v19;
    objc_destroyWeak(&v32);
    objc_destroyWeak(&buf);
  }

  return v2;
}

void __27__HFHomeKitDispatcher_init__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [*(a1 + 32) homeObserverDispatcher];
        v10 = [v9 proxy];
        [v8 setDelegate:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __27__HFHomeKitDispatcher_init__block_invoke_2(uint64_t a1)
{
  v2 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Received HMHomeManagerPreferencesChangedNotification", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _createHomeManagerIfNecessary];
}

- (void)disconnectDataModelDelegatesWithReason:(id)reason
{
  v19 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = reasonCopy;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Disabling data model delegates with reason: %@", &v17, 0xCu);
  }

  mEMORY[0x277D16F78] = [MEMORY[0x277D16F78] shared];
  [(HFHomeKitDispatcher *)self removeHomeManagerObserver:mEMORY[0x277D16F78]];

  mEMORY[0x277D16F78]2 = [MEMORY[0x277D16F78] shared];
  [(HFHomeKitDispatcher *)self removeHomeObserver:mEMORY[0x277D16F78]2];

  mEMORY[0x277D16F78]3 = [MEMORY[0x277D16F78] shared];
  [(HFHomeKitDispatcher *)self removeAccessoryObserver:mEMORY[0x277D16F78]3];

  mEMORY[0x277D16F78]4 = [MEMORY[0x277D16F78] shared];
  [(HFHomeKitDispatcher *)self removeMediaSessionObserver:mEMORY[0x277D16F78]4];

  mEMORY[0x277D16F78]5 = [MEMORY[0x277D16F78] shared];
  [(HFHomeKitDispatcher *)self removeMediaObjectObserver:mEMORY[0x277D16F78]5];

  mEMORY[0x277D16F78]6 = [MEMORY[0x277D16F78] shared];
  [(HFHomeKitDispatcher *)self removeResidentDeviceObserver:mEMORY[0x277D16F78]6];

  mEMORY[0x277D16F78]7 = [MEMORY[0x277D16F78] shared];
  [(HFHomeKitDispatcher *)self removeLightObserver:mEMORY[0x277D16F78]7];

  mEMORY[0x277D16F78]8 = [MEMORY[0x277D16F78] shared];
  [(HFHomeKitDispatcher *)self removeSoftwareUpdateObserver:mEMORY[0x277D16F78]8];

  mEMORY[0x277D16F78]9 = [MEMORY[0x277D16F78] shared];
  [(HFHomeKitDispatcher *)self removeSoftwareUpdateControllerV2Observer:mEMORY[0x277D16F78]9];

  mEMORY[0x277D16F78]10 = [MEMORY[0x277D16F78] shared];
  [(HFHomeKitDispatcher *)self removeSymptomsHandlerObserver:mEMORY[0x277D16F78]10];

  [(HFHomeKitDispatcher *)self disconnectHomeStateStream];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)reconnectDataModelDelegatesWithReason:(id)reason
{
  v20 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if ([objc_opt_class() synchronizesHomeDataModel])
  {
    v5 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = reasonCopy;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Enabling data model delegates with reason: %@", &v18, 0xCu);
    }

    _dataModelContextForCurrentEnvironment = [(HFHomeKitDispatcher *)self _dataModelContextForCurrentEnvironment];
    [MEMORY[0x277D16F78] setContext:_dataModelContextForCurrentEnvironment];
    mEMORY[0x277D16F78] = [MEMORY[0x277D16F78] shared];
    [(HFHomeKitDispatcher *)self addHomeManagerObserver:mEMORY[0x277D16F78]];

    mEMORY[0x277D16F78]2 = [MEMORY[0x277D16F78] shared];
    [(HFHomeKitDispatcher *)self addHomeObserver:mEMORY[0x277D16F78]2];

    mEMORY[0x277D16F78]3 = [MEMORY[0x277D16F78] shared];
    [(HFHomeKitDispatcher *)self addAccessoryObserver:mEMORY[0x277D16F78]3];

    mEMORY[0x277D16F78]4 = [MEMORY[0x277D16F78] shared];
    [(HFHomeKitDispatcher *)self addMediaSessionObserver:mEMORY[0x277D16F78]4];

    mEMORY[0x277D16F78]5 = [MEMORY[0x277D16F78] shared];
    [(HFHomeKitDispatcher *)self addMediaObjectObserver:mEMORY[0x277D16F78]5];

    mEMORY[0x277D16F78]6 = [MEMORY[0x277D16F78] shared];
    [(HFHomeKitDispatcher *)self addResidentDeviceObserver:mEMORY[0x277D16F78]6];

    mEMORY[0x277D16F78]7 = [MEMORY[0x277D16F78] shared];
    [(HFHomeKitDispatcher *)self addLightObserver:mEMORY[0x277D16F78]7];

    mEMORY[0x277D16F78]8 = [MEMORY[0x277D16F78] shared];
    [(HFHomeKitDispatcher *)self addSoftwareUpdateObserver:mEMORY[0x277D16F78]8];

    mEMORY[0x277D16F78]9 = [MEMORY[0x277D16F78] shared];
    [(HFHomeKitDispatcher *)self addSoftwareUpdateControllerV2Observer:mEMORY[0x277D16F78]9];

    mEMORY[0x277D16F78]10 = [MEMORY[0x277D16F78] shared];
    [(HFHomeKitDispatcher *)self addSymptomsHandlerObserver:mEMORY[0x277D16F78]10];

    [(HFHomeKitDispatcher *)self registerHomeStateStream];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_initializeObservers
{
  [(HFHomeKitDispatcher *)self _setupHomeManagerObserver];
  [(HFHomeKitDispatcher *)self _setupHomeObserver];
  [(HFHomeKitDispatcher *)self _setupAccessoryObserver];
  [(HFHomeKitDispatcher *)self _setupResidentDeviceObserver];
  [(HFHomeKitDispatcher *)self _setupMediaObjectObserver];
  [(HFHomeKitDispatcher *)self _setupMediaSessionObserver];
  [(HFHomeKitDispatcher *)self _setupSofwareUpdateControllerObserver];
  [(HFHomeKitDispatcher *)self _setupSofwareUpdateControllerV2Observer];
  v3 = [[HFAccessoryDiagnosticInfoManager alloc] initWithDispatcher:self];
  diagnosticInfoManager = self->_diagnosticInfoManager;
  self->_diagnosticInfoManager = v3;

  v5 = MEMORY[0x277D2C8E0];
  _defaultLogSettings = [objc_opt_class() _defaultLogSettings];
  v7 = [v5 dispatcherWithProtocol:&unk_2825450E0 logSettings:_defaultLogSettings];
  softwareUpdateObserverDispatcher = self->_softwareUpdateObserverDispatcher;
  self->_softwareUpdateObserverDispatcher = v7;

  if (!+[HFExecutionEnvironment isHomeWidgetRelatedProcess])
  {
    v9 = [[HFSoftwareUpdateManager alloc] initWithDispatcher:self];
    softwareUpdateManager = self->_softwareUpdateManager;
    self->_softwareUpdateManager = v9;
  }

  v11 = MEMORY[0x277D2C8E0];
  _defaultLogSettings2 = [objc_opt_class() _defaultLogSettings];
  v13 = [v11 dispatcherWithProtocol:&unk_282545C08 logSettings:_defaultLogSettings2];
  siriEndpointProfileObserverDispatcher = self->_siriEndpointProfileObserverDispatcher;
  self->_siriEndpointProfileObserverDispatcher = v13;

  [(HFHomeKitDispatcher *)self _setupSymptomFixSessionObserver];
  v15 = MEMORY[0x277D2C8E0];
  _defaultLogSettings3 = [objc_opt_class() _defaultLogSettings];
  v17 = [v15 dispatcherWithProtocol:&unk_282544AA0 logSettings:_defaultLogSettings3];
  audioControlObserverDispatcher = self->_audioControlObserverDispatcher;
  self->_audioControlObserverDispatcher = v17;

  v19 = MEMORY[0x277D2C8E0];
  _defaultLogSettings4 = [objc_opt_class() _defaultLogSettings];
  v21 = [v19 dispatcherWithProtocol:&unk_2825447B8 logSettings:_defaultLogSettings4];
  cameraObserverDispatcher = self->_cameraObserverDispatcher;
  self->_cameraObserverDispatcher = v21;

  v23 = MEMORY[0x277D2C8E0];
  _defaultLogSettings5 = [objc_opt_class() _defaultLogSettings];
  v25 = [v23 dispatcherWithProtocol:&unk_282545618 logSettings:_defaultLogSettings5];
  userObserverDispatcher = self->_userObserverDispatcher;
  self->_userObserverDispatcher = v25;

  v27 = MEMORY[0x277D2C8E0];
  _defaultLogSettings6 = [objc_opt_class() _defaultLogSettings];
  v29 = [v27 dispatcherWithProtocol:&unk_282545260 logSettings:_defaultLogSettings6];
  symptomsHandlerObserverDispatcher = self->_symptomsHandlerObserverDispatcher;
  self->_symptomsHandlerObserverDispatcher = v29;

  v31 = MEMORY[0x277D2C8E0];
  _defaultLogSettings7 = [objc_opt_class() _defaultLogSettings];
  v33 = [v31 dispatcherWithProtocol:&unk_282535CD0 logSettings:_defaultLogSettings7];
  homeKitSettingsObserverDispatcher = self->_homeKitSettingsObserverDispatcher;
  self->_homeKitSettingsObserverDispatcher = v33;

  v35 = MEMORY[0x277D2C8E0];
  _defaultLogSettings8 = [objc_opt_class() _defaultLogSettings];
  v37 = [v35 dispatcherWithProtocol:&unk_282544DB8 logSettings:_defaultLogSettings8];
  networkConfigurationObserverDispatcher = self->_networkConfigurationObserverDispatcher;
  self->_networkConfigurationObserverDispatcher = v37;

  v39 = MEMORY[0x277D2C8E0];
  _defaultLogSettings9 = [objc_opt_class() _defaultLogSettings];
  v41 = [v39 dispatcherWithProtocol:&unk_282545710 logSettings:_defaultLogSettings9];
  televisionObserverDispatcher = self->_televisionObserverDispatcher;
  self->_televisionObserverDispatcher = v41;

  v43 = MEMORY[0x277D2C8E0];
  _defaultLogSettings10 = [objc_opt_class() _defaultLogSettings];
  v45 = [v43 dispatcherWithProtocol:&unk_282545938 logSettings:_defaultLogSettings10];
  homePersonManagerDispatcher = self->_homePersonManagerDispatcher;
  self->_homePersonManagerDispatcher = v45;

  v47 = MEMORY[0x277D2C8E0];
  _defaultLogSettings11 = [objc_opt_class() _defaultLogSettings];
  v49 = [v47 dispatcherWithProtocol:&unk_282545F08 logSettings:_defaultLogSettings11];
  lightObserverDispatcher = self->_lightObserverDispatcher;
  self->_lightObserverDispatcher = v49;

  v51 = MEMORY[0x277D2C8E0];
  _defaultLogSettings12 = [objc_opt_class() _defaultLogSettings];
  v53 = [v51 dispatcherWithProtocol:&unk_2825460A0 logSettings:_defaultLogSettings12];
  walletKeyDeviceStateObserverDispatcher = self->_walletKeyDeviceStateObserverDispatcher;
  self->_walletKeyDeviceStateObserverDispatcher = v53;

  v55 = MEMORY[0x277D2C8E0];
  _defaultLogSettings13 = [objc_opt_class() _defaultLogSettings];
  v57 = [v55 dispatcherWithProtocol:&unk_282545DE0 logSettings:_defaultLogSettings13];
  mediaDestinationControllerObserverDispatcher = self->_mediaDestinationControllerObserverDispatcher;
  self->_mediaDestinationControllerObserverDispatcher = v57;

  if (__automaticallySynchronizesHomeDataModel == 1)
  {
    [(HFHomeKitDispatcher *)self reconnectDataModelDelegatesWithReason:@"HFHomeKitDispatcher._initializeObservers"];
  }

  if ([objc_opt_class() synchronizesHomeDataModel] && !+[HFExecutionEnvironment isCarousel](HFExecutionEnvironment, "isCarousel"))
  {
    v59 = +[HFExecutionEnvironment sharedInstance];
    mEMORY[0x277D16F78] = [MEMORY[0x277D16F78] shared];
    [v59 addObserver:mEMORY[0x277D16F78]];

    mEMORY[0x277D16F78]2 = [MEMORY[0x277D16F78] shared];
    v61 = +[HFExecutionEnvironment sharedInstance];
    [mEMORY[0x277D16F78]2 executionEnvironmentRunningStateDidChange:v61];
  }
}

- (void)dealloc
{
  notify_cancel([(HFHomeKitDispatcher *)self homeKitPreferencesChangedNotifyToken]);
  v3.receiver = self;
  v3.super_class = HFHomeKitDispatcher;
  [(HFHomeKitDispatcher *)&v3 dealloc];
}

id __42__HFHomeKitDispatcher__defaultLogSettings__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 hf_prettyDescription];
  }

  else
  {
    [v2 description];
  }
  v3 = ;

  return v3;
}

id __43__HFHomeKitDispatcher__volatileLogSettings__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [(HFStateDumpBuilderContext *)HFMutableStateDumpBuilderContext contextWithDetailLevel:0];
    [v3 setIncludeVolatileObjects:1];
    v4 = [v2 hf_stateDumpBuilderWithContext:v3];
    v5 = [v4 buildDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v2 hf_prettyDescription];
    }

    else
    {
      [v2 description];
    }
    v5 = ;
  }

  return v5;
}

+ (id)_logSettingsWithFormatter:(id)formatter
{
  v3 = MEMORY[0x277D2C8E8];
  formatterCopy = formatter;
  v5 = [v3 alloc];
  v6 = HFLogForCategory(0x27uLL);
  v7 = [v5 initWithLog:v6 logType:0 argumentFormatter:formatterCopy];

  return v7;
}

- (void)_setupHomeManagerObserver
{
  objc_initWeak(&location, self);
  v4 = MEMORY[0x277D2C8E0];
  _defaultLogSettings = [objc_opt_class() _defaultLogSettings];
  v6 = [v4 dispatcherWithProtocol:&unk_28252CFC8 logSettings:_defaultLogSettings];
  homeManagerObserverDispatcher = self->_homeManagerObserverDispatcher;
  self->_homeManagerObserverDispatcher = v6;

  v8 = self->_homeManagerObserverDispatcher;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__HFHomeKitDispatcher__setupHomeManagerObserver__block_invoke;
  v18[3] = &unk_277E02540;
  objc_copyWeak(&v19, &location);
  [(NADelegateDispatcher *)v8 registerCustomHandlerForSelector:sel_homeManagerDidUpdateHomes_ handler:v18];
  v9 = self->_homeManagerObserverDispatcher;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__HFHomeKitDispatcher__setupHomeManagerObserver__block_invoke_2;
  v16[3] = &unk_277E02540;
  objc_copyWeak(&v17, &location);
  [(NADelegateDispatcher *)v9 registerCustomHandlerForSelector:sel_homeManagerDidUpdatePrimaryHome_ handler:v16];
  v10 = self->_homeManagerObserverDispatcher;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__HFHomeKitDispatcher__setupHomeManagerObserver__block_invoke_2_271;
  v14[3] = &unk_277E02540;
  objc_copyWeak(&v15, &location);
  [(NADelegateDispatcher *)v10 registerCustomHandlerForSelector:sel_homeManager_didAddHome_ handler:v14];
  v11 = self->_homeManagerObserverDispatcher;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__HFHomeKitDispatcher__setupHomeManagerObserver__block_invoke_3;
  v12[3] = &unk_277E025B8;
  objc_copyWeak(v13, &location);
  v13[1] = a2;
  [(NADelegateDispatcher *)v11 registerCustomHandlerForSelector:sel_homeManager_didRemoveHome_ handler:v12];
  objc_destroyWeak(v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __48__HFHomeKitDispatcher__setupHomeManagerObserver__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 objectAtIndexedSubscript:0];

  [WeakRetained _handleHomeManagerDidUpdateHomes:v4];
}

void __48__HFHomeKitDispatcher__setupHomeManagerObserver__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [MEMORY[0x277D2C900] futureWithNoResult];
  v9 = [v6 objectAtIndexedSubscript:0];

  v10 = [v9 homes];
  v11 = [v10 count];

  if (!v11)
  {
    v12 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "homeManagerDidUpdatePrimaryHome: No home left. Reset hasSeenWelcomeView flag.", buf, 2u);
    }

    v13 = [v9 hf_setHasSeenOnboardingWelcomeView:0];

    v8 = v13;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__HFHomeKitDispatcher__setupHomeManagerObserver__block_invoke_268;
  v16[3] = &unk_277E02568;
  v16[4] = WeakRetained;
  v17 = v5;
  v14 = v5;
  v15 = [v8 addCompletionBlock:v16];
}

uint64_t __48__HFHomeKitDispatcher__setupHomeManagerObserver__block_invoke_268(uint64_t a1)
{
  [*(a1 + 32) updateSelectedHome];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __48__HFHomeKitDispatcher__setupHomeManagerObserver__block_invoke_2_271(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 objectAtIndexedSubscript:1];

  v8 = [WeakRetained homeObserverDispatcher];
  v9 = [v8 proxy];
  [v7 setDelegate:v9];

  [WeakRetained _updateRemoteAccessStateForHome:v7 notifyingObservers:0];
  v5[2](v5);
}

void __48__HFHomeKitDispatcher__setupHomeManagerObserver__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 objectAtIndexedSubscript:1];
  v9 = [MEMORY[0x277D2C900] futureWithNoResult];
  v10 = [v6 objectAtIndexedSubscript:0];

  v11 = [v10 homes];
  v12 = [v11 count];

  if (!v12)
  {
    v13 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "homeManager:didRemoveHome: No home left. Reset hasSeenWelcomeView flag.", buf, 2u);
    }

    v14 = [v10 hf_setHasSeenOnboardingWelcomeView:0];

    v9 = v14;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __48__HFHomeKitDispatcher__setupHomeManagerObserver__block_invoke_273;
  v19[3] = &unk_277E02590;
  v20 = v8;
  v21 = WeakRetained;
  v15 = *(a1 + 40);
  v22 = v5;
  v23 = v15;
  v16 = v5;
  v17 = v8;
  v18 = [v9 addCompletionBlock:v19];
}

uint64_t __48__HFHomeKitDispatcher__setupHomeManagerObserver__block_invoke_273(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uniqueIdentifier];
  v3 = [*(a1 + 40) overrideHome];
  v4 = [v3 uniqueIdentifier];
  v5 = [v2 isEqual:v4];

  if (v5)
  {
    [*(a1 + 40) setOverrideHome:0];
  }

  v6 = [*(a1 + 32) uniqueIdentifier];
  v7 = [*(a1 + 40) selectedHome];
  v8 = [v7 uniqueIdentifier];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    [*(a1 + 40) setSelectedHome:0 userInitiated:0];
  }

  v10 = [*(a1 + 40) remoteAccessStateByHomeID];
  v11 = [*(a1 + 32) uniqueIdentifier];
  [v10 removeObjectForKey:v11];

  v12 = [*(a1 + 32) uniqueIdentifier];
  v13 = [*(a1 + 40) pinCodeManager];
  v14 = [v13 home];
  v15 = [v14 uniqueIdentifier];
  v16 = [v12 isEqual:v15];

  if (v16)
  {
    v17 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 40);
      v19 = NSStringFromSelector(*(a1 + 56));
      v20 = [*(a1 + 40) home];
      v21 = *(a1 + 32);
      v27 = 138413058;
      v28 = v18;
      v29 = 2112;
      v30 = v19;
      v31 = 2112;
      v32 = v20;
      v33 = 2112;
      v34 = v21;
      _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "%@:%@: Reseting HFPinCodeManager to use current home {%@} now that home {%@} was removed.", &v27, 0x2Au);
    }

    v22 = [HFPinCodeManager alloc];
    v23 = [*(a1 + 40) home];
    v24 = [(HFPinCodeManager *)v22 initWithHome:v23];
    [*(a1 + 40) setPinCodeManager:v24];
  }

  result = (*(*(a1 + 48) + 16))();
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_setupHomeObserver
{
  v3 = MEMORY[0x277D2C8E0];
  _defaultLogSettings = [objc_opt_class() _defaultLogSettings];
  v5 = [v3 dispatcherWithProtocol:&unk_282528678 logSettings:_defaultLogSettings];
  homeObserverDispatcher = self->_homeObserverDispatcher;
  self->_homeObserverDispatcher = v5;

  objc_initWeak(&location, self);
  v7 = self->_homeObserverDispatcher;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __41__HFHomeKitDispatcher__setupHomeObserver__block_invoke;
  v20[3] = &unk_277E02540;
  objc_copyWeak(&v21, &location);
  [(NADelegateDispatcher *)v7 registerCustomHandlerForSelector:sel_home_didAddAccessory_ handler:v20];
  v8 = self->_homeObserverDispatcher;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __41__HFHomeKitDispatcher__setupHomeObserver__block_invoke_2;
  v18[3] = &unk_277E02540;
  objc_copyWeak(&v19, &location);
  [(NADelegateDispatcher *)v8 registerCustomHandlerForSelector:sel_home_didAddResidentDevice_ handler:v18];
  v9 = self->_homeObserverDispatcher;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __41__HFHomeKitDispatcher__setupHomeObserver__block_invoke_3;
  v16[3] = &unk_277E02540;
  objc_copyWeak(&v17, &location);
  [(NADelegateDispatcher *)v9 registerCustomHandlerForSelector:sel_home_didRemoveResidentDevice_ handler:v16];
  v10 = self->_homeObserverDispatcher;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __41__HFHomeKitDispatcher__setupHomeObserver__block_invoke_4;
  v14[3] = &unk_277E02540;
  objc_copyWeak(&v15, &location);
  [(NADelegateDispatcher *)v10 registerCustomHandlerForSelector:sel_home_didAddMediaSystem_ handler:v14];
  v11 = self->_homeObserverDispatcher;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __41__HFHomeKitDispatcher__setupHomeObserver__block_invoke_5;
  v12[3] = &unk_277E02540;
  objc_copyWeak(&v13, &location);
  [(NADelegateDispatcher *)v11 registerCustomHandlerForSelector:sel_home_didUpdatePersonManagerSettings_ handler:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __41__HFHomeKitDispatcher__setupHomeObserver__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v11 objectAtIndexedSubscript:0];
  v8 = [WeakRetained home];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = [v11 objectAtIndexedSubscript:1];
    [WeakRetained _setDelegationEnabled:1 forAccessoryHierarchy:v10];
  }

  v5[2](v5);
}

void __41__HFHomeKitDispatcher__setupHomeObserver__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v13 objectAtIndexedSubscript:0];
  v8 = [WeakRetained home];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = [v13 objectAtIndexedSubscript:1];
    v11 = [WeakRetained residentDeviceObserverDispatcher];
    v12 = [v11 proxy];
    [v10 setDelegate:v12];
  }

  v5[2](v5);
  [WeakRetained _updateRemoteAccessStateForHome:v7 notifyingObservers:1];
  [WeakRetained _updateHomeActivityStateForHome:v7];
}

void __41__HFHomeKitDispatcher__setupHomeObserver__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5[2](v5);

  v7 = [v6 objectAtIndexedSubscript:0];

  [WeakRetained _updateRemoteAccessStateForHome:v7 notifyingObservers:1];
  [WeakRetained _updateHomeActivityStateForHome:v7];
}

void __41__HFHomeKitDispatcher__setupHomeObserver__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v11 objectAtIndexedSubscript:0];
  v8 = [WeakRetained home];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = [v11 objectAtIndexedSubscript:1];
    [WeakRetained _setDelegationEnabled:1 forMediaProfileContainer:v10 session:0];
  }

  v5[2](v5);
}

void __41__HFHomeKitDispatcher__setupHomeObserver__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v11 objectAtIndexedSubscript:0];
  v8 = [WeakRetained home];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = [v11 objectAtIndexedSubscript:1];
    [WeakRetained _setHomePersonManagerObservationEnabled:{objc_msgSend(v10, "isFaceClassificationEnabled")}];
  }

  v5[2](v5);
}

- (void)_setupAccessoryObserver
{
  v3 = MEMORY[0x277D2C8E0];
  _volatileLogSettings = [objc_opt_class() _volatileLogSettings];
  v5 = [v3 dispatcherWithProtocol:&unk_2825441E8 logSettings:_volatileLogSettings];
  accessoryObserverDispatcher = self->_accessoryObserverDispatcher;
  self->_accessoryObserverDispatcher = v5;

  objc_initWeak(&location, self);
  v7 = self->_accessoryObserverDispatcher;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__HFHomeKitDispatcher__setupAccessoryObserver__block_invoke;
  v14[3] = &unk_277E02540;
  objc_copyWeak(&v15, &location);
  [(NADelegateDispatcher *)v7 registerCustomHandlerForSelector:sel_accessoryDidUpdateServices_ handler:v14];
  v8 = self->_accessoryObserverDispatcher;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__HFHomeKitDispatcher__setupAccessoryObserver__block_invoke_2;
  v12[3] = &unk_277E02540;
  objc_copyWeak(&v13, &location);
  [(NADelegateDispatcher *)v8 registerCustomHandlerForSelector:sel_accessory_didAddProfile_ handler:v12];
  v9 = self->_accessoryObserverDispatcher;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__HFHomeKitDispatcher__setupAccessoryObserver__block_invoke_3;
  v10[3] = &unk_277E02540;
  objc_copyWeak(&v11, &location);
  [(NADelegateDispatcher *)v9 registerCustomHandlerForSelector:sel_accessoryDidUpdateAudioDestinationController_ handler:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __46__HFHomeKitDispatcher__setupAccessoryObserver__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 objectAtIndexedSubscript:0];

  [WeakRetained _setDelegationEnabled:1 forAccessoryHierarchy:v7];
  v5[2](v5);
}

void __46__HFHomeKitDispatcher__setupAccessoryObserver__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 objectAtIndexedSubscript:0];

  [WeakRetained _setDelegationEnabled:1 forAccessoryHierarchy:v7];
  v8 = [v7 lightProfiles];
  [WeakRetained fetchSettingsForLightProfiles:v8];
  v5[2](v5);
}

void __46__HFHomeKitDispatcher__setupAccessoryObserver__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 objectAtIndexedSubscript:0];

  [WeakRetained _setDelegationEnabled:1 forAccessoryHierarchy:v7];
  v5[2](v5);
}

- (void)_setupResidentDeviceObserver
{
  v3 = MEMORY[0x277D2C8E0];
  _defaultLogSettings = [objc_opt_class() _defaultLogSettings];
  v5 = [v3 dispatcherWithProtocol:&unk_28252D278 logSettings:_defaultLogSettings];
  residentDeviceObserverDispatcher = self->_residentDeviceObserverDispatcher;
  self->_residentDeviceObserverDispatcher = v5;

  objc_initWeak(&location, self);
  v7 = self->_residentDeviceObserverDispatcher;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__HFHomeKitDispatcher__setupResidentDeviceObserver__block_invoke;
  v15[3] = &unk_277E02540;
  objc_copyWeak(&v16, &location);
  [(NADelegateDispatcher *)v7 registerCustomHandlerForSelector:sel_residentDevice_didUpdateEnabled_ handler:v15];
  v8 = self->_residentDeviceObserverDispatcher;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__HFHomeKitDispatcher__setupResidentDeviceObserver__block_invoke_2;
  v13[3] = &unk_277E02540;
  objc_copyWeak(&v14, &location);
  [(NADelegateDispatcher *)v8 registerCustomHandlerForSelector:sel_residentDevice_didUpdateStatus_ handler:v13];
  v9 = self->_residentDeviceObserverDispatcher;
  v10 = [objc_opt_class() _logSettingsWithFormatter:&__block_literal_global_519];
  [(NADelegateDispatcher *)v9 registerCustomLogSettings:v10 forSelector:sel_residentDevice_didUpdateCapabilities_ argumentIndex:1];

  v11 = self->_residentDeviceObserverDispatcher;
  v12 = [objc_opt_class() _logSettingsWithFormatter:&__block_literal_global_522];
  [(NADelegateDispatcher *)v11 registerCustomLogSettings:v12 forSelector:sel_residentDevice_didUpdateStatus_ argumentIndex:1];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __51__HFHomeKitDispatcher__setupResidentDeviceObserver__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 objectAtIndexedSubscript:0];

  v5[2](v5);
  v8 = [v7 home];
  [WeakRetained _updateRemoteAccessStateForHome:v8 notifyingObservers:1];
}

void __51__HFHomeKitDispatcher__setupResidentDeviceObserver__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 objectAtIndexedSubscript:0];

  v5[2](v5);
  v8 = [v7 home];
  [WeakRetained _updateRemoteAccessStateForHome:v8 notifyingObservers:1];
}

uint64_t __51__HFHomeKitDispatcher__setupResidentDeviceObserver__block_invoke_3(uint64_t a1, void *a2)
{
  [a2 unsignedIntegerValue];

  return HMResidentDeviceCapabilitiesDescription();
}

uint64_t __51__HFHomeKitDispatcher__setupResidentDeviceObserver__block_invoke_4(uint64_t a1, void *a2)
{
  [a2 unsignedIntegerValue];

  return HMResidentDeviceStatusDescription();
}

- (void)_setupMediaObjectObserver
{
  v3 = MEMORY[0x277D2C8E0];
  _defaultLogSettings = [objc_opt_class() _defaultLogSettings];
  v5 = [v3 dispatcherWithProtocol:&unk_282536018 logSettings:_defaultLogSettings];
  mediaObjectObserverDispatcher = self->_mediaObjectObserverDispatcher;
  self->_mediaObjectObserverDispatcher = v5;

  objc_initWeak(&location, self);
  v7 = self->_mediaObjectObserverDispatcher;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__HFHomeKitDispatcher__setupMediaObjectObserver__block_invoke;
  v11[3] = &unk_277E02540;
  objc_copyWeak(&v12, &location);
  [(NADelegateDispatcher *)v7 registerCustomHandlerForSelector:sel_mediaObject_didUpdateSettings_ handler:v11];
  v8 = self->_mediaObjectObserverDispatcher;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__HFHomeKitDispatcher__setupMediaObjectObserver__block_invoke_2;
  v9[3] = &unk_277E02540;
  objc_copyWeak(&v10, &location);
  [(NADelegateDispatcher *)v8 registerCustomHandlerForSelector:sel_mediaObject_didUpdateMediaSession_ handler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __48__HFHomeKitDispatcher__setupMediaObjectObserver__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 objectAtIndexedSubscript:0];

  [WeakRetained _setDelegationEnabled:1 forMediaProfileContainer:v7 session:0];
  v5[2](v5);
}

void __48__HFHomeKitDispatcher__setupMediaObjectObserver__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = [v6 objectAtIndexedSubscript:1];

  [WeakRetained _setDelegationEnabled:1 forMediaProfileContainer:v7 session:v8];
  v5[2](v5);
}

- (void)_setupMediaSessionObserver
{
  v3 = MEMORY[0x277D2C8E0];
  _defaultLogSettings = [objc_opt_class() _defaultLogSettings];
  v5 = [v3 dispatcherWithProtocol:&unk_282544990 logSettings:_defaultLogSettings];
  mediaSessionObserverDispatcher = self->_mediaSessionObserverDispatcher;
  self->_mediaSessionObserverDispatcher = v5;

  v7 = [objc_opt_class() _logSettingsWithFormatter:&__block_literal_global_551];
  [(NADelegateDispatcher *)self->_mediaSessionObserverDispatcher registerCustomLogSettings:v7 forSelector:sel_mediaSession_willUpdatePlaybackState_ argumentIndex:1];
  [(NADelegateDispatcher *)self->_mediaSessionObserverDispatcher registerCustomLogSettings:v7 forSelector:sel_mediaSession_didUpdatePlaybackState_ argumentIndex:1];
}

__CFString *__49__HFHomeKitDispatcher__setupMediaSessionObserver__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 unsignedIntegerValue];

  return NSStringFromHMMediaPlaybackState(v2);
}

- (void)_setupSofwareUpdateControllerObserver
{
  v3 = MEMORY[0x277D2C8E0];
  _defaultLogSettings = [objc_opt_class() _defaultLogSettings];
  v5 = [v3 dispatcherWithProtocol:&unk_282544EB8 logSettings:_defaultLogSettings];
  softwareUpdateControllerObserverDispatcher = self->_softwareUpdateControllerObserverDispatcher;
  self->_softwareUpdateControllerObserverDispatcher = v5;

  objc_initWeak(&location, self);
  v7 = self->_softwareUpdateControllerObserverDispatcher;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__HFHomeKitDispatcher__setupSofwareUpdateControllerObserver__block_invoke;
  v8[3] = &unk_277E02540;
  objc_copyWeak(&v9, &location);
  [(NADelegateDispatcher *)v7 registerCustomHandlerForSelector:sel_softwareUpdateController_didUpdateAvailableUpdate_ handler:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __60__HFHomeKitDispatcher__setupSofwareUpdateControllerObserver__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 objectAtIndexedSubscript:0];
  objc_opt_class();
  v9 = [v6 objectAtIndexedSubscript:1];

  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [WeakRetained softwareUpdateObserverDispatcher];
  v13 = [v12 proxy];
  [v11 setDelegate:v13];

  v14 = HFLogForCategory(0x44uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v8 hf_prettyDescription];
    v16 = [v11 hf_prettyDescription];
    v18 = 138412546;
    v19 = v15;
    v20 = 2112;
    v21 = v16;
    _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "[HFHomeKitDispatcher softwareUpdateController:]", &v18, 0x16u);
  }

  v5[2](v5);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_setupSofwareUpdateControllerV2Observer
{
  v3 = MEMORY[0x277D2C8E0];
  _defaultLogSettings = [objc_opt_class() _defaultLogSettings];
  v5 = [v3 dispatcherWithProtocol:&unk_282526A00 logSettings:_defaultLogSettings];
  softwareUpdateControllerV2ObserverDispatcher = self->_softwareUpdateControllerV2ObserverDispatcher;
  self->_softwareUpdateControllerV2ObserverDispatcher = v5;

  softwareUpdateControllerV2ObserverDispatcher = [(HFHomeKitDispatcher *)self softwareUpdateControllerV2ObserverDispatcher];
  proxy = [softwareUpdateControllerV2ObserverDispatcher proxy];
  home = [(HFHomeKitDispatcher *)self home];
  softwareUpdateController = [home softwareUpdateController];
  [softwareUpdateController setDelegate:proxy];
}

- (void)_setSoftwareUpateControllerV2DelegationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (enabled)
  {
    softwareUpdateControllerV2ObserverDispatcher = [(HFHomeKitDispatcher *)self softwareUpdateControllerV2ObserverDispatcher];
    proxy = [softwareUpdateControllerV2ObserverDispatcher proxy];
  }

  else
  {
    proxy = 0;
  }

  home = [(HFHomeKitDispatcher *)self home];
  softwareUpdateController = [home softwareUpdateController];
  [softwareUpdateController setDelegate:proxy];

  if (enabledCopy)
  {
  }

  else
  {
    softwareUpdateControllerV2ObserverDispatcher = [(HFHomeKitDispatcher *)self softwareUpdateManager];
    [softwareUpdateControllerV2ObserverDispatcher resetCaches];
  }
}

- (void)_setupSymptomFixSessionObserver
{
  v3 = MEMORY[0x277D2C8E0];
  _defaultLogSettings = [objc_opt_class() _defaultLogSettings];
  v5 = [v3 dispatcherWithProtocol:&unk_282545C98 logSettings:_defaultLogSettings];
  symptomFixSessionObserverDispatcher = self->_symptomFixSessionObserverDispatcher;
  self->_symptomFixSessionObserverDispatcher = v5;

  v7 = self->_symptomFixSessionObserverDispatcher;
  v8 = [objc_opt_class() _logSettingsWithFormatter:&__block_literal_global_572];
  [(NADelegateDispatcher *)v7 registerCustomLogSettings:v8 forSelector:sel_fixSession_didChangeState_ argumentIndex:1];
}

__CFString *__54__HFHomeKitDispatcher__setupSymptomFixSessionObserver__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 unsignedIntegerValue];

  return NSStringFromHMSymptomFixSessionState(v2);
}

- (void)_setupStateDumpHandlers
{
  objc_initWeak(&location, self);
  v2 = +[HFDebugStateDumpManager sharedInstance];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __46__HFHomeKitDispatcher__setupStateDumpHandlers__block_invoke;
  v9 = &unk_277DF2B00;
  objc_copyWeak(&v10, &location);
  v3 = [v2 registerStateDumpHandler:&v6 withName:@"HFHomeKitState"];

  v4 = [HFDebugStateDumpManager sharedInstance:v6];
  v5 = [v4 registerStateDumpHandler:&__block_literal_global_581 withName:@"ProjectVersions"];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

id __46__HFHomeKitDispatcher__setupStateDumpHandlers__block_invoke(uint64_t a1)
{
  v2 = [(HFStateDumpBuilderContext *)HFMutableStateDumpBuilderContext contextWithDetailLevel:2];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained homeManager];
  v5 = [v4 hf_stateDumpBuilderWithContext:v2];
  v6 = [v5 buildPropertyListRepresentation];

  return v6;
}

id __46__HFHomeKitDispatcher__setupStateDumpHandlers__block_invoke_2()
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (+[HFUtilities isProxHandOffV2Config])
  {
    v0 = 0;
    v1 = 0;
  }

  else
  {
    v2 = +[HFHomeAppInstallStateArbiter sharedInstance];
    v1 = [v2 homeAppBundleURL];

    if (v1)
    {
      v0 = [MEMORY[0x277CCA8D8] bundleWithURL:v1];
    }

    else
    {
      v0 = 0;
    }
  }

  v9[0] = @"Home.framework";
  v3 = HFHomeBundle();
  v4 = __46__HFHomeKitDispatcher__setupStateDumpHandlers__block_invoke_3(v3);
  v9[1] = @"Home.app";
  v10[0] = v4;
  v5 = __46__HFHomeKitDispatcher__setupStateDumpHandlers__block_invoke_3(v0);
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

__CFString *__46__HFHomeKitDispatcher__setupStateDumpHandlers__block_invoke_3(void *a1)
{
  if (a1)
  {
    v1 = [a1 infoDictionary];
    v2 = [v1 objectForKeyedSubscript:*MEMORY[0x277CBED58]];
    v3 = v2;
    v4 = @"(Unknown)";
    if (v2)
    {
      v4 = v2;
    }

    v5 = v4;
  }

  else
  {
    v5 = @"(Bundle not found)";
  }

  return v5;
}

- (void)_createHomeManagerIfNecessary
{
  homeManager = [(HFHomeKitDispatcher *)self homeManager];

  if (!homeManager)
  {
    homeManagerCreator = [(HFHomeKitDispatcher *)self homeManagerCreator];
    canCreateHomeManager = [homeManagerCreator canCreateHomeManager];

    if (canCreateHomeManager)
    {
      homeManagerCreator2 = [(HFHomeKitDispatcher *)self homeManagerCreator];
      createHomeManagerIfNeeded = [homeManagerCreator2 createHomeManagerIfNeeded];

      if (createHomeManagerIfNeeded)
      {
        [(HFHomeKitDispatcher *)self setHomeManagerAndUpdateDelegate:createHomeManagerIfNeeded];
        v8 = HFLogForCategory(0x27uLL);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Home Manager created inline", buf, 2u);
        }
      }
    }

    else
    {
      v9 = HFLogForCategory(0x27uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Not creating home manager, refusing to accept any home futures until one is set.", v10, 2u);
      }

      [(HFHomeKitDispatcher *)self setWillAcceptHomeFutures:0];
    }

    [(HFHomeKitDispatcher *)self setWillAcceptHomeFutures:canCreateHomeManager];
  }
}

- (void)setHomeManagerAndUpdateDelegate:(id)delegate
{
  v16 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v6 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = delegateCopy;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Setting home manager to %@ and awaiting home update", &v14, 0xCu);
  }

  self->_hasLoadedHomes = 0;
  home = self->_home;
  self->_home = 0;

  overrideHome = self->_overrideHome;
  self->_overrideHome = 0;

  selectedHome = self->_selectedHome;
  self->_selectedHome = 0;

  objc_storeStrong(&self->_homeManager, delegate);
  self->_willAcceptHomeFutures = delegateCopy != 0;
  if ([objc_opt_class() synchronizesHomeDataModel])
  {
    mEMORY[0x277D16F78] = [MEMORY[0x277D16F78] shared];
    [mEMORY[0x277D16F78] setHomeManager:delegateCopy];

    [(HFHomeKitDispatcher *)self configureHomeStateStreamWithHomeManager:delegateCopy];
  }

  homeManagerObserverDispatcher = [(HFHomeKitDispatcher *)self homeManagerObserverDispatcher];
  proxy = [homeManagerObserverDispatcher proxy];
  [(HMHomeManager *)self->_homeManager setDelegate:proxy];

  if (!delegateCopy)
  {
    [(HFHomeKitDispatcher *)self _initializeObservers];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateHomeManagerConfiguration:(id)configuration
{
  v16 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = +[HFHomeKitDispatcher configuration];
  options = [v5 options];
  options2 = [configurationCopy options];

  if (options != options2)
  {
    v8 = HFLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      [configurationCopy options];
      v9 = HMHomeManagerOptionsToString();
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Updating Home Manager configuration with options [%@]", &v14, 0xCu);
    }

    [HFHomeKitDispatcher setConfiguration:configurationCopy];
    homeManagerCreator = [(HFHomeKitDispatcher *)self homeManagerCreator];
    [homeManagerCreator setConfiguration:configurationCopy];

    homeManagerCreator2 = [(HFHomeKitDispatcher *)self homeManagerCreator];
    createHomeManagerIfNeeded = [homeManagerCreator2 createHomeManagerIfNeeded];

    if (createHomeManagerIfNeeded)
    {
      [(HFHomeKitDispatcher *)self setHomeManagerAndUpdateDelegate:createHomeManagerIfNeeded];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)homeManagerWasCreated:(id)created
{
  [(HFHomeKitDispatcher *)self setHomeManagerAndUpdateDelegate:created];
  v4 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Home Manager created on delegate callback", v7, 2u);
  }

  if (self->_homeManager)
  {
    v5 = [[HFHomeKitAccessorySettingsDataSource alloc] initWithHomeManager:self->_homeManager];
    accessorySettingsDataSource = self->_accessorySettingsDataSource;
    self->_accessorySettingsDataSource = v5;
  }
}

- (void)addHomeManagerObserver:(id)observer
{
  observerCopy = observer;
  homeManagerObserverDispatcher = [(HFHomeKitDispatcher *)self homeManagerObserverDispatcher];
  [homeManagerObserverDispatcher addObserver:observerCopy];
}

- (void)removeHomeManagerObserver:(id)observer
{
  observerCopy = observer;
  homeManagerObserverDispatcher = [(HFHomeKitDispatcher *)self homeManagerObserverDispatcher];
  [homeManagerObserverDispatcher removeObserver:observerCopy];
}

- (void)addHomeObserver:(id)observer
{
  observerCopy = observer;
  homeObserverDispatcher = [(HFHomeKitDispatcher *)self homeObserverDispatcher];
  [homeObserverDispatcher addObserver:observerCopy];
}

- (void)removeHomeObserver:(id)observer
{
  observerCopy = observer;
  homeObserverDispatcher = [(HFHomeKitDispatcher *)self homeObserverDispatcher];
  [homeObserverDispatcher removeObserver:observerCopy];
}

- (void)addAccessoryObserver:(id)observer
{
  observerCopy = observer;
  accessoryObserverDispatcher = [(HFHomeKitDispatcher *)self accessoryObserverDispatcher];
  [accessoryObserverDispatcher addObserver:observerCopy];
}

- (void)removeAccessoryObserver:(id)observer
{
  observerCopy = observer;
  accessoryObserverDispatcher = [(HFHomeKitDispatcher *)self accessoryObserverDispatcher];
  [accessoryObserverDispatcher removeObserver:observerCopy];
}

- (void)addResidentDeviceObserver:(id)observer
{
  observerCopy = observer;
  residentDeviceObserverDispatcher = [(HFHomeKitDispatcher *)self residentDeviceObserverDispatcher];
  [residentDeviceObserverDispatcher addObserver:observerCopy];
}

- (void)removeResidentDeviceObserver:(id)observer
{
  observerCopy = observer;
  residentDeviceObserverDispatcher = [(HFHomeKitDispatcher *)self residentDeviceObserverDispatcher];
  [residentDeviceObserverDispatcher removeObserver:observerCopy];
}

- (void)addCameraObserver:(id)observer
{
  observerCopy = observer;
  cameraObserverDispatcher = [(HFHomeKitDispatcher *)self cameraObserverDispatcher];
  [cameraObserverDispatcher addObserver:observerCopy];
}

- (void)removeCameraObserver:(id)observer
{
  observerCopy = observer;
  cameraObserverDispatcher = [(HFHomeKitDispatcher *)self cameraObserverDispatcher];
  [cameraObserverDispatcher removeObserver:observerCopy];
}

- (void)addMediaObjectObserver:(id)observer
{
  observerCopy = observer;
  mediaObjectObserverDispatcher = [(HFHomeKitDispatcher *)self mediaObjectObserverDispatcher];
  [mediaObjectObserverDispatcher addObserver:observerCopy];
}

- (void)removeMediaObjectObserver:(id)observer
{
  observerCopy = observer;
  mediaObjectObserverDispatcher = [(HFHomeKitDispatcher *)self mediaObjectObserverDispatcher];
  [mediaObjectObserverDispatcher removeObserver:observerCopy];
}

- (void)addMediaProfileObserver:(id)observer
{
  v11 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v6 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a2);
    v9 = 138412290;
    v10 = v8;
    _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "This selector, %@, has been deprecated! Please move to addMediaObjectObserver: and move to HFMediaObjectObserver away from HFMediaProfileObserver!", &v9, 0xCu);
  }

  [(HFHomeKitDispatcher *)self addMediaObjectObserver:observerCopy];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeMediaProfileObserver:(id)observer
{
  v11 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v6 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a2);
    v9 = 138412290;
    v10 = v8;
    _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "This selector, %@, has been deprecated! Please move to removeMediaObjectObserver: and move to HFMediaObjectObserver away from HFMediaProfileObserver!", &v9, 0xCu);
  }

  [(HFHomeKitDispatcher *)self removeMediaObjectObserver:observerCopy];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)addMediaSessionObserver:(id)observer
{
  observerCopy = observer;
  mediaSessionObserverDispatcher = [(HFHomeKitDispatcher *)self mediaSessionObserverDispatcher];
  [mediaSessionObserverDispatcher addObserver:observerCopy];
}

- (void)removeMediaSessionObserver:(id)observer
{
  observerCopy = observer;
  mediaSessionObserverDispatcher = [(HFHomeKitDispatcher *)self mediaSessionObserverDispatcher];
  [mediaSessionObserverDispatcher removeObserver:observerCopy];
}

- (void)addSiriEndpointProfileObserver:(id)observer
{
  observerCopy = observer;
  siriEndpointProfileObserverDispatcher = [(HFHomeKitDispatcher *)self siriEndpointProfileObserverDispatcher];
  [siriEndpointProfileObserverDispatcher addObserver:observerCopy];
}

- (void)removeSiriEndpointProfileObserver:(id)observer
{
  observerCopy = observer;
  siriEndpointProfileObserverDispatcher = [(HFHomeKitDispatcher *)self siriEndpointProfileObserverDispatcher];
  [siriEndpointProfileObserverDispatcher removeObserver:observerCopy];
}

- (void)addAudioControlObserver:(id)observer
{
  observerCopy = observer;
  audioControlObserverDispatcher = [(HFHomeKitDispatcher *)self audioControlObserverDispatcher];
  [audioControlObserverDispatcher addObserver:observerCopy];
}

- (void)removeAudioControlObserver:(id)observer
{
  observerCopy = observer;
  audioControlObserverDispatcher = [(HFHomeKitDispatcher *)self audioControlObserverDispatcher];
  [audioControlObserverDispatcher removeObserver:observerCopy];
}

- (void)addHomeKitSettingsObserver:(id)observer
{
  observerCopy = observer;
  homeKitSettingsObserverDispatcher = [(HFHomeKitDispatcher *)self homeKitSettingsObserverDispatcher];
  [homeKitSettingsObserverDispatcher addObserver:observerCopy];
}

- (void)removeHomeKitSettingsObserver:(id)observer
{
  observerCopy = observer;
  homeKitSettingsObserverDispatcher = [(HFHomeKitDispatcher *)self homeKitSettingsObserverDispatcher];
  [homeKitSettingsObserverDispatcher removeObserver:observerCopy];
}

- (void)addNetworkConfigurationObserver:(id)observer
{
  observerCopy = observer;
  networkConfigurationObserverDispatcher = [(HFHomeKitDispatcher *)self networkConfigurationObserverDispatcher];
  [networkConfigurationObserverDispatcher addObserver:observerCopy];
}

- (void)removeNetworkConfigurationObserver:(id)observer
{
  observerCopy = observer;
  networkConfigurationObserverDispatcher = [(HFHomeKitDispatcher *)self networkConfigurationObserverDispatcher];
  [networkConfigurationObserverDispatcher removeObserver:observerCopy];
}

- (void)addSymptomFixSessionObserver:(id)observer
{
  observerCopy = observer;
  symptomFixSessionObserverDispatcher = [(HFHomeKitDispatcher *)self symptomFixSessionObserverDispatcher];
  [symptomFixSessionObserverDispatcher addObserver:observerCopy];
}

- (void)removeSymptomFixSessionObserver:(id)observer
{
  observerCopy = observer;
  symptomFixSessionObserverDispatcher = [(HFHomeKitDispatcher *)self symptomFixSessionObserverDispatcher];
  [symptomFixSessionObserverDispatcher removeObserver:observerCopy];
}

- (void)addSoftwareUpdateControllerObserver:(id)observer
{
  observerCopy = observer;
  softwareUpdateControllerObserverDispatcher = [(HFHomeKitDispatcher *)self softwareUpdateControllerObserverDispatcher];
  [softwareUpdateControllerObserverDispatcher addObserver:observerCopy];
}

- (void)removeSoftwareUpdateControllerObserver:(id)observer
{
  observerCopy = observer;
  softwareUpdateControllerObserverDispatcher = [(HFHomeKitDispatcher *)self softwareUpdateControllerObserverDispatcher];
  [softwareUpdateControllerObserverDispatcher removeObserver:observerCopy];
}

- (void)addSoftwareUpdateObserver:(id)observer
{
  observerCopy = observer;
  softwareUpdateObserverDispatcher = [(HFHomeKitDispatcher *)self softwareUpdateObserverDispatcher];
  [softwareUpdateObserverDispatcher addObserver:observerCopy];
}

- (void)removeSoftwareUpdateObserver:(id)observer
{
  observerCopy = observer;
  softwareUpdateObserverDispatcher = [(HFHomeKitDispatcher *)self softwareUpdateObserverDispatcher];
  [softwareUpdateObserverDispatcher removeObserver:observerCopy];
}

- (void)addSoftwareUpdateControllerV2Observer:(id)observer
{
  observerCopy = observer;
  softwareUpdateControllerV2ObserverDispatcher = [(HFHomeKitDispatcher *)self softwareUpdateControllerV2ObserverDispatcher];
  [softwareUpdateControllerV2ObserverDispatcher addObserver:observerCopy];
}

- (void)removeSoftwareUpdateControllerV2Observer:(id)observer
{
  observerCopy = observer;
  softwareUpdateControllerV2ObserverDispatcher = [(HFHomeKitDispatcher *)self softwareUpdateControllerV2ObserverDispatcher];
  [softwareUpdateControllerV2ObserverDispatcher removeObserver:observerCopy];
}

- (void)addUserObserver:(id)observer
{
  observerCopy = observer;
  userObserverDispatcher = [(HFHomeKitDispatcher *)self userObserverDispatcher];
  [userObserverDispatcher addObserver:observerCopy];
}

- (void)removeUserObserver:(id)observer
{
  observerCopy = observer;
  userObserverDispatcher = [(HFHomeKitDispatcher *)self userObserverDispatcher];
  [userObserverDispatcher removeObserver:observerCopy];
}

- (void)addSymptomsHandlerObserver:(id)observer
{
  observerCopy = observer;
  symptomsHandlerObserverDispatcher = [(HFHomeKitDispatcher *)self symptomsHandlerObserverDispatcher];
  [symptomsHandlerObserverDispatcher addObserver:observerCopy];
}

- (void)removeSymptomsHandlerObserver:(id)observer
{
  observerCopy = observer;
  symptomsHandlerObserverDispatcher = [(HFHomeKitDispatcher *)self symptomsHandlerObserverDispatcher];
  [symptomsHandlerObserverDispatcher removeObserver:observerCopy];
}

- (void)addTelevisionObserver:(id)observer
{
  observerCopy = observer;
  televisionObserverDispatcher = [(HFHomeKitDispatcher *)self televisionObserverDispatcher];
  [televisionObserverDispatcher addObserver:observerCopy];
}

- (void)removeTelevisionObserver:(id)observer
{
  observerCopy = observer;
  televisionObserverDispatcher = [(HFHomeKitDispatcher *)self televisionObserverDispatcher];
  [televisionObserverDispatcher removeObserver:observerCopy];
}

- (void)addHomePersonManagerObserver:(id)observer
{
  observerCopy = observer;
  homePersonManagerDispatcher = [(HFHomeKitDispatcher *)self homePersonManagerDispatcher];
  [homePersonManagerDispatcher addObserver:observerCopy];
}

- (void)removeHomePersonManagerObserver:(id)observer
{
  observerCopy = observer;
  homePersonManagerDispatcher = [(HFHomeKitDispatcher *)self homePersonManagerDispatcher];
  [homePersonManagerDispatcher removeObserver:observerCopy];
}

- (void)addMediaDestinationControllerObserver:(id)observer
{
  observerCopy = observer;
  mediaDestinationControllerObserverDispatcher = [(HFHomeKitDispatcher *)self mediaDestinationControllerObserverDispatcher];
  [mediaDestinationControllerObserverDispatcher addObserver:observerCopy];
}

- (void)removeMediaDestinationControllerObserver:(id)observer
{
  observerCopy = observer;
  mediaDestinationControllerObserverDispatcher = [(HFHomeKitDispatcher *)self mediaDestinationControllerObserverDispatcher];
  [mediaDestinationControllerObserverDispatcher removeObserver:observerCopy];
}

- (void)addLightObserver:(id)observer
{
  observerCopy = observer;
  lightObserverDispatcher = [(HFHomeKitDispatcher *)self lightObserverDispatcher];
  [lightObserverDispatcher addObserver:observerCopy];
}

- (void)removeLightObserver:(id)observer
{
  observerCopy = observer;
  lightObserverDispatcher = [(HFHomeKitDispatcher *)self lightObserverDispatcher];
  [lightObserverDispatcher removeObserver:observerCopy];
}

- (void)addWalletKeyDeviceStateObserver:(id)observer
{
  observerCopy = observer;
  walletKeyDeviceStateObserverDispatcher = [(HFHomeKitDispatcher *)self walletKeyDeviceStateObserverDispatcher];
  [walletKeyDeviceStateObserverDispatcher addObserver:observerCopy];
}

- (void)removeWalletKeyDeviceStateObserver:(id)observer
{
  observerCopy = observer;
  walletKeyDeviceStateObserverDispatcher = [(HFHomeKitDispatcher *)self walletKeyDeviceStateObserverDispatcher];
  [walletKeyDeviceStateObserverDispatcher removeObserver:observerCopy];
}

- (void)addDiagnosticInfoObserver:(id)observer
{
  observerCopy = observer;
  diagnosticInfoManager = [(HFHomeKitDispatcher *)self diagnosticInfoManager];
  [diagnosticInfoManager addObserver:observerCopy];
}

- (void)removeDiagnosticInfoObserver:(id)observer
{
  observerCopy = observer;
  diagnosticInfoManager = [(HFHomeKitDispatcher *)self diagnosticInfoManager];
  [diagnosticInfoManager removeObserver:observerCopy];
}

- (void)dispatchHomeManagerObserverMessage:(id)message sender:(id)sender
{
  senderCopy = sender;
  messageCopy = message;
  homeManagerObserverDispatcher = [(HFHomeKitDispatcher *)self homeManagerObserverDispatcher];
  [homeManagerObserverDispatcher dispatchMessageExcludingSender:senderCopy usingBlock:messageCopy];
}

- (void)dispatchHomeObserverMessage:(id)message sender:(id)sender
{
  senderCopy = sender;
  messageCopy = message;
  homeObserverDispatcher = [(HFHomeKitDispatcher *)self homeObserverDispatcher];
  [homeObserverDispatcher dispatchMessageExcludingSender:senderCopy usingBlock:messageCopy];
}

- (void)dispatchAccessoryObserverMessage:(id)message sender:(id)sender
{
  senderCopy = sender;
  messageCopy = message;
  accessoryObserverDispatcher = [(HFHomeKitDispatcher *)self accessoryObserverDispatcher];
  [accessoryObserverDispatcher dispatchMessageExcludingSender:senderCopy usingBlock:messageCopy];
}

- (void)dispatchCameraObserverMessage:(id)message sender:(id)sender
{
  senderCopy = sender;
  messageCopy = message;
  cameraObserverDispatcher = [(HFHomeKitDispatcher *)self cameraObserverDispatcher];
  [cameraObserverDispatcher dispatchMessageExcludingSender:senderCopy usingBlock:messageCopy];
}

- (void)dispatchMediaSessionObserverMessage:(id)message sender:(id)sender
{
  senderCopy = sender;
  messageCopy = message;
  mediaSessionObserverDispatcher = [(HFHomeKitDispatcher *)self mediaSessionObserverDispatcher];
  [mediaSessionObserverDispatcher dispatchMessageExcludingSender:senderCopy usingBlock:messageCopy];
}

- (void)dispatchAudioControlObserverMessage:(id)message sender:(id)sender
{
  senderCopy = sender;
  messageCopy = message;
  audioControlObserverDispatcher = [(HFHomeKitDispatcher *)self audioControlObserverDispatcher];
  [audioControlObserverDispatcher dispatchMessageExcludingSender:senderCopy usingBlock:messageCopy];
}

- (void)dispatchMediaObjectObserverMessage:(id)message sender:(id)sender
{
  senderCopy = sender;
  messageCopy = message;
  mediaObjectObserverDispatcher = [(HFHomeKitDispatcher *)self mediaObjectObserverDispatcher];
  [mediaObjectObserverDispatcher dispatchMessageExcludingSender:senderCopy usingBlock:messageCopy];
}

- (void)dispatchHomeKitSettingMessage:(id)message sender:(id)sender
{
  senderCopy = sender;
  messageCopy = message;
  homeKitSettingsObserverDispatcher = [(HFHomeKitDispatcher *)self homeKitSettingsObserverDispatcher];
  [homeKitSettingsObserverDispatcher dispatchMessageExcludingSender:senderCopy usingBlock:messageCopy];
}

- (void)dispatchSiriEndpointObserverMessage:(id)message sender:(id)sender
{
  senderCopy = sender;
  messageCopy = message;
  siriEndpointProfileObserverDispatcher = [(HFHomeKitDispatcher *)self siriEndpointProfileObserverDispatcher];
  [siriEndpointProfileObserverDispatcher dispatchMessageExcludingSender:senderCopy usingBlock:messageCopy];
}

- (void)dispatchSymptomFixSessionObserverMessage:(id)message sender:(id)sender
{
  senderCopy = sender;
  messageCopy = message;
  symptomFixSessionObserverDispatcher = [(HFHomeKitDispatcher *)self symptomFixSessionObserverDispatcher];
  [symptomFixSessionObserverDispatcher dispatchMessageExcludingSender:senderCopy usingBlock:messageCopy];
}

- (void)dispatchSoftwareUpdateControllerMessage:(id)message sender:(id)sender
{
  senderCopy = sender;
  messageCopy = message;
  softwareUpdateControllerObserverDispatcher = [(HFHomeKitDispatcher *)self softwareUpdateControllerObserverDispatcher];
  [softwareUpdateControllerObserverDispatcher dispatchMessageExcludingSender:senderCopy usingBlock:messageCopy];
}

- (void)dispatchSoftwareUpdateMessage:(id)message sender:(id)sender
{
  senderCopy = sender;
  messageCopy = message;
  softwareUpdateObserverDispatcher = [(HFHomeKitDispatcher *)self softwareUpdateObserverDispatcher];
  [softwareUpdateObserverDispatcher dispatchMessageExcludingSender:senderCopy usingBlock:messageCopy];
}

- (void)dispatchSymptomsHandlerMessage:(id)message sender:(id)sender
{
  senderCopy = sender;
  messageCopy = message;
  symptomsHandlerObserverDispatcher = [(HFHomeKitDispatcher *)self symptomsHandlerObserverDispatcher];
  [symptomsHandlerObserverDispatcher dispatchMessageExcludingSender:senderCopy usingBlock:messageCopy];
}

- (void)dispatchUserObserverMessage:(id)message sender:(id)sender
{
  senderCopy = sender;
  messageCopy = message;
  userObserverDispatcher = [(HFHomeKitDispatcher *)self userObserverDispatcher];
  [userObserverDispatcher dispatchMessageExcludingSender:senderCopy usingBlock:messageCopy];
}

- (void)dispatchTelevisionObserverMessage:(id)message sender:(id)sender
{
  senderCopy = sender;
  messageCopy = message;
  televisionObserverDispatcher = [(HFHomeKitDispatcher *)self televisionObserverDispatcher];
  [televisionObserverDispatcher dispatchMessageExcludingSender:senderCopy usingBlock:messageCopy];
}

- (void)dispatchLightObserverMessage:(id)message sender:(id)sender
{
  senderCopy = sender;
  messageCopy = message;
  lightObserverDispatcher = [(HFHomeKitDispatcher *)self lightObserverDispatcher];
  [lightObserverDispatcher dispatchMessageExcludingSender:senderCopy usingBlock:messageCopy];
}

- (void)dispatchWalletKeyDeviceStateObserverMessage:(id)message sender:(id)sender
{
  senderCopy = sender;
  messageCopy = message;
  walletKeyDeviceStateObserverDispatcher = [(HFHomeKitDispatcher *)self walletKeyDeviceStateObserverDispatcher];
  [walletKeyDeviceStateObserverDispatcher dispatchMessageExcludingSender:senderCopy usingBlock:messageCopy];
}

- (void)dispatchHomeKitSettingsObserverMessage:(id)message sender:(id)sender
{
  senderCopy = sender;
  messageCopy = message;
  homeKitSettingsObserverDispatcher = [(HFHomeKitDispatcher *)self homeKitSettingsObserverDispatcher];
  [homeKitSettingsObserverDispatcher dispatchMessageExcludingSender:senderCopy usingBlock:messageCopy];
}

- (void)dispatchNetworkConfigurationObserverMessage:(id)message sender:(id)sender
{
  senderCopy = sender;
  messageCopy = message;
  networkConfigurationObserverDispatcher = [(HFHomeKitDispatcher *)self networkConfigurationObserverDispatcher];
  [networkConfigurationObserverDispatcher dispatchMessageExcludingSender:senderCopy usingBlock:messageCopy];
}

- (void)dispatchHomePersonManagerObserverMessage:(id)message sender:(id)sender
{
  senderCopy = sender;
  messageCopy = message;
  homePersonManagerDispatcher = [(HFHomeKitDispatcher *)self homePersonManagerDispatcher];
  [homePersonManagerDispatcher dispatchMessageExcludingSender:senderCopy usingBlock:messageCopy];
}

- (void)dispatchMediaDestinationControllerObserverMessage:(id)message sender:(id)sender
{
  senderCopy = sender;
  messageCopy = message;
  mediaDestinationControllerObserverDispatcher = [(HFHomeKitDispatcher *)self mediaDestinationControllerObserverDispatcher];
  [mediaDestinationControllerObserverDispatcher dispatchMessageExcludingSender:senderCopy usingBlock:messageCopy];
}

- (void)updateHome
{
  v31 = *MEMORY[0x277D85DE8];
  overrideHome = [(HFHomeKitDispatcher *)self overrideHome];
  v4 = overrideHome;
  if (overrideHome)
  {
    selectedHome = overrideHome;
  }

  else
  {
    selectedHome = [(HFHomeKitDispatcher *)self selectedHome];
  }

  v6 = selectedHome;

  home = [(HFHomeKitDispatcher *)self home];
  uniqueIdentifier = [home uniqueIdentifier];
  uniqueIdentifier2 = [v6 uniqueIdentifier];
  v10 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  if ((v10 & 1) == 0)
  {
    [(HFHomeKitDispatcher *)self _setDelegationEnabledForObjectsInCurrentHome:0];
    v11 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412546;
      v28 = v6;
      v29 = 1024;
      synchronizesHomeDataModel = [objc_opt_class() synchronizesHomeDataModel];
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Updating dispatcher home to %@. synchronizesHomeDataModel is %{BOOL}d", &v27, 0x12u);
    }

    [(HFHomeKitDispatcher *)self setHome:v6];
    [(HFHomeKitDispatcher *)self _setDelegationEnabledForObjectsInCurrentHome:1];
    home2 = [(HFHomeKitDispatcher *)self home];

    if (home2)
    {
      firstHomeAddedPromises = [(HFHomeKitDispatcher *)self firstHomeAddedPromises];
      [(HFHomeKitDispatcher *)self _finishFirstHomeAddedPromises:firstHomeAddedPromises];

      firstHomeAddedPromises2 = [(HFHomeKitDispatcher *)self firstHomeAddedPromises];
      [firstHomeAddedPromises2 removeAllObjects];
    }

    if ([(HFHomeKitDispatcher *)self hasLoadedHomes])
    {
      homeManagerObserverDispatcher = [(HFHomeKitDispatcher *)self homeManagerObserverDispatcher];
      proxy = [homeManagerObserverDispatcher proxy];
      homeManager = [(HFHomeKitDispatcher *)self homeManager];
      home3 = [(HFHomeKitDispatcher *)self home];
      [proxy homeKitDispatcher:self manager:homeManager didChangeHome:home3];
    }

    v19 = MEMORY[0x277CBEB98];
    home4 = [(HFHomeKitDispatcher *)self home];
    hf_allLightProfiles = [home4 hf_allLightProfiles];
    v22 = [v19 setWithArray:hf_allLightProfiles];

    [(HFHomeKitDispatcher *)self fetchSettingsForLightProfiles:v22];
  }

  if ([objc_opt_class() synchronizesHomeDataModel])
  {
    home5 = [(HFHomeKitDispatcher *)self home];
    mEMORY[0x277D16F78] = [MEMORY[0x277D16F78] shared];
    [mEMORY[0x277D16F78] setCurrentHome:home5];

    home6 = [(HFHomeKitDispatcher *)self home];
    [(HFHomeKitDispatcher *)self configureHomeStateStreamWithHome:home6];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)setSelectedHome:(id)home userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  v21 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  uniqueIdentifier = [(HMHome *)self->_selectedHome uniqueIdentifier];
  [(HFHomeKitDispatcher *)self _requestSelectedHome:homeCopy];
  if (initiatedCopy)
  {
    if ([(HFHomeKitDispatcher *)self _shouldPersistSelectedHomeToDefaults])
    {
      uniqueIdentifier2 = [(HMHome *)self->_selectedHome uniqueIdentifier];
      v9 = [uniqueIdentifier isEqual:uniqueIdentifier2];

      if ((v9 & 1) == 0)
      {
        v10 = +[HFStateRestorationSettings sharedInstance];
        [v10 syncToNanoPrefs];

        v11 = HFLogForCategory(0x2DuLL);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          name = [(HMHome *)self->_selectedHome name];
          uniqueIdentifier3 = [(HMHome *)self->_selectedHome uniqueIdentifier];
          uUIDString = [uniqueIdentifier3 UUIDString];
          v17 = 138478083;
          v18 = name;
          v19 = 2114;
          v20 = uUIDString;
          _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "User initiated change to home: %{private}@ %{public}@", &v17, 0x16u);
        }

        notify_post(HFHomeSelectedHomeChangedNotification);
        if ([objc_opt_class() synchronizesHomeDataModel])
        {
          mEMORY[0x277D16F78] = [MEMORY[0x277D16F78] shared];
          [mEMORY[0x277D16F78] setCurrentHome:homeCopy];

          [(HFHomeKitDispatcher *)self configureHomeStateStreamWithHome:homeCopy];
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)setSelectedHomeWithName:(id)name
{
  nameCopy = name;
  homeManager = [(HFHomeKitDispatcher *)self homeManager];
  homes = [homeManager homes];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__HFHomeKitDispatcher_setSelectedHomeWithName___block_invoke;
  v10[3] = &unk_277DF5E78;
  v11 = nameCopy;
  v7 = nameCopy;
  v8 = [homes na_firstObjectPassingTest:v10];

  if (v8)
  {
    [(HFHomeKitDispatcher *)self setSelectedHome:v8 userInitiated:0];
  }

  return v8 != 0;
}

uint64_t __47__HFHomeKitDispatcher_setSelectedHomeWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_requestSelectedHome:(id)home
{
  v46 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [(HMHome *)homeCopy name];
    uniqueIdentifier = [(HMHome *)homeCopy uniqueIdentifier];
    v42 = 138478083;
    v43 = name;
    v44 = 2114;
    v45 = uniqueIdentifier;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "_requestSelectedHome %{private}@ %{public}@", &v42, 0x16u);
  }

  homeManager = [(HFHomeKitDispatcher *)self homeManager];
  currentAccessory = [homeManager currentAccessory];

  home2 = homeCopy;
  if (currentAccessory)
  {
    homeManager2 = [(HFHomeKitDispatcher *)self homeManager];
    currentAccessory2 = [homeManager2 currentAccessory];
    home = [currentAccessory2 home];

    if (home != homeCopy)
    {
      v14 = HFLogForCategory(0x27uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        name2 = [(HMHome *)homeCopy name];
        uniqueIdentifier2 = [(HMHome *)homeCopy uniqueIdentifier];
        v42 = 138478083;
        v43 = name2;
        v44 = 2114;
        v45 = uniqueIdentifier2;
        _os_log_error_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_ERROR, "Current accessory set, Ignoring requested home - %{private}@ %{public}@", &v42, 0x16u);
      }
    }

    homeManager3 = [(HFHomeKitDispatcher *)self homeManager];
    currentAccessory3 = [homeManager3 currentAccessory];
    home2 = [currentAccessory3 home];

    v17 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      name3 = [(HMHome *)homeCopy name];
      uniqueIdentifier3 = [(HMHome *)homeCopy uniqueIdentifier];
      v42 = 138478083;
      v43 = name3;
      v44 = 2114;
      v45 = uniqueIdentifier3;
      _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "Selected home defaulting to currentAccessory Home - %{private}@ %{public}@", &v42, 0x16u);
    }
  }

  if (!home2)
  {
    home2 = [(HFHomeKitDispatcher *)self _primaryHome];
    v20 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      name4 = [(HMHome *)homeCopy name];
      uniqueIdentifier4 = [(HMHome *)homeCopy uniqueIdentifier];
      v42 = 138478083;
      v43 = name4;
      v44 = 2114;
      v45 = uniqueIdentifier4;
      _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "Selected home not specified - using primary home %{private}@ %{public}@", &v42, 0x16u);
    }

    if (!home2)
    {
      homeManager4 = [(HFHomeKitDispatcher *)self homeManager];
      homes = [homeManager4 homes];
      home2 = [homes firstObject];

      v25 = HFLogForCategory(0x27uLL);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        name5 = [(HMHome *)homeCopy name];
        uniqueIdentifier5 = [(HMHome *)homeCopy uniqueIdentifier];
        v42 = 138478083;
        v43 = name5;
        v44 = 2114;
        v45 = uniqueIdentifier5;
        _os_log_impl(&dword_20D9BF000, v25, OS_LOG_TYPE_DEFAULT, "Primary home not specified - using first home %{private}@ %{public}@", &v42, 0x16u);
      }
    }
  }

  if (home2 != self->_selectedHome)
  {
    uniqueIdentifier6 = [(HMHome *)home2 uniqueIdentifier];
    uniqueIdentifier7 = [(HMHome *)self->_selectedHome uniqueIdentifier];
    v30 = [uniqueIdentifier6 isEqual:uniqueIdentifier7];

    if ((v30 & 1) == 0)
    {
      v31 = HFLogForCategory(0x27uLL);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        name6 = [(HMHome *)home2 name];
        uniqueIdentifier8 = [(HMHome *)home2 uniqueIdentifier];
        v42 = 138478083;
        v43 = name6;
        v44 = 2114;
        v45 = uniqueIdentifier8;
        _os_log_impl(&dword_20D9BF000, v31, OS_LOG_TYPE_DEFAULT, "Selected home is now %{private}@ %{public}@", &v42, 0x16u);
      }

      objc_storeStrong(&self->_selectedHome, home2);
      if ([(HFHomeKitDispatcher *)self _shouldPersistSelectedHomeToDefaults]&& !+[HFUtilities isInternalTest])
      {
        v34 = HFLogForCategory(0x27uLL);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          name7 = [(HMHome *)home2 name];
          uniqueIdentifier9 = [(HMHome *)home2 uniqueIdentifier];
          v42 = 138478083;
          v43 = name7;
          v44 = 2114;
          v45 = uniqueIdentifier9;
          _os_log_impl(&dword_20D9BF000, v34, OS_LOG_TYPE_DEFAULT, "Notifying local clients of selected home change and saving to preferences %{private}@ %{public}@", &v42, 0x16u);
        }

        uniqueIdentifier10 = [(HMHome *)home2 uniqueIdentifier];
        v38 = +[HFStateRestorationSettings sharedInstance];
        [v38 setSelectedHomeIdentifier:uniqueIdentifier10];
      }

      [(HFHomeKitDispatcher *)self updateHome];
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)setOverrideHome:(id)home
{
  v10 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = homeCopy;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Override home is now %@", &v8, 0xCu);
  }

  overrideHome = self->_overrideHome;
  self->_overrideHome = homeCopy;

  [(HFHomeKitDispatcher *)self updateHome];
  v7 = *MEMORY[0x277D85DE8];
}

- (NAFuture)homeFuture
{
  v10[1] = *MEMORY[0x277D85DE8];
  if ([(HFHomeKitDispatcher *)self willAcceptHomeFutures])
  {
    if ([(HFHomeKitDispatcher *)self hasLoadedHomes]|| ([(HFHomeKitDispatcher *)self home], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
    {
      v4 = objc_alloc_init(MEMORY[0x277D2C918]);
      v10[0] = v4;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
      [(HFHomeKitDispatcher *)self _finishHomePromises:v5];
    }

    else
    {
      v4 = objc_alloc_init(MEMORY[0x277D2C918]);
      homePromises = [(HFHomeKitDispatcher *)self homePromises];
      [homePromises addObject:v4];
    }

    future = [v4 future];
  }

  else
  {
    future = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return future;
}

- (NAFuture)firstHomeAddedFuture
{
  v11[1] = *MEMORY[0x277D85DE8];
  if ([(HFHomeKitDispatcher *)self willAcceptHomeFutures])
  {
    home = [(HFHomeKitDispatcher *)self home];

    v4 = objc_alloc_init(MEMORY[0x277D2C918]);
    v5 = v4;
    if (home)
    {
      v11[0] = v4;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
      [(HFHomeKitDispatcher *)self _finishFirstHomeAddedPromises:v6];
    }

    else
    {
      firstHomeAddedPromises = [(HFHomeKitDispatcher *)self firstHomeAddedPromises];
      [firstHomeAddedPromises addObject:v5];
    }

    future = [v5 future];
  }

  else
  {
    future = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return future;
}

- (NAFuture)allHomesFuture
{
  v11[1] = *MEMORY[0x277D85DE8];
  if ([(HFHomeKitDispatcher *)self willAcceptHomeFutures])
  {
    hasLoadedHomes = [(HFHomeKitDispatcher *)self hasLoadedHomes];
    v4 = objc_alloc_init(MEMORY[0x277D2C918]);
    v5 = v4;
    if (hasLoadedHomes)
    {
      v11[0] = v4;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
      [(HFHomeKitDispatcher *)self _finishAllHomesPromises:v6];
    }

    else
    {
      allHomesPromises = [(HFHomeKitDispatcher *)self allHomesPromises];
      [allHomesPromises addObject:v5];
    }

    future = [v5 future];
  }

  else
  {
    future = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return future;
}

- (id)homeFutureWithUser:(id)user
{
  userCopy = user;
  allHomesFuture = [(HFHomeKitDispatcher *)self allHomesFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__HFHomeKitDispatcher_homeFutureWithUser___block_invoke;
  v9[3] = &unk_277DF5938;
  v10 = userCopy;
  v6 = userCopy;
  v7 = [allHomesFuture flatMap:v9];

  return v7;
}

id __42__HFHomeKitDispatcher_homeFutureWithUser___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = a2;
  v21 = [v3 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v21)
  {
    v4 = *v28;
    v22 = v3;
    v20 = *v28;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v28 != v4)
        {
          objc_enumerationMutation(v3);
        }

        v6 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v7 = [v6 hf_allUsersIncludingCurrentUser];
        v8 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v24;
          while (2)
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v24 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = [*(*(&v23 + 1) + 8 * j) uniqueIdentifier];
              v13 = [*(a1 + 32) uniqueIdentifier];
              v14 = [v12 hmf_isEqualToUUID:v13];

              if (v14)
              {
                v17 = [MEMORY[0x277D2C900] futureWithResult:v6];

                v3 = v22;
                v16 = v22;
                goto LABEL_18;
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        v3 = v22;
        v4 = v20;
      }

      v21 = [v22 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v21);
  }

  v15 = MEMORY[0x277D2C900];
  v16 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
  v17 = [v15 futureWithError:v16];
LABEL_18:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)userFutureWithUniqueIdentifierStr:(id)str
{
  strCopy = str;
  allHomesFuture = [(HFHomeKitDispatcher *)self allHomesFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__HFHomeKitDispatcher_userFutureWithUniqueIdentifierStr___block_invoke;
  v9[3] = &unk_277DF5938;
  v10 = strCopy;
  v6 = strCopy;
  v7 = [allHomesFuture flatMap:v9];

  return v7;
}

id __57__HFHomeKitDispatcher_userFutureWithUniqueIdentifierStr___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = a2;
  v21 = [v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v4 = *v27;
    v20 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v4)
        {
          objc_enumerationMutation(v3);
        }

        v6 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v7 = [v6 hf_allUsersIncludingCurrentUser];
        v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v23;
          while (2)
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v23 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v22 + 1) + 8 * j);
              v13 = [v12 uniqueIdentifier];
              v14 = [v13 hmf_isEqualToUUIDString:*(a1 + 32)];

              if (v14)
              {
                v17 = [MEMORY[0x277D2C900] futureWithResult:v12];

                v16 = v3;
                goto LABEL_18;
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        v4 = v20;
      }

      v21 = [v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v21);
  }

  v15 = MEMORY[0x277D2C900];
  v16 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
  v17 = [v15 futureWithError:v16];
LABEL_18:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (NAFuture)locationSensingAvailableFuture
{
  locationCoordinator = [(HFHomeKitDispatcher *)self locationCoordinator];

  if (locationCoordinator)
  {
    locationCoordinator2 = [(HFHomeKitDispatcher *)self locationCoordinator];
    locationSensingAvailableFuture = [locationCoordinator2 locationSensingAvailableFuture];
  }

  else
  {
    locationSensingAvailableFuture = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC28]];
  }

  return locationSensingAvailableFuture;
}

- (BOOL)selectedHomeFollowsLocation
{
  locationCoordinator = [(HFHomeKitDispatcher *)self locationCoordinator];
  homeSensingEnabled = [locationCoordinator homeSensingEnabled];

  return homeSensingEnabled;
}

- (id)_setupLocationSensingCoordinator
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HFHomeKitDispatcher__setupLocationSensingCoordinator__block_invoke;
  block[3] = &unk_277DF3D38;
  block[4] = self;
  if (qword_280E03DD0 != -1)
  {
    dispatch_once(&qword_280E03DD0, block);
  }

  if (byte_280E03DB3)
  {
    objc_initWeak(&location, self);
    v3 = +[HFHomeAppInstallStateArbiter sharedInstance];
    homeAppInstalledFuture = [v3 homeAppInstalledFuture];
    mainScheduler = [MEMORY[0x277D0F8F0] mainScheduler];
    v6 = [homeAppInstalledFuture reschedule:mainScheduler];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__HFHomeKitDispatcher__setupLocationSensingCoordinator__block_invoke_610;
    v10[3] = &unk_277DF8540;
    objc_copyWeak(&v11, &location);
    futureWithNoResult = [v6 flatMap:v10];
    objc_destroyWeak(&v11);

    objc_destroyWeak(&location);
  }

  else
  {
    v8 = HFLogForCategory(0x2DuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location) = 0;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Skipping setup of Home Sensing", &location, 2u);
    }

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

void __55__HFHomeKitDispatcher__setupLocationSensingCoordinator__block_invoke(uint64_t a1)
{
  if (+[HFExecutionEnvironment isHomeApp](HFExecutionEnvironment, "isHomeApp") || +[HFExecutionEnvironment isHomeControlService](HFExecutionEnvironment, "isHomeControlService") || +[HFExecutionEnvironment isSpringBoard](HFExecutionEnvironment, "isSpringBoard") || +[HFExecutionEnvironment isWatchApp](HFExecutionEnvironment, "isWatchApp") || +[HFExecutionEnvironment isCarousel](HFExecutionEnvironment, "isCarousel") || +[HFExecutionEnvironment isHomeWidgetIntents])
  {
    v3 = [*(a1 + 32) homeManager];
    v2 = [v3 currentAccessory];
    byte_280E03DB3 = v2 == 0;
  }

  else
  {
    byte_280E03DB3 = 0;
  }
}

id __55__HFHomeKitDispatcher__setupLocationSensingCoordinator__block_invoke_610(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 BOOLValue];

  v6 = HFLogForCategory(0x2DuLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *v11 = 0;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "HomeApp is installed; initializing HFLocationSensingCoordinator", v11, 2u);
    }

    v8 = [[HFLocationSensingCoordinator alloc] initWithDelegate:WeakRetained];
    [WeakRetained setLocationCoordinator:v8];

    [WeakRetained updateHomeSensingState];
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "HomeApp is not installed; avoiding initialization of HFLocationSensingCoordinator", buf, 2u);
    }
  }

  v9 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v9;
}

- (id)pinCodeManagerForHome:(id)home
{
  homeCopy = home;
  pinCodeManager = [(HFHomeKitDispatcher *)self pinCodeManager];
  home = [pinCodeManager home];
  uniqueIdentifier = [home uniqueIdentifier];
  uniqueIdentifier2 = [homeCopy uniqueIdentifier];
  v9 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  if (v9)
  {
    pinCodeManager2 = [(HFHomeKitDispatcher *)self pinCodeManager];
  }

  else
  {
    pinCodeManager2 = [[HFPinCodeManager alloc] initWithHome:homeCopy];
    home2 = [(HFHomeKitDispatcher *)self home];
    uniqueIdentifier3 = [home2 uniqueIdentifier];
    uniqueIdentifier4 = [homeCopy uniqueIdentifier];
    v14 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v14)
    {
      [(HFHomeKitDispatcher *)self setPinCodeManager:pinCodeManager2];
    }
  }

  return pinCodeManager2;
}

- (id)securityActivityLogCoordinatorForHome:(id)home
{
  homeCopy = home;
  securityActivityLogCoordinator = [(HFHomeKitDispatcher *)self securityActivityLogCoordinator];
  home = [securityActivityLogCoordinator home];
  uniqueIdentifier = [home uniqueIdentifier];
  uniqueIdentifier2 = [homeCopy uniqueIdentifier];
  v9 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  if (v9)
  {
    securityActivityLogCoordinator2 = [(HFHomeKitDispatcher *)self securityActivityLogCoordinator];
  }

  else
  {
    securityActivityLogCoordinator2 = [[HFActivityLogCoordinator alloc] initWithHome:homeCopy targetKind:0];
    home2 = [(HFHomeKitDispatcher *)self home];
    uniqueIdentifier3 = [home2 uniqueIdentifier];
    uniqueIdentifier4 = [homeCopy uniqueIdentifier];
    v14 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v14)
    {
      [(HFHomeKitDispatcher *)self setSecurityActivityLogCoordinator:securityActivityLogCoordinator2];
    }
  }

  return securityActivityLogCoordinator2;
}

- (id)climateActivityLogCoordinatorForHome:(id)home
{
  homeCopy = home;
  climateActivityLogCoordinator = [(HFHomeKitDispatcher *)self climateActivityLogCoordinator];
  home = [climateActivityLogCoordinator home];
  uniqueIdentifier = [home uniqueIdentifier];
  uniqueIdentifier2 = [homeCopy uniqueIdentifier];
  v9 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  if (v9)
  {
    climateActivityLogCoordinator2 = [(HFHomeKitDispatcher *)self climateActivityLogCoordinator];
  }

  else
  {
    climateActivityLogCoordinator2 = [[HFActivityLogCoordinator alloc] initWithHome:homeCopy targetKind:1];
    home2 = [(HFHomeKitDispatcher *)self home];
    uniqueIdentifier3 = [home2 uniqueIdentifier];
    uniqueIdentifier4 = [homeCopy uniqueIdentifier];
    v14 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v14)
    {
      [(HFHomeKitDispatcher *)self setClimateActivityLogCoordinator:climateActivityLogCoordinator2];
    }
  }

  return climateActivityLogCoordinator2;
}

- (void)updateSelectedHome
{
  v48 = *MEMORY[0x277D85DE8];
  homeManager = [(HFHomeKitDispatcher *)self homeManager];
  currentAccessory = [homeManager currentAccessory];
  home = [currentAccessory home];

  if (home)
  {
    v6 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      homeManager2 = [(HFHomeKitDispatcher *)self homeManager];
      currentAccessory2 = [homeManager2 currentAccessory];
      homeManager3 = [(HFHomeKitDispatcher *)self homeManager];
      currentAccessory3 = [homeManager3 currentAccessory];
      home2 = [currentAccessory3 home];
      *buf = 138413058;
      selfCopy3 = self;
      v42 = 2080;
      v43 = "[HFHomeKitDispatcher updateSelectedHome]";
      v44 = 2112;
      v45 = currentAccessory2;
      v46 = 2112;
      v47 = home2;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "(%@:%s) selected home is currentAccessory %@ home %@", buf, 0x2Au);
    }

    homeManager4 = [(HFHomeKitDispatcher *)self homeManager];
    currentAccessory4 = [homeManager4 currentAccessory];
    home3 = [currentAccessory4 home];
    uniqueIdentifier = [home3 uniqueIdentifier];

LABEL_5:
    goto LABEL_6;
  }

  if ([(HFHomeKitDispatcher *)self selectedHomeFollowsLocation])
  {
    if (([objc_opt_class() allowHomeSensingOverride] & 1) == 0)
    {
      homeManager5 = [(HFHomeKitDispatcher *)self homeManager];
      currentHome = [homeManager5 currentHome];

      if (currentHome)
      {
        v27 = HFLogForCategory(0x27uLL);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          homeManager6 = [(HFHomeKitDispatcher *)self homeManager];
          currentHome2 = [homeManager6 currentHome];
          name = [currentHome2 name];
          homeManager7 = [(HFHomeKitDispatcher *)self homeManager];
          currentHome3 = [homeManager7 currentHome];
          uniqueIdentifier2 = [currentHome3 uniqueIdentifier];
          *buf = 138413059;
          selfCopy3 = self;
          v42 = 2080;
          v43 = "[HFHomeKitDispatcher updateSelectedHome]";
          v44 = 2113;
          v45 = name;
          v46 = 2114;
          v47 = uniqueIdentifier2;
          _os_log_impl(&dword_20D9BF000, v27, OS_LOG_TYPE_DEFAULT, "(%@:%s) selected home is current home %{private}@ %{public}@", buf, 0x2Au);
        }

        homeManager4 = [(HFHomeKitDispatcher *)self homeManager];
        currentAccessory4 = [homeManager4 currentHome];
        uniqueIdentifier = [currentAccessory4 uniqueIdentifier];
        goto LABEL_5;
      }
    }
  }

  v35 = +[HFStateRestorationSettings sharedInstance];
  uniqueIdentifier = [v35 selectedHomeIdentifier];

  homeManager4 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(homeManager4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy3 = self;
    v42 = 2080;
    v43 = "[HFHomeKitDispatcher updateSelectedHome]";
    v44 = 2114;
    v45 = uniqueIdentifier;
    _os_log_impl(&dword_20D9BF000, homeManager4, OS_LOG_TYPE_DEFAULT, "(%@:%s) selected home is synced identifier %{public}@", buf, 0x20u);
  }

LABEL_6:

  if (uniqueIdentifier)
  {
    homeManager8 = [(HFHomeKitDispatcher *)self homeManager];
    homes = [homeManager8 homes];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __41__HFHomeKitDispatcher_updateSelectedHome__block_invoke;
    v38[3] = &unk_277DF5E78;
    v18 = uniqueIdentifier;
    p_super = &v18->super;
    _primaryHome = [homes na_firstObjectPassingTest:v38];

    v20 = HFLogForCategory(0x27uLL);
    v21 = v20;
    if (_primaryHome)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        name2 = [_primaryHome name];
        uniqueIdentifier3 = [_primaryHome uniqueIdentifier];
        *buf = 138478083;
        selfCopy3 = name2;
        v42 = 2114;
        v43 = uniqueIdentifier3;
        _os_log_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_DEFAULT, "Loaded synced selected home %{private}@ %{public}@", buf, 0x16u);
      }

      homeManager9 = p_super;
      goto LABEL_26;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy3 = v18;
      _os_log_error_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_ERROR, "Unable to find synced selected home matching identifier %@", buf, 0xCu);
    }

    v34 = p_super;
  }

  else
  {
    v34 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v34, OS_LOG_TYPE_DEFAULT, "No synced selected home found", buf, 2u);
    }
  }

  _primaryHome = [(HFHomeKitDispatcher *)self _primaryHome];
  if (!_primaryHome)
  {
    homeManager9 = [(HFHomeKitDispatcher *)self homeManager];
    homes2 = [homeManager9 homes];
    _primaryHome = [homes2 firstObject];

LABEL_26:
  }

  [(HFHomeKitDispatcher *)self _requestSelectedHome:_primaryHome];

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t __41__HFHomeKitDispatcher_updateSelectedHome__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueIdentifier];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (void)_handleHomeManagerDidUpdateHomes:(id)homes
{
  v57 = *MEMORY[0x277D85DE8];
  homesCopy = homes;
  v5 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    currentHome = [homesCopy currentHome];
    name = [currentHome name];
    currentHome2 = [homesCopy currentHome];
    uniqueIdentifier = [currentHome2 uniqueIdentifier];
    *buf = 138412803;
    v52 = homesCopy;
    v53 = 2113;
    v54 = name;
    v55 = 2114;
    v56 = uniqueIdentifier;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "homeManagerDidUpdateHomes: %@, manager's currentHome: %{private}@ %{public}@", buf, 0x20u);
  }

  if ([(HFHomeKitDispatcher *)self hasLoadedHomes])
  {
    [(HFHomeKitDispatcher *)self updateSelectedHome];
    v10 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "homeManagerDidFinishUnknownChange", buf, 2u);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    homeManagerObserverDispatcher = [(HFHomeKitDispatcher *)self homeManagerObserverDispatcher];
    observers = [homeManagerObserverDispatcher observers];

    v13 = [observers countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v45;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v45 != v15)
          {
            objc_enumerationMutation(observers);
          }

          v17 = *(*(&v44 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v17 homeManagerDidFinishUnknownChange:homesCopy];
          }

          else if (objc_opt_respondsToSelector())
          {
            [v17 homeManagerDidUpdateHomes:homesCopy];
          }
        }

        v14 = [observers countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v18 = HFLogForCategory(0x35uLL);
    if (os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_20D9BF000, v18, OS_SIGNPOST_INTERVAL_END, 0x1F5uLL, "HomeKitDataLoad", "HomeKit homes DB loaded", buf, 2u);
    }

    [(HFHomeKitDispatcher *)self updateSelectedHome];
    [(HFHomeKitDispatcher *)self setHasLoadedHomes:1];
    homePromises = [(HFHomeKitDispatcher *)self homePromises];
    [(HFHomeKitDispatcher *)self _finishHomePromises:homePromises];

    homePromises2 = [(HFHomeKitDispatcher *)self homePromises];
    [homePromises2 removeAllObjects];

    allHomesPromises = [(HFHomeKitDispatcher *)self allHomesPromises];
    [(HFHomeKitDispatcher *)self _finishAllHomesPromises:allHomesPromises];

    allHomesPromises2 = [(HFHomeKitDispatcher *)self allHomesPromises];
    [allHomesPromises2 removeAllObjects];

    v23 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v23, OS_LOG_TYPE_DEFAULT, "homeManagerDidFinishInitialDatabaseLoad", buf, 2u);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    homeManagerObserverDispatcher2 = [(HFHomeKitDispatcher *)self homeManagerObserverDispatcher];
    observers2 = [homeManagerObserverDispatcher2 observers];

    v26 = [observers2 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v41;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v41 != v28)
          {
            objc_enumerationMutation(observers2);
          }

          v30 = *(*(&v40 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v30 homeManagerDidFinishInitialDatabaseLoad:homesCopy];
          }

          else if (objc_opt_respondsToSelector())
          {
            [v30 homeManagerDidUpdateHomes:homesCopy];
          }
        }

        v27 = [observers2 countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v27);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    observers = [homesCopy homes];
    v31 = [observers countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v37;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v37 != v33)
          {
            objc_enumerationMutation(observers);
          }

          [(HFHomeKitDispatcher *)self _updateRemoteAccessStateForHome:*(*(&v36 + 1) + 8 * k) notifyingObservers:0];
        }

        v32 = [observers countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v32);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_updateRemoteAccessStateForHome:(id)home notifyingObservers:(BOOL)observers
{
  observersCopy = observers;
  v24 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  if (homeCopy)
  {
    remoteAccessStateByHomeID = [(HFHomeKitDispatcher *)self remoteAccessStateByHomeID];
    uniqueIdentifier = [homeCopy uniqueIdentifier];
    v10 = [remoteAccessStateByHomeID objectForKeyedSubscript:uniqueIdentifier];

    hf_remoteAccessState = [homeCopy hf_remoteAccessState];
    if (!v10 || [v10 integerValue] != hf_remoteAccessState)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:hf_remoteAccessState];
      remoteAccessStateByHomeID2 = [(HFHomeKitDispatcher *)self remoteAccessStateByHomeID];
      uniqueIdentifier2 = [homeCopy uniqueIdentifier];
      [remoteAccessStateByHomeID2 setObject:v12 forKeyedSubscript:uniqueIdentifier2];

      if (observersCopy)
      {
        homeObserverDispatcher = [(HFHomeKitDispatcher *)self homeObserverDispatcher];
        proxy = [homeObserverDispatcher proxy];
        [proxy home:homeCopy remoteAccessStateDidChange:hf_remoteAccessState];
      }
    }
  }

  else
  {
    v17 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      v20 = 138412546;
      selfCopy = self;
      v22 = 2112;
      v23 = v19;
      _os_log_error_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_ERROR, "%@:%@: Unexpected nil home", &v20, 0x16u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_finishHomePromises:(id)promises
{
  v18 = *MEMORY[0x277D85DE8];
  promisesCopy = promises;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [promisesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(promisesCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        home = [(HFHomeKitDispatcher *)self home];

        if (home)
        {
          home2 = [(HFHomeKitDispatcher *)self home];
          [v9 finishWithResult:home2];
        }

        else
        {
          home2 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
          [v9 finishWithError:home2];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [promisesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_finishAllHomesPromises:(id)promises
{
  v21 = *MEMORY[0x277D85DE8];
  promisesCopy = promises;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [promisesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(promisesCopy);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        homeManager = [(HFHomeKitDispatcher *)self homeManager];
        homes = [homeManager homes];

        if (homes)
        {
          homeManager2 = [(HFHomeKitDispatcher *)self homeManager];
          homes2 = [homeManager2 homes];
          v14 = [homes2 sortedArrayUsingComparator:&__block_literal_global_619];
          [v9 finishWithResult:v14];
        }

        else
        {
          homeManager2 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
          [v9 finishWithError:homeManager2];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [promisesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __47__HFHomeKitDispatcher__finishAllHomesPromises___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

- (void)_finishFirstHomeAddedPromises:(id)promises
{
  v23 = *MEMORY[0x277D85DE8];
  promisesCopy = promises;
  home = [(HFHomeKitDispatcher *)self home];

  if (!home)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFHomeKitDispatcher.m" lineNumber:1693 description:{@"Invalid parameter not satisfying: %@", @"self.home != nil"}];
  }

  if ([promisesCopy count])
  {
    v7 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Finishing firstHomeAddedPromises now that we have a home", buf, 2u);
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = promisesCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        home2 = [(HFHomeKitDispatcher *)self home];
        [v13 finishWithResult:home2];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_primaryHome
{
  homeManager = [(HFHomeKitDispatcher *)self homeManager];
  homes = [homeManager homes];
  v5 = [homes count];

  if (v5)
  {
    homeManager2 = [(HFHomeKitDispatcher *)self homeManager];
    primaryHome = [homeManager2 primaryHome];
  }

  else
  {
    primaryHome = 0;
  }

  return primaryHome;
}

- (void)addObservationForCameraClipManager:(id)manager
{
  managerCopy = manager;
  cameraObserverDispatcher = [(HFHomeKitDispatcher *)self cameraObserverDispatcher];
  proxy = [cameraObserverDispatcher proxy];

  if (proxy)
  {
    [managerCopy addObserver:proxy];
  }
}

- (void)removeObservationForCameraClipManager:(id)manager
{
  managerCopy = manager;
  cameraObserverDispatcher = [(HFHomeKitDispatcher *)self cameraObserverDispatcher];
  proxy = [cameraObserverDispatcher proxy];

  if (proxy)
  {
    [managerCopy removeObserver:proxy];
  }
}

- (void)_setDelegationEnabled:(BOOL)enabled forAccessoryHierarchy:(id)hierarchy
{
  enabledCopy = enabled;
  v85 = *MEMORY[0x277D85DE8];
  hierarchyCopy = hierarchy;
  home = [hierarchyCopy home];
  home2 = [(HFHomeKitDispatcher *)self home];
  v9 = [home isEqual:home2];

  if ((v9 & 1) == 0)
  {
    v10 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      home3 = [hierarchyCopy home];
      home4 = [(HFHomeKitDispatcher *)self home];
      *buf = 138412802;
      v80 = hierarchyCopy;
      v81 = 2112;
      v82 = home3;
      v83 = 2112;
      v84 = home4;
      _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "Setting delegate for accessory %@ with home %@ not in current home %@", buf, 0x20u);
    }
  }

  if (enabledCopy)
  {
    accessoryObserverDispatcher = [(HFHomeKitDispatcher *)self accessoryObserverDispatcher];
    proxy = [accessoryObserverDispatcher proxy];
    [hierarchyCopy setDelegate:proxy];
  }

  else
  {
    [hierarchyCopy setDelegate:0];
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  cameraProfiles = [hierarchyCopy cameraProfiles];
  v14 = [cameraProfiles countByEnumeratingWithState:&v72 objects:v78 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v73;
    do
    {
      v17 = 0;
      do
      {
        if (*v73 != v16)
        {
          objc_enumerationMutation(cameraProfiles);
        }

        v18 = *(*(&v72 + 1) + 8 * v17);
        if (enabledCopy)
        {
          cameraObserverDispatcher = [(HFHomeKitDispatcher *)self cameraObserverDispatcher];
          proxy2 = [cameraObserverDispatcher proxy];
        }

        else
        {
          proxy2 = 0;
        }

        snapshotControl = [v18 snapshotControl];
        [snapshotControl setDelegate:proxy2];

        streamControl = [v18 streamControl];
        [streamControl setDelegate:proxy2];

        userSettings = [v18 userSettings];
        [userSettings setDelegate:proxy2];

        ++v17;
      }

      while (v15 != v17);
      v15 = [cameraProfiles countByEnumeratingWithState:&v72 objects:v78 count:16];
    }

    while (v15);
  }

  profiles = [hierarchyCopy profiles];
  v25 = [profiles na_map:&__block_literal_global_632];
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __67__HFHomeKitDispatcher__setDelegationEnabled_forAccessoryHierarchy___block_invoke_2;
  v70[3] = &unk_277E02620;
  v71 = enabledCopy;
  v70[4] = self;
  [v25 na_each:v70];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  televisionProfiles = [hierarchyCopy televisionProfiles];
  v27 = [televisionProfiles countByEnumeratingWithState:&v66 objects:v77 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v67;
    do
    {
      v30 = 0;
      do
      {
        if (*v67 != v29)
        {
          objc_enumerationMutation(televisionProfiles);
        }

        v31 = *(*(&v66 + 1) + 8 * v30);
        if (enabledCopy)
        {
          televisionObserverDispatcher = [(HFHomeKitDispatcher *)self televisionObserverDispatcher];
          proxy3 = [televisionObserverDispatcher proxy];
          [v31 setDelegate:proxy3];
        }

        else
        {
          [*(*(&v66 + 1) + 8 * v30) setDelegate:0];
        }

        ++v30;
      }

      while (v28 != v30);
      v28 = [televisionProfiles countByEnumeratingWithState:&v66 objects:v77 count:16];
    }

    while (v28);
  }

  if (enabledCopy)
  {
    televisionProfiles = [(HFHomeKitDispatcher *)self softwareUpdateControllerObserverDispatcher];
    proxy4 = [televisionProfiles proxy];
  }

  else
  {
    proxy4 = 0;
  }

  softwareUpdateController = [hierarchyCopy softwareUpdateController];
  [softwareUpdateController setDelegate:proxy4];

  if (enabledCopy)
  {

    televisionProfiles = [(HFHomeKitDispatcher *)self softwareUpdateObserverDispatcher];
    proxy5 = [televisionProfiles proxy];
  }

  else
  {
    proxy5 = 0;
  }

  softwareUpdateController2 = [hierarchyCopy softwareUpdateController];
  availableUpdate = [softwareUpdateController2 availableUpdate];
  [availableUpdate setDelegate:proxy5];

  if (enabledCopy)
  {

    softwareUpdateManager = [(HFHomeKitDispatcher *)self softwareUpdateManager];
    mediaDestinationControllerObserverDispatcher = [MEMORY[0x277CBEB98] na_setWithSafeObject:hierarchyCopy];
    [softwareUpdateManager startObservingSoftwareUpdatesForAccessories:mediaDestinationControllerObserverDispatcher];
  }

  else
  {
    softwareUpdateManager = [(HFHomeKitDispatcher *)self softwareUpdateManager];
    mediaDestinationControllerObserverDispatcher = [MEMORY[0x277CBEB98] na_setWithSafeObject:hierarchyCopy];
    [softwareUpdateManager stopObservingSoftwareUpdatesForAccessories:mediaDestinationControllerObserverDispatcher];
  }

  mediaProfile = [hierarchyCopy mediaProfile];

  if (mediaProfile)
  {
    mediaProfile2 = [hierarchyCopy mediaProfile];
    [(HFHomeKitDispatcher *)self _setDelegationEnabled:1 forMediaProfileContainer:mediaProfile2 session:0];

    mediaProfile = 0;
    if ([hierarchyCopy hf_isAppleTV])
    {
      mediaProfile = hierarchyCopy;
    }

    if (enabledCopy)
    {
      mediaDestinationControllerObserverDispatcher = [(HFHomeKitDispatcher *)self mediaDestinationControllerObserverDispatcher];
      proxy6 = [mediaDestinationControllerObserverDispatcher proxy];
    }

    else
    {
      proxy6 = 0;
    }

    audioDestinationController = [mediaProfile audioDestinationController];
    [audioDestinationController setDelegate:proxy6];

    if (enabledCopy)
    {
    }
  }

  if (!+[HFExecutionEnvironment isHomeWidgetRelatedProcess])
  {
    if (enabledCopy)
    {
      mediaProfile = [(HFHomeKitDispatcher *)self symptomsHandlerObserverDispatcher];
      proxy7 = [mediaProfile proxy];
    }

    else
    {
      proxy7 = 0;
    }

    symptomsHandler = [hierarchyCopy symptomsHandler];
    [symptomsHandler setDelegate:proxy7];

    if (enabledCopy)
    {
    }
  }

  hf_siriEndpointProfile = [hierarchyCopy hf_siriEndpointProfile];

  if (hf_siriEndpointProfile)
  {
    siriEndpointProfileObserverDispatcher = [(HFHomeKitDispatcher *)self siriEndpointProfileObserverDispatcher];
    proxy8 = [siriEndpointProfileObserverDispatcher proxy];
    hf_siriEndpointProfile2 = [hierarchyCopy hf_siriEndpointProfile];
    [hf_siriEndpointProfile2 setDelegate:proxy8];
  }

  lightProfiles = [hierarchyCopy lightProfiles];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v52 = [lightProfiles countByEnumeratingWithState:&v62 objects:v76 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v63;
    do
    {
      v55 = 0;
      do
      {
        if (*v63 != v54)
        {
          objc_enumerationMutation(lightProfiles);
        }

        v56 = *(*(&v62 + 1) + 8 * v55);
        if (enabledCopy)
        {
          lightObserverDispatcher = [(HFHomeKitDispatcher *)self lightObserverDispatcher];
          proxy9 = [lightObserverDispatcher proxy];
          [v56 setDelegate:proxy9];
        }

        else
        {
          [*(*(&v62 + 1) + 8 * v55) setDelegate:0];
        }

        ++v55;
      }

      while (v53 != v55);
      v53 = [lightProfiles countByEnumeratingWithState:&v62 objects:v76 count:16];
    }

    while (v53);
  }

  v59 = *MEMORY[0x277D85DE8];
}

void *__67__HFHomeKitDispatcher__setDelegationEnabled_forAccessoryHierarchy___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

void __67__HFHomeKitDispatcher__setDelegationEnabled_forAccessoryHierarchy___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v2 = *(a1 + 32);
    v3 = a2;
    v5 = [v2 networkConfigurationObserverDispatcher];
    v4 = [v5 proxy];
    [v3 setDelegate:v4];
  }

  else
  {
    v5 = a2;
    [v5 setDelegate:0];
  }
}

- (void)_setDelegationEnabled:(BOOL)enabled forMediaProfileContainer:(id)container session:(id)session
{
  enabledCopy = enabled;
  containerCopy = container;
  sessionCopy = session;
  v11 = sessionCopy;
  if (enabledCopy)
  {
    mediaSessionObserverDispatcher = [(HFHomeKitDispatcher *)self mediaSessionObserverDispatcher];
    proxy = [mediaSessionObserverDispatcher proxy];
    [v11 setDelegate:proxy];

    mediaObjectObserverDispatcher = [(HFHomeKitDispatcher *)self mediaObjectObserverDispatcher];
    proxy2 = [mediaObjectObserverDispatcher proxy];
    [containerCopy setDelegate:proxy2];

    mediaSessionObserverDispatcher2 = [(HFHomeKitDispatcher *)self mediaSessionObserverDispatcher];
    proxy3 = [mediaSessionObserverDispatcher2 proxy];
  }

  else
  {
    [sessionCopy setDelegate:0];
    [containerCopy setDelegate:0];
    proxy3 = 0;
  }

  mediaSession = [containerCopy mediaSession];
  [mediaSession setDelegate:proxy3];

  if (enabledCopy)
  {

    mediaSessionObserverDispatcher2 = [(HFHomeKitDispatcher *)self audioControlObserverDispatcher];
    proxy4 = [mediaSessionObserverDispatcher2 proxy];
  }

  else
  {
    proxy4 = 0;
  }

  mediaSession2 = [containerCopy mediaSession];
  audioControl = [mediaSession2 audioControl];
  [audioControl setDelegate:proxy4];

  if (enabledCopy)
  {

    mediaSessionObserverDispatcher2 = [(HFHomeKitDispatcher *)self homeKitSettingsObserverDispatcher];
    proxy5 = [mediaSessionObserverDispatcher2 proxy];
  }

  else
  {
    proxy5 = 0;
  }

  settings = [containerCopy settings];
  [settings setDelegate:proxy5];

  if (enabledCopy)
  {
  }

  if (!+[HFExecutionEnvironment isHomeWidgetRelatedProcess])
  {
    objc_opt_class();
    v23 = containerCopy;
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;

    accessories = [v25 accessories];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __78__HFHomeKitDispatcher__setDelegationEnabled_forMediaProfileContainer_session___block_invoke;
    v27[3] = &unk_277E02648;
    v28 = enabledCopy;
    v27[4] = self;
    [accessories na_each:v27];
  }
}

void __78__HFHomeKitDispatcher__setDelegationEnabled_forMediaProfileContainer_session___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 40);
  if (v3 == 1)
  {
    a1 = [*(a1 + 32) symptomsHandlerObserverDispatcher];
    v4 = [a1 proxy];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v6 symptomsHandler];
  [v5 setDelegate:v4];

  if (v3)
  {
  }
}

- (void)_setDelegationEnabled:(BOOL)enabled forUser:(id)user
{
  enabledCopy = enabled;
  v23 = *MEMORY[0x277D85DE8];
  userCopy = user;
  home = [(HFHomeKitDispatcher *)self home];
  v8 = [userCopy userSettingsForHome:home];

  settings = [v8 settings];
  rootGroup = [settings rootGroup];

  if (!rootGroup)
  {
    v11 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v21 = 138412290;
      v22 = userCopy;
      _os_log_error_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_ERROR, "Attempting to set delegate for user %@ settings - but settings are invalid", &v21, 0xCu);
    }
  }

  privateSettings = [v8 privateSettings];
  rootGroup2 = [privateSettings rootGroup];

  if (rootGroup2)
  {
    if (enabledCopy)
    {
LABEL_7:
      privateSettings = [(HFHomeKitDispatcher *)self homeKitSettingsObserverDispatcher];
      proxy = [privateSettings proxy];
      goto LABEL_12;
    }
  }

  else
  {
    privateSettings = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(privateSettings, OS_LOG_TYPE_ERROR))
    {
      v21 = 138412290;
      v22 = userCopy;
      _os_log_error_impl(&dword_20D9BF000, privateSettings, OS_LOG_TYPE_ERROR, "Attempting to set delegate for user %@ private settings - but private settings are invalid", &v21, 0xCu);
    }

    if (enabledCopy)
    {
      goto LABEL_7;
    }
  }

  proxy = 0;
LABEL_12:
  settings2 = [v8 settings];
  [settings2 setDelegate:proxy];

  if (enabledCopy)
  {

    privateSettings = [(HFHomeKitDispatcher *)self homeKitSettingsObserverDispatcher];
    proxy2 = [privateSettings proxy];
  }

  else
  {
    proxy2 = 0;
  }

  privateSettings2 = [v8 privateSettings];
  [privateSettings2 setDelegate:proxy2];

  if (enabledCopy)
  {

    userObserverDispatcher = [(HFHomeKitDispatcher *)self userObserverDispatcher];
    proxy3 = [userObserverDispatcher proxy];
    [userCopy setDelegate:proxy3];
  }

  else
  {
    [userCopy setDelegate:0];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_setHomePersonManagerObservationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  home = [(HFHomeKitDispatcher *)self home];
  personManager = [home personManager];

  if (personManager)
  {
    homePersonManagerDispatcher = [(HFHomeKitDispatcher *)self homePersonManagerDispatcher];
    proxy = [homePersonManagerDispatcher proxy];
    if (enabledCopy)
    {
      [personManager addObserver:proxy];
    }

    else
    {
      [personManager removeObserver:proxy];
    }
  }
}

- (id)homeSensingActiveFuture
{
  locationCoordinatorSetupFuture = [(HFHomeKitDispatcher *)self locationCoordinatorSetupFuture];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__HFHomeKitDispatcher_homeSensingActiveFuture__block_invoke;
  v10[3] = &unk_277DF8340;
  v10[4] = self;
  v4 = [locationCoordinatorSetupFuture flatMap:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__HFHomeKitDispatcher_homeSensingActiveFuture__block_invoke_2;
  v9[3] = &unk_277E02670;
  v9[4] = self;
  v5 = [v4 flatMap:v9];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v7 = [v5 reschedule:mainThreadScheduler];

  return v7;
}

id __46__HFHomeKitDispatcher_homeSensingActiveFuture__block_invoke_2(id *a1, void *a2)
{
  v3 = MEMORY[0x277D2C900];
  v4 = MEMORY[0x277CCABB0];
  v5 = [a2 BOOLValue];
  if (v5)
  {
    a1 = [a1[4] locationCoordinator];
    v6 = [a1 homeSensingEnabled];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 numberWithInt:v6];
  v8 = [v3 futureWithResult:v7];

  if (v5)
  {
  }

  return v8;
}

- (void)updateHomeSensingState
{
  objc_initWeak(&location, self);
  allHomesFuture = [(HFHomeKitDispatcher *)self allHomesFuture];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__HFHomeKitDispatcher_updateHomeSensingState__block_invoke;
  v5[3] = &unk_277E026C0;
  v5[4] = self;
  objc_copyWeak(&v6, &location);
  v4 = [allHomesFuture addCompletionBlock:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __45__HFHomeKitDispatcher_updateHomeSensingState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory(0x2DuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "updateHomeSensingState - Home Sensing: will check and switch homes if necessary", buf, 2u);
  }

  v8 = [*(a1 + 32) homeSensingActiveFuture];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__HFHomeKitDispatcher_updateHomeSensingState__block_invoke_639;
  v10[3] = &unk_277E02698;
  objc_copyWeak(&v11, (a1 + 40));
  v9 = [v8 addCompletionBlock:v10];

  objc_destroyWeak(&v11);
}

void __45__HFHomeKitDispatcher_updateHomeSensingState__block_invoke_639(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained homeManager];
  v6 = [MEMORY[0x277CD19B8] currentHomeUniqueIdentifier];
  v7 = [v5 hf_homeWithIdentifier:v6];

  v8 = HFLogForCategory(0x2DuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v3 BOOLValue];
    v10 = [v7 hf_displayName];
    v11 = [v7 uniqueIdentifier];
    [WeakRetained selectedHome];
    v12 = v24 = v3;
    v13 = [v12 hf_displayName];
    v14 = [WeakRetained selectedHome];
    v15 = [v14 uniqueIdentifier];
    *buf = 67110147;
    *v26 = v9;
    *&v26[4] = 2113;
    *&v26[6] = v10;
    *&v26[14] = 2114;
    *&v26[16] = v11;
    v27 = 2113;
    v28 = v13;
    v29 = 2114;
    v30 = v15;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "updateHomeSensingState - Home Sensing: isSensingEnabled? %{BOOL}d homeManager.currentHome: %{private}@ %{public}@ selectedHome: %{private}@ %{public}@", buf, 0x30u);

    v3 = v24;
  }

  if ([v3 BOOLValue])
  {
    if (v7)
    {
      v16 = [v7 uniqueIdentifier];
      v17 = [WeakRetained selectedHome];
      v18 = [v17 uniqueIdentifier];
      v19 = [v16 isEqual:v18];

      if ((v19 & 1) == 0)
      {
        v20 = HFLogForCategory(0x2DuLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v7 name];
          v22 = [v7 uniqueIdentifier];
          *buf = 138478083;
          *v26 = v21;
          *&v26[8] = 2114;
          *&v26[10] = v22;
          _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "updateHomeSensingState Home Sensing: requesting home %{private}@ %{public}@", buf, 0x16u);
        }

        [WeakRetained _requestSelectedHome:v7];
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldPersistSelectedHomeToDefaults
{
  homeManager = [(HFHomeKitDispatcher *)self homeManager];
  currentAccessory = [homeManager currentAccessory];
  home = [currentAccessory home];

  if (home)
  {
    return 0;
  }

  v6 = objc_opt_class();

  return [v6 allowHomeSensingOverride];
}

- (void)fetchSettingsForLightProfiles:(id)profiles
{
  profilesCopy = profiles;
  home = [(HFHomeKitDispatcher *)self home];

  if (home)
  {
    if (+[HFUtilities isInternalTest])
    {
      [(HFHomeKitDispatcher *)self _fetchSettingsForLightProfiles:profilesCopy];
    }

    else
    {
      objc_initWeak(&location, self);
      defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __53__HFHomeKitDispatcher_fetchSettingsForLightProfiles___block_invoke;
      v8[3] = &unk_277DF3A68;
      objc_copyWeak(&v10, &location);
      v9 = profilesCopy;
      v7 = [defaultScheduler performWithQualityOfService:17 block:v8];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __53__HFHomeKitDispatcher_fetchSettingsForLightProfiles___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _fetchSettingsForLightProfiles:*(a1 + 32)];
}

- (void)_fetchSettingsForLightProfiles:(id)profiles
{
  profilesCopy = profiles;
  home = [(HFHomeKitDispatcher *)self home];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__HFHomeKitDispatcher__fetchSettingsForLightProfiles___block_invoke;
  v6[3] = &unk_277E026E8;
  v6[4] = self;
  [home fetchSettingsForLightProfiles:profilesCopy withCompletion:v6];
}

void __54__HFHomeKitDispatcher__fetchSettingsForLightProfiles___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v6;
      _os_log_error_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_ERROR, "Received error trying to fetch settings for light profiles. %@", buf, 0xCu);
    }
  }

  v19 = v6;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v8 objectForKey:v13];
        v15 = *(a1 + 32);
        v16 = [v14 settings];
        v17 = [v14 error];
        [v15 dispatchLightProfileUpdate:v13 settings:v16 error:v17];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)dispatchLightProfileUpdate:(id)update settings:(id)settings error:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  settingsCopy = settings;
  errorCopy = error;
  if (!settingsCopy)
  {
    v11 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = updateCopy;
      v18 = 2112;
      v19 = errorCopy;
      _os_log_error_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_ERROR, "Received error trying to fetch light profile settings. Profile: %@ %@", buf, 0x16u);
    }

    goto LABEL_6;
  }

  if ([settingsCopy supportedFeatures])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__HFHomeKitDispatcher_dispatchLightProfileUpdate_settings_error___block_invoke;
    v13[3] = &unk_277E02710;
    v14 = updateCopy;
    v15 = settingsCopy;
    [(HFHomeKitDispatcher *)self dispatchLightObserverMessage:v13 sender:0];

    v11 = v14;
LABEL_6:
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (int64_t)_dataModelContextForCurrentEnvironment
{
  if (+[HFExecutionEnvironment isHomeApp])
  {
    return 1;
  }

  if (+[HFExecutionEnvironment isHomeControlService])
  {
    return 2;
  }

  if (+[HFExecutionEnvironment isSpringBoard])
  {
    return 7;
  }

  if (+[HFExecutionEnvironment isHomeWidgetRelatedProcess](HFExecutionEnvironment, "isHomeWidgetRelatedProcess") || +[HFExecutionEnvironment isHomeWidgetIntents])
  {
    return 3;
  }

  if (+[HFExecutionEnvironment isWatchApp])
  {
    return 6;
  }

  if (+[HFExecutionEnvironment isCarousel])
  {
    return 6;
  }

  return 0;
}

- (void)installStateArbiter:(id)arbiter installStateDidChange:(BOOL)change
{
  if (change)
  {
    _setupLocationSensingCoordinator = [(HFHomeKitDispatcher *)self _setupLocationSensingCoordinator];
    [(HFHomeKitDispatcher *)self setLocationCoordinatorSetupFuture:_setupLocationSensingCoordinator];
  }

  else
  {

    [(HFHomeKitDispatcher *)self setLocationCoordinator:0];
  }
}

- (void)stateRestorationSettings:(id)settings selectedHomeIdentifierDidUpdateExternally:(id)externally
{
  v10 = *MEMORY[0x277D85DE8];
  externallyCopy = externally;
  v6 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = externallyCopy;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Received selected home changed notification. New selected home identifier: %@", &v8, 0xCu);
  }

  [(HFHomeKitDispatcher *)self updateSelectedHome];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_updateHomeActivityStateForHome:(id)home
{
  homeCopy = home;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__HFHomeKitDispatcher__updateHomeActivityStateForHome___block_invoke;
  v6[3] = &unk_277DF3370;
  v6[4] = self;
  v7 = homeCopy;
  v5 = homeCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __55__HFHomeKitDispatcher__updateHomeActivityStateForHome___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) homeObserverDispatcher];
  v2 = [v3 proxy];
  [v2 homeDidUpdateActivityState:*(a1 + 40)];
}

@end