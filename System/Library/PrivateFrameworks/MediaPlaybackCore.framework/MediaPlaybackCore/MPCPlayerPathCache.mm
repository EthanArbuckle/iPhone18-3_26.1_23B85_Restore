@interface MPCPlayerPathCache
+ (MPCPlayerPathCache)sharedCache;
- (id)_init;
- (id)observationTokenDescriptionForPlayerPath:(id)path;
- (id)resolvedPlayerPathForPlayerPath:(id)path;
- (void)_onQueue_clearObserversForPlayerPath:(id)path;
- (void)_onQueue_registerForEndpointChangeWithUnresolvedPlayerPath:(id)path routeResolvedPlayerPath:(id)playerPath;
- (void)_onQueue_registerForEndpointInvalidationsWithUnresolvedPlayerPath:(id)path routeResolvedPlayerPath:(id)playerPath;
- (void)_onQueue_registerForInvalidationWithUnresolvedPlayerPath:(id)path invalidationPlayerPath:(void *)playerPath;
- (void)dealloc;
@end

@implementation MPCPlayerPathCache

+ (MPCPlayerPathCache)sharedCache
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__MPCPlayerPathCache_sharedCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedCache___onceToken != -1)
  {
    dispatch_once(&sharedCache___onceToken, block);
  }

  v2 = sharedCache___sharedCache;

  return v2;
}

uint64_t __33__MPCPlayerPathCache_sharedCache__block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_attr_make_with_qos_class(v2, QOS_CLASS_USER_INITIATED, 0);
  v4 = dispatch_queue_create("com.apple.MediaPlaybackCore/MRNowPlayingNotificationQueue", v3);
  v5 = __mediaRemoteNotificationQueue;
  __mediaRemoteNotificationQueue = v4;

  sharedCache___sharedCache = [objc_alloc(*(a1 + 32)) _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v18.receiver = self;
  v18.super_class = MPCPlayerPathCache;
  v2 = [(MPCPlayerPathCache *)&v18 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    playerPathResolutions = v2->_playerPathResolutions;
    v2->_playerPathResolutions = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    playerPathObservers = v2->_playerPathObservers;
    v2->_playerPathObservers = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    endpointObservers = v2->_endpointObservers;
    v2->_endpointObservers = dictionary3;

    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    endpointInvalidationObservers = v2->_endpointInvalidationObservers;
    v2->_endpointInvalidationObservers = dictionary4;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.MediaPlaybackCore/MPCPlayerPathCache", v11);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.MediaPlaybackCore/MPCPlayerPathCache.callout", v14);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v15;

    _MRMediaRemoteRegisterForNowPlayingNotificationsEx();
  }

  return v2;
}

- (void)_onQueue_clearObserversForPlayerPath:(id)path
{
  pathCopy = path;
  v4 = [(NSMutableDictionary *)self->_endpointObservers objectForKeyedSubscript:?];
  v5 = v4;
  if (v4)
  {
    MEMORY[0x1C6954BA0](v4);
    [(NSMutableDictionary *)self->_endpointObservers setObject:0 forKeyedSubscript:pathCopy];
  }

  v6 = [(NSMutableDictionary *)self->_playerPathObservers objectForKeyedSubscript:pathCopy];
  if (v6)
  {
    MRMediaRemoteRemovePlayerPathInvalidationHandler();
    [(NSMutableDictionary *)self->_playerPathObservers setObject:0 forKeyedSubscript:pathCopy];
  }

  v7 = [(NSMutableDictionary *)self->_endpointInvalidationObservers objectForKeyedSubscript:pathCopy];
  if (v7)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:v7];

    [(NSMutableDictionary *)self->_endpointInvalidationObservers setObject:0 forKeyedSubscript:pathCopy];
  }
}

- (void)_onQueue_registerForEndpointInvalidationsWithUnresolvedPlayerPath:(id)path routeResolvedPlayerPath:(id)playerPath
{
  v29 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  playerPathCopy = playerPath;
  dispatch_assert_queue_V2(self->_accessQueue);
  route = [playerPathCopy route];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    route2 = [playerPathCopy route];
    endpoint = [route2 endpoint];
    connection = [route2 connection];
    if (connection)
    {
      v13 = os_log_create("com.apple.amp.mediaplaybackcore", "MediaRemote");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        debugName = [endpoint debugName];
        *buf = 138412546;
        v26 = pathCopy;
        v27 = 2112;
        v28 = debugName;
        _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEBUG, "MRCPPC: Registering for endpoint invalidations unresolved player path: %@, endpoint: %@", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __112__MPCPlayerPathCache__onQueue_registerForEndpointInvalidationsWithUnresolvedPlayerPath_routeResolvedPlayerPath___block_invoke;
      v22 = &unk_1E82385D8;
      objc_copyWeak(&v24, buf);
      v16 = *MEMORY[0x1E6970A80];
      v17 = pathCopy;
      v23 = v17;
      v18 = [defaultCenter addObserverForName:v16 object:connection queue:0 usingBlock:&v19];

      [(NSMutableDictionary *)self->_endpointInvalidationObservers setObject:v18 forKeyedSubscript:v17, v19, v20, v21, v22];
      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }
  }
}

void __112__MPCPlayerPathCache__onQueue_registerForEndpointInvalidationsWithUnresolvedPlayerPath_routeResolvedPlayerPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[5];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __112__MPCPlayerPathCache__onQueue_registerForEndpointInvalidationsWithUnresolvedPlayerPath_routeResolvedPlayerPath___block_invoke_2;
    block[3] = &unk_1E82391C0;
    v8 = WeakRetained;
    v9 = *(a1 + 32);
    v10 = v3;
    dispatch_async(v6, block);
  }
}

void __112__MPCPlayerPathCache__onQueue_registerForEndpointInvalidationsWithUnresolvedPlayerPath_routeResolvedPlayerPath___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "MediaRemote");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) object];
    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEBUG, "MRCPPC: Received invalidation for player path: %@, endpoint %@ ", &v6, 0x16u);
  }

  [v2 invalidate];
  [*(*(a1 + 32) + 8) setObject:0 forKeyedSubscript:*(a1 + 40)];
  [*(a1 + 32) _onQueue_clearObserversForPlayerPath:*(a1 + 40)];
}

- (void)_onQueue_registerForEndpointChangeWithUnresolvedPlayerPath:(id)path routeResolvedPlayerPath:(id)playerPath
{
  v23 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  playerPathCopy = playerPath;
  dispatch_assert_queue_V2(self->_accessQueue);
  deviceUID = [pathCopy deviceUID];
  if (deviceUID)
  {
    route = [playerPathCopy route];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      route2 = [playerPathCopy route];
      endpoint = [route2 endpoint];
      uniqueIdentifier = [endpoint uniqueIdentifier];
      v14 = os_log_create("com.apple.amp.mediaplaybackcore", "MediaRemote");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v20 = pathCopy;
        v21 = 2112;
        v22 = uniqueIdentifier;
        _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEBUG, "MRCPPC: Registering for endpoint topology changes with unresolved player path: %@, endpoint identifier: %@", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v15 = MRAVEndpointObserverCreateWithOutputDeviceUID();
      objc_copyWeak(&v18, buf);
      v16 = pathCopy;
      v17 = uniqueIdentifier;
      MRAVEndpointObserverAddEndpointChangedCallback();
      [(NSMutableDictionary *)self->_endpointObservers setObject:v15 forKeyedSubscript:v16];

      MEMORY[0x1C6954B80](v15);
      objc_destroyWeak(&v18);
      objc_destroyWeak(buf);
    }
  }
}

void __105__MPCPlayerPathCache__onQueue_registerForEndpointChangeWithUnresolvedPlayerPath_routeResolvedPlayerPath___block_invoke(id *a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[5];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __105__MPCPlayerPathCache__onQueue_registerForEndpointChangeWithUnresolvedPlayerPath_routeResolvedPlayerPath___block_invoke_2;
    v7[3] = &unk_1E8238588;
    v8 = WeakRetained;
    v9 = a1[4];
    v11 = a2;
    v10 = a1[5];
    dispatch_async(v6, v7);
  }
}

void __105__MPCPlayerPathCache__onQueue_registerForEndpointChangeWithUnresolvedPlayerPath_routeResolvedPlayerPath___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(a1 + 56);
  v4 = [v3 uniqueIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 48)];

  if ((v5 & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "MediaRemote");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 40);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEBUG, "MRCPPC: Received endpoint invalidation for unresolved player path: %@.", &v8, 0xCu);
    }

    [v2 invalidate];
    [*(*(a1 + 32) + 8) setObject:0 forKeyedSubscript:*(a1 + 40)];
    [*(a1 + 32) _onQueue_clearObserversForPlayerPath:*(a1 + 40)];
  }
}

- (void)_onQueue_registerForInvalidationWithUnresolvedPlayerPath:(id)path invalidationPlayerPath:(void *)playerPath
{
  v16 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  dispatch_assert_queue_V2(self->_accessQueue);
  objc_initWeak(&location, self);
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "MediaRemote");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    playerPathCopy = playerPath;
    v14 = 2112;
    v15 = pathCopy;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEBUG, "MRCPPC: Registering for invalidation with player path %@ (unresolved %@)", buf, 0x16u);
  }

  objc_copyWeak(&v10, &location);
  v9 = pathCopy;
  v8 = MRMediaRemoteAddPlayerPathInvalidationHandler();
  [(NSMutableDictionary *)self->_playerPathObservers setObject:v8 forKeyedSubscript:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __102__MPCPlayerPathCache__onQueue_registerForInvalidationWithUnresolvedPlayerPath_invalidationPlayerPath___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained[1] objectForKeyedSubscript:*(a1 + 32)];
    v7 = [v6 result];
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "MediaRemote");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412546;
      v10 = a2;
      v11 = 2112;
      v12 = [v7 mediaRemotePlayerPath];
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEBUG, "MRCPPC: Received invalidation for player path %@ (future player path: %@)", &v9, 0x16u);
    }

    [v6 invalidate];
    [v5[1] setObject:0 forKeyedSubscript:*(a1 + 32)];
    [v5 _onQueue_clearObserversForPlayerPath:*(a1 + 32)];
  }
}

- (id)resolvedPlayerPathForPlayerPath:(id)path
{
  pathCopy = path;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__26667;
  v16 = __Block_byref_object_dispose__26668;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__MPCPlayerPathCache_resolvedPlayerPathForPlayerPath___block_invoke;
  block[3] = &unk_1E8238A50;
  v10 = pathCopy;
  v11 = &v12;
  block[4] = self;
  v6 = pathCopy;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __54__MPCPlayerPathCache_resolvedPlayerPathForPlayerPath___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1[6] + 8) + 40);
  if (!v5 || [v5 isInvalid])
  {
    v6 = [[MPCFuture alloc] initWithQueue:*(a1[4] + 48)];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [*(*(a1[6] + 8) + 40) setDebugLabel:@"resolvedPlayerPath"];
    [*(a1[4] + 8) setObject:*(*(a1[6] + 8) + 40) forKeyedSubscript:a1[5]];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__MPCPlayerPathCache_resolvedPlayerPathForPlayerPath___block_invoke_2;
    v14[3] = &unk_1E82384E8;
    v9 = a1[5];
    v14[4] = a1[4];
    v15 = v9;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__MPCPlayerPathCache_resolvedPlayerPathForPlayerPath___block_invoke_4;
    v12[3] = &unk_1E8238538;
    v12[4] = a1[4];
    v11 = *(a1 + 5);
    v10 = v11;
    v13 = v11;
    [v15 resolveWithRouteResolvedHandler:v14 completion:v12];
  }
}

void __54__MPCPlayerPathCache_resolvedPlayerPathForPlayerPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 40);
  v4 = v3;
  msv_dispatch_sync_on_queue();
}

void __54__MPCPlayerPathCache_resolvedPlayerPathForPlayerPath___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__MPCPlayerPathCache_resolvedPlayerPathForPlayerPath___block_invoke_5;
  block[3] = &unk_1E8238510;
  v14 = v6;
  v15 = v5;
  v16 = v7;
  v12 = *(a1 + 40);
  v9 = v12;
  v17 = v12;
  v10 = v5;
  v11 = v6;
  dispatch_async(v8, block);
}

void __54__MPCPlayerPathCache_resolvedPlayerPathForPlayerPath___block_invoke_5(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = v2;
LABEL_3:
    v5 = v3;
    [*(*(a1[8] + 8) + 40) finishWithError:v3];
    [*(a1[6] + 8) setObject:0 forKeyedSubscript:a1[7]];

    return;
  }

  if (!a1[5])
  {
    v3 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:5000 debugDescription:@"resolvedPlayerPath and error was nil"];
    goto LABEL_3;
  }

  v4 = *(*(a1[8] + 8) + 40);

  [v4 finishWithValue:?];
}

uint64_t __54__MPCPlayerPathCache_resolvedPlayerPathForPlayerPath___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _onQueue_registerForInvalidationWithUnresolvedPlayerPath:*(a1 + 40) invalidationPlayerPath:{objc_msgSend(*(a1 + 48), "mediaRemotePlayerPath")}];
  [*(a1 + 32) _onQueue_registerForEndpointChangeWithUnresolvedPlayerPath:*(a1 + 40) routeResolvedPlayerPath:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _onQueue_registerForEndpointInvalidationsWithUnresolvedPlayerPath:v3 routeResolvedPlayerPath:v4];
}

- (id)observationTokenDescriptionForPlayerPath:(id)path
{
  pathCopy = path;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__26667;
  v16 = __Block_byref_object_dispose__26668;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__MPCPlayerPathCache_observationTokenDescriptionForPlayerPath___block_invoke;
  block[3] = &unk_1E8238A50;
  v10 = pathCopy;
  v11 = &v12;
  block[4] = self;
  v6 = pathCopy;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __63__MPCPlayerPathCache_observationTokenDescriptionForPlayerPath___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v2 = [v5 description];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  MRMediaRemoteUnregisterForNowPlayingNotifications();
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [(NSMutableDictionary *)self->_playerPathObservers allValues];
  v4 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        MRMediaRemoteRemovePlayerPathInvalidationHandler();
        ++v7;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = MPCPlayerPathCache;
  [(MPCPlayerPathCache *)&v8 dealloc];
}

@end