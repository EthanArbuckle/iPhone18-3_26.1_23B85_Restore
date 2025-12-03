@interface MPCPlaybackEngine
+ (BOOL)deviceSupportsSmartTransitions;
+ (BOOL)deviceSupportsTransitions;
+ (BOOL)isRemotePlayerService;
+ (BOOL)isSystemMusic;
+ (BOOL)isSystemPodcasts;
+ (BOOL)supportsVideoViewController;
+ (void)initialize;
+ (void)preheatPlayback;
- ($115C4C562B26FF47E01F9F4EA65B5887)remoteHostProcessAuditToken;
- (BOOL)_shouldIgnorePlaybackSessionError:(id)error;
- (BOOL)isSystemMusicApplication;
- (BOOL)isSystemPodcastsApplication;
- (BOOL)isVocalAttenuationAvailable;
- (BOOL)skipWithDirectionShouldJumpToItemStart:(int64_t)start;
- (MPCPlaybackEngine)initWithParameters:(id)parameters;
- (MPCPlaybackEngine)initWithPlayerID:(id)d eventStreamConsumers:(id)consumers;
- (MPCPlaybackEngineDelegate)delegate;
- (NSString)hostingSharedSessionID;
- (double)currentAudioProcessingDelay;
- (float)vocalLevel;
- (id)takeCriticalSectionAssertion:(id)assertion;
- (void)_detectCrashLoopForSessionIdentifier:(id)identifier block:(id)block;
- (void)_initializePlaybackStack;
- (void)_setupNotifications;
- (void)_transitionPreferencesChanged;
- (void)addEngineObserver:(id)observer;
- (void)beginScanningWithDirection:(int64_t)direction supportsRateChange:(BOOL)change identifier:(NSString *)identifier completion:(id)completion;
- (void)behavior:(id)behavior didChangeActionAtQueueEnd:(int64_t)end;
- (void)behavior:(id)behavior didChangeExplicitContentState:(int64_t)state;
- (void)behavior:(id)behavior didChangeRepeatType:(int64_t)type;
- (void)behavior:(id)behavior didChangeShuffleType:(int64_t)type;
- (void)behavior:(id)behavior didEndSharePlaySessionWithReason:(int64_t)reason;
- (void)behavior:(id)behavior didReceiveSharedListeningEvent:(id)event;
- (void)dealloc;
- (void)initializeSwiftStack;
- (void)loadSessionWithIdentifier:(NSString *)identifier completion:(id)completion;
- (void)queueController:(id)controller didChangeTargetContentItemID:(id)d;
- (void)queueControllerDidChangeContents:(id)contents;
- (void)queueControllerDidReachUnexpectedEndOfQueue:(id)queue;
- (void)relativeVolumeDidUpdateToVolume:(float)volume;
- (void)reloadItemsKeepingCurrentItem:(BOOL)item allowReuse:(BOOL)reuse;
- (void)reloadQueueForReason:(int64_t)reason completion:(id)completion;
- (void)removeEngineObserver:(id)observer;
- (void)requestAuthorizationForExplicitItem:(id)item reason:(int64_t)reason completion:(id)completion;
- (void)restoreStateWithCompletion:(id)completion;
- (void)routingController:(id)controller pickedRouteDidChange:(id)change;
- (void)schedulePlaybackStatePreservation;
- (void)setAudioAnalyzerEnabled:(BOOL)enabled;
- (void)setAudioSessionCategory:(id)category;
- (void)setAudioSessionOptions:(unint64_t)options;
- (void)setDisableAutoPlay:(BOOL)play;
- (void)setDisableRepeat:(BOOL)repeat;
- (void)setDisableShuffle:(BOOL)shuffle;
- (void)setQueueController:(id)controller;
- (void)setQueueHandoffSupported:(BOOL)supported;
- (void)setRemoteHostProcessAuditToken:(id *)token;
- (void)setStateRestorationSupported:(BOOL)supported;
- (void)setVocalAttenuationEnabled:(BOOL)enabled;
- (void)setVocalLevel:(float)level;
- (void)start;
@end

@implementation MPCPlaybackEngine

+ (BOOL)isRemotePlayerService
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.MediaPlayer.RemotePlayerService"];

  return v4;
}

+ (BOOL)isSystemMusic
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  IsSystemMediaApplication = MRMediaRemoteApplicationIsSystemMediaApplication();

  return IsSystemMediaApplication;
}

- (void)_initializePlaybackStack
{
  v65 = *MEMORY[0x1E69E9840];
  v54 = [[_MPCPlaybackEngineEventStreamInitializationParameters alloc] initWithPlaybackEngineParameters:self->_initializationParameters engineID:self->_engineID];
  v3 = [[MPCPlaybackEngineEventStream alloc] initWithParameters:v54];
  eventStream = self->_eventStream;
  self->_eventStream = v3;

  if (([objc_opt_class() isSystemMusic] & 1) == 0 && (objc_msgSend(objc_opt_class(), "isSystemPodcasts") & 1) == 0)
  {
    [(MPCPlaybackEngineEventStream *)self->_eventStream setTransactionDebounceTime:0.0];
  }

  v53 = [[MPCPlaybackEngineEnvironmentConsumer alloc] initWithPlaybackEngine:self];
  [(MPCPlaybackEngineEventStream *)self->_eventStream addConsumer:?];
  selfCopy = self;
  if (([objc_opt_class() isSystemPodcasts] & 1) == 0)
  {
    v6 = objc_alloc_init(MPCAMSEngagementEventConsumer);
    [(MPCPlaybackEngineEventStream *)self->_eventStream addConsumer:v6];
    v7 = objc_alloc_init(MPCPlayActivityFeedEventConsumer);
    [(MPCPlaybackEngineEventStream *)self->_eventStream addConsumer:v7];
    v8 = [[MPCSiriAnalyticsEventConsumer alloc] initWithPlaybackEngine:self];
    [(MPCPlaybackEngineEventStream *)selfCopy->_eventStream addConsumer:v8];

    self = selfCopy;
  }

  v52 = objc_alloc_init(MPCRTCEventConsumer);
  [(MPCPlaybackEngineEventStream *)self->_eventStream addConsumer:?];
  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = objc_alloc_init(MPCPlaybackEngineLoggingConsumer);
    [(MPCPlaybackEngineEventStream *)self->_eventStream addConsumer:v11];
  }

  v51 = [[MPCPlayPerfConsumer alloc] initWithPlaybackEngine:self];
  [(MPCPlaybackEngineEventStream *)self->_eventStream addConsumer:?];
  if (ICCurrentApplicationIsSystemApp())
  {
    v12 = objc_alloc_init(MPCPowerLogConsumer);
    [(MPCPlaybackEngineEventStream *)self->_eventStream addConsumer:v12];
  }

  if (MSVDeviceOSIsInternalInstall())
  {
    v13 = objc_alloc_init(MPCAutoBugCaptureEventConsumer);
    [(MPCPlaybackEngineEventStream *)self->_eventStream addConsumer:v13];
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  eventStreamConsumers = [(MPCPlaybackEngineInitializationParameters *)self->_initializationParameters eventStreamConsumers];
  v15 = [eventStreamConsumers countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v57;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v57 != v17)
        {
          objc_enumerationMutation(eventStreamConsumers);
        }

        v19 = *(*(&v56 + 1) + 8 * i);
        v20 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v61 = selfCopy;
          v62 = 2114;
          v63 = v19;
          _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "PlaybackEngine %p: Adding app-provided consumer: %{public}@", buf, 0x16u);
        }

        self = selfCopy;
        [(MPCPlaybackEngineEventStream *)selfCopy->_eventStream addConsumer:v19];
      }

      v16 = [eventStreamConsumers countByEnumeratingWithState:&v56 objects:v64 count:16];
    }

    while (v16);
  }

  v21 = +[MPCFairPlayPerformanceController shared];
  [v21 registerEngine:self];

  v22 = [[_MPCMediaRemotePublisher alloc] initWithPlaybackEngine:self];
  mediaRemotePublisher = self->_mediaRemotePublisher;
  self->_mediaRemotePublisher = v22;

  if ((MSVDeviceIsAudioAccessory() & 1) == 0)
  {
    v24 = [[_MPCMusicPlayerControllerServer alloc] initWithPlaybackEngine:self];
    musicPlayerControllerServer = self->_musicPlayerControllerServer;
    self->_musicPlayerControllerServer = v24;
  }

  v26 = [[_MPCLeaseManager alloc] initWithPlaybackEngine:self];
  leaseManager = self->_leaseManager;
  self->_leaseManager = v26;

  v28 = [[_MPCPlaybackEnginePlayer alloc] initWithPlaybackEngine:self];
  player = self->_player;
  self->_player = v28;

  if (+[MPCPlaybackEngine supportsVideoViewController])
  {
    v30 = [[_MPCVideoViewControllerMediaFoundationImplementation alloc] initWithPlaybackEngine:self];
    videoOutput = self->_videoOutput;
    self->_videoOutput = v30;
  }

  v32 = [[_MPCReportingController alloc] initWithPlaybackEngine:self];
  reportingController = self->_reportingController;
  self->_reportingController = v32;

  v34 = [[_MPCPlaybackEngineSessionManager alloc] initWithPlaybackEngine:self];
  sessionManager = self->_sessionManager;
  self->_sessionManager = v34;

  v36 = +[MPCContentAgeRequirementManager sharedManager];
  [v36 setDelegate:self];

  [(MPCPlaybackEngine *)self initializeSwiftStack];
  if (_os_feature_enabled_impl() && MSVDeviceSupportsVocalAttenuation() && ICCurrentApplicationIsSystemApp())
  {
    v37 = [[MPCWhiskyController alloc] initWithPlaybackEngine:self];
    vocalAttenuationController = self->_vocalAttenuationController;
    self->_vocalAttenuationController = v37;
  }

  if ([(MPCPlaybackEngine *)self isSystemPodcastsApplication])
  {
    v39 = [[_MPCSleepTimerController alloc] initWithPlaybackEngine:self];
    sleepTimerController = self->_sleepTimerController;
    self->_sleepTimerController = v39;

    v41 = [[_MPCTranscriptAlignmentController alloc] initWithPlaybackEngine:self];
    transcriptAlignmentController = self->_transcriptAlignmentController;
    self->_transcriptAlignmentController = v41;

    v43 = self->_eventStream;
    eventConsumer = [(_MPCTranscriptAlignmentController *)self->_transcriptAlignmentController eventConsumer];
    [(MPCPlaybackEngineEventStream *)v43 addConsumer:eventConsumer];
  }

  v45 = objc_alloc(MEMORY[0x1E6970490]);
  v46 = objc_opt_class();
  v47 = NSStringFromClass(v46);
  v48 = [v45 initWithName:v47];
  routingController = self->_routingController;
  self->_routingController = v48;

  [(MPAVRoutingController *)self->_routingController setDelegate:self];
  v50 = self->_routingController;
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __45__MPCPlaybackEngine__initializePlaybackStack__block_invoke;
  v55[3] = &unk_1E82387B0;
  v55[4] = self;
  [(MPAVRoutingController *)v50 fetchAvailableRoutesWithCompletionQueue:MEMORY[0x1E69E96A0] completionHandler:v55];
}

+ (BOOL)isSystemPodcasts
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  IsSystemPodcastApplication = MRMediaRemoteApplicationIsSystemPodcastApplication();

  return IsSystemPodcastApplication;
}

- (BOOL)isSystemPodcastsApplication
{
  v2 = objc_opt_class();

  return [v2 isSystemPodcasts];
}

- (void)_setupNotifications
{
  if (_os_feature_enabled_impl() && +[MPCPlaybackEngine deviceSupportsTransitions])
  {
    standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__transitionPreferencesChanged name:*MEMORY[0x1E6970380] object:standardUserDefaults];
    [defaultCenter addObserver:self selector:sel__transitionPreferencesChanged name:*MEMORY[0x1E6970388] object:standardUserDefaults];
  }
}

- (void)initializeSwiftStack
{
  selfCopy = self;
  MPCPlaybackEngine.initializeSwiftStack()();
}

- (BOOL)isSystemMusicApplication
{
  v2 = objc_opt_class();

  return [v2 isSystemMusic];
}

+ (BOOL)supportsVideoViewController
{
  if (MSVDeviceIsAudioAccessory())
  {
    return 0;
  }

  else
  {
    return !+[MPCPlaybackEngine isRemotePlayerService];
  }
}

+ (BOOL)deviceSupportsTransitions
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults BOOLForKey:@"SupportsTransitionsOverride"];

  MSVDeviceOSIsInternalInstall();
  return 1;
}

- (void)schedulePlaybackStatePreservation
{
  v9 = *MEMORY[0x1E69E9840];
  if (![(MPCPlaybackEngine *)self hasScheduledPlaybackStatePreservation])
  {
    [(MPCPlaybackEngine *)self setScheduledPlaybackStatePreservation:1];
    v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      engineID = [(MPCPlaybackEngine *)self engineID];
      *buf = 138543362;
      v8 = engineID;
      _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[PSP:%{public}@] schedulePlaybackStatePreservation | scheduling in 1.5s", buf, 0xCu);
    }

    v5 = dispatch_time(0, 1500000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__MPCPlaybackEngine_schedulePlaybackStatePreservation__block_invoke;
    block[3] = &unk_1E8239298;
    block[4] = self;
    dispatch_after(v5, MEMORY[0x1E69E96A0], block);
  }
}

- (void)start
{
  self->_started = 1;
  [(_MPCMusicPlayerControllerServer *)self->_musicPlayerControllerServer startServer];
  [(_MPCMediaRemotePublisher *)self->_mediaRemotePublisher publishIfNeeded];
  [objc_opt_class() preheatPlayback];
  nowPlayingInfoCenter = [(MPCPlaybackEngineInitializationParameters *)self->_initializationParameters nowPlayingInfoCenter];
  playerPath = [nowPlayingInfoCenter playerPath];

  client = [playerPath client];
  parentApplicationBundleIdentifier = [client parentApplicationBundleIdentifier];

  if (parentApplicationBundleIdentifier)
  {
    origin = [playerPath origin];
    client2 = [playerPath client];
    parentApplicationBundleIdentifier2 = [client2 parentApplicationBundleIdentifier];
    MRMediaRemoteSetParentApplication();
  }
}

+ (void)preheatPlayback
{
  v2 = dispatch_get_global_queue(25, 0);
  dispatch_async(v2, &__block_literal_global_23179);
}

id __36__MPCPlaybackEngine_preheatPlayback__block_invoke()
{
  v0 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C5C61000, v0, OS_LOG_TYPE_DEFAULT, "Starting playback preheating...", v7, 2u);
  }

  v1 = +[MPCFairPlayPerformanceController shared];
  v2 = [MEMORY[0x1E6970A10] ubiquitousIdentifierWithStoreAdamID:1];
  v3 = [MEMORY[0x1E69704E8] sharedController];
  v4 = [v3 musicSubscriptionStatus];

  v5 = [MEMORY[0x1E6970980] sharedStoreArtworkDataSource];
  return [MEMORY[0x1E69E4428] sharedMonitor];
}

void __45__MPCPlaybackEngine__initializePlaybackStack__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) routingController];
  v3 = [v2 pickedRoute];
  v4 = *(a1 + 32);
  v5 = *(v4 + 224);
  *(v4 + 224) = v3;

  v8 = [*(a1 + 32) eventObserver];
  v6 = *(a1 + 32);
  v7 = [v6 pickedRoute];
  [v8 engine:v6 didReceivePickedRouteChange:v7];
}

+ (BOOL)deviceSupportsSmartTransitions
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults BOOLForKey:@"SupportsSmartTransitionsOverride"];

  MSVDeviceOSIsInternalInstall();
  return 1;
}

- (float)vocalLevel
{
  vocalAttenuationController = [(MPCPlaybackEngine *)self vocalAttenuationController];
  if (vocalAttenuationController)
  {
    v3 = vocalAttenuationController[10];
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

- (void)loadSessionWithIdentifier:(NSString *)identifier completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = identifier;
  v7[3] = v6;
  v7[4] = self;
  identifierCopy = identifier;
  selfCopy = self;

  sub_1C5E3A9D0(&unk_1C6044F40, v7);
}

- (void)reloadQueueForReason:(int64_t)reason completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = reason;
  v7[3] = v6;
  v7[4] = self;
  selfCopy = self;

  sub_1C5E3A9D0(&unk_1C6044F30, v7);
}

- (void)beginScanningWithDirection:(int64_t)direction supportsRateChange:(BOOL)change identifier:(NSString *)identifier completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = direction;
  *(v11 + 24) = change;
  *(v11 + 32) = identifier;
  *(v11 + 40) = v10;
  *(v11 + 48) = self;
  identifierCopy = identifier;
  selfCopy = self;

  sub_1C5E3A9D0(&unk_1C6044EE8, v11);
}

- (BOOL)skipWithDirectionShouldJumpToItemStart:(int64_t)start
{
  selfCopy = self;
  v4 = MPCPlaybackEngine.skipShouldJumpToItemStart(direction:)();

  return v4 & 1;
}

- (void)relativeVolumeDidUpdateToVolume:(float)volume
{
  selfCopy = self;
  MPCPlaybackEngine.relativeVolumeDidUpdate(to:)(volume);
}

- (void)reloadItemsKeepingCurrentItem:(BOOL)item allowReuse:(BOOL)reuse
{
  selfCopy = self;
  sub_1C5E3CAD0(item);
}

- (void)setRemoteHostProcessAuditToken:(id *)token
{
  v3 = *&token->var0[4];
  *self->_remoteHostProcessAuditToken.val = *token->var0;
  *&self->_remoteHostProcessAuditToken.val[4] = v3;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)remoteHostProcessAuditToken
{
  v3 = *self[8].var0;
  *retstr->var0 = *&self[7].var0[4];
  *&retstr->var0[4] = v3;
  return self;
}

- (MPCPlaybackEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)takeCriticalSectionAssertion:(id)assertion
{
  v27 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  v5 = +[MPCCriticalSectionManager shared];
  v6 = [v5 takeAssertion:assertionCopy];

  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    selfCopy = self;
    v23 = 2048;
    v24 = v6;
    v25 = 2114;
    v26 = assertionCopy;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "PlaybackEngine %p: takeCriticalSectionAssertion: %p (%{public}@)", buf, 0x20u);
  }

  eventStream = [(MPCPlaybackEngine *)self eventStream];
  v9 = [eventStream eventDeliveryDeferralAssertionOfType:1 forReason:assertionCopy];

  objc_initWeak(buf, self);
  v10 = objc_alloc(MEMORY[0x1E69B13F0]);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__MPCPlaybackEngine_takeCriticalSectionAssertion___block_invoke;
  v16[3] = &unk_1E8237590;
  v11 = v6;
  v17 = v11;
  objc_copyWeak(&v20, buf);
  v12 = assertionCopy;
  v18 = v12;
  v13 = v9;
  v19 = v13;
  v14 = [v10 initWithTimeout:v16 interruptionHandler:30.0];

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);

  return v14;
}

uint64_t __50__MPCPlaybackEngine_takeCriticalSectionAssertion___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) isInvalidated] & 1) == 0)
  {
    [*(a1 + 32) invalidate];
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = &stru_1F454A698;
      if (!a2)
      {
        v8 = @"Timed out";
      }

      v10 = 134218754;
      v11 = WeakRetained;
      v12 = 2048;
      v13 = v6;
      v14 = 2114;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "PlaybackEngine %p: invalidatedCriticalSectionAssertion: %p (%{public}@) [%{public}@]", &v10, 0x2Au);
    }
  }

  return [*(a1 + 48) invalidate];
}

- (void)routingController:(id)controller pickedRouteDidChange:(id)change
{
  objc_storeStrong(&self->_pickedRoute, change);
  changeCopy = change;
  eventObserver = [(MPCPlaybackEngine *)self eventObserver];
  [eventObserver engine:self didReceivePickedRouteChange:changeCopy];
}

- (void)requestAuthorizationForExplicitItem:(id)item reason:(int64_t)reason completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  completionCopy = completion;
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (reason == 1)
    {
      v11 = @"Age Gating";
    }

    else
    {
      v11 = @"None";
    }

    *buf = 134218498;
    if (reason == 2)
    {
      v11 = @"Age Verification";
    }

    selfCopy = self;
    v20 = 2114;
    v21 = itemCopy;
    v22 = 2114;
    v23 = v11;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "PlaybackEngine %p: requestAuthorizationForExplicitItem:reason:completion: - Received request to authorize explicit item - item=%{public}@ - reason=%{public}@", buf, 0x20u);
  }

  delegate = [(MPCPlaybackEngine *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __75__MPCPlaybackEngine_requestAuthorizationForExplicitItem_reason_completion___block_invoke;
    v15[3] = &unk_1E8237568;
    v15[4] = self;
    v16 = itemCopy;
    v17 = completionCopy;
    [delegate engine:self requiresAuthorizationToPlayItem:v16 reason:reason authorizationHandler:v15];
  }

  else
  {
    if (reason == 1)
    {
      v13 = @"Age Gating";
    }

    else
    {
      v13 = @"None";
    }

    if (reason == 2)
    {
      v13 = @"Age Verification";
    }

    v14 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:42 debugDescription:{@"Explicit content not allowed [unable to handle request] - item=%@ - reason=%@", itemCopy, v13}];
    (*(completionCopy + 2))(completionCopy, 0, v14);
  }
}

void __75__MPCPlaybackEngine_requestAuthorizationForExplicitItem_reason_completion___block_invoke(void *a1, int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[4];
      v8 = a1[5];
      v14 = 134218498;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      v18 = 2114;
      v19 = v5;
      _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_ERROR, "PlaybackEngine %p: requestAuthorizationForExplicitItem:reason:completion: - Explicit content not allowed [request failed] - item=%{public}@ - error=%{public}@", &v14, 0x20u);
    }

    v9 = *(a1[6] + 16);
  }

  else
  {
    v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[4];
      v12 = a1[5];
      v13 = @"not allowed";
      if (a2)
      {
        v13 = @"allowed";
      }

      v14 = 134218498;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "PlaybackEngine %p: requestAuthorizationForExplicitItem:reason:completion: - Explicit content %{public}@ [request succeeded] - item=%{public}@", &v14, 0x20u);
    }

    v9 = *(a1[6] + 16);
  }

  v9();
}

- (void)_transitionPreferencesChanged
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__MPCPlaybackEngine__transitionPreferencesChanged__block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __50__MPCPlaybackEngine__transitionPreferencesChanged__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queueController];
  v4 = [v2 transitionTogglable];

  if (v4 && _os_feature_enabled_impl() && +[MPCPlaybackEngine deviceSupportsTransitions])
  {
    v3 = [*(a1 + 32) eventObserver];
    [v3 engineDidChangeTransitionSettings:*(a1 + 32)];

    [*(a1 + 32) reloadItemsKeepingCurrentItem:1 allowReuse:1];
  }
}

- (BOOL)_shouldIgnorePlaybackSessionError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:@"MPCPlaybackSessionManagerError"];

  v6 = v5 && ([errorCopy code] - 1) < 3;
  return v6;
}

- (void)_detectCrashLoopForSessionIdentifier:(id)identifier block:(id)block
{
  v37 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = MEMORY[0x1E696AEC0];
  playerID = self->_playerID;
  blockCopy = block;
  playerID = [v7 stringWithFormat:@"stateRestoration-%@", playerID];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v12 = [standardUserDefaults dictionaryForKey:playerID];
  v13 = v12;
  v14 = MEMORY[0x1E695E0F8];
  if (v12)
  {
    v14 = v12;
  }

  v15 = v14;

  v16 = [v15 objectForKeyedSubscript:@"attempts"];
  integerValue = [v16 integerValue];

  v18 = [v15 objectForKeyedSubscript:@"identifier"];

  LODWORD(v15) = [v18 isEqualToString:identifierCopy];
  if (v15)
  {
    v19 = integerValue;
  }

  else
  {
    v19 = 0;
  }

  v20 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [(MPCPlaybackEngine *)self engineID];
    *buf = 138543874;
    v32 = engineID;
    v33 = 2114;
    v34 = identifierCopy;
    v35 = 2048;
    v36 = v19 + 1;
    _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "[PSP:%{public}@] _detectCrashLoopForSessionIdentifier: | sessionIdentifier=%{public}@ attempt=%ld", buf, 0x20u);
  }

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v29[1] = @"attempts";
  v30[0] = identifierCopy;
  v29[0] = @"identifier";
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:v19 + 1];
  v30[1] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
  [standardUserDefaults2 setObject:v24 forKey:playerID];

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __64__MPCPlaybackEngine__detectCrashLoopForSessionIdentifier_block___block_invoke;
  v27[3] = &unk_1E8239298;
  v28 = playerID;
  v25 = blockCopy[2];
  v26 = playerID;
  v25(blockCopy, v19 < 2, v27);
}

void __64__MPCPlaybackEngine__detectCrashLoopForSessionIdentifier_block___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 removeObjectForKey:*(a1 + 32)];
}

- (NSString)hostingSharedSessionID
{
  mediaRemotePublisher = [(MPCPlaybackEngine *)self mediaRemotePublisher];
  hostingSharedSessionID = [mediaRemotePublisher hostingSharedSessionID];

  return hostingSharedSessionID;
}

- (void)behavior:(id)behavior didReceiveSharedListeningEvent:(id)event
{
  eventCopy = event;
  delegate = [(MPCPlaybackEngine *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate engine:self didReceiveSharedListeningEvent:eventCopy];
  }
}

- (void)behavior:(id)behavior didChangeExplicitContentState:(int64_t)state
{
  player = [(MPCPlaybackEngine *)self player];
  currentItem = [player currentItem];
  [currentItem setExplicitContentState:state];
}

- (void)behavior:(id)behavior didEndSharePlaySessionWithReason:(int64_t)reason
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEC0];
  v7 = MSVNanoIDCreateTaggedPointer();
  v8 = [v6 stringWithFormat:@"LeaveSharedSession:%@", v7];

  if (reason)
  {
    if (reason == 2)
    {
      v9 = 0;
      reason = @"CannotHostAndParticipateInDistinctSharedSessions";
    }

    else if (reason == 1)
    {
      v9 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlaybackEngineInternalError" code:2201 debugDescription:@"LiveLink unexpectedly disconnected"];
      reason = @"UnexpectedDisconnect";
    }

    else
    {
      reason = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/%d", reason];
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    reason = @"OutOfItems";
  }

  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    selfCopy = self;
    v20 = 2114;
    v21 = reason;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "PlaybackEngine %p: sharePlaySessionDidEnd: calling publisher.leaveSharedSession [%{public}@] commandID=%{public}@", buf, 0x20u);
  }

  mediaRemotePublisher = self->_mediaRemotePublisher;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__MPCPlaybackEngine_behavior_didEndSharePlaySessionWithReason___block_invoke;
  v15[3] = &unk_1E8237540;
  v15[4] = self;
  v16 = reason;
  v17 = v9;
  v13 = v9;
  v14 = reason;
  [(_MPCMediaRemotePublisher *)mediaRemotePublisher leaveSharedSessionWithCommandID:v8 remoteControlInterface:@"MPCPlaybackEngine <MusicSharePlayDelegate>" completion:v15];
}

void __63__MPCPlaybackEngine_behavior_didEndSharePlaySessionWithReason___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = 134218498;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "PlaybackEngine %p: sharePlaySessionDidEnd: publisher.leaveSharedSession [%{public}@] complete status=%{public}@", &v8, 0x20u);
  }

  v7 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 engine:*(a1 + 32) didEndSharedListeningSessionWithError:*(a1 + 48)];
  }
}

- (void)behavior:(id)behavior didChangeActionAtQueueEnd:(int64_t)end
{
  eventObserver = [(MPCPlaybackEngine *)self eventObserver];
  [eventObserver engine:self didChangeActionAtQueueEnd:end];
}

- (void)behavior:(id)behavior didChangeShuffleType:(int64_t)type
{
  eventObserver = [(MPCPlaybackEngine *)self eventObserver];
  [eventObserver engine:self didChangeShuffleType:type];
}

- (void)behavior:(id)behavior didChangeRepeatType:(int64_t)type
{
  eventObserver = [(MPCPlaybackEngine *)self eventObserver];
  [eventObserver engine:self didChangeRepeatType:type];
}

- (void)queueControllerDidReachUnexpectedEndOfQueue:(id)queue
{
  v17 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  queueController = [(MPCPlaybackEngine *)self queueController];

  if (queueController == queueCopy && [queueCopy behaviorType])
  {
    if ([queueCopy isEmpty])
    {
      v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        engineID = [(MPCPlaybackEngine *)self engineID];
        *buf = 138543362;
        v16 = engineID;
        _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[ENG:%{public}@] queueControllerDidReachUnexpectedEndOfQueue: switching to empty queue [no items in queue controller]", buf, 0xCu);
      }

      mediaRemotePublisher = [(MPCPlaybackEngine *)self mediaRemotePublisher];
      v9 = objc_opt_new();
      [mediaRemotePublisher performSetQueue:v9 completion:&__block_literal_global_206];
    }

    else
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = MSVNanoIDCreateTaggedPointer();
      v12 = [v10 stringWithFormat:@"UnexpectedEndOfQueue_%@", v11];

      player = [(MPCPlaybackEngine *)self player];
      [player pauseWithIdentifier:v12 completion:&__block_literal_global_211];

      player2 = [(MPCPlaybackEngine *)self player];
      [player2 didReachEndOfQueueWithReason:@"UnexpectedEndOfQueue"];
    }
  }
}

- (void)queueController:(id)controller didChangeTargetContentItemID:(id)d
{
  controllerCopy = controller;
  [(MPCPlaybackEngine *)self schedulePlaybackStatePreservation];
  v6 = [controllerCopy targetContentItemSource] == 3;
  targetContentItemSource = [controllerCopy targetContentItemSource];

  [(MPCPlaybackEngine *)self reloadItemsKeepingCurrentItem:v6 allowReuse:targetContentItemSource != 6];
}

- (void)queueControllerDidChangeContents:(id)contents
{
  [(MPCPlaybackEngine *)self schedulePlaybackStatePreservation];
  eventObserver = [(MPCPlaybackEngine *)self eventObserver];
  [eventObserver engine:self didChangeQueueWithReason:@"Queue Controller Contents Changed"];

  [(MPCPlaybackEngine *)self reloadItemsKeepingCurrentItem:1 allowReuse:1];
}

- (void)setQueueController:(id)controller
{
  v40 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  p_queueController = &self->_queueController;
  queueController = self->_queueController;
  if (queueController != controllerCopy)
  {
    if (queueController)
    {
      eventObserver = [(MPCPlaybackEngine *)self eventObserver];
      [eventObserver engine:self willRemoveQueueController:controllerCopy];

      playbackEngine = [(MPCQueueController *)self->_queueController playbackEngine];

      if (playbackEngine == self)
      {
        v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Session");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          engineID = [(MPCPlaybackEngine *)self engineID];
          sessionID = [(MPCQueueController *)controllerCopy sessionID];
          sessionID2 = [(MPCQueueController *)self->_queueController sessionID];
          *buf = 138543874;
          v35 = engineID;
          v36 = 2114;
          v37 = sessionID;
          v38 = 2114;
          v39 = sessionID2;
          _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[ENG:%{public}@] setQueueController=%{public}@ | disconnecting [previous controller still connected] queueController=%{public}@", buf, 0x20u);
        }

        [(MPCQueueController *)self->_queueController willDisconnectFromPlaybackEngine:self];
      }

      [(MPCQueueController *)self->_queueController didDisconnectFromPlaybackEngine:self];
      v15 = self->_queueController;
    }

    else
    {
      v15 = 0;
    }

    musicSharePlay = [(MPCQueueController *)v15 musicSharePlay];
    [musicSharePlay setMusicSharePlayBehaviorDelegate:0];

    music = [(MPCQueueController *)*p_queueController music];
    [music setMusicBehaviorDelegate:0];

    [(MPCQueueController *)*p_queueController setDelegate:0];
    musicSharePlay2 = [(MPCQueueController *)controllerCopy musicSharePlay];

    if (musicSharePlay2)
    {
      [(MPCPlaybackEngine *)self setVocalAttenuationEnabled:0];
    }

    objc_storeStrong(&self->_queueController, controller);
    playbackEngine2 = [(MPCQueueController *)self->_queueController playbackEngine];
    v20 = playbackEngine2;
    if (playbackEngine2 != self)
    {
      if (playbackEngine2)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"MPCPlaybackEngine.m" lineNumber:636 description:{@"Attempt to share QueueController with two players: %@ != %@", v20, self}];
      }

      v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Session");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        engineID2 = [(MPCPlaybackEngine *)self engineID];
        sessionID3 = [(MPCQueueController *)controllerCopy sessionID];
        *buf = 138543618;
        v35 = engineID2;
        v36 = 2114;
        v37 = sessionID3;
        _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEFAULT, "[ENG:%{public}@] setQueueController:%{public}@ | connecting [new controller not connected]", buf, 0x16u);
      }

      [(MPCQueueController *)self->_queueController willConnectToPlaybackEngine:self];
    }

    [(MPCQueueController *)self->_queueController setDelegate:self];
    music2 = [(MPCQueueController *)self->_queueController music];
    [music2 setMusicBehaviorDelegate:self];

    musicSharePlay3 = [(MPCQueueController *)self->_queueController musicSharePlay];
    [musicSharePlay3 setMusicSharePlayBehaviorDelegate:self];

    delegate = [(MPCPlaybackEngine *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v27 = [delegate requestedPropertySetForEngine:self];
      musicSharePlay4 = [(MPCQueueController *)self->_queueController musicSharePlay];
      [musicSharePlay4 setRequestedPropertySetForEvents:v27];
    }

    [(MPCQueueController *)self->_queueController didConnectToPlaybackEngine:self];
    v29 = os_log_create("com.apple.amp.mediaplaybackcore", "Session");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      engineID3 = [(MPCPlaybackEngine *)self engineID];
      sessionID4 = [(MPCQueueController *)self->_queueController sessionID];
      *buf = 138543618;
      v35 = engineID3;
      v36 = 2114;
      v37 = sessionID4;
      _os_log_impl(&dword_1C5C61000, v29, OS_LOG_TYPE_DEFAULT, "[ENG:%{public}@] setQueueController:%{public}@ | didChangeQueueController", buf, 0x16u);
    }

    eventObserver2 = [(MPCPlaybackEngine *)self eventObserver];
    [eventObserver2 engine:self didChangeQueueController:controllerCopy];
  }
}

- (BOOL)isVocalAttenuationAvailable
{
  if ([(_MPCMediaRemotePublisher *)self->_mediaRemotePublisher vocalAttenuationUnavailabilityReasons])
  {
    return 0;
  }

  vocalAttenuationController = self->_vocalAttenuationController;
  if (vocalAttenuationController && vocalAttenuationController->_state == 2)
  {
    return 1;
  }

  return [(MPCWhiskyController *)vocalAttenuationController isVocalAttenuationAvailable];
}

- (double)currentAudioProcessingDelay
{
  currentItem = [(_MPCPlaybackEnginePlayer *)self->_player currentItem];
  v4 = 0.0;
  if ([currentItem supportsVocalAttenuation] && objc_msgSend(currentItem, "isConfiguredForVocalAttenuation") && -[MPCPlaybackEngine isVocalAttenuationEnabled](self, "isVocalAttenuationEnabled"))
  {
    vocalAttenuationController = [(MPCPlaybackEngine *)self vocalAttenuationController];
    v6 = vocalAttenuationController;
    if (vocalAttenuationController)
    {
      processor = [vocalAttenuationController processor];
      isEnabled = [processor isEnabled];

      if (isEnabled)
      {
        modelProvider = [v6 modelProvider];
        model = [modelProvider model];
        if (model)
        {
          v4 = model[10];
        }
      }
    }
  }

  return v4;
}

- (void)setVocalLevel:(float)level
{
  v20 = *MEMORY[0x1E69E9840];
  vocalAttenuationController = [(MPCPlaybackEngine *)self vocalAttenuationController];
  if (vocalAttenuationController)
  {
    v6 = vocalAttenuationController[10];
  }

  else
  {
    v6 = 0.0;
  }

  if (v6 != level)
  {
    vocalAttenuationController2 = [(MPCPlaybackEngine *)self vocalAttenuationController];
    if (vocalAttenuationController2)
    {
      v9 = fminf(fmaxf(level, vocalAttenuationController2[14]), vocalAttenuationController2[15]);
      v10 = vocalAttenuationController2[10];
      if (v9 != v10)
      {
        vocalAttenuationController2[10] = v9;
        *&v8 = vocalAttenuationController2[10];
        v16 = vocalAttenuationController2;
        [vocalAttenuationController2 _processorLevelForVocalLevel:v8];
        v12 = v11;
        processor = [v16 processor];
        LODWORD(v14) = v12;
        [processor setLevel:v14];

        v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          *&buf[4] = v16;
          *&buf[12] = 2048;
          *&buf[14] = v10;
          *&buf[22] = 2048;
          v18 = v9;
          _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Vocal level changed: %3.2fui -> %3.2fui", buf, 0x20u);
        }

        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __37__MPCWhiskyController_setVocalLevel___block_invoke;
        v18 = COERCE_DOUBLE(&unk_1E8239298);
        v19 = v16;
        msv_dispatch_on_main_queue();
        vocalAttenuationController2 = v16;
      }
    }
  }
}

- (void)setVocalAttenuationEnabled:(BOOL)enabled
{
  if (self->_vocalAttenuationEnabled != enabled)
  {
    self->_vocalAttenuationEnabled = enabled;
    player = [(MPCPlaybackEngine *)self player];
    [player updateAudioSessionSpeechDetection];
  }
}

void __54__MPCPlaybackEngine_schedulePlaybackStatePreservation__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) hasScheduledPlaybackStatePreservation])
  {
    [*(a1 + 32) setScheduledPlaybackStatePreservation:0];
    if ([*(a1 + 32) isStateRestorationSupported])
    {
      v2 = [*(a1 + 32) isRestoringPlaybackState];
      v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      if (!v2)
      {
        if (v4)
        {
          v7 = [*(a1 + 32) engineID];
          *buf = 138543362;
          v10 = v7;
          _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[PSP:%{public}@] schedulePlaybackStatePreservation | saving playback state [debounced]", buf, 0xCu);
        }

        v3 = [*(a1 + 32) sessionManager];
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __54__MPCPlaybackEngine_schedulePlaybackStatePreservation__block_invoke_194;
        v8[3] = &unk_1E82374F8;
        v8[4] = *(a1 + 32);
        [v3 saveSessionWithCompletion:v8];
        goto LABEL_12;
      }

      if (v4)
      {
        v5 = [*(a1 + 32) engineID];
        *buf = 138543362;
        v10 = v5;
        v6 = "[PSP:%{public}@] schedulePlaybackStatePreservation | skipping playback state preservation [engine is currently restoring state]";
LABEL_8:
        _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
      }
    }

    else
    {
      v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(a1 + 32) engineID];
        *buf = 138543362;
        v10 = v5;
        v6 = "[PSP:%{public}@] schedulePlaybackStatePreservation | skipping playback state preservation [not supported by client]";
        goto LABEL_8;
      }
    }

LABEL_12:
  }
}

void __54__MPCPlaybackEngine_schedulePlaybackStatePreservation__block_invoke_194(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) _shouldIgnorePlaybackSessionError:v6];
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 32) engineID];
        v15 = 138543618;
        v16 = v10;
        v17 = 2114;
        v18 = v6;
        v11 = "[PSP:%{public}@] schedulePlaybackStatePreservation | unable to preserve playback state [encountered ignorable error] error=%{public}@";
        v12 = v9;
        v13 = 22;
LABEL_7:
        _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, v11, &v15, v13);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v14 = *(a1 + 32);
      v15 = 138543618;
      v16 = v14;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_FAULT, "[PSP:%{public}@] schedulePlaybackStatePreservation | failed to archiving playback state [] error=%{public}@", &v15, 0x16u);
    }
  }

  else
  {
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) engineID];
      v15 = 138543362;
      v16 = v10;
      v11 = "[PSP:%{public}@] schedulePlaybackStatePreservation | saved playback state";
      v12 = v9;
      v13 = 12;
      goto LABEL_7;
    }
  }
}

- (void)setAudioAnalyzerEnabled:(BOOL)enabled
{
  if (self->_audioAnalyzerEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_audioAnalyzerEnabled = enabled;
    standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
    disableAudioAnalysis = [standardUserDefaults disableAudioAnalysis];

    v8 = 0;
    if (enabledCopy && (disableAudioAnalysis & 1) == 0)
    {
      v8 = [[MPCAudioSpectrumAnalyzer alloc] initWithPlaybackEngine:self];
    }

    audioAnalyzer = self->_audioAnalyzer;
    self->_audioAnalyzer = v8;

    MEMORY[0x1EEE66BB8](v8, audioAnalyzer);
  }
}

- (void)setStateRestorationSupported:(BOOL)supported
{
  supportedCopy = supported;
  [(_MPCPlaybackEngineSessionManager *)self->_sessionManager setStateRestorationSupported:?];
  if (supportedCopy)
  {

    [(MPCPlaybackEngine *)self schedulePlaybackStatePreservation];
  }
}

- (void)removeEngineObserver:(id)observer
{
  eventObserver = self->_eventObserver;
  observerCopy = observer;
  objects = [(_MPCPlaybackEngineEventObserving *)eventObserver objects];
  [objects removeObject:observerCopy];
}

- (void)addEngineObserver:(id)observer
{
  eventObserver = self->_eventObserver;
  observerCopy = observer;
  objects = [(_MPCPlaybackEngineEventObserving *)eventObserver objects];
  [objects addObject:observerCopy];
}

- (void)setDisableShuffle:(BOOL)shuffle
{
  if (self->_disableShuffle != shuffle)
  {
    self->_disableShuffle = shuffle;
    mediaRemotePublisher = [(MPCPlaybackEngine *)self mediaRemotePublisher];
    [mediaRemotePublisher publishIfNeeded];
  }
}

- (void)setDisableRepeat:(BOOL)repeat
{
  if (self->_disableRepeat != repeat)
  {
    self->_disableRepeat = repeat;
    mediaRemotePublisher = [(MPCPlaybackEngine *)self mediaRemotePublisher];
    [mediaRemotePublisher publishIfNeeded];
  }
}

- (void)setDisableAutoPlay:(BOOL)play
{
  if (self->_disableAutoPlay != play)
  {
    self->_disableAutoPlay = play;
    mediaRemotePublisher = [(MPCPlaybackEngine *)self mediaRemotePublisher];
    [mediaRemotePublisher publishIfNeeded];
  }
}

- (void)setAudioSessionOptions:(unint64_t)options
{
  if (self->_audioSessionOptions != options)
  {
    self->_audioSessionOptions = options;
    [(_MPCPlaybackEnginePlayer *)self->_player updateAudioSession];
  }
}

- (void)setAudioSessionCategory:(id)category
{
  categoryCopy = category;
  v9 = categoryCopy;
  if (!categoryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCPlaybackEngine.m" lineNumber:286 description:{@"Invalid parameter not satisfying: %@", @"audioSessionCategory"}];

    categoryCopy = 0;
  }

  if (![(NSString *)self->_audioSessionCategory isEqualToString:categoryCopy])
  {
    v6 = [v9 copy];
    audioSessionCategory = self->_audioSessionCategory;
    self->_audioSessionCategory = v6;

    [(_MPCPlaybackEnginePlayer *)self->_player updateAudioSession];
  }
}

- (void)setQueueHandoffSupported:(BOOL)supported
{
  if (self->_queueHandoffSupported != supported)
  {
    self->_queueHandoffSupported = supported;
    if ([(_MPCMediaRemotePublisher *)self->_mediaRemotePublisher hasInitializedSupportedCommands])
    {
      mediaRemotePublisher = self->_mediaRemotePublisher;

      [(_MPCMediaRemotePublisher *)mediaRemotePublisher publishIfNeeded];
    }
  }
}

- (void)restoreStateWithCompletion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  stateRestorationSessionIdentifier = [(_MPCPlaybackEngineSessionManager *)self->_sessionManager stateRestorationSessionIdentifier];
  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v7 = v6;
  if (stateRestorationSessionIdentifier)
  {
    v8 = os_signpost_id_generate(v6);

    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "StateRestore", "", buf, 2u);
    }

    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      engineID = [(MPCPlaybackEngine *)self engineID];
      *buf = 138543618;
      v19 = engineID;
      v20 = 2114;
      selfCopy2 = self;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[PSP:%{public}@] restoreStateWithCompletion: | requested playback state restoration [] engine=%{public}@", buf, 0x16u);
    }

    [(MPCPlaybackEngine *)self setRestoringPlaybackState:1];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48__MPCPlaybackEngine_restoreStateWithCompletion___block_invoke;
    v14[3] = &unk_1E82374D0;
    v17 = v8;
    v14[4] = self;
    v16 = completionCopy;
    v15 = stateRestorationSessionIdentifier;
    [(MPCPlaybackEngine *)self _detectCrashLoopForSessionIdentifier:v15 block:v14];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      engineID2 = [(MPCPlaybackEngine *)self engineID];
      *buf = 138543618;
      v19 = engineID2;
      v20 = 2114;
      selfCopy2 = self;
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[PSP:%{public}@] restoreStateWithCompletion: | skipping playback state restoration [no stateRestorationSessionID in session manager] engine=%{public}@", buf, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __48__MPCPlaybackEngine_restoreStateWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v7 = v6;
  if (a2)
  {
    v8 = *(a1 + 56);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v8, "StateRestore-WaitingForAccounts", "", buf, 2u);
    }

    v9 = [*(a1 + 32) eventObserver];
    [v9 engineWillBeginStateRestoration:*(a1 + 32)];

    v10 = +[MPCPlaybackAccountManager sharedManager];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __48__MPCPlaybackEngine_restoreStateWithCompletion___block_invoke_158;
    v20[3] = &unk_1E82374A8;
    v11 = *(a1 + 32);
    v12 = *(a1 + 48);
    v24 = *(a1 + 56);
    v20[4] = v11;
    v22 = v12;
    v23 = v5;
    v21 = *(a1 + 40);
    [v10 performAfterLoadingAccounts:v20];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 32) engineID];
      v14 = *(a1 + 40);
      *buf = 138543618;
      v26 = v13;
      v27 = 2114;
      v28 = v14;
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_ERROR, "[PSP:%{public}@] restoreStateWithCompletion: | skipping restore [too many failed attempts] sessionIdentifier=%{public}@", buf, 0x16u);
    }

    v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v16 = v15;
    v17 = *(a1 + 56);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v16, OS_SIGNPOST_INTERVAL_END, v17, "StateRestore", "didRestore=NO", buf, 2u);
    }

    [*(*(a1 + 32) + 96) setStateRestorationSessionIdentifier:0];
    [*(a1 + 32) setRestoringPlaybackState:0];
    v18 = *(a1 + 48);
    v19 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:59 debugDescription:@"Unable to restore state. Too many failed attempts."];
    (*(v18 + 16))(v18, 0, v19);

    v5[2](v5);
  }
}

void __48__MPCPlaybackEngine_restoreStateWithCompletion___block_invoke_158(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v3 = v2;
  v4 = *(a1 + 64);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v3, OS_SIGNPOST_INTERVAL_END, v4, "StateRestore-WaitingForAccounts", "", buf, 2u);
  }

  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v6 = v5;
  v7 = *(a1 + 64);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "StateRestore-MRCheck", "", buf, 2u);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __48__MPCPlaybackEngine_restoreStateWithCompletion___block_invoke_159;
  v15[3] = &unk_1E8237480;
  v18 = *(a1 + 64);
  v8 = *(a1 + 32);
  v9 = *(v8 + 80);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 40);
  *&v13 = v8;
  *(&v13 + 1) = v12;
  *&v14 = v10;
  *(&v14 + 1) = v11;
  v17 = v14;
  v16 = v13;
  [v9 getShouldRestoreStateWithCompletion:v15];
}

void __48__MPCPlaybackEngine_restoreStateWithCompletion___block_invoke_159(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v5 = v4;
  v6 = *(a1 + 64);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 67109120;
    LODWORD(v25) = a2;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v5, OS_SIGNPOST_INTERVAL_END, v6, "StateRestore-MRCheck", "shouldRestore=%{BOOL}u", buf, 8u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__MPCPlaybackEngine_restoreStateWithCompletion___block_invoke_160;
  aBlock[3] = &unk_1E8237430;
  v7 = *(a1 + 64);
  aBlock[4] = *(a1 + 32);
  v23 = v7;
  v21 = *(a1 + 48);
  v22 = *(a1 + 56);
  v8 = _Block_copy(aBlock);
  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v10 = v9;
  if (a2)
  {
    v11 = *(a1 + 64);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "StateRestore-Load", "", buf, 2u);
    }

    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) engineID];
      *buf = 138543362;
      v25 = v13;
      _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[PSP:%{public}@] restoreStateWithCompletion: | beginning playback state restoration", buf, 0xCu);
    }

    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __48__MPCPlaybackEngine_restoreStateWithCompletion___block_invoke_164;
    v17[3] = &unk_1E8237458;
    v19 = *(a1 + 64);
    v18 = v8;
    [v14 loadSessionWithIdentifier:v15 completion:v17];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      *buf = 138543362;
      v25 = v16;
      _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[PSP:%{public}@] restoreStateWithCompletion: | skipping playback state restoration [MediaRemote commands pending]", buf, 0xCu);
    }

    (*(v8 + 2))(v8, 0, 0);
  }
}

void __48__MPCPlaybackEngine_restoreStateWithCompletion___block_invoke_160(uint64_t a1, int a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [*(a1 + 32) setRestoringPlaybackState:0];
  v6 = [*(a1 + 32) eventObserver];
  [v6 engineDidEndStateRestoration:*(a1 + 32)];

  [*(*(a1 + 32) + 80) publishIfNeeded];
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v8 = v7;
  v9 = *(a1 + 56);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 67109120;
    LODWORD(v24) = a2;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v8, OS_SIGNPOST_INTERVAL_END, v9, "StateRestore", "didRestore=%{BOOL}u", buf, 8u);
  }

  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v11 = v10;
  if (v5)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = [*(a1 + 32) engineID];
      v13 = [v5 treeDescription];
      *buf = 138543874;
      v24 = v12;
      v25 = 1024;
      v26 = a2;
      v27 = 2114;
      v28 = v13;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_ERROR, "[PSP:%{public}@] restoreStateWithCompletion | finished playback state restoration [] didRestore=%{BOOL}u error=%{public}@", buf, 0x1Cu);
    }

    if ((a2 & 1) == 0)
    {
      v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [*(a1 + 32) engineID];
        *buf = 138543362;
        v24 = v15;
        _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[PSP:%{public}@] restoreStateWithCompletion: | clearing state restoration identifier [state restoration failed]", buf, 0xCu);
      }

      [*(*(a1 + 32) + 96) setStateRestorationSessionIdentifier:0];
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [*(a1 + 32) engineID];
      *buf = 138543618;
      v24 = v16;
      v25 = 1024;
      v26 = a2;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[PSP:%{public}@] restoreStateWithCompletion | finished playback state restoration [] didRestore=%{BOOL}u", buf, 0x12u);
    }
  }

  (*(*(a1 + 40) + 16))();
  v17 = *(*(a1 + 32) + 104);
  if (a2 && v17)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __48__MPCPlaybackEngine_restoreStateWithCompletion___block_invoke_161;
    v21[3] = &unk_1E8239528;
    v22 = *(a1 + 48);
    [v17 performAfterEdits:v21];
  }

  else
  {
    v18 = *(a1 + 48);
    v19 = *(v18 + 16);
    v20 = v17;
    v19(v18);
  }
}

void __48__MPCPlaybackEngine_restoreStateWithCompletion___block_invoke_164(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v5, OS_SIGNPOST_INTERVAL_END, v6, "StateRestore-Load", "", v7, 2u);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v3 == 0, v3);
}

- (void)dealloc
{
  v3 = +[MPCFairPlayPerformanceController shared];
  [v3 unregisterEngine:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(MPCPlaybackEngineEventStream *)self->_eventStream scheduleInvalidation];
  v5.receiver = self;
  v5.super_class = MPCPlaybackEngine;
  [(MPCPlaybackEngine *)&v5 dealloc];
}

- (MPCPlaybackEngine)initWithParameters:(id)parameters
{
  v23 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v20.receiver = self;
  v20.super_class = MPCPlaybackEngine;
  v7 = [(MPCPlaybackEngine *)&v20 init];
  if (v7)
  {
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      [currentHandler handleFailureInMethod:a2 object:v7 file:@"MPCPlaybackEngine.m" lineNumber:137 description:{@"MPCPlaybackEngine API must be called on the main thread. %@", callStackSymbols}];
    }

    objc_storeStrong(&v7->_initializationParameters, parameters);
    playerID = [parametersCopy playerID];
    v9 = [playerID copy];
    playerID = v7->_playerID;
    v7->_playerID = v9;

    v11 = MSVNanoIDCreateTaggedPointer();
    engineID = v7->_engineID;
    v7->_engineID = v11;

    objc_storeStrong(&v7->_audioSessionCategory, *MEMORY[0x1E6958068]);
    v7->_queueHandoffSupported = 1;
    isRemotePlayerService = [objc_opt_class() isRemotePlayerService];
    if ((isRemotePlayerService & 1) == 0)
    {
      [objc_opt_class() isSystemMusic];
    }

    v7->_usesStopState = isRemotePlayerService;
    v14 = [MEMORY[0x1E69708B8] proxyForObjects:MEMORY[0x1E695E0F0] protocol:&unk_1F45B0B78];
    eventObserver = v7->_eventObserver;
    v7->_eventObserver = v14;

    [(MPCPlaybackEngine *)v7 _initializePlaybackStack];
    [(MPCPlaybackEngine *)v7 _setupNotifications];
    v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = v7;
      _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "Created new playback engine: %{public}@", buf, 0xCu);
    }
  }

  return v7;
}

- (MPCPlaybackEngine)initWithPlayerID:(id)d eventStreamConsumers:(id)consumers
{
  consumersCopy = consumers;
  dCopy = d;
  v8 = [[_MPCPlaybackEnginePlayerIDInitializationParameters alloc] initWithPlayerID:dCopy eventStreamConsumers:consumersCopy];

  v9 = [(MPCPlaybackEngine *)self initWithParameters:v8];
  return v9;
}

+ (void)initialize
{
  if (MSVDeviceIsAudioAccessory() && (+[MPCPlaybackEngine isSystemMusic](MPCPlaybackEngine, "isSystemMusic") || +[MPCPlaybackEngine isSystemPodcasts](MPCPlaybackEngine, "isSystemPodcasts")) || +[MPCPlaybackEngine isRemotePlayerService])
  {
    mEMORY[0x1E696AF18] = [MEMORY[0x1E696AF18] sharedURLCache];
    [mEMORY[0x1E696AF18] setMemoryCapacity:0];
  }
}

@end