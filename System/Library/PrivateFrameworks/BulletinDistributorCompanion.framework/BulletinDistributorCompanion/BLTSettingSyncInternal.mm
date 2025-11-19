@interface BLTSettingSyncInternal
- (BLTSettingSyncInternal)initWithSectionConfiguration:(id)a3 queue:(id)a4;
- (void)connect;
- (void)dealloc;
- (void)disableStandaloneTestMode;
- (void)enableStandaloneTestModeWithMinimumSendDelay:(unint64_t)a3 maximumSendDelay:(unint64_t)a4 minimumResponseDelay:(unint64_t)a5 maximumResponseDelay:(unint64_t)a6;
- (void)observer:(id)a3 updateGlobalSettings:(id)a4;
- (void)setSectionInfo:(id)a3 completion:(id)a4;
- (void)setSectionInfo:(id)a3 keypaths:(id)a4 completion:(id)a5;
- (void)setSectionSubtypeParametersIcon:(id)a3 forSectionID:(id)a4 forSubtypeID:(int64_t)a5;
- (void)updateGlobalSettings:(id)a3;
@end

@implementation BLTSettingSyncInternal

- (BLTSettingSyncInternal)initWithSectionConfiguration:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = BLTSettingSyncInternal;
  v9 = [(BLTSettingSyncInternal *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sectionConfiguration, a3);
    v11 = [BLTSettingsGateway surrogateWithQueue:v8];
    [(BLTSettingSyncInternal *)v10 setSettingsGateway:v11];

    v12 = objc_alloc_init(BLTWristStateObserver);
    wristStateObserver = v10->_wristStateObserver;
    v10->_wristStateObserver = v12;

    v14 = [BLTBBObserver surrogateWithQueue:v8 calloutQueue:v8];
    [(BLTSettingSyncInternal *)v10 setObserver:v14];

    v15 = [(BLTSettingSyncInternal *)v10 observer];
    [v15 setDelegate:v10];

    v16 = [(BLTSettingSyncInternal *)v10 observer];
    [v16 setObserverFeed:512];
  }

  return v10;
}

- (void)connect
{
  v3 = objc_alloc_init(BLTSettingSyncServer);
  [(BLTSettingSyncInternal *)self setConnection:v3];

  v4 = [(BLTSettingSyncInternal *)self connection];
  [v4 setDelegate:self];

  v5 = [BLTSpokenSettingSync alloc];
  v6 = [(BLTSettingSyncInternal *)self settingsGateway];
  v7 = [(BLTSettingSyncInternal *)self connection];
  v8 = [(BLTSpokenSettingSync *)v5 initWithSettingsGateway:v6 syncServer:v7];
  spokenSettingSync = self->_spokenSettingSync;
  self->_spokenSettingSync = v8;

  v12 = [(BLTSettingSyncInternal *)self settingsGateway];
  v10 = [(BLTSettingSyncInternal *)self connection];
  v11 = [BLTRemoteGlobalSettingsSyncServer remoteGlobalSettingsSyncServerWithLocalEndpoint:v12 remoteEndpoint:v10];
  [(BLTSettingSyncInternal *)self setRemoteGlobalSettingsSyncServer:v11];
}

- (void)dealloc
{
  v3 = [(BLTSettingSyncInternal *)self settingsGateway];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = BLTSettingSyncInternal;
  [(BLTSettingSyncInternal *)&v4 dealloc];
}

- (void)setSectionInfo:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  __assert_rtn("[BLTSettingSyncInternal setSectionInfo:completion:]", "BLTSettingSyncInternal.m", 114, "0");
}

- (void)setSectionInfo:(id)a3 keypaths:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  __assert_rtn("[BLTSettingSyncInternal setSectionInfo:keypaths:completion:]", "BLTSettingSyncInternal.m", 118, "0");
}

- (void)setSectionSubtypeParametersIcon:(id)a3 forSectionID:(id)a4 forSubtypeID:(int64_t)a5
{
  v6 = a3;
  v7 = a4;
  __assert_rtn("[BLTSettingSyncInternal setSectionSubtypeParametersIcon:forSectionID:forSubtypeID:]", "BLTSettingSyncInternal.m", 122, "0");
}

- (void)enableStandaloneTestModeWithMinimumSendDelay:(unint64_t)a3 maximumSendDelay:(unint64_t)a4 minimumResponseDelay:(unint64_t)a5 maximumResponseDelay:(unint64_t)a6
{
  v10 = [(BLTSettingSyncInternal *)self connection];
  [v10 enableStandaloneTestModeWithMinimumSendDelay:a3 maximumSendDelay:a4 minimumResponseDelay:a5 maximumResponseDelay:a6];
}

- (void)disableStandaloneTestMode
{
  v2 = [(BLTSettingSyncInternal *)self connection];
  [v2 disableStandaloneTestMode];
}

- (void)updateGlobalSettings:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = blt_global_settings_sync_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "%@ updateGlobalSettings: %@", &v8, 0x16u);
  }

  v6 = [(BLTSettingSyncInternal *)self remoteGlobalSettingsSyncServer];
  [v6 updateLocalSettingsWithProvider:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)observer:(id)a3 updateGlobalSettings:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = blt_global_settings_sync_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = self;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "%@ observer: %@ globalSettings: %@", &v11, 0x20u);
  }

  -[BLTSpokenSettingSync bbUpdateLocalGlobalSpokenSettingEnabled:](self->_spokenSettingSync, "bbUpdateLocalGlobalSpokenSettingEnabled:", [v7 globalSpokenNotificationSetting]);
  v9 = [(BLTSettingSyncInternal *)self remoteGlobalSettingsSyncServer];
  [v9 observer:v6 updateGlobalSettings:v7];

  v10 = *MEMORY[0x277D85DE8];
}

@end