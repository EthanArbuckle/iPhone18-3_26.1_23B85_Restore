@interface BLTSettingSyncInternal
- (BLTSettingSyncInternal)initWithSectionConfiguration:(id)configuration queue:(id)queue;
- (void)connect;
- (void)dealloc;
- (void)disableStandaloneTestMode;
- (void)enableStandaloneTestModeWithMinimumSendDelay:(unint64_t)delay maximumSendDelay:(unint64_t)sendDelay minimumResponseDelay:(unint64_t)responseDelay maximumResponseDelay:(unint64_t)maximumResponseDelay;
- (void)observer:(id)observer updateGlobalSettings:(id)settings;
- (void)setSectionInfo:(id)info completion:(id)completion;
- (void)setSectionInfo:(id)info keypaths:(id)keypaths completion:(id)completion;
- (void)setSectionSubtypeParametersIcon:(id)icon forSectionID:(id)d forSubtypeID:(int64_t)iD;
- (void)updateGlobalSettings:(id)settings;
@end

@implementation BLTSettingSyncInternal

- (BLTSettingSyncInternal)initWithSectionConfiguration:(id)configuration queue:(id)queue
{
  configurationCopy = configuration;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = BLTSettingSyncInternal;
  v9 = [(BLTSettingSyncInternal *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sectionConfiguration, configuration);
    v11 = [BLTSettingsGateway surrogateWithQueue:queueCopy];
    [(BLTSettingSyncInternal *)v10 setSettingsGateway:v11];

    v12 = objc_alloc_init(BLTWristStateObserver);
    wristStateObserver = v10->_wristStateObserver;
    v10->_wristStateObserver = v12;

    v14 = [BLTBBObserver surrogateWithQueue:queueCopy calloutQueue:queueCopy];
    [(BLTSettingSyncInternal *)v10 setObserver:v14];

    observer = [(BLTSettingSyncInternal *)v10 observer];
    [observer setDelegate:v10];

    observer2 = [(BLTSettingSyncInternal *)v10 observer];
    [observer2 setObserverFeed:512];
  }

  return v10;
}

- (void)connect
{
  v3 = objc_alloc_init(BLTSettingSyncServer);
  [(BLTSettingSyncInternal *)self setConnection:v3];

  connection = [(BLTSettingSyncInternal *)self connection];
  [connection setDelegate:self];

  v5 = [BLTSpokenSettingSync alloc];
  settingsGateway = [(BLTSettingSyncInternal *)self settingsGateway];
  connection2 = [(BLTSettingSyncInternal *)self connection];
  v8 = [(BLTSpokenSettingSync *)v5 initWithSettingsGateway:settingsGateway syncServer:connection2];
  spokenSettingSync = self->_spokenSettingSync;
  self->_spokenSettingSync = v8;

  settingsGateway2 = [(BLTSettingSyncInternal *)self settingsGateway];
  connection3 = [(BLTSettingSyncInternal *)self connection];
  v11 = [BLTRemoteGlobalSettingsSyncServer remoteGlobalSettingsSyncServerWithLocalEndpoint:settingsGateway2 remoteEndpoint:connection3];
  [(BLTSettingSyncInternal *)self setRemoteGlobalSettingsSyncServer:v11];
}

- (void)dealloc
{
  settingsGateway = [(BLTSettingSyncInternal *)self settingsGateway];
  [settingsGateway invalidate];

  v4.receiver = self;
  v4.super_class = BLTSettingSyncInternal;
  [(BLTSettingSyncInternal *)&v4 dealloc];
}

- (void)setSectionInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  __assert_rtn("[BLTSettingSyncInternal setSectionInfo:completion:]", "BLTSettingSyncInternal.m", 114, "0");
}

- (void)setSectionInfo:(id)info keypaths:(id)keypaths completion:(id)completion
{
  infoCopy = info;
  keypathsCopy = keypaths;
  completionCopy = completion;
  __assert_rtn("[BLTSettingSyncInternal setSectionInfo:keypaths:completion:]", "BLTSettingSyncInternal.m", 118, "0");
}

- (void)setSectionSubtypeParametersIcon:(id)icon forSectionID:(id)d forSubtypeID:(int64_t)iD
{
  iconCopy = icon;
  dCopy = d;
  __assert_rtn("[BLTSettingSyncInternal setSectionSubtypeParametersIcon:forSectionID:forSubtypeID:]", "BLTSettingSyncInternal.m", 122, "0");
}

- (void)enableStandaloneTestModeWithMinimumSendDelay:(unint64_t)delay maximumSendDelay:(unint64_t)sendDelay minimumResponseDelay:(unint64_t)responseDelay maximumResponseDelay:(unint64_t)maximumResponseDelay
{
  connection = [(BLTSettingSyncInternal *)self connection];
  [connection enableStandaloneTestModeWithMinimumSendDelay:delay maximumSendDelay:sendDelay minimumResponseDelay:responseDelay maximumResponseDelay:maximumResponseDelay];
}

- (void)disableStandaloneTestMode
{
  connection = [(BLTSettingSyncInternal *)self connection];
  [connection disableStandaloneTestMode];
}

- (void)updateGlobalSettings:(id)settings
{
  v12 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v5 = blt_global_settings_sync_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = settingsCopy;
    _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "%@ updateGlobalSettings: %@", &v8, 0x16u);
  }

  remoteGlobalSettingsSyncServer = [(BLTSettingSyncInternal *)self remoteGlobalSettingsSyncServer];
  [remoteGlobalSettingsSyncServer updateLocalSettingsWithProvider:settingsCopy];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)observer:(id)observer updateGlobalSettings:(id)settings
{
  v17 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  settingsCopy = settings;
  v8 = blt_global_settings_sync_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    selfCopy = self;
    v13 = 2112;
    v14 = observerCopy;
    v15 = 2112;
    v16 = settingsCopy;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "%@ observer: %@ globalSettings: %@", &v11, 0x20u);
  }

  -[BLTSpokenSettingSync bbUpdateLocalGlobalSpokenSettingEnabled:](self->_spokenSettingSync, "bbUpdateLocalGlobalSpokenSettingEnabled:", [settingsCopy globalSpokenNotificationSetting]);
  remoteGlobalSettingsSyncServer = [(BLTSettingSyncInternal *)self remoteGlobalSettingsSyncServer];
  [remoteGlobalSettingsSyncServer observer:observerCopy updateGlobalSettings:settingsCopy];

  v10 = *MEMORY[0x277D85DE8];
}

@end