@interface _MPCPlaybackEnginePlayer
+ (id)describePlayer:(id)player;
- (AVPlayerViewController)playerViewController;
- (BOOL)_isAVKitSkipAction:(id)action;
- (BOOL)_itemConfigurationIsIncompatibleWithVocalAttenuationState:(id)state;
- (BOOL)isInPlaybackStartCriticalSection;
- (BOOL)isMuted;
- (BOOL)isUserSelectedItem:(id)item;
- (MPAVItem)currentItem;
- (MPCPlaybackEngine)playbackEngine;
- (NSDictionary)_stateDictionary;
- (_MPCPlaybackEnginePlayer)initWithPlaybackEngine:(id)engine;
- (double)_adjustPlayerTimeForAudioTapProcessing:(double)processing;
- (double)currentTime;
- (float)currentRate;
- (float)relativeVolume;
- (id)_MPAVItemForMFQueuePlayerItem:(id)item;
- (int64_t)state;
- (int64_t)stateBeforeInterruption;
- (void)_logTimeJumpForItem:(id)item fromTime:(double)time toTime:(double)toTime userInitiated:(BOOL)initiated timeStamp:(id)stamp;
- (void)_performSkipForUserAction:(id)action;
- (void)_playbackDidStopForItem:(id)item source:(id)source reason:(id)reason time:(double)time;
- (void)_setupPlaybackStackWithPlaybackEngine:(id)engine;
- (void)_updateActiveFormatForQueueItem:(id)item;
- (void)assetLoadingDidCompleteForItem:(id)item error:(id)error;
- (void)assetLoadingDidStartForItem:(id)item;
- (void)becomeActiveWithCompletion:(id)completion;
- (void)currentItemWillChangeFromItem:(id)item toItem:(id)toItem source:(int64_t)source timeStamp:(id)stamp;
- (void)deactivateAudioSessionIfIdle:(int64_t)idle;
- (void)dealloc;
- (void)didPerformPlayerOperationWithPlayerIdentifier:(id)identifier items:(id)items operation:(id)operation;
- (void)didReachEndOfQueueWithReason:(id)reason;
- (void)didReportSignpostWithType:(int64_t)type;
- (void)donateMetricsForTransitionWillStartFrom:(id)from to:(id)to transitionProvided:(int64_t)provided;
- (void)donateMetricsToPlayerItem:(id)item;
- (void)effectiveRateDidChangeTo:(float)to forItem:(id)item timeStamp:(id)stamp;
- (void)endPlaybackStartCriticalSection;
- (void)endScanningWithIdentifier:(id)identifier completion:(id)completion;
- (void)engine:(id)engine didChangeQueueController:(id)controller;
- (void)engine:(id)engine didChangeQueueWithReason:(id)reason;
- (void)engine:(id)engine willRemoveQueueController:(id)controller;
- (void)errorResolutionDidEndForItem:(id)item error:(id)error resolution:(int64_t)resolution;
- (void)errorResolutionDidStartForItem:(id)item error:(id)error;
- (void)extendLifetimeUntilFirstAudioFrame:(id)frame isSiriSetQueue:(BOOL)queue;
- (void)finalizeSetQueue:(id)queue completion:(id)completion;
- (void)finalizeStateRestoreWithCompletion:(id)completion;
- (void)firstFrameWillRenderForItem:(id)item timeStamp:(id)stamp;
- (void)firstVideoFrameWasRenderedForItem:(id)item timeStamp:(id)stamp;
- (void)interruptionDidBeginWithInterruptor:(id)interruptor timeStamp:(id)stamp;
- (void)interruptionDidFinishForInterruptor:(id)interruptor shouldResume:(BOOL)resume timeStamp:(id)stamp;
- (void)isMutedDidChangeTo:(BOOL)to timeStamp:(id)stamp;
- (void)itemDidBecomeCurrent:(id)current source:(int64_t)source timeStamp:(id)stamp;
- (void)itemDidFailToLoad:(id)load silently:(BOOL)silently error:(id)error timeStamp:(id)stamp;
- (void)itemDidFailToPlayToEnd:(id)end error:(id)error timeStamp:(id)stamp;
- (void)itemDidPlayToEnd:(id)end timeStamp:(id)stamp;
- (void)itemDidResignCurrent:(id)current source:(int64_t)source timeStamp:(id)stamp;
- (void)itemIsReadyForMetrics:(id)metrics accessLog:(id)log;
- (void)itemIsReadyToPlay:(id)play timeStamp:(id)stamp;
- (void)jumpToTime:(double)time identifier:(id)identifier completion:(id)completion;
- (void)mediaServicesInterruptionDidBeginWithItemAtDeath:(id)death timeAtDeath:(double)atDeath timeStamp:(id)stamp;
- (void)mediaServicesInterruptionDidEndWithTimeStamp:(id)stamp;
- (void)mediaServicesPurgeDidOccurWithTimeStamp:(id)stamp;
- (void)overlappedPlaybackDidEndFrom:(id)from to:(id)to transitionTime:(id)time transitionType:(int64_t)type timeStamp:(id)stamp;
- (void)overlappedPlaybackWillBeginFrom:(id)from to:(id)to transitionTime:(id)time transitionType:(int64_t)type timeStamp:(id)stamp;
- (void)overlappingTransitionDidReachPivotPointFrom:(id)from to:(id)to transitionTime:(id)time incomingItemAveragePostPivotTransitionRate:(double)rate transitionType:(int64_t)type timeStamp:(id)stamp;
- (void)pauseForLeasePreventionWithIdentifier:(id)identifier completion:(id)completion;
- (void)pauseForSleepTimerWithFadeout:(double)fadeout identifier:(id)identifier completion:(id)completion;
- (void)pauseWithFadeout:(double)fadeout identifier:(id)identifier completion:(id)completion;
- (void)pauseWithIdentifier:(id)identifier completion:(id)completion;
- (void)performWhenMediaServicesAreAvailable:(id)available identifier:(id)identifier;
- (void)pickBestDeviceRoute;
- (void)playWithRate:(float)rate identifier:(id)identifier completion:(id)completion;
- (void)playbackBufferStateDidChangeToState:(int64_t)state forItem:(id)item timeStamp:(id)stamp;
- (void)playbackDidReachQueueEndWithTimeStamp:(id)stamp;
- (void)playbackDidStartForItem:(id)item rate:(float)rate expectedStartTime:(double)time fromStalling:(BOOL)stalling timeStamp:(id)stamp;
- (void)playbackDidStopForItem:(id)item source:(id)source reason:(id)reason timeStamp:(id)stamp;
- (void)playbackIsBlockedOnNonPlayableItem:(id)item;
- (void)playbackIsLikelyToKeepUp:(BOOL)up forItem:(id)item timeStamp:(id)stamp;
- (void)playbackRateDidChangeNotifiedForItem:(id)item newRate:(float)rate reason:(id)reason participantIdentifier:(id)identifier timeStamp:(id)stamp;
- (void)playbackRateDidChangeToRate:(float)rate forItem:(id)item timeStamp:(id)stamp;
- (void)playbackTimeDidChangeTo:(double)to forItem:(id)item reason:(int64_t)reason timeStamp:(id)stamp;
- (void)playbackWaitingToPlayForItem:(id)item reason:(id)reason timeStamp:(id)stamp;
- (void)prepareToPlayWithIdentifier:(id)identifier isRequestingImmediatePlayback:(BOOL)playback;
- (void)relativeVolumeDidChangeTo:(float)to timeStamp:(id)stamp;
- (void)renderingModeDidChange:(int64_t)change timeStamp:(id)stamp;
- (void)routeDidChange:(BOOL)change metadata:(id)metadata timeStamp:(id)stamp;
- (void)screenRecordingDidChange:(BOOL)change timeStamp:(id)stamp;
- (void)setApplicationMusicPlayerTransitionType:(int64_t)type withDuration:(double)duration;
- (void)setIsMuted:(BOOL)muted;
- (void)setRate:(float)rate identifier:(id)identifier completion:(id)completion;
- (void)setRelativeVolume:(float)volume;
- (void)setupPlaybackStackIfNeeded;
- (void)smartTransitionDidEndFrom:(id)from to:(id)to transitionTime:(id)time timeStamp:(id)stamp;
- (void)smartTransitionWillBeginFrom:(id)from to:(id)to transitionTime:(id)time outgoingItemAveragePrePivotTransitionRate:(double)rate timeStamp:(id)stamp parameters:(id)parameters;
- (void)stackControllerDidCancelTransitionFrom:(id)from to:(id)to type:(int64_t)type reason:(id)reason;
- (void)stackControllerDidCreateTransitionFrom:(id)from to:(id)to type:(int64_t)type parameters:(id)parameters;
- (void)stateDidChangeFromState:(int64_t)state toState:(int64_t)toState timeStamp:(id)stamp;
- (void)timeControlStatusDidChange:(int64_t)change waitingReason:(id)reason timeStamp:(id)stamp;
- (void)togglePlaybackWithIdentifier:(id)identifier completion:(id)completion;
- (void)tracksDidChangeForItem:(id)item timeStamp:(id)stamp;
- (void)updateAudioSession;
- (void)updateAudioSessionSpeechDetection;
- (void)userActionDidBegin:(id)begin;
- (void)userActionDidEnd:(id)end error:(id)error;
- (void)userSeekCompletedForItem:(id)item fromTime:(double)time toTime:(double)toTime timeStamp:(id)stamp;
- (void)willPerformPlayerOperationWithPlayerIdentifier:(id)identifier operation:(id)operation reason:(id)reason;
@end

@implementation _MPCPlaybackEnginePlayer

- (AVPlayerViewController)playerViewController
{
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  videoViewController = [playbackStackController videoViewController];

  return videoViewController;
}

- (MPAVItem)currentItem
{
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  currentQueueItem = [playbackStackController currentQueueItem];
  v5 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:currentQueueItem];

  return v5;
}

- (MPCPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (void)performWhenMediaServicesAreAvailable:(id)available identifier:(id)identifier
{
  v26 = *MEMORY[0x1E69E9840];
  availableCopy = available;
  identifierCopy = identifier;
  [(_MPCPlaybackEnginePlayer *)self setupPlaybackStackIfNeeded];
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (!playbackStackController)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCPlaybackEnginePlayer.m" lineNumber:2622 description:@"PlaybackStackController setup failed"];
  }

  playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  mediaServicesAvailable = [playbackStackController2 mediaServicesAvailable];

  if (mediaServicesAvailable)
  {
    availableCopy[2](availableCopy);
  }

  else
  {
    playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
    engineID = [playbackEngine engineID];
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543874;
      v21 = engineID;
      v22 = 2048;
      selfCopy = self;
      v24 = 2114;
      v25 = identifierCopy;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlaybackEngineImplementation: %p - Deferring %{public}@ waiting for Media Services availability", &v20, 0x20u);
    }

    mediaServicesWaitingBlocks = self->_mediaServicesWaitingBlocks;
    if (!mediaServicesWaitingBlocks)
    {
      v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
      v17 = self->_mediaServicesWaitingBlocks;
      self->_mediaServicesWaitingBlocks = v16;

      mediaServicesWaitingBlocks = self->_mediaServicesWaitingBlocks;
    }

    v18 = _Block_copy(availableCopy);
    [(NSMutableArray *)mediaServicesWaitingBlocks addObject:v18];
  }
}

- (BOOL)isUserSelectedItem:(id)item
{
  if (!item)
  {
    return 0;
  }

  itemCopy = item;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  queueController = [playbackEngine queueController];
  contentItemID = [itemCopy contentItemID];

  LOBYTE(itemCopy) = [queueController isUserSelectedContentItemID:contentItemID];
  return itemCopy;
}

- (void)pickBestDeviceRoute
{
  externalPlaybackController = [(_MPCPlaybackEnginePlayer *)self externalPlaybackController];
  [externalPlaybackController pickBestDeviceRoute];
}

- (void)donateMetricsForTransitionWillStartFrom:(id)from to:(id)to transitionProvided:(int64_t)provided
{
  fromCopy = from;
  toCopy = to;
  v7 = toCopy;
  v8 = fromCopy;
  msv_dispatch_on_main_queue();
}

- (void)donateMetricsToPlayerItem:(id)item
{
  itemCopy = item;
  aVPlayerItemPerformanceMetrics = [itemCopy AVPlayerItemPerformanceMetrics];
  v5 = [aVPlayerItemPerformanceMetrics objectForKeyedSubscript:@"reportingIdentifier"];

  v8 = itemCopy;
  v6 = itemCopy;
  v7 = v5;
  msv_dispatch_on_main_queue();
}

- (void)endPlaybackStartCriticalSection
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  criticalSectionAssertions = [(_MPCPlaybackEnginePlayer *)self criticalSectionAssertions];
  [criticalSectionAssertions removeAllObjects];
}

- (BOOL)isInPlaybackStartCriticalSection
{
  criticalSectionAssertions = [(_MPCPlaybackEnginePlayer *)self criticalSectionAssertions];
  v3 = [criticalSectionAssertions count] != 0;

  return v3;
}

- (void)extendLifetimeUntilFirstAudioFrame:(id)frame isSiriSetQueue:(BOOL)queue
{
  frameCopy = frame;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  if (frameCopy)
  {
    if (playbackEngine)
    {
      playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
      currentItem = [playbackStackController currentItem];

      if (currentItem)
      {
        playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
        [playbackStackController2 effectiveRate];
        v11 = v10;

        if (v11 <= 0.0)
        {
          if (queue || (-[_MPCPlaybackEnginePlayer playbackStackController](self, "playbackStackController"), v12 = objc_claimAutoreleasedReturnValue(), [v12 rate], v14 = v13, v12, v14 != 0.0))
          {
            criticalSectionAssertions = [(_MPCPlaybackEnginePlayer *)self criticalSectionAssertions];

            if (criticalSectionAssertions)
            {
              criticalSectionAssertions2 = [(_MPCPlaybackEnginePlayer *)self criticalSectionAssertions];
              [criticalSectionAssertions2 addObject:frameCopy];
            }

            else
            {
              criticalSectionAssertions2 = [MEMORY[0x1E695DF70] arrayWithObject:frameCopy];
              [(_MPCPlaybackEnginePlayer *)self setCriticalSectionAssertions:criticalSectionAssertions2];
            }
          }
        }
      }
    }
  }
}

- (void)assetLoadingDidStartForItem:(id)item
{
  v21 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v5 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:itemCopy];
  queueSectionID = [v5 queueSectionID];
  queueItemID = [v5 queueItemID];
  if (![queueSectionID length])
  {
    playbackEngine = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(playbackEngine, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    *buf = 138543618;
    v18 = itemCopy;
    v19 = 2114;
    v20 = queueSectionID;
    v14 = "Unexpected assetLoadingDidStartForItem: without sectionID: %{public}@ %{public}@";
LABEL_8:
    _os_log_impl(&dword_1C5C61000, playbackEngine, OS_LOG_TYPE_FAULT, v14, buf, 0x16u);
    goto LABEL_9;
  }

  if (![queueItemID length])
  {
    playbackEngine = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(playbackEngine, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    *buf = 138543618;
    v18 = itemCopy;
    v19 = 2114;
    v20 = queueItemID;
    v14 = "Unexpected assetLoadingDidStartForItem: without itemID: %{public}@ %{public}@";
    goto LABEL_8;
  }

  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  eventStream = [playbackEngine eventStream];
  v10 = MEMORY[0x1E696AD98];
  v11 = [(_MPCPlaybackEnginePlayer *)self playbackStackController:@"queue-section-id"];
  v12 = [v10 numberWithInteger:{objc_msgSend(v11, "timeControlStatus")}];
  v16[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:3];
  [eventStream emitEventType:@"asset-load-begin" payload:v13];

LABEL_9:
}

- (void)assetLoadingDidCompleteForItem:(id)item error:(id)error
{
  v82 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  errorCopy = error;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  v10 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:itemCopy];
  queueSectionID = [v10 queueSectionID];
  queueItemID = [v10 queueItemID];
  if (![(_MPCPlaybackEnginePlayer *)queueSectionID length])
  {
    eventStream = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(eventStream, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_50;
    }

    *buf = 138543618;
    v77 = itemCopy;
    v78 = 2114;
    selfCopy = queueSectionID;
    v25 = "Unexpected assetLoadingDidCompleteForItem: without sectionID: %{public}@ %{public}@";
LABEL_19:
    _os_log_impl(&dword_1C5C61000, eventStream, OS_LOG_TYPE_FAULT, v25, buf, 0x16u);
    goto LABEL_50;
  }

  if (![(_MPCPlaybackEnginePlayer *)queueItemID length])
  {
    eventStream = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(eventStream, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_50;
    }

    *buf = 138543618;
    v77 = itemCopy;
    v78 = 2114;
    selfCopy = queueItemID;
    v25 = "Unexpected assetLoadingDidCompleteForItem: without itemID: %{public}@ %{public}@";
    goto LABEL_19;
  }

  v68 = engineID;
  v69 = queueItemID;
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  currentQueueItem = [playbackStackController currentQueueItem];

  if (v10 == currentQueueItem && [playbackEngine isVocalAttenuationEnabled] && -[_MPCPlaybackEnginePlayer _itemConfigurationIsIncompatibleWithVocalAttenuationState:](self, "_itemConfigurationIsIncompatibleWithVocalAttenuationState:", v10))
  {
    v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v77 = v68;
      v78 = 2114;
      selfCopy = self;
      v80 = 2114;
      v81 = v10;
      _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - [AP] - Asset loading did finish - Unable to stream asset in vocal attenuation mode [turning off VA] - QueueItem: %{public}@", buf, 0x20u);
    }

    vocalAttenuationController = [playbackEngine vocalAttenuationController];
    [(MPCWhiskyController *)vocalAttenuationController setEnabled:?];
  }

  if (errorCopy)
  {
    v66 = playbackEngine;
    eventStream = [playbackEngine eventStream];
    v74[0] = @"queue-section-id";
    v74[1] = @"queue-item-id";
    v75[0] = queueSectionID;
    v75[1] = v69;
    v74[2] = @"rtc-service-id";
    rtcReportingServiceIdentifier = [v10 rtcReportingServiceIdentifier];
    null = rtcReportingServiceIdentifier;
    if (!rtcReportingServiceIdentifier)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v75[2] = null;
    v75[3] = errorCopy;
    v20 = errorCopy;
    v74[3] = @"asset-load-error";
    v74[4] = @"time-control-status";
    v21 = MEMORY[0x1E696AD98];
    playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v23 = [v21 numberWithInteger:{objc_msgSend(playbackStackController2, "timeControlStatus")}];
    v75[4] = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:5];
    [eventStream emitEventType:@"asset-load-end" payload:v24];

    if (!rtcReportingServiceIdentifier)
    {
    }

    errorCopy = v20;
    playbackEngine = v66;
    engineID = v68;
    queueItemID = v69;
  }

  else
  {
    translator = [(_MPCPlaybackEnginePlayer *)self translator];
    [translator setMPAVItem:v10 forMFPlayerItem:itemCopy];

    eventStream = [v10 modelGenericObject];
    anyObject = [eventStream anyObject];
    identifiers = [anyObject identifiers];

    modelPlayEvent = [v10 modelPlayEvent];
    genericObjectRepresentation = [modelPlayEvent genericObjectRepresentation];
    anyObject2 = [genericObjectRepresentation anyObject];
    identifiers2 = [anyObject2 identifiers];

    if ([eventStream type]== 1)
    {
      song = [eventStream song];
      isArtistUploadedContent = [song isArtistUploadedContent];
    }

    else
    {
      isArtistUploadedContent = 0;
    }

    eventStream2 = [playbackEngine eventStream];
    v72[0] = @"queue-section-id";
    v72[1] = @"queue-item-id";
    v73[0] = queueSectionID;
    v73[1] = v69;
    v72[2] = @"rtc-service-id";
    rtcReportingServiceIdentifier2 = [v10 rtcReportingServiceIdentifier];
    v61 = rtcReportingServiceIdentifier2;
    if (!rtcReportingServiceIdentifier2)
    {
      rtcReportingServiceIdentifier2 = [MEMORY[0x1E695DFB0] null];
    }

    v53 = rtcReportingServiceIdentifier2;
    v73[2] = rtcReportingServiceIdentifier2;
    v72[3] = @"item-ids";
    null2 = identifiers;
    if (!identifiers)
    {
      null2 = [MEMORY[0x1E695DFB0] null];
    }

    v52 = null2;
    v73[3] = null2;
    v72[4] = @"item-kind";
    modelKind = [identifiers modelKind];
    v63 = modelKind;
    if (!modelKind)
    {
      modelKind = [MEMORY[0x1E695DFB0] null];
    }

    v51 = modelKind;
    v73[4] = modelKind;
    v72[5] = @"item-metadata";
    v70[0] = @"item-has-video";
    v60 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "isVideoContent")}];
    v71[0] = v60;
    v70[1] = @"item-duration";
    [v10 durationFromExternalMetadata];
    v36 = MEMORY[0x1E696AD98];
    [v10 durationFromExternalMetadata];
    v59 = [v36 numberWithDouble:?];
    v71[1] = v59;
    v70[2] = @"item-initial-position";
    initialPlaybackStartTime = [v10 initialPlaybackStartTime];
    v38 = &unk_1F45993E8;
    v58 = initialPlaybackStartTime;
    if (initialPlaybackStartTime)
    {
      v38 = initialPlaybackStartTime;
    }

    v71[2] = v38;
    v70[3] = @"item-artist-uploaded";
    v57 = [MEMORY[0x1E696AD98] numberWithBool:isArtistUploadedContent];
    v71[3] = v57;
    v70[4] = @"item-is-start-item";
    [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "isStartItem")}];
    v56 = v70[5] = @"item-is-placeholder";
    v71[4] = v56;
    v71[5] = MEMORY[0x1E695E110];
    v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:6];
    v73[5] = v55;
    v72[6] = @"container-ids";
    null3 = identifiers2;
    if (!identifiers2)
    {
      null3 = [MEMORY[0x1E695DFB0] null];
    }

    v62 = itemCopy;
    v50 = null3;
    v73[6] = null3;
    v72[7] = @"container-kind";
    modelKind2 = [identifiers2 modelKind];
    v41 = modelKind2;
    if (!modelKind2)
    {
      modelKind2 = [MEMORY[0x1E695DFB0] null];
    }

    v49 = modelKind2;
    v73[7] = modelKind2;
    v72[8] = @"time-control-status";
    v42 = MEMORY[0x1E696AD98];
    playbackStackController3 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v43 = [v42 numberWithInteger:{objc_msgSend(playbackStackController3, "timeControlStatus")}];
    v73[8] = v43;
    v72[9] = @"player-item-reporting-id";
    avPlayerItem = [v10 avPlayerItem];
    mpc_reportingIdentifier = [avPlayerItem mpc_reportingIdentifier];
    null4 = mpc_reportingIdentifier;
    if (!mpc_reportingIdentifier)
    {
      null4 = [MEMORY[0x1E695DFB0] null];
    }

    v73[9] = null4;
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:10];
    [eventStream2 emitEventType:@"asset-load-end" payload:v47];

    if (!mpc_reportingIdentifier)
    {
    }

    if (!v41)
    {
    }

    errorCopy = 0;
    itemCopy = v62;
    engineID = v68;
    queueItemID = v69;
    if (!identifiers2)
    {
    }

    v48 = v63;
    if (!v63)
    {

      v48 = 0;
    }

    if (!identifiers)
    {
    }

    if (!v61)
    {
    }
  }

LABEL_50:
}

- (void)renderingModeDidChange:(int64_t)change timeStamp:(id)stamp
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = [(_MPCPlaybackEnginePlayer *)self playbackEngine:change];
  engineID = [v6 engineID];
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v16 = engineID;
    v17 = 2114;
    selfCopy = self;
    v19 = 2048;
    changeCopy = change;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - renderingModeDidChange:%ld", buf, 0x20u);
  }

  currentItem = [(_MPCPlaybackEnginePlayer *)self currentItem];
  if ([currentItem isAssetLoaded])
  {
    [(_MPCPlaybackEnginePlayer *)self _updateActiveFormatForQueueItem:currentItem];
  }

  eventStream = [v6 eventStream];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{change, @"audio-rendering-mode"}];
  v14 = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [eventStream emitEventType:@"audio-rendering-mode-changed" payload:v12];
}

- (void)itemIsReadyForMetrics:(id)metrics accessLog:(id)log
{
  v69 = *MEMORY[0x1E69E9840];
  metricsCopy = metrics;
  logCopy = log;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v50 = logCopy;
  events = [logCopy events];
  v8 = [events countByEnumeratingWithState:&v54 objects:v68 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v55;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v55 != v10)
        {
          objc_enumerationMutation(events);
        }

        v12 = *(*(&v54 + 1) + 8 * i);
        performanceMetrics = [v12 performanceMetrics];

        if (performanceMetrics)
        {
          performanceMetrics2 = [v12 performanceMetrics];
          [dictionary addEntriesFromDictionary:performanceMetrics2];
        }

        [v12 observedBitrate];
        if (v15 > 0.0)
        {
          v16 = MEMORY[0x1E696AD98];
          [v12 observedBitrate];
          v17 = [v16 numberWithDouble:?];
          [dictionary setObject:v17 forKeyedSubscript:@"observedBitrate"];
        }

        [v12 indicatedBitrate];
        if (v18 > 0.0)
        {
          v19 = MEMORY[0x1E696AD98];
          [v12 indicatedBitrate];
          v20 = [v19 numberWithDouble:?];
          [dictionary setObject:v20 forKeyedSubscript:@"indicatedBitrate"];
        }

        [v12 startupTime];
        if (v21 > 0.0)
        {
          v22 = MEMORY[0x1E696AD98];
          [v12 startupTime];
          v23 = [v22 numberWithDouble:?];
          [dictionary setObject:v23 forKeyedSubscript:@"startupTime"];
        }

        [v12 segmentsDownloadedDuration];
        if (v24 > 0.0)
        {
          v25 = MEMORY[0x1E696AD98];
          [v12 segmentsDownloadedDuration];
          v26 = [v25 numberWithDouble:?];
          [dictionary setObject:v26 forKeyedSubscript:@"segmentsDownloadedDuration"];
        }

        if ([v12 numberOfBytesTransferred] >= 1)
        {
          v27 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v12, "numberOfBytesTransferred")}];
          [dictionary setObject:v27 forKeyedSubscript:@"numberOfBytesTransferred"];
        }

        playbackSessionID = [v12 playbackSessionID];

        if (playbackSessionID)
        {
          playbackSessionID2 = [v12 playbackSessionID];
          [dictionary setObject:playbackSessionID2 forKeyedSubscript:@"playbackSessionID"];
        }
      }

      v9 = [events countByEnumeratingWithState:&v54 objects:v68 count:16];
    }

    while (v9);
  }

  avPlayerItem = [metricsCopy avPlayerItem];
  mpc_loggingIdentifier = [avPlayerItem mpc_loggingIdentifier];
  [dictionary setObject:mpc_loggingIdentifier forKeyedSubscript:@"identifier"];

  avPlayerItem2 = [metricsCopy avPlayerItem];
  mpc_reportingIdentifier = [avPlayerItem2 mpc_reportingIdentifier];
  [dictionary setObject:mpc_reportingIdentifier forKeyedSubscript:@"reportingIdentifier"];

  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  v36 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:metricsCopy];
  queueSectionID = [v36 queueSectionID];
  queueItemID = [v36 queueItemID];
  v53 = 0;
  v38 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionary options:0 error:&v53];
  v39 = v53;
  v47 = engineID;
  if (v39)
  {
    v40 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v61 = engineID;
      v62 = 2048;
      selfCopy = self;
      v64 = 2114;
      v65 = v39;
      v66 = 2114;
      v67 = dictionary;
      _os_log_impl(&dword_1C5C61000, v40, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlaybackEngineImplementation: %p - performanceMetricsPostedForItem received bad metrics - error: %{public}@ - metrics: %{public}@", buf, 0x2Au);
    }

    v41 = v38;

    v42 = 0;
  }

  else
  {
    v41 = v38;
    v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v38 encoding:{4, engineID}];
  }

  eventStream = [playbackEngine eventStream];
  v58[0] = @"queue-section-id";
  v58[1] = @"queue-item-id";
  v44 = queueSectionID;
  v59[0] = queueSectionID;
  v59[1] = queueItemID;
  v58[2] = @"av-player-item-performance-metrics";
  null = v42;
  if (!v42)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v59[2] = null;
  v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:3];
  [eventStream emitEventType:@"item-ready-for-metrics" payload:v46];

  if (!v42)
  {
  }
}

- (void)didPerformPlayerOperationWithPlayerIdentifier:(id)identifier items:(id)items operation:(id)operation
{
  v16[3] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  itemsCopy = items;
  operationCopy = operation;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  eventStream = [playbackEngine eventStream];
  v15[0] = @"player-identifier";
  v15[1] = @"player-operation";
  v16[0] = identifierCopy;
  v16[1] = operationCopy;
  v15[2] = @"player-items";
  null = itemsCopy;
  if (!itemsCopy)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = null;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  [eventStream emitEventType:@"player-operation-end" payload:v14];

  if (!itemsCopy)
  {
  }
}

- (void)willPerformPlayerOperationWithPlayerIdentifier:(id)identifier operation:(id)operation reason:(id)reason
{
  v15[3] = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  operationCopy = operation;
  identifierCopy = identifier;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  eventStream = [playbackEngine eventStream];
  v14[0] = @"player-identifier";
  v14[1] = @"player-operation";
  v15[0] = identifierCopy;
  v15[1] = operationCopy;
  v14[2] = @"player-operation-reason";
  v15[2] = reasonCopy;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  [eventStream emitEventType:@"player-operation-begin" payload:v13];
}

- (void)stackControllerDidCancelTransitionFrom:(id)from to:(id)to type:(int64_t)type reason:(id)reason
{
  v26[6] = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  toCopy = to;
  v12 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:from];
  v13 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:toCopy];

  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  if ([v12 isInOverlappedTransition])
  {
    [v12 _willBeRemovedFromPlayer];
  }

  [v12 setInOverlappedTransition:0];
  [v13 setInOverlappedTransition:0];
  [v12 setInSmartTransition:0];
  [v13 setInSmartTransition:0];
  eventStream = [playbackEngine eventStream];
  v25[0] = @"outgoing-item-section-id";
  queueSectionID = [v12 queueSectionID];
  v26[0] = queueSectionID;
  v25[1] = @"outgoing-item-id";
  queueItemID = [v12 queueItemID];
  v26[1] = queueItemID;
  v25[2] = @"incoming-item-section-id";
  queueSectionID2 = [v13 queueSectionID];
  v26[2] = queueSectionID2;
  v25[3] = @"incoming-item-id";
  queueItemID2 = [v13 queueItemID];
  v26[3] = queueItemID2;
  v25[4] = @"transition-type";
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v25[5] = @"transition-cancellation-reason";
  v26[4] = v20;
  v26[5] = reasonCopy;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:6];
  v22 = reasonCopy;
  v23 = playbackEngine;
  v24 = v21;

  [eventStream emitEventType:@"item-transition-cancelled" payload:v24];
}

- (void)stackControllerDidCreateTransitionFrom:(id)from to:(id)to type:(int64_t)type parameters:(id)parameters
{
  v27[7] = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  toCopy = to;
  v11 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:from];
  v12 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:toCopy];

  v13 = [parametersCopy objectForKeyedSubscript:@"transitionProvided"];
  integerValue = [v13 integerValue];

  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  eventStream = [playbackEngine eventStream];
  v26[0] = @"outgoing-item-section-id";
  v24 = v11;
  queueSectionID = [v11 queueSectionID];
  v27[0] = queueSectionID;
  v26[1] = @"outgoing-item-id";
  queueItemID = [v11 queueItemID];
  v27[1] = queueItemID;
  v26[2] = @"incoming-item-section-id";
  queueSectionID2 = [v12 queueSectionID];
  v27[2] = queueSectionID2;
  v26[3] = @"incoming-item-id";
  queueItemID2 = [v12 queueItemID];
  v27[3] = queueItemID2;
  v26[4] = @"transition-type";
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v27[4] = v20;
  v26[5] = @"transition-provided";
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
  v26[6] = @"transition-parameters";
  v27[5] = v21;
  v27[6] = parametersCopy;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:7];

  [eventStream emitEventType:@"item-transition-created" payload:v22];
}

- (void)errorResolutionDidEndForItem:(id)item error:(id)error resolution:(int64_t)resolution
{
  v24 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  errorCopy = error;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MFDescription forErrorResolution:resolution];
    v14 = 138544386;
    v15 = engineID;
    v16 = 2114;
    selfCopy = self;
    v18 = 2114;
    v19 = itemCopy;
    v20 = 2114;
    v21 = errorCopy;
    v22 = 2114;
    v23 = v13;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - errorResolutionDidEndForItem: - item=%{public}@ - error:%{public}@ - resolution:%{public}@", &v14, 0x34u);
  }
}

- (void)errorResolutionDidStartForItem:(id)item error:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  errorCopy = error;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138544130;
    v12 = engineID;
    v13 = 2114;
    selfCopy = self;
    v15 = 2114;
    v16 = itemCopy;
    v17 = 2114;
    v18 = errorCopy;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - errorResolutionDidStartForItem: - item=%{public}@ - error:%{public}@", &v11, 0x2Au);
  }
}

- (void)didReportSignpostWithType:(int64_t)type
{
  if (type == 1)
  {
    playbackStartTrace = [(_MPCPlaybackEnginePlayer *)self playbackStartTrace];
    [playbackStartTrace endInterval];

    [(_MPCPlaybackEnginePlayer *)self setPlaybackStartTrace:0];
  }

  else if (!type)
  {
    currentItem = [(_MPCPlaybackEnginePlayer *)self currentItem];
    v4 = [MPCAVItemTrace traceIntervalWithName:@"MPTRACE_PLAYBACK_PLAYBACKSTART" item:currentItem beginEvent:731643908 endEvent:731643912];
    [(_MPCPlaybackEnginePlayer *)self setPlaybackStartTrace:v4];
  }
}

- (void)isMutedDidChangeTo:(BOOL)to timeStamp:(id)stamp
{
  toCopy = to;
  v16 = *MEMORY[0x1E69E9840];
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:toCopy];
  [(_MPCPlaybackEnginePlayer *)self setCurrentIsMuted:v8];

  engineID = [playbackEngine engineID];
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544130;
    *(&time.value + 4) = engineID;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 1026;
    v13 = toCopy;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - isMutedDidChangeTo: - muted=%{public}d - timeStamp:%{public}@", &time, 0x26u);
  }
}

- (void)relativeVolumeDidChangeTo:(float)to timeStamp:(id)stamp
{
  v19 = *MEMORY[0x1E69E9840];
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  *&v8 = to;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(_MPCPlaybackEnginePlayer *)self setCurrentRelativeVolume:v9];

  *&v10 = to;
  [playbackEngine relativeVolumeDidUpdateToVolume:v10];
  engineID = [playbackEngine engineID];
  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    toCopy = to;
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544130;
    *(&time.value + 4) = engineID;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2050;
    v16 = toCopy;
    v17 = 2114;
    v18 = v14;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - relativeVolumeDidChangeTo: - volume=%{public}f - timeStamp:%{public}@", &time, 0x2Au);
  }
}

- (void)firstVideoFrameWasRenderedForItem:(id)item timeStamp:(id)stamp
{
  v39[3] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  v10 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:itemCopy];
  v11 = stampCopy;
  v12 = v11;
  if (v11)
  {
    [v11 hostTime];
    if ((v34 & 0x100000000) != 0)
    {
      [v12 hostTime];
      MPCPlaybackEngineEventMonotonicTimeWithHostTime(&v31, time);
      goto LABEL_6;
    }
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
  }

  MPCPlaybackEngineEventGetMonotonicTime(time);
LABEL_6:
  v31 = *time;
  v32 = *&time[16];
  [v12 userSecondsSinceReferenceDate];
  v14 = v13;

  [v12 time];
  v16 = v15;
  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    if (v12)
    {
      [v12 hostTime];
    }

    else
    {
      memset(time, 0, 24);
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(time)];
    *time = 138544130;
    *&time[4] = engineID;
    *&time[12] = 2114;
    *&time[14] = self;
    *&time[22] = 2114;
    *&time[24] = v10;
    LOWORD(v39[0]) = 2114;
    *(v39 + 2) = v18;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - firstVideoFrameWasRenderedForItem: - item=%{public}@ - timeStamp:%{public}@", time, 0x2Au);
  }

  queueSectionID = [v10 queueSectionID];
  queueItemID = [v10 queueItemID];
  if (![queueSectionID length])
  {
    playbackEngine2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(playbackEngine2, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    *time = 138543618;
    *&time[4] = itemCopy;
    *&time[12] = 2114;
    *&time[14] = queueSectionID;
    v28 = "Unexpected firstVideoFrameWasRenderedForItem: without sectionID: %{public}@ %{public}@";
LABEL_18:
    _os_log_impl(&dword_1C5C61000, playbackEngine2, OS_LOG_TYPE_FAULT, v28, time, 0x16u);
    goto LABEL_19;
  }

  if (![queueItemID length])
  {
    playbackEngine2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(playbackEngine2, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    *time = 138543618;
    *&time[4] = itemCopy;
    *&time[12] = 2114;
    *&time[14] = queueItemID;
    v28 = "Unexpected firstVideoFrameWasRenderedForItem: without itemID: %{public}@ %{public}@";
    goto LABEL_18;
  }

  playbackEngine2 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  [playbackEngine2 eventStream];
  v22 = v30 = itemCopy;
  v36[0] = @"queue-section-id";
  v36[1] = @"queue-item-id";
  v37[0] = queueSectionID;
  v37[1] = queueItemID;
  v36[2] = @"item-start-position";
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
  v37[2] = v23;
  v36[3] = @"time-control-status";
  v29 = engineID;
  v24 = MEMORY[0x1E696AD98];
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v26 = [v24 numberWithInteger:{objc_msgSend(playbackStackController, "timeControlStatus")}];
  v37[3] = v26;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:4];
  *time = v31;
  *&time[16] = v32;
  v39[0] = v14;
  [v22 emitEventType:@"item-first-video-frame" payload:v27 atTime:time];

  engineID = v29;
  itemCopy = v30;
LABEL_19:
}

- (void)playbackIsBlockedOnNonPlayableItem:(id)item
{
  v16 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543874;
    v11 = engineID;
    v12 = 2114;
    selfCopy = self;
    v14 = 2114;
    v15 = itemCopy;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - Playback stuck on non-playable item: %{public}@", &v10, 0x20u);
  }

  v8 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:itemCopy];
  queueController = [playbackEngine queueController];
  [queueController playerItemDidBecomeCurrent:v8];
}

- (void)mediaServicesPurgeDidOccurWithTimeStamp:(id)stamp
{
  v24 = *MEMORY[0x1E69E9840];
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138543874;
    *(&time.value + 4) = engineID;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v23 = v8;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - Media Services Resource Reclamation occurred - timeStamp:%{public}@", &time, 0x20u);
  }

  v19 = stampCopy;
  v9 = engineID;

  eventStream = [playbackEngine eventStream];
  v20[0] = @"session-id";
  queueController = [playbackEngine queueController];
  sessionID = [queueController sessionID];
  null = sessionID;
  if (!sessionID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20[1] = @"time-control-status";
  v21[0] = null;
  v14 = MEMORY[0x1E696AD98];
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v16 = [v14 numberWithInteger:{objc_msgSend(playbackStackController, "timeControlStatus")}];
  v21[1] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  [eventStream emitEventType:@"media-server-purge" payload:v17];

  if (!sessionID)
  {
  }

  eventObserver = [playbackEngine eventObserver];
  [eventObserver engineDidReceiveMediaServicesPurge:playbackEngine];

  [(_MPCPlaybackEnginePlayer *)self updateAudioSession];
}

- (void)mediaServicesInterruptionDidEndWithTimeStamp:(id)stamp
{
  v37 = *MEMORY[0x1E69E9840];
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138543874;
    *(&time.value + 4) = engineID;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v36 = v8;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - Media Services were restored - timeStamp:%{public}@", &time, 0x20u);
  }

  v27 = stampCopy;

  eventStream = [playbackEngine eventStream];
  v33[0] = @"session-id";
  queueController = [playbackEngine queueController];
  sessionID = [queueController sessionID];
  null = sessionID;
  if (!sessionID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v33[1] = @"time-control-status";
  v34[0] = null;
  v13 = MEMORY[0x1E696AD98];
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v15 = [v13 numberWithInteger:{objc_msgSend(playbackStackController, "timeControlStatus")}];
  v34[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
  [eventStream emitEventType:@"media-server-reset" payload:v16];

  if (!sessionID)
  {
  }

  eventObserver = [playbackEngine eventObserver];
  [eventObserver engineDidResetMediaServices:playbackEngine];

  [(_MPCPlaybackEnginePlayer *)self updateAudioSession];
  [(_MPCPlaybackEnginePlayer *)self updateAudioSessionSpeechDetection];
  if (self->_mediaServicesWaitingBlocks)
  {
    v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(NSMutableArray *)self->_mediaServicesWaitingBlocks count];
      LODWORD(time.value) = 138543874;
      *(&time.value + 4) = engineID;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = self;
      HIWORD(time.epoch) = 2048;
      v36 = v19;
      _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlaybackEngineImplementation: %p - Flushing %ld deferred blocks that waited for Media Services availability", &time, 0x20u);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v20 = self->_mediaServicesWaitingBlocks;
    v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v29;
      v24 = MEMORY[0x1E69E96A0];
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(v20);
          }

          dispatch_async(v24, *(*(&v28 + 1) + 8 * i));
        }

        v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v22);
    }

    mediaServicesWaitingBlocks = self->_mediaServicesWaitingBlocks;
    self->_mediaServicesWaitingBlocks = 0;
  }
}

- (void)mediaServicesInterruptionDidBeginWithItemAtDeath:(id)death timeAtDeath:(double)atDeath timeStamp:(id)stamp
{
  v35 = *MEMORY[0x1E69E9840];
  deathCopy = death;
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  v26 = stampCopy;
  if (deathCopy)
  {
    v12 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:deathCopy];
    stampCopy2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(stampCopy2, OS_LOG_TYPE_DEFAULT))
    {
      if (stampCopy)
      {
        [stampCopy hostTime];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      stampCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time), stampCopy];
      LODWORD(time.value) = 138544386;
      *(&time.value + 4) = engineID;
      LOWORD(time.flags) = 2114;
      *(&time.flags + 2) = self;
      HIWORD(time.epoch) = 2114;
      v30 = v12;
      v31 = 2048;
      atDeathCopy = atDeath;
      v33 = 2114;
      v34 = stampCopy;
      _os_log_impl(&dword_1C5C61000, stampCopy2, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - Media Services were interrupted - item:%{public}@ - time:%.3fs - timeStamp:%{public}@", &time, 0x34u);
    }
  }

  else
  {
    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    stampCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time), stampCopy];
    LODWORD(time.value) = 138543874;
    *(&time.value + 4) = engineID;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v30 = stampCopy2;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - Media Services were interrupted - no item at death - timeStamp:%{public}@", &time, 0x20u);
  }

LABEL_13:
  v15 = engineID;

  translator = [(_MPCPlaybackEnginePlayer *)self translator];
  [translator invalidateCache];

  eventStream = [playbackEngine eventStream];
  v27[0] = @"session-id";
  queueController = [playbackEngine queueController];
  sessionID = [queueController sessionID];
  null = sessionID;
  if (!sessionID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v27[1] = @"time-control-status";
  v28[0] = null;
  v21 = MEMORY[0x1E696AD98];
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v23 = [v21 numberWithInteger:{objc_msgSend(playbackStackController, "timeControlStatus")}];
  v28[1] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
  [eventStream emitEventType:@"media-server-died" payload:v24];

  if (!sessionID)
  {
  }

  eventObserver = [playbackEngine eventObserver];
  [eventObserver engineDidLoseMediaServices:playbackEngine];
}

- (void)userActionDidEnd:(id)end error:(id)error
{
  v20[3] = *MEMORY[0x1E69E9840];
  endCopy = end;
  errorCopy = error;
  if (![endCopy source] && !-[_MPCPlaybackEnginePlayer _isAVKitSkipAction:](self, "_isAVKitSkipAction:", endCopy))
  {
    successStatus = [MEMORY[0x1E69708F8] successStatus];
    if (errorCopy)
    {
      v9 = [MEMORY[0x1E69708F8] statusWithCode:200 error:errorCopy];

      successStatus = v9;
    }

    playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
    eventStream = [playbackEngine eventStream];
    v19[0] = @"remote-control-id";
    identifier = [endCopy identifier];
    v20[0] = identifier;
    v19[1] = @"remote-control-status";
    v18 = successStatus;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v20[1] = v13;
    v19[2] = @"time-control-status";
    v14 = MEMORY[0x1E696AD98];
    playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v16 = [v14 numberWithInteger:{objc_msgSend(playbackStackController, "timeControlStatus")}];
    v20[2] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
    [eventStream emitEventType:@"remote-control-end" payload:v17];
  }
}

- (void)userActionDidBegin:(id)begin
{
  v36[5] = *MEMORY[0x1E69E9840];
  beginCopy = begin;
  if (![beginCopy source])
  {
    if ([(_MPCPlaybackEnginePlayer *)self _isAVKitSkipAction:beginCopy])
    {
      [(_MPCPlaybackEnginePlayer *)self _performSkipForUserAction:beginCopy];
      goto LABEL_15;
    }

    type = [beginCopy type];
    if (type > 8)
    {
      v6 = 0xFFFFFFFFLL;
    }

    else
    {
      v6 = dword_1C60453D8[type];
    }

    v27 = 0.0;
    memset(v26, 0, sizeof(v26));
    MPCPlaybackEngineEventGetMonotonicTime(v26);
    playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    isModeShared = [playbackStackController isModeShared];

    if (!isModeShared)
    {
LABEL_14:
      playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
      eventStream = [playbackEngine eventStream];
      v35[0] = @"remote-control-id";
      identifier = [beginCopy identifier];
      v36[0] = identifier;
      v35[1] = @"remote-control-type";
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
      v36[1] = v18;
      v35[2] = @"remote-control-source";
      sourceID = [beginCopy sourceID];
      v36[2] = sourceID;
      v35[3] = @"remote-control-options";
      options = [beginCopy options];
      v36[3] = options;
      v35[4] = @"time-control-status";
      v21 = MEMORY[0x1E696AD98];
      playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
      v23 = [v21 numberWithInteger:{objc_msgSend(playbackStackController2, "timeControlStatus")}];
      v36[4] = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:5];
      v29 = v26[0];
      v30 = v26[1];
      v31 = v27;
      [eventStream emitEventType:@"remote-control-begin" payload:v24 atTime:&v29];

      goto LABEL_15;
    }

    timeStamp = [beginCopy timeStamp];
    v10 = timeStamp;
    if (timeStamp)
    {
      [timeStamp hostTime];
      if ((v33 & 0x100000000) != 0)
      {
        [v10 hostTime];
        MPCPlaybackEngineEventMonotonicTimeWithHostTime(&v28, &v29);
LABEL_13:
        v11 = v29;
        v12 = *(&v30 + 1);
        [v10 userSecondsSinceReferenceDate];
        v14 = v13;

        *&v26[0] = v11;
        *(v26 + 8) = vaddq_s64(v25, vdupq_n_s64(0xFFFFFFFFFFFFFFFBLL));
        *(&v26[1] + 1) = v12;
        v27 = v14 + -0.000000005;
        goto LABEL_14;
      }
    }

    else
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
    }

    MPCPlaybackEngineEventGetMonotonicTime(&v29);
    goto LABEL_13;
  }

LABEL_15:
}

- (void)didReachEndOfQueueWithReason:(id)reason
{
  v21[1] = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  eventObserver = [playbackEngine eventObserver];
  [eventObserver engine:playbackEngine didReachEndOfQueueWithReason:reasonCopy];

  eventStream = [playbackEngine eventStream];
  v20 = @"session-id";
  queueController = [playbackEngine queueController];
  sessionID = [queueController sessionID];
  null = sessionID;
  if (!sessionID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21[0] = null;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  [eventStream emitEventType:@"session-reset" payload:v12];

  if (!sessionID)
  {
  }

  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543874;
    v15 = engineID;
    v16 = 2114;
    selfCopy = self;
    v18 = 2114;
    v19 = reasonCopy;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - end of queue reached [%{public}@]", &v14, 0x20u);
  }
}

- (void)screenRecordingDidChange:(BOOL)change timeStamp:(id)stamp
{
  changeCopy = change;
  v16 = *MEMORY[0x1E69E9840];
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(time, 0, 24);
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(time)];
    *time = 138543874;
    *&time[4] = engineID;
    *&time[12] = 1024;
    *&time[14] = changeCopy;
    *&time[18] = 2114;
    *&time[20] = v10;
    _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@]-🚔 Enforcing policy due to screen recording. setMuted/setHidden: %{BOOL}u - timeStamp:%{public}@", time, 0x1Cu);
  }

  playbackEngine2 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  eventStream = [playbackEngine2 eventStream];
  v13 = eventStream;
  if (changeCopy)
  {
    v14 = @"policy-begin";
  }

  else
  {
    v14 = @"policy-end";
  }

  [eventStream emitEventType:v14 payload:MEMORY[0x1E695E0F8]];
}

- (void)tracksDidChangeForItem:(id)item timeStamp:(id)stamp
{
  v17 = *MEMORY[0x1E69E9840];
  stampCopy = stamp;
  itemCopy = item;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  v10 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:itemCopy];

  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544130;
    *(&time.value + 4) = engineID;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v14 = v10;
    v15 = 2114;
    v16 = v12;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - tracksDidChange: - item=%{public}@ - timeStamp:%{public}@", &time, 0x2Au);
  }

  [(_MPCPlaybackEnginePlayer *)self _updateActiveFormatForQueueItem:v10];
}

- (void)playbackIsLikelyToKeepUp:(BOOL)up forItem:(id)item timeStamp:(id)stamp
{
  upCopy = up;
  v55[3] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  v12 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:itemCopy];
  v13 = stampCopy;
  v14 = v13;
  if (v13)
  {
    [v13 hostTime];
    if ((v48 & 0x100000000) != 0)
    {
      [v14 hostTime];
      MPCPlaybackEngineEventMonotonicTimeWithHostTime(&v45, buf);
      goto LABEL_6;
    }
  }

  else
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
  }

  MPCPlaybackEngineEventGetMonotonicTime(buf);
LABEL_6:
  v45 = *buf;
  v46 = *&buf[16];
  [v14 userSecondsSinceReferenceDate];
  v16 = v15;

  [v14 time];
  v18 = v17;
  queueSectionID = [v12 queueSectionID];
  queueItemID = [v12 queueItemID];
  if (![queueSectionID length])
  {
    playbackEngine2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(playbackEngine2, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_29;
    }

    *buf = 138543618;
    *&buf[4] = itemCopy;
    *&buf[12] = 2114;
    *&buf[14] = queueSectionID;
    v25 = "Unexpected playbackIsLikelyToKeepUp:forItem: without sectionID: %{public}@ %{public}@";
LABEL_17:
    _os_log_impl(&dword_1C5C61000, playbackEngine2, OS_LOG_TYPE_FAULT, v25, buf, 0x16u);
    goto LABEL_29;
  }

  if (![queueItemID length])
  {
    playbackEngine2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(playbackEngine2, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_29;
    }

    *buf = 138543618;
    *&buf[4] = itemCopy;
    *&buf[12] = 2114;
    *&buf[14] = queueItemID;
    v25 = "Unexpected playbackIsLikelyToKeepUp:forItem: without itemID: %{public}@ %{public}@";
    goto LABEL_17;
  }

  v44 = engineID;
  playbackEngine2 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  queueController = [playbackEngine2 queueController];
  currentItem = [queueController currentItem];

  if (v12 == currentItem)
  {
    if (upCopy)
    {
      [MPCAVItemTrace traceWithName:@"MPTRACE_PLAYBACK_STREAM_LIKELYTOKEEPUP" item:v12 event:731643956];
      v24 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        if (v14)
        {
          [v14 hostTime];
        }

        else
        {
          memset(buf, 0, 24);
        }

        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(buf)];
        *buf = 138544130;
        *&buf[4] = v44;
        *&buf[12] = 2114;
        *&buf[14] = self;
        *&buf[22] = 2114;
        *&buf[24] = v12;
        LOWORD(v55[0]) = 2114;
        *(v55 + 2) = v27;
        _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - playbackIsLikelyToKeepUp: - Likely - item=%{public}@ - timeStamp:%{public}@", buf, 0x2Au);
      }

      eventObserver = [playbackEngine2 eventObserver];
      [eventObserver engine:playbackEngine2 didAchieveLikelyToKeepUpWithItem:v12];

      eventStream = [playbackEngine2 eventStream];
      v52[0] = @"queue-section-id";
      v52[1] = @"queue-item-id";
      v53[0] = queueSectionID;
      v53[1] = queueItemID;
      v52[2] = @"item-start-position";
      v43 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
      v53[2] = v43;
      v52[3] = @"time-control-status";
      v30 = MEMORY[0x1E696AD98];
      playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
      timeControlStatus = [playbackStackController timeControlStatus];
      v33 = v30;
      v34 = eventStream;
      v35 = [v33 numberWithInteger:timeControlStatus];
      v53[3] = v35;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:4];
      *buf = v45;
      *&buf[16] = v46;
      v55[0] = v16;
      v37 = @"item-buffer-ready";
    }

    else
    {
      [MPCAVItemTrace traceWithName:@"MPTRACE_PLAYBACK_STREAM_UNLIKELYTOKEEPUP" item:v12 event:731643960];
      v26 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        if (v14)
        {
          [v14 hostTime];
        }

        else
        {
          memset(buf, 0, 24);
        }

        v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(buf)];
        *buf = 138544130;
        *&buf[4] = v44;
        *&buf[12] = 2114;
        *&buf[14] = self;
        *&buf[22] = 2114;
        *&buf[24] = v12;
        LOWORD(v55[0]) = 2114;
        *(v55 + 2) = v38;
        _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - playbackIsLikelyToKeepUp: - Unlikely - item=%{public}@ - timeStamp:%{public}@", buf, 0x2Au);
      }

      eventStream2 = [playbackEngine2 eventStream];
      v50[0] = @"queue-section-id";
      v50[1] = @"queue-item-id";
      v51[0] = queueSectionID;
      v51[1] = queueItemID;
      v50[2] = @"item-end-position";
      v43 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
      v51[2] = v43;
      v50[3] = @"time-control-status";
      v40 = MEMORY[0x1E696AD98];
      playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
      timeControlStatus2 = [playbackStackController timeControlStatus];
      v42 = v40;
      v34 = eventStream2;
      v35 = [v42 numberWithInteger:timeControlStatus2];
      v51[3] = v35;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:4];
      *buf = v45;
      *&buf[16] = v46;
      v55[0] = v16;
      v37 = @"item-buffer-stall";
    }

    [v34 emitEventType:v37 payload:v36 atTime:buf];
  }

  engineID = v44;
LABEL_29:
}

- (void)playbackBufferStateDidChangeToState:(int64_t)state forItem:(id)item timeStamp:(id)stamp
{
  v53[3] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  v12 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:itemCopy];
  v13 = stampCopy;
  v14 = v13;
  if (v13)
  {
    [v13 hostTime];
    if ((v46 & 0x100000000) != 0)
    {
      [v14 hostTime];
      MPCPlaybackEngineEventMonotonicTimeWithHostTime(&v43, buf);
      goto LABEL_6;
    }
  }

  else
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
  }

  MPCPlaybackEngineEventGetMonotonicTime(buf);
LABEL_6:
  v43 = *buf;
  v44 = *&buf[16];
  [v14 userSecondsSinceReferenceDate];
  v16 = v15;

  [v14 time];
  v18 = v17;
  queueSectionID = [v12 queueSectionID];
  queueItemID = [v12 queueItemID];
  if (![queueSectionID length])
  {
    playbackEngine2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(playbackEngine2, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_30;
    }

    *buf = 138543618;
    *&buf[4] = itemCopy;
    *&buf[12] = 2114;
    *&buf[14] = queueSectionID;
    v25 = "Unexpected playbackBufferStateDidChangeToState:forItem: without sectionID: %{public}@ %{public}@";
LABEL_18:
    _os_log_impl(&dword_1C5C61000, playbackEngine2, OS_LOG_TYPE_FAULT, v25, buf, 0x16u);
    goto LABEL_30;
  }

  if (![queueItemID length])
  {
    playbackEngine2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(playbackEngine2, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_30;
    }

    *buf = 138543618;
    *&buf[4] = itemCopy;
    *&buf[12] = 2114;
    *&buf[14] = queueItemID;
    v25 = "Unexpected playbackBufferStateDidChangeToState:forItem: without itemID: %{public}@ %{public}@";
    goto LABEL_18;
  }

  v42 = engineID;
  playbackEngine2 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  queueController = [playbackEngine2 queueController];
  currentItem = [queueController currentItem];

  if (v12 != currentItem)
  {
LABEL_29:
    engineID = v42;
    goto LABEL_30;
  }

  engineID = v42;
  if (state == 1)
  {
    [MPCAVItemTrace traceWithName:@"MPTRACE_PLAYBACK_STREAM_RANDRY" item:v12 event:731643952];
    v26 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      if (v14)
      {
        [v14 hostTime];
      }

      else
      {
        memset(buf, 0, 24);
      }

      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(buf)];
      *buf = 138544130;
      *&buf[4] = v42;
      *&buf[12] = 2114;
      *&buf[14] = self;
      *&buf[22] = 2114;
      *&buf[24] = v12;
      LOWORD(v53[0]) = 2114;
      *(v53 + 2) = v37;
      _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - playbackBufferStateDidChangeToState: - state=Empty - item=%{public}@ - timeStamp:%{public}@", buf, 0x2Au);
    }

    eventStream = [playbackEngine2 eventStream];
    v48[0] = @"queue-section-id";
    v48[1] = @"queue-item-id";
    v49[0] = queueSectionID;
    v49[1] = queueItemID;
    v48[2] = @"item-end-position";
    v40 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
    v49[2] = v40;
    v48[3] = @"time-control-status";
    v38 = MEMORY[0x1E696AD98];
    playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v36 = [v38 numberWithInteger:{objc_msgSend(playbackStackController, "timeControlStatus")}];
    v49[3] = v36;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:4];
    *buf = v43;
    *&buf[16] = v44;
    v53[0] = v16;
    v34 = eventStream;
    [eventStream emitEventType:@"item-buffer-stall" payload:v39 atTime:buf];

    playbackStackController2 = v40;
    goto LABEL_28;
  }

  if (!state)
  {
    [MPCAVItemTrace traceWithName:@"MPTRACE_PLAYBACK_STREAM_BUFFERFULL" item:v12 event:731643948];
    v24 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      if (v14)
      {
        [v14 hostTime];
      }

      else
      {
        memset(buf, 0, 24);
      }

      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(buf)];
      *buf = 138544130;
      *&buf[4] = v42;
      *&buf[12] = 2114;
      *&buf[14] = self;
      *&buf[22] = 2114;
      *&buf[24] = v12;
      LOWORD(v53[0]) = 2114;
      *(v53 + 2) = v27;
      _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - playbackBufferStateDidChangeToState: - state=Full - item=%{public}@ - timeStamp:%{public}@", buf, 0x2Au);
    }

    eventObserver = [playbackEngine2 eventObserver];
    [eventObserver engine:playbackEngine2 didAchieveLikelyToKeepUpWithItem:v12];

    eventStream2 = [playbackEngine2 eventStream];
    v50[0] = @"queue-section-id";
    v50[1] = @"queue-item-id";
    v51[0] = queueSectionID;
    v51[1] = queueItemID;
    v50[2] = @"time-control-status";
    v30 = MEMORY[0x1E696AD98];
    playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    timeControlStatus = [playbackStackController2 timeControlStatus];
    v33 = v30;
    v34 = eventStream2;
    playbackStackController = [v33 numberWithInteger:timeControlStatus];
    v51[2] = playbackStackController;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:3];
    *buf = v43;
    *&buf[16] = v44;
    v53[0] = v16;
    [v34 emitEventType:@"item-buffer-finish" payload:v36 atTime:buf];
LABEL_28:

    goto LABEL_29;
  }

LABEL_30:
}

- (void)interruptionDidFinishForInterruptor:(id)interruptor shouldResume:(BOOL)resume timeStamp:(id)stamp
{
  resumeCopy = resume;
  v26 = *MEMORY[0x1E69E9840];
  interruptorCopy = interruptor;
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544386;
    *(&time.value + 4) = engineID;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v21 = interruptorCopy;
    v22 = 1024;
    v23 = resumeCopy;
    v24 = 2114;
    v25 = v13;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - interruptionDidFinishForInterruptor:shouldResume: - interruptor=%{public}@ - shouldResume=%{BOOL}u - timeStamp:%{public}@", &time, 0x30u);
  }

  playbackEngine2 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  eventStream = [playbackEngine2 eventStream];
  v18[0] = @"interrupt-name";
  v18[1] = @"interrupt-should-resume";
  v19[0] = interruptorCopy;
  v16 = [MEMORY[0x1E696AD98] numberWithBool:resumeCopy];
  v19[1] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  [eventStream emitEventType:@"interrupt-end" payload:v17];
}

- (void)interruptionDidBeginWithInterruptor:(id)interruptor timeStamp:(id)stamp
{
  v21 = *MEMORY[0x1E69E9840];
  interruptorCopy = interruptor;
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544130;
    *(&time.value + 4) = engineID;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v18 = interruptorCopy;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - interruptionDidBeginWithInterruptor - interruptor=%{public}@ - timeStamp:%{public}@", &time, 0x2Au);
  }

  playbackEngine2 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  eventStream = [playbackEngine2 eventStream];
  v15 = @"interrupt-name";
  v16 = interruptorCopy;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  [eventStream emitEventType:@"interrupt-begin" payload:v14];
}

- (void)stateDidChangeFromState:(int64_t)state toState:(int64_t)toState timeStamp:(id)stamp
{
  v45 = *MEMORY[0x1E69E9840];
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  toStateCopy = 0;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (toState <= 3)
  {
    if (toState <= 1)
    {
      if (!toState)
      {
        v10 = 0;
        toStateCopy = 3;
        goto LABEL_20;
      }

      if (toState != 1)
      {
        goto LABEL_20;
      }

      v10 = 2;
      goto LABEL_18;
    }

    if (toState == 2)
    {
      v10 = 1;
LABEL_18:
      toStateCopy = toState;
      goto LABEL_20;
    }

    v10 = 4;
LABEL_16:
    toStateCopy = 1000;
    goto LABEL_20;
  }

  if (toState <= 5)
  {
    if (toState == 4)
    {
      v10 = 5;
    }

    else
    {
      v10 = 3;
    }

    goto LABEL_16;
  }

  if (toState == 6)
  {
    toStateCopy = 1;
    v10 = 2;
  }

  else if (toState == 7)
  {
    toStateCopy = 4;
    v10 = 6;
  }

LABEL_20:
  stateCopy = 0;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if (state <= 3)
  {
    if (state <= 1)
    {
      if (!state)
      {
        v12 = 0;
        stateCopy = 3;
        goto LABEL_39;
      }

      if (state != 1)
      {
        goto LABEL_39;
      }

      v12 = 2;
      goto LABEL_37;
    }

    if (state == 2)
    {
      v12 = 1;
LABEL_37:
      stateCopy = state;
      goto LABEL_39;
    }

    v12 = 4;
LABEL_35:
    stateCopy = 1000;
    goto LABEL_39;
  }

  if (state <= 5)
  {
    if (state == 4)
    {
      v12 = 5;
    }

    else
    {
      v12 = 3;
    }

    goto LABEL_35;
  }

  if (state == 6)
  {
    stateCopy = 1;
    v12 = 2;
  }

  else if (state == 7)
  {
    stateCopy = 4;
    v12 = 6;
  }

LABEL_39:
  v28 = toStateCopy;
  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v10;
    v15 = [MFDescription forPlayerState:state];
    v16 = [MFDescription forPlayerState:toState];
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138545410;
    *(&time.value + 4) = engineID;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v32 = v15;
    v33 = 2048;
    v34 = v12;
    v35 = 2048;
    v36 = stateCopy;
    v37 = 2114;
    v38 = v16;
    v39 = 2048;
    v40 = v14;
    v41 = 2048;
    v42 = v28;
    v43 = 2114;
    v44 = v17;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - stateDidChange - [%{public}@/MP:%ld/NP:%ld -> %{public}@/MP:%ld/NP:%ld] - timeStamp:%{public}@", &time, 0x5Cu);
  }

  bookmarker = [(_MPCPlaybackEnginePlayer *)self bookmarker];
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  currentQueueItem = [playbackStackController currentQueueItem];
  [(_MPCPlaybackEnginePlayer *)self currentTime];
  v22 = v21;
  playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [playbackStackController2 rate];
  LODWORD(v25) = v24;
  [bookmarker playbackStateDidChangeFromState:state toState:toState forItem:currentQueueItem time:v22 rate:v25];

  if (state != toState)
  {
    playbackEngine2 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
    eventObserver = [playbackEngine2 eventObserver];
    [eventObserver engine:playbackEngine2 didChangeToState:v28];
  }
}

- (void)routeDidChange:(BOOL)change metadata:(id)metadata timeStamp:(id)stamp
{
  changeCopy = change;
  v43 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    routeDescription = [metadataCopy routeDescription];
    isAirplay = [metadataCopy isAirplay];
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544642;
    *(&time.value + 4) = engineID;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 1024;
    v36 = changeCopy;
    v37 = 2114;
    v38 = routeDescription;
    v39 = 1024;
    v40 = isAirplay;
    v41 = 2114;
    v42 = v15;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - routeDidChange - shouldPause=%{BOOL}u - route:%{public}@ - isAirplay=%{BOOL}u - timeStamp:%{public}@", &time, 0x36u);
  }

  v29 = engineID;
  v30 = stampCopy;

  playbackEngine2 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  eventStream = [playbackEngine2 eventStream];
  v33[0] = @"route-metadata";
  v31[0] = @"route-description";
  routeDescription2 = [metadataCopy routeDescription];
  null = routeDescription2;
  if (!routeDescription2)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v31[1] = @"route-is-airplay";
  v32[0] = null;
  [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(metadataCopy, "isAirplay")}];
  v19 = v27 = metadataCopy;
  v32[1] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v34[0] = v20;
  v33[1] = @"route-should-pause";
  v21 = [MEMORY[0x1E696AD98] numberWithBool:changeCopy];
  v34[1] = v21;
  v33[2] = @"time-control-status";
  v22 = MEMORY[0x1E696AD98];
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v24 = [v22 numberWithInteger:{objc_msgSend(playbackStackController, "timeControlStatus")}];
  v34[2] = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];
  [eventStream emitEventType:@"audio-route-changed" payload:v25];

  if (!routeDescription2)
  {
  }

  configurator = [(_MPCPlaybackEnginePlayer *)self configurator];
  [configurator updatePlayerConfiguration];
}

- (void)playbackWaitingToPlayForItem:(id)item reason:(id)reason timeStamp:(id)stamp
{
  v23 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  reasonCopy = reason;
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  v13 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:itemCopy];
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544386;
    *(&time.value + 4) = engineID;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v18 = v13;
    v19 = 2114;
    v20 = reasonCopy;
    v21 = 2114;
    v22 = v15;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - playbackWaitingToPlayFor - item=%{public}@ - reason:%{public}@ - timeStamp:%{public}@", &time, 0x34u);
  }

  bookmarker = [(_MPCPlaybackEnginePlayer *)self bookmarker];
  [stampCopy time];
  [bookmarker playbackDidStopForItem:itemCopy time:?];
}

- (void)timeControlStatusDidChange:(int64_t)change waitingReason:(id)reason timeStamp:(id)stamp
{
  v27 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MFDescription forTimeControlStatus:change];
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544386;
    *(&time.value + 4) = engineID;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v22 = v13;
    v23 = 2114;
    v24 = reasonCopy;
    v25 = 2114;
    v26 = v14;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - timeControlStatusDidChange - status:%{public}@ - reason:%{public}@ - timeStamp:%{public}@", &time, 0x34u);
  }

  playbackEngine2 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  eventStream = [playbackEngine2 eventStream];
  v19[0] = @"time-control-status";
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:change];
  v19[1] = @"time-control-status-reason";
  v20[0] = v17;
  v20[1] = reasonCopy;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  [eventStream emitEventType:@"time-control-status-changed" payload:v18];
}

- (void)firstFrameWillRenderForItem:(id)item timeStamp:(id)stamp
{
  v46[3] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  v10 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:itemCopy];
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    [stampCopy time];
    *buf = 138544130;
    *&buf[4] = engineID;
    *&buf[12] = 2114;
    *&buf[14] = self;
    *&buf[22] = 2114;
    *&buf[24] = v10;
    LOWORD(v46[0]) = 2050;
    *(v46 + 2) = v12;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - firstFrameWillRenderForItem - item=%{public}@ - startTime:%{public}.2f", buf, 0x2Au);
  }

  queueSectionID = [v10 queueSectionID];
  queueItemID = [v10 queueItemID];
  if (![queueSectionID length])
  {
    v33 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      *&buf[4] = itemCopy;
      *&buf[12] = 2114;
      *&buf[14] = queueSectionID;
      v34 = "Unexpected firstFrameWillRenderForItem: without sectionID: %{public}@ %{public}@";
LABEL_15:
      _os_log_impl(&dword_1C5C61000, v33, OS_LOG_TYPE_FAULT, v34, buf, 0x16u);
    }

LABEL_16:

    goto LABEL_17;
  }

  if (![queueItemID length])
  {
    v33 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      *&buf[4] = itemCopy;
      *&buf[12] = 2114;
      *&buf[14] = queueItemID;
      v34 = "Unexpected firstFrameWillRenderForItem: without itemID: %{public}@ %{public}@";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  timebase = [v10 timebase];
  [stampCopy time];
  if (v16 >= 0.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  [v10 initialPlaybackStartTime];
  v18 = v37 = stampCopy;
  [v18 doubleValue];
  v20 = v19;

  if (vabdd_f64(v17, v20) < 0.5)
  {
    v17 = v20;
  }

  CMTimebaseGetTime(buf, timebase);
  Seconds = CMTimeGetSeconds(buf);
  v46[0] = 0.0;
  memset(buf, 0, sizeof(buf));
  MPCPlaybackEngineEventGetMonotonicTime(buf);
  v22 = v17 - Seconds;
  [playbackEngine eventStream];
  v23 = v36 = playbackEngine;
  v43[0] = @"queue-section-id";
  v43[1] = @"queue-item-id";
  v44[0] = queueSectionID;
  v44[1] = queueItemID;
  v43[2] = @"item-start-position";
  [MEMORY[0x1E696AD98] numberWithDouble:v17];
  v24 = v35 = engineID;
  v44[2] = v24;
  v43[3] = @"event-time-offset";
  v25 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
  v44[3] = v25;
  v43[4] = @"time-control-status";
  v26 = MEMORY[0x1E696AD98];
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v28 = [v26 numberWithInteger:{objc_msgSend(playbackStackController, "timeControlStatus")}];
  v44[4] = v28;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:5];
  v29 = v38 = itemCopy;
  v39[0] = *buf;
  v39[1] = *&buf[16];
  v40 = v46[0];
  [v23 emitEventType:@"item-first-audio-frame" payload:v29 atTime:v39];

  stampCopy = v37;
  engineID = v35;

  playbackEngine = v36;
  [(_MPCPlaybackEnginePlayer *)self endPlaybackStartCriticalSection];
  v30 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v22 + v46[0]];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v41 = @"MPCPlaybackEngineFirstAudioFrameDateKey";
  v42 = v30;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  [defaultCenter postNotificationName:@"MPCPlaybackEngineFirstAudioFrameNotification" object:v36 userInfo:v32];

  itemCopy = v38;
LABEL_17:
}

- (void)effectiveRateDidChangeTo:(float)to forItem:(id)item timeStamp:(id)stamp
{
  v31 = *MEMORY[0x1E69E9840];
  stampCopy = stamp;
  itemCopy = item;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  v12 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:itemCopy];

  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    [stampCopy time];
    v21 = 138544386;
    v22 = engineID;
    v23 = 2114;
    selfCopy = self;
    v25 = 2114;
    v26 = v12;
    v27 = 2048;
    toCopy = to;
    v29 = 2050;
    v30 = v14;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - effectiveRateDidChange - item=%{public}@ - effectiveRate: %.2f - startTime:%{public}.2f", &v21, 0x34u);
  }

  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  timeControlStatus = [playbackStackController timeControlStatus];

  if ((timeControlStatus - 1) <= 1)
  {
    [stampCopy time];
    [(_MPCPlaybackEnginePlayer *)self _adjustPlayerTimeForAudioTapProcessing:?];
    v18 = v17;
    bookmarker = [(_MPCPlaybackEnginePlayer *)self bookmarker];
    *&v20 = to;
    [bookmarker updateDurationSnapshotWithTime:v12 forItem:v18 rate:v20];
  }

  if (to > 0.0)
  {
    [(_MPCPlaybackEnginePlayer *)self endPlaybackStartCriticalSection];
  }
}

- (void)playbackRateDidChangeNotifiedForItem:(id)item newRate:(float)rate reason:(id)reason participantIdentifier:(id)identifier timeStamp:(id)stamp
{
  v61 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  reasonCopy = reason;
  identifierCopy = identifier;
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  v44 = itemCopy;
  v18 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:itemCopy];
  v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = reasonCopy;
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(time, 0, 24);
    }

    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(time)];
    *time = 138544898;
    *&time[4] = engineID;
    *&time[12] = 2114;
    *&time[14] = self;
    *&time[22] = 2114;
    *&time[24] = v18;
    *v54 = 2048;
    *&v54[2] = rate;
    v55 = 2114;
    v56 = v20;
    v57 = 2114;
    v58 = identifierCopy;
    v59 = 2114;
    v60 = v21;
    _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - playbackRateDidChangeNotifiedForItem - item=%{public}@ - rate:%1.2f - reason:%{public}@ - participant:%{public}@ - timeStamp:%{public}@", time, 0x48u);

    reasonCopy = v20;
  }

  v22 = stampCopy;
  v23 = v22;
  v45 = identifierCopy;
  v43 = engineID;
  if (v22)
  {
    [v22 hostTime];
    if ((v49 & 0x100000000) != 0)
    {
      [v23 hostTime];
      MPCPlaybackEngineEventMonotonicTimeWithHostTime(&v46, time);
      goto LABEL_11;
    }
  }

  else
  {
    v48 = 0;
    v49 = 0;
    v50 = 0;
  }

  MPCPlaybackEngineEventGetMonotonicTime(time);
LABEL_11:
  v46 = *time;
  v47 = *&time[16];
  [v23 userSecondsSinceReferenceDate];
  v25 = v24;

  queueSectionID = [v18 queueSectionID];
  queueItemID = [v18 queueItemID];
  if (![queueSectionID length])
  {
    playbackEngine2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(playbackEngine2, OS_LOG_TYPE_FAULT))
    {
      *time = 138543618;
      v37 = v44;
      *&time[4] = v44;
      *&time[12] = 2114;
      *&time[14] = queueSectionID;
      v38 = "Unexpected playbackRateDidChangeNotifiedForItem: without sectionID: %{public}@ %{public}@";
LABEL_26:
      _os_log_impl(&dword_1C5C61000, playbackEngine2, OS_LOG_TYPE_FAULT, v38, time, 0x16u);
      goto LABEL_28;
    }

LABEL_27:
    v37 = v44;
    goto LABEL_28;
  }

  if (![queueItemID length])
  {
    playbackEngine2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(playbackEngine2, OS_LOG_TYPE_FAULT))
    {
      *time = 138543618;
      v37 = v44;
      *&time[4] = v44;
      *&time[12] = 2114;
      *&time[14] = queueItemID;
      v38 = "Unexpected playbackRateDidChangeNotifiedForItem: without itemID: %{public}@ %{public}@";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  playbackEngine2 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  eventStream = [playbackEngine2 eventStream];
  v51[0] = @"queue-section-id";
  v51[1] = @"queue-item-id";
  v52[0] = queueSectionID;
  v52[1] = queueItemID;
  v51[2] = @"item-rate-change-position";
  v29 = MEMORY[0x1E696AD98];
  [v23 time];
  v41 = [v29 numberWithDouble:?];
  v52[2] = v41;
  v51[3] = @"item-rate";
  *&v30 = rate;
  v40 = [MEMORY[0x1E696AD98] numberWithFloat:v30];
  v52[3] = v40;
  v51[4] = @"item-rate-change-reason";
  null = reasonCopy;
  if (!reasonCopy)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null;
  v52[4] = null;
  v51[5] = @"item-rate-change-participant-id";
  null2 = v45;
  if (!v45)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v52[5] = null2;
  v51[6] = @"time-control-status";
  v33 = MEMORY[0x1E696AD98];
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v35 = [v33 numberWithInteger:{objc_msgSend(playbackStackController, "timeControlStatus")}];
  v52[6] = v35;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:7];
  *time = v46;
  *&time[16] = v47;
  *v54 = v25;
  [eventStream emitEventType:@"item-rate-changed" payload:v36 atTime:time];

  if (!v45)
  {
  }

  v37 = v44;
  if (!reasonCopy)
  {
  }

LABEL_28:
}

- (void)playbackRateDidChangeToRate:(float)rate forItem:(id)item timeStamp:(id)stamp
{
  v24 = *MEMORY[0x1E69E9840];
  stampCopy = stamp;
  itemCopy = item;
  v10 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:itemCopy];
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544386;
    *(&time.value + 4) = engineID;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v19 = v10;
    v20 = 2048;
    rateCopy = rate;
    v22 = 2114;
    v23 = v14;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - playbackRateDidChangeToRate - item=%{public}@ - rate:%1.2f - timeStamp:%{public}@", &time, 0x34u);
  }

  bookmarker = [(_MPCPlaybackEnginePlayer *)self bookmarker];
  [stampCopy time];
  v17 = v16;
  *&v16 = rate;
  [bookmarker playbackRateDidChangeToRate:itemCopy forItem:v16 time:v17];
}

- (void)playbackDidStopForItem:(id)item source:(id)source reason:(id)reason timeStamp:(id)stamp
{
  v40 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  sourceCopy = source;
  reasonCopy = reason;
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    [stampCopy time];
    v18 = v17;
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544898;
    *(&time.value + 4) = engineID;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v31 = itemCopy;
    v32 = 2114;
    v33 = sourceCopy;
    v34 = 2114;
    v35 = reasonCopy;
    v36 = 2048;
    v37 = v18;
    v38 = 2114;
    v39 = v19;
    _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - playbackDidStopForItem- item=%{public}@ - source:%{public}@ - reason:%{public}@   - time:%.3fs - timeStamp:%{public}@", &time, 0x48u);
  }

  [stampCopy time];
  [(_MPCPlaybackEnginePlayer *)self _playbackDidStopForItem:itemCopy source:sourceCopy reason:reasonCopy time:?];
  queueController = [playbackEngine queueController];
  targetContentItemID = [queueController targetContentItemID];
  if (targetContentItemID)
  {
    v22 = targetContentItemID;
    v28 = reasonCopy;
    v29 = sourceCopy;
    queueController2 = [playbackEngine queueController];
    targetContentItemID2 = [queueController2 targetContentItemID];
    contentItemID = [itemCopy contentItemID];
    v26 = contentItemID;
    if (targetContentItemID2 != contentItemID)
    {
      v27 = [targetContentItemID2 isEqual:contentItemID];

      reasonCopy = v28;
      sourceCopy = v29;
      if ((v27 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    reasonCopy = v28;
    sourceCopy = v29;
  }

LABEL_12:
  [(_MPCPlaybackEnginePlayer *)self endPlaybackStartCriticalSection];
LABEL_13:
}

- (void)playbackDidStartForItem:(id)item rate:(float)rate expectedStartTime:(double)time fromStalling:(BOOL)stalling timeStamp:(id)stamp
{
  stallingCopy = stalling;
  v84 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  v16 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:itemCopy];
  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544898;
    *(&time.value + 4) = engineID;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v75 = v16;
    v76 = 2048;
    rateCopy = rate;
    v78 = 2048;
    timeCopy = time;
    v80 = 1024;
    v81 = stallingCopy;
    v82 = 2114;
    v83 = v18;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - playbackDidStartForItem:rate: - item=%{public}@ - rate:%1.2f - expectedStartTime: %1.3f - from stalling:%{BOOL}u - timeStamp:%{public}@", &time, 0x44u);
  }

  if (v16)
  {
    if (stallingCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCPlaybackEnginePlayer.m" lineNumber:1635 description:{@"Invalid parameter not satisfying: %@", @"queueItem != nil"}];

    if (stallingCopy)
    {
      goto LABEL_11;
    }
  }

  v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    playerID = [playbackEngine playerID];
    LODWORD(time.value) = 138543874;
    *(&time.value + 4) = engineID;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = playerID;
    HIWORD(time.epoch) = 2114;
    v75 = v16;
    _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@]-PSP: Setting hasPlayedSuccessfully: [playbackDidStartForItem] playerID=%{public}@ item=%{public}@", &time, 0x20u);
  }

  [MPCAVItemTrace traceWithName:@"MPTRACE_PLAYBACK_DID_START" item:v16 event:731643976];
  playbackStartTrace = [(_MPCPlaybackEnginePlayer *)self playbackStartTrace];
  [playbackStartTrace endInterval];

  errorController = [(_MPCPlaybackEnginePlayer *)self errorController];
  [errorController setItemsHavePlayed:1];

  [playbackEngine schedulePlaybackStatePreservation];
LABEL_11:
  v68 = stampCopy;
  [stampCopy time];
  if (v23 >= 0.0)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0.0;
  }

  initialPlaybackStartTime = [v16 initialPlaybackStartTime];
  [initialPlaybackStartTime doubleValue];
  v27 = v26;

  if (vabdd_f64(v24, v27) >= 0.5)
  {
    v27 = v24;
  }

  bookmarker = [(_MPCPlaybackEnginePlayer *)self bookmarker];
  *&v29 = rate;
  [bookmarker playbackDidStartForItem:itemCopy time:v27 rate:v29];

  queueSectionID = [v16 queueSectionID];
  queueItemID = [v16 queueItemID];
  if ([queueSectionID length])
  {
    if ([queueItemID length])
    {
      if (stallingCopy)
      {
        lastReportedVocalAttenuationEnabledState = [(_MPCPlaybackEnginePlayer *)self lastReportedVocalAttenuationEnabledState];
        if (lastReportedVocalAttenuationEnabledState == [playbackEngine isVocalAttenuationEnabled])
        {
LABEL_32:
          -[_MPCPlaybackEnginePlayer setLastReportedVocalAttenuationEnabledState:](self, "setLastReportedVocalAttenuationEnabledState:", [playbackEngine isVocalAttenuationEnabled]);
          eventObserver = [playbackEngine eventObserver];
          *&v55 = rate;
          [eventObserver engine:playbackEngine didChangeItemElapsedTime:v27 rate:v55];
          goto LABEL_33;
        }

        eventStream = [playbackEngine eventStream];
        v70[0] = @"queue-section-id";
        v70[1] = @"queue-item-id";
        v71[0] = queueSectionID;
        v71[1] = queueItemID;
        v70[2] = @"item-start-position";
        v33 = [MEMORY[0x1E696AD98] numberWithDouble:v27];
        v71[2] = v33;
        v70[3] = @"time-control-status";
        v34 = MEMORY[0x1E696AD98];
        playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
        v64 = [v34 numberWithInteger:{objc_msgSend(playbackStackController, "timeControlStatus")}];
        v71[3] = v64;
        v70[4] = @"supports-vocal-attenuation";
        playbackStackController2 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v16, "supportsVocalAttenuation")}];
        v71[4] = playbackStackController2;
        v70[5] = @"vocal-attenuation-available";
        v62 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(playbackEngine, "isVocalAttenuationAvailable")}];
        v71[5] = v62;
        v70[6] = @"vocal-attenuation-enabled";
        v61 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(playbackEngine, "isVocalAttenuationEnabled")}];
        v71[6] = v61;
        v70[7] = @"vocal-attenuation-configured";
        v60 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v16, "isConfiguredForVocalAttenuation")}];
        v71[7] = v60;
        v70[8] = @"vocal-attenuation-processing-delay";
        v35 = MEMORY[0x1E696AD98];
        supportsVocalAttenuation = [v16 supportsVocalAttenuation];
        v37 = 0.0;
        if (supportsVocalAttenuation)
        {
          [playbackEngine currentAudioProcessingDelay];
          v37 = v38 * 1000.0;
        }

        v39 = [v35 numberWithDouble:v37];
        v71[8] = v39;
        v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:9];
        v41 = eventStream;
        [eventStream emitEventType:@"item-vocal-attenuation-changed" payload:v40];
      }

      else
      {
        eventStream2 = [playbackEngine eventStream];
        v72[0] = @"event-time-offset";
        v44 = MEMORY[0x1E696AD98];
        [v68 time];
        v73[0] = [v44 numberWithDouble:v27 - v45];
        v73[1] = queueSectionID;
        v72[1] = @"queue-section-id";
        v72[2] = @"queue-item-id";
        v73[2] = queueItemID;
        v72[3] = @"item-start-position";
        playbackStackController = [MEMORY[0x1E696AD98] numberWithDouble:v27];
        v73[3] = playbackStackController;
        v72[4] = @"item-expected-start-position";
        v59 = itemCopy;
        [MEMORY[0x1E696AD98] numberWithDouble:time];
        v64 = v58 = v73[0];
        v73[4] = v64;
        v72[5] = @"time-control-status";
        v46 = MEMORY[0x1E696AD98];
        playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
        v62 = [v46 numberWithInteger:{objc_msgSend(playbackStackController2, "timeControlStatus")}];
        v73[5] = v62;
        v72[6] = @"item-rate";
        *&v47 = rate;
        v61 = [MEMORY[0x1E696AD98] numberWithFloat:v47];
        v73[6] = v61;
        v72[7] = @"supports-vocal-attenuation";
        v60 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v16, "supportsVocalAttenuation")}];
        v73[7] = v60;
        v72[8] = @"vocal-attenuation-available";
        v57 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(playbackEngine, "isVocalAttenuationAvailable")}];
        v73[8] = v57;
        v72[9] = @"vocal-attenuation-enabled";
        v40 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(playbackEngine, "isVocalAttenuationEnabled")}];
        v73[9] = v40;
        v72[10] = @"vocal-attenuation-configured";
        v48 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v16, "isConfiguredForVocalAttenuation")}];
        v73[10] = v48;
        v72[11] = @"vocal-attenuation-processing-delay";
        v49 = MEMORY[0x1E696AD98];
        supportsVocalAttenuation2 = [v16 supportsVocalAttenuation];
        v51 = 0.0;
        if (supportsVocalAttenuation2)
        {
          [playbackEngine currentAudioProcessingDelay];
          v51 = v52 * 1000.0;
        }

        v53 = [v49 numberWithDouble:v51];
        v73[11] = v53;
        v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:12];
        v41 = eventStream2;
        [eventStream2 emitEventType:@"item-resume" payload:v54];

        v33 = v58;
        itemCopy = v59;
        v39 = v57;
      }

      goto LABEL_32;
    }

    eventObserver = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(eventObserver, OS_LOG_TYPE_FAULT))
    {
      LODWORD(time.value) = 138543618;
      *(&time.value + 4) = itemCopy;
      LOWORD(time.flags) = 2114;
      *(&time.flags + 2) = queueItemID;
      v43 = "Unexpected playbackDidStartForItem: without itemID: %{public}@ %{public}@";
      goto LABEL_27;
    }
  }

  else
  {
    eventObserver = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(eventObserver, OS_LOG_TYPE_FAULT))
    {
      LODWORD(time.value) = 138543618;
      *(&time.value + 4) = itemCopy;
      LOWORD(time.flags) = 2114;
      *(&time.flags + 2) = queueSectionID;
      v43 = "Unexpected playbackDidStartForItem: without sectionID: %{public}@ %{public}@";
LABEL_27:
      _os_log_impl(&dword_1C5C61000, eventObserver, OS_LOG_TYPE_FAULT, v43, &time, 0x16u);
    }
  }

LABEL_33:
}

- (double)_adjustPlayerTimeForAudioTapProcessing:(double)processing
{
  v19 = *MEMORY[0x1E69E9840];
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  [playbackEngine mapPlaybackTimeToUserTime:processing];
  v8 = v7;
  if (v7 != processing)
  {
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138544130;
      v12 = engineID;
      v13 = 2114;
      selfCopy = self;
      v15 = 2048;
      processingCopy = processing;
      v17 = 2048;
      v18 = v8;
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - Adjusting time with current processing delay - time: %3.4f -> corrected time: %3.4f", &v11, 0x2Au);
    }
  }

  return v8;
}

- (void)_updateActiveFormatForQueueItem:(id)item
{
  v30 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = itemCopy;
    avPlayerItem = [v7 avPlayerItem];
    currentStableVariantID = [avPlayerItem currentStableVariantID];
    if (currentStableVariantID)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __60___MPCPlaybackEnginePlayer__updateActiveFormatForQueueItem___block_invoke;
      aBlock[3] = &unk_1E8234DF0;
      aBlock[4] = self;
      v21 = v7;
      v10 = engineID;
      v22 = v10;
      v11 = v21;
      v23 = v11;
      v12 = _Block_copy(aBlock);
      v13 = [v11 audioFormatForStableVariantID:currentStableVariantID];
      if (v13)
      {
        v12[2](v12, v13);
      }

      else
      {
        v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v25 = v10;
          v26 = 2114;
          selfCopy = self;
          v28 = 2114;
          v29 = currentStableVariantID;
          _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - No session-data audio format found for stableVariantID=%{public}@", buf, 0x20u);
        }

        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __60___MPCPlaybackEnginePlayer__updateActiveFormatForQueueItem___block_invoke_190;
        v15[3] = &unk_1E8234E18;
        v19 = v12;
        v16 = v10;
        selfCopy2 = self;
        v18 = currentStableVariantID;
        [avPlayerItem loadCurrentTrackAudioFormatWithCompletion:v15];
      }
    }
  }
}

- (void)itemIsReadyToPlay:(id)play timeStamp:(id)stamp
{
  v56[3] = *MEMORY[0x1E69E9840];
  playCopy = play;
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  v10 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:playCopy];
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544130;
    *(&time.value + 4) = engineID;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v55 = v10;
    LOWORD(v56[0]) = 2114;
    *(v56 + 2) = v12;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - itemIsReadyToPlay - item=%{public}@ - timeStamp:%{public}@", &time, 0x2Au);
  }

  v13 = stampCopy;
  v14 = v13;
  if (v13)
  {
    [v13 hostTime];
    if ((v48 & 0x100000000) != 0)
    {
      [v14 hostTime];
      MPCPlaybackEngineEventMonotonicTimeWithHostTime(&v46, &time);
      goto LABEL_11;
    }
  }

  else
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
  }

  MPCPlaybackEngineEventGetMonotonicTime(&time);
LABEL_11:
  v43 = *&time.timescale;
  value = time.value;
  v16 = v55;
  [v14 userSecondsSinceReferenceDate];
  v18 = v17;

  queueSectionID = [v10 queueSectionID];
  queueItemID = [v10 queueItemID];
  v45 = queueSectionID;
  v44 = queueItemID;
  if (![queueSectionID length])
  {
    playbackEngine2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(playbackEngine2, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_21;
    }

    LODWORD(time.value) = 138543618;
    *(&time.value + 4) = playCopy;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = v45;
    v38 = "Unexpected itemIsReadyToPlay: without sectionID: %{public}@ %{public}@";
LABEL_20:
    _os_log_impl(&dword_1C5C61000, playbackEngine2, OS_LOG_TYPE_FAULT, v38, &time, 0x16u);
    goto LABEL_21;
  }

  if (![queueItemID length])
  {
    playbackEngine2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(playbackEngine2, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_21;
    }

    LODWORD(time.value) = 138543618;
    *(&time.value + 4) = playCopy;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = queueItemID;
    v38 = "Unexpected itemIsReadyToPlay: without itemID: %{public}@ %{public}@";
    goto LABEL_20;
  }

  v41 = engineID;
  v42 = playCopy;
  playbackEngine2 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  eventStream = [playbackEngine2 eventStream];
  v23 = value;
  v24 = eventStream;
  v52[0] = @"queue-section-id";
  v52[1] = @"queue-item-id";
  v53[0] = v45;
  v53[1] = queueItemID;
  v25 = v23;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
  *&time.timescale = v43;
  time.value = v25;
  v40 = v16;
  v55 = v16;
  v56[0] = v18;
  [v24 emitEventType:@"item-ready-to-play" payload:v26 atTime:&time];

  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [playbackStackController rate];
  v29 = v28;

  if (v29 > 0.0)
  {
    eventStream2 = [playbackEngine2 eventStream];
    v50[0] = @"queue-section-id";
    v50[1] = @"queue-item-id";
    v51[0] = v45;
    v51[1] = v44;
    v50[2] = @"item-rate-change-position";
    v31 = MEMORY[0x1E696AD98];
    [v14 time];
    v39 = [v31 numberWithDouble:?];
    v51[2] = v39;
    v50[3] = @"item-rate";
    *&v32 = v29;
    v33 = [MEMORY[0x1E696AD98] numberWithFloat:v32];
    v51[3] = v33;
    v51[4] = @"readyToPlay";
    v50[4] = @"item-rate-change-reason";
    v50[5] = @"time-control-status";
    v34 = MEMORY[0x1E696AD98];
    playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v36 = [v34 numberWithInteger:{objc_msgSend(playbackStackController2, "timeControlStatus")}];
    v51[5] = v36;
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:6];
    *&time.timescale = vaddq_s64(v43, vdupq_n_s64(1uLL));
    time.value = v25;
    v55 = v40;
    v56[0] = v18 + 0.000000001;
    [eventStream2 emitEventType:@"item-rate-changed" payload:v37 atTime:&time];
  }

  [v10 reevaluateHasProtectedContent];
  [v10 reevaluateType];
  [(_MPCPlaybackEnginePlayer *)self _updateActiveFormatForQueueItem:v10];
  engineID = v41;
  playCopy = v42;
LABEL_21:
}

- (void)itemDidPlayToEnd:(id)end timeStamp:(id)stamp
{
  v34 = *MEMORY[0x1E69E9840];
  stampCopy = stamp;
  endCopy = end;
  v8 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:endCopy];
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544130;
    *(&time.value + 4) = engineID;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v31 = *&v8;
    v32 = 2114;
    v33 = v12;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - itemDidPlayToEnd - item=%{public}@ - timeStamp:%{public}@", &time, 0x2Au);
  }

  bookmarker = [(_MPCPlaybackEnginePlayer *)self bookmarker];
  [stampCopy time];
  [bookmarker itemDidPlayToEnd:endCopy time:?];

  playbackEngine2 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  eventObserver = [playbackEngine2 eventObserver];
  [eventObserver engine:playbackEngine2 didEndPlaybackOfItem:v8];

  v16 = v8;
  if (MSVDeviceOSIsInternalInstall())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
      if ([v17 durationIsValid] && objc_msgSend(v17, "isAssetLoaded"))
      {
        playerItem = [v17 playerItem];
        v19 = playerItem;
        if (playerItem)
        {
          [playerItem duration];
          Seconds = CMTimeGetSeconds(&time);
          [v19 advanceTimeForOverlappedPlayback];
        }

        else
        {
          memset(&time, 0, sizeof(time));
          Seconds = CMTimeGetSeconds(&time);
          memset(&time, 0, sizeof(time));
        }

        v21 = CMTimeGetSeconds(&time);
        if (v21 >= Seconds)
        {
          v22 = Seconds;
        }

        else
        {
          v22 = v21;
        }

        if (v21 > 0.0)
        {
          v23 = v22;
        }

        else
        {
          v23 = Seconds;
        }

        if (v19)
        {
          [v19 currentTime];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        v24 = CMTimeGetSeconds(&time);
        if (v23 > 15.0 && v23 - v24 > 15.0 && (v23 - v24) / Seconds > 0.1)
        {
          if ([v17 isHLSAsset] && objc_msgSend(v17, "_removeLocalAssetFileIfPossible"))
          {
            v25 = _MPCLogCategoryPlayback();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(time.value) = 138543874;
              *(&time.value + 4) = v17;
              LOWORD(time.flags) = 2048;
              *(&time.flags + 2) = v24;
              HIWORD(time.epoch) = 2048;
              v31 = v23;
              _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: Removed corrupted local asset because item ended earlier than expected endTime=%0.2f expectedEndTime=%0.2f", &time, 0x20u);
            }
          }

          else
          {
            v26 = _MPCLogCategoryPlayback();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              LODWORD(time.value) = 138543874;
              *(&time.value + 4) = v17;
              LOWORD(time.flags) = 2048;
              *(&time.flags + 2) = v24;
              HIWORD(time.epoch) = 2048;
              v31 = v23;
              _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_ERROR, "%{public}@: Item ended earlier than expected endTime=%0.2f expectedEndTime=%0.2f", &time, 0x20u);
            }

            v27 = MEMORY[0x1E69B13D8];
            v28 = *MEMORY[0x1E69B1340];
            v25 = [v17 description];
            time.value = v25;
            v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&time count:1];
            [v27 snapshotWithDomain:v28 type:@"Bug" subType:@"ItemEnd" context:@"Item ended earlier than expected" triggerThresholdValues:0 events:v29 completion:0];
          }
        }
      }
    }
  }
}

- (void)itemDidFailToPlayToEnd:(id)end error:(id)error timeStamp:(id)stamp
{
  v44 = *MEMORY[0x1E69E9840];
  endCopy = end;
  errorCopy = error;
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  v13 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:endCopy];
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(time, 0, 24);
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(time)];
    *time = 138544386;
    *&time[4] = engineID;
    *&time[12] = 2114;
    *&time[14] = self;
    *&time[22] = 2114;
    *&time[24] = v13;
    *v41 = 2114;
    *&v41[2] = errorCopy;
    v42 = 2114;
    v43 = v15;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - itemDidFailToPlayToEnd - item=%{public}@ - error=%{public}@ - timeStamp:%{public}@", time, 0x34u);
  }

  v16 = stampCopy;
  v17 = v16;
  v32 = engineID;
  if (v16)
  {
    [v16 hostTime];
    if ((v36 & 0x100000000) != 0)
    {
      [v17 hostTime];
      MPCPlaybackEngineEventMonotonicTimeWithHostTime(&v33, time);
      goto LABEL_11;
    }
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
  }

  MPCPlaybackEngineEventGetMonotonicTime(time);
LABEL_11:
  v33 = *time;
  v34 = *&time[16];
  [v17 userSecondsSinceReferenceDate];
  v19 = v18;

  queueSectionID = [v13 queueSectionID];
  queueItemID = [v13 queueItemID];
  if (![queueSectionID length])
  {
    playbackEngine2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(playbackEngine2, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_23;
    }

    *time = 138543618;
    *&time[4] = endCopy;
    *&time[12] = 2114;
    *&time[14] = queueSectionID;
    v29 = "Unexpected itemDidFailToPlayToEnd: without sectionID: %{public}@ %{public}@";
LABEL_22:
    _os_log_impl(&dword_1C5C61000, playbackEngine2, OS_LOG_TYPE_FAULT, v29, time, 0x16u);
    goto LABEL_23;
  }

  if (![queueItemID length])
  {
    playbackEngine2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(playbackEngine2, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_23;
    }

    *time = 138543618;
    *&time[4] = endCopy;
    *&time[12] = 2114;
    *&time[14] = queueItemID;
    v29 = "Unexpected itemDidFailToPlayToEnd: without itemID: %{public}@ %{public}@";
    goto LABEL_22;
  }

  v30 = endCopy;
  playbackEngine2 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  eventStream = [playbackEngine2 eventStream];
  v38[0] = @"queue-section-id";
  v38[1] = @"queue-item-id";
  v39[0] = queueSectionID;
  v39[1] = queueItemID;
  v38[2] = @"asset-load-error";
  null = errorCopy;
  v24 = errorCopy;
  if (!errorCopy)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v39[2] = null;
  v38[3] = @"time-control-status";
  v25 = MEMORY[0x1E696AD98];
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v27 = [v25 numberWithInteger:{objc_msgSend(playbackStackController, "timeControlStatus")}];
  v39[3] = v27;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:4];
  *time = v33;
  *&time[16] = v34;
  *v41 = v19;
  [eventStream emitEventType:@"item-failed" payload:v28 atTime:time];

  errorCopy = v24;
  if (!v24)
  {
  }

  endCopy = v30;
LABEL_23:
}

- (void)itemDidFailToLoad:(id)load silently:(BOOL)silently error:(id)error timeStamp:(id)stamp
{
  silentlyCopy = silently;
  v27 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  stampCopy = stamp;
  loadCopy = load;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  v15 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:loadCopy];

  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544642;
    *(&time.value + 4) = engineID;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v20 = v15;
    v21 = 1024;
    v22 = silentlyCopy;
    v23 = 2114;
    v24 = errorCopy;
    v25 = 2114;
    v26 = v17;
    _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - itemDidFailToLoad - item=%{public}@ - silently=%{BOOL}u - error=%{public}@ - timeStamp:%{public}@", &time, 0x3Au);
  }

  if (silentlyCopy)
  {
    queueController = [playbackEngine queueController];
    [queueController playerItemDidBecomeCurrent:v15];
  }

  [(_MPCPlaybackEnginePlayer *)self endPlaybackStartCriticalSection];
}

- (void)userSeekCompletedForItem:(id)item fromTime:(double)time toTime:(double)toTime timeStamp:(id)stamp
{
  v35 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  v14 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:itemCopy];
  [(_MPCPlaybackEnginePlayer *)self _adjustPlayerTimeForAudioTapProcessing:toTime];
  v16 = v15;
  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544642;
    *(&time.value + 4) = engineID;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v28 = v14;
    v29 = 2048;
    timeCopy = time;
    v31 = 2048;
    v32 = v16;
    v33 = 2114;
    v34 = v18;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - userSeekCompletedForItem - item=%{public}@ - [%.2fs -> %.2fs]- timeStamp:%{public}@", &time, 0x3Eu);
  }

  bookmarker = [(_MPCPlaybackEnginePlayer *)self bookmarker];
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [playbackStackController effectiveRate];
  LODWORD(v22) = v21;
  [bookmarker updateDurationSnapshotWithTime:itemCopy forItem:v16 rate:v22];

  [(_MPCPlaybackEnginePlayer *)self _logTimeJumpForItem:v14 fromTime:1 toTime:stampCopy userInitiated:time timeStamp:v16];
  eventObserver = [playbackEngine eventObserver];
  playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [playbackStackController2 rate];
  LODWORD(v26) = v25;
  [eventObserver engine:playbackEngine didChangeItemElapsedTime:v16 rate:v26];
}

- (void)playbackTimeDidChangeTo:(double)to forItem:(id)item reason:(int64_t)reason timeStamp:(id)stamp
{
  v84 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  v14 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:itemCopy];
  [(_MPCPlaybackEnginePlayer *)self _adjustPlayerTimeForAudioTapProcessing:to];
  v16 = v15;
  bookmarker = [(_MPCPlaybackEnginePlayer *)self bookmarker];
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [playbackStackController effectiveRate];
  LODWORD(v20) = v19;
  [bookmarker updateDurationSnapshotWithTime:itemCopy forItem:v16 rate:v20];

  if ([v14 isAlwaysLive])
  {
    contentItem = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(contentItem, OS_LOG_TYPE_DEFAULT))
    {
      if (stampCopy)
      {
        [stampCopy hostTime];
      }

      else
      {
        memset(time, 0, 24);
      }

      eventObserver = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(time)];
      *time = 138544386;
      *&time[4] = engineID;
      *&time[12] = 2114;
      *&time[14] = self;
      *&time[22] = 2048;
      *&time[24] = v16;
      *v73 = 2114;
      *&v73[2] = v14;
      v74 = 2114;
      v75 = *&eventObserver;
      v32 = "[%{public}@]-%{public}@ - playbackTimeDidChangeTo - Live item [ignoring time change] - time:%.2fs - item=%{public}@ - timeStamp:%{public}@";
LABEL_19:
      _os_log_impl(&dword_1C5C61000, contentItem, OS_LOG_TYPE_DEFAULT, v32, time, 0x34u);
LABEL_39:

      goto LABEL_40;
    }

    goto LABEL_40;
  }

  playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  if ([playbackStackController2 currentState] == 4)
  {

    goto LABEL_9;
  }

  playbackStackController3 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  currentState = [playbackStackController3 currentState];

  if (currentState != 3)
  {
    v25 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      playbackStackController4 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
      [playbackStackController4 rate];
      v28 = v27;
      playbackStackController5 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
      [playbackStackController5 effectiveRate];
      v30 = v29;
      playbackStackController6 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
      v59 = +[MFDescription forPlayerState:](MFDescription, "forPlayerState:", [playbackStackController6 currentState]);
      v56 = [MFDescription forPlaybackTimeChangeReason:reason];
      if (stampCopy)
      {
        [stampCopy hostTime];
      }

      else
      {
        memset(time, 0, 24);
      }

      v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(time)];
      *time = 138545410;
      *&time[4] = engineID;
      *&time[12] = 2114;
      *&time[14] = self;
      *&time[22] = 2048;
      *&time[24] = v16;
      *v73 = 2048;
      *&v73[2] = v28;
      v74 = 2048;
      v75 = v30;
      v76 = 2114;
      v77 = v59;
      v78 = 2114;
      v79 = v14;
      v80 = 2114;
      v81 = v56;
      v82 = 2114;
      v83 = v55;
      _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - playbackTimeDidChangeTo - Regular item [processing time change] - time:%.2fs - rate: %.2f - effectiveRate: %2f - state: %{public}@ - item=%{public}@ - reason:%{public}@ - timeStamp:%{public}@", time, 0x5Cu);
    }

    contentItem = [v14 contentItem];
    [contentItem elapsedTimeTimestamp];
    v34 = v33;
    [contentItem calculatedElapsedTime];
    v36 = v35;
    [contentItem elapsedTimeTimestamp];
    if (reason == 2 || reason == 1 && v34 != v37)
    {
      [(_MPCPlaybackEnginePlayer *)self _logTimeJumpForItem:v14 fromTime:reason == 2 toTime:stampCopy userInitiated:v36 timeStamp:v16];
LABEL_38:
      eventObserver = [playbackEngine eventObserver];
      playbackStackController7 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
      [playbackStackController7 rate];
      LODWORD(v54) = v53;
      [eventObserver engine:playbackEngine didChangeItemElapsedTime:v16 rate:v54];

      goto LABEL_39;
    }

    v38 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:itemCopy];
    v39 = stampCopy;
    v40 = v39;
    if (v39)
    {
      [v39 hostTime];
      if ((v68 & 0x100000000) != 0)
      {
        [v40 hostTime];
        MPCPlaybackEngineEventMonotonicTimeWithHostTime(&v65, time);
LABEL_31:
        v65 = *time;
        v66 = *&time[16];
        [v40 userSecondsSinceReferenceDate];
        v42 = v41;

        eventStream = [playbackEngine eventStream];
        v70[0] = @"queue-section-id";
        queueSectionID = [v38 queueSectionID];
        v71[0] = queueSectionID;
        v70[1] = @"queue-item-id";
        v64 = v38;
        queueItemID = [v38 queueItemID];
        v71[1] = queueItemID;
        v70[2] = @"item-end-position";
        v43 = MEMORY[0x1E696AD98];
        [contentItem duration];
        toCopy = to;
        if (v45 <= to)
        {
          [contentItem duration];
          toCopy = v46;
        }

        toCopy2 = 0.0;
        if (toCopy >= 0.0)
        {
          [contentItem duration];
          v49 = v48 <= to;
          toCopy2 = to;
          if (v49)
          {
            [contentItem duration];
          }
        }

        v50 = [v43 numberWithDouble:toCopy2];
        v71[2] = v50;
        v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:3];
        *time = v65;
        *&time[16] = v66;
        *v73 = v42;
        [eventStream emitEventType:@"item-position-tick" payload:v51 atTime:time];

        goto LABEL_38;
      }
    }

    else
    {
      v67 = 0;
      v68 = 0;
      v69 = 0;
    }

    MPCPlaybackEngineEventGetMonotonicTime(time);
    goto LABEL_31;
  }

LABEL_9:
  contentItem = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(contentItem, OS_LOG_TYPE_DEFAULT))
  {
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(time, 0, 24);
    }

    eventObserver = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(time)];
    *time = 138544386;
    *&time[4] = engineID;
    *&time[12] = 2114;
    *&time[14] = self;
    *&time[22] = 2048;
    *&time[24] = v16;
    *v73 = 2114;
    *&v73[2] = v14;
    v74 = 2114;
    v75 = *&eventObserver;
    v32 = "[%{public}@]-%{public}@ - playbackTimeDidChangeTo - FF or RW [ignoring time change to avoid time snaps] - time:%.2fs - item=%{public}@ - timeStamp:%{public}@";
    goto LABEL_19;
  }

LABEL_40:
}

- (void)playbackDidReachQueueEndWithTimeStamp:(id)stamp
{
  v11 = *MEMORY[0x1E69E9840];
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138543874;
    *(&time.value + 4) = engineID;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v10 = v8;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - playbackDidReachQueueEnd - timeStamp:%{public}@", &time, 0x20u);
  }
}

- (void)overlappedPlaybackDidEndFrom:(id)from to:(id)to transitionTime:(id)time transitionType:(int64_t)type timeStamp:(id)stamp
{
  v91 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  timeCopy = time;
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  v17 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:fromCopy];
  selfCopy = self;
  v73 = toCopy;
  v18 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:toCopy];
  if (_os_feature_enabled_impl())
  {
    if ([v17 isInOverlappedTransition])
    {
      [v17 _willBeRemovedFromPlayer];
    }

    [v17 setInOverlappedTransition:0];
    [v18 setInOverlappedTransition:0];
  }

  v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    [timeCopy startItemSourceTime];
    v21 = v20;
    [timeCopy endItemSourceTime];
    v23 = v22;
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544898;
    *(&time.value + 4) = engineID;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v83 = fromCopy;
    *v84 = 2048;
    *&v84[2] = v21;
    v85 = 2114;
    v86 = v73;
    v87 = 2048;
    v88 = v23;
    v89 = 2114;
    v90 = v24;
    _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - overlappedPlaybackDidEnd - %{public}@ [%3.2fs] -> %{public}@ [%3.2fs] - timeStamp:%{public}@", &time, 0x48u);
  }

  translator = [(_MPCPlaybackEnginePlayer *)self translator];
  [translator setMPAVItem:0 forMFPlayerItem:fromCopy];

  v26 = stampCopy;
  v27 = v26;
  v70 = fromCopy;
  v61 = engineID;
  if (v26)
  {
    [v26 hostTime];
    if ((v76 & 0x100000000) != 0)
    {
      [v27 hostTime];
      MPCPlaybackEngineEventMonotonicTimeWithHostTime(&v74, &time);
      goto LABEL_15;
    }
  }

  else
  {
    v75 = 0;
    v76 = 0;
    v77 = 0;
  }

  MPCPlaybackEngineEventGetMonotonicTime(&time);
LABEL_15:
  v67 = *&time.timescale;
  value = time.value;
  v66 = v83;
  [v27 userSecondsSinceReferenceDate];
  v29 = v28;

  eventStream = [playbackEngine eventStream];
  v80[0] = @"outgoing-item-section-id";
  queueSectionID = [v17 queueSectionID];
  v81[0] = queueSectionID;
  v80[1] = @"outgoing-item-id";
  queueItemID = [v17 queueItemID];
  v81[1] = queueItemID;
  v80[2] = @"transition-outgoing-item-source-time";
  v69 = v27;
  v31 = MEMORY[0x1E696AD98];
  [timeCopy startItemSourceTime];
  v32 = [v31 numberWithDouble:?];
  v81[2] = v32;
  v80[3] = @"transition-outgoing-item-target-time";
  v33 = MEMORY[0x1E696AD98];
  [timeCopy startItemTargetTime];
  v34 = [v33 numberWithDouble:?];
  v81[3] = v34;
  v80[4] = @"incoming-item-section-id";
  queueSectionID2 = [v18 queueSectionID];
  v81[4] = queueSectionID2;
  v80[5] = @"incoming-item-id";
  [v18 queueItemID];
  v64 = v18;
  v36 = v65 = playbackEngine;
  v81[5] = v36;
  v80[6] = @"transition-incoming-item-source-time";
  v37 = MEMORY[0x1E696AD98];
  [timeCopy endItemSourceTime];
  [v37 numberWithDouble:?];
  v38 = v63 = v17;
  v81[6] = v38;
  v80[7] = @"transition-incoming-item-target-time";
  v39 = MEMORY[0x1E696AD98];
  [timeCopy endItemTargetTime];
  v40 = [v39 numberWithDouble:?];
  v81[7] = v40;
  v80[8] = @"transition-type";
  v41 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v81[8] = v41;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:9];
  v42 = v62 = timeCopy;
  *&time.timescale = v67;
  time.value = value;
  v83 = v66;
  *v84 = v29;
  [eventStream emitEventType:@"overlapped-playback-did-end" payload:v42 atTime:&time];

  if (type == 1)
  {
    bookmarker = [(_MPCPlaybackEnginePlayer *)selfCopy bookmarker];
    [bookmarker itemTransitionWillBeginFrom:v70 to:v73 type:1 timeStamp:v69];

    eventStream2 = [v65 eventStream];
    v78[0] = @"outgoing-item-section-id";
    queueSectionID3 = [v63 queueSectionID];
    v79[0] = queueSectionID3;
    v78[1] = @"outgoing-item-id";
    queueItemID2 = [v63 queueItemID];
    v79[1] = queueItemID2;
    v78[2] = @"transition-outgoing-item-source-time";
    v45 = MEMORY[0x1E696AD98];
    [v62 startItemSourceTime];
    v46 = [v45 numberWithDouble:?];
    v79[2] = v46;
    v78[3] = @"transition-outgoing-item-target-time";
    v47 = MEMORY[0x1E696AD98];
    [v62 startItemTargetTime];
    v48 = [v47 numberWithDouble:?];
    v79[3] = v48;
    v78[4] = @"incoming-item-section-id";
    queueSectionID4 = [v64 queueSectionID];
    v79[4] = queueSectionID4;
    v78[5] = @"incoming-item-id";
    queueItemID3 = [v64 queueItemID];
    v79[5] = queueItemID3;
    v78[6] = @"transition-incoming-item-source-time";
    v51 = MEMORY[0x1E696AD98];
    [v62 endItemSourceTime];
    v52 = [v51 numberWithDouble:?];
    v79[6] = v52;
    v78[7] = @"transition-incoming-item-target-time";
    v53 = MEMORY[0x1E696AD98];
    [v62 endItemTargetTime];
    v54 = [v53 numberWithDouble:?];
    v79[7] = v54;
    v78[8] = @"transition-type";
    v55 = [MEMORY[0x1E696AD98] numberWithInteger:1];
    v79[8] = v55;
    v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:9];
    *&time.timescale = vaddq_s64(v67, vdupq_n_s64(1uLL));
    time.value = value;
    v83 = v66;
    *v84 = v29 + 0.000000001;
    [eventStream2 emitEventType:@"transition-did-end" payload:v56 atTime:&time];
  }
}

- (void)overlappedPlaybackWillBeginFrom:(id)from to:(id)to transitionTime:(id)time transitionType:(int64_t)type timeStamp:(id)stamp
{
  v104 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  timeCopy = time;
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  v85 = fromCopy;
  v17 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:fromCopy];
  v84 = toCopy;
  v18 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:toCopy];
  if (_os_feature_enabled_impl())
  {
    [v17 setInOverlappedTransition:1];
    [v18 setInOverlappedTransition:1];
  }

  v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    [timeCopy startItemSourceTime];
    v21 = v20;
    [timeCopy endItemSourceTime];
    v23 = v22;
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544898;
    *(&time.value + 4) = engineID;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v96 = *&v85;
    *v97 = 2048;
    *&v97[2] = v21;
    v98 = 2114;
    v99 = toCopy;
    v100 = 2048;
    v101 = v23;
    v102 = 2114;
    v103 = v24;
    _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - overlappedPlaybackWillBegin - %{public}@ [%3.2fs] -> %{public}@ [%3.2fs] - timeStamp:%{public}@", &time, 0x48u);
  }

  v25 = stampCopy;
  v26 = v25;
  if (v25)
  {
    [v25 hostTime];
    if ((v89 & 0x100000000) != 0)
    {
      [v26 hostTime];
      MPCPlaybackEngineEventMonotonicTimeWithHostTime(&v87, &time);
      goto LABEL_13;
    }
  }

  else
  {
    v88 = 0;
    v89 = 0;
    v90 = 0;
  }

  MPCPlaybackEngineEventGetMonotonicTime(&time);
LABEL_13:
  timeCopy2 = time;
  v79 = v96;
  [v26 userSecondsSinceReferenceDate];
  v28 = v27;
  v78 = engineID;
  v81 = v26;

  typeCopy = type;
  v82 = v18;
  v83 = playbackEngine;
  if (type == 1)
  {
    bookmarker = [(_MPCPlaybackEnginePlayer *)self bookmarker];
    [bookmarker itemTransitionWillBeginFrom:v85 to:toCopy type:1 timeStamp:v81];

    eventStream = [playbackEngine eventStream];
    v93[0] = @"outgoing-item-section-id";
    queueSectionID = [v17 queueSectionID];
    v94[0] = queueSectionID;
    v93[1] = @"outgoing-item-id";
    queueItemID = [v17 queueItemID];
    v94[1] = queueItemID;
    v93[2] = @"transition-outgoing-item-source-time";
    v31 = MEMORY[0x1E696AD98];
    [timeCopy startItemSourceTime];
    v72 = [v31 numberWithDouble:?];
    v94[2] = v72;
    v93[3] = @"transition-outgoing-item-target-time";
    v32 = MEMORY[0x1E696AD98];
    [timeCopy startItemTargetTime];
    v71 = [v32 numberWithDouble:?];
    v94[3] = v71;
    v93[4] = @"incoming-item-section-id";
    queueSectionID2 = [v18 queueSectionID];
    v94[4] = queueSectionID2;
    v93[5] = @"incoming-item-id";
    queueItemID2 = [v18 queueItemID];
    v94[5] = queueItemID2;
    v93[6] = @"transition-incoming-item-source-time";
    v35 = MEMORY[0x1E696AD98];
    [timeCopy endItemSourceTime];
    v36 = [v35 numberWithDouble:?];
    v94[6] = v36;
    v93[7] = @"transition-incoming-item-target-time";
    v37 = MEMORY[0x1E696AD98];
    [timeCopy endItemTargetTime];
    v38 = [v37 numberWithDouble:?];
    v94[7] = v38;
    v93[8] = @"transition-type";
    v39 = [MEMORY[0x1E696AD98] numberWithInteger:1];
    v93[9] = @"transition-average-rate";
    v94[8] = v39;
    v94[9] = &unk_1F45993D0;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:10];
    v41 = v40 = v17;
    v42.i64[0] = -1;
    v42.i64[1] = -1;
    *&time.timescale = vaddq_s64(*&timeCopy2.timescale, v42);
    time.value = timeCopy2.value;
    v96 = v79;
    *v97 = v28 + -0.000000001;
    [eventStream emitEventType:@"transition-will-start" payload:v41 atTime:&time];

    v17 = v40;
    v18 = v82;

    playbackEngine = v83;
    [(_MPCPlaybackEnginePlayer *)self donateMetricsForTransitionWillStartFrom:v85 to:toCopy transitionProvided:1];
  }

  v74 = v17;
  eventStream2 = [playbackEngine eventStream];
  v91[0] = @"outgoing-item-section-id";
  queueSectionID3 = [v17 queueSectionID];
  v92[0] = queueSectionID3;
  v91[1] = @"outgoing-item-id";
  queueItemID3 = [v17 queueItemID];
  v92[1] = queueItemID3;
  v91[2] = @"transition-outgoing-item-source-time";
  v45 = MEMORY[0x1E696AD98];
  [timeCopy startItemSourceTime];
  v46 = [v45 numberWithDouble:?];
  v92[2] = v46;
  v91[3] = @"transition-outgoing-item-target-time";
  v47 = MEMORY[0x1E696AD98];
  [timeCopy startItemTargetTime];
  v48 = [v47 numberWithDouble:?];
  v92[3] = v48;
  v91[4] = @"incoming-item-section-id";
  queueSectionID4 = [v18 queueSectionID];
  v92[4] = queueSectionID4;
  v91[5] = @"incoming-item-id";
  queueItemID4 = [v18 queueItemID];
  v92[5] = queueItemID4;
  v91[6] = @"transition-incoming-item-source-time";
  v51 = MEMORY[0x1E696AD98];
  [timeCopy endItemSourceTime];
  v52 = [v51 numberWithDouble:?];
  v92[6] = v52;
  v91[7] = @"transition-incoming-item-target-time";
  v53 = MEMORY[0x1E696AD98];
  [timeCopy endItemTargetTime];
  v54 = [v53 numberWithDouble:?];
  v92[7] = v54;
  v91[8] = @"transition-type";
  v55 = [MEMORY[0x1E696AD98] numberWithInteger:typeCopy];
  v92[8] = v55;
  v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:9];
  time = timeCopy2;
  v96 = v79;
  *v97 = v28;
  [eventStream2 emitEventType:@"overlapped-playback-will-start" payload:v56 atTime:&time];

  v57 = v74;
  if (MSVDeviceOSIsInternalInstall())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = v57;
      if ([v58 durationIsValid] && objc_msgSend(v58, "isAssetLoaded"))
      {
        playerItem = [v58 playerItem];
        v60 = playerItem;
        if (playerItem)
        {
          [playerItem duration];
          Seconds = CMTimeGetSeconds(&time);
          [v60 advanceTimeForOverlappedPlayback];
        }

        else
        {
          memset(&time, 0, sizeof(time));
          Seconds = CMTimeGetSeconds(&time);
          memset(&time, 0, sizeof(time));
        }

        v62 = CMTimeGetSeconds(&time);
        if (v62 >= Seconds)
        {
          v63 = Seconds;
        }

        else
        {
          v63 = v62;
        }

        if (v62 > 0.0)
        {
          v64 = v63;
        }

        else
        {
          v64 = Seconds;
        }

        if (v60)
        {
          [v60 currentTime];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        v65 = CMTimeGetSeconds(&time);
        if (v64 > 15.0 && v64 - v65 > 15.0 && (v64 - v65) / Seconds > 0.1)
        {
          if ([v58 isHLSAsset] && objc_msgSend(v58, "_removeLocalAssetFileIfPossible"))
          {
            v66 = _MPCLogCategoryPlayback();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(time.value) = 138543874;
              *(&time.value + 4) = v58;
              LOWORD(time.flags) = 2048;
              *(&time.flags + 2) = v65;
              HIWORD(time.epoch) = 2048;
              v96 = v64;
              _os_log_impl(&dword_1C5C61000, v66, OS_LOG_TYPE_DEFAULT, "%{public}@: Removed corrupted local asset because item ended earlier than expected endTime=%0.2f expectedEndTime=%0.2f", &time, 0x20u);
            }
          }

          else
          {
            v67 = _MPCLogCategoryPlayback();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              LODWORD(time.value) = 138543874;
              *(&time.value + 4) = v58;
              LOWORD(time.flags) = 2048;
              *(&time.flags + 2) = v65;
              HIWORD(time.epoch) = 2048;
              v96 = v64;
              _os_log_impl(&dword_1C5C61000, v67, OS_LOG_TYPE_ERROR, "%{public}@: Item ended earlier than expected endTime=%0.2f expectedEndTime=%0.2f", &time, 0x20u);
            }

            v68 = MEMORY[0x1E69B13D8];
            v69 = *MEMORY[0x1E69B1340];
            v66 = [v58 description];
            time.value = v66;
            v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:&time count:1];
            [v68 snapshotWithDomain:v69 type:@"Bug" subType:@"ItemEnd" context:@"Item ended earlier than expected" triggerThresholdValues:0 events:v70 completion:0];
          }
        }
      }
    }
  }
}

- (void)smartTransitionDidEndFrom:(id)from to:(id)to transitionTime:(id)time timeStamp:(id)stamp
{
  v85 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  timeCopy = time;
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  v16 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:fromCopy];
  v17 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:toCopy];
  if ([v16 isInOverlappedTransition])
  {
    [v16 _willBeRemovedFromPlayer];
  }

  [v16 setInOverlappedTransition:0];
  [v17 setInOverlappedTransition:0];
  [v16 setInSmartTransition:0];
  v67 = v17;
  [v17 setInSmartTransition:0];
  v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    [timeCopy startItemSourceTime];
    v20 = v19;
    [timeCopy endItemSourceTime];
    v22 = v21;
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544898;
    *(&time.value + 4) = engineID;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v77 = fromCopy;
    *v78 = 2048;
    *&v78[2] = v20;
    v79 = 2114;
    v80 = toCopy;
    v81 = 2048;
    v82 = v22;
    v83 = 2114;
    v84 = v23;
    _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - smartTransitionDidEnd - %{public}@ [%3.2fs] -> %{public}@ [%3.2fs] - timeStamp:%{public}@", &time, 0x48u);
  }

  bookmarker = [(_MPCPlaybackEnginePlayer *)self bookmarker];
  [stampCopy time];
  [bookmarker itemSmartTransitionDidEnd:toCopy time:?];

  v25 = stampCopy;
  v26 = v25;
  v62 = toCopy;
  v63 = fromCopy;
  v61 = engineID;
  if (!v25)
  {
    v69 = 0;
    v70 = 0;
    v71 = 0;
    goto LABEL_12;
  }

  [v25 hostTime];
  if ((v70 & 0x100000000) == 0)
  {
LABEL_12:
    MPCPlaybackEngineEventGetMonotonicTime(&time);
    goto LABEL_13;
  }

  [v26 hostTime];
  MPCPlaybackEngineEventMonotonicTimeWithHostTime(&v68, &time);
LABEL_13:
  timeCopy2 = time;
  v65 = v77;
  [v26 userSecondsSinceReferenceDate];
  v28 = v27;

  eventStream = [playbackEngine eventStream];
  v74[0] = @"outgoing-item-section-id";
  queueSectionID = [v16 queueSectionID];
  v75[0] = queueSectionID;
  v74[1] = @"outgoing-item-id";
  [v16 queueItemID];
  v56 = v64 = v16;
  v75[1] = v56;
  v74[2] = @"transition-outgoing-item-source-time";
  v60 = v26;
  v29 = MEMORY[0x1E696AD98];
  [timeCopy startItemSourceTime];
  v30 = [v29 numberWithDouble:?];
  v75[2] = v30;
  v74[3] = @"transition-outgoing-item-target-time";
  v31 = MEMORY[0x1E696AD98];
  [timeCopy startItemTargetTime];
  v32 = [v31 numberWithDouble:?];
  v75[3] = v32;
  v74[4] = @"incoming-item-section-id";
  queueSectionID2 = [v67 queueSectionID];
  v75[4] = queueSectionID2;
  v74[5] = @"incoming-item-id";
  queueItemID = [v67 queueItemID];
  v75[5] = queueItemID;
  v74[6] = @"transition-incoming-item-source-time";
  v35 = MEMORY[0x1E696AD98];
  [timeCopy endItemSourceTime];
  v36 = [v35 numberWithDouble:?];
  v75[6] = v36;
  v74[7] = @"transition-incoming-item-target-time";
  v59 = playbackEngine;
  v37 = timeCopy;
  v38 = MEMORY[0x1E696AD98];
  [v37 endItemTargetTime];
  v39 = [v38 numberWithDouble:?];
  v74[8] = @"transition-type";
  v75[7] = v39;
  v75[8] = &unk_1F45993B8;
  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:9];
  v41.i64[0] = -1;
  v41.i64[1] = -1;
  *&time.timescale = vaddq_s64(*&timeCopy2.timescale, v41);
  time.value = timeCopy2.value;
  v77 = v65;
  *v78 = v28 + -0.000000001;
  [eventStream emitEventType:@"overlapped-playback-did-end" payload:v40 atTime:&time];

  eventStream2 = [playbackEngine eventStream];
  v72[0] = @"outgoing-item-section-id";
  queueSectionID3 = [v64 queueSectionID];
  v73[0] = queueSectionID3;
  v72[1] = @"outgoing-item-id";
  queueItemID2 = [v64 queueItemID];
  v73[1] = queueItemID2;
  v72[2] = @"transition-outgoing-item-source-time";
  v44 = MEMORY[0x1E696AD98];
  [v37 startItemSourceTime];
  v45 = [v44 numberWithDouble:?];
  v73[2] = v45;
  v72[3] = @"transition-outgoing-item-target-time";
  v46 = MEMORY[0x1E696AD98];
  [v37 startItemTargetTime];
  v47 = [v46 numberWithDouble:?];
  v73[3] = v47;
  v72[4] = @"incoming-item-section-id";
  queueSectionID4 = [v67 queueSectionID];
  v73[4] = queueSectionID4;
  v72[5] = @"incoming-item-id";
  queueItemID3 = [v67 queueItemID];
  v73[5] = queueItemID3;
  v72[6] = @"transition-incoming-item-source-time";
  v50 = MEMORY[0x1E696AD98];
  [v37 endItemSourceTime];
  v51 = [v50 numberWithDouble:?];
  v73[6] = v51;
  v72[7] = @"transition-incoming-item-target-time";
  v52 = MEMORY[0x1E696AD98];
  [v37 endItemTargetTime];
  v53 = [v52 numberWithDouble:?];
  v72[8] = @"transition-type";
  v73[7] = v53;
  v73[8] = &unk_1F45993B8;
  v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:9];
  time = timeCopy2;
  v77 = v65;
  *v78 = v28;
  [eventStream2 emitEventType:@"transition-did-end" payload:v54 atTime:&time];
}

- (void)overlappingTransitionDidReachPivotPointFrom:(id)from to:(id)to transitionTime:(id)time incomingItemAveragePostPivotTransitionRate:(double)rate transitionType:(int64_t)type timeStamp:(id)stamp
{
  v72 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  timeCopy = time;
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  v56 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:fromCopy];
  v53 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:toCopy];
  v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    [timeCopy startItemSourceTime];
    v21 = v20;
    [timeCopy endItemSourceTime];
    v23 = v22;
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(time, 0, 24);
    }

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(time)];
    *time = 138544898;
    *&time[4] = engineID;
    *&time[12] = 2114;
    *&time[14] = self;
    *&time[22] = 2114;
    *&time[24] = fromCopy;
    *v65 = 2048;
    *&v65[2] = v21;
    v66 = 2114;
    v67 = toCopy;
    v68 = 2048;
    v69 = v23;
    v70 = 2114;
    v71 = v24;
    _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - overlappingTransitionDidReachPivotPoint - %{public}@ [%3.2fs] -> %{public}@ [%3.2fs] - timeStamp:%{public}@", time, 0x48u);
  }

  v54 = engineID;

  bookmarker = [(_MPCPlaybackEnginePlayer *)self bookmarker];
  [stampCopy time];
  [bookmarker itemTransitionDidReachPivotPoint:fromCopy to:toCopy incomingItemAveragePostPivotTransitionRate:rate time:v26];

  v27 = stampCopy;
  v28 = v27;
  v55 = toCopy;
  if (!v27)
  {
    v59 = 0;
    v60 = 0;
    v61 = 0;
    goto LABEL_10;
  }

  [v27 hostTime];
  if ((v60 & 0x100000000) == 0)
  {
LABEL_10:
    MPCPlaybackEngineEventGetMonotonicTime(time);
    goto LABEL_11;
  }

  [v28 hostTime];
  MPCPlaybackEngineEventMonotonicTimeWithHostTime(&v57, time);
LABEL_11:
  v57 = *time;
  v58 = *&time[16];
  [v28 userSecondsSinceReferenceDate];
  v30 = v29;

  eventStream = [playbackEngine eventStream];
  v62[0] = @"outgoing-item-section-id";
  v51 = v28;
  queueSectionID = [v56 queueSectionID];
  v63[0] = queueSectionID;
  v62[1] = @"outgoing-item-id";
  queueItemID = [v56 queueItemID];
  v63[1] = queueItemID;
  v62[2] = @"transition-outgoing-item-source-time";
  v32 = MEMORY[0x1E696AD98];
  [timeCopy startItemSourceTime];
  v48 = [v32 numberWithDouble:?];
  v63[2] = v48;
  v62[3] = @"transition-outgoing-item-target-time";
  v33 = MEMORY[0x1E696AD98];
  [timeCopy startItemTargetTime];
  v34 = [v33 numberWithDouble:?];
  v63[3] = v34;
  v62[4] = @"incoming-item-section-id";
  queueSectionID2 = [v53 queueSectionID];
  v63[4] = queueSectionID2;
  v62[5] = @"incoming-item-id";
  queueItemID2 = [v53 queueItemID];
  v63[5] = queueItemID2;
  v62[6] = @"transition-incoming-item-source-time";
  v37 = MEMORY[0x1E696AD98];
  [timeCopy endItemSourceTime];
  v38 = [v37 numberWithDouble:?];
  v39 = timeCopy;
  v47 = timeCopy;
  v40 = v38;
  v63[6] = v38;
  v62[7] = @"transition-incoming-item-target-time";
  v41 = MEMORY[0x1E696AD98];
  [v39 endItemTargetTime];
  [v41 numberWithDouble:?];
  v42 = v46 = playbackEngine;
  v63[7] = v42;
  v62[8] = @"transition-type";
  v43 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v63[8] = v43;
  v62[9] = @"transition-average-rate";
  v44 = [MEMORY[0x1E696AD98] numberWithDouble:rate];
  v63[9] = v44;
  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:10];
  *time = v57;
  *&time[16] = v58;
  *v65 = v30;
  [eventStream emitEventType:@"transition-did-reach-pivot-point" payload:v45 atTime:time];
}

- (void)smartTransitionWillBeginFrom:(id)from to:(id)to transitionTime:(id)time outgoingItemAveragePrePivotTransitionRate:(double)rate timeStamp:(id)stamp parameters:(id)parameters
{
  v76 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  timeCopy = time;
  stampCopy = stamp;
  parametersCopy = parameters;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  v20 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:fromCopy];
  v21 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:toCopy];
  [v20 setInOverlappedTransition:1];
  [v21 setInOverlappedTransition:1];
  v60 = v20;
  [v20 setInSmartTransition:1];
  v54 = v21;
  [v21 setInSmartTransition:1];
  v22 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    [timeCopy startItemSourceTime];
    v24 = v23;
    [timeCopy endItemSourceTime];
    v26 = v25;
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(time, 0, 24);
    }

    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(time)];
    *time = 138544898;
    *&time[4] = engineID;
    *&time[12] = 2114;
    *&time[14] = self;
    *&time[22] = 2114;
    *&time[24] = fromCopy;
    *v69 = 2048;
    *&v69[2] = v24;
    v70 = 2114;
    v71 = toCopy;
    v72 = 2048;
    v73 = v26;
    v74 = 2114;
    v75 = v27;
    _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - smartTransitionWillBegin - %{public}@ [%3.2fs] -> %{public}@ [%3.2fs] - timeStamp:%{public}@", time, 0x48u);
  }

  bookmarker = [(_MPCPlaybackEnginePlayer *)self bookmarker];
  [stampCopy time];
  [bookmarker itemSmartTransitionWillBeginFrom:fromCopy outgoingItemAveragePrePivotTransitionRate:rate time:v29];

  v30 = stampCopy;
  v31 = v30;
  v58 = toCopy;
  v59 = fromCopy;
  v56 = engineID;
  selfCopy = self;
  if (!v30)
  {
    v63 = 0;
    v64 = 0;
    v65 = 0;
    goto LABEL_10;
  }

  [v30 hostTime];
  if ((v64 & 0x100000000) == 0)
  {
LABEL_10:
    MPCPlaybackEngineEventGetMonotonicTime(time);
    goto LABEL_11;
  }

  [v31 hostTime];
  MPCPlaybackEngineEventMonotonicTimeWithHostTime(&v61, time);
LABEL_11:
  v61 = *time;
  v62 = *&time[16];
  [v31 userSecondsSinceReferenceDate];
  v33 = v32;

  eventStream = [playbackEngine eventStream];
  v66[0] = @"outgoing-item-section-id";
  queueSectionID = [v60 queueSectionID];
  v67[0] = queueSectionID;
  v66[1] = @"outgoing-item-id";
  queueItemID = [v60 queueItemID];
  v67[1] = queueItemID;
  v66[2] = @"transition-outgoing-item-source-time";
  v53 = v31;
  v34 = MEMORY[0x1E696AD98];
  [timeCopy startItemSourceTime];
  v50 = [v34 numberWithDouble:?];
  v67[2] = v50;
  v66[3] = @"transition-outgoing-item-target-time";
  v35 = MEMORY[0x1E696AD98];
  [timeCopy startItemTargetTime];
  v36 = [v35 numberWithDouble:?];
  v67[3] = v36;
  v66[4] = @"incoming-item-section-id";
  [v54 queueSectionID];
  v38 = v37 = timeCopy;
  v67[4] = v38;
  v66[5] = @"incoming-item-id";
  queueItemID2 = [v54 queueItemID];
  v67[5] = queueItemID2;
  v66[6] = @"transition-incoming-item-source-time";
  v40 = MEMORY[0x1E696AD98];
  [v37 endItemSourceTime];
  v41 = [v40 numberWithDouble:?];
  v67[6] = v41;
  v66[7] = @"transition-incoming-item-target-time";
  v42 = MEMORY[0x1E696AD98];
  [v37 endItemTargetTime];
  v43 = [v42 numberWithDouble:?];
  v67[7] = v43;
  v67[8] = &unk_1F45993B8;
  v66[8] = @"transition-type";
  v66[9] = @"transition-average-rate";
  v44 = [MEMORY[0x1E696AD98] numberWithDouble:rate];
  v67[9] = v44;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:10];
  v45 = v48 = playbackEngine;
  *time = v61;
  *&time[16] = v62;
  *v69 = v33;
  [eventStream emitEventType:@"transition-will-start" payload:v45 atTime:time];

  v46 = [parametersCopy objectForKeyedSubscript:@"transitionProvided"];

  integerValue = [v46 integerValue];
  [(_MPCPlaybackEnginePlayer *)selfCopy donateMetricsForTransitionWillStartFrom:v59 to:v58 transitionProvided:integerValue];
}

- (void)itemDidResignCurrent:(id)current source:(int64_t)source timeStamp:(id)stamp
{
  v27 = *MEMORY[0x1E69E9840];
  currentCopy = current;
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  v13 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:currentCopy];
  if (!v13)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCPlaybackEnginePlayer.m" lineNumber:1121 description:{@"Invalid parameter not satisfying: %@", @"queueItem != nil"}];
  }

  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [MFDescription forItemChangeSource:source];
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544386;
    *(&time.value + 4) = engineID;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v22 = v13;
    v23 = 2114;
    v24 = v15;
    v25 = 2114;
    v26 = v16;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - itemDidResignCurrent - %{public}@ [Source: %{public}@] - timeStamp:%{public}@", &time, 0x34u);
  }

  if (source == 1)
  {
    [v13 _didResignActivePlayerItem];
    queueController = [playbackEngine queueController];
    music = [queueController music];
    if ([music repeatType] == 1)
    {

      goto LABEL_15;
    }

    isInOverlappedTransition = [v13 isInOverlappedTransition];

    if ((isInOverlappedTransition & 1) == 0)
    {
      queueController = [(_MPCPlaybackEnginePlayer *)self translator];
      [queueController setMPAVItem:0 forMFPlayerItem:currentCopy];
      goto LABEL_15;
    }
  }

  else if (!source)
  {
    queueController = [playbackEngine queueController];
    [queueController playerItemDidResignCurrent:v13];
LABEL_15:
  }
}

- (void)itemDidBecomeCurrent:(id)current source:(int64_t)source timeStamp:(id)stamp
{
  v75 = *MEMORY[0x1E69E9840];
  currentCopy = current;
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  if (currentCopy)
  {
    v13 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:currentCopy];
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v65 = a2;
      v15 = engineID;
      v16 = [MFDescription forItemChangeSource:source];
      if (stampCopy)
      {
        [stampCopy hostTime];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
      LODWORD(time.value) = 138544386;
      *(&time.value + 4) = v15;
      LOWORD(time.flags) = 2114;
      *(&time.flags + 2) = self;
      HIWORD(time.epoch) = 2114;
      v70 = v13;
      v71 = 2114;
      v72 = v16;
      v73 = 2114;
      v74 = v21;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - itemDidBecomeCurrent - %{public}@ [Source: %{public}@] - timeStamp:%{public}@", &time, 0x34u);

      engineID = v15;
      a2 = v65;
    }

    if (source != 1)
    {
      goto LABEL_23;
    }

    translator = [(_MPCPlaybackEnginePlayer *)self translator];
    [translator setMPAVItem:v13 forMFPlayerItem:currentCopy];

    [v13 _didBecomeActivePlayerItem];
    configurator = [(_MPCPlaybackEnginePlayer *)self configurator];
    [configurator updatePlayerConfiguration];

    leaseManager = [playbackEngine leaseManager];
    [leaseManager prepareForCurrentItemPlayback];

    playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    [playbackStackController targetRate];
    v27 = v26;

    queueController = [playbackEngine queueController];
    behaviorType = [queueController behaviorType];

    if (behaviorType == 4)
    {
      if (([v13 conformsToProtocol:&unk_1F459C8B8] & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCPlaybackEnginePlayer.m" lineNumber:1066 description:@"Item does not conform to _MPCPodcastAVItemProvidingProtocol!"];
      }

      [v13 preferredPlaybackRate];
      v27 = v30;
    }

    playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v32 = v27;
    if ([playbackStackController2 currentState] != 1)
    {
      playbackStackController3 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
      [playbackStackController3 rate];
      v32 = v34;
    }

    *&v35 = v32;
    [v13 prepareForRate:&__block_literal_global_153 completionHandler:v35];
    playbackStackController4 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    [playbackStackController4 rate];
    if (v27 != v37)
    {
      queueController2 = [playbackEngine queueController];
      behaviorType2 = [queueController2 behaviorType];

      if (behaviorType2 != 4)
      {
LABEL_23:
        bookmarker = [(_MPCPlaybackEnginePlayer *)self bookmarker];
        [stampCopy time];
        v43 = v42;
        playbackStackController5 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
        [playbackStackController5 effectiveRate];
        LODWORD(v46) = v45;
        [bookmarker itemDidBecomeCurrent:currentCopy time:v43 rate:v46];

        if (!source)
        {
          queueController3 = [playbackEngine queueController];
          [queueController3 playerItemDidBecomeCurrent:v13];

          queueController4 = [playbackEngine queueController];
          currentItem = [queueController4 currentItem];

          if (currentItem == v13)
          {
            eventObserver = [playbackEngine eventObserver];
            [eventObserver engine:playbackEngine didChangeToItem:v13];

            [playbackEngine schedulePlaybackStatePreservation];
          }

          else
          {
            v67[0] = @"current queuecontroller item";
            v50 = MEMORY[0x1E696AEC0];
            queueController5 = [playbackEngine queueController];
            currentItem2 = [queueController5 currentItem];
            v53 = [v50 stringWithFormat:@"%@", currentItem2];
            v67[1] = @"current player item";
            v68[0] = v53;
            v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v13];
            v68[1] = v54;
            v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:2];

            v56 = MEMORY[0x1E69B13D8];
            v57 = *MEMORY[0x1E69B1340];
            v66 = v55;
            v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
            [v56 snapshotWithDomain:v57 type:@"Bug" subType:@"itemDidBecomeCurrent" context:@"Mismatch between playback stack current item and queue controller current item" triggerThresholdValues:0 events:v58 completion:0];

            v59 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              queueController6 = [playbackEngine queueController];
              currentItem3 = [queueController6 currentItem];
              LODWORD(time.value) = 138543618;
              *(&time.value + 4) = v13;
              LOWORD(time.flags) = 2114;
              *(&time.flags + 2) = currentItem3;
              _os_log_impl(&dword_1C5C61000, v59, OS_LOG_TYPE_DEFAULT, "Mismatch between playback stack current item %{public}@ and queue controller current item %{public}@", &time, 0x16u);
            }
          }
        }

        goto LABEL_30;
      }

      playbackStackController4 = [playbackEngine player];
      *&v40 = v32;
      [playbackStackController4 setRate:@"podcastsCustomShowSettings" identifier:&__block_literal_global_158 completion:v40];
    }

    goto LABEL_23;
  }

  if (source)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_MPCPlaybackEnginePlayer.m" lineNumber:1032 description:{@"Invalid parameter not satisfying: %@", @"source == MFItemChangeSourceQueue"}];
  }

  queueController7 = [playbackEngine queueController];
  targetContentItemID = [queueController7 targetContentItemID];

  if (!targetContentItemID)
  {
    queueController8 = [playbackEngine queueController];
    [queueController8 playerItemDidBecomeCurrent:0];
  }

  eventObserver2 = [playbackEngine eventObserver];
  [eventObserver2 engine:playbackEngine didChangeToItem:0];

  [playbackEngine schedulePlaybackStatePreservation];
LABEL_30:
}

- (void)currentItemWillChangeFromItem:(id)item toItem:(id)toItem source:(int64_t)source timeStamp:(id)stamp
{
  v40 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  toItemCopy = toItem;
  stampCopy = stamp;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  if (itemCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCPlaybackEnginePlayer.m" lineNumber:986 description:{@"Invalid parameter not satisfying: %@", @"previous == nil || [(MPAVItem *)previous isKindOfClass:[MPAVItem class]]"}];

    if (!toItemCopy)
    {
      goto LABEL_6;
    }
  }

  else if (!toItemCopy)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_MPCPlaybackEnginePlayer.m" lineNumber:987 description:{@"Invalid parameter not satisfying: %@", @"current == nil || [(MPAVItem *)current isKindOfClass:[MPAVItem class]]"}];
  }

LABEL_6:
  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [MFDescription forItemChangeSource:source];
    if (stampCopy)
    {
      [stampCopy hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544642;
    *(&time.value + 4) = engineID;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v33 = itemCopy;
    v34 = 2114;
    v35 = toItemCopy;
    v36 = 2114;
    v37 = v17;
    v38 = 2114;
    v39 = v18;
    _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - currentItemWillChangeFromItem - %{public}@ -> %{public}@ [Source: %{public}@] - timeStamp:%{public}@", &time, 0x3Eu);
  }

  bookmarker = [(_MPCPlaybackEnginePlayer *)self bookmarker];
  [stampCopy time];
  [bookmarker currentItemWillChangeFromItem:itemCopy toItem:toItemCopy time:?];

  v20 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:toItemCopy];
  v21 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:itemCopy];
  v22 = v21;
  if (source == 1)
  {
    [v21 _willResignActivePlayerItem];
    if (_os_feature_enabled_impl() && ([v22 isInOverlappedTransition] & 1) == 0)
    {
      [v22 _willBeRemovedFromPlayer];
    }

    [v20 _willBecomeActivePlayerItem];
  }

  else if (!source)
  {
    playbackEngine2 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
    eventObserver = [playbackEngine2 eventObserver];
    [eventObserver engine:playbackEngine2 willChangeToItem:v20 fromItem:v22];
  }

  playbackStartTrace = [(_MPCPlaybackEnginePlayer *)self playbackStartTrace];
  item = [playbackStartTrace item];
  v27 = item;
  if (item == v20)
  {
  }

  else
  {
    v28 = [item isEqual:v20];

    if ((v28 & 1) == 0)
    {
      playbackStartTrace2 = [(_MPCPlaybackEnginePlayer *)self playbackStartTrace];
      [playbackStartTrace2 cancel];

      [(_MPCPlaybackEnginePlayer *)self setPlaybackStartTrace:0];
    }
  }
}

- (void)engine:(id)engine didChangeQueueWithReason:(id)reason
{
  v13 = [(_MPCPlaybackEnginePlayer *)self bookmarker:engine];
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [playbackStackController currentTime];
  v7 = v6;
  playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  currentItem = [playbackStackController2 currentItem];
  playbackStackController3 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [playbackStackController3 effectiveRate];
  LODWORD(v12) = v11;
  [v13 updateDurationSnapshotWithTime:currentItem forItem:v7 rate:v12];
}

- (void)engine:(id)engine didChangeQueueController:(id)controller
{
  v36 = *MEMORY[0x1E69E9840];
  engineCopy = engine;
  controllerCopy = controller;
  [(_MPCPlaybackEnginePlayer *)self setupPlaybackStackIfNeeded];
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  isModeSolo = [playbackStackController isModeSolo];

  playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  isModeShared = [playbackStackController2 isModeShared];

  musicSharePlay = [controllerCopy musicSharePlay];

  if (isModeSolo && musicSharePlay)
  {
    playbackStackController3 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    [playbackStackController3 setupForShared];
LABEL_7:

    goto LABEL_8;
  }

  if (isModeShared && !musicSharePlay)
  {
    playbackStackController3 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    [playbackStackController3 setupForSolo];
    goto LABEL_7;
  }

LABEL_8:
  translator = [(_MPCPlaybackEnginePlayer *)self translator];
  playbackCoordinator = [translator playbackCoordinator];

  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [engineCopy engineID];
    sessionID = [controllerCopy sessionID];
    musicSharePlay2 = [controllerCopy musicSharePlay];
    *buf = 138544130;
    v29 = engineID;
    v30 = 2114;
    v31 = sessionID;
    v32 = 2114;
    v33 = playbackCoordinator;
    v34 = 2114;
    v35 = musicSharePlay2;
    _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] engine:didChangeQueueController: | updating playback coordinator [new queue controller] playbackCoordinator=%{public}@ musicSharePlayBehavior=%{public}@", buf, 0x2Au);
  }

  if (musicSharePlay)
  {
    musicSharePlay3 = [controllerCopy musicSharePlay];
    [musicSharePlay3 updatePlaybackCoordinator:playbackCoordinator];
  }

  else
  {
    [playbackCoordinator setDelegate:0];
  }

  self->_jumpIdentifier = 0;
  v21 = MEMORY[0x1E696ABC0];
  sessionID2 = [controllerCopy sessionID];
  v23 = [v21 msv_errorWithDomain:@"MPCEnginePlayerError" code:8 debugDescription:{@"Cancelled to setup a new queue with sessionID %@", sessionID2}];

  errorController = [(_MPCPlaybackEnginePlayer *)self errorController];
  [errorController resetWithReason:v23];

  translator2 = [(_MPCPlaybackEnginePlayer *)self translator];
  [translator2 invalidateCache];

  playbackStackController4 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  sessionID3 = [controllerCopy sessionID];
  [playbackStackController4 setupForNewQueueWithSessionID:sessionID3];
}

- (void)engine:(id)engine willRemoveQueueController:(id)controller
{
  controllerCopy = controller;
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  sessionID = [controllerCopy sessionID];

  [playbackStackController teardownForQueueWithSessionID:sessionID];
}

- (BOOL)_itemConfigurationIsIncompatibleWithVocalAttenuationState:(id)state
{
  stateCopy = state;
  if ([stateCopy supportsVocalAttenuation])
  {
    v4 = [stateCopy isConfiguredForVocalAttenuation] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_performSkipForUserAction:(id)action
{
  v21[1] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  if ([(_MPCPlaybackEnginePlayer *)self _isAVKitSkipAction:actionCopy])
  {
    mediaRemotePublisher = [playbackEngine mediaRemotePublisher];
    commandCenter = [mediaRemotePublisher commandCenter];

    if ([actionCopy type] == 7)
    {
      [commandCenter nextTrackCommand];
    }

    else
    {
      [commandCenter previousTrackCommand];
    }
    v9 = ;
    v10 = MEMORY[0x1E69708E0];
    v20 = @"MPCRemoteCommandEventOptionSkipImmediatelyKey";
    v21[0] = MEMORY[0x1E695E118];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v12 = [v10 eventWithCommand:v9 mediaRemoteType:4 options:v11];

    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543874;
      v15 = engineID;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = actionCopy;
      _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@]-Triggering MR command %{public}@ from userAction: %{public}@", &v14, 0x20u);
    }

    [v9 invokeCommandWithEvent:v12 completion:&__block_literal_global_136];
  }
}

- (BOOL)_isAVKitSkipAction:(id)action
{
  actionCopy = action;
  if (([actionCopy type] - 7) > 1)
  {
    v5 = 0;
  }

  else
  {
    sourceID = [actionCopy sourceID];
    v5 = [sourceID isEqualToString:@"AVMusicAppBehavior"];
  }

  return v5;
}

- (void)_playbackDidStopForItem:(id)item source:(id)source reason:(id)reason time:(double)time
{
  v33 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  sourceCopy = source;
  reasonCopy = reason;
  v13 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:itemCopy];
  queueSectionID = [v13 queueSectionID];
  queueItemID = [v13 queueItemID];
  if (![queueSectionID length])
  {
    playbackEngine = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(playbackEngine, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    *buf = 138543618;
    v30 = itemCopy;
    v31 = 2114;
    v32 = queueSectionID;
    v25 = "Unexpected _playbackDidStopForItem: without sectionID: %{public}@ %{public}@";
LABEL_10:
    _os_log_impl(&dword_1C5C61000, playbackEngine, OS_LOG_TYPE_FAULT, v25, buf, 0x16u);
    goto LABEL_11;
  }

  if (![queueItemID length])
  {
    playbackEngine = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(playbackEngine, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    *buf = 138543618;
    v30 = itemCopy;
    v31 = 2114;
    v32 = queueItemID;
    v25 = "Unexpected _playbackDidStopForItem: without itemID: %{public}@ %{public}@";
    goto LABEL_10;
  }

  bookmarker = [(_MPCPlaybackEnginePlayer *)self bookmarker];
  [bookmarker playbackDidStopForItem:itemCopy time:time];

  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  eventStream = [playbackEngine eventStream];
  v27[0] = @"queue-section-id";
  v27[1] = @"queue-item-id";
  v28[0] = queueSectionID;
  v28[1] = queueItemID;
  v27[2] = @"item-end-position";
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:time];
  v28[2] = v19;
  v28[3] = reasonCopy;
  v27[3] = @"item-rate-change-reason";
  v27[4] = @"item-rate-change-source";
  v26 = sourceCopy;
  v28[4] = sourceCopy;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:5];
  [eventStream emitEventType:@"item-pause" payload:v20];

  eventObserver = [playbackEngine eventObserver];
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [playbackStackController rate];
  LODWORD(v24) = v23;
  [eventObserver engine:playbackEngine didChangeItemElapsedTime:time rate:v24];

  if ([reasonCopy isEqualToString:@"end of queue reached"])
  {
    [v13 setInitialPlaybackStartTimeOverride:0];
  }

  sourceCopy = v26;
LABEL_11:
}

- (id)_MPAVItemForMFQueuePlayerItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCPlaybackEnginePlayer.m" lineNumber:833 description:{@"Invalid parameter not satisfying: %@", @"item == nil || [(MPAVItem *)item isKindOfClass:[MPAVItem class]]"}];
    }
  }

  v6 = itemCopy;
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [v6 setCurrentItemTransition:{objc_msgSend(playbackStackController, "currentItemTransition")}];

  return v6;
}

- (void)_logTimeJumpForItem:(id)item fromTime:(double)time toTime:(double)toTime userInitiated:(BOOL)initiated timeStamp:(id)stamp
{
  initiatedCopy = initiated;
  v56 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  stampCopy = stamp;
  if (initiatedCopy)
  {
    goto LABEL_5;
  }

  v14 = time - toTime;
  if (time - toTime < 0.0)
  {
    v14 = -(time - toTime);
  }

  if (v14 > 0.25)
  {
LABEL_5:
    playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
    engineID = [playbackEngine engineID];
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = playbackEngine;
      jumpIdentifier = self->_jumpIdentifier;
      if (stampCopy)
      {
        [stampCopy hostTime];
      }

      else
      {
        memset(time, 0, 24);
      }

      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(time)];
      *time = 138545154;
      *&time[4] = engineID;
      *&time[12] = 2114;
      *&time[14] = self;
      *&time[22] = 2048;
      *&time[24] = jumpIdentifier;
      LOWORD(v48) = 1024;
      *(&v48 + 2) = initiatedCopy;
      HIWORD(v48) = 2048;
      timeCopy = time;
      v50 = 2048;
      toTimeCopy = toTime;
      v52 = 2048;
      v53 = toTime - time;
      v54 = 2114;
      v55 = v20;
      _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - _logTimeJumpForItem - jumpIdentifier: %ld - userInitiated:%{BOOL}u - %.2fs -> %.2fs [D:%.2fs]- timeStamp:%{public}@", time, 0x4Eu);

      playbackEngine = v18;
    }

    v21 = stampCopy;
    v22 = v21;
    v39 = engineID;
    if (v21)
    {
      [v21 hostTime];
      if ((v43 & 0x100000000) != 0)
      {
        [v22 hostTime];
        MPCPlaybackEngineEventMonotonicTimeWithHostTime(&v40, time);
        goto LABEL_15;
      }
    }

    else
    {
      v42 = 0;
      v43 = 0;
      v44 = 0;
    }

    MPCPlaybackEngineEventGetMonotonicTime(time);
LABEL_15:
    v40 = *time;
    v41 = *&time[16];
    [v22 userSecondsSinceReferenceDate];
    v24 = v23;

    v25 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:itemCopy];
    queueSectionID = [v25 queueSectionID];
    queueItemID = [v25 queueItemID];
    if ([queueSectionID length])
    {
      if ([queueItemID length])
      {
        [playbackEngine eventStream];
        v35 = v37 = stampCopy;
        v45[0] = @"queue-section-id";
        v45[1] = @"queue-item-id";
        v46[0] = queueSectionID;
        v46[1] = queueItemID;
        v45[2] = @"item-start-position";
        [MEMORY[0x1E696AD98] numberWithDouble:time];
        v36 = v38 = itemCopy;
        v46[2] = v36;
        v45[3] = @"item-end-position";
        v28 = [MEMORY[0x1E696AD98] numberWithDouble:toTime];
        v46[3] = v28;
        v45[4] = @"item-jump-user-initiated";
        v29 = [MEMORY[0x1E696AD98] numberWithBool:initiatedCopy];
        v46[4] = v29;
        v45[5] = @"item-jump-identifier";
        v30 = [MEMORY[0x1E696AD98] numberWithInteger:self->_jumpIdentifier];
        v46[5] = v30;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:6];
        v32 = v31 = playbackEngine;
        *time = v40;
        *&time[16] = v41;
        v48 = v24;
        [v35 emitEventType:@"item-position-jump" payload:v32 atTime:time];

        playbackEngine = v31;
        itemCopy = v38;

        stampCopy = v37;
        ++self->_jumpIdentifier;
LABEL_24:

        goto LABEL_25;
      }

      v33 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        *time = 138543618;
        *&time[4] = itemCopy;
        *&time[12] = 2114;
        *&time[14] = queueItemID;
        v34 = "Unexpected _logTimeJumpForItem: without itemID: %{public}@ %{public}@";
        goto LABEL_22;
      }
    }

    else
    {
      v33 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        *time = 138543618;
        *&time[4] = itemCopy;
        *&time[12] = 2114;
        *&time[14] = queueSectionID;
        v34 = "Unexpected _logTimeJumpForItem: without sectionID: %{public}@ %{public}@";
LABEL_22:
        _os_log_impl(&dword_1C5C61000, v33, OS_LOG_TYPE_FAULT, v34, time, 0x16u);
      }
    }

    goto LABEL_24;
  }

LABEL_25:
}

- (NSDictionary)_stateDictionary
{
  v30[7] = *MEMORY[0x1E69E9840];
  v29[0] = @"playbackState";
  v3 = MEMORY[0x1E696AD98];
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v27 = [v3 numberWithInteger:{objc_msgSend(playbackStackController, "currentState")}];
  v30[0] = v27;
  v29[1] = @"currentItem";
  playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  currentItem = [playbackStackController2 currentItem];
  v5 = currentItem;
  if (currentItem)
  {
    v6 = currentItem;
  }

  else
  {
    v6 = @"@";
  }

  v30[1] = v6;
  v29[2] = @"currentRate";
  v7 = MEMORY[0x1E696AD98];
  playbackStackController3 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [playbackStackController3 rate];
  v24 = [v7 numberWithFloat:?];
  v30[2] = v24;
  v29[3] = @"currentTime";
  v8 = MEMORY[0x1E696AD98];
  playbackStackController4 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [playbackStackController4 currentTime];
  v10 = [v8 numberWithDouble:?];
  v30[3] = v10;
  v29[4] = @"targetRate";
  v11 = MEMORY[0x1E696AD98];
  playbackStackController5 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [playbackStackController5 targetRate];
  v13 = [v11 numberWithFloat:?];
  v30[4] = v13;
  v29[5] = @"MediaFoundationStack";
  playbackStackController6 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  stateDictionary = [playbackStackController6 stateDictionary];
  v16 = stateDictionary;
  if (stateDictionary)
  {
    v17 = stateDictionary;
  }

  else
  {
    v17 = @"@";
  }

  v30[5] = v17;
  v29[6] = @"engineID";
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  v20 = engineID;
  v21 = @"N/A";
  if (engineID)
  {
    v21 = engineID;
  }

  v30[6] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:7];

  return v22;
}

- (void)_setupPlaybackStackWithPlaybackEngine:(id)engine
{
  engineCopy = engine;
  v5 = +[MPCPlaybackEngine isSystemPodcasts];
  if (v5)
  {
    standardUserDefaults = objc_alloc_init(MFPodcastsPlaybackDefaults);
  }

  else
  {
    standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
  }

  v7 = standardUserDefaults;
  v8 = v5;
  queueTranslator = [engineCopy queueTranslator];
  translator = self->_translator;
  self->_translator = queueTranslator;

  if (!self->_translator)
  {
    v11 = [[MPCMediaFoundationTranslator alloc] initWithPlaybackEngine:engineCopy];
    v12 = self->_translator;
    self->_translator = v11;
  }

  v13 = [[MPCAssetLoader alloc] initWithDelegate:self];
  assetLoader = self->_assetLoader;
  self->_assetLoader = v13;

  v15 = [[MPCExternalPlaybackController alloc] initWithPlaybackEngine:engineCopy translator:self->_translator];
  externalPlaybackController = self->_externalPlaybackController;
  self->_externalPlaybackController = v15;

  v17 = [[MPCPlaybackErrorController alloc] initWithPlaybackEngine:engineCopy translator:self->_translator];
  errorController = self->_errorController;
  self->_errorController = v17;

  [(MPCPlaybackErrorController *)self->_errorController setDelegate:self];
  v19 = [[MPCItemBookmarker alloc] initWithPlaybackEngine:engineCopy translator:self->_translator];
  bookmarker = self->_bookmarker;
  self->_bookmarker = v19;

  v21 = [MPCLeaseController alloc];
  v22 = self->_translator;
  leaseManager = [engineCopy leaseManager];
  v24 = [(MPCLeaseController *)v21 initWithTranslator:v22 leaseManager:leaseManager];
  leaseController = self->_leaseController;
  self->_leaseController = v24;

  v26 = [MFPlaybackStackControllerImplementation alloc];
  playerID = [engineCopy playerID];
  engineID = [engineCopy engineID];
  v29 = [(MFPlaybackStackControllerImplementation *)v26 initWithPlayerID:playerID engineID:engineID queueController:self->_translator assetLoader:self->_assetLoader errorController:self->_errorController externalPlaybackController:self->_externalPlaybackController leaseController:self->_leaseController defaults:v7 behavior:v8 queue:MEMORY[0x1E69E96A0]];
  [(_MPCPlaybackEnginePlayer *)self setPlaybackStackController:v29];

  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (!playbackStackController)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCPlaybackEnginePlayer.m" lineNumber:753 description:@"_setupPlaybackStackWithPlaybackEngine failed to create a new MFPlaybackStackController"];
  }

  playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [playbackStackController2 setDelegate:self];

  initializationParameters = [engineCopy initializationParameters];
  audioSession = [initializationParameters audioSession];

  if (audioSession)
  {
    playbackStackController3 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    initializationParameters2 = [engineCopy initializationParameters];
    audioSession2 = [initializationParameters2 audioSession];
    [playbackStackController3 setupForManagedSessionWithAudioSession:audioSession2];
  }

  playbackStackController4 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [(MPCLeaseController *)self->_leaseController setStackController:playbackStackController4];

  v38 = [MPCPlayerItemConfigurator alloc];
  playbackStackController5 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v40 = [(MPCPlayerItemConfigurator *)v38 initWithPlaybackEngine:engineCopy stackController:playbackStackController5 translator:self->_translator];
  configurator = self->_configurator;
  self->_configurator = v40;

  [(MFAssetLoading *)self->_assetLoader setConfigurator:self->_configurator];
  queueController = [engineCopy queueController];
  playbackStackController6 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  currentItem = [playbackStackController6 currentItem];
  contentItemID = [currentItem contentItemID];
  [queueController _playerItemDidBecomeActiveWithContentItemID:contentItemID];

  [(_MPCPlaybackEnginePlayer *)self updateAudioSession];
  self->_jumpIdentifier = 0;
  currentRelativeVolume = [(_MPCPlaybackEnginePlayer *)self currentRelativeVolume];

  if (currentRelativeVolume)
  {
    playbackStackController7 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    currentRelativeVolume2 = [(_MPCPlaybackEnginePlayer *)self currentRelativeVolume];
    [currentRelativeVolume2 floatValue];
    [playbackStackController7 setRelativeVolume:?];
  }

  currentIsMuted = [(_MPCPlaybackEnginePlayer *)self currentIsMuted];

  if (currentIsMuted)
  {
    playbackStackController8 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    currentIsMuted2 = [(_MPCPlaybackEnginePlayer *)self currentIsMuted];
    [playbackStackController8 setIsMuted:{objc_msgSend(currentIsMuted2, "BOOLValue")}];
  }

  playbackStackController9 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  applicationMusicPlayerTransitionType = [(_MPCPlaybackEnginePlayer *)self applicationMusicPlayerTransitionType];
  [(_MPCPlaybackEnginePlayer *)self applicationMusicPlayerCrossFadeDuration];
  [playbackStackController9 setApplicationMusicPlayerTransitionType:applicationMusicPlayerTransitionType duration:?];
}

- (BOOL)isMuted
{
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (playbackStackController)
  {
    playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    isMuted = [playbackStackController2 isMuted];
  }

  else
  {
    playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self currentIsMuted];
    if (playbackStackController2)
    {
      currentIsMuted = [(_MPCPlaybackEnginePlayer *)self currentIsMuted];
      isMuted = [currentIsMuted BOOLValue];
    }

    else
    {
      isMuted = 0;
    }
  }

  return isMuted;
}

- (void)setIsMuted:(BOOL)muted
{
  mutedCopy = muted;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [(_MPCPlaybackEnginePlayer *)self setCurrentIsMuted:v5];

  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [playbackStackController setIsMuted:mutedCopy];
}

- (float)relativeVolume
{
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (playbackStackController)
  {
    playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    [playbackStackController2 relativeVolume];
    v6 = v5;
  }

  else
  {
    playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self currentRelativeVolume];
    if (playbackStackController2)
    {
      currentRelativeVolume = [(_MPCPlaybackEnginePlayer *)self currentRelativeVolume];
      [currentRelativeVolume floatValue];
      v6 = v8;
    }

    else
    {
      v6 = 1.0;
    }
  }

  return v6;
}

- (void)setRelativeVolume:(float)volume
{
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  [(_MPCPlaybackEnginePlayer *)self setCurrentRelativeVolume:v5];

  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  *&v6 = volume;
  [playbackStackController setRelativeVolume:v6];
}

- (void)jumpToTime:(double)time identifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (playbackStackController)
  {
    playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61___MPCPlaybackEnginePlayer_jumpToTime_identifier_completion___block_invoke;
    v15[3] = &unk_1E8234CE0;
    v16 = engineID;
    v17 = identifierCopy;
    timeCopy = time;
    v18 = completionCopy;
    [playbackStackController2 jumpTo:v17 identifier:v15 completion:time];
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:60 debugDescription:{@"Playback engine stack has not been setup yet. Set a playback queue first before calling %s.", "-[_MPCPlaybackEnginePlayer jumpToTime:identifier:completion:]"}];
    (*(completionCopy + 2))(completionCopy, v14);
  }
}

- (void)setRate:(float)rate identifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (playbackStackController)
  {
    objc_initWeak(&location, self);
    playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __58___MPCPlaybackEnginePlayer_setRate_identifier_completion___block_invoke;
    v16[3] = &unk_1E8234CB8;
    objc_copyWeak(&v20, &location);
    v17 = engineID;
    v18 = identifierCopy;
    rateCopy = rate;
    v19 = completionCopy;
    *&v14 = rate;
    [playbackStackController2 setRate:v18 identifier:v16 completion:v14];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    v15 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:60 debugDescription:{@"Playback engine stack has not been setup yet. Set a playback queue first before calling %s.", "-[_MPCPlaybackEnginePlayer setRate:identifier:completion:]"}];
    (*(completionCopy + 2))(completionCopy, v15);
  }
}

- (void)endScanningWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (playbackStackController)
  {
    playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65___MPCPlaybackEnginePlayer_endScanningWithIdentifier_completion___block_invoke;
    v13[3] = &unk_1E8234C68;
    v14 = engineID;
    v15 = identifierCopy;
    v16 = completionCopy;
    [playbackStackController2 endScanningWithIdentifier:v15 completion:v13];
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:60 debugDescription:{@"Playback engine stack has not been setup yet. Set a playback queue first before calling %s.", "-[_MPCPlaybackEnginePlayer endScanningWithIdentifier:completion:]"}];
    (*(completionCopy + 2))(completionCopy, v12);
  }
}

- (void)togglePlaybackWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (!playbackStackController)
  {
    playbackStackController3 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:60 debugDescription:{@"Playback engine stack has not been setup yet. Set a playback queue first before calling %s.", "-[_MPCPlaybackEnginePlayer togglePlaybackWithIdentifier:completion:]"}];
    completionCopy[2](completionCopy, playbackStackController3);
LABEL_15:

    goto LABEL_16;
  }

  playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  currentState = [playbackStackController2 currentState];

  if (currentState > 1)
  {
    if (currentState != 2 && currentState != 7)
    {
LABEL_14:
      v27 = MEMORY[0x1E696ABC0];
      playbackStackController3 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
      v28 = +[MFDescription forPlayerState:](MFDescription, "forPlayerState:", [playbackStackController3 currentState]);
      v29 = [v27 msv_errorWithDomain:@"MPCError" code:0 underlyingError:0 debugDescription:{@"Attemping to toggle playback with incompatible state - CurrentState:%@", v28}];
      completionCopy[2](completionCopy, v29);

      goto LABEL_15;
    }
  }

  else if (currentState)
  {
    if (currentState == 1)
    {
      [(_MPCPlaybackEnginePlayer *)self endPlaybackStartCriticalSection];
      playbackStackController4 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __68___MPCPlaybackEnginePlayer_togglePlaybackWithIdentifier_completion___block_invoke;
      v38[3] = &unk_1E8234C68;
      v39 = engineID;
      v40 = identifierCopy;
      v41 = completionCopy;
      [playbackStackController4 pauseWithIdentifier:v40 completion:v38];

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  queueController = [playbackEngine queueController];
  behaviorType = [queueController behaviorType];

  v18 = 1.0;
  if (behaviorType == 4)
  {
    queueController2 = [playbackEngine queueController];
    currentItem = [queueController2 currentItem];

    if (([currentItem conformsToProtocol:&unk_1F459C8B8] & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCPlaybackEnginePlayer.m" lineNumber:594 description:@"Item does not conform to _MPCPodcastAVItemProvidingProtocol!"];
    }

    [currentItem preferredPlaybackRate];
    v18 = v21;
  }

  identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"TogglePlayback %@", identifierCopy];
  v23 = [playbackEngine takeCriticalSectionAssertion:identifierCopy];

  objc_initWeak(&location, self);
  playbackStackController5 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __68___MPCPlaybackEnginePlayer_togglePlaybackWithIdentifier_completion___block_invoke_75;
  v31[3] = &unk_1E8234C90;
  v32 = engineID;
  v33 = identifierCopy;
  objc_copyWeak(&v36, &location);
  v25 = v23;
  v34 = v25;
  v35 = completionCopy;
  *&v26 = v18;
  [playbackStackController5 playWithRate:v33 identifier:v31 completion:v26];

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);

LABEL_16:
}

- (void)pauseForLeasePreventionWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  [(_MPCPlaybackEnginePlayer *)self endPlaybackStartCriticalSection];
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (playbackStackController)
  {
    playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __77___MPCPlaybackEnginePlayer_pauseForLeasePreventionWithIdentifier_completion___block_invoke;
    v13[3] = &unk_1E8234C68;
    v14 = engineID;
    v15 = identifierCopy;
    v16 = completionCopy;
    [playbackStackController2 pauseForLeasePreventionWithIdentifier:v15 completion:v13];
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:60 debugDescription:{@"Playback engine stack has not been setup yet. Set a playback queue first before calling %s.", "-[_MPCPlaybackEnginePlayer pauseForLeasePreventionWithIdentifier:completion:]"}];
    (*(completionCopy + 2))(completionCopy, v12);
  }
}

- (void)pauseForSleepTimerWithFadeout:(double)fadeout identifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  [(_MPCPlaybackEnginePlayer *)self endPlaybackStartCriticalSection];
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (playbackStackController)
  {
    playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __80___MPCPlaybackEnginePlayer_pauseForSleepTimerWithFadeout_identifier_completion___block_invoke;
    v15[3] = &unk_1E8234C68;
    v16 = engineID;
    v17 = identifierCopy;
    v18 = completionCopy;
    [playbackStackController2 pauseForSleepTimerWithFadeOut:v17 identifier:v15 completion:fadeout];
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:60 debugDescription:{@"Playback engine stack has not been setup yet. Set a playback queue first before calling %s.", "-[_MPCPlaybackEnginePlayer pauseForSleepTimerWithFadeout:identifier:completion:]"}];
    (*(completionCopy + 2))(completionCopy, v14);
  }
}

- (void)pauseWithFadeout:(double)fadeout identifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  [(_MPCPlaybackEnginePlayer *)self endPlaybackStartCriticalSection];
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (playbackStackController)
  {
    playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67___MPCPlaybackEnginePlayer_pauseWithFadeout_identifier_completion___block_invoke;
    v15[3] = &unk_1E8234C68;
    v16 = engineID;
    v17 = identifierCopy;
    v18 = completionCopy;
    [playbackStackController2 pauseWithFadeOut:v17 identifier:v15 completion:fadeout];
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:60 debugDescription:{@"Playback engine stack has not been setup yet. Set a playback queue first before calling %s.", "-[_MPCPlaybackEnginePlayer pauseWithFadeout:identifier:completion:]"}];
    (*(completionCopy + 2))(completionCopy, v14);
  }
}

- (void)pauseWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  [(_MPCPlaybackEnginePlayer *)self endPlaybackStartCriticalSection];
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (playbackStackController)
  {
    playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59___MPCPlaybackEnginePlayer_pauseWithIdentifier_completion___block_invoke;
    v13[3] = &unk_1E8234C68;
    v14 = engineID;
    v15 = identifierCopy;
    v16 = completionCopy;
    [playbackStackController2 pauseWithIdentifier:v15 completion:v13];
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:60 debugDescription:{@"Playback engine stack has not been setup yet. Set a playback queue first before calling %s.", "-[_MPCPlaybackEnginePlayer pauseWithIdentifier:completion:]"}];
    (*(completionCopy + 2))(completionCopy, v12);
  }
}

- (void)playWithRate:(float)rate identifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (playbackStackController)
  {
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"PlayWithRate %@", identifierCopy];
    v14 = [playbackEngine takeCriticalSectionAssertion:identifierCopy];

    objc_initWeak(&location, self);
    playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63___MPCPlaybackEnginePlayer_playWithRate_identifier_completion___block_invoke;
    v19[3] = &unk_1E8234C90;
    v20 = engineID;
    v21 = identifierCopy;
    v23 = completionCopy;
    objc_copyWeak(&v24, &location);
    v16 = v14;
    v22 = v16;
    *&v17 = rate;
    [playbackStackController2 playWithRate:v21 identifier:v19 completion:v17];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  else
  {
    v18 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:60 debugDescription:{@"Playback engine stack has not been setup yet. Set a playback queue first before calling %s.", "-[_MPCPlaybackEnginePlayer playWithRate:identifier:completion:]"}];
    (*(completionCopy + 2))(completionCopy, v18);
  }
}

- (int64_t)stateBeforeInterruption
{
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  interruptedState = [playbackStackController interruptedState];
  if (interruptedState > 7)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = qword_1C6045398[interruptedState];
  }

  return v4;
}

- (int64_t)state
{
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  currentState = [playbackStackController currentState];
  if (currentState > 7)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = qword_1C6045398[currentState];
  }

  return v4;
}

- (float)currentRate
{
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [playbackStackController rate];
  v4 = v3;

  return v4;
}

- (double)currentTime
{
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [playbackStackController currentTime];
  v4 = v3;

  return v4;
}

- (void)updateAudioSession
{
  v23[1] = *MEMORY[0x1E69E9840];
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (playbackStackController)
  {
    playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
    audioSessionCategory = [playbackEngine audioSessionCategory];
    audioSessionOptions = [playbackEngine audioSessionOptions];
    v7 = -[MFAudioSessionConfiguration initWithCategory:routeSharingPolicy:options:]([MFAudioSessionConfiguration alloc], "initWithCategory:routeSharingPolicy:options:", audioSessionCategory, [audioSessionCategory isEqualToString:*MEMORY[0x1E6958070]] ^ 1, audioSessionOptions);
    if (+[MPCPlaybackEngine isRemotePlayerService])
    {
      v17 = 0u;
      v18 = 0u;
      if (playbackEngine)
      {
        [playbackEngine remoteHostProcessAuditToken];
      }

      v15 = v17;
      v16 = v18;
      v8 = MSVBundleIDForAuditToken();
      if (v8)
      {
        v9 = [MEMORY[0x1E695DEF0] dataWithBytes:&v17 length:{32, v17, v18}];
        v22 = *MEMORY[0x1E69AFF90];
        v10 = *MEMORY[0x1E69B05A0];
        v19[0] = *MEMORY[0x1E69B0590];
        v19[1] = v10;
        v20[0] = v9;
        v20[1] = v8;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
        v21 = v11;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
        v23[0] = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
        [(MFAudioSessionConfiguration *)v7 setAudioSessionMXProperties:v13];
      }
    }

    if ([MPCPlaybackEngine isSystemPodcasts:v15])
    {
      [(MFAudioSessionConfiguration *)v7 setAllowEnhanceDialogue:1];
    }

    playbackStackController2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    [playbackStackController2 updateAudioSessionWithConfiguration:v7];
  }

  else
  {

    [(_MPCPlaybackEnginePlayer *)self setupPlaybackStackIfNeeded];
  }
}

- (void)updateAudioSessionSpeechDetection
{
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  [playbackStackController setInhibitSpeechDetection:{objc_msgSend(playbackEngine, "isVocalAttenuationEnabled")}];
}

- (void)setApplicationMusicPlayerTransitionType:(int64_t)type withDuration:(double)duration
{
  [(_MPCPlaybackEnginePlayer *)self setApplicationMusicPlayerTransitionType:?];
  [(_MPCPlaybackEnginePlayer *)self setApplicationMusicPlayerCrossFadeDuration:duration];
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [playbackStackController setApplicationMusicPlayerTransitionType:type duration:duration];
}

- (void)deactivateAudioSessionIfIdle:(int64_t)idle
{
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [playbackStackController deactivateAudioSessionIfIdle:idle];
}

- (void)becomeActiveWithCompletion:(id)completion
{
  completionCopy = completion;
  [(_MPCPlaybackEnginePlayer *)self setupPlaybackStackIfNeeded];
  objc_initWeak(&location, self);
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];

  date = [MEMORY[0x1E695DF00] date];
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55___MPCPlaybackEnginePlayer_becomeActiveWithCompletion___block_invoke;
  v12[3] = &unk_1E8234C40;
  v9 = date;
  v13 = v9;
  objc_copyWeak(&v16, &location);
  v10 = engineID;
  v14 = v10;
  v11 = completionCopy;
  v15 = v11;
  [playbackStackController activateAudioSessionWithCompletion:v12];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)finalizeStateRestoreWithCompletion:(id)completion
{
  completionCopy = completion;
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  objc_initWeak(&location, self);
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63___MPCPlaybackEnginePlayer_finalizeStateRestoreWithCompletion___block_invoke;
  v10[3] = &unk_1E8236D30;
  objc_copyWeak(&v13, &location);
  v8 = completionCopy;
  v12 = v8;
  v9 = engineID;
  v11 = v9;
  [playbackStackController restoreQueue:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)finalizeSetQueue:(id)queue completion:(id)completion
{
  v72 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  v7 = _Block_copy(completion);
  v8 = objc_alloc(MEMORY[0x1E69B13F0]);
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __56___MPCPlaybackEnginePlayer_finalizeSetQueue_completion___block_invoke;
  v65[3] = &unk_1E8239170;
  v9 = v7;
  v67 = v9;
  v10 = queueCopy;
  v66 = v10;
  v11 = [v8 initWithDeallocHandler:v65];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56___MPCPlaybackEnginePlayer_finalizeSetQueue_completion___block_invoke_2;
  aBlock[3] = &unk_1E8236E20;
  v42 = v11;
  v62 = v42;
  v43 = v9;
  v64 = v43;
  v12 = v10;
  v63 = v12;
  v13 = _Block_copy(aBlock);
  commandID = [v12 commandID];
  playbackEngine = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  playbackQueue = [v12 playbackQueue];
  isRequestingImmediatePlayback = [playbackQueue isRequestingImmediatePlayback];
  siriReferenceIdentifier = [playbackQueue siriReferenceIdentifier];
  v17 = siriReferenceIdentifier != 0;

  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  currentQueueItem = [playbackStackController currentQueueItem];

  if (currentQueueItem)
  {
    if (isRequestingImmediatePlayback & 1) == 0 && (siriReferenceIdentifier || (objc_opt_class(), (objc_opt_isKindOfClass()) && [playbackQueue shouldSkipWaitingForReadyToPlayStatus]))
    {
      v23 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v69 = engineID;
        v70 = 2048;
        selfCopy3 = self;
        _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlaybackEngineImplementation: %p - calling performSetQueue completion early (continued asynchronously)", buf, 0x16u);
      }

      v13[2](v13, 0);
      objc_initWeak(buf, self);
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __56___MPCPlaybackEnginePlayer_finalizeSetQueue_completion___block_invoke_29;
      v58[3] = &unk_1E8234BC8;
      objc_copyWeak(&v60, buf);
      v20 = engineID;
      v59 = engineID;
      v24 = _Block_copy(v58);

      objc_destroyWeak(&v60);
      objc_destroyWeak(buf);
      v13 = v24;
    }

    else
    {
      v20 = engineID;
    }

    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __56___MPCPlaybackEnginePlayer_finalizeSetQueue_completion___block_invoke_30;
    v50[3] = &unk_1E8234C18;
    v51 = v20;
    selfCopy2 = self;
    v25 = currentQueueItem;
    v53 = v25;
    v56 = isRequestingImmediatePlayback;
    v54 = commandID;
    v13 = v13;
    v55 = v13;
    v57 = v17;
    v26 = _Block_copy(v50);
    v27 = v25;
    if ([v27 isAssetLoaded] && objc_msgSend(v27, "canUseLoadedAsset") && objc_msgSend(v27, "canReusePlayerItem") && isRequestingImmediatePlayback)
    {
      v28 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
      v29 = os_signpost_id_generate(v28);

      v30 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
      v31 = v30;
      if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5C61000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v29, "PrepareForRate", "", buf, 2u);
      }

      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __56___MPCPlaybackEnginePlayer_finalizeSetQueue_completion___block_invoke_36;
      v47[3] = &unk_1E8235068;
      v49 = v29;
      v48 = v26;
      LODWORD(v32) = 1.0;
      [v27 prepareForRate:v47 completionHandler:v32];
    }

    else
    {
      v26[2](v26);
    }

    queueController = [playbackEngine queueController];
    behaviorType = [queueController behaviorType];

    v35 = behaviorType == 4;
    v22 = engineID;
    if (v35 && isRequestingImmediatePlayback)
    {
      if (([v27 conformsToProtocol:&unk_1F459C8B8] & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCPlaybackEnginePlayer.m" lineNumber:329 description:@"Item does not conform to _MPCPodcastAVItemProvidingProtocol!"];
      }

      [v27 preferredPlaybackRate];
      v37 = v36;
      player = [playbackEngine player];
      LODWORD(v39) = v37;
      [player setRate:@"userDefaultsRate" identifier:&__block_literal_global_14804 completion:v39];
    }
  }

  else
  {
    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v69 = engineID;
      v70 = 2048;
      selfCopy3 = self;
      _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlaybackEngineImplementation: %p - finalizeSetQueue completed without a start item [empty queue]", buf, 0x16u);
    }

    v13[2](v13, 0);
    [(_MPCPlaybackEnginePlayer *)self endPlaybackStartCriticalSection];
    v22 = engineID;
  }
}

- (void)prepareToPlayWithIdentifier:(id)identifier isRequestingImmediatePlayback:(BOOL)playback
{
  playbackCopy = playback;
  identifierCopy = identifier;
  [(_MPCPlaybackEnginePlayer *)self setupPlaybackStackIfNeeded];
  playbackStackController = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [playbackStackController prepareToPlayWithIdentifier:identifierCopy isRequestingImmediatePlayback:playbackCopy];
}

- (void)setupPlaybackStackIfNeeded
{
  if (!self->_playbackStackController)
  {
    v14 = v2;
    v15 = v3;
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
    v6 = os_signpost_id_generate(v5);

    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PlaybackStackInitialSetup", "", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
    [(_MPCPlaybackEnginePlayer *)self _setupPlaybackStackWithPlaybackEngine:WeakRetained];

    v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
    v11 = v10;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v11, OS_SIGNPOST_INTERVAL_END, v6, "PlaybackStackInitialSetup", " enableTelemetry=YES ", v12, 2u);
    }
  }
}

- (void)dealloc
{
  MEMORY[0x1C6955540](self->_stateHandle, a2);
  v3.receiver = self;
  v3.super_class = _MPCPlaybackEnginePlayer;
  [(_MPCPlaybackEnginePlayer *)&v3 dealloc];
}

- (_MPCPlaybackEnginePlayer)initWithPlaybackEngine:(id)engine
{
  engineCopy = engine;
  v11.receiver = self;
  v11.super_class = _MPCPlaybackEnginePlayer;
  v5 = [(_MPCPlaybackEnginePlayer *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playbackEngine, engineCopy);
    [engineCopy addEngineObserver:v6];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51___MPCPlaybackEnginePlayer_initWithPlaybackEngine___block_invoke;
    v9[3] = &unk_1E8239270;
    v7 = v6;
    v10 = v7;
    v7->_stateHandle = __51___MPCPlaybackEnginePlayer_initWithPlaybackEngine___block_invoke(v9);
    v7->_jumpIdentifier = 0;
    [(_MPCPlaybackEnginePlayer *)v7 prewarm];
  }

  return v6;
}

+ (id)describePlayer:(id)player
{
  playerCopy = player;
  v4 = [MEMORY[0x1E6970850] infoCenterForPlayerID:playerCopy];
  playbackQueueDataSource = [v4 playbackQueueDataSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    playbackEngine = [playbackQueueDataSource playbackEngine];
    player = [playbackEngine player];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      string = [MEMORY[0x1E696AD60] string];
      [string appendFormat:@"# Player: %@\n\n", playerCopy];
      _stateDictionary = [player _stateDictionary];
    }

    else
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_opt_class();
      _stateDictionary = NSStringFromClass(v11);
      string = [v10 stringWithFormat:@"Unexpected implementation class found: %@", _stateDictionary];
    }
  }

  else
  {
    string = [MEMORY[0x1E696AEC0] stringWithFormat:@"No player found for %@", playerCopy];
  }

  return string;
}

@end