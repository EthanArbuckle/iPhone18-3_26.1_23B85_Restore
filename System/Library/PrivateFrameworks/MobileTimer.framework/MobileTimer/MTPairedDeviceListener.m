@interface MTPairedDeviceListener
+ (MTPairedDeviceListener)sharedListener;
+ (id)_handledNotifications;
- (BOOL)handlesNotification:(id)a3 ofType:(int64_t)a4;
- (BOOL)hasActivePairedDeviceCheckSyncing:(BOOL)a3;
- (BOOL)hasActivePairedDeviceSupportingAlarmKit;
- (MTPairedDeviceListener)init;
- (NSString)pairedDeviceVersion;
- (void)_registerForLocalNotifications;
- (void)didReceiveNotification:(id)a3;
- (void)didReceiveNotificationNamed:(id)a3;
- (void)handleNotification:(id)a3 ofType:(int64_t)a4 completion:(id)a5;
- (void)notifyObserversWithBlock:(id)a3;
- (void)printDiagnostics;
- (void)updateActiveDeviceInfo;
@end

@implementation MTPairedDeviceListener

+ (MTPairedDeviceListener)sharedListener
{
  if (sharedListener_onceToken != -1)
  {
    +[MTPairedDeviceListener sharedListener];
  }

  v3 = sharedListener___sharedListener;

  return v3;
}

uint64_t __40__MTPairedDeviceListener_sharedListener__block_invoke()
{
  sharedListener___sharedListener = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (MTPairedDeviceListener)init
{
  v16 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = MTPairedDeviceListener;
  v2 = [(MTPairedDeviceListener *)&v13 init];
  if (v2)
  {
    v3 = MTLogForCategory(6);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v2;
      _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@", buf, 0xCu);
    }

    v4 = dispatch_queue_attr_make_with_qos_class(0, +[MTScheduler defaultPriority], -1);
    v5 = dispatch_queue_create("com.apple.MTPairedDeviceListener.access-queue", v4);
    serializerQueue = v2->_serializerQueue;
    v2->_serializerQueue = v5;

    v7 = [MEMORY[0x1E69B3790] schedulerWithDispatchQueue:v2->_serializerQueue];
    serializer = v2->_serializer;
    v2->_serializer = v7;

    v9 = objc_opt_new();
    observers = v2->_observers;
    v2->_observers = v9;

    [(MTPairedDeviceListener *)v2 _registerForLocalNotifications];
    [(MTPairedDeviceListener *)v2 updateActiveDeviceInfo];
  }

  v11 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)_registerForLocalNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_didReceiveNotification_ name:*MEMORY[0x1E69B3678] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel_didReceiveNotification_ name:*MEMORY[0x1E69B3660] object:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel_didReceiveNotification_ name:*MEMORY[0x1E69B3688] object:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 addObserver:self selector:sel_didReceiveNotification_ name:*MEMORY[0x1E69B3668] object:0];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 addObserver:self selector:sel_didReceiveNotification_ name:@"MTPairedDevicePreferencesChanged" object:0];
}

- (void)updateActiveDeviceInfo
{
  v3 = [(MTPairedDeviceListener *)self serializer];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__MTPairedDeviceListener_updateActiveDeviceInfo__block_invoke;
  v4[3] = &unk_1E7B0C9D8;
  v4[4] = self;
  [v3 performBlock:v4];
}

void __48__MTPairedDeviceListener_updateActiveDeviceInfo__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69B36C0] sharedInstance];
  v3 = [v2 getActivePairedDevice];

  [*(a1 + 32) setPairedDevice:v3];
  v4 = MTLogForCategory(6);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v5 pairedDevice];
    v7 = [v6 valueForProperty:*MEMORY[0x1E69B3608]];
    v8 = [*(a1 + 32) pairedDevice];
    v9 = [v8 valueForProperty:*MEMORY[0x1E69B3640]];
    v11 = 138543874;
    v12 = v5;
    v13 = 2114;
    v14 = v7;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Active Paired Device: %{public}@ (version: %{public}@)", &v11, 0x20u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (id)_handledNotifications
{
  if (_handledNotifications_onceToken != -1)
  {
    +[MTPairedDeviceListener _handledNotifications];
  }

  v3 = _handledNotifications___handledNotifications;

  return v3;
}

void __47__MTPairedDeviceListener__handledNotifications__block_invoke()
{
  v7[5] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *MEMORY[0x1E69B36A8];
  v7[0] = *MEMORY[0x1E69B36A0];
  v7[1] = v1;
  v2 = *MEMORY[0x1E69B3670];
  v7[2] = *MEMORY[0x1E69B3680];
  v7[3] = v2;
  v7[4] = *MEMORY[0x1E69B3698];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:5];
  v4 = [v0 setWithArray:v3];
  v5 = _handledNotifications___handledNotifications;
  _handledNotifications___handledNotifications = v4;

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)handlesNotification:(id)a3 ofType:(int64_t)a4
{
  v4 = a3;
  v5 = [objc_opt_class() _handledNotifications];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)handleNotification:(id)a3 ofType:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  [(MTPairedDeviceListener *)self didReceiveNotificationNamed:a3];
  v7 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8);
    v7 = v8;
  }
}

- (void)didReceiveNotification:(id)a3
{
  v4 = [a3 name];
  [(MTPairedDeviceListener *)self didReceiveNotificationNamed:v4];
}

- (void)didReceiveNotificationNamed:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(6);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ received %{public}@", &v7, 0x16u);
  }

  [(MTPairedDeviceListener *)self updateActiveDeviceInfo];
  [(MTPairedDeviceListener *)self notifyObserversWithBlock:&__block_literal_global_14_0];

  v6 = *MEMORY[0x1E69E9840];
}

- (NSString)pairedDeviceVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  serializerQueue = self->_serializerQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__MTPairedDeviceListener_pairedDeviceVersion__block_invoke;
  v5[3] = &unk_1E7B0CAC0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serializerQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __45__MTPairedDeviceListener_pairedDeviceVersion__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) pairedDevice];
  v2 = [v5 valueForProperty:*MEMORY[0x1E69B3628]];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)hasActivePairedDeviceCheckSyncing:(BOOL)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  serializerQueue = self->_serializerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__MTPairedDeviceListener_hasActivePairedDeviceCheckSyncing___block_invoke;
  block[3] = &unk_1E7B0CEB0;
  block[4] = self;
  block[5] = &v8;
  v7 = a3;
  dispatch_sync(serializerQueue, block);
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __60__MTPairedDeviceListener_hasActivePairedDeviceCheckSyncing___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) pairedDevice];

  if (!v2)
  {
    v3 = MTLogForCategory(6);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v14 = 138543362;
      v15 = v4;
      _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ no paired device detected", &v14, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  if (*(a1 + 48) == 1 && *(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v5 = [*(a1 + 32) pairedDevice];
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C0F3C2C3-0CDE-4DF9-A95A-789AC9A0348B"];
    v7 = [v5 supportsCapability:v6];

    if ((v7 & 1) == 0)
    {
      v8 = MTLogForCategory(6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v14 = 138543362;
        v15 = v9;
        _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ paired watch version is too old for sync", &v14, 0xCu);
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v10 = MTLogForCategory(6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v12 = &stru_1F29360E0;
      if (*(a1 + 48))
      {
        v12 = @" with sync capability";
      }

      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_INFO, "%{public}@ has active paired watch%{public}@", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasActivePairedDeviceSupportingAlarmKit
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  serializerQueue = self->_serializerQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__MTPairedDeviceListener_hasActivePairedDeviceSupportingAlarmKit__block_invoke;
  v5[3] = &unk_1E7B0CA50;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serializerQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __65__MTPairedDeviceListener_hasActivePairedDeviceSupportingAlarmKit__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) pairedDevice];

  if (!v2)
  {
    v3 = MTLogForCategory(10);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v13 = 138543362;
      v14 = v4;
      _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_INFO, "%{public}@ no paired device detected", &v13, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v5 = [*(a1 + 32) pairedDevice];
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"D5834418-F4A0-4C74-AA38-8ED5F7765BD1"];
    v7 = [v5 supportsCapability:v6];

    if ((v7 & 1) == 0)
    {
      v8 = MTLogForCategory(10);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 32);
        v13 = 138543362;
        v14 = v9;
        _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ paired watch version is too old for custom AlarmKit alert", &v13, 0xCu);
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v10 = MTLogForCategory(10);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_INFO, "%{public}@ has active paired watch with AlarmKit capability", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)notifyObserversWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(MTPairedDeviceListener *)self observers];
  [v5 enumerateObserversWithBlock:v4];
}

- (void)printDiagnostics
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "-----MTPairedDeviceListener-----", &v14, 2u);
  }

  v4 = MTLogForCategory(6);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(MTPairedDeviceListener *)self pairedDevice];
    v6 = [v5 valueForProperty:*MEMORY[0x1E69B3598]];
    v7 = [(MTPairedDeviceListener *)self pairedDevice];
    v8 = [v7 valueForProperty:*MEMORY[0x1E69B3640]];
    v9 = [(MTPairedDeviceListener *)self pairedDevice];
    v10 = [v9 valueForProperty:*MEMORY[0x1E69B3628]];
    v14 = 138543874;
    v15 = v6;
    v16 = 2114;
    v17 = v8;
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "Paired Device: %{public}@ - %{public}@ - %{public}@", &v14, 0x20u);
  }

  v11 = MTLogForCategory(6);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(MTPairedDeviceListener *)self pairedDevice];
    v14 = 67240192;
    LODWORD(v15) = v12 != 0;
    _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "Paired Device Active: %{public}d", &v14, 8u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end