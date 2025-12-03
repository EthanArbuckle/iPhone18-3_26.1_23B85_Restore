@interface MAPushNotificationController
+ (id)sharedInstance;
- (MAPushNotificationController)init;
- (id)_serviceConnection;
- (id)asyncProxy;
- (id)pushJobDescriptions;
- (id)subscribedChannelIDs;
- (id)synchronousProxy;
- (void)addSyntheticJobWithType:(id)type assetSpecifier:(id)specifier matchingAssetVersion:(id)version triggerInterval:(int64_t)interval;
- (void)asyncSubscribeToChannelWithIdentifier:(id)identifier completion:(id)completion;
- (void)asyncUnsubscribeToChannelWithIdentifier:(id)identifier completion:(id)completion;
- (void)didReceivePushNotificationWithInfo:(id)info;
- (void)subscribeToChannelWithIdentifier:(id)identifier;
- (void)subscribedChannelIDsWithCompletion:(id)completion;
- (void)triggerNotificationWithPayload:(id)payload withCompletion:(id)completion;
- (void)unsubscribeFromAllChannels;
- (void)unsubscribeToChannelWithIdentifier:(id)identifier;
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
  serviceConnectionLock = [(MAPushNotificationController *)self serviceConnectionLock];
  [serviceConnectionLock lock];

  serviceConnection = [(MAPushNotificationController *)self serviceConnection];

  if (!serviceConnection)
  {
    v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.mobileassetd.push-notifications" options:4096];
    [(MAPushNotificationController *)self setServiceConnection:v5];

    serviceConnection2 = [(MAPushNotificationController *)self serviceConnection];

    if (!serviceConnection2)
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
    serviceConnection3 = [(MAPushNotificationController *)self serviceConnection];
    [serviceConnection3 setRemoteObjectInterface:v8];

    v10 = MAServiceClientInterface();
    serviceConnection4 = [(MAPushNotificationController *)self serviceConnection];
    [serviceConnection4 setExportedInterface:v10];

    serviceConnection5 = [(MAPushNotificationController *)self serviceConnection];
    [serviceConnection5 setExportedObject:self];

    objc_initWeak(buf, self);
    serviceConnection6 = [(MAPushNotificationController *)self serviceConnection];
    [serviceConnection6 setInterruptionHandler:&__block_literal_global_1115];

    serviceConnection7 = [(MAPushNotificationController *)self serviceConnection];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __50__MAPushNotificationController__serviceConnection__block_invoke_1116;
    v21[3] = &unk_1E74CB168;
    objc_copyWeak(&v22, buf);
    [serviceConnection7 setInvalidationHandler:v21];

    WeakRetained = objc_loadWeakRetained(buf);
    serviceConnection8 = [WeakRetained serviceConnection];
    [serviceConnection8 resume];

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  serviceConnectionLock2 = [(MAPushNotificationController *)self serviceConnectionLock];
  [serviceConnectionLock2 unlock];

  serviceConnection9 = [(MAPushNotificationController *)self serviceConnection];
  v19 = *MEMORY[0x1E69E9840];

  return serviceConnection9;
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
  _serviceConnection = [(MAPushNotificationController *)self _serviceConnection];
  v3 = [_serviceConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_1119];

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
  _serviceConnection = [(MAPushNotificationController *)self _serviceConnection];
  v3 = [_serviceConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_1121_0];

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

- (void)asyncSubscribeToChannelWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  asyncProxy = [(MAPushNotificationController *)self asyncProxy];
  [asyncProxy subscribeToChannelWithIdentifier:identifierCopy completion:completionCopy];
}

- (void)subscribeToChannelWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  synchronousProxy = [(MAPushNotificationController *)self synchronousProxy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__MAPushNotificationController_subscribeToChannelWithIdentifier___block_invoke;
  v6[3] = &unk_1E74CB1B0;
  v6[4] = self;
  [synchronousProxy subscribeToChannelWithIdentifier:identifierCopy completion:v6];
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

- (void)asyncUnsubscribeToChannelWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  asyncProxy = [(MAPushNotificationController *)self asyncProxy];
  [asyncProxy unsubscribeToChannelWithIdentifier:identifierCopy completion:completionCopy];
}

- (void)unsubscribeToChannelWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  synchronousProxy = [(MAPushNotificationController *)self synchronousProxy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__MAPushNotificationController_unsubscribeToChannelWithIdentifier___block_invoke;
  v6[3] = &unk_1E74CB1B0;
  v6[4] = self;
  [synchronousProxy unsubscribeToChannelWithIdentifier:identifierCopy completion:v6];
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

- (void)subscribedChannelIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  asyncProxy = [(MAPushNotificationController *)self asyncProxy];
  [asyncProxy subscribedChannelIDsWithCompletion:completionCopy];
}

- (void)unsubscribeFromAllChannels
{
  synchronousProxy = [(MAPushNotificationController *)self synchronousProxy];
  [synchronousProxy unsubscribeFromAllChannels];
}

- (id)subscribedChannelIDs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  synchronousProxy = [(MAPushNotificationController *)self synchronousProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__MAPushNotificationController_subscribedChannelIDs__block_invoke;
  v5[3] = &unk_1E74CB1D8;
  v5[4] = &v6;
  [synchronousProxy subscribedChannelIDsWithCompletion:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)triggerNotificationWithPayload:(id)payload withCompletion:(id)completion
{
  completionCopy = completion;
  payloadCopy = payload;
  synchronousProxy = [(MAPushNotificationController *)self synchronousProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__MAPushNotificationController_triggerNotificationWithPayload_withCompletion___block_invoke;
  v10[3] = &unk_1E74CA590;
  v11 = completionCopy;
  v9 = completionCopy;
  [synchronousProxy triggerPushNotificationWithPayload:payloadCopy withCompletion:v10];
}

- (id)pushJobDescriptions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  synchronousProxy = [(MAPushNotificationController *)self synchronousProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__MAPushNotificationController_pushJobDescriptions__block_invoke;
  v5[3] = &unk_1E74CB1D8;
  v5[4] = &v6;
  [synchronousProxy pushJobsAwaitingTriggerWithCompletion:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)addSyntheticJobWithType:(id)type assetSpecifier:(id)specifier matchingAssetVersion:(id)version triggerInterval:(int64_t)interval
{
  versionCopy = version;
  specifierCopy = specifier;
  typeCopy = type;
  synchronousProxy = [(MAPushNotificationController *)self synchronousProxy];
  [synchronousProxy addSyntheticJobWithType:typeCopy assetSpecifier:specifierCopy matchingAssetVersion:versionCopy triggerInterval:interval];
}

- (void)didReceivePushNotificationWithInfo:(id)info
{
  v8 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v4 = _MAClientLog(@"PushNotification");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = infoCopy;
    _os_log_impl(&dword_197AD5000, v4, OS_LOG_TYPE_DEFAULT, "Client received notification with info %{public}@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end