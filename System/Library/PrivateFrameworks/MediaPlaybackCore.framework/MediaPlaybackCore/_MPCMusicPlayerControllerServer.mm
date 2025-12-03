@interface _MPCMusicPlayerControllerServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MPCPlaybackEngine)playbackEngine;
- (_MPCMusicPlayerControllerServer)initWithPlaybackEngine:(id)engine;
- (id)_nowPlayingWithItem:(id)item;
- (id)_remoteCommandSenderIDForCurrentXPCConnection;
- (id)_timeSnapshotWithElapsedTime:(double)time rate:(float)rate;
- (void)_addContentItemIDsToUpdateRecord:(id)record;
- (void)_appendPlaybackContexts:(id)contexts remoteCommandSenderID:(id)d completion:(id)completion;
- (void)_applyServerStateUpdateRecord:(id)record;
- (void)_invokeServerCommandEvent:(id)event remoteCommandSenderID:(id)d completion:(id)completion;
- (void)_onQueue_setNowPlayingItem:(id)item itemIdentifier:(id)identifier remoteCommandSenderID:(id)d completion:(id)completion;
- (void)_prependPlaybackContexts:(id)contexts remoteCommandSenderID:(id)d completion:(id)completion;
- (void)_registerForCommandHandlersRegisteredNotification;
- (void)_registerForMPAVItemTitlesDidChangeNotification;
- (void)appendDescriptor:(id)descriptor completion:(id)completion;
- (void)beginPlaybackAtHostTime:(id)time;
- (void)beginSeekWithDirection:(int64_t)direction;
- (void)endSeek;
- (void)engine:(id)engine didChangeCurrentItemVariantID:(id)d;
- (void)engine:(id)engine didChangeItemElapsedTime:(double)time rate:(float)rate;
- (void)engine:(id)engine didChangeQueueWithReason:(id)reason;
- (void)engine:(id)engine didChangeRepeatType:(int64_t)type;
- (void)engine:(id)engine didChangeShuffleType:(int64_t)type;
- (void)engine:(id)engine didChangeToItem:(id)item;
- (void)engine:(id)engine didChangeToState:(unint64_t)state;
- (void)engine:(id)engine didEndPlaybackOfItem:(id)item;
- (void)engine:(id)engine didReachEndOfQueueWithReason:(id)reason;
- (void)engine:(id)engine didResetQueueWithPlaybackContext:(id)context error:(id)error;
- (void)getDescriptorWithReply:(id)reply;
- (void)getImageForArtworkIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier atSize:(CGSize)size reply:(id)reply;
- (void)getNowPlayingAtIndex:(int64_t)index reply:(id)reply;
- (void)getNowPlayingWithReply:(id)reply;
- (void)getNowPlayingsForContentItemIDs:(id)ds reply:(id)reply;
- (void)getRepeatModeWithReply:(id)reply;
- (void)getShuffleModeWithReply:(id)reply;
- (void)getTimeSnapshotWithReply:(id)reply;
- (void)pauseWithFadeDuration:(int64_t)duration;
- (void)performQueueModifications:(id)modifications completion:(id)completion;
- (void)play;
- (void)prependDescriptor:(id)descriptor completion:(id)completion;
- (void)prerollWithCompletion:(id)completion;
- (void)reshuffle;
- (void)resumeIfNeeded;
- (void)setApplicationMusicPlayerTransitionType:(int64_t)type withDuration:(double)duration;
- (void)setDescriptor:(id)descriptor completion:(id)completion;
- (void)setDisableAutoPlay:(BOOL)play;
- (void)setDisableAutomaticCanBeNowPlaying:(BOOL)playing;
- (void)setDisableRepeat:(BOOL)repeat;
- (void)setDisableShuffle:(BOOL)shuffle;
- (void)setElapsedTime:(double)time completion:(id)completion;
- (void)setNowPlayingItem:(id)item itemIdentifier:(id)identifier completion:(id)completion;
- (void)setNowPlayingUID:(unint64_t)d completion:(id)completion;
- (void)setPlaybackRate:(float)rate completion:(id)completion;
- (void)setRelativeVolume:(float)volume;
- (void)setRepeatMode:(int64_t)mode;
- (void)setShuffleMode:(int64_t)mode;
- (void)skipWithBehavior:(int64_t)behavior;
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E6970390];
  playbackEngine = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  mediaRemotePublisher = [playbackEngine mediaRemotePublisher];
  commandCenter = [mediaRemotePublisher commandCenter];
  [defaultCenter addObserver:self selector:sel__handleCommandHandlersRegistered_ name:v3 object:commandCenter];
}

- (void)startServer
{
  if (+[MPCPlaybackEngine isSystemMusic])
  {
    v3 = objc_alloc(MEMORY[0x1E696B0D8]);
    v4 = [v3 initWithMachServiceName:*MEMORY[0x1E6970258]];
    listener = self->_listener;
    self->_listener = v4;

    mEMORY[0x1E6970800] = [MEMORY[0x1E6970800] sharedCache];
    v7 = 56;
  }

  else
  {
    mEMORY[0x1E6970800] = [MEMORY[0x1E696B0D8] anonymousListener];
    v7 = 64;
  }

  v8 = *(&self->super.isa + v7);
  *(&self->super.isa + v7) = mEMORY[0x1E6970800];

  [(NSXPCListener *)self->_listener setDelegate:self];
  array = [MEMORY[0x1E695DF70] array];
  activeConnections = self->_activeConnections;
  self->_activeConnections = array;

  self->_resumed = 0;
  [(_MPCMusicPlayerControllerServer *)self _registerForMPAVItemTitlesDidChangeNotification];

  [(_MPCMusicPlayerControllerServer *)self resumeIfNeeded];
}

- (void)_registerForMPAVItemTitlesDidChangeNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleMPAVItemTitlesDidChange_ name:*MEMORY[0x1E696F810] object:0];
}

- (void)resumeIfNeeded
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_listener && !self->_resumed)
  {
    playbackEngine = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
    mediaRemotePublisher = [playbackEngine mediaRemotePublisher];
    commandCenter = [mediaRemotePublisher commandCenter];
    commandHandlersRegistered = [commandCenter commandHandlersRegistered];

    if (commandHandlersRegistered)
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
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v3 = currentConnection;
  if (currentConnection)
  {
    [currentConnection auditToken];
    v4 = MSVBundleIDForAuditToken();
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SenderBundleIdentifier = <%@>, SenderPID = <%i>", v4, objc_msgSend(v3, "processIdentifier")];

  return v5;
}

- (void)_invokeServerCommandEvent:(id)event remoteCommandSenderID:(id)d completion:(id)completion
{
  v38 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  completionCopy = completion;
  dCopy = d;
  mediaRemoteOptions = [eventCopy mediaRemoteOptions];
  v12 = [mediaRemoteOptions mutableCopy];
  v13 = v12;
  if (v12)
  {
    dictionary = v12;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v15 = dictionary;

  v16 = MSVNanoIDCreateTaggedPointer();
  v17 = [@"MPMusicPlayer-" stringByAppendingString:v16];

  [v15 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69B10B0]];
  [v15 setObject:@"MPCMusicPlayerControllerServer" forKeyedSubscript:*MEMORY[0x1E69B1200]];
  [v15 setObject:dCopy forKeyedSubscript:@"kMRMediaRemoteOptionSenderID"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = eventCopy;
    playbackQueue = [v18 playbackQueue];
    [playbackQueue setMediaRemoteOptions:v15];
    v20 = objc_alloc(MEMORY[0x1E6970970]);
    command = [v18 command];

    v22 = [v20 initWithCommand:command playbackQueue:playbackQueue];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = eventCopy;
      playbackQueue = [v23 playbackQueue];
      v24 = objc_alloc(MEMORY[0x1E6970558]);
      command = [v23 command];

      v22 = [v24 initWithCommand:command playbackQueue:playbackQueue options:v15];
    }

    else
    {
      v25 = objc_alloc(objc_opt_class());
      playbackQueue = [eventCopy command];
      command = [eventCopy command];
      v22 = [v25 initWithCommand:playbackQueue mediaRemoteType:objc_msgSend(command options:{"mediaRemoteCommandType"), v15}];
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

  playbackEngine = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  mediaRemotePublisher = [playbackEngine mediaRemotePublisher];
  commandCenter = [mediaRemotePublisher commandCenter];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __94___MPCMusicPlayerControllerServer__invokeServerCommandEvent_remoteCommandSenderID_completion___block_invoke;
  v33[3] = &unk_1E8237070;
  v34 = v26;
  v35 = completionCopy;
  v31 = completionCopy;
  v32 = v26;
  [commandCenter dispatchCommandEvent:v32 completion:v33];
}

- (void)_applyServerStateUpdateRecord:(id)record
{
  v16 = *MEMORY[0x1E69E9840];
  recordCopy = record;
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

        remoteObjectProxy = [*(*(&v11 + 1) + 8 * v9) remoteObjectProxy];
        [remoteObjectProxy applyServerStateUpdateRecord:recordCopy];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_addContentItemIDsToUpdateRecord:(id)record
{
  recordCopy = record;
  playbackEngine = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  if (!+[MPCPlaybackEngine isSystemMusic])
  {
    queueController = [playbackEngine queueController];
    displayItemCount = [queueController displayItemCount];
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    v8 = [queueController contentItemIDsFromOffset:-displayItemCount toOffset:displayItemCount mode:1 nowPlayingIndex:&v9];
    [recordCopy setHasContentItemIDs:1];
    [recordCopy setContentItemIDs:v8];
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v40[2] = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70___MPCMusicPlayerControllerServer_listener_shouldAcceptNewConnection___block_invoke;
  block[3] = &unk_1E82392C0;
  block[4] = self;
  v8 = connectionCopy;
  v36 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_initWeak(&location, self);
  objc_initWeak(&from, v8);
  processIdentifier = [v8 processIdentifier];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __70___MPCMusicPlayerControllerServer_listener_shouldAcceptNewConnection___block_invoke_2;
  v29[3] = &unk_1E8237270;
  v32 = processIdentifier;
  objc_copyWeak(&v30, &location);
  objc_copyWeak(&v31, &from);
  [v8 setInvalidationHandler:v29];
  if (+[MPCPlaybackEngine isSystemMusic])
  {
    exportedInterface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F45C1010];
    [v8 setExportedInterface:exportedInterface];
  }

  else
  {
    v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F45C1288];
    [v8 setExportedInterface:v11];

    remoteObjectInterface = [v8 remoteObjectInterface];
    v13 = MEMORY[0x1E695DFD8];
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    v15 = [v13 setWithArray:v14];
    [remoteObjectInterface setClasses:v15 forSelector:sel_getNowPlayingsForContentItemIDs_reply_ argumentIndex:0 ofReply:1];

    exportedInterface = [v8 exportedInterface];
    v16 = MEMORY[0x1E695DFD8];
    v39[0] = objc_opt_class();
    v39[1] = objc_opt_class();
    v39[2] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:3];
    v18 = [v16 setWithArray:v17];
    [exportedInterface setClasses:v18 forSelector:sel_beginPlaybackAtHostTime_ argumentIndex:0 ofReply:0];
  }

  v19 = MEMORY[0x1E69B14E8];
  exportedInterface2 = [v8 exportedInterface];
  protocol = [exportedInterface2 protocol];
  v22 = [v19 proxyWithObject:self protocol:protocol];
  [v8 setExportedObject:v22];

  v23 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F45FD218];
  [v8 setRemoteObjectInterface:v23];

  if (MSVDeviceOSIsInternalInstall())
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v25 = [standardUserDefaults integerForKey:@"DelayMusicServerConnection"];

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

- (void)engine:(id)engine didChangeCurrentItemVariantID:(id)d
{
  v5 = [(_MPCMusicPlayerControllerServer *)self playbackEngine:engine];
  queueController = [v5 queueController];

  currentItem = [queueController currentItem];
  if (([currentItem isPlaceholder] & 1) == 0)
  {
    v7 = [(_MPCMusicPlayerControllerServer *)self _nowPlayingWithItem:currentItem];
    v8 = objc_alloc_init(MEMORY[0x1E6970808]);
    [v8 setHasNowPlaying:1];
    [v8 setNowPlaying:v7];
    [v8 setAudioFormatDidChange:1];
    [(_MPCMusicPlayerControllerServer *)self _applyServerStateUpdateRecord:v8];
  }
}

- (void)engine:(id)engine didChangeItemElapsedTime:(double)time rate:(float)rate
{
  v10 = objc_alloc_init(MEMORY[0x1E6970808]);
  [v10 setHasTimeSnapshot:1];
  *&v8 = rate;
  v9 = [(_MPCMusicPlayerControllerServer *)self _timeSnapshotWithElapsedTime:time rate:v8];
  [v10 setTimeSnapshot:v9];

  [(_MPCMusicPlayerControllerServer *)self _applyServerStateUpdateRecord:v10];
}

- (void)engine:(id)engine didEndPlaybackOfItem:(id)item
{
  v5 = objc_alloc_init(MEMORY[0x1E6970808]);
  [v5 setItemDidEnd:1];
  [(_MPCMusicPlayerControllerServer *)self _applyServerStateUpdateRecord:v5];
}

- (void)engine:(id)engine didReachEndOfQueueWithReason:(id)reason
{
  v5 = objc_alloc_init(MEMORY[0x1E6970808]);
  [v5 setQueueDidEnd:1];
  [(_MPCMusicPlayerControllerServer *)self _applyServerStateUpdateRecord:v5];
}

- (void)engine:(id)engine didChangeShuffleType:(int64_t)type
{
  v5 = objc_alloc_init(MEMORY[0x1E6970808]);
  [v5 setHasShuffleMode:1];
  [v5 setShuffleMode:MPMusicShuffleModeForMPShuffleType()];
  [v5 setQueueDidChange:1];
  [(_MPCMusicPlayerControllerServer *)self _addContentItemIDsToUpdateRecord:v5];
  [(_MPCMusicPlayerControllerServer *)self _applyServerStateUpdateRecord:v5];
}

- (void)engine:(id)engine didChangeRepeatType:(int64_t)type
{
  playbackEngine = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  queueController = [playbackEngine queueController];

  music = [queueController music];
  autoPlayEnabled = [music autoPlayEnabled];

  v8 = objc_alloc_init(MEMORY[0x1E6970808]);
  [v8 setHasRepeatMode:1];
  [v8 setRepeatMode:MPMusicRepeatModeForMPRepeatType()];
  [v8 setQueueDidChange:autoPlayEnabled];
  if (autoPlayEnabled)
  {
    [(_MPCMusicPlayerControllerServer *)self _addContentItemIDsToUpdateRecord:v8];
  }

  [(_MPCMusicPlayerControllerServer *)self _applyServerStateUpdateRecord:v8];
}

- (void)engine:(id)engine didResetQueueWithPlaybackContext:(id)context error:(id)error
{
  errorCopy = error;
  queueDescriptor = [context queueDescriptor];
  objc_storeStrong(&self->_queueDescriptor, queueDescriptor);
  if (self->_prepareCompletionHandler)
  {
    v8 = self->_preparingDescriptor;
    v9 = v8;
    if (v8 == queueDescriptor)
    {

      if (!errorCopy)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = [(MPMusicPlayerQueueDescriptor *)v8 isEqual:queueDescriptor];

      if (!errorCopy || (v10 & 1) == 0)
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
  [(MPMusicPlayerControllerSystemCache *)self->_systemCache setQueueDescriptor:queueDescriptor];
  v15 = objc_alloc_init(MEMORY[0x1E6970808]);
  [v15 setHasQueueDescriptor:1];
  [v15 setQueueDescriptor:queueDescriptor];
  [v15 setQueueDidChange:1];
  [(_MPCMusicPlayerControllerServer *)self _addContentItemIDsToUpdateRecord:v15];
  [(_MPCMusicPlayerControllerServer *)self _applyServerStateUpdateRecord:v15];
}

- (void)engine:(id)engine didChangeToItem:(id)item
{
  v27 = *MEMORY[0x1E69E9840];
  engineCopy = engine;
  itemCopy = item;
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    player = [engineCopy player];
    v23 = 138543618;
    v24 = itemCopy;
    v25 = 1024;
    isReloadingPlaybackContext = [player isReloadingPlaybackContext];
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "MPMusicPlayerControllerServer: engine:didChangeToItem: - %{public}@ - reloading:%{BOOL}u", &v23, 0x12u);
  }

  player2 = [engineCopy player];
  isReloadingPlaybackContext2 = [player2 isReloadingPlaybackContext];

  if ((isReloadingPlaybackContext2 & 1) == 0)
  {
    isPlaceholder = [itemCopy isPlaceholder];
    v13 = 0;
    if (!itemCopy)
    {
      goto LABEL_14;
    }

    if (isPlaceholder)
    {
      goto LABEL_14;
    }

    v13 = [(_MPCMusicPlayerControllerServer *)self _nowPlayingWithItem:itemCopy];
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

    if (![(MPMusicPlayerQueueDescriptor *)self->_queueDescriptor matchesStartItem:itemCopy]&& !self->_waitingForAdditionalPlaybackContexts)
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

- (void)engine:(id)engine didChangeQueueWithReason:(id)reason
{
  v5 = [(_MPCMusicPlayerControllerServer *)self playbackEngine:engine];
  queueController = [v5 queueController];

  currentItem = [queueController currentItem];
  if ([currentItem isPlaceholder])
  {
    v8 = 0;
  }

  else
  {
    v8 = [(_MPCMusicPlayerControllerServer *)self _nowPlayingWithItem:currentItem];
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

- (void)engine:(id)engine didChangeToState:(unint64_t)state
{
  v7 = objc_alloc_init(MEMORY[0x1E6970808]);
  [v7 setHasTimeSnapshot:1];
  LODWORD(v5) = 2143289344;
  v6 = [(_MPCMusicPlayerControllerServer *)self _timeSnapshotWithElapsedTime:NAN rate:v5];
  [v7 setTimeSnapshot:v6];

  [(_MPCMusicPlayerControllerServer *)self _applyServerStateUpdateRecord:v7];
}

- (void)setApplicationMusicPlayerTransitionType:(int64_t)type withDuration:(double)duration
{
  playbackEngine = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  player = [playbackEngine player];
  [player setApplicationMusicPlayerTransitionType:type withDuration:duration];
}

- (void)setDisableShuffle:(BOOL)shuffle
{
  shuffleCopy = shuffle;
  playbackEngine = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  [playbackEngine setDisableShuffle:shuffleCopy];
}

- (void)setDisableRepeat:(BOOL)repeat
{
  repeatCopy = repeat;
  playbackEngine = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  [playbackEngine setDisableRepeat:repeatCopy];
}

- (void)setDisableAutoPlay:(BOOL)play
{
  playCopy = play;
  playbackEngine = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  [playbackEngine setDisableAutoPlay:playCopy];
}

- (void)setDisableAutomaticCanBeNowPlaying:(BOOL)playing
{
  playingCopy = playing;
  playbackEngine = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  mediaRemotePublisher = [playbackEngine mediaRemotePublisher];
  commandCenter = [mediaRemotePublisher commandCenter];
  [commandCenter setDisableAutomaticCanBeNowPlaying:playingCopy];
}

- (void)setRelativeVolume:(float)volume
{
  playbackEngine = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  player = [playbackEngine player];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    player2 = [playbackEngine player];
    *&v7 = volume;
    [player2 setRelativeVolume:v7];
  }
}

- (void)beginPlaybackAtHostTime:(id)time
{
  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_ERROR, "MPMusicPlayerControllerServer: beginPlaybackAtHostTime FAILED [not implemented]", v4, 2u);
  }
}

- (void)prerollWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_ERROR, "MPMusicPlayerControllerServer: prerollWithCompletion FAILED [not implemented]", v5, 2u);
  }

  completionCopy[2](completionCopy, 0);
}

- (void)performQueueModifications:(id)modifications completion:(id)completion
{
  modificationsCopy = modifications;
  completionCopy = completion;
  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
  v10 = os_signpost_id_generate(v9);

  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "performQueueModifications", "", buf, 2u);
  }

  playbackEngine = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  if (+[MPCPlaybackEngine isSystemMusic])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCMusicPlayerControllerServer.m" lineNumber:890 description:@"performQueueModifications is not supported for the system music application"];
  }

  _remoteCommandSenderIDForCurrentXPCConnection = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __72___MPCMusicPlayerControllerServer_performQueueModifications_completion___block_invoke;
  v20[3] = &unk_1E82393D8;
  v21 = playbackEngine;
  v22 = modificationsCopy;
  selfCopy = self;
  v24 = _remoteCommandSenderIDForCurrentXPCConnection;
  v25 = completionCopy;
  v26 = v10;
  v15 = completionCopy;
  v16 = _remoteCommandSenderIDForCurrentXPCConnection;
  v17 = modificationsCopy;
  v18 = playbackEngine;
  dispatch_async(MEMORY[0x1E69E96A0], v20);
}

- (void)setPlaybackRate:(float)rate completion:(id)completion
{
  completionCopy = completion;
  _remoteCommandSenderIDForCurrentXPCConnection = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
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
  rateCopy = rate;
  block[4] = self;
  v15 = _remoteCommandSenderIDForCurrentXPCConnection;
  v16 = completionCopy;
  v17 = v9;
  v12 = completionCopy;
  v13 = _remoteCommandSenderIDForCurrentXPCConnection;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
}

- (void)setElapsedTime:(double)time completion:(id)completion
{
  completionCopy = completion;
  _remoteCommandSenderIDForCurrentXPCConnection = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
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
  timeCopy = time;
  block[4] = self;
  v15 = _remoteCommandSenderIDForCurrentXPCConnection;
  v16 = completionCopy;
  v18 = v9;
  v12 = completionCopy;
  v13 = _remoteCommandSenderIDForCurrentXPCConnection;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
}

- (void)getShuffleModeWithReply:(id)reply
{
  replyCopy = reply;
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
  v13 = replyCopy;
  v9 = replyCopy;
  dispatch_sync(MEMORY[0x1E69E96A0], v12);
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v11, OS_SIGNPOST_INTERVAL_END, v6, "getShuffleMode", "", buf, 2u);
  }
}

- (void)setShuffleMode:(int64_t)mode
{
  _remoteCommandSenderIDForCurrentXPCConnection = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
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
  v14 = _remoteCommandSenderIDForCurrentXPCConnection;
  modeCopy = mode;
  block[4] = self;
  v10 = _remoteCommandSenderIDForCurrentXPCConnection;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v12 = v11;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v12, OS_SIGNPOST_INTERVAL_END, v7, "setShuffleMode", "", buf, 2u);
  }
}

- (void)getRepeatModeWithReply:(id)reply
{
  replyCopy = reply;
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
  v13 = replyCopy;
  v9 = replyCopy;
  dispatch_sync(MEMORY[0x1E69E96A0], v12);
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v11, OS_SIGNPOST_INTERVAL_END, v6, "getRepeatMode", "", buf, 2u);
  }
}

- (void)setRepeatMode:(int64_t)mode
{
  _remoteCommandSenderIDForCurrentXPCConnection = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
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
  v14 = _remoteCommandSenderIDForCurrentXPCConnection;
  modeCopy = mode;
  block[4] = self;
  v10 = _remoteCommandSenderIDForCurrentXPCConnection;
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
  _remoteCommandSenderIDForCurrentXPCConnection = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
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
  v12 = _remoteCommandSenderIDForCurrentXPCConnection;
  v8 = _remoteCommandSenderIDForCurrentXPCConnection;
  dispatch_sync(MEMORY[0x1E69E96A0], v11);
  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v10 = v9;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v10, OS_SIGNPOST_INTERVAL_END, v5, "endSeek", "", buf, 2u);
  }
}

- (void)beginSeekWithDirection:(int64_t)direction
{
  _remoteCommandSenderIDForCurrentXPCConnection = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
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
  v14 = _remoteCommandSenderIDForCurrentXPCConnection;
  directionCopy = direction;
  block[4] = self;
  v10 = _remoteCommandSenderIDForCurrentXPCConnection;
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
  _remoteCommandSenderIDForCurrentXPCConnection = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
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
  v12 = _remoteCommandSenderIDForCurrentXPCConnection;
  v8 = _remoteCommandSenderIDForCurrentXPCConnection;
  dispatch_sync(MEMORY[0x1E69E96A0], v11);
  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v10 = v9;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v10, OS_SIGNPOST_INTERVAL_END, v5, "reshuffle", "", buf, 2u);
  }
}

- (void)skipWithBehavior:(int64_t)behavior
{
  _remoteCommandSenderIDForCurrentXPCConnection = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
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
  v14 = _remoteCommandSenderIDForCurrentXPCConnection;
  behaviorCopy = behavior;
  block[4] = self;
  v10 = _remoteCommandSenderIDForCurrentXPCConnection;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v12 = v11;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v12, OS_SIGNPOST_INTERVAL_END, v7, "skipWithBehavior", "", buf, 2u);
  }
}

- (void)pauseWithFadeDuration:(int64_t)duration
{
  _remoteCommandSenderIDForCurrentXPCConnection = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
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
  v13 = _remoteCommandSenderIDForCurrentXPCConnection;
  v9 = _remoteCommandSenderIDForCurrentXPCConnection;
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
  _remoteCommandSenderIDForCurrentXPCConnection = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
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
  v12 = _remoteCommandSenderIDForCurrentXPCConnection;
  v8 = _remoteCommandSenderIDForCurrentXPCConnection;
  dispatch_sync(MEMORY[0x1E69E96A0], v11);
  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v10 = v9;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v10, OS_SIGNPOST_INTERVAL_END, v5, "play", "", buf, 2u);
  }
}

- (void)_appendPlaybackContexts:(id)contexts remoteCommandSenderID:(id)d completion:(id)completion
{
  v27[3] = *MEMORY[0x1E69E9840];
  contextsCopy = contexts;
  dCopy = d;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  firstObject = [contextsCopy firstObject];
  if (firstObject)
  {
    playbackEngine = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
    mediaRemotePublisher = [playbackEngine mediaRemotePublisher];
    commandCenter = [mediaRemotePublisher commandCenter];

    insertIntoPlaybackQueueCommand = [commandCenter insertIntoPlaybackQueueCommand];
    if ([insertIntoPlaybackQueueCommand isSupportedAndEnabled])
    {
      [firstObject setActionAfterQueueLoad:10];
      v16 = [[MPCPlaybackContextRemotePlaybackQueue alloc] initWithPlaybackContext:firstObject];
      [(MPCPlaybackContextRemotePlaybackQueue *)v16 setReplaceIntent:1];
      v17 = objc_alloc(MEMORY[0x1E6970558]);
      v26[0] = *MEMORY[0x1E69B1178];
      v26[1] = @"MPCRemoteCommandEventOptionShouldPlayInsertedContent";
      v27[0] = &unk_1F4599508;
      v27[1] = MEMORY[0x1E695E118];
      v26[2] = @"_MPCOverrideAllowsInsertionPositionLast";
      v27[2] = MEMORY[0x1E695E118];
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
      v19 = [v17 initWithCommand:insertIntoPlaybackQueueCommand playbackQueue:v16 options:v18];

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __92___MPCMusicPlayerControllerServer__appendPlaybackContexts_remoteCommandSenderID_completion___block_invoke;
      v21[3] = &unk_1E8237188;
      v25 = completionCopy;
      v22 = contextsCopy;
      selfCopy = self;
      v24 = dCopy;
      [(_MPCMusicPlayerControllerServer *)self _invokeServerCommandEvent:v19 remoteCommandSenderID:v24 completion:v21];
    }

    else
    {
      v20 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E6970248] code:7 debugDescription:@"InsertIntoPlaybackQueue is currently not enabled or the playback engine is not ready"];
      (*(completionCopy + 2))(completionCopy, v20);
    }
  }

  else
  {
    commandCenter = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E6970248] code:1 debugDescription:@"Playback context not found when appending contexts."];
    (*(completionCopy + 2))(completionCopy, commandCenter);
  }
}

- (void)appendDescriptor:(id)descriptor completion:(id)completion
{
  completionCopy = completion;
  playbackContexts = [descriptor playbackContexts];
  self->_waitingForAdditionalPlaybackContexts = [playbackContexts count] > 1;
  _remoteCommandSenderIDForCurrentXPCConnection = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
  v12 = playbackContexts;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = _remoteCommandSenderIDForCurrentXPCConnection;
  v11 = playbackContexts;
  msv_dispatch_on_main_queue();
}

- (void)_prependPlaybackContexts:(id)contexts remoteCommandSenderID:(id)d completion:(id)completion
{
  v27[1] = *MEMORY[0x1E69E9840];
  contextsCopy = contexts;
  dCopy = d;
  completionCopy = completion;
  lastObject = [contextsCopy lastObject];
  if (lastObject)
  {
    playbackEngine = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
    mediaRemotePublisher = [playbackEngine mediaRemotePublisher];
    commandCenter = [mediaRemotePublisher commandCenter];

    insertIntoPlaybackQueueCommand = [commandCenter insertIntoPlaybackQueueCommand];
    if ([insertIntoPlaybackQueueCommand isSupportedAndEnabled])
    {
      [lastObject setActionAfterQueueLoad:10];
      v16 = [[MPCPlaybackContextRemotePlaybackQueue alloc] initWithPlaybackContext:lastObject];
      [(MPCPlaybackContextRemotePlaybackQueue *)v16 setReplaceIntent:1];
      v17 = objc_alloc(MEMORY[0x1E6970558]);
      v26 = *MEMORY[0x1E69B1178];
      v27[0] = &unk_1F45994F0;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      v19 = [v17 initWithCommand:insertIntoPlaybackQueueCommand playbackQueue:v16 options:v18];

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __93___MPCMusicPlayerControllerServer__prependPlaybackContexts_remoteCommandSenderID_completion___block_invoke;
      v21[3] = &unk_1E8237188;
      v25 = completionCopy;
      v22 = contextsCopy;
      selfCopy = self;
      v24 = dCopy;
      [(_MPCMusicPlayerControllerServer *)self _invokeServerCommandEvent:v19 remoteCommandSenderID:v24 completion:v21];
    }

    else
    {
      v20 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E6970248] code:7 debugDescription:@"InsertIntoPlaybackQueue is currently not enabled or the playback engine is not ready"];
      (*(completionCopy + 2))(completionCopy, v20);
    }
  }

  else
  {
    commandCenter = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E6970248] code:1 debugDescription:@"Playback context not found when prepending contexts."];
    (*(completionCopy + 2))(completionCopy, commandCenter);
  }
}

- (void)prependDescriptor:(id)descriptor completion:(id)completion
{
  completionCopy = completion;
  playbackContexts = [descriptor playbackContexts];
  self->_waitingForAdditionalPlaybackContexts = [playbackContexts count] > 1;
  _remoteCommandSenderIDForCurrentXPCConnection = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
  v12 = playbackContexts;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = _remoteCommandSenderIDForCurrentXPCConnection;
  v11 = playbackContexts;
  msv_dispatch_on_main_queue();
}

- (void)getDescriptorWithReply:(id)reply
{
  replyCopy = reply;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58___MPCMusicPlayerControllerServer_getDescriptorWithReply___block_invoke;
  v6[3] = &unk_1E8239170;
  v6[4] = self;
  v7 = replyCopy;
  v5 = replyCopy;
  dispatch_sync(MEMORY[0x1E69E96A0], v6);
}

- (void)setDescriptor:(id)descriptor completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  completionCopy = completion;
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
  v9 = os_signpost_id_generate(v8);

  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "setDescriptor", "", buf, 2u);
  }

  playbackContexts = [descriptorCopy playbackContexts];
  firstObject = [playbackContexts firstObject];
  playbackEngine = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  if ([playbackEngine disableRepeat])
  {
    [firstObject setRepeatType:0];
  }

  if ([playbackEngine disableShuffle])
  {
    [firstObject setShuffleType:0];
  }

  [firstObject setQueueEndAction:2];
  if (firstObject)
  {
    currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
    v16 = currentConnection;
    if (currentConnection)
    {
      [currentConnection auditToken];
      v17 = MSVBundleIDForAuditToken();
    }

    else
    {
      v17 = 0;
    }

    _remoteCommandSenderIDForCurrentXPCConnection = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60___MPCMusicPlayerControllerServer_setDescriptor_completion___block_invoke;
    block[3] = &unk_1E8237138;
    block[4] = self;
    v25 = descriptorCopy;
    v31 = completionCopy;
    v32 = v9;
    v26 = playbackContexts;
    v27 = v17;
    v28 = firstObject;
    v29 = _remoteCommandSenderIDForCurrentXPCConnection;
    v30 = playbackEngine;
    v22 = _remoteCommandSenderIDForCurrentXPCConnection;
    v23 = v17;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v18 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v34 = descriptorCopy;
      _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "MusicKit: No playback contexts found for descriptor %{public}@", buf, 0xCu);
    }

    v19 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E6970248] code:1 debugDescription:@"Playback context not found when setting descriptor."];
    (*(completionCopy + 2))(completionCopy, v19);

    v20 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
    v16 = v20;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v16, OS_SIGNPOST_INTERVAL_END, v9, "setDescriptor", "", buf, 2u);
    }
  }
}

- (void)getTimeSnapshotWithReply:(id)reply
{
  replyCopy = reply;
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
  v13 = replyCopy;
  v9 = replyCopy;
  dispatch_sync(MEMORY[0x1E69E96A0], v12);
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v11, OS_SIGNPOST_INTERVAL_END, v6, "getTimeSnapshot", "", buf, 2u);
  }
}

- (id)_timeSnapshotWithElapsedTime:(double)time rate:(float)rate
{
  playbackEngine = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  player = [playbackEngine player];
  currentItem = [player currentItem];

  player2 = [playbackEngine player];
  state = [player2 state];

  v11 = 4;
  if (rate < 0.0)
  {
    v11 = 5;
  }

  v12 = 3;
  if (state != 6)
  {
    v12 = 0;
  }

  if ((state - 3) >= 3)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  v14 = 2;
  if (state != 1)
  {
    v14 = state == 2;
  }

  if (state <= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  if ([currentItem isAlwaysLive])
  {
    *&v16 = rate;
    [MEMORY[0x1E69707F8] liveSnapshotWithRate:v15 state:v16];
  }

  else
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v18 = v17;
    v19 = MEMORY[0x1E69707F8];
    [currentItem durationIfAvailable];
    *&v20 = rate;
    [v19 snapshotWithElapsedTime:v15 duration:time rate:v21 atTimestamp:v20 state:v18];
  }
  v22 = ;

  return v22;
}

- (void)getImageForArtworkIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier atSize:(CGSize)size reply:(id)reply
{
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  itemIdentifierCopy = itemIdentifier;
  replyCopy = reply;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __92___MPCMusicPlayerControllerServer_getImageForArtworkIdentifier_itemIdentifier_atSize_reply___block_invoke;
  v17[3] = &unk_1E82370E8;
  v17[4] = self;
  v18 = itemIdentifierCopy;
  v21 = width;
  v22 = height;
  v19 = identifierCopy;
  v20 = replyCopy;
  v14 = identifierCopy;
  v15 = replyCopy;
  v16 = itemIdentifierCopy;
  dispatch_sync(MEMORY[0x1E69E96A0], v17);
}

- (void)setNowPlayingUID:(unint64_t)d completion:(id)completion
{
  completionCopy = completion;
  _remoteCommandSenderIDForCurrentXPCConnection = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
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
  v17 = _remoteCommandSenderIDForCurrentXPCConnection;
  v18 = completionCopy;
  dCopy = d;
  v12 = completionCopy;
  v13 = _remoteCommandSenderIDForCurrentXPCConnection;
  dispatch_sync(MEMORY[0x1E69E96A0], v16);
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v15 = v14;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v15, OS_SIGNPOST_INTERVAL_END, v9, "setNowPlayingUID", "", buf, 2u);
  }
}

- (void)_onQueue_setNowPlayingItem:(id)item itemIdentifier:(id)identifier remoteCommandSenderID:(id)d completion:(id)completion
{
  itemCopy = item;
  identifierCopy = identifier;
  dCopy = d;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  playbackEngine = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
  mediaRemotePublisher = [playbackEngine mediaRemotePublisher];
  commandCenter = [mediaRemotePublisher commandCenter];

  playItemInQueueCommand = [commandCenter playItemInQueueCommand];
  v18 = playItemInQueueCommand;
  if (!(itemCopy | identifierCopy))
  {
    v19 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E6970248];
    v21 = @"No item provided to setNowPlayingItem";
    v22 = 5;
LABEL_7:
    v26 = [v19 msv_errorWithDomain:v20 code:v22 debugDescription:v21];
    completionCopy[2](completionCopy, v26);

    goto LABEL_15;
  }

  if (![playItemInQueueCommand isSupportedAndEnabled])
  {
    v19 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E6970248];
    v21 = @"PlayItemInQueue is currently not enabled or the playback engine is not ready";
    v22 = 7;
    goto LABEL_7;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v24 = identifierCopy;
  if (identifierCopy)
  {
    contentItemID = v24;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      modelObject = [itemCopy modelObject];
      identifiers = [modelObject identifiers];
      contentItemID = [identifiers contentItemID];
    }

    else
    {
      contentItemID = 0;
    }
  }

  if ([contentItemID length])
  {
    [dictionary setObject:contentItemID forKeyedSubscript:*MEMORY[0x1E69B10C8]];
  }

  else
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(itemCopy, "persistentID")}];
    [dictionary setObject:v28 forKeyedSubscript:*MEMORY[0x1E69B1270]];
  }

  v29 = [v18 newCommandEventWithCommandType:131 options:dictionary];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __110___MPCMusicPlayerControllerServer__onQueue_setNowPlayingItem_itemIdentifier_remoteCommandSenderID_completion___block_invoke;
  v31[3] = &unk_1E8237070;
  v32 = itemCopy;
  v33 = completionCopy;
  [(_MPCMusicPlayerControllerServer *)self _invokeServerCommandEvent:v29 remoteCommandSenderID:dCopy completion:v31];

LABEL_15:
}

- (void)setNowPlayingItem:(id)item itemIdentifier:(id)identifier completion:(id)completion
{
  itemCopy = item;
  identifierCopy = identifier;
  completionCopy = completion;
  _remoteCommandSenderIDForCurrentXPCConnection = [(_MPCMusicPlayerControllerServer *)self _remoteCommandSenderIDForCurrentXPCConnection];
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
  v23 = itemCopy;
  v24 = identifierCopy;
  v25 = _remoteCommandSenderIDForCurrentXPCConnection;
  v26 = completionCopy;
  v16 = completionCopy;
  v17 = _remoteCommandSenderIDForCurrentXPCConnection;
  v18 = identifierCopy;
  v19 = itemCopy;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v20 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v21 = v20;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v21, OS_SIGNPOST_INTERVAL_END, v13, "setNowPlayingItem", "", buf, 2u);
  }
}

- (void)getNowPlayingAtIndex:(int64_t)index reply:(id)reply
{
  replyCopy = reply;
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
  v15 = replyCopy;
  indexCopy = index;
  block[4] = self;
  v11 = replyCopy;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v13 = v12;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v13, OS_SIGNPOST_INTERVAL_END, v8, "getNowPlayingAtIndex", "", buf, 2u);
  }
}

- (id)_nowPlayingWithItem:(id)item
{
  itemCopy = item;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (itemCopy)
  {
    mediaItem = [itemCopy mediaItem];
    v38 = itemCopy;
    contentItem = [itemCopy contentItem];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = mediaItem;
      modelObject = [v7 modelObject];
      identifiers = [modelObject identifiers];
      contentItemID = [identifiers contentItemID];
      v11 = [contentItemID length];

      mediaItem = v7;
      if (!v11)
      {
        modelObject2 = [v7 modelObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = MEMORY[0x1E6970670];
          v14 = modelObject2;
          anyObject = [v14 anyObject];
          identifiers2 = [v14 identifiers];

          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __55___MPCMusicPlayerControllerServer__nowPlayingWithItem___block_invoke;
          v41[3] = &unk_1E82389D8;
          v42 = contentItem;
          v17 = [identifiers2 copyWithSource:@"MPMusicPlayerControllerServer" block:v41];
          v18 = contentItem;
          v19 = [anyObject copyWithIdentifiers:v17 block:&__block_literal_global_21230];
          v20 = [v13 genericObjectWithModelObject:v19];

          contentItem = v18;
        }

        else
        {
          identifiers3 = [modelObject2 identifiers];
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __55___MPCMusicPlayerControllerServer__nowPlayingWithItem___block_invoke_3;
          v39[3] = &unk_1E82389D8;
          v40 = contentItem;
          v23 = [identifiers3 copyWithSource:@"MPMusicPlayerControllerServer" block:v39];
          v20 = [modelObject2 copyWithIdentifiers:v23 block:&__block_literal_global_14_21231];

          v14 = v40;
        }

        mediaItem = [objc_alloc(MEMORY[0x1E6970700]) initWithModelObject:v20];
      }
    }

    playbackEngine = [(_MPCMusicPlayerControllerServer *)self playbackEngine];
    queueController = [playbackEngine queueController];

    identifier = [contentItem identifier];
    v37 = [queueController displayIndexForContentItemID:identifier];

    displayItemCount = [queueController displayItemCount];
    behaviorImpl = [queueController behaviorImpl];
    identifier2 = [contentItem identifier];
    v30 = [behaviorImpl componentsForContentItemID:identifier2];

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
    identifier3 = [contentItem identifier];
    artworkIdentifier = [contentItem artworkIdentifier];
    activeFormat = [contentItem activeFormat];
    v21 = [v32 nowPlayingWithItem:mediaItem itemIdentifier:identifier3 itemUID:v31 artworkIdentifier:artworkIdentifier audioFormat:activeFormat index:v37 count:displayItemCount];

    itemCopy = v38;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)getNowPlayingsForContentItemIDs:(id)ds reply:(id)reply
{
  dsCopy = ds;
  replyCopy = reply;
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
  v17 = dsCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = dsCopy;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  v15 = v14;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v15, OS_SIGNPOST_INTERVAL_END, v9, "getNowPlayingsForContentItemIDs", "", buf, 2u);
  }
}

- (void)getNowPlayingWithReply:(id)reply
{
  replyCopy = reply;
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
  v13 = replyCopy;
  v9 = replyCopy;
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

- (_MPCMusicPlayerControllerServer)initWithPlaybackEngine:(id)engine
{
  engineCopy = engine;
  v8.receiver = self;
  v8.super_class = _MPCMusicPlayerControllerServer;
  v5 = [(_MPCMusicPlayerControllerServer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playbackEngine, engineCopy);
    [engineCopy addEngineObserver:v6];
    [(_MPCMusicPlayerControllerServer *)v6 _registerForCommandHandlersRegisteredNotification];
  }

  return v6;
}

@end