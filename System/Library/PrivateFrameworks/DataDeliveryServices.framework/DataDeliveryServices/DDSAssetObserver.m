@interface DDSAssetObserver
- (DDSAssetObserver)init;
- (DDSAssetObservingDelegate)delegate;
- (void)beginObservingType:(id)a3;
- (void)dealloc;
- (void)endObservingTypes:(id)a3;
- (void)notifyObserversAssetsUpdatedForType:(id)a3;
- (void)observeAssetType:(id)a3;
@end

@implementation DDSAssetObserver

- (DDSAssetObserver)init
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = DDSAssetObserver;
  v2 = [(DDSAssetObserver *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    typesToObserve = v2->_typesToObserve;
    v2->_typesToObserve = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = MEMORY[0x1E695DFD8];
    v12[0] = @"com.apple.MobileAsset.LinguisticDataAuto";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v7 = [v5 setWithArray:v6];
    autoAssetTypes = v2->_autoAssetTypes;
    v2->_autoAssetTypes = v7;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)observeAssetType:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(DDSAssetObserver *)self typesToObserve];
  v6 = [v5 containsObject:v4];

  if ((v6 & 1) == 0)
  {
    v7 = DefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v4;
      _os_log_impl(&dword_1DF7C6000, v7, OS_LOG_TYPE_DEFAULT, "Adding observer for DDS asset update notification for asset type: (%{public}@)", &v10, 0xCu);
    }

    v8 = [(DDSAssetObserver *)self typesToObserve];
    [v8 addObject:v4];

    [(DDSAssetObserver *)self beginObservingType:v4];
  }

  os_unfair_lock_unlock(&self->_lock);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)beginObservingType:(id)a3
{
  v9 = a3;
  v4 = [v9 stringByAppendingString:@".dds.assets-updated"];
  v5 = [(DDSAssetObserver *)self autoAssetTypes];
  v6 = [v5 containsObject:v9];

  if (v6)
  {
    v7 = [MEMORY[0x1E69B1900] notifyRegistrationName:@"ASSET_VERSION_DOWNLOADED" forAssetType:v9];

    v4 = v7;
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, assetUpdatedNotificationCallback, v4, 0, CFNotificationSuspensionBehaviorCoalesce);
}

- (void)endObservingTypes:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = DefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v4;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "End observing types: %@", buf, 0xCu);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 stringByAppendingString:{@".dds.assets-updated", v18}];
        v13 = [(DDSAssetObserver *)self autoAssetTypes];
        v14 = [v13 containsObject:v11];

        if (v14)
        {
          v15 = [MEMORY[0x1E69B1900] notifyRegistrationName:@"ASSET_VERSION_DOWNLOADED" forAssetType:v11];

          v12 = v15;
        }

        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v12, 0);
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)notifyObserversAssetsUpdatedForType:(id)a3
{
  name = [a3 stringByAppendingString:@".dds.assets-updated"];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 1u);
}

- (void)dealloc
{
  v3 = DefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF7C6000, v3, OS_LOG_TYPE_DEFAULT, "Unexpected dealloc for asset observer", buf, 2u);
  }

  [(DDSAssetObserver *)self setDelegate:0];
  v4 = [(DDSAssetObserver *)self typesToObserve];
  [(DDSAssetObserver *)self endObservingTypes:v4];

  v5.receiver = self;
  v5.super_class = DDSAssetObserver;
  [(DDSAssetObserver *)&v5 dealloc];
}

- (DDSAssetObservingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end