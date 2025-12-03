@interface BLTRemoteGlobalSettingsSyncServer
+ (id)remoteGlobalSettingsSyncServerWithLocalEndpoint:(id)endpoint remoteEndpoint:(id)remoteEndpoint;
+ (id)remoteGlobalSettingsSyncServerWithLocalEndpoint:(id)endpoint remoteEndpoint:(id)remoteEndpoint initialSyncCompletion:(id)completion;
- (BLTRemoteGlobalSettingsSyncServer)initWithLocalEndpoint:(id)endpoint remoteEndpoint:(id)remoteEndpoint initialSyncCompletion:(id)completion;
- (BLTRemoteGlobalSettingsSyncServerLocalEndpoint)localEndpoint;
- (BLTRemoteGlobalSettingsSyncServerRemoteEndpoint)remoteEndpoint;
- (void)checkAndThenSendGlobalSettings:(id)settings;
- (void)observer:(id)observer updateGlobalSettings:(id)settings;
- (void)sendInitialChangsetWithCompletion:(id)completion;
- (void)updateLocalSettingsWithProvider:(id)provider;
@end

@implementation BLTRemoteGlobalSettingsSyncServer

- (BLTRemoteGlobalSettingsSyncServer)initWithLocalEndpoint:(id)endpoint remoteEndpoint:(id)remoteEndpoint initialSyncCompletion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  remoteEndpointCopy = remoteEndpoint;
  completionCopy = completion;
  v18.receiver = self;
  v18.super_class = BLTRemoteGlobalSettingsSyncServer;
  v11 = [(BLTRemoteGlobalSettingsSyncServer *)&v18 init];
  v12 = v11;
  if (v11)
  {
    [(BLTRemoteGlobalSettingsSyncServer *)v11 setLocalEndpoint:endpointCopy];
    [(BLTRemoteGlobalSettingsSyncServer *)v12 setRemoteEndpoint:remoteEndpointCopy];
    [(BLTRemoteGlobalSettingsSyncServer *)v12 sendInitialChangsetWithCompletion:completionCopy];
    v13 = blt_global_settings_sync_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      localEndpoint = [(BLTRemoteGlobalSettingsSyncServer *)v12 localEndpoint];
      remoteEndpoint = [(BLTRemoteGlobalSettingsSyncServer *)v12 remoteEndpoint];
      *buf = 138412802;
      v20 = v12;
      v21 = 2112;
      v22 = localEndpoint;
      v23 = 2112;
      v24 = remoteEndpoint;
      _os_log_impl(&dword_241FB3000, v13, OS_LOG_TYPE_DEFAULT, "%@ initWithLocalEndpoint: %@ remoteEndpoint: %@", buf, 0x20u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)remoteGlobalSettingsSyncServerWithLocalEndpoint:(id)endpoint remoteEndpoint:(id)remoteEndpoint initialSyncCompletion:(id)completion
{
  completionCopy = completion;
  remoteEndpointCopy = remoteEndpoint;
  endpointCopy = endpoint;
  v11 = [[self alloc] initWithLocalEndpoint:endpointCopy remoteEndpoint:remoteEndpointCopy initialSyncCompletion:completionCopy];

  return v11;
}

+ (id)remoteGlobalSettingsSyncServerWithLocalEndpoint:(id)endpoint remoteEndpoint:(id)remoteEndpoint
{
  remoteEndpointCopy = remoteEndpoint;
  endpointCopy = endpoint;
  v8 = [[self alloc] initWithLocalEndpoint:endpointCopy remoteEndpoint:remoteEndpointCopy initialSyncCompletion:0];

  return v8;
}

- (void)updateLocalSettingsWithProvider:(id)provider
{
  v19 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v5 = [BLTRemoteGlobalSettingsChangeset remoteGlobalSettingsChangesetWithProvider:providerCopy];
  localEndpoint = [(BLTRemoteGlobalSettingsSyncServer *)self localEndpoint];
  v7 = [BLTRemoteGlobalSettingsChangeset remoteGlobalSettingsChangesetWithProvider:localEndpoint];

  v8 = [v5 isEqual:v7];
  localEndpoint3 = blt_global_settings_sync_log();
  v10 = os_log_type_enabled(localEndpoint3, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v13 = 138412802;
      selfCopy2 = self;
      v15 = 2112;
      v16 = providerCopy;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_241FB3000, localEndpoint3, OS_LOG_TYPE_DEFAULT, "%@ updateLocalSettingsWithProvider: %@ remoteChangeSet: %@ NOT UPDATING", &v13, 0x20u);
    }
  }

  else
  {
    if (v10)
    {
      v13 = 138412802;
      selfCopy2 = self;
      v15 = 2112;
      v16 = providerCopy;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_241FB3000, localEndpoint3, OS_LOG_TYPE_DEFAULT, "%@ updateLocalSettingsWithProvider: %@ remoteChangeSet: %@ UPDATING", &v13, 0x20u);
    }

    localEndpoint2 = [(BLTRemoteGlobalSettingsSyncServer *)self localEndpoint];
    [localEndpoint2 setEffectiveGlobalScheduledDeliverySetting:{objc_msgSend(v5, "globalScheduledDeliverySetting")}];

    localEndpoint3 = [(BLTRemoteGlobalSettingsSyncServer *)self localEndpoint];
    -[NSObject setEffectiveGlobalSummarizationSetting:](localEndpoint3, "setEffectiveGlobalSummarizationSetting:", [v5 globalSummarizationSetting]);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)observer:(id)observer updateGlobalSettings:(id)settings
{
  v16 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  settingsCopy = settings;
  v8 = blt_global_settings_sync_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    selfCopy = self;
    v12 = 2112;
    v13 = observerCopy;
    v14 = 2112;
    v15 = settingsCopy;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "%@ observer: %@ updateGlobalSettings: %@ UPDATING", &v10, 0x20u);
  }

  [(BLTRemoteGlobalSettingsSyncServer *)self checkAndThenSendGlobalSettings:settingsCopy];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)sendInitialChangsetWithCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = blt_global_settings_sync_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "%@ sendInitialChangsetWithCompletion", buf, 0xCu);
  }

  v6 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__BLTRemoteGlobalSettingsSyncServer_sendInitialChangsetWithCompletion___block_invoke;
  v9[3] = &unk_278D31980;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __71__BLTRemoteGlobalSettingsSyncServer_sendInitialChangsetWithCompletion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) localEndpoint];
  v4 = [BLTRemoteGlobalSettingsChangeset remoteGlobalSettingsChangesetWithProvider:v3];

  v5 = [v4 globalScheduledDeliverySetting];
  v6 = blt_global_settings_sync_log();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *v2;
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_241FB3000, v7, OS_LOG_TYPE_DEFAULT, "%@ sendInitialChangsetWithCompletion: %@", &v12, 0x16u);
    }

    v9 = [*(a1 + 32) remoteEndpoint];
    [v9 remoteGlobalSettingsSyncServer:*(a1 + 32) sendChangeset:v4];

    [v4 sendSuccess];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __71__BLTRemoteGlobalSettingsSyncServer_sendInitialChangsetWithCompletion___block_invoke_cold_1(v2, v4, v7);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)checkAndThenSendGlobalSettings:(id)settings
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [BLTRemoteGlobalSettingsChangeset remoteGlobalSettingsChangesetWithProvider:settings];
  needsSend = [v4 needsSend];
  v6 = blt_global_settings_sync_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (needsSend)
  {
    if (v7)
    {
      v10 = 138412546;
      selfCopy2 = self;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_241FB3000, v6, OS_LOG_TYPE_DEFAULT, "%@ checkAndThenSendGlobalSettings: %@ - sending", &v10, 0x16u);
    }

    remoteEndpoint = [(BLTRemoteGlobalSettingsSyncServer *)self remoteEndpoint];
    [remoteEndpoint remoteGlobalSettingsSyncServer:self sendChangeset:v4];

    [v4 sendSuccess];
  }

  else
  {
    if (v7)
    {
      v10 = 138412546;
      selfCopy2 = self;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_241FB3000, v6, OS_LOG_TYPE_DEFAULT, "%@ checkAndThenSendGlobalSettings: %@ - not sending", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BLTRemoteGlobalSettingsSyncServerRemoteEndpoint)remoteEndpoint
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteEndpoint);

  return WeakRetained;
}

- (BLTRemoteGlobalSettingsSyncServerLocalEndpoint)localEndpoint
{
  WeakRetained = objc_loadWeakRetained(&self->_localEndpoint);

  return WeakRetained;
}

void __71__BLTRemoteGlobalSettingsSyncServer_sendInitialChangsetWithCompletion___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_241FB3000, log, OS_LOG_TYPE_ERROR, "%@ not sending DEFAULT received from BB: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end