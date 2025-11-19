@interface _MPCMusicPlayerControllerServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MPCPlaybackEngine)playbackEngine;
- (_MPCMusicPlayerControllerServer)initWithPlaybackEngine:(id)a3;
- (id)_nowPlayingWithItem:(id)a3;
- (id)_remoteCommandSenderIDForCurrentXPCConnection;
- (id)_timeSnapshotWithElapsedTime:(double)a3 rate:(float)a4;
- (void)_addContentItemIDsToUpdateRecord:(id)a3;
- (void)_appendPlaybackContexts:(id)a3 remoteCommandSenderID:(id)a4 completion:(id)a5;
- (void)_applyServerStateUpdateRecord:(id)a3;
- (void)_invokeServerCommandEvent:(id)a3 remoteCommandSenderID:(id)a4 completion:(id)a5;
- (void)_onQueue_setNowPlayingItem:(id)a3 itemIdentifier:(id)a4 remoteCommandSenderID:(id)a5 completion:(id)a6;
- (void)_prependPlaybackContexts:(id)a3 remoteCommandSenderID:(id)a4 completion:(id)a5;
- (void)_registerForCommandHandlersRegisteredNotification;
- (void)_registerForMPAVItemTitlesDidChangeNotification;
- (void)appendDescriptor:(id)a3 completion:(id)a4;
- (void)beginPlaybackAtHostTime:(id)a3;
- (void)beginSeekWithDirection:(int64_t)a3;
- (void)endSeek;
- (void)engine:(id)a3 didChangeCurrentItemVariantID:(id)a4;
- (void)engine:(id)a3 didChangeItemElapsedTime:(double)a4 rate:(float)a5;
- (void)engine:(id)a3 didChangeQueueWithReason:(id)a4;
- (void)engine:(id)a3 didChangeRepeatType:(int64_t)a4;
- (void)engine:(id)a3 didChangeShuffleType:(int64_t)a4;
- (void)engine:(id)a3 didChangeToItem:(id)a4;
- (void)engine:(id)a3 didChangeToState:(unint64_t)a4;
- (void)engine:(id)a3 didEndPlaybackOfItem:(id)a4;
- (void)engine:(id)a3 didReachEndOfQueueWithReason:(id)a4;
- (void)engine:(id)a3 didResetQueueWithPlaybackContext:(id)a4 error:(id)a5;
- (void)getDescriptorWithReply:(id)a3;
- (void)getImageForArtworkIdentifier:(id)a3 itemIdentifier:(id)a4 atSize:(CGSize)a5 reply:(id)a6;
- (void)getNowPlayingAtIndex:(int64_t)a3 reply:(id)a4;
- (void)getNowPlayingWithReply:(id)a3;
- (void)getNowPlayingsForContentItemIDs:(id)a3 reply:(id)a4;
- (void)getRepeatModeWithReply:(id)a3;
- (void)getShuffleModeWithReply:(id)a3;
- (void)getTimeSnapshotWithReply:(id)a3;
- (void)pauseWithFadeDuration:(int64_t)a3;
- (void)performQueueModifications:(id)a3 completion:(id)a4;
- (void)play;
- (void)prependDescriptor:(id)a3 completion:(id)a4;
- (void)prerollWithCompletion:(id)a3;
- (void)reshuffle;
- (void)resumeIfNeeded;
- (void)setApplicationMusicPlayerTransitionType:(int64_t)a3 withDuration:(double)a4;
- (void)setDescriptor:(id)a3 completion:(id)a4;
- (void)setDisableAutoPlay:(BOOL)a3;
- (void)setDisableAutomaticCanBeNowPlaying:(BOOL)a3;
- (void)setDisableRepeat:(BOOL)a3;
- (void)setDisableShuffle:(BOOL)a3;
- (void)setElapsedTime:(double)a3 completion:(id)a4;
- (void)setNowPlayingItem:(id)a3 itemIdentifier:(id)a4 completion:(id)a5;
- (void)setNowPlayingUID:(unint64_t)a3 completion:(id)a4;
- (void)setPlaybackRate:(float)a3 completion:(id)a4;
- (void)setRelativeVolume:(float)a3;
- (void)setRepeatMode:(int64_t)a3;
- (void)setShuffleMode:(int64_t)a3;
- (void)skipWithBehavior:(int64_t)a3;
- (void)startServer;
- (void)stopServer;
@end

@implementation _MPCMusicPlayerControllerServer

- (MPCPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (void)_registerForCommandHandlersRegisteredNotification
{
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E6970390];
  v4 = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  v5 = [v4 mediaRemotePublisher];
  v6 = [v5 commandCenter];
  [v7 addObserver:self selector:sel__handleCommandHandlersRegistered_ name:v3 object:v6];
}

- (void)startServer
{
  if (+[MPCPlaybackEngine isSystemMusic])
  {
    v3 = objc_alloc(MEMORY[0x1E696B0D8]);
    v4 = [v3 initWithMachServiceName:*MEMORY[0x1E6970258]];
    listener = self->_listener;
    self->_listener = v4;

    v6 = [MEMORY[0x1E6970800] sharedCache];
    v7 = 56;
  }

  else
  {
    v6 = [MEMORY[0x1E696B0D8] anonymousListener];
    v7 = 64;
  }

  v8 = *(&self->super.isa + v7);
  *(&self->super.isa + v7) = v6;

  [(NSXPCListener *)self->_listener setDelegate:self];
  v9 = [MEMORY[0x1E695DF70] array];
  activeConnections = self->_activeConnections;
  self->_activeConnections = v9;

  self->_resumed = 0;
  [(_MPCMusicPlayerControllerServer *)self _registerForMPAVItemTitlesDidChangeNotification];

  [(_MPCMusicPlayerControllerServer *)self resumeIfNeeded];
}

- (void)_registerForMPAVItemTitlesDidChangeNotification
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__handleMPAVItemTitlesDidChange_ name:*MEMORY[0x1E696F810] object:0];
}

- (void)resumeIfNeeded
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_listener && !self->_resumed)
  {
    v3 = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
    v4 = [v3 mediaRemotePublisher];
    v5 = [v4 commandCenter];
    v6 = [v5 commandHandlersRegistered];

    if (v6)
    {
      [(NSXPCListener *)self->_listener resume];
      self->_resumed = 1;
      v7 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 67109120;
        v10 = +[MPCPlaybackEngine isSystemMusic];
        v8 = "MPMusicPlayerControllerServer: startServer: resummed systemMusicApplication=%{BOOL}u";
LABEL_8:
        _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, v8, &v9, 8u);
      }
    }

    else
    {
      v7 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 67109120;
        v10 = +[MPCPlaybackEngine isSystemMusic];
        v8 = "MPMusicPlayerControllerServer: startServer: deferred resume waiting for canBeNowPlaying systemMusicApplication=%{BOOL}u";
        goto LABEL_8;
      }
    }
  }
}

- (id)_remoteCommandSenderIDForCurrentXPCConnection
{
  v2 = [MEMORY[0x1E696B0B8] currentConnection];
  v3 = v2;
  if (v2)
  {
    [v2 auditToken];
    v4 = MSVBundleIDForAuditToken();
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SenderBundleIdentifier = <%@>, SenderPID = <%i>", v4, objc_msgSend(v3, "processIdentifier")];

  return v5;
}

- (void)_invokeServerCommandEvent:(id)a3 remoteCommandSenderID:(id)a4 completion:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v8 mediaRemoteOptions];
  v12 = [v11 mutableCopy];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [MEMORY[0x1E695DF90] dictionary];
  }

  v15 = v14;

  v16 = MSVNanoIDCreateTaggedPointer();
  v17 = [@"MPMusicPlayer-" stringByAppendingString:v16];

  [v15 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69B10B0]];
  [v15 setObject:@"MPCMusicPlayerControllerServer" forKeyedSubscript:*MEMORY[0x1E69B1200]];
  [v15 setObject:v10 forKeyedSubscript:@"kMRMediaRemoteOptionSenderID"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v8;
    v19 = [v18 playbackQueue];
    [v19 setMediaRemoteOptions:v15];
    v20 = objc_alloc(MEMORY[0x1E6970970]);
    v21 = [v18 command];

    v22 = [v20 initWithCommand:v21 playbackQueue:v19];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v8;
      v19 = [v23 playbackQueue];
      v24 = objc_alloc(MEMORY[0x1E6970558]);
      v21 = [v23 command];

      v22 = [v24 initWithCommand:v21 playbackQueue:v19 options:v15];
    }

    else
    {
      v25 = objc_alloc(objc_opt_class());
      v19 = [v8 command];
      v21 = [v8 command];
      v22 = [v25 initWithCommand:v19 mediaRemoteType:objc_msgSend(v21 options:{"mediaRemoteCommandType"), v15}];
    }
  }

  v26 = v22;

  v27 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v37 = v26;
    _os_log_impl(&dword_1C5C61000, v27, OS_LOG_TYPE_DEFAULT, "MPMusicPlayerControllerServer: _invokeServerCommandEvent:… start dispatch [] serverEvent=%{public}@", buf, 0xCu);
  }

  v28 = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  v29 = [v28 mediaRemotePublisher];
  v30 = [v29 commandCenter];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __94___MPCMusicPlayerControllerServer__invokeServerCommandEvent_remoteCommandSenderID_completion___block_invoke;
  v33[3] = &unk_1E8237070;
  v34 = v26;
  v35 = v9;
  v31 = v9;
  v32 = v26;
  [v30 dispatchCommandEvent:v32 completion:v33];
}

- (void)_applyServerStateUpdateRecord:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_activeConnections;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) remoteObjectProxy];
        [v10 applyServerStateUpdateRecord:v4];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_addContentItemIDsToUpdateRecord:(id)a3
{
  v4 = a3;
  v5 = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  if (!+[MPCPlaybackEngine isSystemMusic])
  {
    v6 = [v5 queueController];
    v7 = [v6 displayItemCount];
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    v8 = [v6 contentItemIDsFromOffset:-v7 toOffset:v7 mode:1 nowPlayingIndex:&v9];
    [v4 setHasContentItemIDs:1];
    [v4 setContentItemIDs:v8];
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v40[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70___MPCMusicPlayerControllerServer_listener_shouldAcceptNewConnection___block_invoke;
  block[3] = &unk_1E82392C0;
  block[4] = self;
  v8 = v7;
  v36 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_initWeak(&location, self);
  objc_initWeak(&from, v8);
  v9 = [v8 processIdentifier];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __70___MPCMusicPlayerControllerServer_listener_shouldAcceptNewConnection___block_invoke_2;
  v29[3] = &unk_1E8237270;
  v32 = v9;
  objc_copyWeak(&v30, &location);
  objc_copyWeak(&v31, &from);
  [v8 setInvalidationHandler:v29];
  if (+[MPCPlaybackEngine isSystemMusic])
  {
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F45C1010];
    [v8 setExportedInterface:v10];
  }

  else
  {
    v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F45C1288];
    [v8 setExportedInterface:v11];

    v12 = [v8 remoteObjectInterface];
    v13 = MEMORY[0x1E695DFD8];
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    v15 = [v13 setWithArray:v14];
    [v12 setClasses:v15 forSelector:sel_getNowPlayingsForContentItemIDs_reply_ argumentIndex:0 ofReply:1];

    v10 = [v8 exportedInterface];
    v16 = MEMORY[0x1E695DFD8];
    v39[0] = objc_opt_class();
    v39[1] = objc_opt_class();
    v39[2] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:3];
    v18 = [v16 setWithArray:v17];
    [v10 setClasses:v18 forSelector:sel_beginPlaybackAtHostTime_ argumentIndex:0 ofReply:0];
  }

  v19 = MEMORY[0x1E69B14E8];
  v20 = [v8 exportedInterface];
  v21 = [v20 protocol];
  v22 = [v19 proxyWithObject:self protocol:v21];
  [v8 setExportedObject:v22];

  v23 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F45FD218];
  [v8 setRemoteObjectInterface:v23];

  if (MSVDeviceOSIsInternalInstall())
  {
    v24 = [MEMORY[0x1E695E000] standardUserDefaults];
    v25 = [v24 integerForKey:@"DelayMusicServerConnection"];

    if (v25 >= 1)
    {
      v26 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        LODWORD(v38[0]) = v25;
        WORD2(v38[0]) = 2114;
        *(v38 + 6) = v8;
        _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_DEFAULT, "MPMusicPlayerControllerServer: acceptNewConnection: delaying connection [%ds] %{public}@", buf, 0x12u);
      }

      sleep(v25);
    }
  }

  [v8 resume];
  v27 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v38[0] = v8;
    _os_log_impl(&dword_1C5C61000, v27, OS_LOG_TYPE_DEFAULT, "MPMusicPlayerControllerServer: acceptNewConnection: %{public}@", buf, 0xCu);
  }

  objc_destroyWeak(&v31);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

- (void)engine:(id)a3 didChangeCurrentItemVariantID:(id)a4
{
  v5 = [(_MPCMusicPlayerControllerServer *)self playbackEngine:a3];
  v9 = [v5 queueController];

  v6 = [v9 currentItem];
  if (([v6 isPlaceholder] & 1) == 0)
  {
    v7 = [(_MPCMusicPlayerControllerServer *)self _nowPlayingWithItem:v6];
    v8 = objc_alloc_init(MEMORY[0x1E6970808]);
    [v8 setHasNowPlaying:1];
    [v8 setNowPlaying:v7];
    [v8 setAudioFormatDidChange:1];
    [(_MPCMusicPlayerControllerServer *)self _applyServerStateUpdateRecord:v8];
  }
}

- (void)engine:(id)a3 didChangeItemElapsedTime:(double)a4 rate:(float)a5
{
  v10 = objc_alloc_init(MEMORY[0x1E6970808]);
  [v10 setHasTimeSnapshot:1];
  *&v8 = a5;
  v9 = [(_MPCMusicPlayerControllerServer *)self _timeSnapshotWithElapsedTime:a4 rate:v8];
  [v10 setTimeSnapshot:v9];

  [(_MPCMusicPlayerControllerServer *)self _applyServerStateUpdateRecord:v10];
}

- (void)engine:(id)a3 didEndPlaybackOfItem:(id)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E6970808]);
  [v5 setItemDidEnd:1];
  [(_MPCMusicPlayerControllerServer *)self _applyServerStateUpdateRecord:v5];
}

- (void)engine:(id)a3 didReachEndOfQueueWithReason:(id)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E6970808]);
  [v5 setQueueDidEnd:1];
  [(_MPCMusicPlayerControllerServer *)self _applyServerStateUpdateRecord:v5];
}

- (void)engine:(id)a3 didChangeShuffleType:(int64_t)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E6970808]);
  [v5 setHasShuffleMode:1];
  [v5 setShuffleMode:MPMusicShuffleModeForMPShuffleType()];
  [v5 setQueueDidChange:1];
  [(_MPCMusicPlayerControllerServer *)self _addContentItemIDsToUpdateRecord:v5];
  [(_MPCMusicPlayerControllerServer *)self _applyServerStateUpdateRecord:v5];
}

- (void)engine:(id)a3 didChangeRepeatType:(int64_t)a4
{
  v5 = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  v9 = [v5 queueController];

  v6 = [v9 music];
  v7 = [v6 autoPlayEnabled];

  v8 = objc_alloc_init(MEMORY[0x1E6970808]);
  [v8 setHasRepeatMode:1];
  [v8 setRepeatMode:MPMusicRepeatModeForMPRepeatType()];
  [v8 setQueueDidChange:v7];
  if (v7)
  {
    [(_MPCMusicPlayerControllerServer *)self _addContentItemIDsToUpdateRecord:v8];
  }

  [(_MPCMusicPlayerControllerServer *)self _applyServerStateUpdateRecord:v8];
}

- (void)engine:(id)a3 didResetQueueWithPlaybackContext:(id)a4 error:(id)a5
{
  v16 = a5;
  v7 = [a4 queueDescriptor];
  objc_storeStrong(&self->_queueDescriptor, v7);
  if (self->_prepareCompletionHandler)
  {
    v8 = self->_preparingDescriptor;
    v9 = v8;
    if (v8 == v7)
    {

      if (!v16)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = [(MPMusicPlayerQueueDescriptor *)v8 isEqual:v7];

      if (!v16 || (v10 & 1) == 0)
      {
        if (v10)
        {
          goto LABEL_10;
        }

        prepareCompletionHandler = self->_prepareCompletionHandler;
        v12 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E6970248] code:2 debugDescription:@"Queue was interrupted by another queue"];
        prepareCompletionHandler[2](prepareCompletionHandler, v12);

        goto LABEL_9;
      }
    }

    (*(self->_prepareCompletionHandler + 2))();
LABEL_9:
    v13 = self->_prepareCompletionHandler;
    self->_prepareCompletionHandler = 0;

    preparingDescriptor = self->_preparingDescriptor;
    self->_preparingDescriptor = 0;
  }

LABEL_10:
  [(MPMusicPlayerControllerSystemCache *)self->_systemCache setQueueDescriptor:v7];
  v15 = objc_alloc_init(MEMORY[0x1E6970808]);
  [v15 setHasQueueDescriptor:1];
  [v15 setQueueDescriptor:v7];
  [v15 setQueueDidChange:1];
  [(_MPCMusicPlayerControllerServer *)self _addContentItemIDsToUpdateRecord:v15];
  [(_MPCMusicPlayerControllerServer *)self _applyServerStateUpdateRecord:v15];
}

- (void)engine:(id)a3 didChangeToItem:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 player];
    v23 = 138543618;
    v24 = v7;
    v25 = 1024;
    v26 = [v9 isReloadingPlaybackContext];
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "MPMusicPlayerControllerServer: engine:didChangeToItem: - %{public}@ - reloading:%{BOOL}u", &v23, 0x12u);
  }

  v10 = [v6 player];
  v11 = [v10 isReloadingPlaybackContext];

  if ((v11 & 1) == 0)
  {
    v12 = [v7 isPlaceholder];
    v13 = 0;
    if (!v7)
    {
      goto LABEL_14;
    }

    if (v12)
    {
      goto LABEL_14;
    }

    v13 = [(_MPCMusicPlayerControllerServer *)self _nowPlayingWithItem:v7];
    if (!self->_prepareCompletionHandler)
    {
      goto LABEL_14;
    }

    queueDescriptor = self->_queueDescriptor;
    v15 = self->_preparingDescriptor;
    v16 = v15;
    if (v15 == queueDescriptor)
    {
    }

    else
    {
      v17 = [(MPMusicPlayerQueueDescriptor *)v15 isEqual:queueDescriptor];

      if (!v17)
      {
LABEL_14:
        [(MPMusicPlayerControllerSystemCache *)self->_systemCache setNowPlaying:v13];
        v22 = objc_alloc_init(MEMORY[0x1E6970808]);
        [v22 setHasNowPlaying:1];
        [v22 setNowPlaying:v13];
        [v22 setQueueDidChange:0];
        [(_MPCMusicPlayerControllerServer *)self _addContentItemIDsToUpdateRecord:v22];
        [(_MPCMusicPlayerControllerServer *)self _applyServerStateUpdateRecord:v22];

        goto LABEL_15;
      }
    }

    if (![(MPMusicPlayerQueueDescriptor *)self->_queueDescriptor matchesStartItem:v7]&& !self->_waitingForAdditionalPlaybackContexts)
    {
      prepareCompletionHandler = self->_prepareCompletionHandler;
      v19 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E6970248] code:6 debugDescription:@"Prepare queue failed with unexpected start item"];
      prepareCompletionHandler[2](prepareCompletionHandler, v19);

      v20 = self->_prepareCompletionHandler;
      self->_prepareCompletionHandler = 0;

      preparingDescriptor = self->_preparingDescriptor;
      self->_preparingDescriptor = 0;
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (void)engine:(id)a3 didChangeQueueWithReason:(id)a4
{
  v5 = [(_MPCMusicPlayerControllerServer *)self playbackEngine:a3];
  v6 = [v5 queueController];

  v7 = [v6 currentItem];
  if ([v7 isPlaceholder])
  {
    v8 = 0;
  }

  else
  {
    v8 = [(_MPCMusicPlayerControllerServer *)self _nowPlayingWithItem:v7];
  }

  v10 = v8;
  [(MPMusicPlayerControllerSystemCache *)self->_systemCache setNowPlaying:v8];
  v9 = objc_alloc_init(MEMORY[0x1E6970808]);
  [v9 setHasNowPlaying:1];
  [v9 setNowPlaying:v10];
  [v9 setQueueDidChange:1];
  [(_MPCMusicPlayerControllerServer *)self _addContentItemIDsToUpdateRecord:v9];
  [(_MPCMusicPlayerControllerServer *)self _applyServerStateUpdateRecord:v9];
}

- (void)engine:(id)a3 didChangeToState:(unint64_t)a4
{
  v7 = objc_alloc_init(MEMORY[0x1E6970808]);
  [v7 setHasTimeSnapshot:1];
  LODWORD(v5) = 2143289344;
  v6 = [(_MPCMusicPlayerControllerServer *)self _timeSnapshotWithElapsedTime:NAN rate:v5];
  [v7 setTimeSnapshot:v6];

  [(_MPCMusicPlayerControllerServer *)self _applyServerStateUpdateRecord:v7];
}

- (void)setApplicationMusicPlayerTransitionType:(int64_t)a3 withDuration:(double)a4
{
  v7 = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  v6 = [v7 player];
  [v6 setApplicationMusicPlayerTransitionType:a3 withDuration:a4];
}

- (void)setDisableShuffle:(BOOL)a3
{
  v3 = a3;
  v4 = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  [v4 setDisableShuffle:v3];
}

- (void)setDisableRepeat:(BOOL)a3
{
  v3 = a3;
  v4 = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  [v4 setDisableRepeat:v3];
}

- (void)setDisableAutoPlay:(BOOL)a3
{
  v3 = a3;
  v4 = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  [v4 setDisableAutoPlay:v3];
}

- (void)setDisableAutomaticCanBeNowPlaying:(BOOL)a3
{
  v3 = a3;
  v6 = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  v4 = [v6 mediaRemotePublisher];
  v5 = [v4 commandCenter];
  [v5 setDisableAutomaticCanBeNowPlaying:v3];
}

- (void)setRelativeVolume:(float)a3
{
  v8 = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  v4 = [v8 player];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [v8 player];
    *&v7 = a3;
    [v6 setRelativeVolume:v7];
  }
}

- (void)beginPlaybackAtHostTime:(id)a3
{
  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_ERROR, "MPMusicPlayerControllerServer: beginPlaybackAtHostTime FAILED [not implemented]", v4, 2u);
  }
}

- (void)prerollWithCompletion:(id)a3
{
  v3 = a3;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_ERROR, "MPMusicPlayerControllerServer: prerollWithCompletion FAILED [not implemented]", v5, 2u);
  }

  v3[2](v3, 0);
}

- (void)performQueueModifications:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
  v10 = os_signpost_id_generate(v9);

  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "performQueueModifications", "", buf, 2u);
  }

  v13 = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  if (+[MPCPlaybackEngine isSystemMusic])
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"_MPCMusicPlayerControllerServer.m" lineNumber:890 description:@"performQueueModifications is not supported for the system music application"];
  }

  v14 = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __72___MPCMusicPlayerControllerServer_performQueueModifications_completion___block_invoke;
  v20[3] = &unk_1E82393D8;
  v21 = v13;
  v22 = v7;
  v23 = self;
  v24 = v14;
  v25 = v8;
  v26 = v10;
  v15 = v8;
  v16 = v14;
  v17 = v7;
  v18 = v13;
  dispatch_async(MEMORY[0x1E69E96A0], v20);
}

- (void)setPlaybackRate:(float)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
  v9 = os_signpost_id_generate(v8);

  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "setPlaybackRate", "", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62___MPCMusicPlayerControllerServer_setPlaybackRate_completion___block_invoke;
  block[3] = &unk_1E8237220;
  v18 = a3;
  block[4] = self;
  v15 = v7;
  v16 = v6;
  v17 = v9;
  v12 = v6;
  v13 = v7;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
}

- (void)setElapsedTime:(double)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
  v9 = os_signpost_id_generate(v8);

  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "setElapsedTime", "", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61___MPCMusicPlayerControllerServer_setElapsedTime_completion___block_invoke;
  block[3] = &unk_1E82371F8;
  v17 = a3;
  block[4] = self;
  v15 = v7;
  v16 = v6;
  v18 = v9;
  v12 = v6;
  v13 = v7;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
}

- (void)getShuffleModeWithReply:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
  v6 = os_signpost_id_generate(v5);

  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "getShuffleMode", "", buf, 2u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59___MPCMusicPlayerControllerServer_getShuffleModeWithReply___block_invoke;
  v12[3] = &unk_1E8239170;
  v12[4] = self;
  v13 = v4;
  v9 = v4;
  dispatch_sync(MEMORY[0x1E69E96A0], v12);
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v11, OS_SIGNPOST_INTERVAL_END, v6, "getShuffleMode", "", buf, 2u);
  }
}

- (void)setShuffleMode:(int64_t)a3
{
  v5 = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
  v7 = os_signpost_id_generate(v6);

  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "setShuffleMode", "", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50___MPCMusicPlayerControllerServer_setShuffleMode___block_invoke;
  block[3] = &unk_1E82391E8;
  v14 = v5;
  v15 = a3;
  block[4] = self;
  v10 = v5;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v12 = v11;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v12, OS_SIGNPOST_INTERVAL_END, v7, "setShuffleMode", "", buf, 2u);
  }
}

- (void)getRepeatModeWithReply:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
  v6 = os_signpost_id_generate(v5);

  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "getRepeatMode", "", buf, 2u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58___MPCMusicPlayerControllerServer_getRepeatModeWithReply___block_invoke;
  v12[3] = &unk_1E8239170;
  v12[4] = self;
  v13 = v4;
  v9 = v4;
  dispatch_sync(MEMORY[0x1E69E96A0], v12);
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v11, OS_SIGNPOST_INTERVAL_END, v6, "getRepeatMode", "", buf, 2u);
  }
}

- (void)setRepeatMode:(int64_t)a3
{
  v5 = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
  v7 = os_signpost_id_generate(v6);

  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "setRepeatMode", "", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49___MPCMusicPlayerControllerServer_setRepeatMode___block_invoke;
  block[3] = &unk_1E82391E8;
  v14 = v5;
  v15 = a3;
  block[4] = self;
  v10 = v5;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v12 = v11;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v12, OS_SIGNPOST_INTERVAL_END, v7, "setRepeatMode", "", buf, 2u);
  }
}

- (void)endSeek
{
  v3 = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
  v5 = os_signpost_id_generate(v4);

  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "endSeek", "", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42___MPCMusicPlayerControllerServer_endSeek__block_invoke;
  v11[3] = &unk_1E82392C0;
  v11[4] = self;
  v12 = v3;
  v8 = v3;
  dispatch_sync(MEMORY[0x1E69E96A0], v11);
  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v10 = v9;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v10, OS_SIGNPOST_INTERVAL_END, v5, "endSeek", "", buf, 2u);
  }
}

- (void)beginSeekWithDirection:(int64_t)a3
{
  v5 = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
  v7 = os_signpost_id_generate(v6);

  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "beginSeekWithDirection", "", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58___MPCMusicPlayerControllerServer_beginSeekWithDirection___block_invoke;
  block[3] = &unk_1E82391E8;
  v14 = v5;
  v15 = a3;
  block[4] = self;
  v10 = v5;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v12 = v11;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v12, OS_SIGNPOST_INTERVAL_END, v7, "beginSeekWithDirection", "", buf, 2u);
  }
}

- (void)reshuffle
{
  v3 = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
  v5 = os_signpost_id_generate(v4);

  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "reshuffle", "", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44___MPCMusicPlayerControllerServer_reshuffle__block_invoke;
  v11[3] = &unk_1E82392C0;
  v11[4] = self;
  v12 = v3;
  v8 = v3;
  dispatch_sync(MEMORY[0x1E69E96A0], v11);
  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v10 = v9;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v10, OS_SIGNPOST_INTERVAL_END, v5, "reshuffle", "", buf, 2u);
  }
}

- (void)skipWithBehavior:(int64_t)a3
{
  v5 = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
  v7 = os_signpost_id_generate(v6);

  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "skipWithBehavior", "", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52___MPCMusicPlayerControllerServer_skipWithBehavior___block_invoke;
  block[3] = &unk_1E82391E8;
  v14 = v5;
  v15 = a3;
  block[4] = self;
  v10 = v5;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v12 = v11;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v12, OS_SIGNPOST_INTERVAL_END, v7, "skipWithBehavior", "", buf, 2u);
  }
}

- (void)pauseWithFadeDuration:(int64_t)a3
{
  v4 = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
  v6 = os_signpost_id_generate(v5);

  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "pauseWithFadeDuration", "", buf, 2u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57___MPCMusicPlayerControllerServer_pauseWithFadeDuration___block_invoke;
  v12[3] = &unk_1E82392C0;
  v12[4] = self;
  v13 = v4;
  v9 = v4;
  dispatch_sync(MEMORY[0x1E69E96A0], v12);
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v11, OS_SIGNPOST_INTERVAL_END, v6, "pauseWithFadeDuration", "", buf, 2u);
  }
}

- (void)play
{
  v3 = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
  v5 = os_signpost_id_generate(v4);

  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "play", "", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __39___MPCMusicPlayerControllerServer_play__block_invoke;
  v11[3] = &unk_1E82392C0;
  v11[4] = self;
  v12 = v3;
  v8 = v3;
  dispatch_sync(MEMORY[0x1E69E96A0], v11);
  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v10 = v9;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v10, OS_SIGNPOST_INTERVAL_END, v5, "play", "", buf, 2u);
  }
}

- (void)_appendPlaybackContexts:(id)a3 remoteCommandSenderID:(id)a4 completion:(id)a5
{
  v27[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v11 = [v8 firstObject];
  if (v11)
  {
    v12 = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
    v13 = [v12 mediaRemotePublisher];
    v14 = [v13 commandCenter];

    v15 = [v14 insertIntoPlaybackQueueCommand];
    if ([v15 isSupportedAndEnabled])
    {
      [v11 setActionAfterQueueLoad:10];
      v16 = [[MPCPlaybackContextRemotePlaybackQueue alloc] initWithPlaybackContext:v11];
      [(MPCPlaybackContextRemotePlaybackQueue *)v16 setReplaceIntent:1];
      v17 = objc_alloc(MEMORY[0x1E6970558]);
      v26[0] = *MEMORY[0x1E69B1178];
      v26[1] = @"MPCRemoteCommandEventOptionShouldPlayInsertedContent";
      v27[0] = &unk_1F4599508;
      v27[1] = MEMORY[0x1E695E118];
      v26[2] = @"_MPCOverrideAllowsInsertionPositionLast";
      v27[2] = MEMORY[0x1E695E118];
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
      v19 = [v17 initWithCommand:v15 playbackQueue:v16 options:v18];

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __92___MPCMusicPlayerControllerServer__appendPlaybackContexts_remoteCommandSenderID_completion___block_invoke;
      v21[3] = &unk_1E8237188;
      v25 = v10;
      v22 = v8;
      v23 = self;
      v24 = v9;
      [(_MPCMusicPlayerControllerServer *)self _invokeServerCommandEvent:v19 remoteCommandSenderID:v24 completion:v21];
    }

    else
    {
      v20 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E6970248] code:7 debugDescription:@"InsertIntoPlaybackQueue is currently not enabled or the playback engine is not ready"];
      (*(v10 + 2))(v10, v20);
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E6970248] code:1 debugDescription:@"Playback context not found when appending contexts."];
    (*(v10 + 2))(v10, v14);
  }
}

- (void)appendDescriptor:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 playbackContexts];
  self->_waitingForAdditionalPlaybackContexts = [v7 count] > 1;
  v8 = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v8;
  v11 = v7;
  msv_dispatch_on_main_queue();
}

- (void)_prependPlaybackContexts:(id)a3 remoteCommandSenderID:(id)a4 completion:(id)a5
{
  v27[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 lastObject];
  if (v11)
  {
    v12 = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
    v13 = [v12 mediaRemotePublisher];
    v14 = [v13 commandCenter];

    v15 = [v14 insertIntoPlaybackQueueCommand];
    if ([v15 isSupportedAndEnabled])
    {
      [v11 setActionAfterQueueLoad:10];
      v16 = [[MPCPlaybackContextRemotePlaybackQueue alloc] initWithPlaybackContext:v11];
      [(MPCPlaybackContextRemotePlaybackQueue *)v16 setReplaceIntent:1];
      v17 = objc_alloc(MEMORY[0x1E6970558]);
      v26 = *MEMORY[0x1E69B1178];
      v27[0] = &unk_1F45994F0;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      v19 = [v17 initWithCommand:v15 playbackQueue:v16 options:v18];

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __93___MPCMusicPlayerControllerServer__prependPlaybackContexts_remoteCommandSenderID_completion___block_invoke;
      v21[3] = &unk_1E8237188;
      v25 = v10;
      v22 = v8;
      v23 = self;
      v24 = v9;
      [(_MPCMusicPlayerControllerServer *)self _invokeServerCommandEvent:v19 remoteCommandSenderID:v24 completion:v21];
    }

    else
    {
      v20 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E6970248] code:7 debugDescription:@"InsertIntoPlaybackQueue is currently not enabled or the playback engine is not ready"];
      (*(v10 + 2))(v10, v20);
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E6970248] code:1 debugDescription:@"Playback context not found when prepending contexts."];
    (*(v10 + 2))(v10, v14);
  }
}

- (void)prependDescriptor:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 playbackContexts];
  self->_waitingForAdditionalPlaybackContexts = [v7 count] > 1;
  v8 = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v8;
  v11 = v7;
  msv_dispatch_on_main_queue();
}

- (void)getDescriptorWithReply:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58___MPCMusicPlayerControllerServer_getDescriptorWithReply___block_invoke;
  v6[3] = &unk_1E8239170;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_sync(MEMORY[0x1E69E96A0], v6);
}

- (void)setDescriptor:(id)a3 completion:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
  v9 = os_signpost_id_generate(v8);

  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "setDescriptor", "", buf, 2u);
  }

  v12 = [v6 playbackContexts];
  v13 = [v12 firstObject];
  v14 = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  if ([v14 disableRepeat])
  {
    [v13 setRepeatType:0];
  }

  if ([v14 disableShuffle])
  {
    [v13 setShuffleType:0];
  }

  [v13 setQueueEndAction:2];
  if (v13)
  {
    v15 = [MEMORY[0x1E696B0B8] currentConnection];
    v16 = v15;
    if (v15)
    {
      [v15 auditToken];
      v17 = MSVBundleIDForAuditToken();
    }

    else
    {
      v17 = 0;
    }

    v21 = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60___MPCMusicPlayerControllerServer_setDescriptor_completion___block_invoke;
    block[3] = &unk_1E8237138;
    block[4] = self;
    v25 = v6;
    v31 = v7;
    v32 = v9;
    v26 = v12;
    v27 = v17;
    v28 = v13;
    v29 = v21;
    v30 = v14;
    v22 = v21;
    v23 = v17;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v18 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v34 = v6;
      _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "MusicKit: No playback contexts found for descriptor %{public}@", buf, 0xCu);
    }

    v19 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E6970248] code:1 debugDescription:@"Playback context not found when setting descriptor."];
    (*(v7 + 2))(v7, v19);

    v20 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
    v16 = v20;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v16, OS_SIGNPOST_INTERVAL_END, v9, "setDescriptor", "", buf, 2u);
    }
  }
}

- (void)getTimeSnapshotWithReply:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
  v6 = os_signpost_id_generate(v5);

  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "getTimeSnapshot", "", buf, 2u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60___MPCMusicPlayerControllerServer_getTimeSnapshotWithReply___block_invoke;
  v12[3] = &unk_1E8239170;
  v12[4] = self;
  v13 = v4;
  v9 = v4;
  dispatch_sync(MEMORY[0x1E69E96A0], v12);
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v11, OS_SIGNPOST_INTERVAL_END, v6, "getTimeSnapshot", "", buf, 2u);
  }
}

- (id)_timeSnapshotWithElapsedTime:(double)a3 rate:(float)a4
{
  v6 = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  v7 = [v6 player];
  v8 = [v7 currentItem];

  v9 = [v6 player];
  v10 = [v9 state];

  v11 = 4;
  if (a4 < 0.0)
  {
    v11 = 5;
  }

  v12 = 3;
  if (v10 != 6)
  {
    v12 = 0;
  }

  if ((v10 - 3) >= 3)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  v14 = 2;
  if (v10 != 1)
  {
    v14 = v10 == 2;
  }

  if (v10 <= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  if ([v8 isAlwaysLive])
  {
    *&v16 = a4;
    [MEMORY[0x1E69707F8] liveSnapshotWithRate:v15 state:v16];
  }

  else
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v18 = v17;
    v19 = MEMORY[0x1E69707F8];
    [v8 durationIfAvailable];
    *&v20 = a4;
    [v19 snapshotWithElapsedTime:v15 duration:a3 rate:v21 atTimestamp:v20 state:v18];
  }
  v22 = ;

  return v22;
}

- (void)getImageForArtworkIdentifier:(id)a3 itemIdentifier:(id)a4 atSize:(CGSize)a5 reply:(id)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __92___MPCMusicPlayerControllerServer_getImageForArtworkIdentifier_itemIdentifier_atSize_reply___block_invoke;
  v17[3] = &unk_1E82370E8;
  v17[4] = self;
  v18 = v12;
  v21 = width;
  v22 = height;
  v19 = v11;
  v20 = v13;
  v14 = v11;
  v15 = v13;
  v16 = v12;
  dispatch_sync(MEMORY[0x1E69E96A0], v17);
}

- (void)setNowPlayingUID:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
  v9 = os_signpost_id_generate(v8);

  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "setNowPlayingUID", "", buf, 2u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63___MPCMusicPlayerControllerServer_setNowPlayingUID_completion___block_invoke;
  v16[3] = &unk_1E8238C70;
  v16[4] = self;
  v17 = v7;
  v18 = v6;
  v19 = a3;
  v12 = v6;
  v13 = v7;
  dispatch_sync(MEMORY[0x1E69E96A0], v16);
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v15 = v14;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v15, OS_SIGNPOST_INTERVAL_END, v9, "setNowPlayingUID", "", buf, 2u);
  }
}

- (void)_onQueue_setNowPlayingItem:(id)a3 itemIdentifier:(id)a4 remoteCommandSenderID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v14 = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  v15 = [v14 mediaRemotePublisher];
  v16 = [v15 commandCenter];

  v17 = [v16 playItemInQueueCommand];
  v18 = v17;
  if (!(v10 | v11))
  {
    v19 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E6970248];
    v21 = @"No item provided to setNowPlayingItem";
    v22 = 5;
LABEL_7:
    v26 = [v19 msv_errorWithDomain:v20 code:v22 debugDescription:v21];
    v13[2](v13, v26);

    goto LABEL_15;
  }

  if (![v17 isSupportedAndEnabled])
  {
    v19 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E6970248];
    v21 = @"PlayItemInQueue is currently not enabled or the playback engine is not ready";
    v22 = 7;
    goto LABEL_7;
  }

  v23 = [MEMORY[0x1E695DF90] dictionary];
  v24 = v11;
  if (v11)
  {
    v25 = v24;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [v10 modelObject];
      v27 = [v30 identifiers];
      v25 = [v27 contentItemID];
    }

    else
    {
      v25 = 0;
    }
  }

  if ([v25 length])
  {
    [v23 setObject:v25 forKeyedSubscript:*MEMORY[0x1E69B10C8]];
  }

  else
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v10, "persistentID")}];
    [v23 setObject:v28 forKeyedSubscript:*MEMORY[0x1E69B1270]];
  }

  v29 = [v18 newCommandEventWithCommandType:131 options:v23];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __110___MPCMusicPlayerControllerServer__onQueue_setNowPlayingItem_itemIdentifier_remoteCommandSenderID_completion___block_invoke;
  v31[3] = &unk_1E8237070;
  v32 = v10;
  v33 = v13;
  [(_MPCMusicPlayerControllerServer *)self _invokeServerCommandEvent:v29 remoteCommandSenderID:v12 completion:v31];

LABEL_15:
}

- (void)setNowPlayingItem:(id)a3 itemIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
  v13 = os_signpost_id_generate(v12);

  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "setNowPlayingItem", "", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79___MPCMusicPlayerControllerServer_setNowPlayingItem_itemIdentifier_completion___block_invoke;
  block[3] = &unk_1E8237048;
  block[4] = self;
  v23 = v8;
  v24 = v9;
  v25 = v11;
  v26 = v10;
  v16 = v10;
  v17 = v11;
  v18 = v9;
  v19 = v8;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v20 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v21 = v20;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v21, OS_SIGNPOST_INTERVAL_END, v13, "setNowPlayingItem", "", buf, 2u);
  }
}

- (void)getNowPlayingAtIndex:(int64_t)a3 reply:(id)a4
{
  v6 = a4;
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
  v8 = os_signpost_id_generate(v7);

  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "getNowPlayingAtIndex", "", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62___MPCMusicPlayerControllerServer_getNowPlayingAtIndex_reply___block_invoke;
  block[3] = &unk_1E8237020;
  v15 = v6;
  v16 = a3;
  block[4] = self;
  v11 = v6;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v13 = v12;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v13, OS_SIGNPOST_INTERVAL_END, v8, "getNowPlayingAtIndex", "", buf, 2u);
  }
}

- (id)_nowPlayingWithItem:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (v4)
  {
    v5 = [v4 mediaItem];
    v38 = v4;
    v6 = [v4 contentItem];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
      v8 = [v7 modelObject];
      v9 = [v8 identifiers];
      v10 = [v9 contentItemID];
      v11 = [v10 length];

      v5 = v7;
      if (!v11)
      {
        v12 = [v7 modelObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = MEMORY[0x1E6970670];
          v14 = v12;
          v15 = [v14 anyObject];
          v16 = [v14 identifiers];

          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __55___MPCMusicPlayerControllerServer__nowPlayingWithItem___block_invoke;
          v41[3] = &unk_1E82389D8;
          v42 = v6;
          v17 = [v16 copyWithSource:@"MPMusicPlayerControllerServer" block:v41];
          v18 = v6;
          v19 = [v15 copyWithIdentifiers:v17 block:&__block_literal_global_21230];
          v20 = [v13 genericObjectWithModelObject:v19];

          v6 = v18;
        }

        else
        {
          v22 = [v12 identifiers];
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __55___MPCMusicPlayerControllerServer__nowPlayingWithItem___block_invoke_3;
          v39[3] = &unk_1E82389D8;
          v40 = v6;
          v23 = [v22 copyWithSource:@"MPMusicPlayerControllerServer" block:v39];
          v20 = [v12 copyWithIdentifiers:v23 block:&__block_literal_global_14_21231];

          v14 = v40;
        }

        v5 = [objc_alloc(MEMORY[0x1E6970700]) initWithModelObject:v20];
      }
    }

    v24 = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
    v25 = [v24 queueController];

    v26 = [v6 identifier];
    v37 = [v25 displayIndexForContentItemID:v26];

    v27 = [v25 displayItemCount];
    v28 = [v25 behaviorImpl];
    v29 = [v6 identifier];
    v30 = [v28 componentsForContentItemID:v29];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [v30 uid];
    }

    else
    {
      v31 = 0;
    }

    v32 = MEMORY[0x1E69707F0];
    v33 = [v6 identifier];
    v34 = [v6 artworkIdentifier];
    v35 = [v6 activeFormat];
    v21 = [v32 nowPlayingWithItem:v5 itemIdentifier:v33 itemUID:v31 artworkIdentifier:v34 audioFormat:v35 index:v37 count:v27];

    v4 = v38;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)getNowPlayingsForContentItemIDs:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
  v9 = os_signpost_id_generate(v8);

  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "getNowPlayingsForContentItemIDs", "", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73___MPCMusicPlayerControllerServer_getNowPlayingsForContentItemIDs_reply___block_invoke;
  block[3] = &unk_1E8239198;
  block[4] = self;
  v17 = v6;
  v18 = v7;
  v12 = v7;
  v13 = v6;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v15 = v14;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v15, OS_SIGNPOST_INTERVAL_END, v9, "getNowPlayingsForContentItemIDs", "", buf, 2u);
  }
}

- (void)getNowPlayingWithReply:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
  v6 = os_signpost_id_generate(v5);

  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "getNowPlaying", "", buf, 2u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58___MPCMusicPlayerControllerServer_getNowPlayingWithReply___block_invoke;
  v12[3] = &unk_1E8239170;
  v12[4] = self;
  v13 = v4;
  v9 = v4;
  dispatch_sync(MEMORY[0x1E69E96A0], v12);
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v11, OS_SIGNPOST_INTERVAL_END, v6, "getNowPlaying", "", buf, 2u);
  }
}

- (void)stopServer
{
  [(NSXPCListener *)self->_listener invalidate];
  listener = self->_listener;
  self->_listener = 0;

  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "MPMusicPlayerControllerServer: stopServer", v5, 2u);
  }
}

- (_MPCMusicPlayerControllerServer)initWithPlaybackEngine:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _MPCMusicPlayerControllerServer;
  v5 = [(_MPCMusicPlayerControllerServer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playbackEngine, v4);
    [v4 addEngineObserver:v6];
    [(_MPCMusicPlayerControllerServer *)v6 _registerForCommandHandlersRegisteredNotification];
  }

  return v6;
}

@end