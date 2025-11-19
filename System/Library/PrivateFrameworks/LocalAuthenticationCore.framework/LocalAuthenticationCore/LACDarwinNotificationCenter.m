@interface LACDarwinNotificationCenter
+ (LACDarwinNotificationCenter)sharedInstance;
- (BOOL)_hasSubscriptionToNotification:(__CFString *)a3;
- (BOOL)hasObserver:(id)a3;
- (LACDarwinNotificationCenter)init;
- (int64_t)observerCount;
- (void)_addSubscriptionToNotification:(__CFString *)a3;
- (void)_notifyObserversAboutNotification:(__CFString *)a3;
- (void)_postNotification:(__CFString *)a3;
- (void)_startObservingNotification:(__CFString *)a3;
- (void)_stopObservingAllNotifications;
- (void)_synchronizedObservers:(id)a3;
- (void)_synchronizedSubscriptions:(id)a3;
- (void)addObserver:(id)a3;
- (void)addObserver:(id)a3 notification:(__CFString *)a4;
- (void)listenToLaunchNotifications;
- (void)postNotification:(__CFString *)a3;
- (void)removeObserver:(id)a3;
- (void)stopListeningToAllNotifications;
@end

@implementation LACDarwinNotificationCenter

void __58__LACDarwinNotificationCenter_listenToLaunchNotifications__block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(xdict, *MEMORY[0x1E69E9E40])}];
    [WeakRetained _addSubscriptionToNotification:v4];
    [WeakRetained _notifyObserversAboutNotification:v4];
  }
}

- (LACDarwinNotificationCenter)init
{
  v8.receiver = self;
  v8.super_class = LACDarwinNotificationCenter;
  v2 = [(LACDarwinNotificationCenter *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    subscriptions = v2->_subscriptions;
    v2->_subscriptions = v5;

    v2->_observersLock._os_unfair_lock_opaque = 0;
    v2->_subscriptionsLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

+ (LACDarwinNotificationCenter)sharedInstance
{
  if (sharedInstance_onceToken_16 != -1)
  {
    +[LACDarwinNotificationCenter sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_14;

  return v3;
}

uint64_t __45__LACDarwinNotificationCenter_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_14 = objc_alloc_init(LACDarwinNotificationCenter);

  return MEMORY[0x1EEE66BB8]();
}

- (void)stopListeningToAllNotifications
{
  [(LACDarwinNotificationCenter *)self _synchronizedSubscriptions:&__block_literal_global_8_0];

  [(LACDarwinNotificationCenter *)self _stopObservingAllNotifications];
}

- (int64_t)observerCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__LACDarwinNotificationCenter_observerCount__block_invoke;
  v4[3] = &unk_1E7A96E70;
  v4[4] = &v5;
  [(LACDarwinNotificationCenter *)self _synchronizedObservers:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __44__LACDarwinNotificationCenter_observerCount__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)listenToLaunchNotifications
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __58__LACDarwinNotificationCenter_listenToLaunchNotifications__block_invoke;
  v2[3] = &unk_1E7A96E98;
  objc_copyWeak(&v3, &location);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", 0, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)postNotification:(__CFString *)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = LACLogNotifications();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = a3;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "Will post %{public}@", &v7, 0xCu);
  }

  [(LACDarwinNotificationCenter *)self _postNotification:a3];
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasObserver:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__LACDarwinNotificationCenter_hasObserver___block_invoke;
  v7[3] = &unk_1E7A96EC0;
  v9 = &v10;
  v5 = v4;
  v8 = v5;
  [(LACDarwinNotificationCenter *)self _synchronizedObservers:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __43__LACDarwinNotificationCenter_hasObserver___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 containsObject:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)addObserver:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__LACDarwinNotificationCenter_addObserver___block_invoke;
  v8[3] = &unk_1E7A96EE8;
  v5 = v4;
  v9 = v5;
  [(LACDarwinNotificationCenter *)self _synchronizedObservers:v8];
  v6 = LACLogNotifications();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "Did register observer %@", buf, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)addObserver:(id)a3 notification:(__CFString *)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__LACDarwinNotificationCenter_addObserver_notification___block_invoke;
  v10[3] = &unk_1E7A96EE8;
  v7 = v6;
  v11 = v7;
  [(LACDarwinNotificationCenter *)self _synchronizedObservers:v10];
  [(LACDarwinNotificationCenter *)self _startObservingNotification:a4];
  v8 = LACLogNotifications();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = a4;
    _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, "Did register observer %@ of notification %@", buf, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__LACDarwinNotificationCenter_removeObserver___block_invoke;
  v8[3] = &unk_1E7A96EE8;
  v5 = v4;
  v9 = v5;
  [(LACDarwinNotificationCenter *)self _synchronizedObservers:v8];
  v6 = LACLogNotifications();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "Did remove observer %@", buf, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_notifyObserversAboutNotification:(__CFString *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = LACLogNotifications();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = a3;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "Did receive notification %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__LACDarwinNotificationCenter__notifyObserversAboutNotification___block_invoke;
  v15[3] = &unk_1E7A96E70;
  v15[4] = &buf;
  [(LACDarwinNotificationCenter *)self _synchronizedObservers:v15];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(*(&buf + 1) + 40);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v9++) notificationCenter:self didReceiveNotification:{a3, v11}];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&buf, 8);
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __65__LACDarwinNotificationCenter__notifyObserversAboutNotification___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

- (void)_postNotification:(__CFString *)a3
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, a3, 0, 0, 1u);
}

- (void)_startObservingNotification:(__CFString *)a3
{
  if (![(LACDarwinNotificationCenter *)self _hasSubscriptionToNotification:?])
  {
    [(LACDarwinNotificationCenter *)self _addSubscriptionToNotification:a3];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, a3, 0);
    v6 = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterAddObserver(v6, self, LACDarwinNotificationCenterCallBack, a3, 0, 0);
  }
}

- (void)_stopObservingAllNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
}

- (BOOL)_hasSubscriptionToNotification:(__CFString *)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__LACDarwinNotificationCenter__hasSubscriptionToNotification___block_invoke;
  v5[3] = &unk_1E7A96F10;
  v5[4] = &v6;
  v5[5] = a3;
  [(LACDarwinNotificationCenter *)self _synchronizedSubscriptions:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __62__LACDarwinNotificationCenter__hasSubscriptionToNotification___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 containsObject:*(a1 + 40)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)_addSubscriptionToNotification:(__CFString *)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__LACDarwinNotificationCenter__addSubscriptionToNotification___block_invoke;
  v3[3] = &__block_descriptor_40_e22_v16__0__NSMutableSet_8l;
  v3[4] = a3;
  [(LACDarwinNotificationCenter *)self _synchronizedSubscriptions:v3];
}

- (void)_synchronizedObservers:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observersLock);
  v4[2](v4, self->_observers);

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)_synchronizedSubscriptions:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_subscriptionsLock);
  v4[2](v4, self->_subscriptions);

  os_unfair_lock_unlock(&self->_subscriptionsLock);
}

@end