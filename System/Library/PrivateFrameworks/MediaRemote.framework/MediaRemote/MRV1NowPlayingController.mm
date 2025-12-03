@interface MRV1NowPlayingController
- (BOOL)updateLoadingEnabled;
- (MRNowPlayingPlayerResponse)response;
- (MRV1NowPlayingController)initWithConfiguration:(id)configuration;
- (NSString)debugDescription;
- (NSString)description;
- (id)_loadNowPlayingStateForPlayerPath:(id)path error:(id *)error;
- (void)_createPlayerPathForEndpoint:(id)endpoint client:(id)client player:(id)player completion:(id)completion;
- (void)_handleActiveSystemEndpointChangedNotification:(id)notification;
- (void)_handlePlaybackQueueChangedNotification:(id)notification;
- (void)_handlePlaybackQueueContentItemsArtworkChangedNotification:(id)notification;
- (void)_handlePlaybackQueueContentItemsChangedNotification:(id)notification;
- (void)_handlePlaybackStateChangedNotification:(id)notification;
- (void)_handleSupportedCommandsChangedNotification:(id)notification;
- (void)_loadNowPlayingStateForEndpoint:(id)endpoint client:(id)client player:(id)player completion:(id)completion;
- (void)_loadNowPlayingStateForUID:(id)d client:(id)client player:(id)player completion:(id)completion;
- (void)_notifyDelegateOfError:(id)error;
- (void)_notifyDelegateOfInvalidation;
- (void)_notifyDelegateOfNewResponse:(id)response;
- (void)_notifyDelegateOfPlaybackQueueChange:(id)change;
- (void)_notifyDelegateOfPlayerPathChange:(id)change;
- (void)_notifyDelegateOfSupportedCommandsChange:(id)change;
- (void)_notifyDelegateOfUpdatedArtwork:(id)artwork;
- (void)_notifyDelegateOfUpdatedClientProperties:(id)properties;
- (void)_notifyDelegateOfUpdatedContentItemsWithContentItems:(id)items;
- (void)_notifyDelegateOfUpdatedPlayerLastPlayingDate:(id)date;
- (void)_onQueue_clearState;
- (void)_onQueue_retrieveEndpointForUID:(id)d completion:(id)completion;
- (void)_registerForEndpointChangesIfNeeded;
- (void)_registerForPlayerPathInvalidationsIfNeeded;
- (void)_registerNotificationHandlersIfNeeded;
- (void)_reloadForCompleteInvalidation;
- (void)_reloadForPlayerPathInvalidation;
- (void)_requestContentItemArtwork:(id)artwork forPlayerPath:(id)path queue:(id)queue completion:(id)completion;
- (void)_requestPlaybackQueueForPlayerPath:(id)path includeArtwork:(BOOL)artwork queue:(id)queue completion:(id)completion;
- (void)_requestPlayerLastPlayingDateForPlayerPath:(id)path queue:(id)queue completion:(id)completion;
- (void)_requestSupportedCommandsForPlayerPath:(id)path queue:(id)queue completion:(id)completion;
- (void)_resolvePlayerPath:(id)path completion:(id)completion;
- (void)_unregisterForEndpointChanges;
- (void)_unregisterForPlayerPathInvalidations;
- (void)_unregisterNotificationHandlers;
- (void)beginLoadingUpdates;
- (void)dealloc;
- (void)endLoadingUpdates;
@end

@implementation MRV1NowPlayingController

- (MRV1NowPlayingController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = MRV1NowPlayingController;
  v5 = [(MRV1NowPlayingController *)&v14 init];
  if (v5)
  {
    v6 = [configurationCopy copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deferredContentItemsToMerge = v5->_deferredContentItemsToMerge;
    v5->_deferredContentItemsToMerge = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.MediaRemote.MRV2NowPlayingController.queue", v10);
    queue = v5->_queue;
    v5->_queue = v11;
  }

  return v5;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRV1NowPlayingController] <%@> Deallocating.", buf, 0xCu);
  }

  [(MRV1NowPlayingController *)self _unregisterForPlayerPathInvalidations];
  v5.receiver = self;
  v5.super_class = MRV1NowPlayingController;
  [(MRV1NowPlayingController *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  configuration = [(MRV1NowPlayingController *)self configuration];
  destination = [configuration destination];
  outputDeviceUID = [destination outputDeviceUID];
  v8 = [v3 initWithFormat:@"<%@ %p : %@>", v4, self, outputDeviceUID];

  return v8;
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  endpointObserver = [(MRV1NowPlayingController *)self endpointObserver];
  endpointObserverGroupUID = [(MRV1NowPlayingController *)self endpointObserverGroupUID];
  v7 = [v3 initWithFormat:@"<%@ %p {   endpointObserver=%@\n   endpointObserverGroupID=%@\n}>\n", v4, self, endpointObserver, endpointObserverGroupUID];

  return v7;
}

- (void)beginLoadingUpdates
{
  queue = [(MRV1NowPlayingController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__MRV1NowPlayingController_beginLoadingUpdates__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_async(queue, block);
}

void __47__MRV1NowPlayingController_beginLoadingUpdates__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 11) & 1) == 0)
  {
    v2 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v19 = v3;
      _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRV1NowPlayingController] <%@> Begin loading updates.", buf, 0xCu);
    }

    v4 = *(a1 + 32);
    v16 = [v4 configuration];
    v15 = [v16 destination];
    v14 = [v15 outputDeviceUID];
    v5 = [*(a1 + 32) configuration];
    v6 = [v5 destination];
    v7 = [v6 playerPath];
    v8 = [v7 client];
    v9 = [*(a1 + 32) configuration];
    v10 = [v9 destination];
    v11 = [v10 playerPath];
    v12 = [v11 player];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __47__MRV1NowPlayingController_beginLoadingUpdates__block_invoke_14;
    v17[3] = &unk_1E769C090;
    v17[4] = *(a1 + 32);
    [v4 _loadNowPlayingStateForUID:v14 client:v8 player:v12 completion:v17];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __47__MRV1NowPlayingController_beginLoadingUpdates__block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [*(a1 + 32) setUpdateLoadingEnabled:1];
  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 _notifyDelegateOfError:v5];
  }

  else
  {
    [v6 _notifyDelegateOfNewResponse:v7];
  }
}

- (void)endLoadingUpdates
{
  queue = [(MRV1NowPlayingController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__MRV1NowPlayingController_endLoadingUpdates__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __45__MRV1NowPlayingController_endLoadingUpdates__block_invoke(uint64_t result)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 11) == 1)
  {
    v1 = result;
    v2 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v1 + 32);
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRV1NowPlayingController] <%@> End loading updates.", &v5, 0xCu);
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
  configuration = [(MRV1NowPlayingController *)self configuration];
  destination = [configuration destination];
  outputDeviceUID = [destination outputDeviceUID];
  configuration2 = [(MRV1NowPlayingController *)self configuration];
  destination2 = [configuration2 destination];
  client = [destination2 client];
  configuration3 = [(MRV1NowPlayingController *)self configuration];
  destination3 = [configuration3 destination];
  player = [destination3 player];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__MRV1NowPlayingController__reloadForCompleteInvalidation__block_invoke;
  v12[3] = &unk_1E769C090;
  v12[4] = self;
  [(MRV1NowPlayingController *)self _loadNowPlayingStateForUID:outputDeviceUID client:client player:player completion:v12];
}

uint64_t __58__MRV1NowPlayingController__reloadForCompleteInvalidation__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 _notifyDelegateOfError:?];
  }

  else
  {
    return [v3 _notifyDelegateOfNewResponse:a2];
  }
}

- (void)_reloadForPlayerPathInvalidation
{
  [(MRV1NowPlayingController *)self _unregisterForPlayerPathInvalidations];
  destination = [(MRV1NowPlayingController *)self destination];
  endpoint = [destination endpoint];
  configuration = [(MRV1NowPlayingController *)self configuration];
  destination2 = [configuration destination];
  client = [destination2 client];
  configuration2 = [(MRV1NowPlayingController *)self configuration];
  destination3 = [configuration2 destination];
  player = [destination3 player];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__MRV1NowPlayingController__reloadForPlayerPathInvalidation__block_invoke;
  v11[3] = &unk_1E769C090;
  v11[4] = self;
  [(MRV1NowPlayingController *)self _loadNowPlayingStateForEndpoint:endpoint client:client player:player completion:v11];
}

uint64_t __60__MRV1NowPlayingController__reloadForPlayerPathInvalidation__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 _notifyDelegateOfError:?];
  }

  else
  {
    return [v3 _notifyDelegateOfNewResponse:a2];
  }
}

- (void)_loadNowPlayingStateForUID:(id)d client:(id)client player:(id)player completion:(id)completion
{
  dCopy = d;
  clientCopy = client;
  playerCopy = player;
  completionCopy = completion;
  queue = [(MRV1NowPlayingController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__MRV1NowPlayingController__loadNowPlayingStateForUID_client_player_completion___block_invoke;
  block[3] = &unk_1E769C0E0;
  block[4] = self;
  v20 = dCopy;
  v22 = playerCopy;
  v23 = completionCopy;
  v21 = clientCopy;
  v15 = playerCopy;
  v16 = clientCopy;
  v17 = completionCopy;
  v18 = dCopy;
  dispatch_async(queue, block);
}

void __80__MRV1NowPlayingController__loadNowPlayingStateForUID_client_player_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _onQueue_clearState];
  v2 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRV1NowPlayingController] <%@> Begin resolving endpoint.", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__MRV1NowPlayingController__loadNowPlayingStateForUID_client_player_completion___block_invoke_17;
  v7[3] = &unk_1E76A19C0;
  v7[4] = v4;
  v10 = *(a1 + 64);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  [v4 _onQueue_retrieveEndpointForUID:v5 completion:v7];

  v6 = *MEMORY[0x1E69E9840];
}

void __80__MRV1NowPlayingController__loadNowPlayingStateForUID_client_player_completion___block_invoke_17(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) _registerForEndpointChangesIfNeeded];
  v7 = _MRLogForCategory(1uLL);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __80__MRV1NowPlayingController__loadNowPlayingStateForUID_client_player_completion___block_invoke_17_cold_1((a1 + 32));
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRV1NowPlayingController] <%@> Resolved to Endpoint: %@.", &v11, 0x16u);
    }

    [*(a1 + 32) _loadNowPlayingStateForEndpoint:v5 client:*(a1 + 40) player:*(a1 + 48) completion:*(a1 + 56)];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_loadNowPlayingStateForEndpoint:(id)endpoint client:(id)client player:(id)player completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  completionCopy = completion;
  playerCopy = player;
  clientCopy = client;
  v14 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    debugName = [endpointCopy debugName];
    *buf = 138412546;
    selfCopy = self;
    v24 = 2112;
    v25 = debugName;
    _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "[MRV1NowPlayingController] <%@> Begin resolving player path for endpoint %@.", buf, 0x16u);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __85__MRV1NowPlayingController__loadNowPlayingStateForEndpoint_client_player_completion___block_invoke;
  v19[3] = &unk_1E769C108;
  v20 = endpointCopy;
  v21 = completionCopy;
  v19[4] = self;
  v16 = endpointCopy;
  v17 = completionCopy;
  [(MRV1NowPlayingController *)self _createPlayerPathForEndpoint:v16 client:clientCopy player:playerCopy completion:v19];

  v18 = *MEMORY[0x1E69E9840];
}

void __85__MRV1NowPlayingController__loadNowPlayingStateForEndpoint_client_player_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v8 = a1 + 4;
  v7 = a1[4];
  v9 = v7[11];
  if (v6)
  {
    if (v9)
    {
      if ([v9 isValid])
      {
        v10 = objc_alloc(MEMORY[0x1E696AEC0]);
        [*(*v8 + 11) timeUntilNextInterval];
        v12 = [v10 initWithFormat:@"Already attempting retry in %lf more seconds", v11];
      }

      else
      {
        v23 = _MRLogForCategory(1uLL);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          __85__MRV1NowPlayingController__loadNowPlayingStateForEndpoint_client_player_completion___block_invoke_cold_1(a1 + 4);
        }

        v12 = @"Exhausted all retry attempts. Controller likely will not function properly until the destination device makes a signficant change";
      }
    }

    else
    {
      v14 = objc_alloc(MEMORY[0x1E696AEC0]);
      v15 = [&unk_1F15775F0 firstObject];
      [v15 doubleValue];
      v12 = [v14 initWithFormat:@"Will attempt retry in %lf seconds", v16];

      v17 = MEMORY[0x1E69B14E0];
      v18 = *v8;
      v19 = [v17 alloc];
      v20 = [*v8 queue];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __85__MRV1NowPlayingController__loadNowPlayingStateForEndpoint_client_player_completion___block_invoke_37;
      v31[3] = &unk_1E769A228;
      v31[4] = v18;
      v21 = [v19 initWithIntervals:&unk_1F15775F0 name:@"NowPlayingController.retryTimer" queue:v20 block:v31];
      v22 = *(*v8 + 11);
      *(*v8 + 11) = v21;
    }

    v24 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v26 = *v8;
      *buf = 138412802;
      v33 = v26;
      v34 = 2112;
      v35 = v6;
      v36 = 2112;
      v37 = v12;
      _os_log_error_impl(&dword_1A2860000, v24, OS_LOG_TYPE_ERROR, "[MRV1NowPlayingController] <%@> Error creating player path %@. %@", buf, 0x20u);
    }

    (*(a1[6] + 2))();
  }

  else
  {
    v7[11] = 0;

    v13 = a1[4];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __85__MRV1NowPlayingController__loadNowPlayingStateForEndpoint_client_player_completion___block_invoke_44;
    v27[3] = &unk_1E769AD08;
    v27[4] = v13;
    v28 = a1[5];
    v29 = v5;
    v30 = a1[6];
    [v13 _resolvePlayerPath:v29 completion:v27];
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __85__MRV1NowPlayingController__loadNowPlayingStateForEndpoint_client_player_completion___block_invoke_37(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      [v1[11] currentInterval];
      v5 = 138412546;
      v6 = v1;
      v7 = 2048;
      v8 = v3;
      _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRV1NowPlayingController] <%@> Attempting retry after already waiting %lf seconds", &v5, 0x16u);
    }

    [v1 _reloadForCompleteInvalidation];
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __85__MRV1NowPlayingController__loadNowPlayingStateForEndpoint_client_player_completion___block_invoke_44(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 isResolved])
  {
    v8 = *(a1 + 40);
    v7 = (a1 + 32);
    v9 = [*(a1 + 32) destination];
    [v9 setEndpoint:v8];

    v10 = *(a1 + 48);
    v11 = [*(a1 + 32) destination];
    [v11 setUnresolvedPlayerPath:v10];

    v12 = [*(a1 + 32) destination];
    [v12 setResolvedPlayerPath:v5];

    v13 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *v7;
      *buf = 138412546;
      v33 = v14;
      v34 = 2112;
      v35 = v5;
      _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "[MRV1NowPlayingController] <%@> Resolved to player path: %@.", buf, 0x16u);
    }

    [*v7 _registerNotificationHandlersIfNeeded];
    [*v7 _registerForPlayerPathInvalidationsIfNeeded];
    v15 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *v7;
      *buf = 138412290;
      v33 = v16;
      _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, "[MRV1NowPlayingController] <%@> Begin loading data.", buf, 0xCu);
    }

    v17 = *v7;
    v31 = 0;
    v18 = [v17 _loadNowPlayingStateForPlayerPath:v5 error:&v31];
    v19 = v31;
    v20 = _MRLogForCategory(1uLL);
    v21 = v20;
    if (v19)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __85__MRV1NowPlayingController__loadNowPlayingStateForEndpoint_client_player_completion___block_invoke_44_cold_2((a1 + 32));
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *v7;
      *buf = 138412546;
      v33 = v28;
      v34 = 2112;
      v35 = v18;
      _os_log_impl(&dword_1A2860000, v21, OS_LOG_TYPE_DEFAULT, "[MRV1NowPlayingController] <%@> End loading data. Response: %@.", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v22 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __85__MRV1NowPlayingController__loadNowPlayingStateForEndpoint_client_player_completion___block_invoke_44_cold_1(a1);
    }

    [*(a1 + 32) setResponse:0];
    v23 = *(a1 + 40);
    v24 = [*(a1 + 32) destination];
    [v24 setEndpoint:v23];

    v25 = *(a1 + 48);
    v26 = [*(a1 + 32) destination];
    [v26 setUnresolvedPlayerPath:v25];

    [*(a1 + 32) _registerForPlayerPathInvalidationsIfNeeded];
    v27 = *(a1 + 56);
    if (v6)
    {
      (*(v27 + 16))(v27, 0, v6);
    }

    else
    {
      v29 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:42];
      (*(v27 + 16))(v27, 0, v29);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (id)_loadNowPlayingStateForPlayerPath:(id)path error:(id *)error
{
  pathCopy = path;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__33;
  v65 = __Block_byref_object_dispose__33;
  v66 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__33;
  v59 = __Block_byref_object_dispose__33;
  v60 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__33;
  v53 = __Block_byref_object_dispose__33;
  v54 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__33;
  v47 = __Block_byref_object_dispose__33;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__33;
  v41 = __Block_byref_object_dispose__33;
  v42 = 0;
  v7 = dispatch_group_create();
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.MediaRemote.MRNowPlayingController.callbackQueue", v8);

  dispatch_group_enter(v7);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __68__MRV1NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke;
  v33[3] = &unk_1E769C158;
  v35 = &v49;
  v36 = &v43;
  v10 = v7;
  v34 = v10;
  [(MRV1NowPlayingController *)self _requestSupportedCommandsForPlayerPath:pathCopy queue:v9 completion:v33];
  dispatch_group_enter(v10);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __68__MRV1NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_2;
  v30[3] = &unk_1E769C180;
  v32 = &v67;
  v11 = v10;
  v31 = v11;
  MRMediaRemoteGetPlaybackStateForPlayer(pathCopy, v9, v30);
  dispatch_group_enter(v11);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __68__MRV1NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_3;
  v26[3] = &unk_1E769D4F8;
  v28 = &v61;
  v29 = &v55;
  v12 = v11;
  v27 = v12;
  [(MRV1NowPlayingController *)self _requestPlaybackQueueForPlayerPath:pathCopy includeArtwork:1 queue:v9 completion:v26];
  dispatch_group_enter(v12);
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __68__MRV1NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_4;
  v23 = &unk_1E769C1D0;
  v25 = &v37;
  v13 = v12;
  v24 = v13;
  [(MRV1NowPlayingController *)self _requestPlayerLastPlayingDateForPlayerPath:pathCopy queue:v9 completion:&v20];
  v14 = dispatch_time(0, 5000000000);
  if (dispatch_group_wait(v13, v14))
  {
    if (error)
    {
      v15 = objc_alloc(MEMORY[0x1E696ABC0]);
      v16 = [v15 initWithMRError:{26, v20, v21, v22, v23}];
LABEL_8:
      v18 = 0;
      *error = v16;
      goto LABEL_10;
    }

LABEL_9:
    v18 = 0;
    goto LABEL_10;
  }

  v17 = v56[5];
  if (v17 || (v17 = v44[5]) != 0)
  {
    if (error)
    {
      v16 = v17;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v18 = objc_alloc_init(MRNowPlayingPlayerResponse);
  [(MRNowPlayingPlayerResponse *)v18 setPlaybackQueue:v62[5], v20, v21, v22, v23];
  [(MRNowPlayingPlayerResponse *)v18 setPlaybackState:*(v68 + 6)];
  [(MRNowPlayingPlayerResponse *)v18 setSupportedCommands:v50[5]];
  [(MRNowPlayingPlayerResponse *)v18 setDeviceLastPlayingDate:0];
  [(MRNowPlayingPlayerResponse *)v18 setPlayerLastPlayingDate:v38[5]];
LABEL_10:

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v55, 8);

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v67, 8);

  return v18;
}

void __68__MRV1NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __68__MRV1NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
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

void __68__MRV1NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)_requestPlaybackQueueForPlayerPath:(id)path includeArtwork:(BOOL)artwork queue:(id)queue completion:(id)completion
{
  artworkCopy = artwork;
  pathCopy = path;
  queueCopy = queue;
  completionCopy = completion;
  [(MRV1NowPlayingController *)self setRequestingQueue:1];
  v13 = +[MRPlaybackQueueRequest defaultPlaybackQueueRequest];
  [v13 setCachingPolicy:2];
  if (artworkCopy)
  {
    [v13 setArtworkHeight:600.0];
    [v13 setArtworkWidth:600.0];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__MRV1NowPlayingController__requestPlaybackQueueForPlayerPath_includeArtwork_queue_completion___block_invoke;
  v15[3] = &unk_1E769C1F8;
  v15[4] = self;
  v16 = completionCopy;
  v14 = completionCopy;
  MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync(v13, pathCopy, queueCopy, v15);
}

void __95__MRV1NowPlayingController__requestPlaybackQueueForPlayerPath_includeArtwork_queue_completion___block_invoke(uint64_t a1, void *a2)
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

- (void)_requestContentItemArtwork:(id)artwork forPlayerPath:(id)path queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  pathCopy = path;
  artworkCopy = artwork;
  v13 = [[MRPlaybackQueueRequest alloc] initWithIdentifiers:artworkCopy];

  [(MRPlaybackQueueRequest *)v13 setArtworkHeight:600.0];
  [(MRPlaybackQueueRequest *)v13 setArtworkWidth:600.0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__MRV1NowPlayingController__requestContentItemArtwork_forPlayerPath_queue_completion___block_invoke;
  v15[3] = &unk_1E769C298;
  v16 = completionCopy;
  v14 = completionCopy;
  MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync(v13, pathCopy, queueCopy, v15);
}

- (void)_requestSupportedCommandsForPlayerPath:(id)path queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__MRV1NowPlayingController__requestSupportedCommandsForPlayerPath_queue_completion___block_invoke;
  v9[3] = &unk_1E769B228;
  v10 = completionCopy;
  v8 = completionCopy;
  MRMediaRemoteGetSupportedCommandsForPlayer(path, queue, v9);
}

- (void)_requestPlayerLastPlayingDateForPlayerPath:(id)path queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  pathCopy = path;
  v10 = [[MRNowPlayingRequest alloc] initWithPlayerPath:pathCopy];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__MRV1NowPlayingController__requestPlayerLastPlayingDateForPlayerPath_queue_completion___block_invoke;
  v12[3] = &unk_1E769C310;
  v13 = completionCopy;
  v11 = completionCopy;
  [(MRNowPlayingRequest *)v10 requestLastPlayingDateOnQueue:queueCopy completion:v12];
}

void __88__MRV1NowPlayingController__requestPlayerLastPlayingDateForPlayerPath_queue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __88__MRV1NowPlayingController__requestPlayerLastPlayingDateForPlayerPath_queue_completion___block_invoke_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    v12 = *(a1 + 32);
    v13 = [MEMORY[0x1E695DF00] distantPast];
    (*(v12 + 16))(v12, v13);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_onQueue_retrieveEndpointForUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = [(MRV1NowPlayingController *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([dCopy isEqualToString:@"proactiveEndpoint"])
  {
    queue2 = [(MRV1NowPlayingController *)self queue];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __71__MRV1NowPlayingController__onQueue_retrieveEndpointForUID_completion___block_invoke;
    v23[3] = &unk_1E769C338;
    v24 = completionCopy;
    MRAVEndpointResolveActiveSystemEndpointWithType(1, queue2, v23, 7.0);

    v10 = v24;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@ %p>", objc_opt_class(), self];
    v11 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
    endpointObserverGroupUID = [(MRV1NowPlayingController *)self endpointObserverGroupUID];

    if (endpointObserverGroupUID)
    {
      endpointObserverGroupUID2 = [(MRV1NowPlayingController *)self endpointObserverGroupUID];
      queue3 = [(MRV1NowPlayingController *)self queue];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __71__MRV1NowPlayingController__onQueue_retrieveEndpointForUID_completion___block_invoke_2;
      v20[3] = &unk_1E769C360;
      v15 = &v21;
      v21 = v11;
      v16 = &v22;
      v22 = completionCopy;
      [(MRAVLightweightReconnaissanceSession *)v11 searchEndpointsForGroupUID:endpointObserverGroupUID2 timeout:v10 reason:queue3 queue:v20 completion:7.0];
    }

    else
    {
      endpointObserverGroupUID2 = [(MRV1NowPlayingController *)self queue];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __71__MRV1NowPlayingController__onQueue_retrieveEndpointForUID_completion___block_invoke_3;
      v17[3] = &unk_1E769C360;
      v15 = &v18;
      v18 = v11;
      v16 = &v19;
      v19 = completionCopy;
      [(MRAVLightweightReconnaissanceSession *)v11 searchEndpointsForOutputDeviceUID:dCopy timeout:v10 reason:endpointObserverGroupUID2 queue:v17 completion:7.0];
    }
  }
}

void __71__MRV1NowPlayingController__onQueue_retrieveEndpointForUID_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = *(a1 + 32);
  v6(v5, a2, a3);
}

void __71__MRV1NowPlayingController__onQueue_retrieveEndpointForUID_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = *(a1 + 32);
  v6(v5, a2, a3);
}

- (void)_createPlayerPathForEndpoint:(id)endpoint client:(id)client player:(id)player completion:(id)completion
{
  v26[1] = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  clientCopy = client;
  playerCopy = player;
  completionCopy = completion;
  v25 = @"MREndpointConnectionReasonUserInfoKey";
  v26[0] = @"MRNowPlayingController";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __82__MRV1NowPlayingController__createPlayerPathForEndpoint_client_player_completion___block_invoke;
  v20[3] = &unk_1E769AF98;
  v23 = playerCopy;
  v24 = completionCopy;
  v20[4] = self;
  v21 = endpointCopy;
  v22 = clientCopy;
  v15 = playerCopy;
  v16 = clientCopy;
  v17 = endpointCopy;
  v18 = completionCopy;
  [v17 connectToExternalDeviceWithUserInfo:v14 completion:v20];

  v19 = *MEMORY[0x1E69E9840];
}

void __82__MRV1NowPlayingController__createPlayerPathForEndpoint_client_player_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__MRV1NowPlayingController__createPlayerPathForEndpoint_client_player_completion___block_invoke_2;
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

void __82__MRV1NowPlayingController__createPlayerPathForEndpoint_client_player_completion___block_invoke_2(uint64_t a1)
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

- (void)_resolvePlayerPath:(id)path completion:(id)completion
{
  completionCopy = completion;
  pathCopy = path;
  queue = [(MRV1NowPlayingController *)self queue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__MRV1NowPlayingController__resolvePlayerPath_completion___block_invoke;
  v10[3] = &unk_1E769C298;
  v11 = completionCopy;
  v9 = completionCopy;
  MRMediaRemoteNowPlayingResolvePlayerPath(pathCopy, queue, v10);
}

- (void)_onQueue_clearState
{
  queue = [(MRV1NowPlayingController *)self queue];
  dispatch_assert_queue_V2(queue);

  [(MRV1NowPlayingController *)self _unregisterForPlayerPathInvalidations];
  [(MRV1NowPlayingController *)self _unregisterForEndpointChanges];
  destination = [(MRV1NowPlayingController *)self destination];
  [destination setEndpoint:0];

  destination2 = [(MRV1NowPlayingController *)self destination];
  [destination2 setUnresolvedPlayerPath:0];

  destination3 = [(MRV1NowPlayingController *)self destination];
  [destination3 setResolvedPlayerPath:0];

  deferredContentItemsToMerge = [(MRV1NowPlayingController *)self deferredContentItemsToMerge];
  [deferredContentItemsToMerge removeAllObjects];
}

- (void)_notifyDelegateOfNewResponse:(id)response
{
  responseCopy = response;
  helper = [(MRV1NowPlayingController *)self helper];

  if (helper)
  {
    helper2 = [(MRV1NowPlayingController *)self helper];
    didLoadResponse = [helper2 didLoadResponse];
    (didLoadResponse)[2](didLoadResponse, responseCopy);
  }
}

- (void)_notifyDelegateOfPlaybackQueueChange:(id)change
{
  changeCopy = change;
  helper = [(MRV1NowPlayingController *)self helper];

  if (helper)
  {
    helper2 = [(MRV1NowPlayingController *)self helper];
    playbackQueueDidChange = [helper2 playbackQueueDidChange];
    (playbackQueueDidChange)[2](playbackQueueDidChange, changeCopy);
  }
}

- (void)_notifyDelegateOfUpdatedContentItemsWithContentItems:(id)items
{
  itemsCopy = items;
  helper = [(MRV1NowPlayingController *)self helper];

  if (helper)
  {
    helper2 = [(MRV1NowPlayingController *)self helper];
    contentItemsDidUpdate = [helper2 contentItemsDidUpdate];
    (contentItemsDidUpdate)[2](contentItemsDidUpdate, itemsCopy);
  }
}

- (void)_notifyDelegateOfUpdatedArtwork:(id)artwork
{
  artworkCopy = artwork;
  helper = [(MRV1NowPlayingController *)self helper];

  if (helper)
  {
    helper2 = [(MRV1NowPlayingController *)self helper];
    contentItemsDidLoadArtwork = [helper2 contentItemsDidLoadArtwork];
    (contentItemsDidLoadArtwork)[2](contentItemsDidLoadArtwork, artworkCopy);
  }
}

- (void)_notifyDelegateOfSupportedCommandsChange:(id)change
{
  changeCopy = change;
  helper = [(MRV1NowPlayingController *)self helper];

  if (helper)
  {
    helper2 = [(MRV1NowPlayingController *)self helper];
    supportedCommandsDidChange = [helper2 supportedCommandsDidChange];
    (supportedCommandsDidChange)[2](supportedCommandsDidChange, changeCopy);
  }
}

- (void)_notifyDelegateOfUpdatedPlayerLastPlayingDate:(id)date
{
  dateCopy = date;
  helper = [(MRV1NowPlayingController *)self helper];

  if (helper)
  {
    helper2 = [(MRV1NowPlayingController *)self helper];
    playerLastPlayingDateDidChange = [helper2 playerLastPlayingDateDidChange];
    (playerLastPlayingDateDidChange)[2](playerLastPlayingDateDidChange, dateCopy);
  }
}

- (void)_notifyDelegateOfUpdatedClientProperties:(id)properties
{
  propertiesCopy = properties;
  helper = [(MRV1NowPlayingController *)self helper];

  if (helper)
  {
    helper2 = [(MRV1NowPlayingController *)self helper];
    clientPropertiesDidChange = [helper2 clientPropertiesDidChange];
    (clientPropertiesDidChange)[2](clientPropertiesDidChange, propertiesCopy);
  }
}

- (void)_notifyDelegateOfPlayerPathChange:(id)change
{
  changeCopy = change;
  helper = [(MRV1NowPlayingController *)self helper];

  if (helper)
  {
    helper2 = [(MRV1NowPlayingController *)self helper];
    playerPathDidChange = [helper2 playerPathDidChange];
    (playerPathDidChange)[2](playerPathDidChange, changeCopy);
  }
}

- (void)_notifyDelegateOfInvalidation
{
  helper = [(MRV1NowPlayingController *)self helper];

  if (helper)
  {
    helper2 = [(MRV1NowPlayingController *)self helper];
    didInvalidate = [helper2 didInvalidate];
    didInvalidate[2]();
  }
}

- (void)_notifyDelegateOfError:(id)error
{
  errorCopy = error;
  helper = [(MRV1NowPlayingController *)self helper];

  if (helper)
  {
    helper2 = [(MRV1NowPlayingController *)self helper];
    didFailWithError = [helper2 didFailWithError];
    (didFailWithError)[2](didFailWithError, errorCopy);
  }
}

- (void)_registerNotificationHandlersIfNeeded
{
  if (![(MRV1NowPlayingController *)self registeredForNotifications])
  {
    MRMediaRemoteSetWantsNowPlayingNotifications(1);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__handlePlaybackQueueChangedNotification_ name:@"kMRPlayerPlaybackQueueChangedNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__handlePlaybackQueueContentItemsChangedNotification_ name:@"kMRPlayerPlaybackQueueContentItemsChangedNotification" object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel__handlePlaybackQueueContentItemsArtworkChangedNotification_ name:@"kMRPlayerPlaybackQueueContentItemArtworkChangedNotification" object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:self selector:sel__handlePlaybackStateChangedNotification_ name:@"_kMRMediaRemotePlayerPlaybackStateDidChangeNotification" object:0];

    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter5 addObserver:self selector:sel__handleSupportedCommandsChangedNotification_ name:@"kMRMediaRemotePlayerSupportedCommandsDidChangeNotification" object:0];

    [(MRV1NowPlayingController *)self setRegisteredForNotifications:1];
  }
}

- (void)_unregisterNotificationHandlers
{
  if ([(MRV1NowPlayingController *)self registeredForNotifications])
  {
    MRMediaRemoteSetWantsNowPlayingNotifications(0);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self];

    [(MRV1NowPlayingController *)self setRegisteredForNotifications:0];
  }
}

- (void)_handlePlaybackQueueChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(MRV1NowPlayingController *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__MRV1NowPlayingController__handlePlaybackQueueChangedNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __68__MRV1NowPlayingController__handlePlaybackQueueChangedNotification___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v4 = [*(a1 + 40) destination];
  v5 = [v4 resolvedPlayerPath];
  v6 = v5;
  if (v5 == v3)
  {
  }

  else
  {
    v7 = [v5 isEqual:v3];

    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v8 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    *buf = 138412290;
    v18 = v9;
    _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRV1NowPlayingController] <%@> processing PlaybackQueueDidChangeNotification.", buf, 0xCu);
  }

  v10 = [*(a1 + 40) deferredContentItemsToMerge];
  [v10 removeAllObjects];

  v11 = *(a1 + 40);
  v12 = [v11 destination];
  v13 = [v12 resolvedPlayerPath];
  v14 = [*(a1 + 40) queue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68__MRV1NowPlayingController__handlePlaybackQueueChangedNotification___block_invoke_81;
  v16[3] = &unk_1E769C3B0;
  v16[4] = *(a1 + 40);
  [v11 _requestPlaybackQueueForPlayerPath:v13 includeArtwork:1 queue:v14 completion:v16];

LABEL_8:
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __68__MRV1NowPlayingController__handlePlaybackQueueChangedNotification___block_invoke_81(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 _notifyDelegateOfError:?];
  }

  else
  {
    return [v3 _notifyDelegateOfPlaybackQueueChange:a2];
  }
}

- (void)_handlePlaybackQueueContentItemsChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(MRV1NowPlayingController *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__MRV1NowPlayingController__handlePlaybackQueueContentItemsChangedNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __80__MRV1NowPlayingController__handlePlaybackQueueContentItemsChangedNotification___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v4 = [*(a1 + 40) destination];
  v5 = [v4 resolvedPlayerPath];
  v6 = v5;
  if (v5 == v3)
  {
  }

  else
  {
    v7 = [v5 isEqual:v3];

    if ((v7 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v8 = [*(a1 + 32) userInfo];
  v9 = [v8 objectForKeyedSubscript:@"kMRMediaRemoteUpdatedContentItemsUserInfoKey"];

  v10 = [v9 mr_compactMap:&__block_literal_global_77];
  v11 = [*(a1 + 40) requestingQueue];
  v12 = _MRLogForCategory(1uLL);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v14 = *(a1 + 40);
      v18 = 138412546;
      v19 = v14;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_1A2860000, v12, OS_LOG_TYPE_DEFAULT, "[MRV1NowPlayingController] <%@> deferring PlaybackQueueContentItemsChangedNotification for content items %@ because we are requesting a new playback queue.", &v18, 0x16u);
    }

    v15 = [*(a1 + 40) deferredContentItemsToMerge];
    [v15 addObjectsFromArray:v9];
  }

  else
  {
    if (v13)
    {
      v16 = *(a1 + 40);
      v18 = 138412546;
      v19 = v16;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_1A2860000, v12, OS_LOG_TYPE_DEFAULT, "[MRV1NowPlayingController] <%@> updated content items %@.", &v18, 0x16u);
    }

    [*(a1 + 40) _notifyDelegateOfUpdatedContentItemsWithContentItems:v10];
  }

LABEL_13:
  v17 = *MEMORY[0x1E69E9840];
}

- (void)_handlePlaybackQueueContentItemsArtworkChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(MRV1NowPlayingController *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__MRV1NowPlayingController__handlePlaybackQueueContentItemsArtworkChangedNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __87__MRV1NowPlayingController__handlePlaybackQueueContentItemsArtworkChangedNotification___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v4 = [*(a1 + 40) destination];
  v5 = [v4 resolvedPlayerPath];
  v6 = v5;
  if (v5 == v3)
  {
  }

  else
  {
    v7 = [v5 isEqual:v3];

    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v8 = [*(a1 + 32) userInfo];
  v9 = [v8 objectForKeyedSubscript:@"kMRMediaRemoteUpdatedContentItemsUserInfoKey"];

  v10 = [v9 mr_compactMap:&__block_literal_global_84_0];
  v11 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    *buf = 138412546;
    v20 = v12;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "[MRV1NowPlayingController] <%@> processing PlaybackQueueContentItemsArtworkChangedNotification for content items %@.", buf, 0x16u);
  }

  v13 = *(a1 + 40);
  v14 = [v13 destination];
  v15 = [v14 resolvedPlayerPath];
  v16 = [*(a1 + 40) queue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __87__MRV1NowPlayingController__handlePlaybackQueueContentItemsArtworkChangedNotification___block_invoke_85;
  v18[3] = &unk_1E769C3B0;
  v18[4] = *(a1 + 40);
  [v13 _requestContentItemArtwork:v10 forPlayerPath:v15 queue:v16 completion:v18];

LABEL_8:
  v17 = *MEMORY[0x1E69E9840];
}

void __87__MRV1NowPlayingController__handlePlaybackQueueContentItemsArtworkChangedNotification___block_invoke_85(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) _notifyDelegateOfError:a3];
  }

  else
  {
    v6 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = [v5 contentItems];
      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[MRV1NowPlayingController] <%@> updated artwork for content items %@.", &v12, 0x16u);
    }

    v9 = *(a1 + 32);
    v10 = [v5 contentItems];
    [v9 _notifyDelegateOfUpdatedArtwork:v10];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_handlePlaybackStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(MRV1NowPlayingController *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__MRV1NowPlayingController__handlePlaybackStateChangedNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __68__MRV1NowPlayingController__handlePlaybackStateChangedNotification___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v4 = [*(a1 + 40) destination];
  v5 = [v4 resolvedPlayerPath];
  v6 = v5;
  if (v5 == v3)
  {
  }

  else
  {
    v7 = [v5 isEqual:v3];

    if ((v7 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v8 = [*(a1 + 32) userInfo];
  v9 = [v8 objectForKeyedSubscript:@"kMRMediaRemotePlaybackStateUserInfoKey"];

  v10 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 40);
    *buf = 138412546;
    v21 = v11;
    v22 = 2112;
    v23 = MRMediaRemoteCopyPlaybackStateDescription([v9 intValue]);
    _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "[MRV1NowPlayingController] <%@> processing PlaybackStateDidChangeNotification with new PlaybackState %@.", buf, 0x16u);
  }

  v12 = [*(*(a1 + 40) + 40) playbackState];
  [*(a1 + 40) _notifyDelegateOfPlaybackStateChange:{objc_msgSend(v9, "intValue")}];
  IsAdvancing = MRMediaRemotePlaybackStateIsAdvancing(v12);
  if (IsAdvancing != MRMediaRemotePlaybackStateIsAdvancing([v9 intValue]))
  {
    v14 = *(a1 + 40);
    v15 = [v14 destination];
    v16 = [v15 resolvedPlayerPath];
    v17 = [*(a1 + 40) queue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __68__MRV1NowPlayingController__handlePlaybackStateChangedNotification___block_invoke_86;
    v19[3] = &unk_1E769C3F8;
    v19[4] = *(a1 + 40);
    [v14 _requestPlayerLastPlayingDateForPlayerPath:v16 queue:v17 completion:v19];
  }

LABEL_10:
  v18 = *MEMORY[0x1E69E9840];
}

- (void)_handleSupportedCommandsChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(MRV1NowPlayingController *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__MRV1NowPlayingController__handleSupportedCommandsChangedNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __72__MRV1NowPlayingController__handleSupportedCommandsChangedNotification___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v4 = [*(a1 + 40) destination];
  v5 = [v4 resolvedPlayerPath];
  v6 = v5;
  if (v5 == v3)
  {
  }

  else
  {
    v7 = [v5 isEqual:v3];

    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v8 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    *buf = 138412290;
    v17 = v9;
    _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRV1NowPlayingController] <%@> processing SupportedCommandsDidChangeNotification.", buf, 0xCu);
  }

  v10 = *(a1 + 40);
  v11 = [v10 destination];
  v12 = [v11 resolvedPlayerPath];
  v13 = [*(a1 + 40) queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__MRV1NowPlayingController__handleSupportedCommandsChangedNotification___block_invoke_87;
  v15[3] = &unk_1E769C420;
  v15[4] = *(a1 + 40);
  [v10 _requestSupportedCommandsForPlayerPath:v12 queue:v13 completion:v15];

LABEL_8:
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __72__MRV1NowPlayingController__handleSupportedCommandsChangedNotification___block_invoke_87(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 _notifyDelegateOfError:?];
  }

  else
  {
    return [v3 _notifyDelegateOfSupportedCommandsChange:a2];
  }
}

- (void)_handleActiveSystemEndpointChangedNotification:(id)notification
{
  v12 = *MEMORY[0x1E69E9840];
  configuration = [(MRV1NowPlayingController *)self configuration];
  destination = [configuration destination];
  outputDeviceUID = [destination outputDeviceUID];
  v7 = [outputDeviceUID isEqualToString:@"proactiveEndpoint"];

  if (v7)
  {
    v8 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRV1NowPlayingController] <%@> reloading due to ASE change.", &v10, 0xCu);
    }

    [(MRV1NowPlayingController *)self _notifyDelegateOfInvalidation];
    [(MRV1NowPlayingController *)self _reloadForCompleteInvalidation];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_registerForPlayerPathInvalidationsIfNeeded
{
  if (![(MRV1NowPlayingController *)self registeredForPlayerPathInvalidations])
  {
    objc_initWeak(&location, self);
    destination = [(MRV1NowPlayingController *)self destination];
    unresolvedPlayerPath = [destination unresolvedPlayerPath];

    queue = [(MRV1NowPlayingController *)self queue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__MRV1NowPlayingController__registerForPlayerPathInvalidationsIfNeeded__block_invoke;
    v8[3] = &unk_1E76A19E8;
    objc_copyWeak(&v10, &location);
    v6 = unresolvedPlayerPath;
    v9 = v6;
    v7 = MRMediaRemoteAddPlayerPathInvalidationHandler(v6, queue, v8);
    [(MRV1NowPlayingController *)self setPlayerPathInvalidationObserver:v7];

    [(MRV1NowPlayingController *)self setRegisteredForPlayerPathInvalidations:1];
    objc_destroyWeak(&v10);

    objc_destroyWeak(&location);
  }
}

void __71__MRV1NowPlayingController__registerForPlayerPathInvalidationsIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 138412802;
      v9 = WeakRetained;
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = a2;
      _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRV1NowPlayingController] <%@> reloading due to player path invalidation %@ -> %@.", &v8, 0x20u);
    }

    [WeakRetained _notifyDelegateOfInvalidation];
    [WeakRetained _reloadForPlayerPathInvalidation];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_unregisterForPlayerPathInvalidations
{
  playerPathInvalidationObserver = [(MRV1NowPlayingController *)self playerPathInvalidationObserver];

  if (playerPathInvalidationObserver)
  {
    playerPathInvalidationObserver2 = [(MRV1NowPlayingController *)self playerPathInvalidationObserver];
    MRMediaRemoteRemovePlayerPathInvalidationHandler(playerPathInvalidationObserver2);

    [(MRV1NowPlayingController *)self setPlayerPathInvalidationObserver:0];
  }

  [(MRV1NowPlayingController *)self setRegisteredForPlayerPathInvalidations:0];
}

- (void)_registerForEndpointChangesIfNeeded
{
  if (![(MRV1NowPlayingController *)self registeredForEndpointChanges])
  {
    destination = [(MRV1NowPlayingController *)self destination];
    outputDeviceUID = [destination outputDeviceUID];
    v5 = [outputDeviceUID isEqualToString:@"proactiveEndpoint"];

    if (v5)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__handleActiveSystemEndpointChangedNotification_ name:@"kMRMediaRemoteActiveSystemEndpointDidChangeNotification" object:0];
    }

    else
    {
      objc_initWeak(&location, self);
      endpointObserver = self->_endpointObserver;
      if (!endpointObserver)
      {
        v8 = [MRAVEndpointObserver alloc];
        configuration = [(MRV1NowPlayingController *)self configuration];
        destination2 = [configuration destination];
        outputDeviceUID2 = [destination2 outputDeviceUID];
        v12 = objc_alloc(MEMORY[0x1E696AEC0]);
        v13 = objc_opt_class();
        configuration2 = [(MRV1NowPlayingController *)self configuration];
        destination3 = [configuration2 destination];
        outputDeviceUID3 = [destination3 outputDeviceUID];
        v17 = [v12 initWithFormat:@"%@:%@", v13, outputDeviceUID3];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __63__MRV1NowPlayingController__registerForEndpointChangesIfNeeded__block_invoke;
        v20[3] = &unk_1E769C470;
        objc_copyWeak(&v21, &location);
        v18 = [(MRAVEndpointObserver *)v8 initWithOutputDeviceUID:outputDeviceUID2 label:v17 callback:v20];
        v19 = self->_endpointObserver;
        self->_endpointObserver = v18;

        objc_destroyWeak(&v21);
        endpointObserver = self->_endpointObserver;
      }

      [(MRAVEndpointObserver *)endpointObserver begin];
      objc_destroyWeak(&location);
    }

    [(MRV1NowPlayingController *)self setRegisteredForEndpointChanges:1];
  }
}

void __63__MRV1NowPlayingController__registerForEndpointChangesIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = a2;
    v5 = [WeakRetained destination];
    v6 = [v5 endpoint];
    v7 = [v6 uniqueIdentifier];
    v8 = [v4 uniqueIdentifier];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [v7 isEqual:v8];

      if ((v10 & 1) == 0)
      {
        v11 = _MRLogForCategory(1uLL);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [WeakRetained destination];
          v13 = [v12 endpoint];
          v18 = 138412802;
          v19 = WeakRetained;
          v20 = 2112;
          v21 = v13;
          v22 = 2112;
          v23 = v4;
          _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "[MRV1NowPlayingController] <%@> reloading due to change in endpoint. Current endpoint: %@. New endpoint: %@.", &v18, 0x20u);
        }

        v14 = [v4 outputDevices];
        v15 = [v14 firstObject];
        v16 = [v15 groupID];
        [WeakRetained setEndpointObserverGroupUID:v16];

        [WeakRetained _notifyDelegateOfInvalidation];
        [WeakRetained _reloadForCompleteInvalidation];
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_unregisterForEndpointChanges
{
  configuration = [(MRV1NowPlayingController *)self configuration];
  destination = [configuration destination];
  outputDeviceUID = [destination outputDeviceUID];
  v6 = [outputDeviceUID isEqualToString:@"proactiveEndpoint"];

  if (v6)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"kMRMediaRemoteActiveSystemEndpointDidChangeNotification" object:0];
  }

  else
  {
    [(MRAVEndpointObserver *)self->_endpointObserver end];
  }

  [(MRV1NowPlayingController *)self setRegisteredForEndpointChanges:0];
}

- (BOOL)updateLoadingEnabled
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(MRV1NowPlayingController *)self queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__MRV1NowPlayingController_updateLoadingEnabled__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (MRNowPlayingPlayerResponse)response
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__33;
  v11 = __Block_byref_object_dispose__33;
  v12 = 0;
  queue = [(MRV1NowPlayingController *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__MRV1NowPlayingController_response__block_invoke;
  v6[3] = &unk_1E769A2A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __36__MRV1NowPlayingController_response__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __80__MRV1NowPlayingController__loadNowPlayingStateForUID_client_player_completion___block_invoke_17_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_1A2860000, v2, v3, "[MRV1NowPlayingController] %@ Unable to discover endpoint.", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __85__MRV1NowPlayingController__loadNowPlayingStateForEndpoint_client_player_completion___block_invoke_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(&dword_1A2860000, v2, OS_LOG_TYPE_FAULT, "Exhausted all retry attempts %@", v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __85__MRV1NowPlayingController__loadNowPlayingStateForEndpoint_client_player_completion___block_invoke_44_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_1A2860000, v2, v3, "[MRV1NowPlayingController] <%@> Player path is not resolved. There may be no now playing application.", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __85__MRV1NowPlayingController__loadNowPlayingStateForEndpoint_client_player_completion___block_invoke_44_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_4();
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_1A2860000, v3, OS_LOG_TYPE_ERROR, "[MRV1NowPlayingController] <%@> Error loading data %@.", v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __88__MRV1NowPlayingController__requestPlayerLastPlayingDateForPlayerPath_queue_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5(&dword_1A2860000, a2, a3, "[MRV1NowPlayingController] Failed to retrieve player last playing date with error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end