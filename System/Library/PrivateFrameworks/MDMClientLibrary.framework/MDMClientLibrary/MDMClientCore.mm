@interface MDMClientCore
+ (id)clientWithChannelType:(unint64_t)a3;
- (BOOL)isAwaitingUserConfigured;
- (MDMClientCore)initWithChannelType:(unint64_t)a3;
- (NSXPCConnection)xpcConnection;
- (id)pushToken;
- (void)_debug_nagForMigrationWithCompletion:(id)a3;
- (void)_debug_stopNaggingForMigration;
- (void)_destroyXPCConnectionAndInvalidate:(BOOL)a3;
- (void)_queue_createAndStartMDMXPCConnection;
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
- (void)monitorDEPPushTokenIfNeededWithCompletion:(id)a3;
- (void)monitorDEPPushTokenWithCompletion:(id)a3;
- (void)nagWithID:(id)a3 clientID:(id)a4 schedule:(id)a5 title:(id)a6 message:(id)a7 notificationTitle:(id)a8 notificationMessage:(id)a9 actionTitle:(id)a10 actionURL:(id)a11 dismissTitle:(id)a12 dismissURL:(id)a13 deadlineURL:(id)a14 completion:(id)a15;
- (void)notifyNewConfiguration;
- (void)preserveAppsWithCompletion:(id)a3;
- (void)reauthenticationComplete;
- (void)removeUnusedPreservedAppsWithCompletion:(id)a3;
- (void)requestInstallOfAppsInRestoreWithCompletion:(id)a3;
- (void)requestRRTSCheckInAndValidationWithCompletionHandler:(id)a3;
- (void)retryNotNowResponse;
- (void)scheduleTokenUpdate;
- (void)scheduleTokenUpdateIfNecessary;
- (void)sendMDMAuthenticationRequestWithCompletionHandler:(id)a3;
- (void)sendMDMCheckOutRequestWithCompletionHandler:(id)a3;
- (void)simulateDEPPushWithCompletion:(id)a3;
- (void)simulatePush;
- (void)simulatePushIfNetworkTetheredWithCompletion:(id)a3;
- (void)simulatePushWithCompletion:(id)a3;
- (void)syncBootstrapTokenToMDMWithToken:(id)a3 completionHandler:(id)a4;
- (void)syncDEPPushTokenWithDelay:(double)a3 completion:(id)a4;
- (void)touchWithCompletion:(id)a3;
- (void)unblockAppInstallsWithCompletion:(id)a3;
- (void)unblockMDMCommandsWithCompletion:(id)a3;
- (void)uprootMDM;
@end

@implementation MDMClientCore

+ (id)clientWithChannelType:(unint64_t)a3
{
  v3 = [[MDMClientCore alloc] initWithChannelType:a3];

  return v3;
}

- (MDMClientCore)initWithChannelType:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = MDMClientCore;
  v4 = [(MDMClientCore *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_channelType = a3;
    v6 = dispatch_queue_create("com.apple.devicemanagementclient.MDMClientCore._xpcConnectionSyncQueue", 0);
    xpcConnectionSyncQueue = v5->_xpcConnectionSyncQueue;
    v5->_xpcConnectionSyncQueue = v6;
  }

  return v5;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = MDMClientCore;
  [(MDMClientCore *)&v3 dealloc];
}

- (void)getAssertionDescriptionsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MDMClientCore *)self xpcConnection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__MDMClientCore_getAssertionDescriptionsWithCompletion___block_invoke;
  v8[3] = &unk_278856D88;
  v9 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v8];

  [v7 getAssertionDescriptionsWithCompletion:v6];
}

void __56__MDMClientCore_getAssertionDescriptionsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = [v3 DMCVerboseDescription];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Failed to get assertion descriptions. Error: %{public}@", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)notifyNewConfiguration
{
  v3 = [(MDMClientCore *)self xpcConnection];
  v2 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_0];
  [v2 notifyNewConfigurationWithCompletion:&__block_literal_global_0];
}

void __39__MDMClientCore_notifyNewConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 DMCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_22E997000, v4, OS_LOG_TYPE_ERROR, "Error in notifyNewConfiguration XPC reply. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)scheduleTokenUpdate
{
  v3 = [(MDMClientCore *)self xpcConnection];
  v2 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_5];
  [v2 scheduleTokenUpdateWithCompletion:&__block_literal_global_5];
}

void __36__MDMClientCore_scheduleTokenUpdate__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 DMCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_22E997000, v4, OS_LOG_TYPE_ERROR, "Error in scheduleTokenUpdate XPC reply. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)scheduleTokenUpdateIfNecessary
{
  v3 = [(MDMClientCore *)self xpcConnection];
  v2 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_7];
  [v2 scheduleTokenUpdateIfNecessaryWithCompletion:&__block_literal_global_7];
}

void __47__MDMClientCore_scheduleTokenUpdateIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 DMCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_22E997000, v4, OS_LOG_TYPE_ERROR, "Error in scheduleTokenUpdate XPC reply. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)retryNotNowResponse
{
  v3 = [(MDMClientCore *)self xpcConnection];
  v2 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_9];
  [v2 retryNotNowWithCompletion:&__block_literal_global_9];
}

void __36__MDMClientCore_retryNotNowResponse__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 DMCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_22E997000, v4, OS_LOG_TYPE_ERROR, "Error in retryNotNowResponse XPC reply. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)simulatePush
{
  v3 = [(MDMClientCore *)self xpcConnection];
  v2 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_11];
  [v2 simulatePushWithCompletion:&__block_literal_global_11];
}

void __29__MDMClientCore_simulatePush__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 DMCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_22E997000, v4, OS_LOG_TYPE_ERROR, "Error in simulatePush XPC reply. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)simulatePushWithCompletion:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__MDMClientCore_simulatePushWithCompletion___block_invoke;
  v9[3] = &unk_278856D88;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x2318F0080](v9);
  v7 = [(MDMClientCore *)self xpcConnection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  [v8 simulatePushWithCompletion:v6];
}

void __44__MDMClientCore_simulatePushWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error in simulatePushWithCompletion XPC reply. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)simulatePushIfNetworkTetheredWithCompletion:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__MDMClientCore_simulatePushIfNetworkTetheredWithCompletion___block_invoke;
  v9[3] = &unk_278856D88;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x2318F0080](v9);
  v7 = [(MDMClientCore *)self xpcConnection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  [v8 simulatePushIfNetworkTetheredWithCompletion:v6];
}

void __61__MDMClientCore_simulatePushIfNetworkTetheredWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error in simulatePushIfNetworkTethered XPC reply. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)pushToken
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v2 = [(MDMClientCore *)self xpcConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_13];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __26__MDMClientCore_pushToken__block_invoke_14;
  v6[3] = &unk_278856DD0;
  v6[4] = &v7;
  [v3 pushTokenWithCompletion:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __26__MDMClientCore_pushToken__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 DMCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_22E997000, v4, OS_LOG_TYPE_ERROR, "Error getting user push token from mdmuserd. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __26__MDMClientCore_pushToken__block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 DMCVerboseDescription];
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_22E997000, v8, OS_LOG_TYPE_ERROR, "Error getting user push token from mdmuserd. Error: %{public}@", &v13, 0xCu);
    }
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;

  v12 = *MEMORY[0x277D85DE8];
}

- (void)touchWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MDMClientCore *)self xpcConnection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__MDMClientCore_touchWithCompletion___block_invoke;
  v11[3] = &unk_278856D88;
  v6 = v4;
  v12 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__MDMClientCore_touchWithCompletion___block_invoke_16;
  v9[3] = &unk_278856D88;
  v10 = v6;
  v8 = v6;
  [v7 touchWithCompletion:v9];
}

void __37__MDMClientCore_touchWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error reaching out to mdm daemon: %{public}@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

void __37__MDMClientCore_touchWithCompletion___block_invoke_16(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(DMCLogObjects() + 8);
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error touching mdm daemon: %{public}@", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_22E997000, v4, OS_LOG_TYPE_DEBUG, "TouchWithCompletion completed!", &v8, 2u);
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)reauthenticationComplete
{
  v3 = [(MDMClientCore *)self xpcConnection];
  v2 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_18];
  [v2 reauthenticationCompleteWithCompletion:&__block_literal_global_18];
}

void __41__MDMClientCore_reauthenticationComplete__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 DMCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_22E997000, v4, OS_LOG_TYPE_ERROR, "Error in reauthenticationComplete XPC reply. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)nagWithID:(id)a3 clientID:(id)a4 schedule:(id)a5 title:(id)a6 message:(id)a7 notificationTitle:(id)a8 notificationMessage:(id)a9 actionTitle:(id)a10 actionURL:(id)a11 dismissTitle:(id)a12 dismissURL:(id)a13 deadlineURL:(id)a14 completion:(id)a15
{
  v19 = a15;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __166__MDMClientCore_nagWithID_clientID_schedule_title_message_notificationTitle_notificationMessage_actionTitle_actionURL_dismissTitle_dismissURL_deadlineURL_completion___block_invoke;
  v39[3] = &unk_278856D88;
  v40 = v19;
  v37 = v19;
  v20 = a14;
  v30 = a13;
  v29 = a12;
  v28 = a11;
  v27 = a10;
  v38 = a9;
  v26 = a8;
  v21 = a7;
  v24 = a6;
  v22 = a5;
  v23 = a4;
  v25 = a3;
  v34 = MEMORY[0x2318F0080](v39);
  v36 = [(MDMClientCore *)self xpcConnection];
  v32 = [v36 remoteObjectProxyWithErrorHandler:v34];
  [v32 nagWithID:v25 clientID:v23 schedule:v22 title:v24 message:v21 notificationTitle:v26 notificationMessage:v38 actionTitle:v27 actionURL:v28 dismissTitle:v29 dismissURL:v30 deadlineURL:v20 completion:v34];
}

void __166__MDMClientCore_nagWithID_clientID_schedule_title_message_notificationTitle_notificationMessage_actionTitle_actionURL_dismissTitle_dismissURL_deadlineURL_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "MDMClientCore XPC failed to nag with error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_debug_nagForMigrationWithCompletion:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__MDMClientCore__debug_nagForMigrationWithCompletion___block_invoke;
  v9[3] = &unk_278856D88;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x2318F0080](v9);
  v7 = [(MDMClientCore *)self xpcConnection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  [v8 nagForMigrationWithHardCodedValuesWithCompletion:v6];
}

void __54__MDMClientCore__debug_nagForMigrationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error in _debug_nagForMigrationWithCompletion XPC reply. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_debug_stopNaggingForMigration
{
  v3 = [(MDMClientCore *)self xpcConnection];
  v2 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_20];
  [v2 stopNaggingForMigrationWithCompletion:&__block_literal_global_20];
}

void __47__MDMClientCore__debug_stopNaggingForMigration__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 DMCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_22E997000, v4, OS_LOG_TYPE_ERROR, "Error in _debug_stopNaggingForMigration XPC reply. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)blockMDMCommandsWithCompletion:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__MDMClientCore_blockMDMCommandsWithCompletion___block_invoke;
  v9[3] = &unk_278856D88;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x2318F0080](v9);
  v7 = [(MDMClientCore *)self xpcConnection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  [v8 blockMDMCommandsWithCompletion:v5];
}

void __48__MDMClientCore_blockMDMCommandsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error connecting to remote. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)unblockMDMCommandsWithCompletion:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__MDMClientCore_unblockMDMCommandsWithCompletion___block_invoke;
  v9[3] = &unk_278856D88;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x2318F0080](v9);
  v7 = [(MDMClientCore *)self xpcConnection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  [v8 unblockMDMCommandsWithCompletion:v5];
}

void __50__MDMClientCore_unblockMDMCommandsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error connecting to remote. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)enablePushWakeWithCompletion:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__MDMClientCore_enablePushWakeWithCompletion___block_invoke;
  v9[3] = &unk_278856D88;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x2318F0080](v9);
  v7 = [(MDMClientCore *)self xpcConnection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  [v8 enablePushWakeWithCompletion:v5];
}

void __46__MDMClientCore_enablePushWakeWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error connecting to remote. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)disablePushWakeWithCompletion:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__MDMClientCore_disablePushWakeWithCompletion___block_invoke;
  v9[3] = &unk_278856D88;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x2318F0080](v9);
  v7 = [(MDMClientCore *)self xpcConnection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  [v8 disablePushWakeWithCompletion:v5];
}

void __47__MDMClientCore_disablePushWakeWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error connecting to remote. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendMDMAuthenticationRequestWithCompletionHandler:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__MDMClientCore_sendMDMAuthenticationRequestWithCompletionHandler___block_invoke;
  v9[3] = &unk_278856D88;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x2318F0080](v9);
  v7 = [(MDMClientCore *)self xpcConnection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  [v8 sendMDMAuthenticationRequestWithCompletionHandler:v5];
}

void __67__MDMClientCore_sendMDMAuthenticationRequestWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error connecting to remote. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendMDMCheckOutRequestWithCompletionHandler:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__MDMClientCore_sendMDMCheckOutRequestWithCompletionHandler___block_invoke;
  v9[3] = &unk_278856D88;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x2318F0080](v9);
  v7 = [(MDMClientCore *)self xpcConnection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  [v8 sendMDMCheckOutRequestWithCompletionHandler:v5];
}

void __61__MDMClientCore_sendMDMCheckOutRequestWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error connecting to remote. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __50__MDMClientCore_migrateMDMWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error in migrateMDMWithContext XPC reply. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)preserveAppsWithCompletion:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__MDMClientCore_preserveAppsWithCompletion___block_invoke;
  v9[3] = &unk_278856D88;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x2318F0080](v9);
  v7 = [(MDMClientCore *)self xpcConnection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  [v8 preserveAppsWithCompletion:v6];
}

void __44__MDMClientCore_preserveAppsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error in preserveApps XPC reply. Error: %{public}@. Not attempting a retry.", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeUnusedPreservedAppsWithCompletion:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__MDMClientCore_removeUnusedPreservedAppsWithCompletion___block_invoke;
  v9[3] = &unk_278856D88;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x2318F0080](v9);
  v7 = [(MDMClientCore *)self xpcConnection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  [v8 removeUnusedPreservedAppsWithCompletion:v6];
}

void __57__MDMClientCore_removeUnusedPreservedAppsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error in removeUnusedPreservedAppsWithCompletion XPC reply. Error: %{public}@. Not attempting a retry.", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)uprootMDM
{
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __26__MDMClientCore_uprootMDM__block_invoke_23;
  v6[3] = &unk_278856DF8;
  objc_copyWeak(&v8, &location);
  v7 = &__block_literal_global_22;
  v3 = MEMORY[0x2318F0080](v6);
  v4 = [(MDMClientCore *)self xpcConnection];
  v5 = [v4 remoteObjectProxyWithErrorHandler:v3];
  [v5 uprootMDMWithCompletion:v3];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __26__MDMClientCore_uprootMDM__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 DMCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_22E997000, v4, OS_LOG_TYPE_ERROR, "Error in uprootMDM XPC reply. Error: %{public}@. Not attempting a retry.", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __26__MDMClientCore_uprootMDM__block_invoke_23(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [v3 DMCVerboseDescription];
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_22E997000, v6, OS_LOG_TYPE_ERROR, "Error in uprootMDM XPC reply. Error: %{public}@. Retrying exactly once...", &v11, 0xCu);
    }

    v8 = [WeakRetained xpcConnection];
    v9 = [v8 remoteObjectProxyWithErrorHandler:*(a1 + 32)];
    [v9 uprootMDMWithCompletion:*(a1 + 32)];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)requestInstallOfAppsInRestoreWithCompletion:(id)a3
{
  v4 = a3;
  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_DEFAULT, "asking to restore applications", buf, 2u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__MDMClientCore_requestInstallOfAppsInRestoreWithCompletion___block_invoke;
  v10[3] = &unk_278856D88;
  v11 = v4;
  v6 = v4;
  v7 = MEMORY[0x2318F0080](v10);
  v8 = [(MDMClientCore *)self xpcConnection];
  v9 = [v8 remoteObjectProxyWithErrorHandler:v7];
  [v9 requestInstallOfAppsInRestoreWithCompletion:v7];
}

void __61__MDMClientCore_requestInstallOfAppsInRestoreWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error in restoreApps XPC reply. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)blockAppInstallsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_DEFAULT, "block app installs, client block", buf, 2u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__MDMClientCore_blockAppInstallsWithCompletion___block_invoke;
  v10[3] = &unk_278856D88;
  v11 = v4;
  v6 = v4;
  v7 = MEMORY[0x2318F0080](v10);
  v8 = [(MDMClientCore *)self xpcConnection];
  v9 = [v8 remoteObjectProxyWithErrorHandler:v7];
  [v9 blockAppInstallsWithCompletion:v7];
}

void __48__MDMClientCore_blockAppInstallsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "block app installs, client block, error in XPC reply: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)unblockAppInstallsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_DEFAULT, "block app installs, client unblock", buf, 2u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__MDMClientCore_unblockAppInstallsWithCompletion___block_invoke;
  v10[3] = &unk_278856D88;
  v11 = v4;
  v6 = v4;
  v7 = MEMORY[0x2318F0080](v10);
  v8 = [(MDMClientCore *)self xpcConnection];
  v9 = [v8 remoteObjectProxyWithErrorHandler:v7];
  [v9 unblockAppInstallsWithCompletion:v7];
}

void __50__MDMClientCore_unblockAppInstallsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "block app installs, client unblock, error in XPC reply: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __64__MDMClientCore_processDeviceRequest_encodeResponse_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Failed to process device request. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3, 0, 0);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)depPushTokenWithCompletion:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__MDMClientCore_depPushTokenWithCompletion___block_invoke;
  v9[3] = &unk_278856D88;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x2318F0080](v9);
  v7 = [(MDMClientCore *)self xpcConnection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  [v8 depPushTokenWithCompletion:v5];
}

void __44__MDMClientCore_depPushTokenWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error connecting to remote. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)syncDEPPushTokenWithDelay:(double)a3 completion:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__MDMClientCore_syncDEPPushTokenWithDelay_completion___block_invoke;
  v11[3] = &unk_278856D88;
  v12 = v6;
  v7 = v6;
  v8 = MEMORY[0x2318F0080](v11);
  v9 = [(MDMClientCore *)self xpcConnection];
  v10 = [v9 remoteObjectProxyWithErrorHandler:v8];
  [v10 syncDEPPushTokenWithDelay:v7 completion:a3];
}

void __54__MDMClientCore_syncDEPPushTokenWithDelay_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error connecting to remote. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)monitorDEPPushTokenIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__MDMClientCore_monitorDEPPushTokenIfNeededWithCompletion___block_invoke;
  v9[3] = &unk_278856D88;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x2318F0080](v9);
  v7 = [(MDMClientCore *)self xpcConnection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  [v8 monitorDEPPushTokenIfNeededWithCompletion:v5];
}

void __59__MDMClientCore_monitorDEPPushTokenIfNeededWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error connecting to remote. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)monitorDEPPushTokenWithCompletion:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__MDMClientCore_monitorDEPPushTokenWithCompletion___block_invoke;
  v9[3] = &unk_278856D88;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x2318F0080](v9);
  v7 = [(MDMClientCore *)self xpcConnection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  [v8 monitorDEPPushTokenWithCompletion:v5];
}

void __51__MDMClientCore_monitorDEPPushTokenWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error connecting to remote. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)simulateDEPPushWithCompletion:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__MDMClientCore_simulateDEPPushWithCompletion___block_invoke;
  v9[3] = &unk_278856D88;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x2318F0080](v9);
  v7 = [(MDMClientCore *)self xpcConnection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  [v8 simulateDEPPushWithCompletion:v5];
}

void __47__MDMClientCore_simulateDEPPushWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error connecting to remote. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __104__MDMClientCore_requestDeviceObliterationWithPreserveDataPlan_disallowProximitySetup_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error connecting to remote. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __180__MDMClientCore_requestReturnToServiceObliterationWithPreserveDataPlan_disallowProximitySetup_mdmProfileData_wifiProfileData_revertToSnapshotName_bootstrapToken_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error connecting to remote. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __77__MDMClientCore_evaluateMigrationStatusWithPollFromServer_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error connecting to remote. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)getWatchPairingTokenForPhoneID:(id)a3 watchID:(id)a4 securityToken:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__MDMClientCore_getWatchPairingTokenForPhoneID_watchID_securityToken_completionHandler___block_invoke;
  v18[3] = &unk_278856D88;
  v19 = v10;
  v11 = v10;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = MEMORY[0x2318F0080](v18);
  v16 = [(MDMClientCore *)self xpcConnection];
  v17 = [v16 remoteObjectProxyWithErrorHandler:v15];
  [v17 getWatchPairingTokenForPhoneID:v14 watchID:v13 securityToken:v12 completionHandler:v11];
}

void __88__MDMClientCore_getWatchPairingTokenForPhoneID_watchID_securityToken_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error connecting to remote. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)getOrgTokenForMAIDWithCompletionHandler:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__MDMClientCore_getOrgTokenForMAIDWithCompletionHandler___block_invoke;
  v9[3] = &unk_278856D88;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x2318F0080](v9);
  v7 = [(MDMClientCore *)self xpcConnection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  [v8 getOrgTokenForMAIDWithCompletionHandler:v5];
}

void __57__MDMClientCore_getOrgTokenForMAIDWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error connecting to remote. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __62__MDMClientCore_processUserRequest_encodeResponse_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Failed to process user request. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3, 0, 0);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAwaitingUserConfigured
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v2 = [(MDMClientCore *)self xpcConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_25];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__MDMClientCore_isAwaitingUserConfigured__block_invoke_26;
  v5[3] = &unk_278856E20;
  v5[4] = &v6;
  [v3 isAwaitingUserConfiguredWithCompletion:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __41__MDMClientCore_isAwaitingUserConfigured__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 DMCVerboseDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_22E997000, v4, OS_LOG_TYPE_ERROR, "Failed to start query for isAwaitingUserConfigured. Error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __41__MDMClientCore_isAwaitingUserConfigured__block_invoke_26(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [v5 DMCVerboseDescription];
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_22E997000, v7, OS_LOG_TYPE_ERROR, "Failed to query isAwaitingUserConfigured. Error: %{public}@", &v10, 0xCu);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)requestRRTSCheckInAndValidationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__MDMClientCore_requestRRTSCheckInAndValidationWithCompletionHandler___block_invoke;
  v9[3] = &unk_278856D88;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x2318F0080](v9);
  v7 = [(MDMClientCore *)self xpcConnection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  [v8 requestRRTSCheckInAndValidationWithCompletionHandler:v5];
}

void __70__MDMClientCore_requestRRTSCheckInAndValidationWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error connecting to remote. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, 0, 0, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)generateBootstrapTokenWithDevicePasscode:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__MDMClientCore_generateBootstrapTokenWithDevicePasscode_completionHandler___block_invoke;
  v12[3] = &unk_278856D88;
  v13 = v6;
  v7 = v6;
  v8 = a3;
  v9 = MEMORY[0x2318F0080](v12);
  v10 = [(MDMClientCore *)self xpcConnection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];
  [v11 generateBootstrapTokenWithDevicePasscode:v8 completionHandler:v7];
}

void __76__MDMClientCore_generateBootstrapTokenWithDevicePasscode_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error connecting to remote. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)generateBootstrapTokenWithDevicePasscodeContext:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__MDMClientCore_generateBootstrapTokenWithDevicePasscodeContext_completionHandler___block_invoke;
  v12[3] = &unk_278856D88;
  v13 = v6;
  v7 = v6;
  v8 = a3;
  v9 = MEMORY[0x2318F0080](v12);
  v10 = [(MDMClientCore *)self xpcConnection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];
  [v11 generateBootstrapTokenWithDevicePasscodeContext:v8 completionHandler:v7];
}

void __83__MDMClientCore_generateBootstrapTokenWithDevicePasscodeContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error connecting to remote. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)syncBootstrapTokenToMDMWithToken:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__MDMClientCore_syncBootstrapTokenToMDMWithToken_completionHandler___block_invoke;
  v12[3] = &unk_278856D88;
  v13 = v6;
  v7 = v6;
  v8 = a3;
  v9 = MEMORY[0x2318F0080](v12);
  v10 = [(MDMClientCore *)self xpcConnection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];
  [v11 syncBootstrapTokenToMDMWithToken:v8 completionHandler:v7];
}

void __68__MDMClientCore_syncBootstrapTokenToMDMWithToken_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error connecting to remote. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deleteBootstrapTokenWithToken:(id)a3 devicePasscode:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__MDMClientCore_deleteBootstrapTokenWithToken_devicePasscode_completionHandler___block_invoke;
  v15[3] = &unk_278856D88;
  v16 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = MEMORY[0x2318F0080](v15);
  v13 = [(MDMClientCore *)self xpcConnection];
  v14 = [v13 remoteObjectProxyWithErrorHandler:v12];
  [v14 deleteBootstrapTokenWithToken:v11 devicePasscode:v10 completionHandler:v9];
}

void __80__MDMClientCore_deleteBootstrapTokenWithToken_devicePasscode_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error connecting to remote. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deleteBootstrapTokenWithToken:(id)a3 devicePasscodeContext:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__MDMClientCore_deleteBootstrapTokenWithToken_devicePasscodeContext_completionHandler___block_invoke;
  v15[3] = &unk_278856D88;
  v16 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = MEMORY[0x2318F0080](v15);
  v13 = [(MDMClientCore *)self xpcConnection];
  v14 = [v13 remoteObjectProxyWithErrorHandler:v12];
  [v14 deleteBootstrapTokenWithToken:v11 devicePasscodeContext:v10 completionHandler:v9];
}

void __87__MDMClientCore_deleteBootstrapTokenWithToken_devicePasscodeContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error connecting to remote. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)generateAndSyncBootstrapTokenWithDevicePasscode:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__MDMClientCore_generateAndSyncBootstrapTokenWithDevicePasscode_completionHandler___block_invoke;
  v12[3] = &unk_278856D88;
  v13 = v6;
  v7 = v6;
  v8 = a3;
  v9 = MEMORY[0x2318F0080](v12);
  v10 = [(MDMClientCore *)self xpcConnection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];
  [v11 generateAndSyncBootstrapTokenWithDevicePasscode:v8 completionHandler:v7];
}

void __83__MDMClientCore_generateAndSyncBootstrapTokenWithDevicePasscode_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error connecting to remote. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)generateAndSyncBootstrapTokenWithDevicePasscodeContext:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __90__MDMClientCore_generateAndSyncBootstrapTokenWithDevicePasscodeContext_completionHandler___block_invoke;
  v12[3] = &unk_278856D88;
  v13 = v6;
  v7 = v6;
  v8 = a3;
  v9 = MEMORY[0x2318F0080](v12);
  v10 = [(MDMClientCore *)self xpcConnection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];
  [v11 generateAndSyncBootstrapTokenWithDevicePasscodeContext:v8 completionHandler:v7];
}

void __90__MDMClientCore_generateAndSyncBootstrapTokenWithDevicePasscodeContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "Error connecting to remote. Error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (NSXPCConnection)xpcConnection
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v3 = [(MDMClientCore *)self xpcConnectionSyncQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__MDMClientCore_xpcConnection__block_invoke;
  v6[3] = &unk_278856E48;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __30__MDMClientCore_xpcConnection__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  if (!v3)
  {
    [v2 _queue_createAndStartMDMXPCConnection];
    v3 = *(*(a1 + 32) + 8);
  }

  v4 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v4, v3);
}

- (void)_destroyXPCConnectionAndInvalidate:(BOOL)a3
{
  v5 = [(MDMClientCore *)self xpcConnectionSyncQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__MDMClientCore__destroyXPCConnectionAndInvalidate___block_invoke;
  v6[3] = &unk_278856E70;
  v7 = a3;
  v6[4] = self;
  dispatch_sync(v5, v6);
}

void __52__MDMClientCore__destroyXPCConnectionAndInvalidate___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(*(a1 + 32) + 8) invalidate];
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

- (void)_queue_createAndStartMDMXPCConnection
{
  v3 = [(MDMClientCore *)self channelType];
  if (v3 == 1)
  {
    v4 = @"com.apple.managedconfiguration.mdmuserdservice";
    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28435A2C8];
    MDMUserXPCProtocolInitialize(v5);
  }

  else if (v3)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = @"com.apple.managedconfiguration.mdmdservice";
    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28435A268];
    MDMXPCProtocolInitialize(v5);
  }

  v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:v4 options:4096];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v6;

  [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v5];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__MDMClientCore__queue_createAndStartMDMXPCConnection__block_invoke;
  v10[3] = &unk_278856E98;
  objc_copyWeak(&v11, &location);
  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__MDMClientCore__queue_createAndStartMDMXPCConnection__block_invoke_150;
  v8[3] = &unk_278856E98;
  objc_copyWeak(&v9, &location);
  [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v8];
  [(NSXPCConnection *)self->_xpcConnection resume];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __54__MDMClientCore__queue_createAndStartMDMXPCConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_22E997000, v2, OS_LOG_TYPE_ERROR, "MDM connection invalidation handler called", v3, 2u);
  }

  [WeakRetained _destroyXPCConnectionAndInvalidate:0];
}

void __54__MDMClientCore__queue_createAndStartMDMXPCConnection__block_invoke_150(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_22E997000, v2, OS_LOG_TYPE_DEFAULT, "MDM connection interruption handler called", v3, 2u);
  }

  [WeakRetained _destroyXPCConnectionAndInvalidate:1];
}

@end