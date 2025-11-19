@interface MDMServicerCore
- (BOOL)_remoteProcess:(id)a3 hasEntitlement:(id)a4;
- (MDMServicerCore)initWithXPCConnection:(id)a3 server:(id)a4;
- (NSXPCConnection)xpcConnection;
- (id)_MDMAccessEntitlementForChannelType:(unint64_t)a3;
- (id)_lacksEntitlementError:(id)a3;
- (void)blockAppInstallsWithCompletion:(id)a3;
- (void)blockMDMCommandsWithCompletion:(id)a3;
- (void)dealloc;
- (void)deleteBootstrapTokenWithToken:(id)a3 devicePasscode:(id)a4 completionHandler:(id)a5;
- (void)deleteBootstrapTokenWithToken:(id)a3 devicePasscodeContext:(id)a4 completionHandler:(id)a5;
- (void)depPushTokenWithCompletion:(id)a3;
- (void)disablePushWakeWithCompletion:(id)a3;
- (void)enablePushWakeWithCompletion:(id)a3;
- (void)generateAndSyncBootstrapTokenWithDevicePasscode:(id)a3 completionHandler:(id)a4;
- (void)generateAndSyncBootstrapTokenWithDevicePasscodeContext:(id)a3 completionHandler:(id)a4;
- (void)generateBootstrapTokenWithDevicePasscode:(id)a3 completionHandler:(id)a4;
- (void)generateBootstrapTokenWithDevicePasscodeContext:(id)a3 completionHandler:(id)a4;
- (void)getAssertionDescriptionsWithCompletion:(id)a3;
- (void)getOrgTokenForMAIDWithCompletionHandler:(id)a3;
- (void)getWatchPairingTokenForPhoneID:(id)a3 watchID:(id)a4 securityToken:(id)a5 completionHandler:(id)a6;
- (void)isAwaitingUserConfiguredWithCompletion:(id)a3;
- (void)monitorDEPPushTokenIfNeededWithCompletion:(id)a3;
- (void)monitorDEPPushTokenWithCompletion:(id)a3;
- (void)nagForMigrationWithHardCodedValuesWithCompletion:(id)a3;
- (void)nagWithID:(id)a3 clientID:(id)a4 schedule:(id)a5 title:(id)a6 message:(id)a7 notificationTitle:(id)a8 notificationMessage:(id)a9 actionTitle:(id)a10 actionURL:(id)a11 dismissTitle:(id)a12 dismissURL:(id)a13 deadlineURL:(id)a14 completion:(id)a15;
- (void)notifyNewConfigurationWithCompletion:(id)a3;
- (void)preserveAppsWithCompletion:(id)a3;
- (void)pushTokenWithCompletion:(id)a3;
- (void)reauthenticationCompleteWithCompletion:(id)a3;
- (void)removeUnusedPreservedAppsWithCompletion:(id)a3;
- (void)requestInstallOfAppsInRestoreWithCompletion:(id)a3;
- (void)requestRRTSCheckInAndValidationWithCompletionHandler:(id)a3;
- (void)retryNotNowWithCompletion:(id)a3;
- (void)scheduleTokenUpdateIfNecessaryWithCompletion:(id)a3;
- (void)scheduleTokenUpdateWithCompletion:(id)a3;
- (void)sendMDMAuthenticationRequestWithCompletionHandler:(id)a3;
- (void)sendMDMCheckOutRequestWithCompletionHandler:(id)a3;
- (void)simulateDEPPushWithCompletion:(id)a3;
- (void)simulatePushIfNetworkTetheredWithCompletion:(id)a3;
- (void)simulatePushWithCompletion:(id)a3;
- (void)stopNaggingForMigrationWithCompletion:(id)a3;
- (void)syncBootstrapTokenToMDMWithToken:(id)a3 completionHandler:(id)a4;
- (void)syncDEPPushTokenWithDelay:(double)a3 completion:(id)a4;
- (void)touchWithCompletion:(id)a3;
- (void)unblockAppInstallsWithCompletion:(id)a3;
- (void)unblockMDMCommandsWithCompletion:(id)a3;
- (void)uprootMDMWithCompletion:(id)a3;
@end

@implementation MDMServicerCore

- (MDMServicerCore)initWithXPCConnection:(id)a3 server:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = MDMServicerCore;
  v8 = [(MDMServicerCore *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_xpcConnection, v6);
    v10 = [[MDMDaemonXPCInvalidationManager alloc] initWithXPCConnection:v6];
    invalidationHandler = v9->_invalidationHandler;
    v9->_invalidationHandler = v10;

    v9->_channelType = [v7 channelType];
    objc_storeStrong(&v9->_server, a4);
    v15 = 0u;
    v16 = 0u;
    if (v6)
    {
      [v6 auditToken];
    }

    v12 = [MEMORY[0x277D034C0] bundleIDFromAuditToken:&v15];
    clientBundleID = v9->_clientBundleID;
    v9->_clientBundleID = v12;

    v9->_clientPID = [v6 processIdentifier];
  }

  return v9;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  [WeakRetained invalidate];

  v4.receiver = self;
  v4.super_class = MDMServicerCore;
  [(MDMServicerCore *)&v4 dealloc];
}

- (void)getAssertionDescriptionsWithCompletion:(id)a3
{
  v4 = a3;
  v8 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v5 = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:v5 hasEntitlement:v8];

  if (v6)
  {

    v8 = [(MDMServicerCore *)self server];
    [v8 getAssertionDescriptionsWithCompletion:v4];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:v8];
    v4[2](v4, 0, v7);

    v4 = v7;
  }
}

- (void)scheduleTokenUpdateWithCompletion:(id)a3
{
  v4 = a3;
  v8 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v5 = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:v5 hasEntitlement:v8];

  if (v6)
  {

    v8 = [(MDMServicerCore *)self server];
    [v8 scheduleTokenUpdateWithCompletion:v4];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:v8];
    v4[2](v4, v7);

    v4 = v7;
  }
}

- (void)scheduleTokenUpdateIfNecessaryWithCompletion:(id)a3
{
  v4 = a3;
  v8 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v5 = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:v5 hasEntitlement:v8];

  if (v6)
  {

    v8 = [(MDMServicerCore *)self server];
    [v8 scheduleTokenUpdateIfNecessaryWithCompletion:v4];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:v8];
    v4[2](v4, v7);

    v4 = v7;
  }
}

- (void)simulatePushWithCompletion:(id)a3
{
  v4 = a3;
  v8 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v5 = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:v5 hasEntitlement:v8];

  if (v6)
  {

    v8 = [(MDMServicerCore *)self server];
    [v8 simulatePushWithCompletion:v4];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:v8];
    v4[2](v4, v7);

    v4 = v7;
  }
}

- (void)simulatePushIfNetworkTetheredWithCompletion:(id)a3
{
  v9 = a3;
  v4 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v5 = [(MDMServicerCore *)self xpcConnection];
  if ([(MDMServicerCore *)self _remoteProcess:v5 hasEntitlement:v4])
  {

LABEL_4:
    v4 = [(MDMServicerCore *)self server];
    [v4 simulatePushIfNetworkTetheredWithCompletion:v9];
    goto LABEL_6;
  }

  v6 = [(MDMServicerCore *)self xpcConnection];
  v7 = [(MDMServicerCore *)self _remoteProcess:v6 hasEntitlement:@"com.apple.managedconfiguration.mdmd.push"];

  if (v7)
  {
    goto LABEL_4;
  }

  v8 = [(MDMServicerCore *)self _lacksEntitlementError:v4];
  v9[2](v9, v8);

LABEL_6:
}

- (void)notifyNewConfigurationWithCompletion:(id)a3
{
  v4 = a3;
  v8 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v5 = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:v5 hasEntitlement:v8];

  if (v6)
  {

    v8 = [(MDMServicerCore *)self server];
    [v8 notifyNewConfigurationWithCompletion:v4];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:v8];
    v4[2](v4, v7);

    v4 = v7;
  }
}

- (void)retryNotNowWithCompletion:(id)a3
{
  v4 = a3;
  v8 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v5 = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:v5 hasEntitlement:v8];

  if (v6)
  {

    v8 = [(MDMServicerCore *)self server];
    [v8 retryNotNowWithCompletion:v4];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:v8];
    v4[2](v4, v7);

    v4 = v7;
  }
}

- (void)reauthenticationCompleteWithCompletion:(id)a3
{
  v4 = a3;
  v8 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v5 = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:v5 hasEntitlement:v8];

  if (v6)
  {

    v8 = [(MDMServicerCore *)self server];
    [v8 reauthenticationCompleteWithCompletion:v4];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:v8];
    v4[2](v4, v7);

    v4 = v7;
  }
}

- (void)pushTokenWithCompletion:(id)a3
{
  v4 = a3;
  v8 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v5 = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:v5 hasEntitlement:v8];

  if (v6)
  {

    v8 = [(MDMServicerCore *)self server];
    [v8 pushTokenWithCompletion:v4];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:v8];
    v4[2](v4, 0, v7);

    v4 = v7;
  }
}

- (void)touchWithCompletion:(id)a3
{
  v4 = a3;
  v8 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v5 = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:v5 hasEntitlement:v8];

  if (v6)
  {

    v8 = [(MDMServicerCore *)self server];
    [v8 touchWithCompletion:v4];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:v8];
    v4[2](v4, v7);

    v4 = v7;
  }
}

- (void)nagWithID:(id)a3 clientID:(id)a4 schedule:(id)a5 title:(id)a6 message:(id)a7 notificationTitle:(id)a8 notificationMessage:(id)a9 actionTitle:(id)a10 actionURL:(id)a11 dismissTitle:(id)a12 dismissURL:(id)a13 deadlineURL:(id)a14 completion:(id)a15
{
  v47 = a3;
  v46 = a4;
  v44 = a5;
  v43 = a6;
  v42 = a7;
  v41 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  v45 = a14;
  v26 = a15;
  v27 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v28 = [(MDMServicerCore *)self xpcConnection];
  v29 = [(MDMServicerCore *)self _remoteProcess:v28 hasEntitlement:v27];

  v40 = v23;
  if (v29)
  {

    v27 = [(MDMServicerCore *)self server];
    v30 = v44;
    v39 = v25;
    v38 = v23;
    v37 = v21;
    v31 = v43;
    v32 = v21;
    v33 = v25;
    v34 = v41;
    v35 = v42;
    [v27 nagWithID:v47 clientID:v46 schedule:v44 title:v43 message:v42 notificationTitle:v41 notificationMessage:v37 actionTitle:v22 actionURL:v38 dismissTitle:v24 dismissURL:v39 deadlineURL:v45 completion:{v26, v40}];
  }

  else
  {
    v36 = [(MDMServicerCore *)self _lacksEntitlementError:v27];
    v26[2](v26, v36);

    v26 = v36;
    v31 = v43;
    v30 = v44;
    v32 = v21;
    v33 = v25;
    v34 = v41;
    v35 = v42;
  }
}

- (void)nagForMigrationWithHardCodedValuesWithCompletion:(id)a3
{
  v4 = a3;
  v8 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v5 = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:v5 hasEntitlement:v8];

  if (v6)
  {

    v8 = [(MDMServicerCore *)self server];
    [v8 nagForMigrationWithHardCodedValuesWithCompletion:v4];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:v8];
    v4[2](v4, v7);

    v4 = v7;
  }
}

- (void)stopNaggingForMigrationWithCompletion:(id)a3
{
  v4 = a3;
  v8 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v5 = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:v5 hasEntitlement:v8];

  if (v6)
  {

    v8 = [(MDMServicerCore *)self server];
    [v8 stopNaggingForMigrationWithCompletion:v4];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:v8];
    v4[2](v4, v7);

    v4 = v7;
  }
}

- (void)blockMDMCommandsWithCompletion:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v6 = [(MDMServicerCore *)self xpcConnection];
  v7 = [(MDMServicerCore *)self _remoteProcess:v6 hasEntitlement:v5];

  if (v7)
  {

    objc_initWeak(&location, self);
    v8 = [(MDMServicerCore *)self invalidationHandler];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __50__MDMServicerCore_blockMDMCommandsWithCompletion___block_invoke;
    v18 = &unk_27982D568;
    objc_copyWeak(&v19, &location);
    [v8 registerInvalidationHandlerForTask:@"Block MDM Command" handler:&v15];

    v9 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(MDMServicerCore *)self clientBundleID:v15];
      v11 = [(MDMServicerCore *)self clientPID];
      *buf = 138543618;
      v22 = v10;
      v23 = 1024;
      v24 = v11;
      _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_DEFAULT, "Client %{public}@ (%d) is asking to block MDM commands", buf, 0x12u);
    }

    v12 = [(MDMServicerCore *)self server];
    [v12 blockMDMCommandsWithCompletion:v4];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = [(MDMServicerCore *)self _lacksEntitlementError:v5];
    v4[2](v4, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __50__MDMServicerCore_blockMDMCommandsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained server];
  [v1 unblockMDMCommandsWithCompletion:&__block_literal_global_8];
}

void __50__MDMServicerCore_blockMDMCommandsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_ERROR, "Unblocked MDM commands due to NSXPCConnection invalidation. Unblock error: %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)unblockMDMCommandsWithCompletion:(id)a3
{
  v4 = a3;
  v9 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v5 = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:v5 hasEntitlement:v9];

  if (v6)
  {

    v7 = [(MDMServicerCore *)self invalidationHandler];
    [v7 unregisterInvalidationHandlerForTask:@"Block MDM Command"];

    v9 = [(MDMServicerCore *)self server];
    [v9 unblockMDMCommandsWithCompletion:v4];
  }

  else
  {
    v8 = [(MDMServicerCore *)self _lacksEntitlementError:v9];
    v4[2](v4, v8);

    v4 = v8;
  }
}

- (void)enablePushWakeWithCompletion:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v6 = [(MDMServicerCore *)self xpcConnection];
  v7 = [(MDMServicerCore *)self _remoteProcess:v6 hasEntitlement:v5];

  if (v7)
  {

    objc_initWeak(&location, self);
    v8 = [(MDMServicerCore *)self invalidationHandler];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __48__MDMServicerCore_enablePushWakeWithCompletion___block_invoke;
    v18 = &unk_27982D568;
    objc_copyWeak(&v19, &location);
    [v8 registerInvalidationHandlerForTask:@"Enable Push Wake" handler:&v15];

    v9 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(MDMServicerCore *)self clientBundleID:v15];
      v11 = [(MDMServicerCore *)self clientPID];
      *buf = 138543618;
      v22 = v10;
      v23 = 1024;
      v24 = v11;
      _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_DEFAULT, "Client %{public}@ (%d) is asking to enable push wake", buf, 0x12u);
    }

    v12 = [(MDMServicerCore *)self server];
    [v12 enablePushWakeWithCompletion:v4];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = [(MDMServicerCore *)self _lacksEntitlementError:v5];
    v4[2](v4, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __48__MDMServicerCore_enablePushWakeWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained server];
  [v1 disablePushWakeWithCompletion:&__block_literal_global_165];
}

void __48__MDMServicerCore_enablePushWakeWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_ERROR, "Disabled Push Wake due to NSXPCConnection invalidation. Error: %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)disablePushWakeWithCompletion:(id)a3
{
  v4 = a3;
  v9 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v5 = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:v5 hasEntitlement:v9];

  if (v6)
  {

    v7 = [(MDMServicerCore *)self invalidationHandler];
    [v7 unregisterInvalidationHandlerForTask:@"Enable Push Wake"];

    v9 = [(MDMServicerCore *)self server];
    [v9 disablePushWakeWithCompletion:v4];
  }

  else
  {
    v8 = [(MDMServicerCore *)self _lacksEntitlementError:v9];
    v4[2](v4, v8);

    v4 = v8;
  }
}

- (void)sendMDMAuthenticationRequestWithCompletionHandler:(id)a3
{
  v4 = a3;
  v8 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v5 = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:v5 hasEntitlement:v8];

  if (v6)
  {

    v8 = [(MDMServicerCore *)self server];
    [v8 sendMDMAuthenticationRequestWithCompletionHandler:v4];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:v8];
    v4[2](v4, v7);

    v4 = v7;
  }
}

- (void)sendMDMCheckOutRequestWithCompletionHandler:(id)a3
{
  v4 = a3;
  v8 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v5 = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:v5 hasEntitlement:v8];

  if (v6)
  {

    v8 = [(MDMServicerCore *)self server];
    [v8 sendMDMCheckOutRequestWithCompletionHandler:v4];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:v8];
    v4[2](v4, v7);

    v4 = v7;
  }
}

- (void)preserveAppsWithCompletion:(id)a3
{
  v9 = a3;
  v4 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v5 = [(MDMServicerCore *)self xpcConnection];
  if ([(MDMServicerCore *)self _remoteProcess:v5 hasEntitlement:v4])
  {

LABEL_4:
    v4 = [(MDMServicerCore *)self server];
    [v4 preserveAppsWithCompletion:v9];
    goto LABEL_6;
  }

  v6 = [(MDMServicerCore *)self xpcConnection];
  v7 = [(MDMServicerCore *)self _remoteProcess:v6 hasEntitlement:@"com.apple.managedconfiguration.profiled-access"];

  if (v7)
  {
    goto LABEL_4;
  }

  v8 = [(MDMServicerCore *)self _lacksEntitlementError:v4];
  v9[2](v9, v8);

LABEL_6:
}

- (void)removeUnusedPreservedAppsWithCompletion:(id)a3
{
  v9 = a3;
  v4 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v5 = [(MDMServicerCore *)self xpcConnection];
  if ([(MDMServicerCore *)self _remoteProcess:v5 hasEntitlement:v4])
  {

LABEL_4:
    v4 = [(MDMServicerCore *)self server];
    [v4 removeUnusedPreservedAppsWithCompletion:v9];
    goto LABEL_6;
  }

  v6 = [(MDMServicerCore *)self xpcConnection];
  v7 = [(MDMServicerCore *)self _remoteProcess:v6 hasEntitlement:@"com.apple.managedconfiguration.profiled-access"];

  if (v7)
  {
    goto LABEL_4;
  }

  v8 = [(MDMServicerCore *)self _lacksEntitlementError:v4];
  v9[2](v9, v8);

LABEL_6:
}

- (void)uprootMDMWithCompletion:(id)a3
{
  v4 = a3;
  v8 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v5 = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:v5 hasEntitlement:v8];

  if (v6)
  {

    v8 = [(MDMServicerCore *)self server];
    [v8 uprootMDMWithCompletion:v4];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:v8];
    v4[2](v4, v7);

    v4 = v7;
  }
}

- (void)requestInstallOfAppsInRestoreWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MDMServicerCore *)self server];
  [v5 requestInstallOfAppsInRestoreWithCompletion:v4];
}

- (void)blockAppInstallsWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(MDMServicerCore *)self invalidationHandler];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __50__MDMServicerCore_blockAppInstallsWithCompletion___block_invoke;
  v10 = &unk_27982D568;
  objc_copyWeak(&v11, &location);
  [v5 registerInvalidationHandlerForTask:@"Block App Installation" handler:&v7];

  v6 = [(MDMServicerCore *)self server:v7];
  [v6 blockAppInstallsWithCompletion:v4];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __50__MDMServicerCore_blockAppInstallsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained server];
  [v1 unblockAppInstallsWithCompletion:&__block_literal_global_167];
}

void __50__MDMServicerCore_blockAppInstallsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEFAULT, "MDMServicer, XPC connection invalidated, app installs unblocked, error = %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)unblockAppInstallsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MDMServicerCore *)self invalidationHandler];
  [v5 unregisterInvalidationHandlerForTask:@"Block App Installation"];

  v6 = [(MDMServicerCore *)self server];
  [v6 unblockAppInstallsWithCompletion:v4];
}

- (void)depPushTokenWithCompletion:(id)a3
{
  v4 = a3;
  v8 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v5 = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:v5 hasEntitlement:v8];

  if (v6)
  {

    v8 = [(MDMServicerCore *)self server];
    [v8 depPushTokenWithCompletion:v4];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:v8];
    v4[2](v4, 0, v7);

    v4 = v7;
  }
}

- (void)syncDEPPushTokenWithDelay:(double)a3 completion:(id)a4
{
  v6 = a4;
  v10 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v7 = [(MDMServicerCore *)self xpcConnection];
  v8 = [(MDMServicerCore *)self _remoteProcess:v7 hasEntitlement:v10];

  if (v8)
  {

    v10 = [(MDMServicerCore *)self server];
    [v10 syncDEPPushTokenWithDelay:v6 completion:a3];
  }

  else
  {
    v9 = [(MDMServicerCore *)self _lacksEntitlementError:v10];
    v6[2](v6, 0, v9);

    v6 = v9;
  }
}

- (void)monitorDEPPushTokenIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v8 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v5 = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:v5 hasEntitlement:v8];

  if (v6)
  {

    v8 = [(MDMServicerCore *)self server];
    [v8 monitorDEPPushTokenIfNeededWithCompletion:v4];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:v8];
    v4[2](v4, v7);

    v4 = v7;
  }
}

- (void)monitorDEPPushTokenWithCompletion:(id)a3
{
  v4 = a3;
  v8 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v5 = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:v5 hasEntitlement:v8];

  if (v6)
  {

    v8 = [(MDMServicerCore *)self server];
    [v8 monitorDEPPushTokenWithCompletion:v4];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:v8];
    v4[2](v4, v7);

    v4 = v7;
  }
}

- (void)simulateDEPPushWithCompletion:(id)a3
{
  v4 = a3;
  v8 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v5 = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:v5 hasEntitlement:v8];

  if (v6)
  {

    v8 = [(MDMServicerCore *)self server];
    [v8 simulateDEPPushWithCompletion:v4];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:v8];
    v4[2](v4, v7);

    v4 = v7;
  }
}

- (void)requestRRTSCheckInAndValidationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v8 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v5 = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:v5 hasEntitlement:v8];

  if (v6)
  {

    v8 = [(MDMServicerCore *)self server];
    [v8 requestRRTSCheckInAndValidationWithCompletionHandler:v4];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:v8];
    (*(v4 + 2))(v4, 0, 0, 0, v7);

    v4 = v7;
  }
}

- (void)generateBootstrapTokenWithDevicePasscode:(id)a3 completionHandler:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v8 = [(MDMServicerCore *)self xpcConnection];
  v9 = [(MDMServicerCore *)self _remoteProcess:v8 hasEntitlement:v7];

  if (v9)
  {

    v7 = [(MDMServicerCore *)self server];
    [v7 generateBootstrapTokenWithDevicePasscode:v11 completionHandler:v6];
  }

  else
  {
    v10 = [(MDMServicerCore *)self _lacksEntitlementError:v7];
    v6[2](v6, 0, v10);

    v6 = v10;
  }
}

- (void)generateBootstrapTokenWithDevicePasscodeContext:(id)a3 completionHandler:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v8 = [(MDMServicerCore *)self xpcConnection];
  v9 = [(MDMServicerCore *)self _remoteProcess:v8 hasEntitlement:v7];

  if (v9)
  {

    v7 = [(MDMServicerCore *)self server];
    [v7 generateBootstrapTokenWithDevicePasscodeContext:v11 completionHandler:v6];
  }

  else
  {
    v10 = [(MDMServicerCore *)self _lacksEntitlementError:v7];
    v6[2](v6, 0, v10);

    v6 = v10;
  }
}

- (void)syncBootstrapTokenToMDMWithToken:(id)a3 completionHandler:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v8 = [(MDMServicerCore *)self xpcConnection];
  v9 = [(MDMServicerCore *)self _remoteProcess:v8 hasEntitlement:v7];

  if (v9)
  {

    v7 = [(MDMServicerCore *)self server];
    [v7 syncBootstrapTokenToMDMWithToken:v11 completionHandler:v6];
  }

  else
  {
    v10 = [(MDMServicerCore *)self _lacksEntitlementError:v7];
    v6[2](v6, v10);

    v6 = v10;
  }
}

- (void)deleteBootstrapTokenWithToken:(id)a3 devicePasscode:(id)a4 completionHandler:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v11 = [(MDMServicerCore *)self xpcConnection];
  v12 = [(MDMServicerCore *)self _remoteProcess:v11 hasEntitlement:v10];

  if (v12)
  {

    v10 = [(MDMServicerCore *)self server];
    [v10 deleteBootstrapTokenWithToken:v14 devicePasscode:v8 completionHandler:v9];
  }

  else
  {
    v13 = [(MDMServicerCore *)self _lacksEntitlementError:v10];
    v9[2](v9, v13);

    v9 = v13;
  }
}

- (void)deleteBootstrapTokenWithToken:(id)a3 devicePasscodeContext:(id)a4 completionHandler:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v11 = [(MDMServicerCore *)self xpcConnection];
  v12 = [(MDMServicerCore *)self _remoteProcess:v11 hasEntitlement:v10];

  if (v12)
  {

    v10 = [(MDMServicerCore *)self server];
    [v10 deleteBootstrapTokenWithToken:v14 devicePasscodeContext:v8 completionHandler:v9];
  }

  else
  {
    v13 = [(MDMServicerCore *)self _lacksEntitlementError:v10];
    v9[2](v9, v13);

    v9 = v13;
  }
}

- (void)generateAndSyncBootstrapTokenWithDevicePasscode:(id)a3 completionHandler:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v8 = [(MDMServicerCore *)self xpcConnection];
  v9 = [(MDMServicerCore *)self _remoteProcess:v8 hasEntitlement:v7];

  if (v9)
  {

    v7 = [(MDMServicerCore *)self server];
    [v7 generateAndSyncBootstrapTokenWithDevicePasscode:v11 completionHandler:v6];
  }

  else
  {
    v10 = [(MDMServicerCore *)self _lacksEntitlementError:v7];
    v6[2](v6, 0, v10);

    v6 = v10;
  }
}

- (void)generateAndSyncBootstrapTokenWithDevicePasscodeContext:(id)a3 completionHandler:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v8 = [(MDMServicerCore *)self xpcConnection];
  v9 = [(MDMServicerCore *)self _remoteProcess:v8 hasEntitlement:v7];

  if (v9)
  {

    v7 = [(MDMServicerCore *)self server];
    [v7 generateAndSyncBootstrapTokenWithDevicePasscodeContext:v11 completionHandler:v6];
  }

  else
  {
    v10 = [(MDMServicerCore *)self _lacksEntitlementError:v7];
    v6[2](v6, 0, v10);

    v6 = v10;
  }
}

- (void)getWatchPairingTokenForPhoneID:(id)a3 watchID:(id)a4 securityToken:(id)a5 completionHandler:(id)a6
{
  v17 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v14 = [(MDMServicerCore *)self xpcConnection];
  v15 = [(MDMServicerCore *)self _remoteProcess:v14 hasEntitlement:v13];

  if (v15)
  {

    v13 = [(MDMServicerCore *)self server];
    [v13 getWatchPairingTokenForPhoneID:v17 watchID:v10 securityToken:v11 completionHandler:v12];
  }

  else
  {
    v16 = [(MDMServicerCore *)self _lacksEntitlementError:v13];
    v12[2](v12, 0, v16);

    v12 = v16;
  }
}

- (void)getOrgTokenForMAIDWithCompletionHandler:(id)a3
{
  v4 = a3;
  v8 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v5 = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:v5 hasEntitlement:v8];

  if (v6)
  {

    v8 = [(MDMServicerCore *)self server];
    [v8 getOrgTokenForMAIDWithCompletionHandler:v4];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:v8];
    v4[2](v4, 0, v7);

    v4 = v7;
  }
}

- (void)isAwaitingUserConfiguredWithCompletion:(id)a3
{
  v4 = a3;
  v8 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  v5 = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:v5 hasEntitlement:v8];

  if (v6)
  {

    v8 = [(MDMServicerCore *)self server];
    [v8 isAwaitingUserConfiguredWithCompletion:v4];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:v8];
    v4[2](v4, 0, v7);

    v4 = v7;
  }
}

- (id)_MDMAccessEntitlementForChannelType:(unint64_t)a3
{
  if (a3)
  {
    return @"com.apple.managedconfiguration.mdmuserd-access";
  }

  else
  {
    return @"com.apple.managedconfiguration.mdmd-access";
  }
}

- (BOOL)_remoteProcess:(id)a3 hasEntitlement:(id)a4
{
  v4 = [a3 valueForEntitlement:a4];
  v5 = 0;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v4 BOOLValue])
    {
      v5 = 1;
    }
  }

  return v5;
}

- (id)_lacksEntitlementError:(id)a3
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03470];
  v5 = DMCErrorArray();
  v6 = [v3 DMCErrorWithDomain:v4 code:39000 descriptionArray:v5 errorType:{*MEMORY[0x277D032F8], a3, 0}];

  return v6;
}

- (NSXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

@end