@interface MAPushNotificationController
+ (id)sharedInstance;
- (MAPushNotificationController)init;
- (id)_serviceConnection;
- (id)asyncProxy;
- (id)pushJobDescriptions;
- (id)subscribedChannelIDs;
- (id)synchronousProxy;
- (void)addSyntheticJobWithType:(id)a3 assetSpecifier:(id)a4 matchingAssetVersion:(id)a5 triggerInterval:(int64_t)a6;
- (void)asyncSubscribeToChannelWithIdentifier:(id)a3 completion:(id)a4;
- (void)asyncUnsubscribeToChannelWithIdentifier:(id)a3 completion:(id)a4;
- (void)didReceivePushNotificationWithInfo:(id)a3;
- (void)subscribeToChannelWithIdentifier:(id)a3;
- (void)subscribedChannelIDsWithCompletion:(id)a3;
- (void)triggerNotificationWithPayload:(id)a3 withCompletion:(id)a4;
- (void)unsubscribeFromAllChannels;
- (void)unsubscribeToChannelWithIdentifier:(id)a3;
@end

@implementation MAPushNotificationController

- (MAPushNotificationController)init
{
  v6.receiver = self;
  v6.super_class = MAPushNotificationController;
  v2 = [(MAPushNotificationController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    serviceConnectionLock = v2->_serviceConnectionLock;
    v2->_serviceConnectionLock = v3;

    v2->_verboseLogging = _MAPreferencesIsVerboseLoggingEnabled() != 0;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[MAPushNotificationController sharedInstance];
  }

  v3 = sharedInstance_instance_0;

  return v3;
}

uint64_t __46__MAPushNotificationController_sharedInstance__block_invoke()
{
  sharedInstance_instance_0 = objc_alloc_init(MAPushNotificationController);

  return MEMORY[0x1EEE66BB8]();
}

- (id)_serviceConnection
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(MAPushNotificationController *)self serviceConnectionLock];
  [v3 lock];

  v4 = [(MAPushNotificationController *)self serviceConnection];

  if (!v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.mobileassetd.push-notifications" options:4096];
    [(MAPushNotificationController *)self setServiceConnection:v5];

    v6 = [(MAPushNotificationController *)self serviceConnection];

    if (!v6)
    {
      v7 = _MAClientLog(@"PushNotification");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v24 = @"com.apple.mobileassetd.push-notifications";
        _os_log_impl(&dword_197AD5000, v7, OS_LOG_TYPE_ERROR, "Could not connect to service %{public}@", buf, 0xCu);
      }
    }

    v8 = MAPushServiceInterface();
    v9 = [(MAPushNotificationController *)self serviceConnection];
    [v9 setRemoteObjectInterface:v8];

    v10 = MAServiceClientInterface();
    v11 = [(MAPushNotificationController *)self serviceConnection];
    [v11 setExportedInterface:v10];

    v12 = [(MAPushNotificationController *)self serviceConnection];
    [v12 setExportedObject:self];

    objc_initWeak(buf, self);
    v13 = [(MAPushNotificationController *)self serviceConnection];
    [v13 setInterruptionHandler:&__block_literal_global_1115];

    v14 = [(MAPushNotificationController *)self serviceConnection];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __50__MAPushNotificationController__serviceConnection__block_invoke_1116;
    v21[3] = &unk_1E74CB168;
    objc_copyWeak(&v22, buf);
    [v14 setInvalidationHandler:v21];

    WeakRetained = objc_loadWeakRetained(buf);
    v16 = [WeakRetained serviceConnection];
    [v16 resume];

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  v17 = [(MAPushNotificationController *)self serviceConnectionLock];
  [v17 unlock];

  v18 = [(MAPushNotificationController *)self serviceConnection];
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

void __50__MAPushNotificationController__serviceConnection__block_invoke()
{
  v0 = _MAClientLog(@"PushNotification");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_197AD5000, v0, OS_LOG_TYPE_ERROR, "Service connection interrupted", v1, 2u);
  }
}

void __50__MAPushNotificationController__serviceConnection__block_invoke_1116(uint64_t a1)
{
  v2 = _MAClientLog(@"PushNotification");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_impl(&dword_197AD5000, v2, OS_LOG_TYPE_ERROR, "[WARNING] Service connection invalidated", v8, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained serviceConnectionLock];
  [v4 lock];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setServiceConnection:0];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 serviceConnectionLock];
  [v7 unlock];
}

- (id)synchronousProxy
{
  v2 = [(MAPushNotificationController *)self _serviceConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_1119];

  return v3;
}

void __48__MAPushNotificationController_synchronousProxy__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = _MAClientLog(@"PushNotification");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_197AD5000, v3, OS_LOG_TYPE_ERROR, "Error making connection to mobileassetd: %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (id)asyncProxy
{
  v2 = [(MAPushNotificationController *)self _serviceConnection];
  v3 = [v2 remoteObjectProxyWithErrorHandler:&__block_literal_global_1121_0];

  return v3;
}

void __42__MAPushNotificationController_asyncProxy__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = _MAClientLog(@"PushNotification");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_197AD5000, v3, OS_LOG_TYPE_ERROR, "Error making connection to mobileassetd: %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)asyncSubscribeToChannelWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MAPushNotificationController *)self asyncProxy];
  [v8 subscribeToChannelWithIdentifier:v7 completion:v6];
}

- (void)subscribeToChannelWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MAPushNotificationController *)self synchronousProxy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__MAPushNotificationController_subscribeToChannelWithIdentifier___block_invoke;
  v6[3] = &unk_1E74CB1B0;
  v6[4] = self;
  [v5 subscribeToChannelWithIdentifier:v4 completion:v6];
}

void __65__MAPushNotificationController_subscribeToChannelWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) verboseLogging])
  {
    v4 = _MAClientLog(@"PushNotification");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_197AD5000, v4, OS_LOG_TYPE_DEFAULT, "Subscribed to channel %{public}@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)asyncUnsubscribeToChannelWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MAPushNotificationController *)self asyncProxy];
  [v8 unsubscribeToChannelWithIdentifier:v7 completion:v6];
}

- (void)unsubscribeToChannelWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MAPushNotificationController *)self synchronousProxy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__MAPushNotificationController_unsubscribeToChannelWithIdentifier___block_invoke;
  v6[3] = &unk_1E74CB1B0;
  v6[4] = self;
  [v5 unsubscribeToChannelWithIdentifier:v4 completion:v6];
}

void __67__MAPushNotificationController_unsubscribeToChannelWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) verboseLogging])
  {
    v4 = _MAClientLog(@"PushNotification");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_197AD5000, v4, OS_LOG_TYPE_DEFAULT, "Unsubscribed to channel %{public}@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)subscribedChannelIDsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MAPushNotificationController *)self asyncProxy];
  [v5 subscribedChannelIDsWithCompletion:v4];
}

- (void)unsubscribeFromAllChannels
{
  v2 = [(MAPushNotificationController *)self synchronousProxy];
  [v2 unsubscribeFromAllChannels];
}

- (id)subscribedChannelIDs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  v2 = [(MAPushNotificationController *)self synchronousProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__MAPushNotificationController_subscribedChannelIDs__block_invoke;
  v5[3] = &unk_1E74CB1D8;
  v5[4] = &v6;
  [v2 subscribedChannelIDsWithCompletion:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)triggerNotificationWithPayload:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MAPushNotificationController *)self synchronousProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__MAPushNotificationController_triggerNotificationWithPayload_withCompletion___block_invoke;
  v10[3] = &unk_1E74CA590;
  v11 = v6;
  v9 = v6;
  [v8 triggerPushNotificationWithPayload:v7 withCompletion:v10];
}

- (id)pushJobDescriptions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  v2 = [(MAPushNotificationController *)self synchronousProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__MAPushNotificationController_pushJobDescriptions__block_invoke;
  v5[3] = &unk_1E74CB1D8;
  v5[4] = &v6;
  [v2 pushJobsAwaitingTriggerWithCompletion:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)addSyntheticJobWithType:(id)a3 assetSpecifier:(id)a4 matchingAssetVersion:(id)a5 triggerInterval:(int64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(MAPushNotificationController *)self synchronousProxy];
  [v13 addSyntheticJobWithType:v12 assetSpecifier:v11 matchingAssetVersion:v10 triggerInterval:a6];
}

- (void)didReceivePushNotificationWithInfo:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = _MAClientLog(@"PushNotification");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_197AD5000, v4, OS_LOG_TYPE_DEFAULT, "Client received notification with info %{public}@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end