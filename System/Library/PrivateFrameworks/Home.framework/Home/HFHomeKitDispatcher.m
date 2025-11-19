@interface HFHomeKitDispatcher
+ (BOOL)synchronizesHomeDataModel;
+ (id)_logSettingsWithFormatter:(id)a3;
+ (id)sharedDispatcher;
+ (void)initialize;
+ (void)setConfiguration:(id)a3;
- (BOOL)_shouldPersistSelectedHomeToDefaults;
- (BOOL)selectedHomeFollowsLocation;
- (BOOL)setSelectedHomeWithName:(id)a3;
- (HFHomeKitDispatcher)init;
- (NAFuture)allHomesFuture;
- (NAFuture)firstHomeAddedFuture;
- (NAFuture)homeFuture;
- (NAFuture)locationSensingAvailableFuture;
- (id)_primaryHome;
- (id)_setupLocationSensingCoordinator;
- (id)climateActivityLogCoordinatorForHome:(id)a3;
- (id)homeFutureWithUser:(id)a3;
- (id)homeSensingActiveFuture;
- (id)pinCodeManagerForHome:(id)a3;
- (id)securityActivityLogCoordinatorForHome:(id)a3;
- (id)userFutureWithUniqueIdentifierStr:(id)a3;
- (int64_t)_dataModelContextForCurrentEnvironment;
- (void)_createHomeManagerIfNecessary;
- (void)_fetchSettingsForLightProfiles:(id)a3;
- (void)_finishAllHomesPromises:(id)a3;
- (void)_finishFirstHomeAddedPromises:(id)a3;
- (void)_finishHomePromises:(id)a3;
- (void)_handleHomeManagerDidUpdateHomes:(id)a3;
- (void)_initializeObservers;
- (void)_requestSelectedHome:(id)a3;
- (void)_setDelegationEnabled:(BOOL)a3 forAccessoryHierarchy:(id)a4;
- (void)_setDelegationEnabled:(BOOL)a3 forMediaProfileContainer:(id)a4 session:(id)a5;
- (void)_setDelegationEnabled:(BOOL)a3 forUser:(id)a4;
- (void)_setHomePersonManagerObservationEnabled:(BOOL)a3;
- (void)_setSoftwareUpateControllerV2DelegationEnabled:(BOOL)a3;
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
- (void)_updateHomeActivityStateForHome:(id)a3;
- (void)_updateRemoteAccessStateForHome:(id)a3 notifyingObservers:(BOOL)a4;
- (void)addAccessoryObserver:(id)a3;
- (void)addAudioControlObserver:(id)a3;
- (void)addCameraObserver:(id)a3;
- (void)addDiagnosticInfoObserver:(id)a3;
- (void)addHomeKitSettingsObserver:(id)a3;
- (void)addHomeManagerObserver:(id)a3;
- (void)addHomeObserver:(id)a3;
- (void)addHomePersonManagerObserver:(id)a3;
- (void)addLightObserver:(id)a3;
- (void)addMediaDestinationControllerObserver:(id)a3;
- (void)addMediaObjectObserver:(id)a3;
- (void)addMediaProfileObserver:(id)a3;
- (void)addMediaSessionObserver:(id)a3;
- (void)addNetworkConfigurationObserver:(id)a3;
- (void)addObservationForCameraClipManager:(id)a3;
- (void)addResidentDeviceObserver:(id)a3;
- (void)addSiriEndpointProfileObserver:(id)a3;
- (void)addSoftwareUpdateControllerObserver:(id)a3;
- (void)addSoftwareUpdateControllerV2Observer:(id)a3;
- (void)addSoftwareUpdateObserver:(id)a3;
- (void)addSymptomFixSessionObserver:(id)a3;
- (void)addSymptomsHandlerObserver:(id)a3;
- (void)addTelevisionObserver:(id)a3;
- (void)addUserObserver:(id)a3;
- (void)addWalletKeyDeviceStateObserver:(id)a3;
- (void)configureHomeStateStreamWithHome:(id)a3;
- (void)configureHomeStateStreamWithHomeManager:(id)a3;
- (void)dealloc;
- (void)disconnectDataModelDelegatesWithReason:(id)a3;
- (void)disconnectHomeStateStream;
- (void)dispatchAccessoryObserverMessage:(id)a3 sender:(id)a4;
- (void)dispatchAudioControlObserverMessage:(id)a3 sender:(id)a4;
- (void)dispatchCameraObserverMessage:(id)a3 sender:(id)a4;
- (void)dispatchHomeKitSettingMessage:(id)a3 sender:(id)a4;
- (void)dispatchHomeKitSettingsObserverMessage:(id)a3 sender:(id)a4;
- (void)dispatchHomeManagerObserverMessage:(id)a3 sender:(id)a4;
- (void)dispatchHomeObserverMessage:(id)a3 sender:(id)a4;
- (void)dispatchHomePersonManagerObserverMessage:(id)a3 sender:(id)a4;
- (void)dispatchLightObserverMessage:(id)a3 sender:(id)a4;
- (void)dispatchLightProfileUpdate:(id)a3 settings:(id)a4 error:(id)a5;
- (void)dispatchMediaDestinationControllerObserverMessage:(id)a3 sender:(id)a4;
- (void)dispatchMediaObjectObserverMessage:(id)a3 sender:(id)a4;
- (void)dispatchMediaSessionObserverMessage:(id)a3 sender:(id)a4;
- (void)dispatchNetworkConfigurationObserverMessage:(id)a3 sender:(id)a4;
- (void)dispatchSiriEndpointObserverMessage:(id)a3 sender:(id)a4;
- (void)dispatchSoftwareUpdateControllerMessage:(id)a3 sender:(id)a4;
- (void)dispatchSoftwareUpdateMessage:(id)a3 sender:(id)a4;
- (void)dispatchSymptomFixSessionObserverMessage:(id)a3 sender:(id)a4;
- (void)dispatchSymptomsHandlerMessage:(id)a3 sender:(id)a4;
- (void)dispatchTelevisionObserverMessage:(id)a3 sender:(id)a4;
- (void)dispatchUserObserverMessage:(id)a3 sender:(id)a4;
- (void)dispatchWalletKeyDeviceStateObserverMessage:(id)a3 sender:(id)a4;
- (void)fetchSettingsForLightProfiles:(id)a3;
- (void)homeManagerWasCreated:(id)a3;
- (void)installStateArbiter:(id)a3 installStateDidChange:(BOOL)a4;
- (void)reconnectDataModelDelegatesWithReason:(id)a3;
- (void)registerHomeStateStream;
- (void)removeAccessoryObserver:(id)a3;
- (void)removeAudioControlObserver:(id)a3;
- (void)removeCameraObserver:(id)a3;
- (void)removeDiagnosticInfoObserver:(id)a3;
- (void)removeHomeKitSettingsObserver:(id)a3;
- (void)removeHomeManagerObserver:(id)a3;
- (void)removeHomeObserver:(id)a3;
- (void)removeHomePersonManagerObserver:(id)a3;
- (void)removeLightObserver:(id)a3;
- (void)removeMediaDestinationControllerObserver:(id)a3;
- (void)removeMediaObjectObserver:(id)a3;
- (void)removeMediaProfileObserver:(id)a3;
- (void)removeMediaSessionObserver:(id)a3;
- (void)removeNetworkConfigurationObserver:(id)a3;
- (void)removeObservationForCameraClipManager:(id)a3;
- (void)removeResidentDeviceObserver:(id)a3;
- (void)removeSiriEndpointProfileObserver:(id)a3;
- (void)removeSoftwareUpdateControllerObserver:(id)a3;
- (void)removeSoftwareUpdateControllerV2Observer:(id)a3;
- (void)removeSoftwareUpdateObserver:(id)a3;
- (void)removeSymptomFixSessionObserver:(id)a3;
- (void)removeSymptomsHandlerObserver:(id)a3;
- (void)removeTelevisionObserver:(id)a3;
- (void)removeUserObserver:(id)a3;
- (void)removeWalletKeyDeviceStateObserver:(id)a3;
- (void)setHomeManagerAndUpdateDelegate:(id)a3;
- (void)setOverrideHome:(id)a3;
- (void)setSelectedHome:(id)a3 userInitiated:(BOOL)a4;
- (void)stateRestorationSettings:(id)a3 selectedHomeIdentifierDidUpdateExternally:(id)a4;
- (void)updateHome;
- (void)updateHomeManagerConfiguration:(id)a3;
- (void)updateHomeSensingState;
- (void)updateSelectedHome;
@end

@implementation HFHomeKitDispatcher

- (void)registerHomeStateStream
{
  v2 = self;
  HFHomeKitDispatcher.registerHomeStateStream()();
}

- (void)disconnectHomeStateStream
{
  v2 = self;
  HFHomeKitDispatcher.disconnectHomeStateStream()();
}

- (void)configureHomeStateStreamWithHomeManager:(id)a3
{
  v4 = sub_20DD639C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DD63B44();
  v11 = a3;
  if (sub_20DD639E4())
  {
    MEMORY[0x20F324A90]();
    (*(v5 + 104))(v8, *MEMORY[0x277D15390], v4);
    sub_20DD63AC4();

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v9 = v11;
  }
}

- (void)configureHomeStateStreamWithHome:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  sub_20DD63B44();
  v14 = a3;
  if (sub_20DD639E4())
  {
    sub_20DD63BB4();
    v8 = sub_20DD65114();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v10 = v14;
    *(v9 + 16) = v14;
    v11 = v10;
    sub_20DD63B94();

    sub_20D9D76EC(v7, &qword_27C8443F0, &qword_20DD93820);
  }

  else
  {
    v12 = v14;
  }
}

+ (void)initialize
{
  v2 = [MEMORY[0x277CD1A98] defaultPrivateConfiguration];
  v3 = qword_280E03DB8;
  qword_280E03DB8 = v2;

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

+ (void)setConfiguration:(id)a3
{
  if (a3)
  {
    v3 = [a3 copy];
  }

  else
  {
    v3 = [MEMORY[0x277CD1A98] defaultPrivateConfiguration];
  }

  v4 = qword_280E03DB8;
  qword_280E03DB8 = v3;
}

+ (id)sharedDispatcher
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__HFHomeKitDispatcher_sharedDispatcher__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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
    v5 = [MEMORY[0x277CBEB18] array];
    homePromises = v2->_homePromises;
    v2->_homePromises = v5;

    v7 = [MEMORY[0x277CBEB18] array];
    firstHomeAddedPromises = v2->_firstHomeAddedPromises;
    v2->_firstHomeAddedPromises = v7;

    v9 = [MEMORY[0x277CBEB18] array];
    allHomesPromises = v2->_allHomesPromises;
    v2->_allHomesPromises = v9;

    v11 = [MEMORY[0x277CBEB38] dictionary];
    remoteAccessStateByHomeID = v2->_remoteAccessStateByHomeID;
    v2->_remoteAccessStateByHomeID = v11;

    v2->_willAcceptHomeFutures = 0;
    v13 = objc_alloc_init(HFHomeKitPreferencesUtilities);
    v14 = [HFHomeManagerCreator alloc];
    v15 = +[HFExecutionEnvironment sharedInstance];
    v16 = [v15 hostProcess];
    v17 = [(HFHomeManagerCreator *)v14 initWithHostProcess:v16 configuration:qword_280E03DB8 homeStatus:v13 delegate:v2];
    [(HFHomeKitDispatcher *)v2 setHomeManagerCreator:v17];

    [(HFHomeKitDispatcher *)v2 _createHomeManagerIfNecessary];
    v18 = [(HFHomeKitDispatcher *)v2 allHomesFuture];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __27__HFHomeKitDispatcher_init__block_invoke;
    v34[3] = &unk_277DF9508;
    v19 = v2;
    v35 = v19;
    v20 = [v18 addSuccessBlock:v34];
    v21 = [(HFHomeKitDispatcher *)v19 _setupLocationSensingCoordinator];
    [(HFHomeKitDispatcher *)v19 setLocationCoordinatorSetupFuture:v21];

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

- (void)disconnectDataModelDelegatesWithReason:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v4;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Disabling data model delegates with reason: %@", &v17, 0xCu);
  }

  v6 = [MEMORY[0x277D16F78] shared];
  [(HFHomeKitDispatcher *)self removeHomeManagerObserver:v6];

  v7 = [MEMORY[0x277D16F78] shared];
  [(HFHomeKitDispatcher *)self removeHomeObserver:v7];

  v8 = [MEMORY[0x277D16F78] shared];
  [(HFHomeKitDispatcher *)self removeAccessoryObserver:v8];

  v9 = [MEMORY[0x277D16F78] shared];
  [(HFHomeKitDispatcher *)self removeMediaSessionObserver:v9];

  v10 = [MEMORY[0x277D16F78] shared];
  [(HFHomeKitDispatcher *)self removeMediaObjectObserver:v10];

  v11 = [MEMORY[0x277D16F78] shared];
  [(HFHomeKitDispatcher *)self removeResidentDeviceObserver:v11];

  v12 = [MEMORY[0x277D16F78] shared];
  [(HFHomeKitDispatcher *)self removeLightObserver:v12];

  v13 = [MEMORY[0x277D16F78] shared];
  [(HFHomeKitDispatcher *)self removeSoftwareUpdateObserver:v13];

  v14 = [MEMORY[0x277D16F78] shared];
  [(HFHomeKitDispatcher *)self removeSoftwareUpdateControllerV2Observer:v14];

  v15 = [MEMORY[0x277D16F78] shared];
  [(HFHomeKitDispatcher *)self removeSymptomsHandlerObserver:v15];

  [(HFHomeKitDispatcher *)self disconnectHomeStateStream];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)reconnectDataModelDelegatesWithReason:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([objc_opt_class() synchronizesHomeDataModel])
  {
    v5 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v4;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Enabling data model delegates with reason: %@", &v18, 0xCu);
    }

    v6 = [(HFHomeKitDispatcher *)self _dataModelContextForCurrentEnvironment];
    [MEMORY[0x277D16F78] setContext:v6];
    v7 = [MEMORY[0x277D16F78] shared];
    [(HFHomeKitDispatcher *)self addHomeManagerObserver:v7];

    v8 = [MEMORY[0x277D16F78] shared];
    [(HFHomeKitDispatcher *)self addHomeObserver:v8];

    v9 = [MEMORY[0x277D16F78] shared];
    [(HFHomeKitDispatcher *)self addAccessoryObserver:v9];

    v10 = [MEMORY[0x277D16F78] shared];
    [(HFHomeKitDispatcher *)self addMediaSessionObserver:v10];

    v11 = [MEMORY[0x277D16F78] shared];
    [(HFHomeKitDispatcher *)self addMediaObjectObserver:v11];

    v12 = [MEMORY[0x277D16F78] shared];
    [(HFHomeKitDispatcher *)self addResidentDeviceObserver:v12];

    v13 = [MEMORY[0x277D16F78] shared];
    [(HFHomeKitDispatcher *)self addLightObserver:v13];

    v14 = [MEMORY[0x277D16F78] shared];
    [(HFHomeKitDispatcher *)self addSoftwareUpdateObserver:v14];

    v15 = [MEMORY[0x277D16F78] shared];
    [(HFHomeKitDispatcher *)self addSoftwareUpdateControllerV2Observer:v15];

    v16 = [MEMORY[0x277D16F78] shared];
    [(HFHomeKitDispatcher *)self addSymptomsHandlerObserver:v16];

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
  v6 = [objc_opt_class() _defaultLogSettings];
  v7 = [v5 dispatcherWithProtocol:&unk_2825450E0 logSettings:v6];
  softwareUpdateObserverDispatcher = self->_softwareUpdateObserverDispatcher;
  self->_softwareUpdateObserverDispatcher = v7;

  if (!+[HFExecutionEnvironment isHomeWidgetRelatedProcess])
  {
    v9 = [[HFSoftwareUpdateManager alloc] initWithDispatcher:self];
    softwareUpdateManager = self->_softwareUpdateManager;
    self->_softwareUpdateManager = v9;
  }

  v11 = MEMORY[0x277D2C8E0];
  v12 = [objc_opt_class() _defaultLogSettings];
  v13 = [v11 dispatcherWithProtocol:&unk_282545C08 logSettings:v12];
  siriEndpointProfileObserverDispatcher = self->_siriEndpointProfileObserverDispatcher;
  self->_siriEndpointProfileObserverDispatcher = v13;

  [(HFHomeKitDispatcher *)self _setupSymptomFixSessionObserver];
  v15 = MEMORY[0x277D2C8E0];
  v16 = [objc_opt_class() _defaultLogSettings];
  v17 = [v15 dispatcherWithProtocol:&unk_282544AA0 logSettings:v16];
  audioControlObserverDispatcher = self->_audioControlObserverDispatcher;
  self->_audioControlObserverDispatcher = v17;

  v19 = MEMORY[0x277D2C8E0];
  v20 = [objc_opt_class() _defaultLogSettings];
  v21 = [v19 dispatcherWithProtocol:&unk_2825447B8 logSettings:v20];
  cameraObserverDispatcher = self->_cameraObserverDispatcher;
  self->_cameraObserverDispatcher = v21;

  v23 = MEMORY[0x277D2C8E0];
  v24 = [objc_opt_class() _defaultLogSettings];
  v25 = [v23 dispatcherWithProtocol:&unk_282545618 logSettings:v24];
  userObserverDispatcher = self->_userObserverDispatcher;
  self->_userObserverDispatcher = v25;

  v27 = MEMORY[0x277D2C8E0];
  v28 = [objc_opt_class() _defaultLogSettings];
  v29 = [v27 dispatcherWithProtocol:&unk_282545260 logSettings:v28];
  symptomsHandlerObserverDispatcher = self->_symptomsHandlerObserverDispatcher;
  self->_symptomsHandlerObserverDispatcher = v29;

  v31 = MEMORY[0x277D2C8E0];
  v32 = [objc_opt_class() _defaultLogSettings];
  v33 = [v31 dispatcherWithProtocol:&unk_282535CD0 logSettings:v32];
  homeKitSettingsObserverDispatcher = self->_homeKitSettingsObserverDispatcher;
  self->_homeKitSettingsObserverDispatcher = v33;

  v35 = MEMORY[0x277D2C8E0];
  v36 = [objc_opt_class() _defaultLogSettings];
  v37 = [v35 dispatcherWithProtocol:&unk_282544DB8 logSettings:v36];
  networkConfigurationObserverDispatcher = self->_networkConfigurationObserverDispatcher;
  self->_networkConfigurationObserverDispatcher = v37;

  v39 = MEMORY[0x277D2C8E0];
  v40 = [objc_opt_class() _defaultLogSettings];
  v41 = [v39 dispatcherWithProtocol:&unk_282545710 logSettings:v40];
  televisionObserverDispatcher = self->_televisionObserverDispatcher;
  self->_televisionObserverDispatcher = v41;

  v43 = MEMORY[0x277D2C8E0];
  v44 = [objc_opt_class() _defaultLogSettings];
  v45 = [v43 dispatcherWithProtocol:&unk_282545938 logSettings:v44];
  homePersonManagerDispatcher = self->_homePersonManagerDispatcher;
  self->_homePersonManagerDispatcher = v45;

  v47 = MEMORY[0x277D2C8E0];
  v48 = [objc_opt_class() _defaultLogSettings];
  v49 = [v47 dispatcherWithProtocol:&unk_282545F08 logSettings:v48];
  lightObserverDispatcher = self->_lightObserverDispatcher;
  self->_lightObserverDispatcher = v49;

  v51 = MEMORY[0x277D2C8E0];
  v52 = [objc_opt_class() _defaultLogSettings];
  v53 = [v51 dispatcherWithProtocol:&unk_2825460A0 logSettings:v52];
  walletKeyDeviceStateObserverDispatcher = self->_walletKeyDeviceStateObserverDispatcher;
  self->_walletKeyDeviceStateObserverDispatcher = v53;

  v55 = MEMORY[0x277D2C8E0];
  v56 = [objc_opt_class() _defaultLogSettings];
  v57 = [v55 dispatcherWithProtocol:&unk_282545DE0 logSettings:v56];
  mediaDestinationControllerObserverDispatcher = self->_mediaDestinationControllerObserverDispatcher;
  self->_mediaDestinationControllerObserverDispatcher = v57;

  if (__automaticallySynchronizesHomeDataModel == 1)
  {
    [(HFHomeKitDispatcher *)self reconnectDataModelDelegatesWithReason:@"HFHomeKitDispatcher._initializeObservers"];
  }

  if ([objc_opt_class() synchronizesHomeDataModel] && !+[HFExecutionEnvironment isCarousel](HFExecutionEnvironment, "isCarousel"))
  {
    v59 = +[HFExecutionEnvironment sharedInstance];
    v60 = [MEMORY[0x277D16F78] shared];
    [v59 addObserver:v60];

    v62 = [MEMORY[0x277D16F78] shared];
    v61 = +[HFExecutionEnvironment sharedInstance];
    [v62 executionEnvironmentRunningStateDidChange:v61];
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

+ (id)_logSettingsWithFormatter:(id)a3
{
  v3 = MEMORY[0x277D2C8E8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = HFLogForCategory(0x27uLL);
  v7 = [v5 initWithLog:v6 logType:0 argumentFormatter:v4];

  return v7;
}

- (void)_setupHomeManagerObserver
{
  objc_initWeak(&location, self);
  v4 = MEMORY[0x277D2C8E0];
  v5 = [objc_opt_class() _defaultLogSettings];
  v6 = [v4 dispatcherWithProtocol:&unk_28252CFC8 logSettings:v5];
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
  v4 = [objc_opt_class() _defaultLogSettings];
  v5 = [v3 dispatcherWithProtocol:&unk_282528678 logSettings:v4];
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
  v4 = [objc_opt_class() _volatileLogSettings];
  v5 = [v3 dispatcherWithProtocol:&unk_2825441E8 logSettings:v4];
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
  v4 = [objc_opt_class() _defaultLogSettings];
  v5 = [v3 dispatcherWithProtocol:&unk_28252D278 logSettings:v4];
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
  v4 = [objc_opt_class() _defaultLogSettings];
  v5 = [v3 dispatcherWithProtocol:&unk_282536018 logSettings:v4];
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
  v4 = [objc_opt_class() _defaultLogSettings];
  v5 = [v3 dispatcherWithProtocol:&unk_282544990 logSettings:v4];
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
  v4 = [objc_opt_class() _defaultLogSettings];
  v5 = [v3 dispatcherWithProtocol:&unk_282544EB8 logSettings:v4];
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
  v4 = [objc_opt_class() _defaultLogSettings];
  v5 = [v3 dispatcherWithProtocol:&unk_282526A00 logSettings:v4];
  softwareUpdateControllerV2ObserverDispatcher = self->_softwareUpdateControllerV2ObserverDispatcher;
  self->_softwareUpdateControllerV2ObserverDispatcher = v5;

  v10 = [(HFHomeKitDispatcher *)self softwareUpdateControllerV2ObserverDispatcher];
  v7 = [v10 proxy];
  v8 = [(HFHomeKitDispatcher *)self home];
  v9 = [v8 softwareUpdateController];
  [v9 setDelegate:v7];
}

- (void)_setSoftwareUpateControllerV2DelegationEnabled:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v8 = [(HFHomeKitDispatcher *)self softwareUpdateControllerV2ObserverDispatcher];
    v5 = [v8 proxy];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(HFHomeKitDispatcher *)self home];
  v7 = [v6 softwareUpdateController];
  [v7 setDelegate:v5];

  if (v3)
  {
  }

  else
  {
    v8 = [(HFHomeKitDispatcher *)self softwareUpdateManager];
    [v8 resetCaches];
  }
}

- (void)_setupSymptomFixSessionObserver
{
  v3 = MEMORY[0x277D2C8E0];
  v4 = [objc_opt_class() _defaultLogSettings];
  v5 = [v3 dispatcherWithProtocol:&unk_282545C98 logSettings:v4];
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
  v3 = [(HFHomeKitDispatcher *)self homeManager];

  if (!v3)
  {
    v4 = [(HFHomeKitDispatcher *)self homeManagerCreator];
    v5 = [v4 canCreateHomeManager];

    if (v5)
    {
      v6 = [(HFHomeKitDispatcher *)self homeManagerCreator];
      v7 = [v6 createHomeManagerIfNeeded];

      if (v7)
      {
        [(HFHomeKitDispatcher *)self setHomeManagerAndUpdateDelegate:v7];
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

    [(HFHomeKitDispatcher *)self setWillAcceptHomeFutures:v5];
  }
}

- (void)setHomeManagerAndUpdateDelegate:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v5;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Setting home manager to %@ and awaiting home update", &v14, 0xCu);
  }

  self->_hasLoadedHomes = 0;
  home = self->_home;
  self->_home = 0;

  overrideHome = self->_overrideHome;
  self->_overrideHome = 0;

  selectedHome = self->_selectedHome;
  self->_selectedHome = 0;

  objc_storeStrong(&self->_homeManager, a3);
  self->_willAcceptHomeFutures = v5 != 0;
  if ([objc_opt_class() synchronizesHomeDataModel])
  {
    v10 = [MEMORY[0x277D16F78] shared];
    [v10 setHomeManager:v5];

    [(HFHomeKitDispatcher *)self configureHomeStateStreamWithHomeManager:v5];
  }

  v11 = [(HFHomeKitDispatcher *)self homeManagerObserverDispatcher];
  v12 = [v11 proxy];
  [(HMHomeManager *)self->_homeManager setDelegate:v12];

  if (!v5)
  {
    [(HFHomeKitDispatcher *)self _initializeObservers];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateHomeManagerConfiguration:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[HFHomeKitDispatcher configuration];
  v6 = [v5 options];
  v7 = [v4 options];

  if (v6 != v7)
  {
    v8 = HFLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      [v4 options];
      v9 = HMHomeManagerOptionsToString();
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Updating Home Manager configuration with options [%@]", &v14, 0xCu);
    }

    [HFHomeKitDispatcher setConfiguration:v4];
    v10 = [(HFHomeKitDispatcher *)self homeManagerCreator];
    [v10 setConfiguration:v4];

    v11 = [(HFHomeKitDispatcher *)self homeManagerCreator];
    v12 = [v11 createHomeManagerIfNeeded];

    if (v12)
    {
      [(HFHomeKitDispatcher *)self setHomeManagerAndUpdateDelegate:v12];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)homeManagerWasCreated:(id)a3
{
  [(HFHomeKitDispatcher *)self setHomeManagerAndUpdateDelegate:a3];
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

- (void)addHomeManagerObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self homeManagerObserverDispatcher];
  [v5 addObserver:v4];
}

- (void)removeHomeManagerObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self homeManagerObserverDispatcher];
  [v5 removeObserver:v4];
}

- (void)addHomeObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self homeObserverDispatcher];
  [v5 addObserver:v4];
}

- (void)removeHomeObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self homeObserverDispatcher];
  [v5 removeObserver:v4];
}

- (void)addAccessoryObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self accessoryObserverDispatcher];
  [v5 addObserver:v4];
}

- (void)removeAccessoryObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self accessoryObserverDispatcher];
  [v5 removeObserver:v4];
}

- (void)addResidentDeviceObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self residentDeviceObserverDispatcher];
  [v5 addObserver:v4];
}

- (void)removeResidentDeviceObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self residentDeviceObserverDispatcher];
  [v5 removeObserver:v4];
}

- (void)addCameraObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self cameraObserverDispatcher];
  [v5 addObserver:v4];
}

- (void)removeCameraObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self cameraObserverDispatcher];
  [v5 removeObserver:v4];
}

- (void)addMediaObjectObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self mediaObjectObserverDispatcher];
  [v5 addObserver:v4];
}

- (void)removeMediaObjectObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self mediaObjectObserverDispatcher];
  [v5 removeObserver:v4];
}

- (void)addMediaProfileObserver:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a2);
    v9 = 138412290;
    v10 = v8;
    _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "This selector, %@, has been deprecated! Please move to addMediaObjectObserver: and move to HFMediaObjectObserver away from HFMediaProfileObserver!", &v9, 0xCu);
  }

  [(HFHomeKitDispatcher *)self addMediaObjectObserver:v5];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeMediaProfileObserver:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a2);
    v9 = 138412290;
    v10 = v8;
    _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "This selector, %@, has been deprecated! Please move to removeMediaObjectObserver: and move to HFMediaObjectObserver away from HFMediaProfileObserver!", &v9, 0xCu);
  }

  [(HFHomeKitDispatcher *)self removeMediaObjectObserver:v5];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)addMediaSessionObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self mediaSessionObserverDispatcher];
  [v5 addObserver:v4];
}

- (void)removeMediaSessionObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self mediaSessionObserverDispatcher];
  [v5 removeObserver:v4];
}

- (void)addSiriEndpointProfileObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self siriEndpointProfileObserverDispatcher];
  [v5 addObserver:v4];
}

- (void)removeSiriEndpointProfileObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self siriEndpointProfileObserverDispatcher];
  [v5 removeObserver:v4];
}

- (void)addAudioControlObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self audioControlObserverDispatcher];
  [v5 addObserver:v4];
}

- (void)removeAudioControlObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self audioControlObserverDispatcher];
  [v5 removeObserver:v4];
}

- (void)addHomeKitSettingsObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self homeKitSettingsObserverDispatcher];
  [v5 addObserver:v4];
}

- (void)removeHomeKitSettingsObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self homeKitSettingsObserverDispatcher];
  [v5 removeObserver:v4];
}

- (void)addNetworkConfigurationObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self networkConfigurationObserverDispatcher];
  [v5 addObserver:v4];
}

- (void)removeNetworkConfigurationObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self networkConfigurationObserverDispatcher];
  [v5 removeObserver:v4];
}

- (void)addSymptomFixSessionObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self symptomFixSessionObserverDispatcher];
  [v5 addObserver:v4];
}

- (void)removeSymptomFixSessionObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self symptomFixSessionObserverDispatcher];
  [v5 removeObserver:v4];
}

- (void)addSoftwareUpdateControllerObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self softwareUpdateControllerObserverDispatcher];
  [v5 addObserver:v4];
}

- (void)removeSoftwareUpdateControllerObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self softwareUpdateControllerObserverDispatcher];
  [v5 removeObserver:v4];
}

- (void)addSoftwareUpdateObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self softwareUpdateObserverDispatcher];
  [v5 addObserver:v4];
}

- (void)removeSoftwareUpdateObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self softwareUpdateObserverDispatcher];
  [v5 removeObserver:v4];
}

- (void)addSoftwareUpdateControllerV2Observer:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self softwareUpdateControllerV2ObserverDispatcher];
  [v5 addObserver:v4];
}

- (void)removeSoftwareUpdateControllerV2Observer:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self softwareUpdateControllerV2ObserverDispatcher];
  [v5 removeObserver:v4];
}

- (void)addUserObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self userObserverDispatcher];
  [v5 addObserver:v4];
}

- (void)removeUserObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self userObserverDispatcher];
  [v5 removeObserver:v4];
}

- (void)addSymptomsHandlerObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self symptomsHandlerObserverDispatcher];
  [v5 addObserver:v4];
}

- (void)removeSymptomsHandlerObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self symptomsHandlerObserverDispatcher];
  [v5 removeObserver:v4];
}

- (void)addTelevisionObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self televisionObserverDispatcher];
  [v5 addObserver:v4];
}

- (void)removeTelevisionObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self televisionObserverDispatcher];
  [v5 removeObserver:v4];
}

- (void)addHomePersonManagerObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self homePersonManagerDispatcher];
  [v5 addObserver:v4];
}

- (void)removeHomePersonManagerObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self homePersonManagerDispatcher];
  [v5 removeObserver:v4];
}

- (void)addMediaDestinationControllerObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self mediaDestinationControllerObserverDispatcher];
  [v5 addObserver:v4];
}

- (void)removeMediaDestinationControllerObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self mediaDestinationControllerObserverDispatcher];
  [v5 removeObserver:v4];
}

- (void)addLightObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self lightObserverDispatcher];
  [v5 addObserver:v4];
}

- (void)removeLightObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self lightObserverDispatcher];
  [v5 removeObserver:v4];
}

- (void)addWalletKeyDeviceStateObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self walletKeyDeviceStateObserverDispatcher];
  [v5 addObserver:v4];
}

- (void)removeWalletKeyDeviceStateObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self walletKeyDeviceStateObserverDispatcher];
  [v5 removeObserver:v4];
}

- (void)addDiagnosticInfoObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self diagnosticInfoManager];
  [v5 addObserver:v4];
}

- (void)removeDiagnosticInfoObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self diagnosticInfoManager];
  [v5 removeObserver:v4];
}

- (void)dispatchHomeManagerObserverMessage:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFHomeKitDispatcher *)self homeManagerObserverDispatcher];
  [v8 dispatchMessageExcludingSender:v6 usingBlock:v7];
}

- (void)dispatchHomeObserverMessage:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFHomeKitDispatcher *)self homeObserverDispatcher];
  [v8 dispatchMessageExcludingSender:v6 usingBlock:v7];
}

- (void)dispatchAccessoryObserverMessage:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFHomeKitDispatcher *)self accessoryObserverDispatcher];
  [v8 dispatchMessageExcludingSender:v6 usingBlock:v7];
}

- (void)dispatchCameraObserverMessage:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFHomeKitDispatcher *)self cameraObserverDispatcher];
  [v8 dispatchMessageExcludingSender:v6 usingBlock:v7];
}

- (void)dispatchMediaSessionObserverMessage:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFHomeKitDispatcher *)self mediaSessionObserverDispatcher];
  [v8 dispatchMessageExcludingSender:v6 usingBlock:v7];
}

- (void)dispatchAudioControlObserverMessage:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFHomeKitDispatcher *)self audioControlObserverDispatcher];
  [v8 dispatchMessageExcludingSender:v6 usingBlock:v7];
}

- (void)dispatchMediaObjectObserverMessage:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFHomeKitDispatcher *)self mediaObjectObserverDispatcher];
  [v8 dispatchMessageExcludingSender:v6 usingBlock:v7];
}

- (void)dispatchHomeKitSettingMessage:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFHomeKitDispatcher *)self homeKitSettingsObserverDispatcher];
  [v8 dispatchMessageExcludingSender:v6 usingBlock:v7];
}

- (void)dispatchSiriEndpointObserverMessage:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFHomeKitDispatcher *)self siriEndpointProfileObserverDispatcher];
  [v8 dispatchMessageExcludingSender:v6 usingBlock:v7];
}

- (void)dispatchSymptomFixSessionObserverMessage:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFHomeKitDispatcher *)self symptomFixSessionObserverDispatcher];
  [v8 dispatchMessageExcludingSender:v6 usingBlock:v7];
}

- (void)dispatchSoftwareUpdateControllerMessage:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFHomeKitDispatcher *)self softwareUpdateControllerObserverDispatcher];
  [v8 dispatchMessageExcludingSender:v6 usingBlock:v7];
}

- (void)dispatchSoftwareUpdateMessage:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFHomeKitDispatcher *)self softwareUpdateObserverDispatcher];
  [v8 dispatchMessageExcludingSender:v6 usingBlock:v7];
}

- (void)dispatchSymptomsHandlerMessage:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFHomeKitDispatcher *)self symptomsHandlerObserverDispatcher];
  [v8 dispatchMessageExcludingSender:v6 usingBlock:v7];
}

- (void)dispatchUserObserverMessage:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFHomeKitDispatcher *)self userObserverDispatcher];
  [v8 dispatchMessageExcludingSender:v6 usingBlock:v7];
}

- (void)dispatchTelevisionObserverMessage:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFHomeKitDispatcher *)self televisionObserverDispatcher];
  [v8 dispatchMessageExcludingSender:v6 usingBlock:v7];
}

- (void)dispatchLightObserverMessage:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFHomeKitDispatcher *)self lightObserverDispatcher];
  [v8 dispatchMessageExcludingSender:v6 usingBlock:v7];
}

- (void)dispatchWalletKeyDeviceStateObserverMessage:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFHomeKitDispatcher *)self walletKeyDeviceStateObserverDispatcher];
  [v8 dispatchMessageExcludingSender:v6 usingBlock:v7];
}

- (void)dispatchHomeKitSettingsObserverMessage:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFHomeKitDispatcher *)self homeKitSettingsObserverDispatcher];
  [v8 dispatchMessageExcludingSender:v6 usingBlock:v7];
}

- (void)dispatchNetworkConfigurationObserverMessage:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFHomeKitDispatcher *)self networkConfigurationObserverDispatcher];
  [v8 dispatchMessageExcludingSender:v6 usingBlock:v7];
}

- (void)dispatchHomePersonManagerObserverMessage:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFHomeKitDispatcher *)self homePersonManagerDispatcher];
  [v8 dispatchMessageExcludingSender:v6 usingBlock:v7];
}

- (void)dispatchMediaDestinationControllerObserverMessage:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFHomeKitDispatcher *)self mediaDestinationControllerObserverDispatcher];
  [v8 dispatchMessageExcludingSender:v6 usingBlock:v7];
}

- (void)updateHome
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(HFHomeKitDispatcher *)self overrideHome];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(HFHomeKitDispatcher *)self selectedHome];
  }

  v6 = v5;

  v7 = [(HFHomeKitDispatcher *)self home];
  v8 = [v7 uniqueIdentifier];
  v9 = [v6 uniqueIdentifier];
  v10 = [v8 isEqual:v9];

  if ((v10 & 1) == 0)
  {
    [(HFHomeKitDispatcher *)self _setDelegationEnabledForObjectsInCurrentHome:0];
    v11 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412546;
      v28 = v6;
      v29 = 1024;
      v30 = [objc_opt_class() synchronizesHomeDataModel];
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Updating dispatcher home to %@. synchronizesHomeDataModel is %{BOOL}d", &v27, 0x12u);
    }

    [(HFHomeKitDispatcher *)self setHome:v6];
    [(HFHomeKitDispatcher *)self _setDelegationEnabledForObjectsInCurrentHome:1];
    v12 = [(HFHomeKitDispatcher *)self home];

    if (v12)
    {
      v13 = [(HFHomeKitDispatcher *)self firstHomeAddedPromises];
      [(HFHomeKitDispatcher *)self _finishFirstHomeAddedPromises:v13];

      v14 = [(HFHomeKitDispatcher *)self firstHomeAddedPromises];
      [v14 removeAllObjects];
    }

    if ([(HFHomeKitDispatcher *)self hasLoadedHomes])
    {
      v15 = [(HFHomeKitDispatcher *)self homeManagerObserverDispatcher];
      v16 = [v15 proxy];
      v17 = [(HFHomeKitDispatcher *)self homeManager];
      v18 = [(HFHomeKitDispatcher *)self home];
      [v16 homeKitDispatcher:self manager:v17 didChangeHome:v18];
    }

    v19 = MEMORY[0x277CBEB98];
    v20 = [(HFHomeKitDispatcher *)self home];
    v21 = [v20 hf_allLightProfiles];
    v22 = [v19 setWithArray:v21];

    [(HFHomeKitDispatcher *)self fetchSettingsForLightProfiles:v22];
  }

  if ([objc_opt_class() synchronizesHomeDataModel])
  {
    v23 = [(HFHomeKitDispatcher *)self home];
    v24 = [MEMORY[0x277D16F78] shared];
    [v24 setCurrentHome:v23];

    v25 = [(HFHomeKitDispatcher *)self home];
    [(HFHomeKitDispatcher *)self configureHomeStateStreamWithHome:v25];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)setSelectedHome:(id)a3 userInitiated:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMHome *)self->_selectedHome uniqueIdentifier];
  [(HFHomeKitDispatcher *)self _requestSelectedHome:v6];
  if (v4)
  {
    if ([(HFHomeKitDispatcher *)self _shouldPersistSelectedHomeToDefaults])
    {
      v8 = [(HMHome *)self->_selectedHome uniqueIdentifier];
      v9 = [v7 isEqual:v8];

      if ((v9 & 1) == 0)
      {
        v10 = +[HFStateRestorationSettings sharedInstance];
        [v10 syncToNanoPrefs];

        v11 = HFLogForCategory(0x2DuLL);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [(HMHome *)self->_selectedHome name];
          v13 = [(HMHome *)self->_selectedHome uniqueIdentifier];
          v14 = [v13 UUIDString];
          v17 = 138478083;
          v18 = v12;
          v19 = 2114;
          v20 = v14;
          _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "User initiated change to home: %{private}@ %{public}@", &v17, 0x16u);
        }

        notify_post(HFHomeSelectedHomeChangedNotification);
        if ([objc_opt_class() synchronizesHomeDataModel])
        {
          v15 = [MEMORY[0x277D16F78] shared];
          [v15 setCurrentHome:v6];

          [(HFHomeKitDispatcher *)self configureHomeStateStreamWithHome:v6];
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)setSelectedHomeWithName:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self homeManager];
  v6 = [v5 homes];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__HFHomeKitDispatcher_setSelectedHomeWithName___block_invoke;
  v10[3] = &unk_277DF5E78;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

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

- (void)_requestSelectedHome:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HMHome *)v4 name];
    v7 = [(HMHome *)v4 uniqueIdentifier];
    v42 = 138478083;
    v43 = v6;
    v44 = 2114;
    v45 = v7;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "_requestSelectedHome %{private}@ %{public}@", &v42, 0x16u);
  }

  v8 = [(HFHomeKitDispatcher *)self homeManager];
  v9 = [v8 currentAccessory];

  v10 = v4;
  if (v9)
  {
    v11 = [(HFHomeKitDispatcher *)self homeManager];
    v12 = [v11 currentAccessory];
    v13 = [v12 home];

    if (v13 != v4)
    {
      v14 = HFLogForCategory(0x27uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v40 = [(HMHome *)v4 name];
        v41 = [(HMHome *)v4 uniqueIdentifier];
        v42 = 138478083;
        v43 = v40;
        v44 = 2114;
        v45 = v41;
        _os_log_error_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_ERROR, "Current accessory set, Ignoring requested home - %{private}@ %{public}@", &v42, 0x16u);
      }
    }

    v15 = [(HFHomeKitDispatcher *)self homeManager];
    v16 = [v15 currentAccessory];
    v10 = [v16 home];

    v17 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(HMHome *)v4 name];
      v19 = [(HMHome *)v4 uniqueIdentifier];
      v42 = 138478083;
      v43 = v18;
      v44 = 2114;
      v45 = v19;
      _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "Selected home defaulting to currentAccessory Home - %{private}@ %{public}@", &v42, 0x16u);
    }
  }

  if (!v10)
  {
    v10 = [(HFHomeKitDispatcher *)self _primaryHome];
    v20 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(HMHome *)v4 name];
      v22 = [(HMHome *)v4 uniqueIdentifier];
      v42 = 138478083;
      v43 = v21;
      v44 = 2114;
      v45 = v22;
      _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "Selected home not specified - using primary home %{private}@ %{public}@", &v42, 0x16u);
    }

    if (!v10)
    {
      v23 = [(HFHomeKitDispatcher *)self homeManager];
      v24 = [v23 homes];
      v10 = [v24 firstObject];

      v25 = HFLogForCategory(0x27uLL);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [(HMHome *)v4 name];
        v27 = [(HMHome *)v4 uniqueIdentifier];
        v42 = 138478083;
        v43 = v26;
        v44 = 2114;
        v45 = v27;
        _os_log_impl(&dword_20D9BF000, v25, OS_LOG_TYPE_DEFAULT, "Primary home not specified - using first home %{private}@ %{public}@", &v42, 0x16u);
      }
    }
  }

  if (v10 != self->_selectedHome)
  {
    v28 = [(HMHome *)v10 uniqueIdentifier];
    v29 = [(HMHome *)self->_selectedHome uniqueIdentifier];
    v30 = [v28 isEqual:v29];

    if ((v30 & 1) == 0)
    {
      v31 = HFLogForCategory(0x27uLL);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [(HMHome *)v10 name];
        v33 = [(HMHome *)v10 uniqueIdentifier];
        v42 = 138478083;
        v43 = v32;
        v44 = 2114;
        v45 = v33;
        _os_log_impl(&dword_20D9BF000, v31, OS_LOG_TYPE_DEFAULT, "Selected home is now %{private}@ %{public}@", &v42, 0x16u);
      }

      objc_storeStrong(&self->_selectedHome, v10);
      if ([(HFHomeKitDispatcher *)self _shouldPersistSelectedHomeToDefaults]&& !+[HFUtilities isInternalTest])
      {
        v34 = HFLogForCategory(0x27uLL);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [(HMHome *)v10 name];
          v36 = [(HMHome *)v10 uniqueIdentifier];
          v42 = 138478083;
          v43 = v35;
          v44 = 2114;
          v45 = v36;
          _os_log_impl(&dword_20D9BF000, v34, OS_LOG_TYPE_DEFAULT, "Notifying local clients of selected home change and saving to preferences %{private}@ %{public}@", &v42, 0x16u);
        }

        v37 = [(HMHome *)v10 uniqueIdentifier];
        v38 = +[HFStateRestorationSettings sharedInstance];
        [v38 setSelectedHomeIdentifier:v37];
      }

      [(HFHomeKitDispatcher *)self updateHome];
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)setOverrideHome:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Override home is now %@", &v8, 0xCu);
  }

  overrideHome = self->_overrideHome;
  self->_overrideHome = v4;

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
      v9 = [(HFHomeKitDispatcher *)self homePromises];
      [v9 addObject:v4];
    }

    v6 = [v4 future];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NAFuture)firstHomeAddedFuture
{
  v11[1] = *MEMORY[0x277D85DE8];
  if ([(HFHomeKitDispatcher *)self willAcceptHomeFutures])
  {
    v3 = [(HFHomeKitDispatcher *)self home];

    v4 = objc_alloc_init(MEMORY[0x277D2C918]);
    v5 = v4;
    if (v3)
    {
      v11[0] = v4;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
      [(HFHomeKitDispatcher *)self _finishFirstHomeAddedPromises:v6];
    }

    else
    {
      v8 = [(HFHomeKitDispatcher *)self firstHomeAddedPromises];
      [v8 addObject:v5];
    }

    v7 = [v5 future];
  }

  else
  {
    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NAFuture)allHomesFuture
{
  v11[1] = *MEMORY[0x277D85DE8];
  if ([(HFHomeKitDispatcher *)self willAcceptHomeFutures])
  {
    v3 = [(HFHomeKitDispatcher *)self hasLoadedHomes];
    v4 = objc_alloc_init(MEMORY[0x277D2C918]);
    v5 = v4;
    if (v3)
    {
      v11[0] = v4;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
      [(HFHomeKitDispatcher *)self _finishAllHomesPromises:v6];
    }

    else
    {
      v8 = [(HFHomeKitDispatcher *)self allHomesPromises];
      [v8 addObject:v5];
    }

    v7 = [v5 future];
  }

  else
  {
    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)homeFutureWithUser:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self allHomesFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__HFHomeKitDispatcher_homeFutureWithUser___block_invoke;
  v9[3] = &unk_277DF5938;
  v10 = v4;
  v6 = v4;
  v7 = [v5 flatMap:v9];

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

- (id)userFutureWithUniqueIdentifierStr:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self allHomesFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__HFHomeKitDispatcher_userFutureWithUniqueIdentifierStr___block_invoke;
  v9[3] = &unk_277DF5938;
  v10 = v4;
  v6 = v4;
  v7 = [v5 flatMap:v9];

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
  v3 = [(HFHomeKitDispatcher *)self locationCoordinator];

  if (v3)
  {
    v4 = [(HFHomeKitDispatcher *)self locationCoordinator];
    v5 = [v4 locationSensingAvailableFuture];
  }

  else
  {
    v5 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC28]];
  }

  return v5;
}

- (BOOL)selectedHomeFollowsLocation
{
  v2 = [(HFHomeKitDispatcher *)self locationCoordinator];
  v3 = [v2 homeSensingEnabled];

  return v3;
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
    v4 = [v3 homeAppInstalledFuture];
    v5 = [MEMORY[0x277D0F8F0] mainScheduler];
    v6 = [v4 reschedule:v5];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__HFHomeKitDispatcher__setupLocationSensingCoordinator__block_invoke_610;
    v10[3] = &unk_277DF8540;
    objc_copyWeak(&v11, &location);
    v7 = [v6 flatMap:v10];
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

    v7 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v7;
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

- (id)pinCodeManagerForHome:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self pinCodeManager];
  v6 = [v5 home];
  v7 = [v6 uniqueIdentifier];
  v8 = [v4 uniqueIdentifier];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = [(HFHomeKitDispatcher *)self pinCodeManager];
  }

  else
  {
    v10 = [[HFPinCodeManager alloc] initWithHome:v4];
    v11 = [(HFHomeKitDispatcher *)self home];
    v12 = [v11 uniqueIdentifier];
    v13 = [v4 uniqueIdentifier];
    v14 = [v12 isEqual:v13];

    if (v14)
    {
      [(HFHomeKitDispatcher *)self setPinCodeManager:v10];
    }
  }

  return v10;
}

- (id)securityActivityLogCoordinatorForHome:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self securityActivityLogCoordinator];
  v6 = [v5 home];
  v7 = [v6 uniqueIdentifier];
  v8 = [v4 uniqueIdentifier];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = [(HFHomeKitDispatcher *)self securityActivityLogCoordinator];
  }

  else
  {
    v10 = [[HFActivityLogCoordinator alloc] initWithHome:v4 targetKind:0];
    v11 = [(HFHomeKitDispatcher *)self home];
    v12 = [v11 uniqueIdentifier];
    v13 = [v4 uniqueIdentifier];
    v14 = [v12 isEqual:v13];

    if (v14)
    {
      [(HFHomeKitDispatcher *)self setSecurityActivityLogCoordinator:v10];
    }
  }

  return v10;
}

- (id)climateActivityLogCoordinatorForHome:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self climateActivityLogCoordinator];
  v6 = [v5 home];
  v7 = [v6 uniqueIdentifier];
  v8 = [v4 uniqueIdentifier];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = [(HFHomeKitDispatcher *)self climateActivityLogCoordinator];
  }

  else
  {
    v10 = [[HFActivityLogCoordinator alloc] initWithHome:v4 targetKind:1];
    v11 = [(HFHomeKitDispatcher *)self home];
    v12 = [v11 uniqueIdentifier];
    v13 = [v4 uniqueIdentifier];
    v14 = [v12 isEqual:v13];

    if (v14)
    {
      [(HFHomeKitDispatcher *)self setClimateActivityLogCoordinator:v10];
    }
  }

  return v10;
}

- (void)updateSelectedHome
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = [(HFHomeKitDispatcher *)self homeManager];
  v4 = [v3 currentAccessory];
  v5 = [v4 home];

  if (v5)
  {
    v6 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(HFHomeKitDispatcher *)self homeManager];
      v8 = [v7 currentAccessory];
      v9 = [(HFHomeKitDispatcher *)self homeManager];
      v10 = [v9 currentAccessory];
      v11 = [v10 home];
      *buf = 138413058;
      v41 = self;
      v42 = 2080;
      v43 = "[HFHomeKitDispatcher updateSelectedHome]";
      v44 = 2112;
      v45 = v8;
      v46 = 2112;
      v47 = v11;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "(%@:%s) selected home is currentAccessory %@ home %@", buf, 0x2Au);
    }

    v12 = [(HFHomeKitDispatcher *)self homeManager];
    v13 = [v12 currentAccessory];
    v14 = [v13 home];
    v15 = [v14 uniqueIdentifier];

LABEL_5:
    goto LABEL_6;
  }

  if ([(HFHomeKitDispatcher *)self selectedHomeFollowsLocation])
  {
    if (([objc_opt_class() allowHomeSensingOverride] & 1) == 0)
    {
      v25 = [(HFHomeKitDispatcher *)self homeManager];
      v26 = [v25 currentHome];

      if (v26)
      {
        v27 = HFLogForCategory(0x27uLL);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [(HFHomeKitDispatcher *)self homeManager];
          v29 = [v28 currentHome];
          v30 = [v29 name];
          v31 = [(HFHomeKitDispatcher *)self homeManager];
          v32 = [v31 currentHome];
          v33 = [v32 uniqueIdentifier];
          *buf = 138413059;
          v41 = self;
          v42 = 2080;
          v43 = "[HFHomeKitDispatcher updateSelectedHome]";
          v44 = 2113;
          v45 = v30;
          v46 = 2114;
          v47 = v33;
          _os_log_impl(&dword_20D9BF000, v27, OS_LOG_TYPE_DEFAULT, "(%@:%s) selected home is current home %{private}@ %{public}@", buf, 0x2Au);
        }

        v12 = [(HFHomeKitDispatcher *)self homeManager];
        v13 = [v12 currentHome];
        v15 = [v13 uniqueIdentifier];
        goto LABEL_5;
      }
    }
  }

  v35 = +[HFStateRestorationSettings sharedInstance];
  v15 = [v35 selectedHomeIdentifier];

  v12 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v41 = self;
    v42 = 2080;
    v43 = "[HFHomeKitDispatcher updateSelectedHome]";
    v44 = 2114;
    v45 = v15;
    _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "(%@:%s) selected home is synced identifier %{public}@", buf, 0x20u);
  }

LABEL_6:

  if (v15)
  {
    v16 = [(HFHomeKitDispatcher *)self homeManager];
    v17 = [v16 homes];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __41__HFHomeKitDispatcher_updateSelectedHome__block_invoke;
    v38[3] = &unk_277DF5E78;
    v18 = v15;
    p_super = &v18->super;
    v19 = [v17 na_firstObjectPassingTest:v38];

    v20 = HFLogForCategory(0x27uLL);
    v21 = v20;
    if (v19)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v19 name];
        v23 = [v19 uniqueIdentifier];
        *buf = 138478083;
        v41 = v22;
        v42 = 2114;
        v43 = v23;
        _os_log_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_DEFAULT, "Loaded synced selected home %{private}@ %{public}@", buf, 0x16u);
      }

      v24 = p_super;
      goto LABEL_26;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v41 = v18;
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

  v19 = [(HFHomeKitDispatcher *)self _primaryHome];
  if (!v19)
  {
    v24 = [(HFHomeKitDispatcher *)self homeManager];
    v36 = [v24 homes];
    v19 = [v36 firstObject];

LABEL_26:
  }

  [(HFHomeKitDispatcher *)self _requestSelectedHome:v19];

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t __41__HFHomeKitDispatcher_updateSelectedHome__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueIdentifier];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (void)_handleHomeManagerDidUpdateHomes:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 currentHome];
    v7 = [v6 name];
    v8 = [v4 currentHome];
    v9 = [v8 uniqueIdentifier];
    *buf = 138412803;
    v52 = v4;
    v53 = 2113;
    v54 = v7;
    v55 = 2114;
    v56 = v9;
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
    v11 = [(HFHomeKitDispatcher *)self homeManagerObserverDispatcher];
    v12 = [v11 observers];

    v13 = [v12 countByEnumeratingWithState:&v44 objects:v50 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v44 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v17 homeManagerDidFinishUnknownChange:v4];
          }

          else if (objc_opt_respondsToSelector())
          {
            [v17 homeManagerDidUpdateHomes:v4];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v44 objects:v50 count:16];
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
    v19 = [(HFHomeKitDispatcher *)self homePromises];
    [(HFHomeKitDispatcher *)self _finishHomePromises:v19];

    v20 = [(HFHomeKitDispatcher *)self homePromises];
    [v20 removeAllObjects];

    v21 = [(HFHomeKitDispatcher *)self allHomesPromises];
    [(HFHomeKitDispatcher *)self _finishAllHomesPromises:v21];

    v22 = [(HFHomeKitDispatcher *)self allHomesPromises];
    [v22 removeAllObjects];

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
    v24 = [(HFHomeKitDispatcher *)self homeManagerObserverDispatcher];
    v25 = [v24 observers];

    v26 = [v25 countByEnumeratingWithState:&v40 objects:v49 count:16];
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
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v40 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v30 homeManagerDidFinishInitialDatabaseLoad:v4];
          }

          else if (objc_opt_respondsToSelector())
          {
            [v30 homeManagerDidUpdateHomes:v4];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v27);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v12 = [v4 homes];
    v31 = [v12 countByEnumeratingWithState:&v36 objects:v48 count:16];
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
            objc_enumerationMutation(v12);
          }

          [(HFHomeKitDispatcher *)self _updateRemoteAccessStateForHome:*(*(&v36 + 1) + 8 * k) notifyingObservers:0];
        }

        v32 = [v12 countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v32);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_updateRemoteAccessStateForHome:(id)a3 notifyingObservers:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (v7)
  {
    v8 = [(HFHomeKitDispatcher *)self remoteAccessStateByHomeID];
    v9 = [v7 uniqueIdentifier];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = [v7 hf_remoteAccessState];
    if (!v10 || [v10 integerValue] != v11)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
      v13 = [(HFHomeKitDispatcher *)self remoteAccessStateByHomeID];
      v14 = [v7 uniqueIdentifier];
      [v13 setObject:v12 forKeyedSubscript:v14];

      if (v4)
      {
        v15 = [(HFHomeKitDispatcher *)self homeObserverDispatcher];
        v16 = [v15 proxy];
        [v16 home:v7 remoteAccessStateDidChange:v11];
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
      v21 = self;
      v22 = 2112;
      v23 = v19;
      _os_log_error_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_ERROR, "%@:%@: Unexpected nil home", &v20, 0x16u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_finishHomePromises:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [(HFHomeKitDispatcher *)self home];

        if (v10)
        {
          v11 = [(HFHomeKitDispatcher *)self home];
          [v9 finishWithResult:v11];
        }

        else
        {
          v11 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
          [v9 finishWithError:v11];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_finishAllHomesPromises:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = [(HFHomeKitDispatcher *)self homeManager];
        v11 = [v10 homes];

        if (v11)
        {
          v12 = [(HFHomeKitDispatcher *)self homeManager];
          v13 = [v12 homes];
          v14 = [v13 sortedArrayUsingComparator:&__block_literal_global_619];
          [v9 finishWithResult:v14];
        }

        else
        {
          v12 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
          [v9 finishWithError:v12];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)_finishFirstHomeAddedPromises:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HFHomeKitDispatcher *)self home];

  if (!v6)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HFHomeKitDispatcher.m" lineNumber:1693 description:{@"Invalid parameter not satisfying: %@", @"self.home != nil"}];
  }

  if ([v5 count])
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
  v8 = v5;
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
        v14 = [(HFHomeKitDispatcher *)self home];
        [v13 finishWithResult:v14];

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
  v3 = [(HFHomeKitDispatcher *)self homeManager];
  v4 = [v3 homes];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(HFHomeKitDispatcher *)self homeManager];
    v7 = [v6 primaryHome];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)addObservationForCameraClipManager:(id)a3
{
  v6 = a3;
  v4 = [(HFHomeKitDispatcher *)self cameraObserverDispatcher];
  v5 = [v4 proxy];

  if (v5)
  {
    [v6 addObserver:v5];
  }
}

- (void)removeObservationForCameraClipManager:(id)a3
{
  v6 = a3;
  v4 = [(HFHomeKitDispatcher *)self cameraObserverDispatcher];
  v5 = [v4 proxy];

  if (v5)
  {
    [v6 removeObserver:v5];
  }
}

- (void)_setDelegationEnabled:(BOOL)a3 forAccessoryHierarchy:(id)a4
{
  v4 = a3;
  v85 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 home];
  v8 = [(HFHomeKitDispatcher *)self home];
  v9 = [v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    v10 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v60 = [v6 home];
      v61 = [(HFHomeKitDispatcher *)self home];
      *buf = 138412802;
      v80 = v6;
      v81 = 2112;
      v82 = v60;
      v83 = 2112;
      v84 = v61;
      _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "Setting delegate for accessory %@ with home %@ not in current home %@", buf, 0x20u);
    }
  }

  if (v4)
  {
    v11 = [(HFHomeKitDispatcher *)self accessoryObserverDispatcher];
    v12 = [v11 proxy];
    [v6 setDelegate:v12];
  }

  else
  {
    [v6 setDelegate:0];
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v13 = [v6 cameraProfiles];
  v14 = [v13 countByEnumeratingWithState:&v72 objects:v78 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v72 + 1) + 8 * v17);
        if (v4)
        {
          v19 = [(HFHomeKitDispatcher *)self cameraObserverDispatcher];
          v20 = [v19 proxy];
        }

        else
        {
          v20 = 0;
        }

        v21 = [v18 snapshotControl];
        [v21 setDelegate:v20];

        v22 = [v18 streamControl];
        [v22 setDelegate:v20];

        v23 = [v18 userSettings];
        [v23 setDelegate:v20];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v72 objects:v78 count:16];
    }

    while (v15);
  }

  v24 = [v6 profiles];
  v25 = [v24 na_map:&__block_literal_global_632];
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __67__HFHomeKitDispatcher__setDelegationEnabled_forAccessoryHierarchy___block_invoke_2;
  v70[3] = &unk_277E02620;
  v71 = v4;
  v70[4] = self;
  [v25 na_each:v70];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v26 = [v6 televisionProfiles];
  v27 = [v26 countByEnumeratingWithState:&v66 objects:v77 count:16];
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
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v66 + 1) + 8 * v30);
        if (v4)
        {
          v32 = [(HFHomeKitDispatcher *)self televisionObserverDispatcher];
          v33 = [v32 proxy];
          [v31 setDelegate:v33];
        }

        else
        {
          [*(*(&v66 + 1) + 8 * v30) setDelegate:0];
        }

        ++v30;
      }

      while (v28 != v30);
      v28 = [v26 countByEnumeratingWithState:&v66 objects:v77 count:16];
    }

    while (v28);
  }

  if (v4)
  {
    v26 = [(HFHomeKitDispatcher *)self softwareUpdateControllerObserverDispatcher];
    v34 = [v26 proxy];
  }

  else
  {
    v34 = 0;
  }

  v35 = [v6 softwareUpdateController];
  [v35 setDelegate:v34];

  if (v4)
  {

    v26 = [(HFHomeKitDispatcher *)self softwareUpdateObserverDispatcher];
    v36 = [v26 proxy];
  }

  else
  {
    v36 = 0;
  }

  v37 = [v6 softwareUpdateController];
  v38 = [v37 availableUpdate];
  [v38 setDelegate:v36];

  if (v4)
  {

    v39 = [(HFHomeKitDispatcher *)self softwareUpdateManager];
    v40 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v6];
    [v39 startObservingSoftwareUpdatesForAccessories:v40];
  }

  else
  {
    v39 = [(HFHomeKitDispatcher *)self softwareUpdateManager];
    v40 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v6];
    [v39 stopObservingSoftwareUpdatesForAccessories:v40];
  }

  v41 = [v6 mediaProfile];

  if (v41)
  {
    v42 = [v6 mediaProfile];
    [(HFHomeKitDispatcher *)self _setDelegationEnabled:1 forMediaProfileContainer:v42 session:0];

    v41 = 0;
    if ([v6 hf_isAppleTV])
    {
      v41 = v6;
    }

    if (v4)
    {
      v40 = [(HFHomeKitDispatcher *)self mediaDestinationControllerObserverDispatcher];
      v43 = [v40 proxy];
    }

    else
    {
      v43 = 0;
    }

    v44 = [v41 audioDestinationController];
    [v44 setDelegate:v43];

    if (v4)
    {
    }
  }

  if (!+[HFExecutionEnvironment isHomeWidgetRelatedProcess])
  {
    if (v4)
    {
      v41 = [(HFHomeKitDispatcher *)self symptomsHandlerObserverDispatcher];
      v45 = [v41 proxy];
    }

    else
    {
      v45 = 0;
    }

    v46 = [v6 symptomsHandler];
    [v46 setDelegate:v45];

    if (v4)
    {
    }
  }

  v47 = [v6 hf_siriEndpointProfile];

  if (v47)
  {
    v48 = [(HFHomeKitDispatcher *)self siriEndpointProfileObserverDispatcher];
    v49 = [v48 proxy];
    v50 = [v6 hf_siriEndpointProfile];
    [v50 setDelegate:v49];
  }

  v51 = [v6 lightProfiles];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v52 = [v51 countByEnumeratingWithState:&v62 objects:v76 count:16];
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
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v62 + 1) + 8 * v55);
        if (v4)
        {
          v57 = [(HFHomeKitDispatcher *)self lightObserverDispatcher];
          v58 = [v57 proxy];
          [v56 setDelegate:v58];
        }

        else
        {
          [*(*(&v62 + 1) + 8 * v55) setDelegate:0];
        }

        ++v55;
      }

      while (v53 != v55);
      v53 = [v51 countByEnumeratingWithState:&v62 objects:v76 count:16];
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

- (void)_setDelegationEnabled:(BOOL)a3 forMediaProfileContainer:(id)a4 session:(id)a5
{
  v7 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v7)
  {
    v12 = [(HFHomeKitDispatcher *)self mediaSessionObserverDispatcher];
    v13 = [v12 proxy];
    [v11 setDelegate:v13];

    v14 = [(HFHomeKitDispatcher *)self mediaObjectObserverDispatcher];
    v15 = [v14 proxy];
    [v9 setDelegate:v15];

    v5 = [(HFHomeKitDispatcher *)self mediaSessionObserverDispatcher];
    v16 = [v5 proxy];
  }

  else
  {
    [v10 setDelegate:0];
    [v9 setDelegate:0];
    v16 = 0;
  }

  v17 = [v9 mediaSession];
  [v17 setDelegate:v16];

  if (v7)
  {

    v5 = [(HFHomeKitDispatcher *)self audioControlObserverDispatcher];
    v18 = [v5 proxy];
  }

  else
  {
    v18 = 0;
  }

  v19 = [v9 mediaSession];
  v20 = [v19 audioControl];
  [v20 setDelegate:v18];

  if (v7)
  {

    v5 = [(HFHomeKitDispatcher *)self homeKitSettingsObserverDispatcher];
    v21 = [v5 proxy];
  }

  else
  {
    v21 = 0;
  }

  v22 = [v9 settings];
  [v22 setDelegate:v21];

  if (v7)
  {
  }

  if (!+[HFExecutionEnvironment isHomeWidgetRelatedProcess])
  {
    objc_opt_class();
    v23 = v9;
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;

    v26 = [v25 accessories];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __78__HFHomeKitDispatcher__setDelegationEnabled_forMediaProfileContainer_session___block_invoke;
    v27[3] = &unk_277E02648;
    v28 = v7;
    v27[4] = self;
    [v26 na_each:v27];
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

- (void)_setDelegationEnabled:(BOOL)a3 forUser:(id)a4
{
  v4 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HFHomeKitDispatcher *)self home];
  v8 = [v6 userSettingsForHome:v7];

  v9 = [v8 settings];
  v10 = [v9 rootGroup];

  if (!v10)
  {
    v11 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v21 = 138412290;
      v22 = v6;
      _os_log_error_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_ERROR, "Attempting to set delegate for user %@ settings - but settings are invalid", &v21, 0xCu);
    }
  }

  v12 = [v8 privateSettings];
  v13 = [v12 rootGroup];

  if (v13)
  {
    if (v4)
    {
LABEL_7:
      v12 = [(HFHomeKitDispatcher *)self homeKitSettingsObserverDispatcher];
      v14 = [v12 proxy];
      goto LABEL_12;
    }
  }

  else
  {
    v12 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v21 = 138412290;
      v22 = v6;
      _os_log_error_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_ERROR, "Attempting to set delegate for user %@ private settings - but private settings are invalid", &v21, 0xCu);
    }

    if (v4)
    {
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_12:
  v15 = [v8 settings];
  [v15 setDelegate:v14];

  if (v4)
  {

    v12 = [(HFHomeKitDispatcher *)self homeKitSettingsObserverDispatcher];
    v16 = [v12 proxy];
  }

  else
  {
    v16 = 0;
  }

  v17 = [v8 privateSettings];
  [v17 setDelegate:v16];

  if (v4)
  {

    v18 = [(HFHomeKitDispatcher *)self userObserverDispatcher];
    v19 = [v18 proxy];
    [v6 setDelegate:v19];
  }

  else
  {
    [v6 setDelegate:0];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_setHomePersonManagerObservationEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(HFHomeKitDispatcher *)self home];
  v8 = [v5 personManager];

  if (v8)
  {
    v6 = [(HFHomeKitDispatcher *)self homePersonManagerDispatcher];
    v7 = [v6 proxy];
    if (v3)
    {
      [v8 addObserver:v7];
    }

    else
    {
      [v8 removeObserver:v7];
    }
  }
}

- (id)homeSensingActiveFuture
{
  v3 = [(HFHomeKitDispatcher *)self locationCoordinatorSetupFuture];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__HFHomeKitDispatcher_homeSensingActiveFuture__block_invoke;
  v10[3] = &unk_277DF8340;
  v10[4] = self;
  v4 = [v3 flatMap:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__HFHomeKitDispatcher_homeSensingActiveFuture__block_invoke_2;
  v9[3] = &unk_277E02670;
  v9[4] = self;
  v5 = [v4 flatMap:v9];
  v6 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v7 = [v5 reschedule:v6];

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
  v3 = [(HFHomeKitDispatcher *)self allHomesFuture];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__HFHomeKitDispatcher_updateHomeSensingState__block_invoke;
  v5[3] = &unk_277E026C0;
  v5[4] = self;
  objc_copyWeak(&v6, &location);
  v4 = [v3 addCompletionBlock:v5];

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
  v2 = [(HFHomeKitDispatcher *)self homeManager];
  v3 = [v2 currentAccessory];
  v4 = [v3 home];

  if (v4)
  {
    return 0;
  }

  v6 = objc_opt_class();

  return [v6 allowHomeSensingOverride];
}

- (void)fetchSettingsForLightProfiles:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self home];

  if (v5)
  {
    if (+[HFUtilities isInternalTest])
    {
      [(HFHomeKitDispatcher *)self _fetchSettingsForLightProfiles:v4];
    }

    else
    {
      objc_initWeak(&location, self);
      v6 = [MEMORY[0x277D0F8F0] defaultScheduler];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __53__HFHomeKitDispatcher_fetchSettingsForLightProfiles___block_invoke;
      v8[3] = &unk_277DF3A68;
      objc_copyWeak(&v10, &location);
      v9 = v4;
      v7 = [v6 performWithQualityOfService:17 block:v8];

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

- (void)_fetchSettingsForLightProfiles:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitDispatcher *)self home];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__HFHomeKitDispatcher__fetchSettingsForLightProfiles___block_invoke;
  v6[3] = &unk_277E026E8;
  v6[4] = self;
  [v5 fetchSettingsForLightProfiles:v4 withCompletion:v6];
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

- (void)dispatchLightProfileUpdate:(id)a3 settings:(id)a4 error:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v11 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v10;
      _os_log_error_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_ERROR, "Received error trying to fetch light profile settings. Profile: %@ %@", buf, 0x16u);
    }

    goto LABEL_6;
  }

  if ([v9 supportedFeatures])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__HFHomeKitDispatcher_dispatchLightProfileUpdate_settings_error___block_invoke;
    v13[3] = &unk_277E02710;
    v14 = v8;
    v15 = v9;
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

- (void)installStateArbiter:(id)a3 installStateDidChange:(BOOL)a4
{
  if (a4)
  {
    v5 = [(HFHomeKitDispatcher *)self _setupLocationSensingCoordinator];
    [(HFHomeKitDispatcher *)self setLocationCoordinatorSetupFuture:v5];
  }

  else
  {

    [(HFHomeKitDispatcher *)self setLocationCoordinator:0];
  }
}

- (void)stateRestorationSettings:(id)a3 selectedHomeIdentifierDidUpdateExternally:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Received selected home changed notification. New selected home identifier: %@", &v8, 0xCu);
  }

  [(HFHomeKitDispatcher *)self updateSelectedHome];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_updateHomeActivityStateForHome:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__HFHomeKitDispatcher__updateHomeActivityStateForHome___block_invoke;
  v6[3] = &unk_277DF3370;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __55__HFHomeKitDispatcher__updateHomeActivityStateForHome___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) homeObserverDispatcher];
  v2 = [v3 proxy];
  [v2 homeDidUpdateActivityState:*(a1 + 40)];
}

@end