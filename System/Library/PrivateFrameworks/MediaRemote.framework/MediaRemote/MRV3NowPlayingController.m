@interface MRV3NowPlayingController
- (BOOL)isUpdating;
- (MRNowPlayingControllerConfiguration)configuration;
- (MRNowPlayingControllerDestination)destination;
- (MRNowPlayingControllerHelper)helper;
- (MRNowPlayingPlayerResponse)response;
- (MRV3NowPlayingController)initWithConfiguration:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (id)_loadNowPlayingStateForPlayerPath:(id)a3 error:(id *)a4;
- (void)_handleClientPropertiesDidChange:(id)a3;
- (void)_handlePlaybackQueueChangedNotification:(id)a3;
- (void)_handlePlaybackQueueContentItemsArtworkChangedNotification:(id)a3;
- (void)_handlePlaybackQueueContentItemsChangedNotification:(id)a3;
- (void)_handlePlaybackStateChangedNotification:(id)a3;
- (void)_handleSupportedCommandsChangedNotification:(id)a3;
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
- (void)_onQueue_clearStateForResolvedPlayerPath;
- (void)_registerNotificationHandlersForResolvedPlayerPath:(id)a3;
- (void)_reloadWithReason:(id)a3;
- (void)_requestClientPropertiesForPlayerPath:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)_requestContentItemArtwork:(id)a3 forPlayerPath:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)_requestPlaybackQueueForPlayerPath:(id)a3 request:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)_requestPlayerLastPlayingDateForPlayerPath:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)_requestSupportedCommandsForPlayerPath:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)_unregisterNotificationHandlers;
- (void)beginLoadingUpdates;
- (void)beginResolving;
- (void)dealloc;
- (void)destinationResolver:(id)a3 playerPathDidChange:(id)a4;
- (void)destinationResolverDestinationDidInvalidate:(id)a3;
- (void)destinationWithCompletion:(id)a3;
- (void)endLoadingUpdates;
- (void)sendCommand:(unsigned int)a3 options:(id)a4 appOptions:(unsigned int)a5 completion:(id)a6;
@end

@implementation MRV3NowPlayingController

- (MRV3NowPlayingController)initWithConfiguration:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MRV3NowPlayingController;
  v5 = [(MRV3NowPlayingController *)&v14 init];
  if (v5)
  {
    v6 = [v4 copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deferredContentItemsToMerge = v5->_deferredContentItemsToMerge;
    v5->_deferredContentItemsToMerge = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.MediaRemote.MRV3NowPlayingController.queue", v10);
    queue = v5->_queue;
    v5->_queue = v11;
  }

  return v5;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = self;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRV3NowPlayingController] <%@> Deallocating.", buf, 0xCu);
  }

  v4 = [(MRV3NowPlayingController *)self queue];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __35__MRV3NowPlayingController_dealloc__block_invoke;
  v10 = &unk_1E769A228;
  v11 = self;
  msv_dispatch_sync_on_queue();

  v6.receiver = self;
  v6.super_class = MRV3NowPlayingController;
  [(MRV3NowPlayingController *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MRV3NowPlayingController *)self destinationResolver];
  v6 = [v3 stringWithFormat:@"<%@: %p> %@", v4, self, v5];

  return v6;
}

- (NSString)debugDescription
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = objc_opt_class();
  v4 = [(MRV3NowPlayingController *)self destinationResolver];
  v5 = MRCreateIndentedDebugDescriptionFromObject(v4);
  if ([(MRV3NowPlayingController *)self isResolving])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(MRV3NowPlayingController *)self isUpdating])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [(MSVVariableIntervalTimer *)self->_loadRetryTimer remainingIntervals];
  v9 = MRCreateIndentedDebugDescriptionFromObject(v8);
  v10 = [(MRV3NowPlayingController *)self response];
  v11 = MRCreateIndentedDebugDescriptionFromObject(v10);
  v12 = [v14 initWithFormat:@"<%@ %p {\n   resolver=%@\n   resolving=%@\n    updating=%@\n   loadRetryTimer = %@\n   response=%@\n}>\n", v3, self, v5, v6, v7, v9, v11];

  return v12;
}

- (void)beginResolving
{
  v2 = [(MRV3NowPlayingController *)self queue];
  msv_dispatch_sync_on_queue();
}

void __42__MRV3NowPlayingController_beginResolving__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 18) & 1) == 0)
  {
    *(v2 + 18) = 1;
    v4 = [MRDestinationResolver alloc];
    v5 = [*(*(a1 + 32) + 40) destination];
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = *(a1 + 32);
    v8 = [v6 initWithFormat:@"%@<%p>", objc_opt_class(), v7];
    v9 = [(MRDestinationResolver *)v4 initWithDestination:v5 label:v8];
    [*(a1 + 32) setDestinationResolver:v9];

    v10 = *(a1 + 32);
    v11 = [v10 destinationResolver];
    [v11 setDelegate:v10];

    v12 = [*(a1 + 32) destinationResolver];
    [v12 beginResolving];
  }
}

- (void)beginLoadingUpdates
{
  v2 = [(MRV3NowPlayingController *)self queue];
  msv_dispatch_sync_on_queue();
}

uint64_t __47__MRV3NowPlayingController_beginLoadingUpdates__block_invoke(uint64_t result)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  if ((*(v1 + 17) & 1) == 0)
  {
    v2 = result;
    *(v1 + 17) = 1;
    [*(result + 32) beginResolving];
    v3 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(v2 + 32);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRV3NowPlayingController] <%@> Begin loading updates", &v6, 0xCu);
    }

    result = [*(v2 + 32) _reloadWithReason:@"Begin"];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)endLoadingUpdates
{
  v3 = [(MRV3NowPlayingController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__MRV3NowPlayingController_endLoadingUpdates__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_async(v3, block);
}

void __45__MRV3NowPlayingController_endLoadingUpdates__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 17) == 1)
  {
    *(v2 + 17) = 0;
    [*(a1 + 32) setLoadRetryTimer:0];
    v3 = [*(a1 + 32) destinationResolver];
    [v3 setDelegate:0];

    [*(a1 + 32) setDestinationResolver:0];
    v4 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[MRV3NowPlayingController] <%@> End loading updates", &v9, 0xCu);
    }

    [*(a1 + 32) _onQueue_clearStateForResolvedPlayerPath];
  }

  else
  {
    v6 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[MRV3NowPlayingController] <%@> Unbalanced calls to endLoadingUpdates", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)sendCommand:(unsigned int)a3 options:(id)a4 appOptions:(unsigned int)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  [(MRV3NowPlayingController *)self beginResolving];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __70__MRV3NowPlayingController_sendCommand_options_appOptions_completion___block_invoke;
  v25[3] = &unk_1E769F248;
  v26 = v11;
  v12 = v11;
  v13 = MEMORY[0x1A58E3570](v25);
  v14 = [(MRV3NowPlayingController *)self destination];
  v15 = [v14 playerPath];
  if ([v15 isResolved])
  {
    v16 = [(MRV3NowPlayingController *)self destination];
  }

  else
  {
    v17 = [(MRV3NowPlayingController *)self configuration];
    v16 = [v17 destination];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __70__MRV3NowPlayingController_sendCommand_options_appOptions_completion___block_invoke_2;
  v20[3] = &unk_1E76A3F80;
  v21 = v10;
  v22 = v13;
  v20[4] = self;
  v23 = a3;
  v24 = a5;
  v18 = v10;
  v19 = v13;
  [MRDestinationResolver resolvePartialDestination:v16 level:2 timeout:v20 completion:15.0];
}

uint64_t __70__MRV3NowPlayingController_sendCommand_options_appOptions_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __70__MRV3NowPlayingController_sendCommand_options_appOptions_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 origin];

  if (v4)
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 40);
    v7 = [v3 playerPath];
    v8 = *(a1 + 60);
    v9 = [*(a1 + 32) queue];
    MRMediaRemoteSendCommandToPlayerWithResult(v5, v6, v7, v8, v9, *(a1 + 48));
  }

  else
  {
    v10 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__MRV3NowPlayingController_sendCommand_options_appOptions_completion___block_invoke_3;
    block[3] = &unk_1E769AD58;
    v12 = *(a1 + 48);
    dispatch_async(v10, block);
  }
}

void __70__MRV3NowPlayingController_sendCommand_options_appOptions_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MRCommandResult commandResultWithSendError:6];
  (*(v1 + 16))(v1, v2);
}

- (void)destinationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MRV3NowPlayingController *)self destination];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__MRV3NowPlayingController_destinationWithCompletion___block_invoke;
  v7[3] = &unk_1E769E5A0;
  v8 = v4;
  v6 = v4;
  [MRDestinationResolver resolvePartialDestination:v5 level:2 timeout:v7 completion:15.0];
}

void __54__MRV3NowPlayingController_destinationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 playerPath];
  (*(v4 + 16))(v4, v6, v5);
}

- (MRNowPlayingControllerDestination)destination
{
  v2 = [(MRV3NowPlayingController *)self destinationResolver];
  v3 = [v2 destination];

  return v3;
}

- (void)_reloadWithReason:(id)a3
{
  v4 = a3;
  v5 = [(MRV3NowPlayingController *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__MRV3NowPlayingController__reloadWithReason___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __46__MRV3NowPlayingController__reloadWithReason___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) destination];
  v4 = [v3 playerPath];

  if ([v4 isResolved])
  {
    v5 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      *buf = 138412546;
      v36 = v6;
      v37 = 2112;
      v38 = v7;
      _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRV3NowPlayingController] <%@> reloading for reason %@", buf, 0x16u);
    }

    [*v2 _registerNotificationHandlersForResolvedPlayerPath:v4];
    v8 = *v2;
    v34 = 0;
    v9 = [v8 _loadNowPlayingStateForPlayerPath:v4 error:&v34];
    v10 = v34;
    v11 = _MRLogForCategory(1uLL);
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __46__MRV3NowPlayingController__reloadWithReason___block_invoke_cold_1(v2);
      }

      v13 = [*v2 loadRetryTimer];
      v14 = v13 == 0;

      if (v14)
      {
        v26 = _MRLogForCategory(1uLL);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *v2;
          v28 = [*v2 loadRetryTimer];
          [v28 timeUntilNextInterval];
          *buf = 138412546;
          v36 = v27;
          v37 = 2048;
          v38 = v29;
          _os_log_impl(&dword_1A2860000, v26, OS_LOG_TYPE_DEFAULT, "[MRV3NowPlayingController] <%@> LoadetryTimer is already scheduled to retry in %lf more seconds", buf, 0x16u);
        }
      }

      else
      {
        objc_initWeak(&location, *v2);
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"NowPlayingController.loadRetryTimer<%p>", *v2];
        v16 = objc_alloc(MEMORY[0x1E69B14E0]);
        v17 = +[MRUserSettings currentSettings];
        v18 = [v17 destinationResolverReconRetryIntervals];
        v19 = [*v2 queue];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __46__MRV3NowPlayingController__reloadWithReason___block_invoke_36;
        v31[3] = &unk_1E769B178;
        objc_copyWeak(&v32, &location);
        v20 = [v16 initWithIntervals:v18 name:v15 queue:v19 block:v31];
        [*v2 setLoadRetryTimer:v20];

        v21 = _MRLogForCategory(1uLL);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *v2;
          v23 = [*v2 loadRetryTimer];
          [v23 timeUntilNextInterval];
          *buf = 138412546;
          v36 = v22;
          v37 = 2048;
          v38 = v24;
          _os_log_impl(&dword_1A2860000, v21, OS_LOG_TYPE_DEFAULT, "[MRV3NowPlayingController] <%@> Starting ReconRetryTimer to fire in %lf seconds", buf, 0x16u);
        }

        [*v2 _notifyDelegateOfError:v10];
        objc_destroyWeak(&v32);

        objc_destroyWeak(&location);
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *v2;
        *buf = 138412546;
        v36 = v25;
        v37 = 2112;
        v38 = v9;
        _os_log_impl(&dword_1A2860000, v12, OS_LOG_TYPE_DEFAULT, "[MRV3NowPlayingController] <%@> End loading data. Response: %@.", buf, 0x16u);
      }

      [*v2 setLoadRetryTimer:0];
      [*v2 _notifyDelegateOfNewResponse:v9];
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __46__MRV3NowPlayingController__reloadWithReason___block_invoke_36(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = objc_alloc(MEMORY[0x1E696AEC0]);
    v3 = [v6 loadRetryTimer];
    [v3 currentInterval];
    v5 = [v2 initWithFormat:@"LoadRetryTimer fired after %lf total seconds", v4];

    [v6 _reloadWithReason:v5];
    WeakRetained = v6;
  }
}

- (id)_loadNowPlayingStateForPlayerPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__45;
  v68 = __Block_byref_object_dispose__45;
  v69 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__45;
  v62 = __Block_byref_object_dispose__45;
  v63 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__45;
  v56 = __Block_byref_object_dispose__45;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__45;
  v50 = __Block_byref_object_dispose__45;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__45;
  v44 = __Block_byref_object_dispose__45;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__45;
  v38 = __Block_byref_object_dispose__45;
  v39 = 0;
  v7 = dispatch_group_create();
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.MediaRemote.MRV3NowPlayingController.callbackQueue", v8);

  if ([(MRNowPlayingControllerConfiguration *)self->_configuration requestSupportedCommands])
  {
    dispatch_group_enter(v7);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __68__MRV3NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke;
    v30[3] = &unk_1E769C158;
    v32 = &v52;
    v33 = &v46;
    v31 = v7;
    [(MRV3NowPlayingController *)self _requestSupportedCommandsForPlayerPath:v6 queue:v9 completion:v30];
  }

  if ([(MRNowPlayingControllerConfiguration *)self->_configuration requestPlaybackState])
  {
    dispatch_group_enter(v7);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __68__MRV3NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_2;
    v27[3] = &unk_1E769C180;
    v29 = &v70;
    v28 = v7;
    MRMediaRemoteGetPlaybackStateForPlayer(v6, v9, v27);
  }

  v10 = [(MRNowPlayingControllerConfiguration *)self->_configuration playbackQueueRequest];

  if (v10)
  {
    dispatch_group_enter(v7);
    v11 = [(MRNowPlayingControllerConfiguration *)self->_configuration playbackQueueRequest];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __68__MRV3NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_3;
    v23[3] = &unk_1E769D4F8;
    v25 = &v64;
    v26 = &v58;
    v24 = v7;
    [(MRV3NowPlayingController *)self _requestPlaybackQueueForPlayerPath:v6 request:v11 queue:v9 completion:v23];
  }

  if ([(MRNowPlayingControllerConfiguration *)self->_configuration requestLastPlayingDate])
  {
    dispatch_group_enter(v7);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __68__MRV3NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_4;
    v20[3] = &unk_1E769C1D0;
    v22 = &v40;
    v21 = v7;
    [(MRV3NowPlayingController *)self _requestPlayerLastPlayingDateForPlayerPath:v6 queue:v9 completion:v20];
  }

  if ([(MRNowPlayingControllerConfiguration *)self->_configuration requestClientProperties])
  {
    dispatch_group_enter(v7);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__MRV3NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_5;
    v17[3] = &unk_1E76A3FA8;
    v19 = &v34;
    v18 = v7;
    [(MRV3NowPlayingController *)self _requestClientPropertiesForPlayerPath:v6 queue:v9 completion:v17];
  }

  v12 = dispatch_time(0, 5000000000);
  if (dispatch_group_wait(v7, v12))
  {
    if (a4)
    {
      v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:26];
LABEL_18:
      v15 = 0;
      *a4 = v13;
      goto LABEL_20;
    }

LABEL_19:
    v15 = 0;
    goto LABEL_20;
  }

  v14 = v59[5];
  if (v14 || (v14 = v47[5]) != 0)
  {
    if (a4)
    {
      v13 = v14;
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v15 = objc_alloc_init(MRNowPlayingPlayerResponse);
  [(MRNowPlayingPlayerResponse *)v15 setPlaybackQueue:v65[5]];
  [(MRNowPlayingPlayerResponse *)v15 setPlaybackState:*(v71 + 6)];
  [(MRNowPlayingPlayerResponse *)v15 setSupportedCommands:v53[5]];
  [(MRNowPlayingPlayerResponse *)v15 setPlayerLastPlayingDate:v41[5]];
  [(MRNowPlayingPlayerResponse *)v15 setClientProperties:v35[5]];
LABEL_20:

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v52, 8);

  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v64, 8);

  _Block_object_dispose(&v70, 8);

  return v15;
}

void __68__MRV3NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __68__MRV3NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
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

void __68__MRV3NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __68__MRV3NowPlayingController__loadNowPlayingStateForPlayerPath_error___block_invoke_5(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)_requestPlaybackQueueForPlayerPath:(id)a3 request:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [(MRV3NowPlayingController *)self setRequestingQueue:1];
  v14 = [v12 copy];
  [v14 setCachingPolicy:2];
  v15 = [MEMORY[0x1E695DF00] date];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __88__MRV3NowPlayingController__requestPlaybackQueueForPlayerPath_request_queue_completion___block_invoke;
  v18[3] = &unk_1E769F820;
  v18[4] = self;
  v19 = v15;
  v20 = v10;
  v16 = v10;
  v17 = v15;
  MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync(v12, v13, v11, v18);
}

void __88__MRV3NowPlayingController__requestPlaybackQueueForPlayerPath_request_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) lastQueueRequestDate];
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = v4;
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) lastQueueRequestDate];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  if (v9 >= 0.0)
  {
LABEL_3:
    [*(a1 + 32) setRequestingQueue:0];
    [*(a1 + 32) setLastQueueRequestDate:*(a1 + 40)];
    v10 = a2;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = [*(a1 + 32) deferredContentItemsToMerge];
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          v17 = [v16 identifier];
          v18 = [v10 contentItemForIdentifier:v17];

          [v18 mergeFrom:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    v19 = [*(a1 + 32) deferredContentItemsToMerge];
    [v19 removeAllObjects];

    (*(*(a1 + 48) + 16))();
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_requestContentItemArtwork:(id)a3 forPlayerPath:(id)a4 queue:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[MRPlaybackQueueRequest alloc] initWithIdentifiers:v12];

  [(MRPlaybackQueueRequest *)v13 setArtworkHeight:600.0];
  [(MRPlaybackQueueRequest *)v13 setArtworkWidth:600.0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__MRV3NowPlayingController__requestContentItemArtwork_forPlayerPath_queue_completion___block_invoke;
  v15[3] = &unk_1E769C298;
  v16 = v9;
  v14 = v9;
  MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync(v13, v11, v10, v15);
}

- (void)_requestSupportedCommandsForPlayerPath:(id)a3 queue:(id)a4 completion:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__MRV3NowPlayingController__requestSupportedCommandsForPlayerPath_queue_completion___block_invoke;
  v9[3] = &unk_1E769B228;
  v10 = v7;
  v8 = v7;
  MRMediaRemoteGetSupportedCommandsForPlayer(a3, a4, v9);
}

- (void)_requestPlayerLastPlayingDateForPlayerPath:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[MRNowPlayingRequest alloc] initWithPlayerPath:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__MRV3NowPlayingController__requestPlayerLastPlayingDateForPlayerPath_queue_completion___block_invoke;
  v13[3] = &unk_1E769E2D0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [(MRNowPlayingRequest *)v11 requestLastPlayingDateOnQueue:v9 completion:v13];
}

void __88__MRV3NowPlayingController__requestPlayerLastPlayingDateForPlayerPath_queue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __88__MRV3NowPlayingController__requestPlayerLastPlayingDateForPlayerPath_queue_completion___block_invoke_cold_1(a1);
    }

    v6 = *(a1 + 40);
    v7 = [MEMORY[0x1E695DF00] distantPast];
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
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
  v13[2] = __83__MRV3NowPlayingController__requestClientPropertiesForPlayerPath_queue_completion___block_invoke;
  v13[3] = &unk_1E769D570;
  v14 = v7;
  v12 = v7;
  MRMediaRemoteGetClientProperties(v10, v11, v8, v13);
}

- (void)destinationResolverDestinationDidInvalidate:(id)a3
{
  v4 = [(MRV3NowPlayingController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__MRV3NowPlayingController_destinationResolverDestinationDidInvalidate___block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __72__MRV3NowPlayingController_destinationResolverDestinationDidInvalidate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _onQueue_clearStateForResolvedPlayerPath];
  v2 = *(a1 + 32);

  return [v2 _notifyDelegateOfInvalidation];
}

- (void)destinationResolver:(id)a3 playerPathDidChange:(id)a4
{
  v5 = [a3 destination];
  v6 = [v5 playerPath];
  [(MRV3NowPlayingController *)self _notifyDelegateOfPlayerPathChange:v6];

  [(MRV3NowPlayingController *)self _reloadWithReason:@"playerPath Invalidation"];
}

- (void)_onQueue_clearStateForResolvedPlayerPath
{
  v3 = [(MRV3NowPlayingController *)self queue];
  dispatch_assert_queue_V2(v3);

  [(MRV3NowPlayingController *)self _unregisterNotificationHandlers];
  v4 = [(MRV3NowPlayingController *)self deferredContentItemsToMerge];
  [v4 removeAllObjects];
}

- (MRNowPlayingControllerHelper)helper
{
  if ([(MRV3NowPlayingController *)self isUpdating])
  {
    helper = self->_helper;
  }

  else
  {
    helper = 0;
  }

  return helper;
}

- (void)_notifyDelegateOfNewResponse:(id)a3
{
  v7 = a3;
  v4 = [(MRV3NowPlayingController *)self helper];

  if (v4)
  {
    v5 = [(MRV3NowPlayingController *)self helper];
    v6 = [v5 didLoadResponse];
    (v6)[2](v6, v7);
  }
}

- (void)_notifyDelegateOfPlaybackQueueChange:(id)a3
{
  v7 = a3;
  v4 = [(MRV3NowPlayingController *)self helper];

  if (v4)
  {
    v5 = [(MRV3NowPlayingController *)self helper];
    v6 = [v5 playbackQueueDidChange];
    (v6)[2](v6, v7);
  }
}

- (void)_notifyDelegateOfUpdatedContentItemsWithContentItems:(id)a3
{
  v7 = a3;
  v4 = [(MRV3NowPlayingController *)self helper];

  if (v4)
  {
    v5 = [(MRV3NowPlayingController *)self helper];
    v6 = [v5 contentItemsDidUpdate];
    (v6)[2](v6, v7);
  }
}

- (void)_notifyDelegateOfUpdatedArtwork:(id)a3
{
  v7 = a3;
  v4 = [(MRV3NowPlayingController *)self helper];

  if (v4)
  {
    v5 = [(MRV3NowPlayingController *)self helper];
    v6 = [v5 contentItemsDidLoadArtwork];
    (v6)[2](v6, v7);
  }
}

- (void)_notifyDelegateOfSupportedCommandsChange:(id)a3
{
  v7 = a3;
  v4 = [(MRV3NowPlayingController *)self helper];

  if (v4)
  {
    v5 = [(MRV3NowPlayingController *)self helper];
    v6 = [v5 supportedCommandsDidChange];
    (v6)[2](v6, v7);
  }
}

- (void)_notifyDelegateOfUpdatedPlayerLastPlayingDate:(id)a3
{
  v7 = a3;
  v4 = [(MRV3NowPlayingController *)self helper];

  if (v4)
  {
    v5 = [(MRV3NowPlayingController *)self helper];
    v6 = [v5 playerLastPlayingDateDidChange];
    (v6)[2](v6, v7);
  }
}

- (void)_notifyDelegateOfUpdatedClientProperties:(id)a3
{
  v7 = a3;
  v4 = [(MRV3NowPlayingController *)self helper];

  if (v4)
  {
    v5 = [(MRV3NowPlayingController *)self helper];
    v6 = [v5 clientPropertiesDidChange];
    (v6)[2](v6, v7);
  }
}

- (void)_notifyDelegateOfPlayerPathChange:(id)a3
{
  v7 = a3;
  v4 = [(MRV3NowPlayingController *)self helper];

  if (v4)
  {
    v5 = [(MRV3NowPlayingController *)self helper];
    v6 = [v5 playerPathDidChange];
    (v6)[2](v6, v7);
  }
}

- (void)_notifyDelegateOfInvalidation
{
  v3 = [(MRV3NowPlayingController *)self helper];

  if (v3)
  {
    v5 = [(MRV3NowPlayingController *)self helper];
    v4 = [v5 didInvalidate];
    v4[2]();
  }
}

- (void)_notifyDelegateOfError:(id)a3
{
  v7 = a3;
  v4 = [(MRV3NowPlayingController *)self helper];

  if (v4)
  {
    v5 = [(MRV3NowPlayingController *)self helper];
    v6 = [v5 didFailWithError];
    (v6)[2](v6, v7);
  }
}

- (void)_handlePlaybackQueueChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(MRV3NowPlayingController *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__MRV3NowPlayingController__handlePlaybackQueueChangedNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __68__MRV3NowPlayingController__handlePlaybackQueueChangedNotification___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v4 = [*(a1 + 40) destination];
  v5 = [v4 playerPath];
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
    v20 = v9;
    _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRV3NowPlayingController] <%@> processing PlaybackQueueDidChangeNotification.", buf, 0xCu);
  }

  v10 = [*(a1 + 40) deferredContentItemsToMerge];
  [v10 removeAllObjects];

  v11 = [*(*(a1 + 40) + 40) playbackQueueRequest];
  v12 = [v11 copy];

  [v12 setArtworkWidth:0.0];
  [v12 setArtworkHeight:0.0];
  v13 = *(a1 + 40);
  v14 = [v13 destination];
  v15 = [v14 playerPath];
  v16 = [*(a1 + 40) queue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __68__MRV3NowPlayingController__handlePlaybackQueueChangedNotification___block_invoke_58;
  v18[3] = &unk_1E769C3B0;
  v18[4] = *(a1 + 40);
  [v13 _requestPlaybackQueueForPlayerPath:v15 request:v12 queue:v16 completion:v18];

LABEL_8:
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __68__MRV3NowPlayingController__handlePlaybackQueueChangedNotification___block_invoke_58(uint64_t a1, uint64_t a2, uint64_t a3)
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

- (void)_handlePlaybackQueueContentItemsChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(MRV3NowPlayingController *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__MRV3NowPlayingController__handlePlaybackQueueContentItemsChangedNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __80__MRV3NowPlayingController__handlePlaybackQueueContentItemsChangedNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v4 = (a1 + 40);
  v5 = [*(a1 + 40) destination];
  v6 = [v5 playerPath];
  v7 = v6;
  if (v6 == v3)
  {
  }

  else
  {
    v8 = [v6 isEqual:v3];

    if ((v8 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v9 = [*(a1 + 32) userInfo];
  v10 = [v9 objectForKeyedSubscript:@"kMRMediaRemoteUpdatedContentItemsUserInfoKey"];

  v11 = [v10 mr_compactMap:&__block_literal_global_97];
  v12 = [*(a1 + 40) requestingQueue];
  v13 = _MRLogForCategory(1uLL);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    if (v14)
    {
      __80__MRV3NowPlayingController__handlePlaybackQueueContentItemsChangedNotification___block_invoke_cold_2(v4);
    }

    v15 = [*v4 deferredContentItemsToMerge];
    [v15 addObjectsFromArray:v10];
  }

  else
  {
    if (v14)
    {
      __80__MRV3NowPlayingController__handlePlaybackQueueContentItemsChangedNotification___block_invoke_cold_1(v4);
    }

    [*v4 _notifyDelegateOfUpdatedContentItemsWithContentItems:v10];
  }

LABEL_13:
}

- (void)_handlePlaybackQueueContentItemsArtworkChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(MRV3NowPlayingController *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__MRV3NowPlayingController__handlePlaybackQueueContentItemsArtworkChangedNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __87__MRV3NowPlayingController__handlePlaybackQueueContentItemsArtworkChangedNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v4 = (a1 + 40);
  v5 = [*(a1 + 40) destination];
  v6 = [v5 playerPath];
  v7 = v6;
  if (v6 == v3)
  {
  }

  else
  {
    v8 = [v6 isEqual:v3];

    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v9 = [*(a1 + 32) userInfo];
  v10 = [v9 objectForKeyedSubscript:@"kMRMediaRemoteUpdatedContentItemsUserInfoKey"];

  v11 = [v10 mr_compactMap:&__block_literal_global_61_0];
  v12 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __87__MRV3NowPlayingController__handlePlaybackQueueContentItemsArtworkChangedNotification___block_invoke_cold_1(v4);
  }

  v13 = *v4;
  v14 = [*v4 destination];
  v15 = [v14 playerPath];
  v16 = [*v4 queue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __87__MRV3NowPlayingController__handlePlaybackQueueContentItemsArtworkChangedNotification___block_invoke_62;
  v17[3] = &unk_1E769C3B0;
  v17[4] = *v4;
  [v13 _requestContentItemArtwork:v11 forPlayerPath:v15 queue:v16 completion:v17];

LABEL_8:
}

void __87__MRV3NowPlayingController__handlePlaybackQueueContentItemsArtworkChangedNotification___block_invoke_62(uint64_t a1, void *a2, uint64_t a3)
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
      _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[MRV3NowPlayingController] <%@> updated artwork for content items %@.", &v12, 0x16u);
    }

    v9 = *(a1 + 32);
    v10 = [v5 contentItems];
    [v9 _notifyDelegateOfUpdatedArtwork:v10];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_handlePlaybackStateChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(MRV3NowPlayingController *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__MRV3NowPlayingController__handlePlaybackStateChangedNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __68__MRV3NowPlayingController__handlePlaybackStateChangedNotification___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v4 = [*(a1 + 40) destination];
  v5 = [v4 playerPath];
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
    _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "[MRV3NowPlayingController] <%@> processing PlaybackStateDidChangeNotification with new PlaybackState %@.", buf, 0x16u);
  }

  v12 = [*(*(a1 + 40) + 32) playbackState];
  [*(a1 + 40) _notifyDelegateOfPlaybackStateChange:{objc_msgSend(v9, "intValue")}];
  IsAdvancing = MRMediaRemotePlaybackStateIsAdvancing(v12);
  if (IsAdvancing != MRMediaRemotePlaybackStateIsAdvancing([v9 intValue]))
  {
    v14 = *(a1 + 40);
    v15 = [v14 destination];
    v16 = [v15 playerPath];
    v17 = [*(a1 + 40) queue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __68__MRV3NowPlayingController__handlePlaybackStateChangedNotification___block_invoke_63;
    v19[3] = &unk_1E769C3F8;
    v19[4] = *(a1 + 40);
    [v14 _requestPlayerLastPlayingDateForPlayerPath:v16 queue:v17 completion:v19];
  }

LABEL_10:
  v18 = *MEMORY[0x1E69E9840];
}

- (void)_handleSupportedCommandsChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(MRV3NowPlayingController *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__MRV3NowPlayingController__handleSupportedCommandsChangedNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __72__MRV3NowPlayingController__handleSupportedCommandsChangedNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  v5 = *(a1 + 40);
  v4 = (a1 + 40);
  v6 = [v5 destination];
  v7 = [v6 playerPath];
  v8 = v7;
  if (v7 == v3)
  {
  }

  else
  {
    v9 = [v7 isEqual:v3];

    if ((v9 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v10 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __72__MRV3NowPlayingController__handleSupportedCommandsChangedNotification___block_invoke_cold_1(v4);
  }

  v11 = *v4;
  v12 = [*v4 destination];
  v13 = [v12 playerPath];
  v14 = [*v4 queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__MRV3NowPlayingController__handleSupportedCommandsChangedNotification___block_invoke_64;
  v15[3] = &unk_1E769C420;
  v15[4] = *v4;
  [v11 _requestSupportedCommandsForPlayerPath:v13 queue:v14 completion:v15];

LABEL_8:
}

uint64_t __72__MRV3NowPlayingController__handleSupportedCommandsChangedNotification___block_invoke_64(uint64_t a1, uint64_t a2, uint64_t a3)
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

- (void)_handleClientPropertiesDidChange:(id)a3
{
  v4 = a3;
  v5 = [(MRV3NowPlayingController *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__MRV3NowPlayingController__handleClientPropertiesDidChange___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __61__MRV3NowPlayingController__handleClientPropertiesDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kMRMediaRemoteOriginUserInfoKey"];

  v4 = [*(a1 + 32) userInfo];
  v5 = [v4 objectForKeyedSubscript:@"kMRNowPlayingClientUserInfoKey"];

  v7 = *(a1 + 40);
  v6 = (a1 + 40);
  v8 = [v7 destination];
  v9 = [v8 playerPath];
  v10 = [v9 origin];
  if ([v10 isEqual:v3])
  {
    v11 = [*v6 destination];
    v12 = [v11 playerPath];
    v13 = [v12 client];
    v14 = [v13 isEqual:v5];

    if (v14)
    {
      v15 = _MRLogForCategory(1uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __61__MRV3NowPlayingController__handleClientPropertiesDidChange___block_invoke_cold_1(v6);
      }

      v16 = *v6;
      v17 = [*v6 destination];
      v18 = [v17 playerPath];
      v19 = [*v6 queue];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __61__MRV3NowPlayingController__handleClientPropertiesDidChange___block_invoke_65;
      v20[3] = &unk_1E769EE20;
      v20[4] = *v6;
      [v16 _requestClientPropertiesForPlayerPath:v18 queue:v19 completion:v20];
    }
  }

  else
  {
  }
}

uint64_t __61__MRV3NowPlayingController__handleClientPropertiesDidChange___block_invoke_65(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 _notifyDelegateOfError:?];
  }

  else
  {
    return [v3 _notifyDelegateOfUpdatedClientProperties:a2];
  }
}

- (void)_registerNotificationHandlersForResolvedPlayerPath:(id)a3
{
  if (![(MRV3NowPlayingController *)self registeredForNotifications])
  {
    MRMediaRemoteSetWantsNowPlayingNotifications(1);
    v4 = [(MRNowPlayingControllerConfiguration *)self->_configuration playbackQueueRequest];

    if (v4)
    {
      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      [v5 addObserver:self selector:sel__handlePlaybackQueueChangedNotification_ name:@"kMRPlayerPlaybackQueueChangedNotification" object:0];

      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      [v6 addObserver:self selector:sel__handlePlaybackQueueContentItemsChangedNotification_ name:@"kMRPlayerPlaybackQueueContentItemsChangedNotification" object:0];

      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      [v7 addObserver:self selector:sel__handlePlaybackQueueContentItemsArtworkChangedNotification_ name:@"kMRPlayerPlaybackQueueContentItemArtworkChangedNotification" object:0];
    }

    if ([(MRNowPlayingControllerConfiguration *)self->_configuration requestPlaybackState])
    {
      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 addObserver:self selector:sel__handlePlaybackStateChangedNotification_ name:@"_kMRMediaRemotePlayerPlaybackStateDidChangeNotification" object:0];
    }

    if ([(MRNowPlayingControllerConfiguration *)self->_configuration requestSupportedCommands])
    {
      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      [v9 addObserver:self selector:sel__handleSupportedCommandsChangedNotification_ name:@"kMRMediaRemotePlayerSupportedCommandsDidChangeNotification" object:0];
    }

    if ([(MRNowPlayingControllerConfiguration *)self->_configuration requestClientProperties])
    {
      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      [v10 addObserver:self selector:sel__handleClientPropertiesDidChange_ name:@"kMRMediaRemoteApplicationClientStateDidChange" object:0];
    }

    [(MRV3NowPlayingController *)self setRegisteredForNotifications:1];
  }
}

- (void)_unregisterNotificationHandlers
{
  if ([(MRV3NowPlayingController *)self registeredForNotifications])
  {
    MRMediaRemoteSetWantsNowPlayingNotifications(0);
    v3 = [(MRNowPlayingControllerConfiguration *)self->_configuration playbackQueueRequest];

    if (v3)
    {
      v4 = [MEMORY[0x1E696AD88] defaultCenter];
      [v4 removeObserver:self name:@"kMRPlayerPlaybackQueueChangedNotification" object:0];

      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      [v5 removeObserver:self name:@"kMRPlayerPlaybackQueueContentItemsChangedNotification" object:0];

      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      [v6 removeObserver:self name:@"kMRPlayerPlaybackQueueContentItemArtworkChangedNotification" object:0];
    }

    if ([(MRNowPlayingControllerConfiguration *)self->_configuration requestPlaybackState])
    {
      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      [v7 removeObserver:self name:@"_kMRMediaRemotePlayerPlaybackStateDidChangeNotification" object:0];
    }

    if ([(MRNowPlayingControllerConfiguration *)self->_configuration requestSupportedCommands])
    {
      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 removeObserver:self name:@"kMRMediaRemotePlayerSupportedCommandsDidChangeNotification" object:0];
    }

    if ([(MRNowPlayingControllerConfiguration *)self->_configuration requestClientProperties])
    {
      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      [v9 removeObserver:self name:@"kMRMediaRemoteApplicationClientStateDidChange" object:0];
    }

    [(MRV3NowPlayingController *)self setRegisteredForNotifications:0];
  }
}

- (BOOL)isUpdating
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = [(MRV3NowPlayingController *)self queue];
  msv_dispatch_sync_on_queue();

  v3 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (MRNowPlayingPlayerResponse)response
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__45;
  v11 = __Block_byref_object_dispose__45;
  v12 = 0;
  v3 = [(MRV3NowPlayingController *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__MRV3NowPlayingController_response__block_invoke;
  v6[3] = &unk_1E769A2A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __36__MRV3NowPlayingController_response__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (MRNowPlayingControllerConfiguration)configuration
{
  v2 = [(MRNowPlayingControllerConfiguration *)self->_configuration copy];

  return v2;
}

void __46__MRV3NowPlayingController__reloadWithReason___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_0(&dword_1A2860000, v1, v2, "[MRV3NowPlayingController] <%@> Error loading data %@.");
  v3 = *MEMORY[0x1E69E9840];
}

void __88__MRV3NowPlayingController__requestPlayerLastPlayingDateForPlayerPath_queue_completion___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_0(&dword_1A2860000, v2, v3, "[MRV3NowPlayingController] <%@> Failed to retrieve player last playing date with error: %@");
  v4 = *MEMORY[0x1E69E9840];
}

void __80__MRV3NowPlayingController__handlePlaybackQueueContentItemsChangedNotification___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_7(&dword_1A2860000, v1, v2, "[MRV3NowPlayingController] <%@> processing PlaybackQueueContentItemsChangedNotification for content items %@.");
  v3 = *MEMORY[0x1E69E9840];
}

void __80__MRV3NowPlayingController__handlePlaybackQueueContentItemsChangedNotification___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_7(&dword_1A2860000, v1, v2, "[MRV3NowPlayingController] <%@> deferring PlaybackQueueContentItemsChangedNotification for content items %@ because we are requesting a new playback queue.");
  v3 = *MEMORY[0x1E69E9840];
}

void __87__MRV3NowPlayingController__handlePlaybackQueueContentItemsArtworkChangedNotification___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_7(&dword_1A2860000, v1, v2, "[MRV3NowPlayingController] <%@> processing PlaybackQueueContentItemsArtworkChangedNotification for content items %@.");
  v3 = *MEMORY[0x1E69E9840];
}

void __72__MRV3NowPlayingController__handleSupportedCommandsChangedNotification___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x1E69E9840]);
  v4 = 138412290;
  v5 = v1;
  _os_log_debug_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEBUG, "[MRV3NowPlayingController] <%@> processing SupportedCommandsDidChangeNotification.", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __61__MRV3NowPlayingController__handleClientPropertiesDidChange___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x1E69E9840]);
  v2 = *(v1 + 40);
  v5 = 138412290;
  v6 = v2;
  _os_log_debug_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEBUG, "[MRV3NowPlayingController] <%@> processing ClientPropertiesDidChangeNotification.", &v5, 0xCu);
  v4 = *MEMORY[0x1E69E9840];
}

@end