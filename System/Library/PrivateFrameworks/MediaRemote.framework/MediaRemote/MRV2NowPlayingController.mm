@interface MRV2NowPlayingController
- (BOOL)isLoading;
- (BOOL)needsImmediateReload;
- (BOOL)shouldDeferArtworkRequestForConfiguration:(id)a3;
- (BOOL)shouldObserveInvalidations;
- (BOOL)updateLoadingEnabled;
- (MRNowPlayingControllerDestination)destination;
- (MRNowPlayingControllerDestination)pendingDestination;
- (MRNowPlayingControllerHelper)helper;
- (MRV2NowPlayingController)initWithConfiguration:(id)a3;
- (MRV2NowPlayingControllerOperationQueue)cancelableOperations;
- (NSString)debugDescription;
- (NSString)needsImmediateReloadReason;
- (id)_loadNowPlayingStateForPlayerPath:(id)a3 error:(id *)a4;
- (id)effectivePlaybackQueueRequest;
- (void)_configureReloadTimerForError:(id)a3;
- (void)_createUnresolvedPlayerPathForEndpoint:(id)a3 client:(id)a4 player:(id)a5 completion:(id)a6;
- (void)_handleActiveSystemEndpointChangedNotification:(id)a3;
- (void)_handleClientStateDidChange:(id)a3;
- (void)_handleEndpointChanged;
- (void)_handleEndpointChangedToEndpoint:(id)a3;
- (void)_handleEndpointInvalidated;
- (void)_handlePlaybackQueueChangedNotification:(id)a3;
- (void)_handlePlaybackQueueContentItemsArtworkChangedNotification:(id)a3;
- (void)_handlePlaybackQueueContentItemsChangedNotification:(id)a3;
- (void)_handlePlaybackStateChangedNotification:(id)a3;
- (void)_handlePlayerPathInvalidatedWithPlayerPath:(id)a3;
- (void)_handleRetryTimerElapsed;
- (void)_handleSupportedCommandsChangedNotification:(id)a3;
- (void)_loadNowPlayingStateForConfiguration:(id)a3 requestID:(id)a4 completion:(id)a5;
- (void)_loadNowPlayingStateForResolvedPlayerPath:(id)a3 requestID:(id)a4 completion:(id)a5;
- (void)_notifyDelegateOfError:(id)a3;
- (void)_notifyDelegateOfInvalidation;
- (void)_notifyDelegateOfNewResponse:(id)a3;
- (void)_notifyDelegateOfPlaybackQueueChange:(id)a3;
- (void)_notifyDelegateOfPlayerPathChange:(id)a3;
- (void)_notifyDelegateOfSupportedCommandsChange:(id)a3;
- (void)_notifyDelegateOfUpdatedArtwork:(id)a3;
- (void)_notifyDelegateOfUpdatedClientProperties:(id)a3;
- (void)_notifyDelegateOfUpdatedContentItemsWithContentItems:(id)a3;
- (void)_notifyDelegateOfUpdatedPlayerLastPlayingDate:(id)a3;
- (void)_onQueue_clearAllState;
- (void)_onQueue_clearStateForEndpoint;
- (void)_onQueue_clearStateForOutputDeviceUID;
- (void)_onQueue_clearStateForResolvedPlayerPath;
- (void)_onQueue_clearStateForUnresolvedPlayerPath;
- (void)_onQueue_retrieveEndpointForContextUID:(id)a3 completion:(id)a4;
- (void)_onQueue_retrieveEndpointForUID:(id)a3 completion:(id)a4;
- (void)_registerForEndpointChangesForOutputDeviceUID:(id)a3;
- (void)_registerForEndpointInvalidations:(id)a3;
- (void)_registerForPlayerPathInvalidationsForUnresolvedPlayerPath:(id)a3;
- (void)_registerNotificationHandlersForResolvedPlayerPath:(id)a3;
- (void)_reloadWithReason:(id)a3;
- (void)_requestClientPropertiesForPlayerPath:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)_requestContentItemArtwork:(id)a3 forPlayerPath:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)_requestPlaybackQueueArtworkForIdentifiers:(id)a3 operationQueue:(id)a4;
- (void)_requestPlaybackQueueForPlayerPath:(id)a3 request:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)_requestPlayerLastPlayingDateForPlayerPath:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)_requestSupportedCommandsForPlayerPath:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)_resolveForConfiguration:(id)a3 requestID:(id)a4 completion:(id)a5;
- (void)_resolveForEndpoint:(id)a3 client:(id)a4 player:(id)a5 requestID:(id)a6 completion:(id)a7;
- (void)_resolveForOutputContextUID:(id)a3 client:(id)a4 player:(id)a5 requestID:(id)a6 completion:(id)a7;
- (void)_resolveForOutputDeviceUID:(id)a3 client:(id)a4 player:(id)a5 requestID:(id)a6 completion:(id)a7;
- (void)_resolveForUnresolvedPlayerPath:(id)a3 requestID:(id)a4 completion:(id)a5;
- (void)_resolvePlayerPath:(id)a3 requestID:(id)a4 completion:(id)a5;
- (void)_unregisterForEndpointChanges;
- (void)_unregisterForEndpointInvalidations;
- (void)_unregisterForPlayerPathInvalidations;
- (void)_unregisterNotificationHandlers;
- (void)beginLoadingUpdates;
- (void)dealloc;
- (void)destinationWithCompletion:(id)a3;
- (void)onQueue_setResolvedPlayerPath:(id)a3;
- (void)setHelper:(id)a3;
- (void)setIsLoading:(BOOL)a3;
@end

@implementation MRV2NowPlayingController

- (void)beginLoadingUpdates
{
  v4 = [(MRV2NowPlayingController *)self queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__MRV2NowPlayingController_beginLoadingUpdates__block_invoke;
  v5[3] = &unk_1E769C018;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(v4, v5);
}

uint64_t __47__MRV2NowPlayingController_beginLoadingUpdates__block_invoke(uint64_t result)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = (result + 32);
  if ((*(*(result + 32) + 20) & 1) == 0)
  {
    v2 = result;
    v3 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *v1;
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] <%@> Begin loading updates", &v6, 0xCu);
    }

    if ([*v1 isLoading])
    {
      __47__MRV2NowPlayingController_beginLoadingUpdates__block_invoke_cold_1(v2, v1);
    }

    result = [*v1 _reloadWithReason:@"Begin"];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isLoading
{
  v3 = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(v3);

  return self->_loading;
}

- (void)_notifyDelegateOfInvalidation
{
  v2 = [(MRV2NowPlayingController *)self helper];
  if (v2)
  {
    v4 = v2;
    v3 = [v2 didInvalidate];
    v3[2]();

    v2 = v4;
  }
}

- (BOOL)shouldObserveInvalidations
{
  v2 = [(MRV2NowPlayingController *)self configuration];
  v3 = [v2 isSingleShot];

  return v3 ^ 1;
}

- (MRNowPlayingControllerHelper)helper
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_helper;
  objc_sync_exit(v2);

  return v3;
}

- (MRV2NowPlayingControllerOperationQueue)cancelableOperations
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_cancelableOperations;
  objc_sync_exit(v2);

  return v3;
}

- (void)_onQueue_clearAllState
{
  v3 = [(MRV2NowPlayingController *)self queue];

  if (v3)
  {
    v4 = [(MRV2NowPlayingController *)self queue];
    dispatch_assert_queue_V2(v4);
  }

  loadRetryTimer = self->_loadRetryTimer;
  self->_loadRetryTimer = 0;

  [(MRV2NowPlayingController *)self _onQueue_clearStateForOutputDeviceUID];
}

- (void)_unregisterForEndpointChanges
{
  v3 = [(MRV2NowPlayingController *)self configuration];
  v4 = [v3 destination];
  v5 = [v4 outputDeviceUID];
  if ([v5 isEqualToString:@"proactiveEndpoint"])
  {

LABEL_4:
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 removeObserver:self name:@"kMRMediaRemoteActiveSystemEndpointDidChangeNotification" object:0];
    goto LABEL_6;
  }

  v6 = [(MRV2NowPlayingController *)self configuration];
  v7 = [v6 destination];
  v8 = [v7 outputDeviceUID];
  v9 = [v8 isEqualToString:@"userSelectedEndpoint"];

  if (v9)
  {
    goto LABEL_4;
  }

  v10 = [(MRV2NowPlayingController *)self endpointObserver];
  [v10 end];
LABEL_6:

  [(MRV2NowPlayingController *)self setRegisteredForEndpointChanges:0];
}

- (void)_unregisterForPlayerPathInvalidations
{
  v3 = [(MRV2NowPlayingController *)self queue];

  if (v3)
  {
    v4 = [(MRV2NowPlayingController *)self queue];
    dispatch_assert_queue_V2(v4);
  }

  v5 = [(MRV2NowPlayingController *)self playerPathInvalidationObserver];

  if (v5)
  {
    v6 = [(MRV2NowPlayingController *)self playerPathInvalidationObserver];
    MRMediaRemoteRemovePlayerPathInvalidationHandler(v6);

    [(MRV2NowPlayingController *)self setPlayerPathInvalidationObserver:0];
  }

  [(MRV2NowPlayingController *)self setRegisteredForPlayerPathInvalidations:0];
}

- (void)_onQueue_clearStateForUnresolvedPlayerPath
{
  v3 = [(MRV2NowPlayingController *)self queue];

  if (v3)
  {
    v4 = [(MRV2NowPlayingController *)self queue];
    dispatch_assert_queue_V2(v4);
  }

  [(MRNowPlayingControllerDestination *)self->_destination setUnresolvedPlayerPath:0];

  [(MRV2NowPlayingController *)self _onQueue_clearStateForResolvedPlayerPath];
}

- (void)_onQueue_clearStateForResolvedPlayerPath
{
  v3 = [(MRV2NowPlayingController *)self queue];

  if (v3)
  {
    v4 = [(MRV2NowPlayingController *)self queue];
    dispatch_assert_queue_V2(v4);
  }

  [(MRV2NowPlayingController *)self _unregisterNotificationHandlers];
  [(MRV2NowPlayingController *)self onQueue_setResolvedPlayerPath:0];
  v5 = [(MRV2NowPlayingController *)self deferredContentItemsToMerge];
  [v5 removeAllObjects];
}

- (void)_unregisterNotificationHandlers
{
  if ([(MRV2NowPlayingController *)self registeredForNotifications])
  {
    MRMediaRemoteSetWantsNowPlayingNotifications(0);
    MRMediaRemoteSetWantsSupportedCommandsChangedNotifications(0);
    v3 = self;
    objc_sync_enter(v3);
    [(MRV2NowPlayingControllerOperationQueue *)v3->_cancelableOperations invalidate];
    cancelableOperations = v3->_cancelableOperations;
    v3->_cancelableOperations = 0;

    objc_sync_exit(v3);
    v5 = [(MRV2NowPlayingController *)v3 configuration];
    v6 = [v5 playbackQueueRequest];

    if (v6)
    {
      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      [v7 removeObserver:v3 name:@"kMRPlayerPlaybackQueueChangedNotification" object:0];

      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 removeObserver:v3 name:@"kMRPlayerPlaybackQueueContentItemsChangedNotification" object:0];

      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      [v9 removeObserver:v3 name:@"kMRPlayerPlaybackQueueContentItemArtworkChangedNotification" object:0];
    }

    v10 = [(MRV2NowPlayingController *)v3 configuration];
    v11 = [v10 requestPlaybackState];

    if (v11)
    {
      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      [v12 removeObserver:v3 name:@"_kMRMediaRemotePlayerPlaybackStateDidChangeNotification" object:0];
    }

    v13 = [(MRV2NowPlayingController *)v3 configuration];
    v14 = [v13 requestSupportedCommands];

    if (v14)
    {
      v15 = [MEMORY[0x1E696AD88] defaultCenter];
      [v15 removeObserver:v3 name:@"kMRMediaRemotePlayerSupportedCommandsDidChangeNotification" object:0];
    }

    v16 = [(MRV2NowPlayingController *)v3 configuration];
    v17 = [v16 requestClientProperties];

    if (v17)
    {
      v18 = [MEMORY[0x1E696AD88] defaultCenter];
      [v18 removeObserver:v3 name:@"kMRMediaRemoteApplicationClientStateDidChange" object:0];
    }

    [(MRV2NowPlayingController *)v3 setRegisteredForNotifications:0];
  }
}

- (BOOL)needsImmediateReload
{
  v3 = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(MRV2NowPlayingController *)self endpointChanged]|| [(MRV2NowPlayingController *)self endpointInvalidated])
  {
    return 1;
  }

  return [(MRV2NowPlayingController *)self playerPathInvalidated];
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_updateLoadingEnabled)
  {
    v3 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = self;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] <%@> End loading updates", buf, 0xCu);
    }
  }

  v4 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = self;
    _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] <%@> Deallocating.", buf, 0xCu);
  }

  helper = self->_helper;
  self->_helper = 0;

  [(MRV2NowPlayingController *)self setQueue:0];
  [(MRV2NowPlayingController *)self _onQueue_clearAllState];
  v7.receiver = self;
  v7.super_class = MRV2NowPlayingController;
  [(MRV2NowPlayingController *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_onQueue_clearStateForOutputDeviceUID
{
  v3 = [(MRV2NowPlayingController *)self queue];

  if (v3)
  {
    v4 = [(MRV2NowPlayingController *)self queue];
    dispatch_assert_queue_V2(v4);
  }

  [(MRV2NowPlayingController *)self _unregisterForEndpointChanges];

  [(MRV2NowPlayingController *)self _onQueue_clearStateForEndpoint];
}

- (void)_onQueue_clearStateForEndpoint
{
  v3 = [(MRV2NowPlayingController *)self queue];

  if (v3)
  {
    v4 = [(MRV2NowPlayingController *)self queue];
    dispatch_assert_queue_V2(v4);
  }

  [(MRV2NowPlayingController *)self _unregisterForEndpointInvalidations];
  [(MRV2NowPlayingController *)self _unregisterForPlayerPathInvalidations];
  [(MRNowPlayingControllerDestination *)self->_destination setEndpoint:0];

  [(MRV2NowPlayingController *)self _onQueue_clearStateForUnresolvedPlayerPath];
}

- (void)_unregisterForEndpointInvalidations
{
  v3 = [(MRV2NowPlayingController *)self queue];

  if (v3)
  {
    v4 = [(MRV2NowPlayingController *)self queue];
    dispatch_assert_queue_V2(v4);
  }

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = [(MRDestination *)self->_destination endpoint];
  [v5 removeObserver:self name:@"MRAVEndpointDidDisconnectNotification" object:v6];

  [(MRV2NowPlayingController *)self setRegisteredForEndpointInvalidations:0];
}

- (MRV2NowPlayingController)initWithConfiguration:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = MRV2NowPlayingController;
  v5 = [(MRV2NowPlayingController *)&v23 init];
  if (v5)
  {
    v6 = [v4 copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = [[MRNowPlayingControllerDestination alloc] initWithConfiguration:v4];
    destination = v5->_destination;
    v5->_destination = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deferredContentItemsToMerge = v5->_deferredContentItemsToMerge;
    v5->_deferredContentItemsToMerge = v10;

    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    v13 = objc_opt_class();
    v14 = [v4 label];
    v15 = v14;
    v16 = &stru_1F1513E38;
    if (v14)
    {
      v16 = v14;
    }

    v17 = [v12 initWithFormat:@"%@<%p>:%@", v13, v5, v16];
    label = v5->_label;
    v5->_label = v17;

    if (initWithConfiguration____onceToken != -1)
    {
      [MRV2NowPlayingController initWithConfiguration:];
    }

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create_with_target_V2("com.apple.MediaRemote.MRV2NowPlayingController.queue", v19, initWithConfiguration____globalQueue);
    queue = v5->_queue;
    v5->_queue = v20;
  }

  return v5;
}

void __50__MRV2NowPlayingController_initWithConfiguration___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.MediaRemote.MRV2NowPlayingController.globalQueue", v2);
  v1 = initWithConfiguration____globalQueue;
  initWithConfiguration____globalQueue = v0;
}

- (void)destinationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MRV2NowPlayingController *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__MRV2NowPlayingController_destinationWithCompletion___block_invoke;
  v7[3] = &unk_1E769A0A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __54__MRV2NowPlayingController_destinationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 configuration];
  [v2 _resolveForConfiguration:v3 requestID:@"destinationWithCompletion" completion:*(a1 + 40)];
}

- (MRNowPlayingControllerDestination)destination
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__11;
  v11 = __Block_byref_object_dispose__11;
  v12 = 0;
  v3 = [(MRV2NowPlayingController *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__MRV2NowPlayingController_destination__block_invoke;
  v6[3] = &unk_1E769A2A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __39__MRV2NowPlayingController_destination__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSString)debugDescription
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__11;
  v11 = __Block_byref_object_dispose__11;
  v12 = 0;
  v3 = [(MRV2NowPlayingController *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__MRV2NowPlayingController_debugDescription__block_invoke;
  v6[3] = &unk_1E769A2A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __44__MRV2NowPlayingController_debugDescription__block_invoke(uint64_t a1)
{
  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(a1 + 32);
  v18 = *(v4 + 32);
  v19 = v3;
  v17 = *(v4 + 20);
  v5 = *(v4 + 24);
  v21 = [v4 endpointObserver];
  v6 = [*(a1 + 32) playerPathInvalidationObserver];
  v7 = [*(a1 + 32) registeredForNotifications];
  v8 = [*(a1 + 32) needsImmediateReloadReason];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"None";
  }

  v11 = MRCreateIndentedDebugDescriptionFromObject(*(*(a1 + 32) + 72));
  v12 = [*(*(a1 + 32) + 80) remainingIntervals];
  v13 = MRCreateIndentedDebugDescriptionFromObject(v12);
  v14 = [v20 initWithFormat:@"<%@ %p {\n   currentDestination=%@\n   updateLoadingEnabled=%u\n   loading=%u\n   endpointObserver=%@\n   playerPathInvalidationHandler=%@\n   registeredForNotifications=%u\n   needsImmediateReloadReason=%@\n   pendingDestination=%@\n   loadRetryTimer = %@}>\n", v19, v4, v18, v17, v5, v21, v6, v7, v10, v11, v13];
  v15 = *(*(a1 + 40) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;
}

- (void)_reloadWithReason:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [v7 UUIDString];
  v9 = (self->_incrementingRequestID + 1);
  self->_incrementingRequestID = v9;
  v10 = [v6 initWithFormat:@"%@-%d", v8, v9];

  v11 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v16 = self;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] %@ reloading<%@> for reason %@", buf, 0x20u);
  }

  [(MRV2NowPlayingController *)self _notifyDelegateOfInvalidation];
  v12 = [(MRV2NowPlayingController *)self configuration];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__MRV2NowPlayingController__reloadWithReason___block_invoke;
  v14[3] = &unk_1E769C090;
  v14[4] = self;
  [(MRV2NowPlayingController *)self _loadNowPlayingStateForConfiguration:v12 requestID:v10 completion:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __46__MRV2NowPlayingController__reloadWithReason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v6);

  v7 = *(a1 + 32);
  if (v5)
  {
    v8 = [v7 cancelableOperations];
    [v8 invalidate];

    [*(a1 + 32) _configureReloadTimerForError:v5];
    [*(a1 + 32) _notifyDelegateOfError:v5];
  }

  else
  {
    v9 = v7[10];
    v7[10] = 0;

    [v10 setDestination:*(*(a1 + 32) + 32)];
    [*(a1 + 32) _notifyDelegateOfNewResponse:v10];
  }
}

- (void)_loadNowPlayingStateForConfiguration:(id)a3 requestID:(id)a4 completion:(id)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(v12);

  if ([(MRV2NowPlayingController *)self isLoading])
  {
    [MRV2NowPlayingController _loadNowPlayingStateForConfiguration:a2 requestID:self completion:?];
  }

  [(MRV2NowPlayingController *)self setIsLoading:1];
  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.LoadForConfiguration<%p>", objc_opt_class(), self];
  v14 = [MEMORY[0x1E695DF00] now];
  v15 = [MRBlockGuard alloc];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke;
  v43[3] = &unk_1E769B6D0;
  v16 = v13;
  v44 = v16;
  v17 = v10;
  v45 = v17;
  v18 = [(MRBlockGuard *)v15 initWithTimeout:v16 reason:v43 handler:60.0];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53;
  v35[3] = &unk_1E769D430;
  v19 = v9;
  v36 = v19;
  v20 = v16;
  v37 = v20;
  v21 = v17;
  v38 = v21;
  v22 = v14;
  v39 = v22;
  v23 = v18;
  v40 = v23;
  v24 = v11;
  v41 = self;
  v42 = v24;
  v25 = MEMORY[0x1A58E3570](v35);
  v26 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v20, v21];
  v27 = v26;
  if (v19)
  {
    [v26 appendFormat:@" for %@", v19];
  }

  v28 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v47 = v27;
    _os_log_impl(&dword_1A2860000, v28, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_67;
  v32[3] = &unk_1E769D458;
  v33 = v21;
  v34 = v25;
  v32[4] = self;
  v29 = v21;
  v30 = v25;
  [(MRV2NowPlayingController *)self _resolveForConfiguration:v19 requestID:v29 completion:v32];

  v31 = *MEMORY[0x1E69E9840];
}

void __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543874;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    v10 = 2112;
    v11 = @"Its been 60 seconds and still waiting for response..";
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v6, 0x20u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@:%p>", objc_opt_class(), v5];
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9 = *(a1 + 32);
  v10 = [v8 initWithFormat:@"<%@:%p>", objc_opt_class(), v9];
  v11 = _MRLogForCategory(0xAuLL);
  v12 = v11;
  if (!v6 && v7)
  {
    v13 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v13)
      {
        v14 = *(a1 + 40);
        v15 = *(a1 + 48);
        v16 = [MEMORY[0x1E695DF00] date];
        [v16 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544386;
        v37 = v14;
        v38 = 2114;
        v39 = v15;
        v40 = 2112;
        v41 = v7;
        v42 = 2114;
        v43 = v10;
        v44 = 2048;
        v45 = v17;
        v18 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v19 = v12;
        v20 = 52;
LABEL_19:
        _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
        goto LABEL_20;
      }

      goto LABEL_25;
    }

    if (!v13)
    {
      goto LABEL_25;
    }

    v29 = *(a1 + 40);
    v30 = *(a1 + 48);
    v16 = [MEMORY[0x1E695DF00] date];
    [v16 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544130;
    v37 = v29;
    v38 = 2114;
    v39 = v30;
    v40 = 2112;
    v41 = v7;
    v42 = 2048;
    v43 = v31;
    v18 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_18:
    v19 = v12;
    v20 = 42;
    goto LABEL_19;
  }

  if (v6)
  {
    v21 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      if (v21)
      {
        v22 = *(a1 + 40);
        v23 = *(a1 + 48);
        v16 = [MEMORY[0x1E695DF00] date];
        [v16 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544386;
        v37 = v22;
        v38 = 2114;
        v39 = v23;
        v40 = 2114;
        v41 = v6;
        v42 = 2114;
        v43 = v10;
        v44 = 2048;
        v45 = v24;
        _os_log_error_impl(&dword_1A2860000, v12, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:

        goto LABEL_25;
      }
    }

    else if (v21)
    {
      __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1(a1, v6, v12);
    }

    goto LABEL_25;
  }

  v25 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (!v25)
    {
      goto LABEL_25;
    }

    v32 = *(a1 + 40);
    v33 = *(a1 + 48);
    v16 = [MEMORY[0x1E695DF00] date];
    [v16 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138543874;
    v37 = v32;
    v38 = 2114;
    v39 = v33;
    v40 = 2048;
    v41 = v34;
    v18 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v19 = v12;
    v20 = 32;
    goto LABEL_19;
  }

  if (v25)
  {
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    v16 = [MEMORY[0x1E695DF00] date];
    [v16 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544130;
    v37 = v26;
    v38 = 2114;
    v39 = v27;
    v40 = 2114;
    v41 = v10;
    v42 = 2048;
    v43 = v28;
    v18 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_18;
  }

LABEL_25:

  [*(a1 + 64) disarm];
  (*(*(a1 + 80) + 16))();
  [*(a1 + 72) setIsLoading:0];

  v35 = *MEMORY[0x1E69E9840];
}

uint64_t __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_67(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return [*(a1 + 32) _loadNowPlayingStateForResolvedPlayerPath:a2 requestID:*(a1 + 40) completion:*(a1 + 48)];
  }
}

- (void)_resolveForConfiguration:(id)a3 requestID:(id)a4 completion:(id)a5
{
  v84 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.resolveForConfiguration<%p>", objc_opt_class(), self];
  v12 = [MEMORY[0x1E695DF00] now];
  v13 = [MRBlockGuard alloc];
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __74__MRV2NowPlayingController__resolveForConfiguration_requestID_completion___block_invoke;
  v79[3] = &unk_1E769B6D0;
  v14 = v11;
  v80 = v14;
  v15 = v9;
  v81 = v15;
  v16 = [(MRBlockGuard *)v13 initWithTimeout:v14 reason:v79 handler:60.0];
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __74__MRV2NowPlayingController__resolveForConfiguration_requestID_completion___block_invoke_72;
  v73[3] = &unk_1E769D480;
  v73[4] = self;
  v17 = v14;
  v74 = v17;
  v18 = v15;
  v75 = v18;
  v19 = v12;
  v76 = v19;
  v72 = v16;
  v77 = v72;
  v20 = v10;
  v21 = v8;
  v22 = v20;
  v78 = v20;
  v23 = MEMORY[0x1A58E3570](v73);
  v24 = objc_alloc(MEMORY[0x1E696AEC0]);
  v25 = [v21 destination];
  v26 = [v24 initWithFormat:@"%@->%@", v25, self->_destination];

  v27 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v17, v18];
  v28 = v27;
  if (v26)
  {
    [v27 appendFormat:@" for %@", v26];
  }

  v29 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v83 = v28;
    _os_log_impl(&dword_1A2860000, v29, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v30 = [(MRNowPlayingControllerDestination *)self->_destination resolvedPlayerPath];

  if (!v30)
  {
    v32 = [(MRNowPlayingControllerDestination *)self->_destination unresolvedPlayerPath];

    destination = self->_destination;
    if (v32)
    {
      v31 = [(MRNowPlayingControllerDestination *)destination unresolvedPlayerPath];
      [(MRV2NowPlayingController *)self _resolveForUnresolvedPlayerPath:v31 requestID:v18 completion:v23];
      goto LABEL_22;
    }

    v71 = v22;
    v34 = [(MRDestination *)destination endpoint];

    v35 = self->_destination;
    if (v34)
    {
      v31 = [(MRDestination *)v35 endpoint];
      v65 = [(MRV2NowPlayingController *)self configuration];
      v63 = [v65 destination];
      v59 = [v63 playerPath];
      v58 = [v59 client];
      v36 = [(MRV2NowPlayingController *)self configuration];
      [v36 destination];
      v37 = v69 = v19;
      [v37 playerPath];
      v38 = v67 = v21;
      v39 = [v38 player];
      [(MRV2NowPlayingController *)self _resolveForEndpoint:v31 client:v58 player:v39 requestID:v18 completion:v23];

      v21 = v67;
      v19 = v69;

LABEL_21:
      v22 = v71;
      goto LABEL_22;
    }

    if ([(MRNowPlayingControllerDestination *)v35 isEndpointSet])
    {
      v31 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:24 description:@"endpoint observer returned a nil endpoint"];
      (v23)[2](v23, 0, v31);
      goto LABEL_21;
    }

    v70 = v19;
    v40 = [v21 destination];
    v41 = [v40 outputDeviceUID];

    v42 = [v21 destination];
    v31 = v42;
    v68 = v21;
    if (v41)
    {
      v60 = [v42 outputDeviceUID];
      v66 = [v21 destination];
      v64 = [v66 playerPath];
      v43 = [v64 client];
      v44 = [v21 destination];
      v45 = [v44 playerPath];
      v46 = [v45 player];
      v47 = self;
      v48 = v60;
      [(MRV2NowPlayingController *)v47 _resolveForOutputDeviceUID:v60 client:v43 player:v46 requestID:v18 completion:v23];
    }

    else
    {
      v49 = [v42 outputContextUID];

      v50 = [v21 destination];
      v31 = v50;
      if (v49)
      {
        v61 = [v50 outputContextUID];
        v66 = [v21 destination];
        v64 = [v66 playerPath];
        v43 = [v64 client];
        v44 = [v21 destination];
        v45 = [v44 playerPath];
        v46 = [v45 player];
        v51 = self;
        v48 = v61;
        [(MRV2NowPlayingController *)v51 _resolveForOutputContextUID:v61 client:v43 player:v46 requestID:v18 completion:v23];
      }

      else
      {
        v52 = [v50 endpoint];

        v53 = [v21 destination];
        v31 = v53;
        if (!v52)
        {
          v56 = [v53 playerPath];

          if (v56)
          {
            v31 = [v21 destination];
            v57 = [v31 playerPath];
            [(MRV2NowPlayingController *)self _resolveForUnresolvedPlayerPath:v57 requestID:v18 completion:v23];
          }

          else
          {
            v31 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:2 description:@"no destination information in configuration"];
            (v23)[2](v23, 0, v31);
          }

          goto LABEL_20;
        }

        v62 = [v53 endpoint];
        v66 = [v21 destination];
        v64 = [v66 playerPath];
        v43 = [v64 client];
        v44 = [v21 destination];
        v45 = [v44 playerPath];
        v46 = [v45 player];
        v54 = self;
        v48 = v62;
        [(MRV2NowPlayingController *)v54 _resolveForEndpoint:v62 client:v43 player:v46 requestID:v18 completion:v23];
      }
    }

    v21 = v68;
LABEL_20:
    v19 = v70;
    goto LABEL_21;
  }

  v31 = [(MRNowPlayingControllerDestination *)self->_destination resolvedPlayerPath];
  (v23)[2](v23, v31, 0);
LABEL_22:

  v55 = *MEMORY[0x1E69E9840];
}

void __74__MRV2NowPlayingController__resolveForConfiguration_requestID_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543874;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    v10 = 2112;
    v11 = @"Its been 60 seconds and still waiting for response..";
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v6, 0x20u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __74__MRV2NowPlayingController__resolveForConfiguration_requestID_completion___block_invoke_72(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (v5 && !v6)
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        v12 = *(a1 + 40);
        v11 = *(a1 + 48);
        v13 = *(*(a1 + 32) + 32);
        v14 = [MEMORY[0x1E695DF00] date];
        [v14 timeIntervalSinceDate:*(a1 + 56)];
        v36 = 138544386;
        v37 = v12;
        v38 = 2114;
        v39 = v11;
        v40 = 2112;
        v41 = v5;
        v42 = 2114;
        v43 = v13;
        v44 = 2048;
        v45 = v15;
        v16 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v17 = v9;
        v18 = 52;
LABEL_16:
        _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, v16, &v36, v18);
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    if (!v10)
    {
      goto LABEL_22;
    }

    v29 = *(a1 + 40);
    v30 = *(a1 + 48);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    v36 = 138544130;
    v37 = v29;
    v38 = 2114;
    v39 = v30;
    v40 = 2112;
    v41 = v5;
    v42 = 2048;
    v43 = v31;
    v16 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_15:
    v17 = v9;
    v18 = 42;
    goto LABEL_16;
  }

  if (v6)
  {
    v19 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v19)
      {
        v21 = *(a1 + 40);
        v20 = *(a1 + 48);
        v22 = *(*(a1 + 32) + 32);
        v14 = [MEMORY[0x1E695DF00] date];
        [v14 timeIntervalSinceDate:*(a1 + 56)];
        v36 = 138544386;
        v37 = v21;
        v38 = 2114;
        v39 = v20;
        v40 = 2114;
        v41 = v6;
        v42 = 2114;
        v43 = v22;
        v44 = 2048;
        v45 = v23;
        _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v36, 0x34u);
LABEL_17:

        goto LABEL_22;
      }
    }

    else if (v19)
    {
      __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1(a1, v6, v9);
    }

    goto LABEL_22;
  }

  v24 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (!v24)
    {
      goto LABEL_22;
    }

    v32 = *(a1 + 40);
    v33 = *(a1 + 48);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    v36 = 138543874;
    v37 = v32;
    v38 = 2114;
    v39 = v33;
    v40 = 2048;
    v41 = v34;
    v16 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v17 = v9;
    v18 = 32;
    goto LABEL_16;
  }

  if (v24)
  {
    v26 = *(a1 + 40);
    v25 = *(a1 + 48);
    v27 = *(*(a1 + 32) + 32);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    v36 = 138544130;
    v37 = v26;
    v38 = 2114;
    v39 = v25;
    v40 = 2114;
    v41 = v27;
    v42 = 2048;
    v43 = v28;
    v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_15;
  }

LABEL_22:

  [*(a1 + 64) disarm];
  (*(*(a1 + 72) + 16))();

  v35 = *MEMORY[0x1E69E9840];
}

- (void)_resolveForOutputDeviceUID:(id)a3 client:(id)a4 player:(id)a5 requestID:(id)a6 completion:(id)a7
{
  v46 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(v17);

  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.resolveForOutputDevice<%p>", objc_opt_class(), self];
  v19 = [MEMORY[0x1E695DF00] now];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __90__MRV2NowPlayingController__resolveForOutputDeviceUID_client_player_requestID_completion___block_invoke;
  v42[3] = &unk_1E769C590;
  v32 = v16;
  v43 = v32;
  v20 = MEMORY[0x1A58E3570](v42);
  v21 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v18, v15];
  v22 = v21;
  if (v12)
  {
    [v21 appendFormat:@" for %@", v12];
  }

  v23 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v45 = v22;
    _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __90__MRV2NowPlayingController__resolveForOutputDeviceUID_client_player_requestID_completion___block_invoke_86;
  v33[3] = &unk_1E769D4A8;
  v34 = v12;
  v35 = v18;
  v36 = v15;
  v37 = v19;
  v38 = self;
  v39 = v13;
  v40 = v14;
  v41 = v20;
  v24 = v20;
  v25 = v14;
  v26 = v13;
  v27 = v19;
  v28 = v15;
  v29 = v18;
  v30 = v12;
  [(MRV2NowPlayingController *)self _onQueue_retrieveEndpointForUID:v30 completion:v33];

  v31 = *MEMORY[0x1E69E9840];
}

void __90__MRV2NowPlayingController__resolveForOutputDeviceUID_client_player_requestID_completion___block_invoke_86(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = [v5 debugName];

    v16 = *(a1 + 32);
    v8 = _MRLogForCategory(0xAuLL);
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v18 = *(a1 + 40);
        v19 = *(a1 + 48);
        v13 = [v5 debugName];
        v20 = *(a1 + 32);
        v21 = [MEMORY[0x1E695DF00] date];
        [v21 timeIntervalSinceDate:*(a1 + 56)];
        v40 = 138544386;
        v41 = v18;
        v42 = 2114;
        v43 = v19;
        v44 = 2112;
        v45 = v13;
        v46 = 2114;
        v47 = v20;
        v48 = 2048;
        v49 = v22;
        v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v24 = v8;
        v25 = 52;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v33 = *(a1 + 40);
        v34 = *(a1 + 48);
        v13 = [v5 debugName];
        v21 = [MEMORY[0x1E695DF00] date];
        [v21 timeIntervalSinceDate:*(a1 + 56)];
        v40 = 138544130;
        v41 = v33;
        v42 = 2114;
        v43 = v34;
        v44 = 2112;
        v45 = v13;
        v46 = 2048;
        v47 = v35;
        v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
        v24 = v8;
        v25 = 42;
      }

      _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, v23, &v40, v25);
    }

    else
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v27 = *(a1 + 40);
        v26 = *(a1 + 48);
        v28 = *(a1 + 32);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 56)];
        v40 = 138544130;
        v41 = v27;
        v42 = 2114;
        v43 = v26;
        v44 = 2114;
        v45 = v28;
        v46 = 2048;
        v47 = v29;
        v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v31 = v8;
        v32 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v36 = *(a1 + 40);
        v37 = *(a1 + 48);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 56)];
        v40 = 138543874;
        v41 = v36;
        v42 = 2114;
        v43 = v37;
        v44 = 2048;
        v45 = v38;
        v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v31 = v8;
        v32 = 32;
      }

      _os_log_impl(&dword_1A2860000, v31, OS_LOG_TYPE_DEFAULT, v30, &v40, v32);
    }

    goto LABEL_20;
  }

  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:*(a1 + 56)];
    v40 = 138544386;
    v41 = v11;
    v42 = 2114;
    v43 = v10;
    v44 = 2114;
    v45 = v6;
    v46 = 2114;
    v47 = v12;
    v48 = 2048;
    v49 = v14;
    _os_log_error_impl(&dword_1A2860000, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v40, 0x34u);
LABEL_20:

    goto LABEL_21;
  }

  if (v9)
  {
    __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1(a1, v6, v8);
  }

LABEL_21:

  [*(*(a1 + 64) + 32) setEndpoint:v5];
  [*(a1 + 64) _registerForEndpointChangesForOutputDeviceUID:*(a1 + 32)];
  if (v6)
  {
    (*(*(a1 + 88) + 16))();
  }

  else
  {
    [*(a1 + 64) _resolveForEndpoint:v5 client:*(a1 + 72) player:*(a1 + 80) requestID:*(a1 + 48) completion:*(a1 + 88)];
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)_resolveForOutputContextUID:(id)a3 client:(id)a4 player:(id)a5 requestID:(id)a6 completion:(id)a7
{
  v43 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(v17);

  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.resolveForOutputContextUID<%p>", objc_opt_class(), self];
  v19 = [MEMORY[0x1E695DF00] now];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __91__MRV2NowPlayingController__resolveForOutputContextUID_client_player_requestID_completion___block_invoke;
  v32[3] = &unk_1E769D4A8;
  v20 = v12;
  v33 = v20;
  v21 = v18;
  v34 = v21;
  v22 = v15;
  v35 = v22;
  v23 = v19;
  v36 = v23;
  v37 = self;
  v31 = v13;
  v38 = v31;
  v24 = v14;
  v39 = v24;
  v25 = v16;
  v40 = v25;
  v26 = MEMORY[0x1A58E3570](v32);
  v27 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v21, v22];
  v28 = v27;
  if (v20)
  {
    [v27 appendFormat:@" for %@", v20];
  }

  v29 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v42 = v28;
    _os_log_impl(&dword_1A2860000, v29, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  [(MRV2NowPlayingController *)self _onQueue_retrieveEndpointForContextUID:v20 completion:v26];
  v30 = *MEMORY[0x1E69E9840];
}

void __91__MRV2NowPlayingController__resolveForOutputContextUID_client_player_requestID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = [v5 debugName];

    v16 = *(a1 + 32);
    v8 = _MRLogForCategory(0xAuLL);
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v18 = *(a1 + 40);
        v19 = *(a1 + 48);
        v13 = [v5 debugName];
        v20 = *(a1 + 32);
        v21 = [MEMORY[0x1E695DF00] date];
        [v21 timeIntervalSinceDate:*(a1 + 56)];
        v40 = 138544386;
        v41 = v18;
        v42 = 2114;
        v43 = v19;
        v44 = 2112;
        v45 = v13;
        v46 = 2114;
        v47 = v20;
        v48 = 2048;
        v49 = v22;
        v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v24 = v8;
        v25 = 52;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v33 = *(a1 + 40);
        v34 = *(a1 + 48);
        v13 = [v5 debugName];
        v21 = [MEMORY[0x1E695DF00] date];
        [v21 timeIntervalSinceDate:*(a1 + 56)];
        v40 = 138544130;
        v41 = v33;
        v42 = 2114;
        v43 = v34;
        v44 = 2112;
        v45 = v13;
        v46 = 2048;
        v47 = v35;
        v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
        v24 = v8;
        v25 = 42;
      }

      _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, v23, &v40, v25);
    }

    else
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v27 = *(a1 + 40);
        v26 = *(a1 + 48);
        v28 = *(a1 + 32);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 56)];
        v40 = 138544130;
        v41 = v27;
        v42 = 2114;
        v43 = v26;
        v44 = 2114;
        v45 = v28;
        v46 = 2048;
        v47 = v29;
        v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v31 = v8;
        v32 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v36 = *(a1 + 40);
        v37 = *(a1 + 48);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 56)];
        v40 = 138543874;
        v41 = v36;
        v42 = 2114;
        v43 = v37;
        v44 = 2048;
        v45 = v38;
        v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v31 = v8;
        v32 = 32;
      }

      _os_log_impl(&dword_1A2860000, v31, OS_LOG_TYPE_DEFAULT, v30, &v40, v32);
    }

    goto LABEL_20;
  }

  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:*(a1 + 56)];
    v40 = 138544386;
    v41 = v11;
    v42 = 2114;
    v43 = v10;
    v44 = 2114;
    v45 = v6;
    v46 = 2114;
    v47 = v12;
    v48 = 2048;
    v49 = v14;
    _os_log_error_impl(&dword_1A2860000, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v40, 0x34u);
LABEL_20:

    goto LABEL_21;
  }

  if (v9)
  {
    __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1(a1, v6, v8);
  }

LABEL_21:

  if (v5)
  {
    [*(a1 + 64) _resolveForEndpoint:v5 client:*(a1 + 72) player:*(a1 + 80) requestID:*(a1 + 48) completion:*(a1 + 88)];
  }

  else
  {
    (*(*(a1 + 88) + 16))();
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)_resolveForEndpoint:(id)a3 client:(id)a4 player:(id)a5 requestID:(id)a6 completion:(id)a7
{
  v52 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v36 = a5;
  v35 = a4;
  v15 = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(v15);

  v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.resolveForEndpoint<%p>", objc_opt_class(), self];
  v17 = [MEMORY[0x1E695DF00] now];
  v18 = [MRBlockGuard alloc];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __83__MRV2NowPlayingController__resolveForEndpoint_client_player_requestID_completion___block_invoke;
  v47[3] = &unk_1E769B6D0;
  v19 = v16;
  v48 = v19;
  v20 = v13;
  v49 = v20;
  v21 = [(MRBlockGuard *)v18 initWithTimeout:v19 reason:v47 handler:60.0];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __83__MRV2NowPlayingController__resolveForEndpoint_client_player_requestID_completion___block_invoke_94;
  v44[3] = &unk_1E769C130;
  v22 = v21;
  v45 = v22;
  v23 = v14;
  v46 = v23;
  v24 = MEMORY[0x1A58E3570](v44);
  v25 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v19, v20];
  v26 = [v12 debugName];

  if (v26)
  {
    v27 = [v12 debugName];
    [v25 appendFormat:@" for %@", v27];
  }

  v28 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v51 = v25;
    _os_log_impl(&dword_1A2860000, v28, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __83__MRV2NowPlayingController__resolveForEndpoint_client_player_requestID_completion___block_invoke_95;
  v37[3] = &unk_1E769D480;
  v38 = v12;
  v39 = v19;
  v40 = v20;
  v41 = v17;
  v42 = self;
  v43 = v24;
  v29 = v24;
  v30 = v17;
  v31 = v20;
  v32 = v19;
  v33 = v12;
  [(MRV2NowPlayingController *)self _createUnresolvedPlayerPathForEndpoint:v33 client:v35 player:v36 completion:v37];

  v34 = *MEMORY[0x1E69E9840];
}

void __83__MRV2NowPlayingController__resolveForEndpoint_client_player_requestID_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543874;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    v10 = 2112;
    v11 = @"Its been 60 seconds and still waiting for response..";
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v6, 0x20u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __83__MRV2NowPlayingController__resolveForEndpoint_client_player_requestID_completion___block_invoke_94(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 disarm];
  (*(*(a1 + 40) + 16))();
}

void __83__MRV2NowPlayingController__resolveForEndpoint_client_player_requestID_completion___block_invoke_95(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) debugName];

  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (v5 && !v6)
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v10)
      {
        goto LABEL_25;
      }

      v12 = *(a1 + 40);
      v11 = *(a1 + 48);
      v13 = [*(a1 + 32) debugName];
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:*(a1 + 56)];
      v41 = 138544386;
      v42 = v12;
      v43 = 2114;
      v44 = v11;
      v45 = 2112;
      v46 = v5;
      v47 = 2114;
      v48 = v13;
      v49 = 2048;
      v50 = v15;
      v16 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v17 = v9;
      v18 = 52;
LABEL_13:
      _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, v16, &v41, v18);

LABEL_24:
LABEL_25:

      [*(*(a1 + 64) + 32) setUnresolvedPlayerPath:v5];
      [*(a1 + 64) _registerForEndpointInvalidations:*(a1 + 32)];
      if ([*(a1 + 32) isConnected])
      {
        [*(a1 + 64) _resolveForUnresolvedPlayerPath:v5 requestID:*(a1 + 48) completion:*(a1 + 72)];
      }

      else
      {
        v38 = *(a1 + 72);
        v39 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:121 description:@"connection succeded but then shortly after disconnected"];
        (*(v38 + 16))(v38, 0, v39);
      }

      goto LABEL_28;
    }

    if (!v10)
    {
      goto LABEL_25;
    }

    v29 = *(a1 + 40);
    v30 = *(a1 + 48);
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:*(a1 + 56)];
    v41 = 138544130;
    v42 = v29;
    v43 = 2114;
    v44 = v30;
    v45 = 2112;
    v46 = v5;
    v47 = 2048;
    v48 = v31;
    v32 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v33 = v9;
    v34 = 42;
    goto LABEL_23;
  }

  if (!v6)
  {
    v25 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v25)
      {
        goto LABEL_25;
      }

      v27 = *(a1 + 40);
      v26 = *(a1 + 48);
      v13 = [*(a1 + 32) debugName];
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:*(a1 + 56)];
      v41 = 138544130;
      v42 = v27;
      v43 = 2114;
      v44 = v26;
      v45 = 2114;
      v46 = v13;
      v47 = 2048;
      v48 = v28;
      v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v17 = v9;
      v18 = 42;
      goto LABEL_13;
    }

    if (!v25)
    {
      goto LABEL_25;
    }

    v35 = *(a1 + 40);
    v36 = *(a1 + 48);
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:*(a1 + 56)];
    v41 = 138543874;
    v42 = v35;
    v43 = 2114;
    v44 = v36;
    v45 = 2048;
    v46 = v37;
    v32 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v33 = v9;
    v34 = 32;
LABEL_23:
    _os_log_impl(&dword_1A2860000, v33, OS_LOG_TYPE_DEFAULT, v32, &v41, v34);
    goto LABEL_24;
  }

  v19 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v19)
    {
      v21 = *(a1 + 40);
      v20 = *(a1 + 48);
      v22 = [*(a1 + 32) debugName];
      v23 = [MEMORY[0x1E695DF00] date];
      [v23 timeIntervalSinceDate:*(a1 + 56)];
      v41 = 138544386;
      v42 = v21;
      v43 = 2114;
      v44 = v20;
      v45 = 2114;
      v46 = v6;
      v47 = 2114;
      v48 = v22;
      v49 = 2048;
      v50 = v24;
      _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v41, 0x34u);
    }
  }

  else if (v19)
  {
    __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1(a1, v6, v9);
  }

  [*(*(a1 + 64) + 32) setUnresolvedPlayerPath:v5];
  if ([v6 code] == 24)
  {
    [*(a1 + 64) _onQueue_clearStateForEndpoint];
  }

  (*(*(a1 + 72) + 16))();
LABEL_28:

  v40 = *MEMORY[0x1E69E9840];
}

- (void)_resolveForUnresolvedPlayerPath:(id)a3 requestID:(id)a4 completion:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.resolveForUnresolvedPlayerPath<%p>", objc_opt_class(), self];
  v13 = [MEMORY[0x1E695DF00] now];
  v14 = [MRBlockGuard alloc];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __81__MRV2NowPlayingController__resolveForUnresolvedPlayerPath_requestID_completion___block_invoke;
  v40[3] = &unk_1E769B6D0;
  v15 = v12;
  v41 = v15;
  v16 = v9;
  v42 = v16;
  v17 = [(MRBlockGuard *)v14 initWithTimeout:v15 reason:v40 handler:60.0];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __81__MRV2NowPlayingController__resolveForUnresolvedPlayerPath_requestID_completion___block_invoke_102;
  v37[3] = &unk_1E769C130;
  v18 = v17;
  v38 = v18;
  v19 = v10;
  v39 = v19;
  v20 = MEMORY[0x1A58E3570](v37);
  v21 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v15, v16];
  v22 = v21;
  if (v8)
  {
    [v21 appendFormat:@" for %@", v8];
  }

  v23 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = v22;
    _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  [(MRV2NowPlayingController *)self _registerForPlayerPathInvalidationsForUnresolvedPlayerPath:v8];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __81__MRV2NowPlayingController__resolveForUnresolvedPlayerPath_requestID_completion___block_invoke_103;
  v30[3] = &unk_1E769D480;
  v31 = v8;
  v32 = v15;
  v33 = v16;
  v34 = v13;
  v35 = self;
  v36 = v20;
  v24 = v20;
  v25 = v13;
  v26 = v16;
  v27 = v15;
  v28 = v8;
  [(MRV2NowPlayingController *)self _resolvePlayerPath:v28 requestID:v26 completion:v30];

  v29 = *MEMORY[0x1E69E9840];
}

void __81__MRV2NowPlayingController__resolveForUnresolvedPlayerPath_requestID_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543874;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    v10 = 2112;
    v11 = @"Its been 60 seconds and still waiting for response..";
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v6, 0x20u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __81__MRV2NowPlayingController__resolveForUnresolvedPlayerPath_requestID_completion___block_invoke_102(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 disarm];
  (*(*(a1 + 40) + 16))();
}

void __81__MRV2NowPlayingController__resolveForUnresolvedPlayerPath_requestID_completion___block_invoke_103(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (v5 && !v6)
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        v12 = *(a1 + 40);
        v11 = *(a1 + 48);
        v13 = *(a1 + 32);
        v14 = [MEMORY[0x1E695DF00] date];
        [v14 timeIntervalSinceDate:*(a1 + 56)];
        v38 = 138544386;
        v39 = v12;
        v40 = 2114;
        v41 = v11;
        v42 = 2112;
        v43 = v5;
        v44 = 2114;
        v45 = v13;
        v46 = 2048;
        v47 = v15;
        v16 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v17 = v9;
        v18 = 52;
LABEL_16:
        _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, v16, &v38, v18);
      }

LABEL_17:

      [*(a1 + 64) onQueue_setResolvedPlayerPath:v5];
      v33 = *(*(a1 + 72) + 16);
      goto LABEL_23;
    }

    if (!v10)
    {
      goto LABEL_17;
    }

    v30 = *(a1 + 40);
    v31 = *(a1 + 48);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    v38 = 138544130;
    v39 = v30;
    v40 = 2114;
    v41 = v31;
    v42 = 2112;
    v43 = v5;
    v44 = 2048;
    v45 = v32;
    v16 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_15:
    v17 = v9;
    v18 = 42;
    goto LABEL_16;
  }

  if (!v6)
  {
    v25 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!v7)
    {
      if (!v25)
      {
        goto LABEL_17;
      }

      v35 = *(a1 + 40);
      v36 = *(a1 + 48);
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:*(a1 + 56)];
      v38 = 138543874;
      v39 = v35;
      v40 = 2114;
      v41 = v36;
      v42 = 2048;
      v43 = v37;
      v16 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v17 = v9;
      v18 = 32;
      goto LABEL_16;
    }

    if (!v25)
    {
      goto LABEL_17;
    }

    v27 = *(a1 + 40);
    v26 = *(a1 + 48);
    v28 = *(a1 + 32);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    v38 = 138544130;
    v39 = v27;
    v40 = 2114;
    v41 = v26;
    v42 = 2114;
    v43 = v28;
    v44 = 2048;
    v45 = v29;
    v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_15;
  }

  v19 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v19)
    {
      v21 = *(a1 + 40);
      v20 = *(a1 + 48);
      v22 = *(a1 + 32);
      v23 = [MEMORY[0x1E695DF00] date];
      [v23 timeIntervalSinceDate:*(a1 + 56)];
      v38 = 138544386;
      v39 = v21;
      v40 = 2114;
      v41 = v20;
      v42 = 2114;
      v43 = v6;
      v44 = 2114;
      v45 = v22;
      v46 = 2048;
      v47 = v24;
      _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v38, 0x34u);
    }
  }

  else if (v19)
  {
    __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1(a1, v6, v9);
  }

  if ([v6 code] == 5)
  {
    [*(a1 + 64) _unregisterForPlayerPathInvalidations];
    [*(a1 + 64) _onQueue_clearStateForUnresolvedPlayerPath];
  }

  v33 = *(*(a1 + 72) + 16);
LABEL_23:
  v33();

  v34 = *MEMORY[0x1E69E9840];
}

- (void)_loadNowPlayingStateForResolvedPlayerPath:(id)a3 requestID:(id)a4 completion:(id)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(v12);

  if (([v9 isResolved] & 1) == 0)
  {
    [MRV2NowPlayingController _loadNowPlayingStateForResolvedPlayerPath:a2 requestID:self completion:?];
  }

  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.LoadForResolvedPlayerPath<%p>", objc_opt_class(), self];
  v14 = [MEMORY[0x1E695DF00] now];
  v15 = [MRBlockGuard alloc];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __91__MRV2NowPlayingController__loadNowPlayingStateForResolvedPlayerPath_requestID_completion___block_invoke;
  v49[3] = &unk_1E769B6D0;
  v16 = v13;
  v50 = v16;
  v17 = v10;
  v51 = v17;
  v18 = [(MRBlockGuard *)v15 initWithTimeout:v16 reason:v49 handler:60.0];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __91__MRV2NowPlayingController__loadNowPlayingStateForResolvedPlayerPath_requestID_completion___block_invoke_110;
  v42[3] = &unk_1E769D4D0;
  v19 = v9;
  v43 = v19;
  v20 = v16;
  v44 = v20;
  v21 = v17;
  v45 = v21;
  v22 = v14;
  v46 = v22;
  v23 = v18;
  v47 = v23;
  v24 = v11;
  v48 = v24;
  v25 = MEMORY[0x1A58E3570](v42);
  v26 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v20, v21];
  v27 = v26;
  if (v19)
  {
    [v26 appendFormat:@" for %@", v19];
  }

  v28 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v53 = v27;
    _os_log_impl(&dword_1A2860000, v28, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  [(MRV2NowPlayingController *)self _registerNotificationHandlersForResolvedPlayerPath:v19];
  v41 = 0;
  v29 = [(MRV2NowPlayingController *)self _loadNowPlayingStateForPlayerPath:v19 error:&v41];
  v30 = v41;
  if (!v30 && [(MRV2NowPlayingController *)self shouldDeferArtworkRequestForConfiguration:self->_configuration])
  {
    [(MRV2NowPlayingController *)self cancelableOperations];
    v31 = v36 = v22;
    v35 = [(MRV2NowPlayingController *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__MRV2NowPlayingController__loadNowPlayingStateForResolvedPlayerPath_requestID_completion___block_invoke_111;
    block[3] = &unk_1E769BA00;
    v38 = v29;
    v39 = self;
    v40 = v31;
    v32 = v31;
    v22 = v36;
    v34 = v32;
    dispatch_async(v35, block);
  }

  (v25)[2](v25, v29, v30);

  v33 = *MEMORY[0x1E69E9840];
}

void __91__MRV2NowPlayingController__loadNowPlayingStateForResolvedPlayerPath_requestID_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543874;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    v10 = 2112;
    v11 = @"Its been 60 seconds and still waiting for response..";
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v6, 0x20u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __91__MRV2NowPlayingController__loadNowPlayingStateForResolvedPlayerPath_requestID_completion___block_invoke_110(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (!v6)
  {
    v16 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v16)
      {
        goto LABEL_14;
      }

      v18 = *(a1 + 40);
      v17 = *(a1 + 48);
      v19 = *(a1 + 32);
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:*(a1 + 56)];
      v28 = 138544130;
      v29 = v18;
      v30 = 2114;
      v31 = v17;
      v32 = 2114;
      v33 = v19;
      v34 = 2048;
      v35 = v20;
      v21 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v22 = v9;
      v23 = 42;
    }

    else
    {
      if (!v16)
      {
        goto LABEL_14;
      }

      v24 = *(a1 + 40);
      v25 = *(a1 + 48);
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:*(a1 + 56)];
      v28 = 138543874;
      v29 = v24;
      v30 = 2114;
      v31 = v25;
      v32 = 2048;
      v33 = v26;
      v21 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v22 = v9;
      v23 = 32;
    }

    _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, v21, &v28, v23);
    goto LABEL_13;
  }

  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v10)
    {
      v12 = *(a1 + 40);
      v11 = *(a1 + 48);
      v13 = *(a1 + 32);
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:*(a1 + 56)];
      v28 = 138544386;
      v29 = v12;
      v30 = 2114;
      v31 = v11;
      v32 = 2114;
      v33 = v6;
      v34 = 2114;
      v35 = v13;
      v36 = 2048;
      v37 = v15;
      _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v28, 0x34u);
LABEL_13:
    }
  }

  else if (v10)
  {
    __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1(a1, v6, v9);
  }

LABEL_14:

  [*(a1 + 64) disarm];
  (*(*(a1 + 72) + 16))();

  v27 = *MEMORY[0x1E69E9840];
}

void __91__MRV2NowPlayingController__loadNowPlayingStateForResolvedPlayerPath_requestID_completion___block_invoke_111(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackQueue];
  v3 = [v2 contentItems];
  v4 = [v3 msv_map:&__block_literal_global_114_0];

  [*(a1 + 40) _requestPlaybackQueueArtworkForIdentifiers:v4 operationQueue:*(a1 + 48)];
}

- (id)_loadNowPlayingStateForPlayerPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = __Block_byref_object_copy__11;
  v87 = __Block_byref_object_dispose__11;
  v88 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__11;
  v81 = __Block_byref_object_dispose__11;
  v82 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__11;
  v75 = __Block_byref_object_dispose__11;
  v76 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__11;
  v69 = __Block_byref_object_dispose__11;
  v70 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__11;
  v63 = __Block_byref_object_dispose__11;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__11;
  v57 = __Block_byref_object_dispose__11;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__11;
  v51 = __Block_byref_object_dispose__11;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__11;
  v45 = __Block_byref_object_dispose__11;
  v46 = 0;
  v7 = dispatch_group_create();
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.MediaRemote.MRV2NowPlayingController.callbackQueue", v8);

  v10 = [(MRV2NowPlayingController *)self configuration];
  v11 = [v10 requestSupportedCommands];

  if (v11)
  {
    dispatch_group_enter(v7);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __68__MRV2NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke;
    v37[3] = &unk_1E769C158;
    v39 = &v71;
    v40 = &v65;
    v38 = v7;
    [(MRV2NowPlayingController *)self _requestSupportedCommandsForPlayerPath:v6 queue:v9 completion:v37];
  }

  v12 = [(MRV2NowPlayingController *)self configuration];
  v13 = [v12 requestPlaybackState];

  if (v13)
  {
    dispatch_group_enter(v7);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __68__MRV2NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_2;
    v34[3] = &unk_1E769C180;
    v36 = &v89;
    v35 = v7;
    MRMediaRemoteGetPlaybackStateForPlayer(v6, v9, v34);
  }

  v14 = [(MRV2NowPlayingController *)self configuration];
  v15 = [v14 playbackQueueRequest];

  if (v15)
  {
    dispatch_group_enter(v7);
    v16 = [(MRV2NowPlayingController *)self effectivePlaybackQueueRequest];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __68__MRV2NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_3;
    v30[3] = &unk_1E769D4F8;
    v32 = &v83;
    v33 = &v77;
    v31 = v7;
    [(MRV2NowPlayingController *)self _requestPlaybackQueueForPlayerPath:v6 request:v16 queue:v9 completion:v30];
  }

  if ([(MRNowPlayingControllerConfiguration *)self->_configuration requestLastPlayingDate])
  {
    dispatch_group_enter(v7);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __68__MRV2NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_4;
    v26[3] = &unk_1E769D520;
    v28 = &v59;
    v29 = &v53;
    v27 = v7;
    [(MRV2NowPlayingController *)self _requestPlayerLastPlayingDateForPlayerPath:v6 queue:v9 completion:v26];
  }

  if ([(MRNowPlayingControllerConfiguration *)self->_configuration requestClientProperties])
  {
    dispatch_group_enter(v7);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __68__MRV2NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_5;
    v22[3] = &unk_1E769D548;
    v24 = &v47;
    v25 = &v41;
    v23 = v7;
    [(MRV2NowPlayingController *)self _requestClientPropertiesForPlayerPath:v6 queue:v9 completion:v22];
  }

  v17 = dispatch_time(0, 5000000000);
  if (dispatch_group_wait(v7, v17))
  {
    if (a4)
    {
      v18 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:26];
LABEL_20:
      v20 = 0;
      *a4 = v18;
      goto LABEL_22;
    }

LABEL_21:
    v20 = 0;
    goto LABEL_22;
  }

  v19 = v78[5];
  if (v19 || (v19 = v66[5]) != 0 || (v19 = v54[5]) != 0 || (v19 = v42[5]) != 0)
  {
    if (a4)
    {
      v18 = v19;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v20 = objc_alloc_init(MRNowPlayingPlayerResponse);
  [(MRNowPlayingPlayerResponse *)v20 setPlaybackQueue:v84[5]];
  [(MRNowPlayingPlayerResponse *)v20 setPlaybackState:*(v90 + 6)];
  [(MRNowPlayingPlayerResponse *)v20 setSupportedCommands:v72[5]];
  [(MRNowPlayingPlayerResponse *)v20 setPlayerLastPlayingDate:v60[5]];
  [(MRNowPlayingPlayerResponse *)v20 setClientProperties:v48[5]];
LABEL_22:

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);

  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v71, 8);

  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v83, 8);

  _Block_object_dispose(&v89, 8);

  return v20;
}

void __68__MRV2NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __68__MRV2NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
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

void __68__MRV2NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_4(uint64_t a1, void *a2, void *a3)
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

void __68__MRV2NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_5(uint64_t a1, void *a2, void *a3)
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

- (void)_requestPlaybackQueueForPlayerPath:(id)a3 request:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [(MRV2NowPlayingController *)self setRequestingQueue:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __88__MRV2NowPlayingController__requestPlaybackQueueForPlayerPath_request_queue_completion___block_invoke;
  v15[3] = &unk_1E769C1F8;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync(v12, v13, v11, v15);
}

void __88__MRV2NowPlayingController__requestPlaybackQueueForPlayerPath_request_queue_completion___block_invoke(uint64_t a1, void *a2)
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

- (void)_requestContentItemArtwork:(id)a3 forPlayerPath:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[MRPlaybackQueueRequest alloc] initWithIdentifiers:v13];

  v15 = [(MRNowPlayingControllerConfiguration *)self->_configuration playbackQueueRequest];
  [v15 artworkHeight];
  [(MRPlaybackQueueRequest *)v14 setArtworkHeight:?];

  v16 = [(MRNowPlayingControllerConfiguration *)self->_configuration playbackQueueRequest];
  [v16 artworkWidth];
  [(MRPlaybackQueueRequest *)v14 setArtworkWidth:?];

  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  v18 = [(MRV2NowPlayingController *)self label];
  v19 = [v17 initWithFormat:@"artworkRequest<%@>", v18];
  [(MRPlaybackQueueRequest *)v14 setLabel:v19];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __86__MRV2NowPlayingController__requestContentItemArtwork_forPlayerPath_queue_completion___block_invoke;
  v21[3] = &unk_1E769C298;
  v22 = v10;
  v20 = v10;
  MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync(v14, v12, v11, v21);
}

- (void)_requestSupportedCommandsForPlayerPath:(id)a3 queue:(id)a4 completion:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__MRV2NowPlayingController__requestSupportedCommandsForPlayerPath_queue_completion___block_invoke;
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
  v12[2] = __88__MRV2NowPlayingController__requestPlayerLastPlayingDateForPlayerPath_queue_completion___block_invoke;
  v12[3] = &unk_1E769C310;
  v13 = v7;
  v11 = v7;
  [(MRNowPlayingRequest *)v10 requestLastPlayingDateOnQueue:v8 completion:v12];
}

- (void)_requestClientPropertiesForPlayerPath:(id)a3 queue:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 client];
  v11 = [v9 origin];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__MRV2NowPlayingController__requestClientPropertiesForPlayerPath_queue_completion___block_invoke;
  v13[3] = &unk_1E769D570;
  v14 = v7;
  v12 = v7;
  MRMediaRemoteGetClientProperties(v10, v11, v8, v13);
}

- (void)_onQueue_retrieveEndpointForContextUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [MRRequestDetails alloc];
  v10 = [(MRV2NowPlayingController *)self label];
  v13 = [(MRRequestDetails *)v9 initWithInitiator:@"Infer" requestID:0 reason:v10];

  v11 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
  v12 = [(MRV2NowPlayingController *)self queue];
  [(MRAVLightweightReconnaissanceSession *)v11 searchEndpointsForRoutingContextUID:v7 timeout:v13 details:v12 queue:v6 completion:7.0];
}

- (void)_onQueue_retrieveEndpointForUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(MRNowPlayingControllerConfiguration *)self->_configuration discoveryPredicate];

  if (v9)
  {
    v10 = [(MRNowPlayingControllerConfiguration *)self->_configuration discoveryPredicate];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __71__MRV2NowPlayingController__onQueue_retrieveEndpointForUID_completion___block_invoke;
    v25[3] = &unk_1E769C360;
    v25[4] = self;
    v26 = v7;
    (v10)[2](v10, v25);

    v11 = v26;
  }

  else if ([v6 isEqualToString:@"proactiveEndpoint"])
  {
    v12 = [(MRV2NowPlayingController *)self queue];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __71__MRV2NowPlayingController__onQueue_retrieveEndpointForUID_completion___block_invoke_3;
    v23[3] = &unk_1E769C338;
    v24 = v7;
    MRAVEndpointResolveActiveSystemEndpointWithType(1, v12, v23, 7.0);

    v11 = v24;
  }

  else
  {
    if (![v6 isEqualToString:@"userSelectedEndpoint"])
    {
      v14 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
      v15 = [(MRV2NowPlayingController *)self label];
      v16 = [(MRV2NowPlayingController *)self queue];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __71__MRV2NowPlayingController__onQueue_retrieveEndpointForUID_completion___block_invoke_5;
      v18[3] = &unk_1E769C360;
      v19 = v14;
      v20 = v7;
      v17 = v14;
      [(MRAVLightweightReconnaissanceSession *)v17 searchEndpointsForOutputDeviceUID:v6 timeout:v15 reason:v16 queue:v18 completion:7.0];

      goto LABEL_8;
    }

    v13 = [(MRV2NowPlayingController *)self queue];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __71__MRV2NowPlayingController__onQueue_retrieveEndpointForUID_completion___block_invoke_4;
    v21[3] = &unk_1E769C338;
    v22 = v7;
    MRAVEndpointResolveActiveSystemEndpointWithType(0, v13, v21, 7.0);

    v11 = v22;
  }

LABEL_8:
}

void __71__MRV2NowPlayingController__onQueue_retrieveEndpointForUID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__MRV2NowPlayingController__onQueue_retrieveEndpointForUID_completion___block_invoke_2;
  block[3] = &unk_1E769AC18;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __71__MRV2NowPlayingController__onQueue_retrieveEndpointForUID_completion___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = objc_alloc(MEMORY[0x1E696ABC0]);
    v12 = *MEMORY[0x1E696AA08];
    v13[0] = v6;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [v8 initWithMRError:47 userInfo:v9];
  }

  else
  {
    v10 = 0;
  }

  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_createUnresolvedPlayerPathForEndpoint:(id)a3 client:(id)a4 player:(id)a5 completion:(id)a6
{
  v27[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26 = @"MREndpointConnectionReasonUserInfoKey";
  v14 = [(MRV2NowPlayingController *)self label];
  v27[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __92__MRV2NowPlayingController__createUnresolvedPlayerPathForEndpoint_client_player_completion___block_invoke;
  v21[3] = &unk_1E769AF98;
  v24 = v12;
  v25 = v13;
  v21[4] = self;
  v22 = v10;
  v23 = v11;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v19 = v13;
  [v18 connectToExternalDeviceWithUserInfo:v15 completion:v21];

  v20 = *MEMORY[0x1E69E9840];
}

void __92__MRV2NowPlayingController__createUnresolvedPlayerPathForEndpoint_client_player_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__MRV2NowPlayingController__createUnresolvedPlayerPathForEndpoint_client_player_completion___block_invoke_2;
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

void __92__MRV2NowPlayingController__createUnresolvedPlayerPathForEndpoint_client_player_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 64);
    v3 = *(*(a1 + 64) + 16);

    v3();
  }

  else
  {
    v9 = [*(a1 + 40) origin];
    if (v9)
    {
      v4 = [MRPlayerPath alloc];
      v5 = [*(a1 + 40) origin];
      v6 = [(MRPlayerPath *)v4 initWithOrigin:v5 client:*(a1 + 48) player:*(a1 + 56)];

      v7 = *(*(a1 + 64) + 16);
    }

    else
    {
      v8 = *(a1 + 64);
      v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:5 description:@"Endpoint.Connect succeded with no origin"];
      v7 = *(v8 + 16);
    }

    v7();
  }
}

- (void)_resolvePlayerPath:(id)a3 requestID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MRV2NowPlayingController *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__MRV2NowPlayingController__resolvePlayerPath_requestID_completion___block_invoke;
  v13[3] = &unk_1E769C590;
  v14 = v8;
  v12 = v8;
  MRMediaRemoteNowPlayingResolvePlayerPathWithID(v10, v9, 1, v11, v13);
}

void __68__MRV2NowPlayingController__resolvePlayerPath_requestID_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = v5;
  if (a3)
  {
    v6 = *(*(a1 + 32) + 16);
LABEL_5:
    v6();
    goto LABEL_6;
  }

  if ([v5 isResolved])
  {
    v6 = *(*(a1 + 32) + 16);
    goto LABEL_5;
  }

  Error = MRMediaRemoteNowPlayingPlayerPathCreateError(v8);
  (*(*(a1 + 32) + 16))();

LABEL_6:
}

- (void)onQueue_setResolvedPlayerPath:(id)a3
{
  v8 = a3;
  v4 = [(MRV2NowPlayingController *)self queue];

  if (v4)
  {
    v5 = [(MRV2NowPlayingController *)self queue];
    dispatch_assert_queue_V2(v5);
  }

  v6 = [(MRDestination *)self->_destination playerPath];
  if (v6 == v8)
  {
  }

  else
  {
    v7 = [v8 isEqual:v6];

    if ((v7 & 1) == 0)
    {
      [(MRDestination *)self->_destination setPlayerPath:v8];
    }
  }

  [(MRV2NowPlayingController *)self _notifyDelegateOfPlayerPathChange:v8];
}

- (void)setHelper:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  helper = obj->_helper;
  obj->_helper = v4;

  objc_sync_exit(obj);
}

- (void)_notifyDelegateOfNewResponse:(id)a3
{
  v7 = a3;
  v4 = [(MRV2NowPlayingController *)self helper];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 didLoadResponse];
    (v6)[2](v6, v7);
  }
}

- (void)_notifyDelegateOfPlaybackQueueChange:(id)a3
{
  v7 = a3;
  v4 = [(MRV2NowPlayingController *)self helper];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 playbackQueueDidChange];
    (v6)[2](v6, v7);
  }
}

- (void)_notifyDelegateOfUpdatedContentItemsWithContentItems:(id)a3
{
  v7 = a3;
  v4 = [(MRV2NowPlayingController *)self helper];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 contentItemsDidUpdate];
    (v6)[2](v6, v7);
  }
}

- (void)_notifyDelegateOfUpdatedArtwork:(id)a3
{
  v7 = a3;
  v4 = [(MRV2NowPlayingController *)self helper];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 contentItemsDidLoadArtwork];
    (v6)[2](v6, v7);
  }
}

- (void)_notifyDelegateOfSupportedCommandsChange:(id)a3
{
  v7 = a3;
  v4 = [(MRV2NowPlayingController *)self helper];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 supportedCommandsDidChange];
    (v6)[2](v6, v7);
  }
}

- (void)_notifyDelegateOfUpdatedPlayerLastPlayingDate:(id)a3
{
  v7 = a3;
  v4 = [(MRV2NowPlayingController *)self helper];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 playerLastPlayingDateDidChange];
    (v6)[2](v6, v7);
  }
}

- (void)_notifyDelegateOfUpdatedClientProperties:(id)a3
{
  v7 = a3;
  v4 = [(MRV2NowPlayingController *)self helper];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 clientPropertiesDidChange];
    (v6)[2](v6, v7);
  }
}

- (void)_notifyDelegateOfPlayerPathChange:(id)a3
{
  v7 = a3;
  v4 = [(MRV2NowPlayingController *)self helper];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 playerPathDidChange];
    (v6)[2](v6, v7);
  }
}

- (void)_notifyDelegateOfError:(id)a3
{
  v7 = a3;
  v4 = [(MRV2NowPlayingController *)self helper];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 didFailWithError];
    (v6)[2](v6, v7);
  }
}

- (void)_handlePlaybackQueueChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(MRV2NowPlayingController *)self cancelableOperations];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__MRV2NowPlayingController__handlePlaybackQueueChangedNotification___block_invoke;
  v8[3] = &unk_1E769BA00;
  v9 = v4;
  v10 = self;
  v11 = v5;
  v6 = v5;
  v7 = v4;
  [v6 addOperationWithBlock:v8];
}

void __68__MRV2NowPlayingController__handlePlaybackQueueChangedNotification___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v4 = [*(*(a1 + 40) + 32) resolvedPlayerPath];
  v5 = v4;
  if (v4 == v3)
  {
  }

  else
  {
    v6 = [v4 isEqual:v3];

    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v7 = +[MRUserSettings currentSettings];
  v8 = [v7 verboseNowPlayingControllerLogging];
  v9 = _MRLogForCategory(1uLL);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      *buf = 138412290;
      v26 = v11;
      _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] <%@> processing PlaybackQueueDidChangeNotification.", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __68__MRV2NowPlayingController__handlePlaybackQueueChangedNotification___block_invoke_cold_1((a1 + 40));
  }

  v12 = [*(a1 + 40) deferredContentItemsToMerge];
  [v12 removeAllObjects];

  v13 = *(a1 + 40);
  v14 = [v13[4] resolvedPlayerPath];
  v15 = [*(a1 + 40) configuration];
  v16 = [v15 playbackQueueRequest];
  v17 = [v16 requestByRemovingArtwork];
  v18 = [*(a1 + 48) dispatchQueue];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __68__MRV2NowPlayingController__handlePlaybackQueueChangedNotification___block_invoke_139;
  v22[3] = &unk_1E769D598;
  v19 = *(a1 + 48);
  v20 = *(a1 + 40);
  v23 = v19;
  v24 = v20;
  [v13 _requestPlaybackQueueForPlayerPath:v14 request:v17 queue:v18 completion:v22];

LABEL_11:
  v21 = *MEMORY[0x1E69E9840];
}

void __68__MRV2NowPlayingController__handlePlaybackQueueChangedNotification___block_invoke_139(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (([*(a1 + 32) isInvalidated] & 1) == 0)
  {
    v6 = *(a1 + 40);
    if (v5)
    {
      [v6 _notifyDelegateOfError:v5];
    }

    else
    {
      v7 = [v6 configuration];
      v8 = [v7 playbackQueueRequest];
      v9 = [v8 includeArtwork];

      if (v9)
      {
        v10 = *(a1 + 40);
        v11 = [v12 contentItemIdentifiers];
        [v10 _requestPlaybackQueueArtworkForIdentifiers:v11 operationQueue:*(a1 + 32)];
      }

      [*(a1 + 40) _notifyDelegateOfPlaybackQueueChange:v12];
    }
  }
}

- (void)_handlePlaybackQueueContentItemsChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(MRV2NowPlayingController *)self cancelableOperations];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__MRV2NowPlayingController__handlePlaybackQueueContentItemsChangedNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 addOperationWithBlock:v7];
}

void __80__MRV2NowPlayingController__handlePlaybackQueueContentItemsChangedNotification___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v4 = (a1 + 40);
  v5 = [*(*(a1 + 40) + 32) resolvedPlayerPath];
  v6 = v5;
  if (v5 == v3)
  {
  }

  else
  {
    v7 = [v5 isEqual:v3];

    if (!v7)
    {
      goto LABEL_19;
    }
  }

  v8 = [*(a1 + 32) userInfo];
  v9 = [v8 objectForKeyedSubscript:@"kMRMediaRemoteUpdatedContentItemsUserInfoKey"];

  v10 = [v9 mr_compactMap:&__block_literal_global_141_0];
  v11 = [*(a1 + 40) requestingQueue];
  v12 = +[MRUserSettings currentSettings];
  v13 = [v12 verboseNowPlayingControllerLogging];
  v14 = _MRLogForCategory(1uLL);
  v15 = v14;
  if (v11)
  {
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *v4;
        v20 = 138412546;
        v21 = v16;
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] <%@> deferring PlaybackQueueContentItemsChangedNotification for content items %@ because we are requesting a new playback queue.", &v20, 0x16u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __80__MRV2NowPlayingController__handlePlaybackQueueContentItemsChangedNotification___block_invoke_cold_2(v4);
    }

    v18 = [*v4 deferredContentItemsToMerge];
    [v18 addObjectsFromArray:v9];
  }

  else
  {
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *v4;
        v20 = 138412546;
        v21 = v17;
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] <%@> processing PlaybackQueueContentItemsChangedNotification for content items %@.", &v20, 0x16u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __80__MRV2NowPlayingController__handlePlaybackQueueContentItemsChangedNotification___block_invoke_cold_1(v4);
    }

    [*v4 _notifyDelegateOfUpdatedContentItemsWithContentItems:v9];
  }

LABEL_19:
  v19 = *MEMORY[0x1E69E9840];
}

- (void)_handlePlaybackQueueContentItemsArtworkChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(MRV2NowPlayingController *)self cancelableOperations];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__MRV2NowPlayingController__handlePlaybackQueueContentItemsArtworkChangedNotification___block_invoke;
  v8[3] = &unk_1E769BA00;
  v9 = v4;
  v10 = self;
  v11 = v5;
  v6 = v5;
  v7 = v4;
  [v6 addOperationWithBlock:v8];
}

void __87__MRV2NowPlayingController__handlePlaybackQueueContentItemsArtworkChangedNotification___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v4 = (a1 + 40);
  v5 = [*(*(a1 + 40) + 32) resolvedPlayerPath];
  v6 = v5;
  if (v5 != v3 && ([v5 isEqual:v3] & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  v7 = [*(*v4 + 40) playbackQueueRequest];
  v8 = [v7 includeArtwork];

  if (v8)
  {
    v9 = [*(a1 + 32) userInfo];
    v6 = [v9 objectForKeyedSubscript:@"kMRMediaRemoteUpdatedContentItemsUserInfoKey"];

    v10 = [v6 msv_map:&__block_literal_global_143];
    v11 = +[MRUserSettings currentSettings];
    v12 = [v11 verboseNowPlayingControllerLogging];
    v13 = _MRLogForCategory(1uLL);
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *v4;
        v17 = 138412546;
        v18 = v15;
        v19 = 2112;
        v20 = v10;
        _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] <%@> processing PlaybackQueueContentItemsArtworkChangedNotification for content items %@.", &v17, 0x16u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __87__MRV2NowPlayingController__handlePlaybackQueueContentItemsArtworkChangedNotification___block_invoke_cold_1((a1 + 40));
    }

    [*(a1 + 40) _requestPlaybackQueueArtworkForIdentifiers:v10 operationQueue:*(a1 + 48)];
    goto LABEL_10;
  }

LABEL_11:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_requestPlaybackQueueArtworkForIdentifiers:(id)a3 operationQueue:(id)a4
{
  v6 = a4;
  destination = self->_destination;
  v8 = a3;
  v9 = [(MRNowPlayingControllerDestination *)destination resolvedPlayerPath];
  v10 = [(MRV2NowPlayingController *)self queue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__MRV2NowPlayingController__requestPlaybackQueueArtworkForIdentifiers_operationQueue___block_invoke;
  v12[3] = &unk_1E769D598;
  v13 = v6;
  v14 = self;
  v11 = v6;
  [(MRV2NowPlayingController *)self _requestContentItemArtwork:v8 forPlayerPath:v9 queue:v10 completion:v12];
}

void __86__MRV2NowPlayingController__requestPlaybackQueueArtworkForIdentifiers_operationQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__MRV2NowPlayingController__requestPlaybackQueueArtworkForIdentifiers_operationQueue___block_invoke_2;
  v11[3] = &unk_1E769BA00;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  [v8 addOperationWithBlock:v11];
}

void __86__MRV2NowPlayingController__requestPlaybackQueueArtworkForIdentifiers_operationQueue___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    v8 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = [*(a1 + 48) contentItems];
      v14 = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] <%@> updated artwork for content items %@.", &v14, 0x16u);
    }

    v11 = *(a1 + 40);
    v12 = [*(a1 + 48) contentItems];
    [v11 _notifyDelegateOfUpdatedArtwork:v12];
    goto LABEL_11;
  }

  v2 = (a1 + 40);
  v3 = [*(a1 + 40) configuration];
  v4 = [v3 isArtworkOnly];

  if (!v4)
  {
    v12 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __86__MRV2NowPlayingController__requestPlaybackQueueArtworkForIdentifiers_operationQueue___block_invoke_2_cold_1(v2);
    }

LABEL_11:

    v13 = *MEMORY[0x1E69E9840];
    return;
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *MEMORY[0x1E69E9840];

  [v5 _notifyDelegateOfError:v6];
}

- (void)_handlePlaybackStateChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(MRV2NowPlayingController *)self cancelableOperations];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__MRV2NowPlayingController__handlePlaybackStateChangedNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 addOperationWithBlock:v7];
}

void __68__MRV2NowPlayingController__handlePlaybackStateChangedNotification___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v4 = (a1 + 40);
  v5 = [*(*(a1 + 40) + 32) resolvedPlayerPath];
  v6 = v5;
  if (v5 == v3)
  {
  }

  else
  {
    v7 = [v5 isEqual:v3];

    if (!v7)
    {
      goto LABEL_11;
    }
  }

  v8 = [*(a1 + 32) userInfo];
  v9 = [v8 objectForKeyedSubscript:@"kMRMediaRemotePlaybackStateUserInfoKey"];

  v10 = +[MRUserSettings currentSettings];
  v11 = [v10 verboseNowPlayingControllerLogging];
  v12 = _MRLogForCategory(1uLL);
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *v4;
      v15 = MRMediaRemoteCopyPlaybackStateDescription([v9 intValue]);
      v17 = 138412546;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] <%@> processing PlaybackStateDidChangeNotification with new PlaybackState %@.", &v17, 0x16u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __68__MRV2NowPlayingController__handlePlaybackStateChangedNotification___block_invoke_cold_1(v4, v9, v13);
  }

  [*v4 _notifyDelegateOfPlaybackStateChange:{objc_msgSend(v9, "intValue")}];
LABEL_11:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_handleSupportedCommandsChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(MRV2NowPlayingController *)self cancelableOperations];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__MRV2NowPlayingController__handleSupportedCommandsChangedNotification___block_invoke;
  v8[3] = &unk_1E769BA00;
  v9 = v4;
  v10 = self;
  v11 = v5;
  v6 = v5;
  v7 = v4;
  [v6 addOperationWithBlock:v8];
}

void __72__MRV2NowPlayingController__handleSupportedCommandsChangedNotification___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v4 = [*(*(a1 + 40) + 32) resolvedPlayerPath];
  v5 = v4;
  if (v4 == v3)
  {
  }

  else
  {
    v6 = [v4 isEqual:v3];

    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v7 = +[MRUserSettings currentSettings];
  v8 = [v7 verboseNowPlayingControllerLogging];
  v9 = _MRLogForCategory(1uLL);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      *buf = 138412290;
      v22 = v11;
      _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] <%@> processing SupportedCommandsDidChangeNotification.", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __72__MRV2NowPlayingController__handleSupportedCommandsChangedNotification___block_invoke_cold_1((a1 + 40));
  }

  v12 = *(a1 + 40);
  v13 = [v12[4] resolvedPlayerPath];
  v14 = [*(a1 + 40) queue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__MRV2NowPlayingController__handleSupportedCommandsChangedNotification___block_invoke_144;
  v18[3] = &unk_1E769A278;
  v15 = *(a1 + 48);
  v16 = *(a1 + 40);
  v19 = v15;
  v20 = v16;
  [v12 _requestSupportedCommandsForPlayerPath:v13 queue:v14 completion:v18];

LABEL_11:
  v17 = *MEMORY[0x1E69E9840];
}

void __72__MRV2NowPlayingController__handleSupportedCommandsChangedNotification___block_invoke_144(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__MRV2NowPlayingController__handleSupportedCommandsChangedNotification___block_invoke_2;
  v11[3] = &unk_1E769BA00;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  [v8 addOperationWithBlock:v11];
}

uint64_t __72__MRV2NowPlayingController__handleSupportedCommandsChangedNotification___block_invoke_2(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    return [v2 _notifyDelegateOfError:?];
  }

  else
  {
    return [v2 _notifyDelegateOfSupportedCommandsChange:a1[6]];
  }
}

- (void)_handleClientStateDidChange:(id)a3
{
  v4 = a3;
  v5 = [(MRV2NowPlayingController *)self cancelableOperations];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__MRV2NowPlayingController__handleClientStateDidChange___block_invoke;
  v8[3] = &unk_1E769BA00;
  v9 = v4;
  v10 = self;
  v11 = v5;
  v6 = v5;
  v7 = v4;
  [v6 addOperationWithBlock:v8];
}

void __56__MRV2NowPlayingController__handleClientStateDidChange___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v4 = [*(*(a1 + 40) + 32) resolvedPlayerPath];
  v5 = v4;
  if (v4 == v3)
  {
  }

  else
  {
    v6 = [v4 isEqual:v3];

    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v7 = +[MRUserSettings currentSettings];
  v8 = [v7 verboseNowPlayingControllerLogging];
  v9 = _MRLogForCategory(1uLL);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      *buf = 138412290;
      v22 = v11;
      _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] <%@> processing clientStateDidChange.", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __56__MRV2NowPlayingController__handleClientStateDidChange___block_invoke_cold_1((a1 + 40));
  }

  v12 = *(a1 + 40);
  v13 = [v12[4] resolvedPlayerPath];
  v14 = [*(a1 + 40) queue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __56__MRV2NowPlayingController__handleClientStateDidChange___block_invoke_145;
  v18[3] = &unk_1E769D5C0;
  v15 = *(a1 + 48);
  v16 = *(a1 + 40);
  v19 = v15;
  v20 = v16;
  [v12 _requestClientPropertiesForPlayerPath:v13 queue:v14 completion:v18];

LABEL_11:
  v17 = *MEMORY[0x1E69E9840];
}

void __56__MRV2NowPlayingController__handleClientStateDidChange___block_invoke_145(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__MRV2NowPlayingController__handleClientStateDidChange___block_invoke_2;
  v11[3] = &unk_1E769BA00;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  [v8 addOperationWithBlock:v11];
}

uint64_t __56__MRV2NowPlayingController__handleClientStateDidChange___block_invoke_2(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    return [v2 _notifyDelegateOfError:?];
  }

  else
  {
    return [v2 _notifyDelegateOfUpdatedClientProperties:a1[6]];
  }
}

- (void)_handleActiveSystemEndpointChangedNotification:(id)a3
{
  v4 = [(MRV2NowPlayingController *)self configuration];
  v5 = [v4 destination];
  v6 = [v5 outputDeviceUID];
  if ([v6 isEqualToString:@"proactiveEndpoint"])
  {
  }

  else
  {
    v7 = [(MRV2NowPlayingController *)self configuration];
    v8 = [v7 destination];
    v9 = [v8 outputDeviceUID];
    v10 = [v9 isEqualToString:@"userSelectedEndpoint"];

    if (!v10)
    {
      return;
    }
  }

  [(MRV2NowPlayingController *)self _handleEndpointChanged];
}

- (void)_registerForEndpointChangesForOutputDeviceUID:(id)a3
{
  v4 = a3;
  v5 = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(v5);

  if ([(MRV2NowPlayingController *)self shouldObserveInvalidations]&& ![(MRV2NowPlayingController *)self registeredForEndpointChanges])
  {
    if (([v4 isEqualToString:@"proactiveEndpoint"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"userSelectedEndpoint"))
    {
      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      [v6 addObserver:self selector:sel__handleActiveSystemEndpointChangedNotification_ name:@"kMRMediaRemoteActiveSystemEndpointDidChangeNotification" object:0];
    }

    else
    {
      objc_initWeak(&location, self);
      v7 = [MRAVEndpointObserver alloc];
      v8 = [(MRV2NowPlayingController *)self label];
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __74__MRV2NowPlayingController__registerForEndpointChangesForOutputDeviceUID___block_invoke;
      v15 = &unk_1E769C470;
      objc_copyWeak(&v16, &location);
      v9 = [(MRAVEndpointObserver *)v7 initWithOutputDeviceUID:v4 label:v8 callback:&v12];
      endpointObserver = self->_endpointObserver;
      self->_endpointObserver = v9;

      v11 = [(MRV2NowPlayingController *)self endpointObserver:v12];
      [v11 begin];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    [(MRV2NowPlayingController *)self setRegisteredForEndpointChanges:1];
  }
}

void __74__MRV2NowPlayingController__registerForEndpointChangesForOutputDeviceUID___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _handleEndpointChangedToEndpoint:a2];
    WeakRetained = v4;
  }
}

- (void)_registerForEndpointInvalidations:(id)a3
{
  v6 = a3;
  v4 = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(v4);

  if ([(MRV2NowPlayingController *)self shouldObserveInvalidations]&& ![(MRV2NowPlayingController *)self registeredForEndpointInvalidations])
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:self selector:sel__handleEndpointDidDisconnectNotification_ name:@"MRAVEndpointDidDisconnectNotification" object:v6];

    [(MRV2NowPlayingController *)self setRegisteredForEndpointInvalidations:1];
  }
}

- (void)_registerForPlayerPathInvalidationsForUnresolvedPlayerPath:(id)a3
{
  v4 = a3;
  v5 = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(v5);

  if ([(MRV2NowPlayingController *)self shouldObserveInvalidations]&& ![(MRV2NowPlayingController *)self registeredForPlayerPathInvalidations])
  {
    objc_initWeak(&location, self);
    v6 = [MRNowPlayingPlayerPathInvalidationHandler alloc];
    v7 = [(MRV2NowPlayingController *)self queue];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __87__MRV2NowPlayingController__registerForPlayerPathInvalidationsForUnresolvedPlayerPath___block_invoke;
    v14 = &unk_1E769C448;
    objc_copyWeak(&v15, &location);
    v8 = [(MRNowPlayingPlayerPathInvalidationHandler *)v6 initWithPlayerPath:v4 invalidateImmediatlyIfInvalid:0 queue:v7 invalidationCallback:&v11];

    v9 = [MRMediaRemoteServiceClient sharedServiceClient:v11];
    v10 = [v9 addPlayerPathInvalidationHandler:v8];
    [(MRV2NowPlayingController *)self setPlayerPathInvalidationObserver:v10];

    [(MRV2NowPlayingController *)self setRegisteredForPlayerPathInvalidations:1];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __87__MRV2NowPlayingController__registerForPlayerPathInvalidationsForUnresolvedPlayerPath___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _handlePlayerPathInvalidatedWithPlayerPath:a2];
    WeakRetained = v4;
  }
}

- (void)_registerNotificationHandlersForResolvedPlayerPath:(id)a3
{
  v24 = a3;
  v4 = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = self;
  objc_sync_enter(v5);
  [(MRV2NowPlayingControllerOperationQueue *)v5->_cancelableOperations invalidate];
  v6 = [MRV2NowPlayingControllerOperationQueue alloc];
  v7 = [(MRV2NowPlayingController *)v5 queue];
  v8 = [(MRV2NowPlayingControllerOperationQueue *)v6 initWithDispatchQueue:v7];
  cancelableOperations = v5->_cancelableOperations;
  v5->_cancelableOperations = v8;

  objc_sync_exit(v5);
  if ([(MRV2NowPlayingController *)v5 shouldObserveInvalidations]&& ![(MRV2NowPlayingController *)v5 registeredForNotifications])
  {
    MRMediaRemoteSetWantsNowPlayingNotifications(1);
    MRMediaRemoteSetWantsSupportedCommandsChangedNotifications(1);
    v10 = [(MRV2NowPlayingController *)v5 configuration];
    v11 = [v10 playbackQueueRequest];

    if (v11)
    {
      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      [v12 addObserver:v5 selector:sel__handlePlaybackQueueChangedNotification_ name:@"kMRPlayerPlaybackQueueChangedNotification" object:0];

      v13 = [MEMORY[0x1E696AD88] defaultCenter];
      [v13 addObserver:v5 selector:sel__handlePlaybackQueueContentItemsChangedNotification_ name:@"kMRPlayerPlaybackQueueContentItemsChangedNotification" object:0];

      v14 = [MEMORY[0x1E696AD88] defaultCenter];
      [v14 addObserver:v5 selector:sel__handlePlaybackQueueContentItemsArtworkChangedNotification_ name:@"kMRPlayerPlaybackQueueContentItemArtworkChangedNotification" object:0];
    }

    v15 = [(MRV2NowPlayingController *)v5 configuration];
    v16 = [v15 requestPlaybackState];

    if (v16)
    {
      v17 = [MEMORY[0x1E696AD88] defaultCenter];
      [v17 addObserver:v5 selector:sel__handlePlaybackStateChangedNotification_ name:@"_kMRMediaRemotePlayerPlaybackStateDidChangeNotification" object:0];
    }

    v18 = [(MRV2NowPlayingController *)v5 configuration];
    v19 = [v18 requestSupportedCommands];

    if (v19)
    {
      v20 = [MEMORY[0x1E696AD88] defaultCenter];
      [v20 addObserver:v5 selector:sel__handleSupportedCommandsChangedNotification_ name:@"kMRMediaRemotePlayerSupportedCommandsDidChangeNotification" object:0];
    }

    v21 = [(MRV2NowPlayingController *)v5 configuration];
    v22 = [v21 requestClientProperties];

    if (v22)
    {
      v23 = [MEMORY[0x1E696AD88] defaultCenter];
      [v23 addObserver:v5 selector:sel__handleClientStateDidChange_ name:@"kMRMediaRemoteApplicationClientStateDidChange" object:0];
    }

    [(MRV2NowPlayingController *)v5 setRegisteredForNotifications:1];
  }
}

- (void)_handleEndpointChanged
{
  v2 = [(MRV2NowPlayingController *)self queue];
  msv_dispatch_async_on_queue();
}

uint64_t __50__MRV2NowPlayingController__handleEndpointChanged__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;

  if ([*(a1 + 32) isLoading])
  {
    v4 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] %@ Enqueing endpoint change", &v11, 0xCu);
    }

    v6 = [*(a1 + 32) pendingDestination];
    [v6 setEndpoint:0];

    result = [*(a1 + 32) setEndpointChanged:1];
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    [*(a1 + 32) _onQueue_clearStateForEndpoint];
    v9 = *(a1 + 32);
    v10 = *MEMORY[0x1E69E9840];

    return [v9 _reloadWithReason:@"endpoint Change"];
  }

  return result;
}

- (void)_handleEndpointChangedToEndpoint:(id)a3
{
  v4 = a3;
  v5 = [(MRV2NowPlayingController *)self queue];
  v6 = v4;
  msv_dispatch_async_on_queue();
}

void __61__MRV2NowPlayingController__handleEndpointChangedToEndpoint___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = [*(a1 + 32) uniqueIdentifier];
  v2 = [*(*(a1 + 40) + 32) endpoint];
  v3 = [v2 uniqueIdentifier];
  if (v17 == v3)
  {
  }

  else
  {
    v4 = [v17 isEqual:v3];

    if (v4)
    {
LABEL_7:
      v13 = *MEMORY[0x1E69E9840];
      return;
    }

    v5 = *(a1 + 40);
    v6 = *(v5 + 80);
    *(v5 + 80) = 0;

    if ([*(a1 + 40) isLoading])
    {
      v7 = _MRLogForCategory(1uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v9 = [*(a1 + 32) debugName];
        *buf = 138412546;
        v19 = v8;
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] %@ Enqueing endpoint change to %@", buf, 0x16u);
      }

      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) pendingDestination];
      [v11 setEndpoint:v10];

      v12 = [*(a1 + 40) pendingDestination];
      [v12 setIsEndpointSet:1];

      [*(a1 + 40) setEndpointChanged:1];
      goto LABEL_7;
    }

    [*(a1 + 40) _onQueue_clearStateForEndpoint];
    [*(*(a1 + 40) + 32) setEndpoint:*(a1 + 32)];
    [*(*(a1 + 40) + 32) setIsEndpointSet:1];
    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v15 = [*(a1 + 32) debugName];
    v17 = [v14 initWithFormat:@"endpoint change top %@", v15];

    [*(a1 + 40) _reloadWithReason:v17];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_handleEndpointInvalidated
{
  v2 = [(MRV2NowPlayingController *)self queue];
  msv_dispatch_async_on_queue();
}

void __54__MRV2NowPlayingController__handleEndpointInvalidated__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;

  v4 = [*(*(a1 + 32) + 32) endpoint];

  if (!v4)
  {
LABEL_6:
    v8 = *MEMORY[0x1E69E9840];
    return;
  }

  if ([*(a1 + 32) isLoading])
  {
    v5 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] %@ Enqueing endpoint invalidation", &v11, 0xCu);
    }

    v7 = [*(a1 + 32) pendingDestination];
    [v7 setEndpoint:0];

    [*(a1 + 32) setEndpointInvalidated:1];
    goto LABEL_6;
  }

  [*(a1 + 32) _onQueue_clearStateForEndpoint];
  v9 = *(a1 + 32);
  v10 = *MEMORY[0x1E69E9840];

  [v9 _reloadWithReason:@"endpoint Invalidation"];
}

- (void)_handlePlayerPathInvalidatedWithPlayerPath:(id)a3
{
  v4 = a3;
  v5 = [(MRV2NowPlayingController *)self queue];
  v6 = v4;
  msv_dispatch_async_on_queue();
}

uint64_t __71__MRV2NowPlayingController__handlePlayerPathInvalidatedWithPlayerPath___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;

  if ([*(a1 + 32) isLoading])
  {
    v4 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v13 = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] %@ Enqueing playerPath invalidation to %@", &v13, 0x16u);
    }

    if ([*(a1 + 40) isResolved])
    {
      v7 = *(a1 + 40);
    }

    else
    {
      v7 = 0;
    }

    v11 = [*(a1 + 32) pendingDestination];
    [v11 setResolvedPlayerPath:v7];

    result = [*(a1 + 32) setPlayerPathInvalidated:1];
    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    [*(a1 + 32) _onQueue_clearStateForUnresolvedPlayerPath];
    if ([*(a1 + 40) isResolved])
    {
      [*(*(a1 + 32) + 32) setResolvedPlayerPath:*(a1 + 40)];
    }

    v8 = *(a1 + 32);
    v9 = *MEMORY[0x1E69E9840];

    return [v8 _reloadWithReason:@"playerPath Invalidation"];
  }

  return result;
}

- (void)_handleRetryTimerElapsed
{
  v2 = [(MRV2NowPlayingController *)self queue];
  msv_dispatch_async_on_queue();
}

void __52__MRV2NowPlayingController__handleRetryTimerElapsed__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isLoading] & 1) == 0)
  {
    v2 = objc_alloc(MEMORY[0x1E696AEC0]);
    v3 = [*(a1 + 32) loadRetryTimer];
    [v3 currentInterval];
    v5 = [v2 initWithFormat:@"LoadRetryTimer fired after %lf total seconds", v4];

    [*(a1 + 32) _reloadWithReason:v5];
  }
}

- (void)_configureReloadTimerForError:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_configureReloadTimerForError__onceToken != -1)
  {
    [MRV2NowPlayingController _configureReloadTimerForError:];
  }

  v5 = _configureReloadTimerForError____ignorableErrorsForReload;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "code")}];
  LOBYTE(v5) = [v5 containsObject:v6];

  if ((v5 & 1) == 0)
  {
    v7 = [(MRV2NowPlayingController *)self loadRetryTimer];

    if (v7)
    {
      v8 = _MRLogForCategory(1uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(MRV2NowPlayingController *)self loadRetryTimer];
        [v9 timeUntilNextInterval];
        *buf = 138412546;
        v25 = self;
        v26 = 2048;
        v27 = v10;
        _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] <%@> LoadRetryTimer is already scheduled to retry in %lf more seconds", buf, 0x16u);
      }
    }

    else
    {
      objc_initWeak(&location, self);
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"NowPlayingController.loadRetryTimer<%p>", self];
      v12 = objc_alloc(MEMORY[0x1E69B14E0]);
      v13 = +[MRUserSettings currentSettings];
      v14 = [v13 destinationResolverReconRetryIntervals];
      v15 = [(MRV2NowPlayingController *)self queue];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __58__MRV2NowPlayingController__configureReloadTimerForError___block_invoke_191;
      v21[3] = &unk_1E769B178;
      objc_copyWeak(&v22, &location);
      v16 = [v12 initWithIntervals:v14 name:v11 queue:v15 block:v21];
      [(MRV2NowPlayingController *)self setLoadRetryTimer:v16];

      v17 = _MRLogForCategory(1uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(MRV2NowPlayingController *)self loadRetryTimer];
        [v18 timeUntilNextInterval];
        *buf = 138412546;
        v25 = self;
        v26 = 2048;
        v27 = v19;
        _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, "[MRV2NowPlayingController] <%@> Starting LoadRetryTimer to fire in %lf seconds", buf, 0x16u);
      }

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __58__MRV2NowPlayingController__configureReloadTimerForError___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F1577500];
  v1 = _configureReloadTimerForError____ignorableErrorsForReload;
  _configureReloadTimerForError____ignorableErrorsForReload = v0;
}

void __58__MRV2NowPlayingController__configureReloadTimerForError___block_invoke_191(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRetryTimerElapsed];
}

- (NSString)needsImmediateReloadReason
{
  if ([(MRV2NowPlayingController *)self needsImmediateReload])
  {
    if ([(MRV2NowPlayingController *)self endpointChanged])
    {
      v3 = [&stru_1F1513E38 stringByAppendingString:@"|endpoint changed"];
    }

    else
    {
      v3 = &stru_1F1513E38;
    }

    if ([(MRV2NowPlayingController *)self endpointInvalidated])
    {
      v4 = [(__CFString *)v3 stringByAppendingString:@"|endpoint invalidation"];

      v3 = v4;
    }

    if ([(MRV2NowPlayingController *)self playerPathInvalidated])
    {
      v5 = [(__CFString *)v3 stringByAppendingString:@"|playerPath invalidation"];

      v3 = v5;
    }
  }

  else
  {
    v3 = &stru_1F1513E38;
  }

  return v3;
}

- (void)setIsLoading:(BOOL)a3
{
  v3 = [(MRV2NowPlayingController *)self queue];
  msv_dispatch_sync_on_queue();
}

void __41__MRV2NowPlayingController_setIsLoading___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 != *(v2 + 24))
  {
    *(v2 + 24) = v1;
    v4 = *(a1 + 32);
    if ((v4[24] & 1) == 0)
    {
      if ([v4 needsImmediateReload])
      {
        v9 = [*(a1 + 32) needsImmediateReloadReason];
        if ([*(a1 + 32) endpointChanged])
        {
          [*(a1 + 32) _onQueue_clearStateForEndpoint];
          [*(a1 + 32) setEndpointChanged:0];
        }

        if ([*(a1 + 32) endpointInvalidated])
        {
          [*(a1 + 32) _onQueue_clearStateForEndpoint];
          [*(a1 + 32) setEndpointInvalidated:0];
        }

        if ([*(a1 + 32) playerPathInvalidated])
        {
          [*(a1 + 32) _onQueue_clearStateForUnresolvedPlayerPath];
          [*(a1 + 32) setPlayerPathInvalidated:0];
        }

        objc_storeStrong((*(a1 + 32) + 32), *(*(a1 + 32) + 72));
        v5 = *(a1 + 32);
        v6 = *(v5 + 72);
        *(v5 + 72) = 0;

        v7 = *(a1 + 32);
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Previous %@", v9];
        [v7 _reloadWithReason:v8];
      }
    }
  }
}

- (MRNowPlayingControllerDestination)pendingDestination
{
  v3 = [(MRV2NowPlayingController *)self queue];
  dispatch_assert_queue_V2(v3);

  pendingDestination = self->_pendingDestination;
  if (!pendingDestination)
  {
    v5 = [(MRNowPlayingControllerDestination *)self->_destination copy];
    v6 = self->_pendingDestination;
    self->_pendingDestination = v5;

    pendingDestination = self->_pendingDestination;
  }

  return pendingDestination;
}

- (BOOL)updateLoadingEnabled
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(MRV2NowPlayingController *)self queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__MRV2NowPlayingController_updateLoadingEnabled__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_async_and_wait(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (BOOL)shouldDeferArtworkRequestForConfiguration:(id)a3
{
  v3 = a3;
  if ([v3 isSingleShot])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 playbackQueueRequest];
    v4 = [v5 includeArtwork];
  }

  return v4;
}

- (id)effectivePlaybackQueueRequest
{
  v3 = [(MRV2NowPlayingController *)self configuration];
  v4 = [(MRV2NowPlayingController *)self shouldDeferArtworkRequestForConfiguration:v3];
  v5 = [v3 playbackQueueRequest];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 requestByRemovingArtwork];

    v6 = v7;
  }

  return v6;
}

void __47__MRV2NowPlayingController_beginLoadingUpdates__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 40) object:*a2 file:@"MRV2NowPlayingController.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"!self.isLoading"}];
}

- (void)_loadNowPlayingStateForConfiguration:(uint64_t)a1 requestID:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRV2NowPlayingController.m" lineNumber:220 description:{@"Invalid parameter not satisfying: %@", @"!self.isLoading"}];
}

- (void)_loadNowPlayingStateForResolvedPlayerPath:(uint64_t)a1 requestID:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRV2NowPlayingController.m" lineNumber:422 description:{@"Invalid parameter not satisfying: %@", @"resolvedPlayerPath.isResolved"}];
}

void __68__MRV2NowPlayingController__handlePlaybackQueueChangedNotification___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9(&dword_1A2860000, v1, v2, "[MRV2NowPlayingController] <%@> processing PlaybackQueueDidChangeNotification.", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __80__MRV2NowPlayingController__handlePlaybackQueueContentItemsChangedNotification___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_7(&dword_1A2860000, v1, v2, "[MRV2NowPlayingController] <%@> processing PlaybackQueueContentItemsChangedNotification for content items %@.");
  v3 = *MEMORY[0x1E69E9840];
}

void __80__MRV2NowPlayingController__handlePlaybackQueueContentItemsChangedNotification___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_7(&dword_1A2860000, v1, v2, "[MRV2NowPlayingController] <%@> deferring PlaybackQueueContentItemsChangedNotification for content items %@ because we are requesting a new playback queue.");
  v3 = *MEMORY[0x1E69E9840];
}

void __87__MRV2NowPlayingController__handlePlaybackQueueContentItemsArtworkChangedNotification___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_7(&dword_1A2860000, v1, v2, "[MRV2NowPlayingController] <%@> processing PlaybackQueueContentItemsArtworkChangedNotification for content items %@.");
  v3 = *MEMORY[0x1E69E9840];
}

void __86__MRV2NowPlayingController__requestPlaybackQueueArtworkForIdentifiers_operationQueue___block_invoke_2_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_1A2860000, v1, OS_LOG_TYPE_ERROR, "[MRV2NowPlayingController] <%@> ignoring artwork request failure because configuration needs other data", v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __68__MRV2NowPlayingController__handlePlaybackStateChangedNotification___block_invoke_cold_1(uint64_t *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = MRMediaRemoteCopyPlaybackStateDescription([a2 intValue]);
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_1A2860000, a3, OS_LOG_TYPE_DEBUG, "[MRV2NowPlayingController] <%@> processing PlaybackStateDidChangeNotification with new PlaybackState %@.", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void __72__MRV2NowPlayingController__handleSupportedCommandsChangedNotification___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9(&dword_1A2860000, v1, v2, "[MRV2NowPlayingController] <%@> processing SupportedCommandsDidChangeNotification.", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __56__MRV2NowPlayingController__handleClientStateDidChange___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9(&dword_1A2860000, v1, v2, "[MRV2NowPlayingController] <%@> processing clientStateDidChange.", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

@end