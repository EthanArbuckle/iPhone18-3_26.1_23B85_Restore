@interface MRQHONowPlayingController
+ (id)localRouteController;
+ (id)proactiveEndpointController;
- (BOOL)updateLoadingEnabled;
- (MRAVEndpointObserver)endpointObserver;
- (MRNowPlayingPlayerResponse)response;
- (MRQHONowPlayingController)initWithUID:(id)a3 client:(id)a4 player:(id)a5;
- (MRQHONowPlayingControllerDelegate)delegate;
- (id)_loadNowPlayingStateForPlayerPath:(id)a3 error:(id *)a4;
- (id)_onQueue_updateByMergingContentItemChanges:(id)a3;
- (void)_createPlayerPathForEndpoint:(id)a3 client:(id)a4 player:(id)a5 completion:(id)a6;
- (void)_downloadContentItemArtwork:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)_handleActiveSystemEndpointChangedNotification:(id)a3;
- (void)_handlePlaybackQueueChangedNotification:(id)a3;
- (void)_handlePlaybackQueueContentItemsArtworkChangedNotification:(id)a3;
- (void)_handlePlaybackQueueContentItemsChangedNotification:(id)a3;
- (void)_handlePlaybackStateChangedNotification:(id)a3;
- (void)_handleSupportedCommandsChangedNotification:(id)a3;
- (void)_loadNowPlayingStateForEndpoint:(id)a3 client:(id)a4 player:(id)a5 completion:(id)a6;
- (void)_loadNowPlayingStateForUID:(id)a3 client:(id)a4 player:(id)a5 completion:(id)a6;
- (void)_notifyDelegateOfError:(id)a3;
- (void)_notifyDelegateOfInvalidation;
- (void)_notifyDelegateOfNewResponse:(id)a3;
- (void)_notifyDelegateOfPlaybackQueueChangeFromOldQueue:(id)a3 toNewQueue:(id)a4;
- (void)_notifyDelegateOfPlaybackStateChangeFromOldState:(unsigned int)a3 toNewState:(unsigned int)a4;
- (void)_notifyDelegateOfSupportedCommandsChangeFromOldCommands:(id)a3 toNewCommands:(id)a4;
- (void)_notifyDelegateOfUpdatedArtwork:(id)a3;
- (void)_notifyDelegateOfUpdatedContentItems:(id)a3;
- (void)_notifyDelegateOfUpdatedDeviceLastPlayingDate:(id)a3;
- (void)_notifyDelegateOfUpdatedPlayerLastPlayingDate:(id)a3;
- (void)_onQueue_clearState;
- (void)_onQueue_requestAndUpdateArtworkForContentItems:(id)a3 forPlayerPath:(id)a4 withReason:(id)a5;
- (void)_onQueue_requestPlaybackQueueForPlayerPath:(id)a3 includeArtwork:(BOOL)a4 queue:(id)a5 completion:(id)a6;
- (void)_onQueue_retrieveEndpointForUID:(id)a3 completion:(id)a4;
- (void)_onQueue_updateByReplacingWithNewResponse:(id)a3;
- (void)_onQueue_updateWithNewDeviceLastPlayingDate:(id)a3;
- (void)_onQueue_updateWithNewPlaybackQueue:(id)a3;
- (void)_onQueue_updateWithNewPlayerLastPlayingDate:(id)a3;
- (void)_onQueue_updateWithNewSupportedCommands:(id)a3;
- (void)_registerForEndpointChangesIfNeeded;
- (void)_registerForPlayerPathInvalidationsIfNeeded;
- (void)_registerNotificationHandlersIfNeeded;
- (void)_reloadForCompleteInvalidation;
- (void)_reloadForPlayerPathInvalidation;
- (void)_requestContentItemArtwork:(id)a3 forPlayerPath:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)_requestPlayerLastPlayingDateForPlayerPath:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)_requestSupportedCommandsForPlayerPath:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)_resolvePlayerPath:(id)a3 completion:(id)a4;
- (void)_unregisterForEndpointChanges;
- (void)_unregisterForPlayerPathInvalidations;
- (void)_unregisterNotificationHandlers;
- (void)beginLoadingUpdates;
- (void)dealloc;
- (void)endLoadingUpdates;
@end

@implementation MRQHONowPlayingController

- (void)beginLoadingUpdates
{
  v12 = *MEMORY[0x1E69E9840];
  if (![(MRQHONowPlayingController *)self updateLoadingEnabled])
  {
    v3 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(MRQHONowPlayingController *)self uid];
      *buf = 138543362;
      v11 = v4;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRQHONPC] <%{public}@> Begin loading updates.", buf, 0xCu);
    }

    v5 = [(MRQHONowPlayingController *)self uid];
    v6 = [(MRQHONowPlayingController *)self client];
    v7 = [(MRQHONowPlayingController *)self player];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__MRQHONowPlayingController_beginLoadingUpdates__block_invoke;
    v9[3] = &unk_1E769C090;
    v9[4] = self;
    [(MRQHONowPlayingController *)self _loadNowPlayingStateForUID:v5 client:v6 player:v7 completion:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)updateLoadingEnabled
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(MRQHONowPlayingController *)self queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__MRQHONowPlayingController_updateLoadingEnabled__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_async_and_wait(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)_onQueue_clearState
{
  v3 = [(MRQHONowPlayingController *)self queue];
  dispatch_assert_queue_V2(v3);

  [(MRQHONowPlayingController *)self _unregisterForPlayerPathInvalidations];
  [(MRQHONowPlayingController *)self _unregisterForEndpointChanges];
  [(MRQHONowPlayingController *)self setEndpoint:0];
  [(MRQHONowPlayingController *)self setUnresolvedPlayerPath:0];
  [(MRQHONowPlayingController *)self setResolvedPlayerPath:0];
  v4 = [(MRQHONowPlayingController *)self deferredContentItemsToMerge];
  [v4 removeAllObjects];
}

- (void)_unregisterForEndpointChanges
{
  v3 = [(MRQHONowPlayingController *)self uid];
  v4 = [v3 isEqualToString:@"proactiveEndpoint"];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 removeObserver:self name:@"kMRMediaRemoteActiveSystemEndpointDidChangeNotification" object:0];
  }

  else
  {
    v6 = [(MRQHONowPlayingController *)self endpointObserver];
    [v6 end];

    v5 = [(MRQHONowPlayingController *)self endpointObserver];
    [v5 setEndpointChangedCallback:0];
  }

  [(MRQHONowPlayingController *)self setRegisteredForEndpointChanges:0];
}

- (MRAVEndpointObserver)endpointObserver
{
  endpointObserver = self->_endpointObserver;
  if (!endpointObserver)
  {
    v4 = [MRAVEndpointObserver alloc];
    v5 = [(MRQHONowPlayingController *)self uid];
    v6 = [(MRAVEndpointObserver *)v4 initWithOutputDeviceUID:v5];
    v7 = self->_endpointObserver;
    self->_endpointObserver = v6;

    endpointObserver = self->_endpointObserver;
  }

  return endpointObserver;
}

- (void)_unregisterForPlayerPathInvalidations
{
  v3 = [(MRQHONowPlayingController *)self playerPathInvalidationObserver];

  if (v3)
  {
    v4 = [(MRQHONowPlayingController *)self playerPathInvalidationObserver];
    MRMediaRemoteRemovePlayerPathInvalidationHandler(v4);

    [(MRQHONowPlayingController *)self setPlayerPathInvalidationObserver:0];
  }

  [(MRQHONowPlayingController *)self setRegisteredForPlayerPathInvalidations:0];
}

- (void)_registerForEndpointChangesIfNeeded
{
  if (![(MRQHONowPlayingController *)self registeredForEndpointChanges])
  {
    v3 = [(MRQHONowPlayingController *)self uid];
    v4 = [v3 isEqualToString:@"proactiveEndpoint"];

    if (v4)
    {
      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      [v5 addObserver:self selector:sel__handleActiveSystemEndpointChangedNotification_ name:@"kMRMediaRemoteActiveSystemEndpointDidChangeNotification" object:0];
    }

    else
    {
      objc_initWeak(&location, self);
      v8 = MEMORY[0x1E69E9820];
      objc_copyWeak(&v9, &location);
      v6 = [(MRQHONowPlayingController *)self endpointObserver:v8];
      [v6 setEndpointChangedCallback:&v8];

      v7 = [(MRQHONowPlayingController *)self endpointObserver];
      [v7 begin];

      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }

    [(MRQHONowPlayingController *)self setRegisteredForEndpointChanges:1];
  }
}

- (void)_registerForPlayerPathInvalidationsIfNeeded
{
  if (![(MRQHONowPlayingController *)self registeredForPlayerPathInvalidations])
  {
    objc_initWeak(&location, self);
    v3 = [(MRQHONowPlayingController *)self unresolvedPlayerPath];
    v4 = [(MRQHONowPlayingController *)self queue];
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __72__MRQHONowPlayingController__registerForPlayerPathInvalidationsIfNeeded__block_invoke;
    v9 = &unk_1E769C448;
    objc_copyWeak(&v10, &location);
    v5 = MRMediaRemoteAddPlayerPathInvalidationHandler(v3, v4, &v6);
    [(MRQHONowPlayingController *)self setPlayerPathInvalidationObserver:v5, v6, v7, v8, v9];

    [(MRQHONowPlayingController *)self setRegisteredForPlayerPathInvalidations:1];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (MRNowPlayingPlayerResponse)response
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  v3 = [(MRQHONowPlayingController *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__MRQHONowPlayingController_response__block_invoke;
  v6[3] = &unk_1E769A2A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (MRQHONowPlayingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __48__MRQHONowPlayingController_beginLoadingUpdates__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [*(a1 + 32) setUpdateLoadingEnabled:1];
  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 _onQueue_updateByReplacingWithNewResponse:0];
    [*(a1 + 32) _notifyDelegateOfError:v5];
  }

  else
  {
    [v6 _onQueue_updateByReplacingWithNewResponse:v7];
    [*(a1 + 32) _notifyDelegateOfNewResponse:v7];
  }
}

void __37__MRQHONowPlayingController_response__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __64__MRQHONowPlayingController__registerForEndpointChangesIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = a2;
    v5 = [WeakRetained endpoint];
    v6 = [v5 uniqueIdentifier];
    v7 = [v4 uniqueIdentifier];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      v9 = _MRLogForCategory(1uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [WeakRetained uid];
        v11 = [WeakRetained endpoint];
        v16 = 138543874;
        v17 = v10;
        v18 = 2114;
        v19 = v11;
        v20 = 2114;
        v21 = v4;
        _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[MRQHONPC] <%{public}@> reloading due to change in endpoint. Current endpoint: %{public}@. New endpoint: %{public}@.", &v16, 0x20u);
      }

      v12 = [v4 outputDevices];
      v13 = [v12 firstObject];
      v14 = [v13 groupID];
      [WeakRetained setEndpointObserverGroupUID:v14];

      [WeakRetained _notifyDelegateOfInvalidation];
      [WeakRetained _reloadForCompleteInvalidation];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (id)localRouteController
{
  v2 = [MRQHONowPlayingController alloc];
  v3 = +[MRDeviceInfoRequest localDeviceInfo];
  v4 = [v3 deviceUID];
  v5 = [(MRQHONowPlayingController *)v2 initWithUID:v4];

  return v5;
}

+ (id)proactiveEndpointController
{
  v2 = [[MRQHONowPlayingController alloc] initWithUID:@"proactiveEndpoint"];

  return v2;
}

- (MRQHONowPlayingController)initWithUID:(id)a3 client:(id)a4 player:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v31.receiver = self;
  v31.super_class = MRQHONowPlayingController;
  v11 = [(MRQHONowPlayingController *)&v31 init];
  if (v11)
  {
    v12 = [v8 copy];
    uid = v11->_uid;
    v11->_uid = v12;

    v14 = [v9 copy];
    client = v11->_client;
    v11->_client = v14;

    v16 = [v10 copy];
    player = v11->_player;
    v11->_player = v16;

    *&v11->_registeredForNotifications = 0;
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deferredContentItemsToMerge = v11->_deferredContentItemsToMerge;
    v11->_deferredContentItemsToMerge = v18;

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.MediaRemote.MRQHONowPlayingController:%@|queue", v8];
    v21 = [v20 UTF8String];
    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create(v21, v22);
    queue = v11->_queue;
    v11->_queue = v23;

    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.MediaRemote.MRQHONowPlayingController:%@|delegateQueue", v8];
    v26 = [v25 UTF8String];
    v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v28 = dispatch_queue_create(v26, v27);
    delegateQueue = v11->_delegateQueue;
    v11->_delegateQueue = v28;
  }

  return v11;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MRQHONowPlayingController *)self uid];
    *buf = 138543362;
    v8 = v4;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRQHONPC] <%{public}@> Deallocating.", buf, 0xCu);
  }

  [(MRQHONowPlayingController *)self _unregisterForPlayerPathInvalidations];
  v6.receiver = self;
  v6.super_class = MRQHONowPlayingController;
  [(MRQHONowPlayingController *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)endLoadingUpdates
{
  v3 = [(MRQHONowPlayingController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MRQHONowPlayingController_endLoadingUpdates__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __46__MRQHONowPlayingController_endLoadingUpdates__block_invoke(uint64_t result)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 11) == 1)
  {
    v1 = result;
    v2 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(v1 + 32) uid];
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRQHONPC] <%{public}@> End loading updates.", &v5, 0xCu);
    }

    [*(v1 + 32) _unregisterForEndpointChanges];
    [*(v1 + 32) _unregisterForPlayerPathInvalidations];
    [*(v1 + 32) _unregisterNotificationHandlers];
    [*(v1 + 32) _onQueue_clearState];
    [*(v1 + 32) setEndpointObserverGroupUID:0];
    result = [*(v1 + 32) setUpdateLoadingEnabled:0];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_reloadForCompleteInvalidation
{
  v3 = [(MRQHONowPlayingController *)self uid];
  v4 = [(MRQHONowPlayingController *)self client];
  v5 = [(MRQHONowPlayingController *)self player];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__MRQHONowPlayingController__reloadForCompleteInvalidation__block_invoke;
  v6[3] = &unk_1E769C090;
  v6[4] = self;
  [(MRQHONowPlayingController *)self _loadNowPlayingStateForUID:v3 client:v4 player:v5 completion:v6];
}

void __59__MRQHONowPlayingController__reloadForCompleteInvalidation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 _onQueue_updateByReplacingWithNewResponse:0];
    [*(a1 + 32) _notifyDelegateOfError:v5];
  }

  else
  {
    [v6 _onQueue_updateByReplacingWithNewResponse:v7];
    [*(a1 + 32) _notifyDelegateOfNewResponse:v7];
  }
}

- (void)_reloadForPlayerPathInvalidation
{
  [(MRQHONowPlayingController *)self _unregisterForPlayerPathInvalidations];
  v3 = [(MRQHONowPlayingController *)self endpoint];
  v4 = [(MRQHONowPlayingController *)self client];
  v5 = [(MRQHONowPlayingController *)self player];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__MRQHONowPlayingController__reloadForPlayerPathInvalidation__block_invoke;
  v6[3] = &unk_1E769C090;
  v6[4] = self;
  [(MRQHONowPlayingController *)self _loadNowPlayingStateForEndpoint:v3 client:v4 player:v5 completion:v6];
}

void __61__MRQHONowPlayingController__reloadForPlayerPathInvalidation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 _onQueue_updateByReplacingWithNewResponse:0];
    [*(a1 + 32) _notifyDelegateOfError:v5];
  }

  else
  {
    [v6 _onQueue_updateByReplacingWithNewResponse:v7];
    [*(a1 + 32) _notifyDelegateOfNewResponse:v7];
  }
}

- (void)_loadNowPlayingStateForUID:(id)a3 client:(id)a4 player:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MRQHONowPlayingController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__MRQHONowPlayingController__loadNowPlayingStateForUID_client_player_completion___block_invoke;
  block[3] = &unk_1E769C0E0;
  block[4] = self;
  v20 = v10;
  v22 = v12;
  v23 = v13;
  v21 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v13;
  v18 = v10;
  dispatch_async(v14, block);
}

void __81__MRQHONowPlayingController__loadNowPlayingStateForUID_client_player_completion___block_invoke(id *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  [a1[4] _onQueue_clearState];
  v2 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[5];
    *buf = 138543362;
    v17 = v3;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRQHONPC] <%{public}@> Begin resolving endpoint.", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__MRQHONowPlayingController__loadNowPlayingStateForUID_client_player_completion___block_invoke_17;
  v12[3] = &unk_1E769C0B8;
  v4 = a1[4];
  v5 = a1[5];
  *&v6 = v5;
  *(&v6 + 1) = a1[4];
  v11 = v6;
  v15 = a1[8];
  v7 = a1[6];
  v8 = a1[7];
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v13 = v11;
  v14 = v9;
  [v4 _onQueue_retrieveEndpointForUID:v5 completion:v12];

  v10 = *MEMORY[0x1E69E9840];
}

void __81__MRQHONowPlayingController__loadNowPlayingStateForUID_client_player_completion___block_invoke_17(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _MRLogForCategory(1uLL);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __81__MRQHONowPlayingController__loadNowPlayingStateForUID_client_player_completion___block_invoke_17_cold_1(a1, v8);
    }

    [*(a1 + 40) _registerForEndpointChangesIfNeeded];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 40) uid];
      v11 = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRQHONPC] <%{public}@> Resolved to Endpoint: %{public}@.", &v11, 0x16u);
    }

    [*(a1 + 40) setEndpoint:v5];
    [*(a1 + 40) _loadNowPlayingStateForEndpoint:v5 client:*(a1 + 48) player:*(a1 + 56) completion:*(a1 + 64)];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_loadNowPlayingStateForEndpoint:(id)a3 client:(id)a4 player:(id)a5 completion:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(MRQHONowPlayingController *)self uid];
    *buf = 138543618;
    v21 = v15;
    v22 = 2114;
    v23 = v10;
    _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "[MRQHONPC] <%{public}@> Begin resolving player path for endpoint %{public}@.", buf, 0x16u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __86__MRQHONowPlayingController__loadNowPlayingStateForEndpoint_client_player_completion___block_invoke;
  v18[3] = &unk_1E769C130;
  v18[4] = self;
  v19 = v11;
  v16 = v11;
  [(MRQHONowPlayingController *)self _createPlayerPathForEndpoint:v10 client:v13 player:v12 completion:v18];

  v17 = *MEMORY[0x1E69E9840];
}

void __86__MRQHONowPlayingController__loadNowPlayingStateForEndpoint_client_player_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __86__MRQHONowPlayingController__loadNowPlayingStateForEndpoint_client_player_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __86__MRQHONowPlayingController__loadNowPlayingStateForEndpoint_client_player_completion___block_invoke_19;
    v9[3] = &unk_1E769C108;
    v9[4] = v8;
    v11 = *(a1 + 40);
    v10 = v5;
    [v8 _resolvePlayerPath:v10 completion:v9];
  }
}

void __86__MRQHONowPlayingController__loadNowPlayingStateForEndpoint_client_player_completion___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __86__MRQHONowPlayingController__loadNowPlayingStateForEndpoint_client_player_completion___block_invoke_19_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  else if ([v5 isResolved])
  {
    v8 = (a1 + 32);
    [*(a1 + 32) setUnresolvedPlayerPath:*(a1 + 40)];
    [*(a1 + 32) setResolvedPlayerPath:v5];
    v9 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*v8 uid];
      *buf = 138543618;
      v25 = v10;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[MRQHONPC] <%{public}@> Resolved to player path: %@.", buf, 0x16u);
    }

    [*v8 _registerNotificationHandlersIfNeeded];
    [*v8 _registerForPlayerPathInvalidationsIfNeeded];
    [*v8 _registerForEndpointChangesIfNeeded];
    v11 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*v8 uid];
      *buf = 138543362;
      v25 = v12;
      _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "[MRQHONPC] <%{public}@> Begin loading data.", buf, 0xCu);
    }

    v13 = *v8;
    v23 = 0;
    v14 = [v13 _loadNowPlayingStateForPlayerPath:v5 error:&v23];
    v15 = v23;
    v16 = _MRLogForCategory(1uLL);
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __86__MRQHONowPlayingController__loadNowPlayingStateForEndpoint_client_player_completion___block_invoke_19_cold_3();
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [*v8 uid];
      *buf = 138543618;
      v25 = v21;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, "[MRQHONPC] <%{public}@> End loading data. Response: %@.", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v18 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __86__MRQHONowPlayingController__loadNowPlayingStateForEndpoint_client_player_completion___block_invoke_19_cold_2(a1);
    }

    [*(a1 + 32) setResponse:0];
    [*(a1 + 32) setUnresolvedPlayerPath:*(a1 + 40)];
    [*(a1 + 32) _registerForPlayerPathInvalidationsIfNeeded];
    [*(a1 + 32) _registerForEndpointChangesIfNeeded];
    v19 = *(a1 + 48);
    v20 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:42];
    (*(v19 + 16))(v19, 0, v20);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (id)_loadNowPlayingStateForPlayerPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__6;
  v70 = __Block_byref_object_dispose__6;
  v71 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__6;
  v64 = __Block_byref_object_dispose__6;
  v65 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__6;
  v58 = __Block_byref_object_dispose__6;
  v59 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__6;
  v52 = __Block_byref_object_dispose__6;
  v53 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__6;
  v46 = __Block_byref_object_dispose__6;
  v47 = 0;
  v7 = dispatch_group_create();
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.MediaRemote.MRQHONowPlayingController.callbackQueue", v8);

  dispatch_group_enter(v7);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __69__MRQHONowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke;
  v38[3] = &unk_1E769C158;
  v40 = &v54;
  v41 = &v48;
  v10 = v7;
  v39 = v10;
  [(MRQHONowPlayingController *)self _requestSupportedCommandsForPlayerPath:v6 queue:v9 completion:v38];
  dispatch_group_enter(v10);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __69__MRQHONowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_2;
  v35[3] = &unk_1E769C180;
  v37 = &v72;
  v11 = v10;
  v36 = v11;
  MRMediaRemoteGetPlaybackStateForPlayer(v6, v9, v35);
  dispatch_group_enter(v11);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __69__MRQHONowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_3;
  v29[3] = &unk_1E769C1A8;
  v33 = &v66;
  v34 = &v60;
  v12 = v11;
  v30 = v12;
  v31 = self;
  v13 = v6;
  v32 = v13;
  [(MRQHONowPlayingController *)self _onQueue_requestPlaybackQueueForPlayerPath:v13 includeArtwork:1 queue:v9 completion:v29];
  dispatch_group_enter(v12);
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __69__MRQHONowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_5;
  v26 = &unk_1E769C1D0;
  v28 = &v42;
  v14 = v12;
  v27 = v14;
  [(MRQHONowPlayingController *)self _requestPlayerLastPlayingDateForPlayerPath:v13 queue:v9 completion:&v23];
  v15 = dispatch_time(0, 5000000000);
  if (dispatch_group_wait(v14, v15))
  {
    if (a4)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v17 = [v16 initWithMRError:{26, v23, v24, v25, v26}];
LABEL_8:
      v19 = 0;
      *a4 = v17;
      goto LABEL_10;
    }

LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

  v18 = v61[5];
  if (v18 || (v18 = v49[5]) != 0)
  {
    if (a4)
    {
      v17 = v18;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v19 = objc_alloc_init(MRNowPlayingPlayerResponse);
  v21 = [MRDestination alloc];
  v22 = [(MRDestination *)v21 initWithPlayerPath:v13, v23, v24, v25, v26];
  [(MRNowPlayingPlayerResponse *)v19 setDestination:v22];

  [(MRNowPlayingPlayerResponse *)v19 setPlaybackQueue:v67[5]];
  [(MRNowPlayingPlayerResponse *)v19 setPlaybackState:*(v73 + 6)];
  [(MRNowPlayingPlayerResponse *)v19 setSupportedCommands:v55[5]];
  [(MRNowPlayingPlayerResponse *)v19 setDeviceLastPlayingDate:0];
  [(MRNowPlayingPlayerResponse *)v19 setPlayerLastPlayingDate:v43[5]];
LABEL_10:

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v72, 8);

  return v19;
}

void __69__MRQHONowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void __69__MRQHONowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
  v12 = v6;

  dispatch_group_leave(*(a1 + 32));
  v13 = objc_alloc(MEMORY[0x1E695DEC8]);
  v14 = [v9 contentItems];
  v15 = [v13 initWithArray:v14 copyItems:1];

  v16 = [*(a1 + 40) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__MRQHONowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_4;
  block[3] = &unk_1E769BA00;
  v17 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v20 = v15;
  v21 = v17;
  v18 = v15;
  dispatch_async(v16, block);
}

void __69__MRQHONowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_5(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)_onQueue_requestPlaybackQueueForPlayerPath:(id)a3 includeArtwork:(BOOL)a4 queue:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  [(MRQHONowPlayingController *)self setRequestingQueue:1];
  v12 = +[MRPlaybackQueueRequest defaultPlaybackQueueRequest];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __104__MRQHONowPlayingController__onQueue_requestPlaybackQueueForPlayerPath_includeArtwork_queue_completion___block_invoke;
  v14[3] = &unk_1E769C1F8;
  v14[4] = self;
  v15 = v9;
  v13 = v9;
  MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync(v12, v11, v10, v14);
}

void __104__MRQHONowPlayingController__onQueue_requestPlaybackQueueForPlayerPath_includeArtwork_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setRequestingQueue:0];
  v4 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [*(a1 + 32) deferredContentItemsToMerge];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v4 contentItemForIdentifier:v11];

        [v12 mergeFrom:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [*(a1 + 32) deferredContentItemsToMerge];
  [v13 removeAllObjects];

  (*(*(a1 + 40) + 16))();
  v14 = *MEMORY[0x1E69E9840];
}

- (void)_onQueue_requestAndUpdateArtworkForContentItems:(id)a3 forPlayerPath:(id)a4 withReason:(id)a5
{
  v101 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v74 = a4;
  v73 = a5;
  v9 = [(MRQHONowPlayingController *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(MRQHONowPlayingController *)self uid];
    *buf = 138543618;
    v95 = v11;
    v96 = 2114;
    v97 = v73;
    _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "[MRQHONPC] <%{public}@> _requestAndUpdateArtworkForContentItems because %{public}@.", buf, 0x16u);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = v8;
  v78 = [obj countByEnumeratingWithState:&v89 objects:v100 count:16];
  if (v78)
  {
    v77 = *v90;
    v76 = self;
    do
    {
      for (i = 0; i != v78; ++i)
      {
        if (*v90 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v89 + 1) + 8 * i);
        v14 = [(MRNowPlayingPlayerResponse *)self->_response playbackQueue];
        v15 = [v13 identifier];
        v16 = [v14 contentItemForIdentifier:v15];
        v17 = [v16 copy];

        if (v17)
        {
          v18 = [v17 metadata];
          if ([v18 artworkAvailable])
          {
            v80 = 1;
          }

          else
          {
            v19 = [v17 metadata];
            v20 = [v19 artworkURL];
            if (v20)
            {
              v80 = 1;
            }

            else
            {
              v21 = [v17 metadata];
              v22 = [v21 artworkIdentifier];
              v80 = v22 != 0;
            }
          }

          v23 = [v17 artwork];
          v24 = [v23 imageData];

          v25 = [v13 metadata];
          v26 = [v25 artworkIdentifier];
          if (v26)
          {
            v27 = [v13 metadata];
            v28 = [v27 artworkIdentifier];
            v29 = [v17 metadata];
            v30 = [v29 artworkIdentifier];
            v79 = [v28 isEqual:v30] ^ 1;
          }

          else
          {
            v79 = 0;
          }

          v82 = i;

          v31 = [v13 metadata];
          v32 = [v31 artworkURL];
          if (v32)
          {
            v33 = [v13 metadata];
            v34 = [v33 artworkURL];
            v35 = v17;
            v36 = [v17 metadata];
            v37 = [v36 artworkURL];
            v38 = [v34 isEqual:v37];
          }

          else
          {
            v35 = v17;
            v38 = 0;
          }

          self = v76;
          v17 = v35;
          i = v82;
          if ((v80 & ((v24 == 0) | v79 | v38)) == 1)
          {
            v87[0] = MEMORY[0x1E69E9820];
            v87[1] = 3221225472;
            v87[2] = __102__MRQHONowPlayingController__onQueue_requestAndUpdateArtworkForContentItems_forPlayerPath_withReason___block_invoke;
            v87[3] = &unk_1E769C220;
            v87[4] = v76;
            v81 = v17;
            v39 = v17;
            v88 = v39;
            v40 = MEMORY[0x1A58E3570](v87);
            v41 = [(MRQHONowPlayingController *)v76 cachedNowPlayingArtwork];
            if (!v41)
            {
              goto LABEL_25;
            }

            v42 = v41;
            v43 = [v39 metadata];
            v44 = [v43 artworkIdentifier];
            v45 = [(MRQHONowPlayingController *)v76 cachedNowPlayingArtworkIdentifier];
            v46 = v45;
            if (v44 == v45)
            {
            }

            else
            {
              v47 = [v44 isEqual:v45];

              if ((v47 & 1) == 0)
              {
LABEL_25:
                v48 = [v74 origin];
                if ([v48 isLocal])
                {

                  goto LABEL_31;
                }

                v49 = [v13 metadata];
                v50 = [v49 artworkURL];

                if (v50)
                {
                  v51 = _MRLogForCategory(1uLL);
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                  {
                    v52 = [(MRQHONowPlayingController *)v76 uid];
                    v53 = [v39 identifier];
                    v54 = [v39 metadata];
                    v55 = [v54 artworkIdentifier];
                    *buf = 138543874;
                    v95 = v52;
                    v96 = 2114;
                    v97 = v53;
                    v98 = 2114;
                    v99 = v55;
                    _os_log_impl(&dword_1A2860000, v51, OS_LOG_TYPE_DEFAULT, "[MRQHONPC] <%{public}@> downloading artwork for content item %{public}@, artwork %{public}@.", buf, 0x20u);
                  }

                  v56 = [(MRQHONowPlayingController *)v76 queue];
                  v85[0] = MEMORY[0x1E69E9820];
                  v85[1] = 3221225472;
                  v85[2] = __102__MRQHONowPlayingController__onQueue_requestAndUpdateArtworkForContentItems_forPlayerPath_withReason___block_invoke_37;
                  v85[3] = &unk_1E769C248;
                  v86 = v40;
                  [(MRQHONowPlayingController *)v76 _downloadContentItemArtwork:v13 queue:v56 completion:v85];

                  v57 = v86;
                }

                else
                {
LABEL_31:
                  v58 = _MRLogForCategory(1uLL);
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                  {
                    v59 = [(MRQHONowPlayingController *)v76 uid];
                    v60 = [v39 identifier];
                    v61 = [v39 metadata];
                    v62 = [v61 artworkIdentifier];
                    *buf = 138543874;
                    v95 = v59;
                    v96 = 2114;
                    v97 = v60;
                    v98 = 2114;
                    v99 = v62;
                    _os_log_impl(&dword_1A2860000, v58, OS_LOG_TYPE_DEFAULT, "[MRQHONPC] <%{public}@> requesting artwork for content item %{public}@, artwork %{public}@.", buf, 0x20u);
                  }

                  v63 = [v13 identifier];
                  v93 = v63;
                  v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v93 count:1];
                  v65 = [(MRQHONowPlayingController *)v76 queue];
                  v83[0] = MEMORY[0x1E69E9820];
                  v83[1] = 3221225472;
                  v83[2] = __102__MRQHONowPlayingController__onQueue_requestAndUpdateArtworkForContentItems_forPlayerPath_withReason___block_invoke_38;
                  v83[3] = &unk_1E769C270;
                  v66 = v40;
                  v83[4] = v13;
                  v84 = v66;
                  [(MRQHONowPlayingController *)v76 _requestContentItemArtwork:v64 forPlayerPath:v74 queue:v65 completion:v83];

                  v57 = v84;
                }

LABEL_38:

                v17 = v81;
                goto LABEL_39;
              }
            }

            v67 = _MRLogForCategory(1uLL);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              v68 = [(MRQHONowPlayingController *)v76 uid];
              v69 = [v39 identifier];
              v70 = [v39 metadata];
              v71 = [v70 artworkIdentifier];
              *buf = 138543874;
              v95 = v68;
              v96 = 2114;
              v97 = v69;
              v98 = 2114;
              v99 = v71;
              _os_log_impl(&dword_1A2860000, v67, OS_LOG_TYPE_DEFAULT, "[MRQHONPC] <%{public}@> Artwork cache hit for content item %{public}@, artwork %{public}@.", buf, 0x20u);
            }

            v57 = [(MRQHONowPlayingController *)v76 cachedNowPlayingArtwork];
            (v40)[2](v40, v57, 0);
            goto LABEL_38;
          }
        }

LABEL_39:
      }

      v78 = [obj countByEnumeratingWithState:&v89 objects:v100 count:16];
    }

    while (v78);
  }

  v72 = *MEMORY[0x1E69E9840];
}

void __102__MRQHONowPlayingController__onQueue_requestAndUpdateArtworkForContentItems_forPlayerPath_withReason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __102__MRQHONowPlayingController__onQueue_requestAndUpdateArtworkForContentItems_forPlayerPath_withReason___block_invoke_cold_1();
    }
  }

  if (v5)
  {
    v8 = [*(a1 + 40) identifier];
    v9 = [*(*(a1 + 32) + 48) playbackQueue];
    v10 = [v9 contentItemWithOffset:0];
    v11 = [v10 identifier];
    v12 = [v8 isEqualToString:v11];

    if (v12)
    {
      v13 = [*(a1 + 40) metadata];
      v14 = [v13 artworkIdentifier];
      v15 = [*(a1 + 32) cachedNowPlayingArtworkIdentifier];
      v16 = v15;
      if (v14 == v15)
      {

LABEL_13:
        goto LABEL_14;
      }

      v17 = [v14 isEqual:v15];

      if ((v17 & 1) == 0)
      {
        v18 = _MRLogForCategory(1uLL);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [*(a1 + 32) uid];
          v20 = [*(a1 + 40) metadata];
          v21 = [v20 artworkIdentifier];
          *buf = 138543618;
          v33 = v19;
          v34 = 2114;
          v35 = v21;
          _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, "[MRQHONPC] <%{public}@> updated artwork cache with %{public}@.", buf, 0x16u);
        }

        [*(a1 + 32) setCachedNowPlayingArtwork:v5];
        v13 = [*(a1 + 40) metadata];
        v14 = [v13 artworkIdentifier];
        [*(a1 + 32) setCachedNowPlayingArtworkIdentifier:v14];
        goto LABEL_13;
      }
    }

LABEL_14:
    v22 = [MRContentItem alloc];
    v23 = [*(a1 + 40) identifier];
    v24 = [(MRContentItem *)v22 initWithIdentifier:v23];

    [(MRContentItem *)v24 setArtwork:v5];
    v25 = *(a1 + 32);
    v31 = v24;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    v27 = [v25 _onQueue_updateByMergingContentItemChanges:v26];

    if ([v27 count])
    {
      v28 = _MRLogForCategory(1uLL);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [*(a1 + 32) uid];
        *buf = 138543618;
        v33 = v29;
        v34 = 2114;
        v35 = v27;
        _os_log_impl(&dword_1A2860000, v28, OS_LOG_TYPE_DEFAULT, "[MRQHONPC] <%{public}@> updated artwork for content items %{public}@.", buf, 0x16u);
      }

      [*(a1 + 32) _notifyDelegateOfUpdatedArtwork:v27];
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __102__MRQHONowPlayingController__onQueue_requestAndUpdateArtworkForContentItems_forPlayerPath_withReason___block_invoke_38(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  v10 = [v5 identifier];
  v8 = [v7 contentItemForIdentifier:v10];

  v9 = [v8 artwork];
  (*(v4 + 16))(v4, v9, v6);
}

- (void)_requestContentItemArtwork:(id)a3 forPlayerPath:(id)a4 queue:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[MRPlaybackQueueRequest alloc] initWithIdentifiers:v12];

  [(MRPlaybackQueueRequest *)v13 setArtworkHeight:1200.0];
  [(MRPlaybackQueueRequest *)v13 setArtworkWidth:1200.0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __87__MRQHONowPlayingController__requestContentItemArtwork_forPlayerPath_queue_completion___block_invoke;
  v15[3] = &unk_1E769C298;
  v16 = v9;
  v14 = v9;
  MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync(v13, v11, v10, v15);
}

- (void)_downloadContentItemArtwork:(id)a3 queue:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695AC78] sharedSession];
  v11 = [v7 metadata];
  v12 = [v11 artworkURL];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__MRQHONowPlayingController__downloadContentItemArtwork_queue_completion___block_invoke;
  v17[3] = &unk_1E769C2E8;
  v18 = v8;
  v19 = v7;
  v20 = v9;
  v13 = v9;
  v14 = v7;
  v15 = v8;
  v16 = [v10 dataTaskWithURL:v12 completionHandler:v17];
  [v16 resume];
}

void __74__MRQHONowPlayingController__downloadContentItemArtwork_queue_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__MRQHONowPlayingController__downloadContentItemArtwork_queue_completion___block_invoke_2;
  v12[3] = &unk_1E769C2C0;
  v13 = v7;
  v8 = *(a1 + 32);
  v14 = *(a1 + 40);
  v9 = *(a1 + 48);
  v15 = v6;
  v16 = v9;
  v10 = v6;
  v11 = v7;
  dispatch_async(v8, v12);
}

void __74__MRQHONowPlayingController__downloadContentItemArtwork_queue_completion___block_invoke_2(uint64_t a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = *MEMORY[0x1E696AA08];
    v14[0] = *(a1 + 32);
    v3 = *MEMORY[0x1E696A588];
    v13[0] = v2;
    v13[1] = v3;
    v4 = MEMORY[0x1E696AEC0];
    v5 = [*(a1 + 40) identifier];
    v6 = [v4 stringWithFormat:@"Failed to download artwork for content item %@", v5];
    v14[1] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

    v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:2 userInfo:v7];
    (*(*(a1 + 56) + 16))();

    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v10 = *(a1 + 56);
    v12 = [[MRArtwork alloc] initWithImageData:*(a1 + 48) height:0 width:0];
    (*(v10 + 16))(v10);
    v11 = *MEMORY[0x1E69E9840];
  }
}

- (void)_requestSupportedCommandsForPlayerPath:(id)a3 queue:(id)a4 completion:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__MRQHONowPlayingController__requestSupportedCommandsForPlayerPath_queue_completion___block_invoke;
  v9[3] = &unk_1E769B228;
  v10 = v7;
  v8 = v7;
  MRMediaRemoteGetSupportedCommandsForPlayer(a3, a4, v9);
}

- (void)_requestPlayerLastPlayingDateForPlayerPath:(id)a3 queue:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[MRNowPlayingRequest alloc] initWithPlayerPath:v9];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __89__MRQHONowPlayingController__requestPlayerLastPlayingDateForPlayerPath_queue_completion___block_invoke;
  v12[3] = &unk_1E769C310;
  v13 = v7;
  v11 = v7;
  [(MRNowPlayingRequest *)v10 requestLastPlayingDateOnQueue:v8 completion:v12];
}

void __89__MRQHONowPlayingController__requestPlayerLastPlayingDateForPlayerPath_queue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __89__MRQHONowPlayingController__requestPlayerLastPlayingDateForPlayerPath_queue_completion___block_invoke_cold_1(v4, v5);
    }

    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E695DF00] distantPast];
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_onQueue_updateByReplacingWithNewResponse:(id)a3
{
  v4 = a3;
  v5 = [(MRQHONowPlayingController *)self queue];
  dispatch_assert_queue_V2(v5);

  response = self->_response;
  self->_response = v4;
}

- (void)_onQueue_updateWithNewDeviceLastPlayingDate:(id)a3
{
  v5 = a3;
  v4 = [(MRQHONowPlayingController *)self queue];
  dispatch_assert_queue_V2(v4);

  [(MRNowPlayingPlayerResponse *)self->_response setDeviceLastPlayingDate:v5];
}

- (void)_onQueue_updateWithNewPlayerLastPlayingDate:(id)a3
{
  v5 = a3;
  v4 = [(MRQHONowPlayingController *)self queue];
  dispatch_assert_queue_V2(v4);

  [(MRNowPlayingPlayerResponse *)self->_response setPlayerLastPlayingDate:v5];
}

- (void)_onQueue_updateWithNewSupportedCommands:(id)a3
{
  v5 = a3;
  v4 = [(MRQHONowPlayingController *)self queue];
  dispatch_assert_queue_V2(v4);

  [(MRNowPlayingPlayerResponse *)self->_response setSupportedCommands:v5];
}

- (void)_onQueue_updateWithNewPlaybackQueue:(id)a3
{
  v5 = a3;
  v4 = [(MRQHONowPlayingController *)self queue];
  dispatch_assert_queue_V2(v4);

  [(MRNowPlayingPlayerResponse *)self->_response setPlaybackQueue:v5];
}

- (id)_onQueue_updateByMergingContentItemChanges:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MRQHONowPlayingController *)self queue];
  dispatch_assert_queue_V2(v5);

  v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v50;
    v42 = self;
    v43 = *v50;
    do
    {
      v9 = 0;
      v44 = v7;
      do
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v49 + 1) + 8 * v9);
        v11 = [(MRNowPlayingPlayerResponse *)self->_response playbackQueue];
        v12 = [v10 identifier];
        v13 = [v11 contentItemForIdentifier:v12];

        if (v13)
        {
          v14 = [v10 metadata];
          if ([v14 artworkAvailable])
          {
            v15 = [v13 metadata];
            v16 = [v15 artworkAvailable];

            if ((v16 & 1) == 0)
            {
LABEL_17:
              [v41 addObject:v10];
              goto LABEL_20;
            }
          }

          else
          {
          }

          v17 = [v10 metadata];
          v18 = [v17 artworkURL];
          if (v18)
          {
            v19 = v18;
            v20 = [v10 metadata];
            v21 = [v20 artworkURL];
            v22 = [v13 metadata];
            v23 = [v22 artworkURL];
            v24 = [v21 isEqual:v23];

            v7 = v44;
            v8 = v43;

            if ((v24 & 1) == 0)
            {
              [v41 addObject:v10];
              goto LABEL_19;
            }
          }

          else
          {
          }

          v25 = [v10 metadata];
          v26 = [v25 artworkIdentifier];
          if (v26)
          {
            v27 = v26;
            v28 = [v10 metadata];
            v29 = [v28 artworkIdentifier];
            v30 = [v13 metadata];
            v31 = [v30 artworkIdentifier];
            v32 = [v29 isEqual:v31];

            v7 = v44;
            v8 = v43;

            self = v42;
            if ((v32 & 1) == 0)
            {
              goto LABEL_17;
            }

LABEL_20:
            [v13 mergeFrom:v10];
            v33 = [v13 identifier];
            [v46 addObject:v33];

            goto LABEL_21;
          }

LABEL_19:
          self = v42;
          goto LABEL_20;
        }

LABEL_21:

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v7);
  }

  if ([v41 count])
  {
    v34 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v41 copyItems:1];
    v35 = [(MRQHONowPlayingController *)self queue];
    v36 = self;
    v37 = v35;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__MRQHONowPlayingController__onQueue_updateByMergingContentItemChanges___block_invoke;
    block[3] = &unk_1E769A4A0;
    block[4] = v36;
    v48 = v34;
    v38 = v34;
    dispatch_async(v37, block);
  }

  v39 = *MEMORY[0x1E69E9840];

  return v46;
}

void __72__MRQHONowPlayingController__onQueue_updateByMergingContentItemChanges___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1 resolvedPlayerPath];
  [v1 _onQueue_requestAndUpdateArtworkForContentItems:v2 forPlayerPath:v3 withReason:@"Artwork added on update"];
}

- (void)_onQueue_retrieveEndpointForUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MRQHONowPlayingController *)self queue];
  dispatch_assert_queue_V2(v8);

  if ([v6 isEqualToString:@"proactiveEndpoint"])
  {
    v9 = [(MRQHONowPlayingController *)self queue];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __72__MRQHONowPlayingController__onQueue_retrieveEndpointForUID_completion___block_invoke;
    v22[3] = &unk_1E769C338;
    v23 = v7;
    MRAVEndpointResolveActiveSystemEndpointWithType(1, v9, v22, 7.0);

    v10 = v23;
  }

  else
  {
    v10 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
    v11 = [(MRQHONowPlayingController *)self endpointObserverGroupUID];

    if (v11)
    {
      v12 = [(MRQHONowPlayingController *)self endpointObserverGroupUID];
      v13 = [(MRQHONowPlayingController *)self queue];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __72__MRQHONowPlayingController__onQueue_retrieveEndpointForUID_completion___block_invoke_2;
      v19[3] = &unk_1E769C360;
      v14 = &v20;
      v20 = v10;
      v15 = &v21;
      v21 = v7;
      [(MRAVLightweightReconnaissanceSession *)v10 searchEndpointsForGroupUID:v12 timeout:@"MRQHONowPlayingController-search" reason:v13 queue:v19 completion:7.0];
    }

    else
    {
      v12 = [(MRQHONowPlayingController *)self queue];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __72__MRQHONowPlayingController__onQueue_retrieveEndpointForUID_completion___block_invoke_3;
      v16[3] = &unk_1E769C360;
      v14 = &v17;
      v17 = v10;
      v15 = &v18;
      v18 = v7;
      [(MRAVLightweightReconnaissanceSession *)v10 searchEndpointsForOutputDeviceUID:v6 timeout:@"MRQHONowPlayingController-search" reason:v12 queue:v16 completion:7.0];
    }
  }
}

void __72__MRQHONowPlayingController__onQueue_retrieveEndpointForUID_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = *(a1 + 32);
  v6(v5, a2, a3);
}

void __72__MRQHONowPlayingController__onQueue_retrieveEndpointForUID_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = *(a1 + 32);
  v6(v5, a2, a3);
}

- (void)_createPlayerPathForEndpoint:(id)a3 client:(id)a4 player:(id)a5 completion:(id)a6
{
  v29[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MEMORY[0x1E696AEC0];
  v15 = [(MRQHONowPlayingController *)self uid];
  v16 = [v14 stringWithFormat:@"MRQHONowPlayingController-%@", v15];

  v28 = @"MREndpointConnectionReasonUserInfoKey";
  v29[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __83__MRQHONowPlayingController__createPlayerPathForEndpoint_client_player_completion___block_invoke;
  v23[3] = &unk_1E769AF98;
  v26 = v12;
  v27 = v13;
  v23[4] = self;
  v24 = v10;
  v25 = v11;
  v18 = v12;
  v19 = v11;
  v20 = v10;
  v21 = v13;
  [v20 connectToExternalDeviceWithUserInfo:v17 completion:v23];

  v22 = *MEMORY[0x1E69E9840];
}

void __83__MRQHONowPlayingController__createPlayerPathForEndpoint_client_player_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__MRQHONowPlayingController__createPlayerPathForEndpoint_client_player_completion___block_invoke_2;
  block[3] = &unk_1E769C388;
  v12 = v3;
  v5 = a1[8];
  v6 = a1[5];
  v7 = a1[6];
  *&v8 = a1[7];
  *(&v8 + 1) = v5;
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v13 = v9;
  v14 = v8;
  v10 = v3;
  dispatch_async(v4, block);
}

void __83__MRQHONowPlayingController__createPlayerPathForEndpoint_client_player_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 64);
    v3 = *(*(a1 + 64) + 16);

    v3();
  }

  else
  {
    v4 = [MRPlayerPath alloc];
    v5 = [*(a1 + 40) origin];
    v6 = [(MRPlayerPath *)v4 initWithOrigin:v5 client:*(a1 + 48) player:*(a1 + 56)];

    (*(*(a1 + 64) + 16))();
  }
}

- (void)_resolvePlayerPath:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MRQHONowPlayingController *)self queue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__MRQHONowPlayingController__resolvePlayerPath_completion___block_invoke;
  v10[3] = &unk_1E769C298;
  v11 = v6;
  v9 = v6;
  MRMediaRemoteNowPlayingResolvePlayerPath(v7, v8, v10);
}

- (void)_notifyDelegateOfNewResponse:(id)a3
{
  v4 = a3;
  v5 = [(MRQHONowPlayingController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MRQHONowPlayingController *)self delegateQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__MRQHONowPlayingController__notifyDelegateOfNewResponse___block_invoke;
    v8[3] = &unk_1E769A4A0;
    v8[4] = self;
    v9 = v4;
    dispatch_async(v7, v8);
  }
}

void __58__MRQHONowPlayingController__notifyDelegateOfNewResponse___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 controller:*(a1 + 32) didLoadResponse:*(a1 + 40)];
}

- (void)_notifyDelegateOfPlaybackStateChangeFromOldState:(unsigned int)a3 toNewState:(unsigned int)a4
{
  v7 = [(MRQHONowPlayingController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(MRQHONowPlayingController *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__MRQHONowPlayingController__notifyDelegateOfPlaybackStateChangeFromOldState_toNewState___block_invoke;
    block[3] = &unk_1E769C018;
    block[4] = self;
    v15 = a3;
    v16 = a4;
    dispatch_async(v9, block);
  }

  v10 = [(MRQHONowPlayingController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(MRQHONowPlayingController *)self delegateQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __89__MRQHONowPlayingController__notifyDelegateOfPlaybackStateChangeFromOldState_toNewState___block_invoke_2;
    v13[3] = &unk_1E769A228;
    v13[4] = self;
    dispatch_async(v12, v13);
  }
}

void __89__MRQHONowPlayingController__notifyDelegateOfPlaybackStateChangeFromOldState_toNewState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 controller:*(a1 + 32) playbackStateDidChangeFrom:*(a1 + 40) to:*(a1 + 44)];
}

void __89__MRQHONowPlayingController__notifyDelegateOfPlaybackStateChangeFromOldState_toNewState___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 response];
  [v4 controller:v2 didUpdateResponse:v3];
}

- (void)_notifyDelegateOfPlaybackQueueChangeFromOldQueue:(id)a3 toNewQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MRQHONowPlayingController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(MRQHONowPlayingController *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__MRQHONowPlayingController__notifyDelegateOfPlaybackQueueChangeFromOldQueue_toNewQueue___block_invoke;
    block[3] = &unk_1E769BA00;
    block[4] = self;
    v16 = v6;
    v17 = v7;
    dispatch_async(v10, block);
  }

  v11 = [(MRQHONowPlayingController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(MRQHONowPlayingController *)self delegateQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __89__MRQHONowPlayingController__notifyDelegateOfPlaybackQueueChangeFromOldQueue_toNewQueue___block_invoke_2;
    v14[3] = &unk_1E769A228;
    v14[4] = self;
    dispatch_async(v13, v14);
  }
}

void __89__MRQHONowPlayingController__notifyDelegateOfPlaybackQueueChangeFromOldQueue_toNewQueue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 controller:*(a1 + 32) playbackQueueDidChangeFrom:*(a1 + 40) to:*(a1 + 48)];
}

void __89__MRQHONowPlayingController__notifyDelegateOfPlaybackQueueChangeFromOldQueue_toNewQueue___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 response];
  [v4 controller:v2 didUpdateResponse:v3];
}

- (void)_notifyDelegateOfUpdatedContentItems:(id)a3
{
  v4 = a3;
  v5 = [(MRQHONowPlayingController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MRQHONowPlayingController *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__MRQHONowPlayingController__notifyDelegateOfUpdatedContentItems___block_invoke;
    block[3] = &unk_1E769A4A0;
    block[4] = self;
    v13 = v4;
    dispatch_async(v7, block);
  }

  v8 = [(MRQHONowPlayingController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(MRQHONowPlayingController *)self delegateQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __66__MRQHONowPlayingController__notifyDelegateOfUpdatedContentItems___block_invoke_2;
    v11[3] = &unk_1E769A228;
    v11[4] = self;
    dispatch_async(v10, v11);
  }
}

void __66__MRQHONowPlayingController__notifyDelegateOfUpdatedContentItems___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 controller:*(a1 + 32) contentItemsDidUpdate:*(a1 + 40)];
}

void __66__MRQHONowPlayingController__notifyDelegateOfUpdatedContentItems___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 response];
  [v4 controller:v2 didUpdateResponse:v3];
}

- (void)_notifyDelegateOfUpdatedArtwork:(id)a3
{
  v4 = a3;
  v5 = [(MRQHONowPlayingController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MRQHONowPlayingController *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__MRQHONowPlayingController__notifyDelegateOfUpdatedArtwork___block_invoke;
    block[3] = &unk_1E769A4A0;
    block[4] = self;
    v13 = v4;
    dispatch_async(v7, block);
  }

  v8 = [(MRQHONowPlayingController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(MRQHONowPlayingController *)self delegateQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__MRQHONowPlayingController__notifyDelegateOfUpdatedArtwork___block_invoke_2;
    v11[3] = &unk_1E769A228;
    v11[4] = self;
    dispatch_async(v10, v11);
  }
}

void __61__MRQHONowPlayingController__notifyDelegateOfUpdatedArtwork___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 controller:*(a1 + 32) didLoadArtworkForContentItems:*(a1 + 40)];
}

void __61__MRQHONowPlayingController__notifyDelegateOfUpdatedArtwork___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 response];
  [v4 controller:v2 didUpdateResponse:v3];
}

- (void)_notifyDelegateOfSupportedCommandsChangeFromOldCommands:(id)a3 toNewCommands:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MRQHONowPlayingController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(MRQHONowPlayingController *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__MRQHONowPlayingController__notifyDelegateOfSupportedCommandsChangeFromOldCommands_toNewCommands___block_invoke;
    block[3] = &unk_1E769BA00;
    block[4] = self;
    v16 = v6;
    v17 = v7;
    dispatch_async(v10, block);
  }

  v11 = [(MRQHONowPlayingController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(MRQHONowPlayingController *)self delegateQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __99__MRQHONowPlayingController__notifyDelegateOfSupportedCommandsChangeFromOldCommands_toNewCommands___block_invoke_2;
    v14[3] = &unk_1E769A228;
    v14[4] = self;
    dispatch_async(v13, v14);
  }
}

void __99__MRQHONowPlayingController__notifyDelegateOfSupportedCommandsChangeFromOldCommands_toNewCommands___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 controller:*(a1 + 32) supportedCommandsDidChangeFrom:*(a1 + 40) to:*(a1 + 48)];
}

void __99__MRQHONowPlayingController__notifyDelegateOfSupportedCommandsChangeFromOldCommands_toNewCommands___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 response];
  [v4 controller:v2 didUpdateResponse:v3];
}

- (void)_notifyDelegateOfUpdatedDeviceLastPlayingDate:(id)a3
{
  v4 = a3;
  v5 = [(MRQHONowPlayingController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MRQHONowPlayingController *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__MRQHONowPlayingController__notifyDelegateOfUpdatedDeviceLastPlayingDate___block_invoke;
    block[3] = &unk_1E769A4A0;
    block[4] = self;
    v13 = v4;
    dispatch_async(v7, block);
  }

  v8 = [(MRQHONowPlayingController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(MRQHONowPlayingController *)self delegateQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__MRQHONowPlayingController__notifyDelegateOfUpdatedDeviceLastPlayingDate___block_invoke_2;
    v11[3] = &unk_1E769A228;
    v11[4] = self;
    dispatch_async(v10, v11);
  }
}

void __75__MRQHONowPlayingController__notifyDelegateOfUpdatedDeviceLastPlayingDate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 controller:*(a1 + 32) deviceLastPlayingDateDidChange:*(a1 + 40)];
}

void __75__MRQHONowPlayingController__notifyDelegateOfUpdatedDeviceLastPlayingDate___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 response];
  [v4 controller:v2 didUpdateResponse:v3];
}

- (void)_notifyDelegateOfUpdatedPlayerLastPlayingDate:(id)a3
{
  v4 = a3;
  v5 = [(MRQHONowPlayingController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MRQHONowPlayingController *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__MRQHONowPlayingController__notifyDelegateOfUpdatedPlayerLastPlayingDate___block_invoke;
    block[3] = &unk_1E769A4A0;
    block[4] = self;
    v13 = v4;
    dispatch_async(v7, block);
  }

  v8 = [(MRQHONowPlayingController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(MRQHONowPlayingController *)self delegateQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__MRQHONowPlayingController__notifyDelegateOfUpdatedPlayerLastPlayingDate___block_invoke_2;
    v11[3] = &unk_1E769A228;
    v11[4] = self;
    dispatch_async(v10, v11);
  }
}

void __75__MRQHONowPlayingController__notifyDelegateOfUpdatedPlayerLastPlayingDate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 controller:*(a1 + 32) playerLastPlayingDateDidChange:*(a1 + 40)];
}

void __75__MRQHONowPlayingController__notifyDelegateOfUpdatedPlayerLastPlayingDate___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 response];
  [v4 controller:v2 didUpdateResponse:v3];
}

- (void)_notifyDelegateOfError:(id)a3
{
  v4 = a3;
  v5 = [(MRQHONowPlayingController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MRQHONowPlayingController *)self delegateQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__MRQHONowPlayingController__notifyDelegateOfError___block_invoke;
    v8[3] = &unk_1E769A4A0;
    v8[4] = self;
    v9 = v4;
    dispatch_async(v7, v8);
  }
}

void __52__MRQHONowPlayingController__notifyDelegateOfError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 controller:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

- (void)_notifyDelegateOfInvalidation
{
  v3 = [(MRQHONowPlayingController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MRQHONowPlayingController *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__MRQHONowPlayingController__notifyDelegateOfInvalidation__block_invoke;
    block[3] = &unk_1E769A228;
    block[4] = self;
    dispatch_async(v5, block);
  }
}

void __58__MRQHONowPlayingController__notifyDelegateOfInvalidation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 controllerWillReloadForInvalidation:*(a1 + 32)];
}

- (void)_registerNotificationHandlersIfNeeded
{
  if (![(MRQHONowPlayingController *)self registeredForNotifications])
  {
    MRMediaRemoteSetWantsNowPlayingNotifications(1);
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:self selector:sel__handlePlaybackQueueChangedNotification_ name:@"kMRPlayerPlaybackQueueChangedNotification" object:0];

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:self selector:sel__handlePlaybackQueueContentItemsChangedNotification_ name:@"kMRPlayerPlaybackQueueContentItemsChangedNotification" object:0];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:self selector:sel__handlePlaybackQueueContentItemsArtworkChangedNotification_ name:@"kMRPlayerPlaybackQueueContentItemArtworkChangedNotification" object:0];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:self selector:sel__handlePlaybackStateChangedNotification_ name:@"_kMRMediaRemotePlayerPlaybackStateDidChangeNotification" object:0];

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:self selector:sel__handleSupportedCommandsChangedNotification_ name:@"kMRMediaRemotePlayerSupportedCommandsDidChangeNotification" object:0];

    [(MRQHONowPlayingController *)self setRegisteredForNotifications:1];
  }
}

- (void)_unregisterNotificationHandlers
{
  if ([(MRQHONowPlayingController *)self registeredForNotifications])
  {
    MRMediaRemoteSetWantsNowPlayingNotifications(0);
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self];

    [(MRQHONowPlayingController *)self setRegisteredForNotifications:0];
  }
}

- (void)_handlePlaybackQueueChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(MRQHONowPlayingController *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__MRQHONowPlayingController__handlePlaybackQueueChangedNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __69__MRQHONowPlayingController__handlePlaybackQueueChangedNotification___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v4 = [*(a1 + 40) resolvedPlayerPath];
  v5 = v4;
  if (v4 == v3)
  {
  }

  else
  {
    v6 = [v4 isEqual:v3];

    if (!v6)
    {
      goto LABEL_8;
    }
  }

  v7 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 40) uid];
    v9 = *(a1 + 40);
    *buf = 138543618;
    v17 = v8;
    v18 = 2048;
    v19 = v9;
    _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[MRQHONPC] <%{public}@ : %p> processing PlaybackQueueDidChangeNotification.", buf, 0x16u);
  }

  v10 = [*(a1 + 40) deferredContentItemsToMerge];
  [v10 removeAllObjects];

  v11 = *(a1 + 40);
  v12 = [v11 resolvedPlayerPath];
  v13 = [*(a1 + 40) queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__MRQHONowPlayingController__handlePlaybackQueueChangedNotification___block_invoke_96;
  v15[3] = &unk_1E769C3B0;
  v15[4] = *(a1 + 40);
  [v11 _onQueue_requestPlaybackQueueForPlayerPath:v12 includeArtwork:1 queue:v13 completion:v15];

LABEL_8:
  v14 = *MEMORY[0x1E69E9840];
}

void __69__MRQHONowPlayingController__handlePlaybackQueueChangedNotification___block_invoke_96(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v14 = v5;
  if (a3)
  {
    [v6 _notifyDelegateOfError:a3];
  }

  else
  {
    v7 = [v6[6] playbackQueue];
    v8 = v7;
    if (v7 != v14 && ([v7 isEqual:v14] & 1) == 0)
    {
      [*(a1 + 32) _onQueue_updateWithNewPlaybackQueue:v14];
      [*(a1 + 32) _notifyDelegateOfPlaybackQueueChangeFromOldQueue:v8 toNewQueue:v14];
    }
  }

  v9 = objc_alloc(MEMORY[0x1E695DEC8]);
  v10 = [v14 contentItems];
  v11 = [v9 initWithArray:v10 copyItems:1];

  v12 = *(a1 + 32);
  v13 = [v12 resolvedPlayerPath];
  [v12 _onQueue_requestAndUpdateArtworkForContentItems:v11 forPlayerPath:v13 withReason:@"PlaybackQueueDidChangeNotification"];
}

- (void)_handlePlaybackQueueContentItemsChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(MRQHONowPlayingController *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__MRQHONowPlayingController__handlePlaybackQueueContentItemsChangedNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __81__MRQHONowPlayingController__handlePlaybackQueueContentItemsChangedNotification___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v4 = [*(a1 + 40) resolvedPlayerPath];
  v5 = v4;
  if (v4 == v3)
  {
  }

  else
  {
    v6 = [v4 isEqual:v3];

    if (!v6)
    {
      goto LABEL_16;
    }
  }

  v7 = [*(a1 + 32) userInfo];
  v8 = [v7 objectForKeyedSubscript:@"kMRMediaRemoteUpdatedContentItemsUserInfoKey"];

  v9 = [v8 mr_compactMap:&__block_literal_global_21];
  v10 = [*(a1 + 40) requestingQueue];
  v11 = _MRLogForCategory(1uLL);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = [*(a1 + 40) uid];
      v19 = 138543618;
      v20 = v13;
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "[MRQHONPC] <%{public}@> deferring PlaybackQueueContentItemsChangedNotification for content items %{public}@ because we are requesting a new playback queue.", &v19, 0x16u);
    }

    v14 = [*(a1 + 40) deferredContentItemsToMerge];
    [v14 addObjectsFromArray:v8];
  }

  else
  {
    if (v12)
    {
      v15 = [*(a1 + 40) uid];
      v19 = 138543618;
      v20 = v15;
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "[MRQHONPC] <%{public}@> processing PlaybackQueueContentItemsChangedNotification for content items %{public}@.", &v19, 0x16u);
    }

    v14 = [*(a1 + 40) _onQueue_updateByMergingContentItemChanges:v8];
    if ([v14 count])
    {
      v16 = _MRLogForCategory(1uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [*(a1 + 40) uid];
        v19 = 138543618;
        v20 = v17;
        v21 = 2114;
        v22 = v14;
        _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "[MRQHONPC] <%{public}@> updated content items %{public}@.", &v19, 0x16u);
      }

      [*(a1 + 40) _notifyDelegateOfUpdatedContentItems:v14];
    }
  }

LABEL_16:
  v18 = *MEMORY[0x1E69E9840];
}

- (void)_handlePlaybackQueueContentItemsArtworkChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(MRQHONowPlayingController *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__MRQHONowPlayingController__handlePlaybackQueueContentItemsArtworkChangedNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __88__MRQHONowPlayingController__handlePlaybackQueueContentItemsArtworkChangedNotification___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v4 = [*(a1 + 40) resolvedPlayerPath];
  v5 = v4;
  if (v4 == v3)
  {
  }

  else
  {
    v6 = [v4 isEqual:v3];

    if (!v6)
    {
      goto LABEL_12;
    }
  }

  v7 = [*(a1 + 32) userInfo];
  v8 = [v7 objectForKeyedSubscript:@"kMRMediaRemoteUpdatedContentItemsUserInfoKey"];

  v9 = [v8 mr_compactMap:&__block_literal_global_102];
  v10 = [*(a1 + 40) requestingQueue];
  v11 = _MRLogForCategory(1uLL);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = [*(a1 + 40) uid];
      v17 = 138543618;
      v18 = v13;
      v19 = 2114;
      v20 = v9;
      _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "[MRQHONPC] <%{public}@> ignoring PlaybackQueueContentItemsArtworkChangedNotification for content items %{public}@ ", &v17, 0x16u);
    }
  }

  else
  {
    if (v12)
    {
      v14 = [*(a1 + 40) uid];
      v17 = 138543618;
      v18 = v14;
      v19 = 2114;
      v20 = v9;
      _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "[MRQHONPC] <%{public}@> processing PlaybackQueueContentItemsArtworkChangedNotification for content items %{public}@.", &v17, 0x16u);
    }

    v15 = *(a1 + 40);
    v11 = [v15 resolvedPlayerPath];
    [v15 _onQueue_requestAndUpdateArtworkForContentItems:v8 forPlayerPath:v11 withReason:@"PlaybackQueueContentItemsArtworkChangedNotification"];
  }

LABEL_12:
  v16 = *MEMORY[0x1E69E9840];
}

- (void)_handlePlaybackStateChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(MRQHONowPlayingController *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__MRQHONowPlayingController__handlePlaybackStateChangedNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __69__MRQHONowPlayingController__handlePlaybackStateChangedNotification___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v4 = [*(a1 + 40) resolvedPlayerPath];
  v5 = v4;
  if (v4 == v3)
  {
  }

  else
  {
    v6 = [v4 isEqual:v3];

    if (!v6)
    {
      goto LABEL_10;
    }
  }

  v7 = [*(a1 + 32) userInfo];
  v8 = [v7 objectForKeyedSubscript:@"kMRMediaRemotePlaybackStateUserInfoKey"];

  v9 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 40) uid];
    *buf = 138543618;
    v18 = v10;
    v19 = 2114;
    v20 = MRMediaRemoteCopyPlaybackStateDescription([v8 intValue]);
    _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[MRQHONPC] <%{public}@> processing PlaybackStateDidChangeNotification with new PlaybackState %{public}@.", buf, 0x16u);
  }

  v11 = [*(*(a1 + 40) + 48) playbackState];
  [*(a1 + 40) _onQueue_updateWithNewPlaybackState:{objc_msgSend(v8, "intValue")}];
  [*(a1 + 40) _notifyDelegateOfPlaybackStateChangeFromOldState:v11 toNewState:{objc_msgSend(v8, "intValue")}];
  LODWORD(v11) = MRMediaRemotePlaybackStateIsAdvancing(v11);
  if (v11 != MRMediaRemotePlaybackStateIsAdvancing([v8 intValue]))
  {
    v12 = *(a1 + 40);
    v13 = [v12 resolvedPlayerPath];
    v14 = [*(a1 + 40) queue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __69__MRQHONowPlayingController__handlePlaybackStateChangedNotification___block_invoke_106;
    v16[3] = &unk_1E769C3F8;
    v16[4] = *(a1 + 40);
    [v12 _requestPlayerLastPlayingDateForPlayerPath:v13 queue:v14 completion:v16];
  }

LABEL_10:
  v15 = *MEMORY[0x1E69E9840];
}

void __69__MRQHONowPlayingController__handlePlaybackStateChangedNotification___block_invoke_106(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _onQueue_updateWithNewPlayerLastPlayingDate:v4];
  [*(a1 + 32) _notifyDelegateOfUpdatedPlayerLastPlayingDate:v4];
}

- (void)_handleSupportedCommandsChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(MRQHONowPlayingController *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__MRQHONowPlayingController__handleSupportedCommandsChangedNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __73__MRQHONowPlayingController__handleSupportedCommandsChangedNotification___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v4 = [*(a1 + 40) resolvedPlayerPath];
  v5 = v4;
  if (v4 == v3)
  {
  }

  else
  {
    v6 = [v4 isEqual:v3];

    if (!v6)
    {
      goto LABEL_8;
    }
  }

  v7 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 40) uid];
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[MRQHONPC] <%{public}@> processing SupportedCommandsDidChangeNotification.", buf, 0xCu);
  }

  v9 = *(a1 + 40);
  v10 = [v9 resolvedPlayerPath];
  v11 = [*(a1 + 40) queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__MRQHONowPlayingController__handleSupportedCommandsChangedNotification___block_invoke_107;
  v13[3] = &unk_1E769C420;
  v13[4] = *(a1 + 40);
  [v9 _requestSupportedCommandsForPlayerPath:v10 queue:v11 completion:v13];

LABEL_8:
  v12 = *MEMORY[0x1E69E9840];
}

void __73__MRQHONowPlayingController__handleSupportedCommandsChangedNotification___block_invoke_107(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  if (a3)
  {
    [v5 _notifyDelegateOfError:a3];
  }

  else
  {
    v6 = [v5[6] supportedCommands];
    [*(a1 + 32) _onQueue_updateWithNewSupportedCommands:v7];
    [*(a1 + 32) _notifyDelegateOfSupportedCommandsChangeFromOldCommands:v6 toNewCommands:v7];
  }
}

- (void)_handleActiveSystemEndpointChangedNotification:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"kMRMediaRemoteActiveEndpointTypeUserInfoKey"];
  v6 = [v5 intValue];

  v7 = [(MRQHONowPlayingController *)self uid];
  LODWORD(v5) = [v7 isEqualToString:@"proactiveEndpoint"];

  if (v5 && v6 == 1)
  {
    v8 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(MRQHONowPlayingController *)self uid];
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRQHONPC] <%{public}@> reloading due to ASE change.", &v11, 0xCu);
    }

    [(MRQHONowPlayingController *)self _notifyDelegateOfInvalidation];
    [(MRQHONowPlayingController *)self _reloadForCompleteInvalidation];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __72__MRQHONowPlayingController__registerForPlayerPathInvalidationsIfNeeded__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [WeakRetained uid];
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRQHONPC] <%{public}@> reloading due to player path invalidation.", &v5, 0xCu);
    }

    [WeakRetained _notifyDelegateOfInvalidation];
    [WeakRetained _reloadForPlayerPathInvalidation];
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __81__MRQHONowPlayingController__loadNowPlayingStateForUID_client_player_completion___block_invoke_17_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "[MRQHONPC] %{public}@ Unable to discover endpoint.", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __86__MRQHONowPlayingController__loadNowPlayingStateForEndpoint_client_player_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_2();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*(v0 + 32) uid];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __86__MRQHONowPlayingController__loadNowPlayingStateForEndpoint_client_player_completion___block_invoke_19_cold_1()
{
  OUTLINED_FUNCTION_2_2();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*(v0 + 32) uid];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __86__MRQHONowPlayingController__loadNowPlayingStateForEndpoint_client_player_completion___block_invoke_19_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [*(a1 + 32) uid];
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

void __86__MRQHONowPlayingController__loadNowPlayingStateForEndpoint_client_player_completion___block_invoke_19_cold_3()
{
  OUTLINED_FUNCTION_2_2();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*v0 uid];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __102__MRQHONowPlayingController__onQueue_requestAndUpdateArtworkForContentItems_forPlayerPath_withReason___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_2();
  v1 = v0;
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(v0 + 32) uid];
  v9 = [*(v1 + 40) identifier];
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

void __89__MRQHONowPlayingController__requestPlayerLastPlayingDateForPlayerPath_queue_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "[MRQHONPC] Failed to retrieve player last playing date with error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end