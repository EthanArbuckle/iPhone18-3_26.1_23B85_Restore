@interface BLTSpokenSettingSync
- (BLTSpokenSettingSync)initWithSettingsGateway:(id)gateway syncServer:(id)server;
- (BOOL)_queue_isUpdatingLocalStateFromRemote;
- (BOOL)_queue_updateLocalSetting;
- (id)_remoteSettingStoreURL;
- (void)_queue_readSettings;
- (void)_queue_resolveState;
- (void)_queue_setNewLocalStateFromRemote:(BOOL)remote;
- (void)_queue_writeLocalSetting;
- (void)_queue_writeRemoteSetting;
- (void)bbUpdateLocalGlobalSpokenSettingEnabled:(int64_t)enabled;
- (void)transportUpdateRemoteGlobalSpokenSettingEnabled:(BOOL)enabled date:(id)date;
@end

@implementation BLTSpokenSettingSync

- (BLTSpokenSettingSync)initWithSettingsGateway:(id)gateway syncServer:(id)server
{
  gatewayCopy = gateway;
  serverCopy = server;
  v18.receiver = self;
  v18.super_class = BLTSpokenSettingSync;
  v9 = [(BLTSpokenSettingSync *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_settingsGateway, gateway);
    objc_storeStrong(&v10->_syncServer, server);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.bulletindistributor.spokensettingsync", v11);
    queue = v10->_queue;
    v10->_queue = v12;

    v14 = v10->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__BLTSpokenSettingSync_initWithSettingsGateway_syncServer___block_invoke;
    block[3] = &unk_278D31428;
    v17 = v10;
    dispatch_async(v14, block);
  }

  return v10;
}

uint64_t __59__BLTSpokenSettingSync_initWithSettingsGateway_syncServer___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_readSettings];
  result = [*(a1 + 32) _queue_updateLocalSetting];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 _queue_resolveState];
  }

  return result;
}

- (id)_remoteSettingStoreURL
{
  remoteSettingStoreURL = self->_remoteSettingStoreURL;
  if (!remoteSettingStoreURL)
  {
    v4 = BLTFileURLInPairingPathWait(@"spokensettingsync.plist");
    v5 = self->_remoteSettingStoreURL;
    self->_remoteSettingStoreURL = v4;

    remoteSettingStoreURL = self->_remoteSettingStoreURL;
  }

  return remoteSettingStoreURL;
}

- (void)_queue_readSettings
{
  dispatch_assert_queue_V2(self->_queue);
  CFPreferencesAppSynchronize(@"com.apple.bulletindistributor");
  self->_localGlobalSpokenSettingEnabled = CFPreferencesGetAppIntegerValue(@"BLTSpokenSettingLocalGlobalSettingEnabled", @"com.apple.bulletindistributor", 0) != 0;
  v12 = CFPreferencesCopyAppValue(@"BLTSpokenSettingLocalGlobalSettingDate", @"com.apple.bulletindistributor");
  if (v12)
  {
    v3 = MEMORY[0x277CBEAA8];
    [v12 doubleValue];
    v4 = [v3 dateWithTimeIntervalSince1970:?];
    localGlobalSpokenSettingDate = self->_localGlobalSpokenSettingDate;
    self->_localGlobalSpokenSettingDate = v4;
  }

  v6 = MEMORY[0x277CBEAC0];
  _remoteSettingStoreURL = [(BLTSpokenSettingSync *)self _remoteSettingStoreURL];
  v8 = [v6 dictionaryWithContentsOfURL:_remoteSettingStoreURL];

  v9 = [v8 objectForKeyedSubscript:@"BLTSpokenSettingsSyncRemoteEnabled"];
  self->_remoteGlobalSpokenSettingEnabled = [v9 BOOLValue];

  v10 = [v8 objectForKeyedSubscript:@"BLTSpokenSettingsSyncRemoteDate"];
  remoteGlobalSpokenSettingDate = self->_remoteGlobalSpokenSettingDate;
  self->_remoteGlobalSpokenSettingDate = v10;
}

- (void)_queue_writeLocalSetting
{
  dispatch_assert_queue_V2(self->_queue);
  CFPreferencesSetAppValue(@"BLTSpokenSettingLocalGlobalSettingEnabled", [MEMORY[0x277CCABB0] numberWithBool:self->_localGlobalSpokenSettingEnabled], @"com.apple.bulletindistributor");
  v3 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_localGlobalSpokenSettingDate timeIntervalSince1970];
  v4 = [v3 numberWithDouble:?];
  CFPreferencesSetAppValue(@"BLTSpokenSettingLocalGlobalSettingDate", v4, @"com.apple.bulletindistributor");
  CFPreferencesAppSynchronize(@"com.apple.bulletindistributor");
}

- (void)_queue_writeRemoteSetting
{
  v14[2] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _remoteSettingStoreURL = [(BLTSpokenSettingSync *)self _remoteSettingStoreURL];
  v13[0] = @"BLTSpokenSettingsSyncRemoteEnabled";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_remoteGlobalSpokenSettingEnabled];
  v13[1] = @"BLTSpokenSettingsSyncRemoteDate";
  v14[0] = v4;
  v14[1] = self->_remoteGlobalSpokenSettingDate;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v6 = [v5 mutableCopy];

  v7 = [MEMORY[0x277CCAC58] dataWithPropertyList:v6 format:200 options:0 error:0];
  data = [MEMORY[0x277CBEA90] data];
  v9 = [data writeToURL:_remoteSettingStoreURL options:0 error:0];

  if (!v9 || ![_remoteSettingStoreURL setResourceValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE878] error:0] || (objc_msgSend(v7, "writeToURL:options:error:", _remoteSettingStoreURL, 0x10000000, 0) & 1) == 0)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager removeItemAtURL:_remoteSettingStoreURL error:0];

    v11 = blt_ids_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(BLTSpokenSettingSync *)v11 _queue_writeRemoteSetting];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_queue_updateLocalSetting
{
  dispatch_assert_queue_V2(self->_queue);
  settingsGateway = [(BLTSpokenSettingSync *)self settingsGateway];
  effectiveGlobalSpokenNotificationSetting = [settingsGateway effectiveGlobalSpokenNotificationSetting];

  if (effectiveGlobalSpokenNotificationSetting == -1)
  {
    return 0;
  }

  return [(BLTSpokenSettingSync *)self _queue_updateLocalGlobalSpokenSettingEnabledFromUser:effectiveGlobalSpokenNotificationSetting == 2];
}

- (BOOL)_queue_isUpdatingLocalStateFromRemote
{
  dispatch_assert_queue_V2(self->_queue);
  updatingLocalStateFromRemoteCount = self->_updatingLocalStateFromRemoteCount;
  if (updatingLocalStateFromRemoteCount)
  {
    self->_updatingLocalStateFromRemoteCount = updatingLocalStateFromRemoteCount - 1;
  }

  return updatingLocalStateFromRemoteCount != 0;
}

- (void)bbUpdateLocalGlobalSpokenSettingEnabled:(int64_t)enabled
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__BLTSpokenSettingSync_bbUpdateLocalGlobalSpokenSettingEnabled___block_invoke;
  v4[3] = &unk_278D31928;
  v4[4] = self;
  v4[5] = enabled;
  dispatch_async(queue, v4);
}

void __64__BLTSpokenSettingSync_bbUpdateLocalGlobalSpokenSettingEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_isUpdatingLocalStateFromRemote];
  v3 = *(a1 + 40);
  if (v3 == -1)
  {
    v7 = blt_settings_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_241FB3000, v7, OS_LOG_TYPE_DEFAULT, "Received updated global settings with spoken notification not supported", v8, 2u);
    }
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 32);
    v6 = v3 == 2;
    if (v4)
    {

      [v5 _queue_synchronizeSettingsWithLocalEnabled:v6];
    }

    else
    {

      [v5 _queue_updateLocalGlobalSpokenSettingEnabledFromUser:v6];
    }
  }
}

- (void)transportUpdateRemoteGlobalSpokenSettingEnabled:(BOOL)enabled date:(id)date
{
  dateCopy = date;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__BLTSpokenSettingSync_transportUpdateRemoteGlobalSpokenSettingEnabled_date___block_invoke;
  block[3] = &unk_278D31EB0;
  enabledCopy = enabled;
  block[4] = self;
  v10 = dateCopy;
  v8 = dateCopy;
  dispatch_async(queue, block);
}

void __77__BLTSpokenSettingSync_transportUpdateRemoteGlobalSpokenSettingEnabled_date___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) remoteGlobalSpokenSettingEnabled];
  v3 = *(a1 + 48);
  if (v3 == v2)
  {
    v4 = [*(a1 + 32) remoteGlobalSpokenSettingDate];
    v5 = [v4 compare:*(a1 + 40)];

    if (v5 != -1)
    {
      v6 = blt_settings_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 48);
        v8 = *(a1 + 40);
        v12[0] = 67109378;
        v12[1] = v7;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&dword_241FB3000, v6, OS_LOG_TYPE_DEFAULT, "Received remote global spoken setting and dropping: %{BOOL}u date: %@", v12, 0x12u);
      }

      v9 = *MEMORY[0x277D85DE8];
      return;
    }

    LOBYTE(v3) = *(a1 + 48);
  }

  [*(a1 + 32) setRemoteGlobalSpokenSettingEnabled:v3 & 1];
  [*(a1 + 32) setRemoteGlobalSpokenSettingDate:*(a1 + 40)];
  [*(a1 + 32) _queue_writeRemoteSetting];
  v10 = *(a1 + 32);
  v11 = *MEMORY[0x277D85DE8];

  [v10 _queue_resolveState];
}

- (void)_queue_resolveState
{
  dispatch_assert_queue_V2(self->_queue);
  remoteGlobalSpokenSettingDate = [(BLTSpokenSettingSync *)self remoteGlobalSpokenSettingDate];
  if (remoteGlobalSpokenSettingDate)
  {

    goto LABEL_4;
  }

  localGlobalSpokenSettingDate = [(BLTSpokenSettingSync *)self localGlobalSpokenSettingDate];

  if (localGlobalSpokenSettingDate)
  {
LABEL_4:
    localGlobalSpokenSettingDate2 = [(BLTSpokenSettingSync *)self localGlobalSpokenSettingDate];
    v6 = localGlobalSpokenSettingDate2;
    if (localGlobalSpokenSettingDate2)
    {
      distantPast = localGlobalSpokenSettingDate2;
    }

    else
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
    }

    v8 = distantPast;

    remoteGlobalSpokenSettingDate2 = [(BLTSpokenSettingSync *)self remoteGlobalSpokenSettingDate];
    v10 = remoteGlobalSpokenSettingDate2;
    if (remoteGlobalSpokenSettingDate2)
    {
      distantPast2 = remoteGlobalSpokenSettingDate2;
    }

    else
    {
      distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
    }

    v12 = distantPast2;

    v13 = [v8 compare:v12];
    if (v13 == 1)
    {
      if ([MEMORY[0x277D2BCC8] activePairedDeviceSupportsSpokenNotificationSettings])
      {
        syncServer = [(BLTSpokenSettingSync *)self syncServer];
        localGlobalSpokenSettingEnabled = [(BLTSpokenSettingSync *)self localGlobalSpokenSettingEnabled];
        localGlobalSpokenSettingDate3 = [(BLTSpokenSettingSync *)self localGlobalSpokenSettingDate];
        [syncServer sendRemoteGlobalSpokenSettingEnabled:localGlobalSpokenSettingEnabled date:localGlobalSpokenSettingDate3];

        goto LABEL_21;
      }

      v17 = blt_settings_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v18 = "Not sending spoken setting enabled to active paired device as it doesn't support the protocol";
        v19 = buf;
        goto LABEL_19;
      }
    }

    else
    {
      if (v13 == -1)
      {
        [(BLTSpokenSettingSync *)self _queue_setNewLocalStateFromRemote:[(BLTSpokenSettingSync *)self remoteGlobalSpokenSettingEnabled]];
LABEL_21:

        goto LABEL_22;
      }

      v17 = blt_settings_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 0;
        v18 = "Local and remote spoken settings resolved to the same";
        v19 = &v20;
LABEL_19:
        _os_log_impl(&dword_241FB3000, v17, OS_LOG_TYPE_DEFAULT, v18, v19, 2u);
      }
    }

    goto LABEL_21;
  }

  v8 = blt_settings_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(BLTSpokenSettingSync *)v8 _queue_resolveState];
  }

LABEL_22:
}

- (void)_queue_setNewLocalStateFromRemote:(BOOL)remote
{
  remoteCopy = remote;
  v9 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v5 = blt_settings_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = remoteCopy;
    _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "Setting spoken settings on BulletinBoard to enabled: %{BOOL}u", v8, 8u);
  }

  [(BLTSpokenSettingSync *)self _queue_setUpdatingLocalStateFromRemote];
  if (remoteCopy)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [(BBSettingsGateway *)self->_settingsGateway setEffectiveGlobalSpokenNotificationSetting:v6];
  v7 = *MEMORY[0x277D85DE8];
}

@end