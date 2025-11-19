@interface MRNowPlayingOriginClientRequests
- (MRDeviceInfo)deviceInfo;
- (MRNowPlayingOriginClientRequests)initWithOrigin:(id)a3;
- (NSArray)nowPlayingClientRequests;
- (NSDate)lastPlayingDate;
- (NSNumber)volume;
- (NSNumber)volumeCapabilities;
- (id)debugDescription;
- (id)existingNowPlayingClientRequestsForPlayerPath:(id)a3;
- (id)nowPlayingClientRequestsForPlayerPath:(id)a3;
- (void)dealloc;
- (void)handleDeviceInfoRequestWithCompletion:(id)a3;
- (void)handleLastPlayingDateRequestWithCompletion:(id)a3;
- (void)handleVolumeCapabilitiesRequestWithCompletion:(id)a3;
- (void)handleVolumeRequestWithCompletion:(id)a3;
- (void)removeAllClients;
- (void)removeClient:(id)a3;
- (void)restoreNowPlayingClientState;
- (void)setDeviceInfo:(id)a3;
- (void)setLastPlayingDate:(id)a3;
- (void)setVolume:(id)a3;
- (void)setVolumeCapabilities:(id)a3;
@end

@implementation MRNowPlayingOriginClientRequests

- (MRDeviceInfo)deviceInfo
{
  os_unfair_lock_lock(&self->_deviceInfoLock);
  v3 = self->_deviceInfo;
  os_unfair_lock_unlock(&self->_deviceInfoLock);
  v4 = [(MRDeviceInfo *)v3 copy];

  return v4;
}

- (MRNowPlayingOriginClientRequests)initWithOrigin:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v23.receiver = self;
  v23.super_class = MRNowPlayingOriginClientRequests;
  v6 = [(MRNowPlayingOriginClientRequests *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_origin, a3);
    v8 = [[MRPlayerPath alloc] initWithOrigin:v5 client:0 player:0];
    playerPath = v7->_playerPath;
    v7->_playerPath = v8;

    v10 = objc_opt_class();
    Name = class_getName(v10);
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(Name, v12);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v13;

    if (initWithOrigin__onceToken != -1)
    {
      [MRNowPlayingOriginClientRequests initWithOrigin:];
    }

    objc_storeStrong(&v7->_callOutQueue, initWithOrigin____queue);
    v7->_deviceInfoLock._os_unfair_lock_opaque = 0;
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    nowPlayingClients = v7->_nowPlayingClients;
    v7->_nowPlayingClients = v15;

    v17 = +[MRUserSettings currentSettings];
    v18 = [v17 verboseOriginClientLogging];

    if (v18)
    {
      v19 = _MRLogForCategory(1uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 138412802;
        v25 = v7;
        v26 = 2112;
        v27 = v5;
        v28 = 2112;
        v29 = v20;
        _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingOriginClientRequests] Creating %@ for origin %@ at %@", buf, 0x20u);
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v7;
}

void __51__MRNowPlayingOriginClientRequests_initWithOrigin___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.mediaremote.MRNowPlayingOriginClientRequests.calloutQueue", v2);
  v1 = initWithOrigin____queue;
  initWithOrigin____queue = v0;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = +[MRUserSettings currentSettings];
  v4 = [v3 verboseOriginClientLogging];

  if (v4)
  {
    v5 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      origin = self->_origin;
      v7 = [MEMORY[0x1E696AF00] callStackSymbols];
      *buf = 138412802;
      v11 = self;
      v12 = 2112;
      v13 = origin;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingOriginClientRequests] Destroying %@ for origin %@ at %@", buf, 0x20u);
    }
  }

  v9.receiver = self;
  v9.super_class = MRNowPlayingOriginClientRequests;
  [(MRNowPlayingOriginClientRequests *)&v9 dealloc];
  v8 = *MEMORY[0x1E69E9840];
}

- (id)debugDescription
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__18;
  v9 = __Block_byref_object_dispose__18;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __52__MRNowPlayingOriginClientRequests_debugDescription__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696AEC0];
  v16 = MRCreateIndentedDebugDescriptionFromObject(v2[13]);
  v4 = [*(a1 + 32) deviceInfo];
  v5 = MRCreateIndentedDebugDescriptionFromObject(v4);
  [*(*(a1 + 32) + 48) floatValue];
  v7 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription(v6);
  v8 = MRCreateIndentedDebugDescriptionFromObject(v7);
  v9 = MRCreateIndentedDebugDescriptionFromObject(*(*(a1 + 32) + 56));
  v10 = MRCreateIndentedDebugDescriptionFromObject(*(*(a1 + 32) + 64));
  v11 = MRCreateIndentedDebugDescriptionFromArray(*(*(a1 + 32) + 72));
  v12 = [v3 stringWithFormat:@"    origin = %@\n    deviceInfo = %@\n    volumeCapabilities = %@\n    volume = %@\n    lastPlayingDate = %@\n    nowPlayingClients = %@\n", v16, v5, v8, v9, v10, v11];
  v13 = MRCreateFormattedDebugDescriptionFromClass(v2, v12);
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

- (id)nowPlayingClientRequestsForPlayerPath:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  v5 = [v4 client];

  if (v5)
  {
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__MRNowPlayingOriginClientRequests_nowPlayingClientRequestsForPlayerPath___block_invoke;
    block[3] = &unk_1E769D1B8;
    block[4] = self;
    v10 = v4;
    v11 = &v12;
    dispatch_sync(serialQueue, block);
  }

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __74__MRNowPlayingOriginClientRequests_nowPlayingClientRequestsForPlayerPath___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(*(a1 + 32) + 72);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 client];
        v9 = [*(a1 + 40) client];
        v10 = [v8 isEqual:v9];

        if (v10)
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v11 = [[MRNowPlayingClientRequests alloc] initWithPlayerPath:*(a1 + 40)];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    [*(*(a1 + 32) + 72) addObject:*(*(*(a1 + 48) + 8) + 40)];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)existingNowPlayingClientRequestsForPlayerPath:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  v5 = [v4 client];

  if (v5)
  {
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__MRNowPlayingOriginClientRequests_existingNowPlayingClientRequestsForPlayerPath___block_invoke;
    block[3] = &unk_1E769D1B8;
    block[4] = self;
    v10 = v4;
    v11 = &v12;
    dispatch_sync(serialQueue, block);
  }

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __82__MRNowPlayingOriginClientRequests_existingNowPlayingClientRequestsForPlayerPath___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(a1 + 32) + 72);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 client];
        v9 = [*(a1 + 40) client];
        v10 = [v8 isEqual:v9];

        if (v10)
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeClient:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__MRNowPlayingOriginClientRequests_removeClient___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

void __49__MRNowPlayingOriginClientRequests_removeClient___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(a1 + 32) + 72);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 client];
        v9 = [*(a1 + 40) client];
        v10 = [v8 isEqual:v9];

        if (v10)
        {
          [*(*(a1 + 32) + 72) removeObject:v7];
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeAllClients
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MRNowPlayingOriginClientRequests_removeAllClients__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (NSArray)nowPlayingClientRequests
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__18;
  v10 = __Block_byref_object_dispose__18;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__MRNowPlayingOriginClientRequests_nowPlayingClientRequests__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __60__MRNowPlayingOriginClientRequests_nowPlayingClientRequests__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setVolumeCapabilities:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[MRUserSettings currentSettings];
  v6 = [v5 verboseOriginClientLogging];

  if (v6)
  {
    v7 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      playerPath = self->_playerPath;
      v9 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription([v4 intValue]);
      *buf = 138543618;
      v14 = playerPath;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingOriginClientRequests] %{public}@ UpdatingCache: volumeCapabilities %{public}@", buf, 0x16u);
    }
  }

  serialQueue = self->_serialQueue;
  v11 = v4;
  msv_dispatch_sync_on_queue();

  v12 = *MEMORY[0x1E69E9840];
}

- (NSNumber)volumeCapabilities
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__18;
  v9 = __Block_byref_object_dispose__18;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (void)setVolume:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[MRUserSettings currentSettings];
  v6 = [v5 verboseOriginClientLogging];

  if (v6)
  {
    v7 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      playerPath = self->_playerPath;
      [v4 floatValue];
      *buf = 138543618;
      v14 = playerPath;
      v15 = 2048;
      v16 = v9;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingOriginClientRequests] %{public}@ UpdatingCache: volume %lf", buf, 0x16u);
    }
  }

  serialQueue = self->_serialQueue;
  v11 = v4;
  msv_dispatch_sync_on_queue();

  v12 = *MEMORY[0x1E69E9840];
}

- (NSNumber)volume
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__18;
  v9 = __Block_byref_object_dispose__18;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (void)setLastPlayingDate:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[MRUserSettings currentSettings];
  v6 = [v5 verboseOriginClientLogging];

  if (v6)
  {
    v7 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      playerPath = self->_playerPath;
      *buf = 138543618;
      v13 = playerPath;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingOriginClientRequests] %{public}@ UpdatingCache: lastPlayingDate %@", buf, 0x16u);
    }
  }

  serialQueue = self->_serialQueue;
  v10 = v4;
  msv_dispatch_sync_on_queue();

  v11 = *MEMORY[0x1E69E9840];
}

- (NSDate)lastPlayingDate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__18;
  v9 = __Block_byref_object_dispose__18;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (void)handleDeviceInfoRequestWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MRNowPlayingOriginClientRequests handleDeviceInfoRequestWithCompletion:];
  }

  os_unfair_lock_lock(&self->_deviceInfoLock);
  deviceInfo = self->_deviceInfo;
  if (deviceInfo)
  {
    v6 = deviceInfo;
    os_unfair_lock_unlock(&self->_deviceInfoLock);
    callOutQueue = self->_callOutQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__MRNowPlayingOriginClientRequests_handleDeviceInfoRequestWithCompletion___block_invoke;
    block[3] = &unk_1E769AB28;
    v19 = v6;
    v20 = v4;
    v8 = v6;
    dispatch_async(callOutQueue, block);
  }

  else
  {
    deviceInfoCompletions = self->_deviceInfoCompletions;
    if (!deviceInfoCompletions)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v11 = self->_deviceInfoCompletions;
      self->_deviceInfoCompletions = v10;

      deviceInfoCompletions = self->_deviceInfoCompletions;
    }

    v12 = [v4 copy];
    v13 = MEMORY[0x1A58E3570]();
    [(NSMutableArray *)deviceInfoCompletions addObject:v13];

    if ([(NSMutableArray *)self->_deviceInfoCompletions count]== 1)
    {
      v14 = MRGetSharedService();
      playerPath = self->_playerPath;
      v16 = self->_callOutQueue;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __74__MRNowPlayingOriginClientRequests_handleDeviceInfoRequestWithCompletion___block_invoke_2;
      v17[3] = &unk_1E769EDD0;
      v17[4] = self;
      MRMediaRemoteServiceGetDeviceInfo(v14, playerPath, v16, v17);
    }

    os_unfair_lock_unlock(&self->_deviceInfoLock);
  }
}

void __74__MRNowPlayingOriginClientRequests_handleDeviceInfoRequestWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2, 0);
}

void __74__MRNowPlayingOriginClientRequests_handleDeviceInfoRequestWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  os_unfair_lock_lock((*(a1 + 32) + 24));
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  if (!v8)
  {
    v9 = [v5 copy];
    v10 = *(v7 + 32);
    *(v7 + 32) = v9;

    v8 = *(*(a1 + 32) + 32);
  }

  v11 = [v8 copy];
  v12 = [*(*(a1 + 32) + 40) copy];
  [*(*(a1 + 32) + 40) removeAllObjects];
  os_unfair_lock_unlock((*(a1 + 32) + 24));
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        (*(*(*(&v19 + 1) + 8 * v17) + 16))(*(*(&v19 + 1) + 8 * v17));
        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)handleVolumeRequestWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MRNowPlayingOriginClientRequests handleVolumeRequestWithCompletion:];
  }

  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__MRNowPlayingOriginClientRequests_handleVolumeRequestWithCompletion___block_invoke;
  v7[3] = &unk_1E769A0A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

void __70__MRNowPlayingOriginClientRequests_handleVolumeRequestWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (v3)
  {
    v4 = *(a1 + 40);
    [v3 floatValue];
    v5 = *(v4 + 16);

    v5(v4, 0);
  }

  else
  {
    v6 = *(v2 + 80);
    if (!v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = *(a1 + 32);
      v9 = *(v8 + 80);
      *(v8 + 80) = v7;

      v6 = *(*(a1 + 32) + 80);
    }

    v10 = [*(a1 + 40) copy];
    v11 = MEMORY[0x1A58E3570]();
    [v6 addObject:v11];

    if ([*(*(a1 + 32) + 80) count] == 1)
    {
      v12 = MRGetSharedService();
      v13 = *(a1 + 32);
      v14 = *(v13 + 8);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __70__MRNowPlayingOriginClientRequests_handleVolumeRequestWithCompletion___block_invoke_2;
      v15[3] = &unk_1E769D010;
      v15[4] = v13;
      MRMediaRemoteServiceGetMediaPlaybackVolume(v12, v14, v15);
    }
  }
}

uint64_t __70__MRNowPlayingOriginClientRequests_handleVolumeRequestWithCompletion___block_invoke_2(uint64_t a1, double a2)
{
  v2 = *&a2;
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (!*(v4 + 56))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithFloat:a2];
    [*(a1 + 32) setVolume:v5];

    v4 = *(a1 + 32);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(v4 + 80);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v13 + 1) + 8 * v10++) + 16))(v2);
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  result = [*(*(a1 + 32) + 80) removeAllObjects];
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)handleVolumeCapabilitiesRequestWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MRNowPlayingOriginClientRequests handleVolumeCapabilitiesRequestWithCompletion:];
  }

  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__MRNowPlayingOriginClientRequests_handleVolumeCapabilitiesRequestWithCompletion___block_invoke;
  v7[3] = &unk_1E769A0A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

void __82__MRNowPlayingOriginClientRequests_handleVolumeCapabilitiesRequestWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [v3 intValue];
    v6 = *(v4 + 16);

    v6(v4, v5, 0);
  }

  else
  {
    v7 = *(v2 + 88);
    if (!v7)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v9 = *(a1 + 32);
      v10 = *(v9 + 88);
      *(v9 + 88) = v8;

      v7 = *(*(a1 + 32) + 88);
    }

    v11 = [*(a1 + 40) copy];
    v12 = MEMORY[0x1A58E3570]();
    [v7 addObject:v12];

    if ([*(*(a1 + 32) + 88) count] == 1)
    {
      v13 = MRGetSharedService();
      v14 = *(a1 + 32);
      v15 = *(v14 + 112);
      v16 = *(v14 + 8);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __82__MRNowPlayingOriginClientRequests_handleVolumeCapabilitiesRequestWithCompletion___block_invoke_2;
      v17[3] = &unk_1E769D038;
      v17[4] = v14;
      MRMediaRemoteServiceGetPickedRouteVolumeControlCapabilities(v13, v15, v16, v17);
    }
  }
}

uint64_t __82__MRNowPlayingOriginClientRequests_handleVolumeCapabilitiesRequestWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (!*(v3 + 48))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
    [*(a1 + 32) setVolumeCapabilities:v4];

    v3 = *(a1 + 32);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(v3 + 88);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v12 + 1) + 8 * v9) + 16))(*(*(&v12 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  result = [*(*(a1 + 32) + 88) removeAllObjects];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)handleLastPlayingDateRequestWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MRNowPlayingOriginClientRequests handleLastPlayingDateRequestWithCompletion:];
  }

  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__MRNowPlayingOriginClientRequests_handleLastPlayingDateRequestWithCompletion___block_invoke;
  v7[3] = &unk_1E769A0A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

void __79__MRNowPlayingOriginClientRequests_handleLastPlayingDateRequestWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 64))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = *(v2 + 96);
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(a1 + 32);
      v8 = *(v7 + 96);
      *(v7 + 96) = v6;

      v5 = *(*(a1 + 32) + 96);
    }

    v9 = [*(a1 + 40) copy];
    v10 = MEMORY[0x1A58E3570]();
    [v5 addObject:v10];

    if ([*(*(a1 + 32) + 96) count] == 1)
    {
      v11 = MRGetSharedService();
      v12 = *(a1 + 32);
      v13 = *(v12 + 112);
      v14 = *(v12 + 8);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __79__MRNowPlayingOriginClientRequests_handleLastPlayingDateRequestWithCompletion___block_invoke_2;
      v15[3] = &unk_1E769EDF8;
      v15[4] = v12;
      MRMediaRemoteServiceGetLastPlayingDateForPlayer(v11, v13, v14, v15);
    }
  }
}

void __79__MRNowPlayingOriginClientRequests_handleLastPlayingDateRequestWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (!*(v7 + 64))
  {
    [v7 setLastPlayingDate:v5];
    v7 = *(a1 + 32);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(v7 + 96);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v14 + 1) + 8 * v12) + 16))(*(*(&v14 + 1) + 8 * v12));
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [*(*(a1 + 32) + 96) removeAllObjects];
  v13 = *MEMORY[0x1E69E9840];
}

- (void)restoreNowPlayingClientState
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MRNowPlayingOriginClientRequests_restoreNowPlayingClientState__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

void __64__MRNowPlayingOriginClientRequests_restoreNowPlayingClientState__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(*(a1 + 32) + 72);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v7 + 1) + 8 * v5++) restoreNowPlayingClientState];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setDeviceInfo:(id)a3
{
  v6 = [a3 copy];
  os_unfair_lock_lock(&self->_deviceInfoLock);
  if (self)
  {
    v4 = [v6 copy];
    deviceInfo = self->_deviceInfo;
    self->_deviceInfo = v4;
  }

  os_unfair_lock_unlock(&self->_deviceInfoLock);
}

- (void)handleDeviceInfoRequestWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)handleVolumeRequestWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)handleVolumeCapabilitiesRequestWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)handleLastPlayingDateRequestWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

@end