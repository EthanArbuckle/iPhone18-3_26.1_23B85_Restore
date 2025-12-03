@interface TMASAssetManager
- (BOOL)copyAssetFromLocation:(id)location toLocation:(id)toLocation;
- (BOOL)lockAsset:(id)asset;
- (BOOL)processAutoAsset:(id)asset fromAsset:(id)fromAsset;
- (BOOL)registerForChangedNotificationsForAsset:(id)asset selector:(id)selector;
- (BOOL)unlockAsset:(id)asset;
- (TMASAssetManager)init;
- (void)addAsset:(id)asset withInterestReason:(id)reason;
- (void)cleanExitForAsset:(id)asset;
- (void)dealloc;
- (void)expressInterestForSelector:(id)selector withInterestReason:(id)reason;
- (void)handleAssetAvailable:(id)available fromAsset:(id)asset;
@end

@implementation TMASAssetManager

- (TMASAssetManager)init
{
  v6.receiver = self;
  v6.super_class = TMASAssetManager;
  v2 = [(TMASAssetManager *)&v6 init];
  if (v2)
  {
    uTF8String = [@"com.apple.timed.notifyQueue" UTF8String];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->notify_queue = dispatch_queue_create(uTF8String, v4);
    v2->registrations = objc_alloc_init(NSMutableDictionary);
    v2->logs = os_log_create("com.apple.timed", "assetManager");
  }

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->notify_queue);
  self->notify_queue = 0;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  registrations = self->registrations;
  v4 = [(NSMutableDictionary *)registrations countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(registrations);
        }

        notify_cancel([-[NSMutableDictionary objectForKeyedSubscript:](self->registrations objectForKeyedSubscript:{*(*(&v9 + 1) + 8 * i)), "intValue"}]);
      }

      v5 = [(NSMutableDictionary *)registrations countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  self->registrations = 0;
  v8.receiver = self;
  v8.super_class = TMASAssetManager;
  [(TMASAssetManager *)&v8 dealloc];
}

- (void)cleanExitForAsset:(id)asset
{
  logs = self->logs;
  if (os_log_type_enabled(logs, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    assetHandle = [asset assetHandle];
    _os_log_impl(&dword_0, logs, OS_LOG_TYPE_DEFAULT, "exit to pick up new asset content: %@", &v6, 0xCu);
  }

  [(TMDaemonCore *)[(TMASAssetManager *)self daemonCore] resetTime];
}

- (BOOL)unlockAsset:(id)asset
{
  v4 = [asset endLockUsageSync:@"moving asset"];
  if (v4)
  {
    logs = self->logs;
    if (os_log_type_enabled(logs, OS_LOG_TYPE_ERROR))
    {
      sub_1EA4(v4, logs);
    }
  }

  return v4 == 0;
}

- (BOOL)copyAssetFromLocation:(id)location toLocation:(id)toLocation
{
  v7 = [toLocation URLByAppendingPathExtension:@"tmp"];
  [+[NSFileManager defaultManager](NSFileManager removeItemAtURL:"removeItemAtURL:error:" error:v7, 0];
  logs = self->logs;
  if (os_log_type_enabled(logs, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    toLocationCopy = location;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_0, logs, OS_LOG_TYPE_INFO, "copying a file at location %@ to location %@", buf, 0x16u);
  }

  v13 = 0;
  v9 = [+[NSFileManager defaultManager](NSFileManager copyItemAtURL:"copyItemAtURL:toURL:error:" toURL:location error:v7, &v13];
  v10 = self->logs;
  if ((v9 & 1) == 0)
  {
    if (os_log_type_enabled(self->logs, OS_LOG_TYPE_ERROR))
    {
      sub_1F1C(location, &v13);
    }

    return 0;
  }

  if (os_log_type_enabled(self->logs, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    toLocationCopy = toLocation;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "replacing a file at location %@", buf, 0xCu);
  }

  v11 = 1;
  if (![+[NSFileManager replaceItemAtURL:"replaceItemAtURL:withItemAtURL:backupItemName:options:resultingItemURL:error:"]
  {
    if (os_log_type_enabled(self->logs, OS_LOG_TYPE_ERROR))
    {
      sub_1F88(toLocation, &v13);
    }

    return 0;
  }

  return v11;
}

- (BOOL)lockAsset:(id)asset
{
  v7 = 0;
  v4 = [asset lockContentSync:@"moving asset" withTimeout:0 lockedAssetSelector:0 newerInProgress:0 error:&v7];
  if (!v4)
  {
    logs = self->logs;
    if (os_log_type_enabled(logs, OS_LOG_TYPE_ERROR))
    {
      sub_1FF4(&v7, logs);
    }
  }

  return v4 != 0;
}

- (BOOL)processAutoAsset:(id)asset fromAsset:(id)fromAsset
{
  v7 = [objc_msgSend(asset "assetSelector")];
  v8 = [objc_msgSend(asset "assetSelector")];
  v9 = [(TMASAssetManager *)self lockAsset:asset];
  if (v9)
  {
    logs = self->logs;
    if (os_log_type_enabled(logs, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_0, logs, OS_LOG_TYPE_DEFAULT, "lock attempt success for asset: %@ specifier: %@", &v14, 0x16u);
    }

    if (-[TMASAssetManager copyAssetFromLocation:toLocation:](self, "copyAssetFromLocation:toLocation:", -[NSURL URLByAppendingPathComponent:isDirectory:](+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", [objc_msgSend(asset "localContentURL")]), "URLByAppendingPathComponent:isDirectory:", objc_msgSend(fromAsset, "fileName"), 0), objc_msgSend(fromAsset, "destination")))
    {
      v11 = self->logs;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412546;
        v15 = v7;
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "copy attempt success for asset: %@ specifier: %@", &v14, 0x16u);
      }

      v9 = [(TMASAssetManager *)self unlockAsset:asset];
      if (v9)
      {
        v12 = self->logs;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412546;
          v15 = v7;
          v16 = 2112;
          v17 = v8;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "unlock attempt success for asset: %@ specifier: %@", &v14, 0x16u);
        }

        [(TMASAssetManager *)self cleanExitForAsset:fromAsset];
        LOBYTE(v9) = 1;
      }
    }

    else
    {
      [(TMASAssetManager *)self unlockAsset:asset];
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (void)handleAssetAvailable:(id)available fromAsset:(id)asset
{
  if (![TMASAssetManager processAutoAsset:"processAutoAsset:fromAsset:" fromAsset:?])
  {
    if (os_log_type_enabled(self->logs, OS_LOG_TYPE_ERROR))
    {
      sub_2070(asset);
    }

    v7 = dispatch_time(0, 43200000000000);
    notify_queue = self->notify_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1744;
    block[3] = &unk_4130;
    block[4] = self;
    block[5] = available;
    block[6] = asset;
    dispatch_after(v7, notify_queue, block);
  }
}

- (void)expressInterestForSelector:(id)selector withInterestReason:(id)reason
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_17D8;
  v4[3] = &unk_4158;
  v4[4] = self;
  v4[5] = selector;
  [MAAutoAsset interestInContent:reason forAssetSelector:selector completion:v4];
}

- (BOOL)registerForChangedNotificationsForAsset:(id)asset selector:(id)selector
{
  out_token = -1;
  v7 = [+[MAAutoAssetNotifications notifyRegistrationName:forAssetType:forAssetSpecifier:](MAAutoAssetNotifications notifyRegistrationName:@"ASSET_VERSION_DOWNLOADED" forAssetType:objc_msgSend(selector forAssetSpecifier:{"assetType"), objc_msgSend(selector, "assetSpecifier")), "UTF8String"}];
  notify_queue = self->notify_queue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1AFC;
  v17[3] = &unk_4180;
  v17[4] = self;
  v17[5] = selector;
  v17[6] = asset;
  v9 = notify_register_dispatch(v7, &out_token, notify_queue, v17);
  if (v9)
  {
    if (os_log_type_enabled(self->logs, OS_LOG_TYPE_ERROR))
    {
      sub_21CC(asset);
    }
  }

  else
  {
    registrations = self->registrations;
    p_registrations = &self->registrations;
    v12 = [-[NSMutableDictionary allKeys](registrations "allKeys")];
    v13 = p_registrations[1];
    if (v12)
    {
      if (os_log_type_enabled(&p_registrations[1]->super.super, OS_LOG_TYPE_ERROR))
      {
        sub_2250();
      }
    }

    else
    {
      if (os_log_type_enabled(&p_registrations[1]->super.super, OS_LOG_TYPE_DEFAULT))
      {
        assetHandle = [asset assetHandle];
        v15 = [-[NSMutableDictionary objectForKeyedSubscript:](*p_registrations objectForKeyedSubscript:{objc_msgSend(asset, "assetHandle")), "intValue"}];
        *buf = 138412546;
        v20 = assetHandle;
        v21 = 1024;
        v22 = v15;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "adding registration for assetHandle %@ token: %d", buf, 0x12u);
      }

      -[NSMutableDictionary setValue:forKey:](*p_registrations, "setValue:forKey:", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", out_token), [asset assetHandle]);
    }
  }

  return v9 == 0;
}

- (void)addAsset:(id)asset withInterestReason:(id)reason
{
  v7 = [[MAAutoAssetSelector alloc] initForAssetType:objc_msgSend(asset withAssetSpecifier:{"assetType"), objc_msgSend(asset, "assetSpecifier")}];
  if (v7)
  {
    [MAAutoAsset endAllPreviousLocksOfSelector:_NSConcreteStackBlock forClientName:3221225472 completion:sub_1D34, &unk_41A8, self, asset, v7, reason];
  }

  else if (os_log_type_enabled(self->logs, OS_LOG_TYPE_ERROR))
  {
    sub_23BC(asset);
  }
}

@end