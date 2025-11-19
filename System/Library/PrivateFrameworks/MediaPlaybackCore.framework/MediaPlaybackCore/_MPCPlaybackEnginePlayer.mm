@interface _MPCPlaybackEnginePlayer
+ (id)describePlayer:(id)a3;
- (AVPlayerViewController)playerViewController;
- (BOOL)_isAVKitSkipAction:(id)a3;
- (BOOL)_itemConfigurationIsIncompatibleWithVocalAttenuationState:(id)a3;
- (BOOL)isInPlaybackStartCriticalSection;
- (BOOL)isMuted;
- (BOOL)isUserSelectedItem:(id)a3;
- (MPAVItem)currentItem;
- (MPCPlaybackEngine)playbackEngine;
- (NSDictionary)_stateDictionary;
- (_MPCPlaybackEnginePlayer)initWithPlaybackEngine:(id)a3;
- (double)_adjustPlayerTimeForAudioTapProcessing:(double)a3;
- (double)currentTime;
- (float)currentRate;
- (float)relativeVolume;
- (id)_MPAVItemForMFQueuePlayerItem:(id)a3;
- (int64_t)state;
- (int64_t)stateBeforeInterruption;
- (void)_logTimeJumpForItem:(id)a3 fromTime:(double)a4 toTime:(double)a5 userInitiated:(BOOL)a6 timeStamp:(id)a7;
- (void)_performSkipForUserAction:(id)a3;
- (void)_playbackDidStopForItem:(id)a3 source:(id)a4 reason:(id)a5 time:(double)a6;
- (void)_setupPlaybackStackWithPlaybackEngine:(id)a3;
- (void)_updateActiveFormatForQueueItem:(id)a3;
- (void)assetLoadingDidCompleteForItem:(id)a3 error:(id)a4;
- (void)assetLoadingDidStartForItem:(id)a3;
- (void)becomeActiveWithCompletion:(id)a3;
- (void)currentItemWillChangeFromItem:(id)a3 toItem:(id)a4 source:(int64_t)a5 timeStamp:(id)a6;
- (void)deactivateAudioSessionIfIdle:(int64_t)a3;
- (void)dealloc;
- (void)didPerformPlayerOperationWithPlayerIdentifier:(id)a3 items:(id)a4 operation:(id)a5;
- (void)didReachEndOfQueueWithReason:(id)a3;
- (void)didReportSignpostWithType:(int64_t)a3;
- (void)donateMetricsForTransitionWillStartFrom:(id)a3 to:(id)a4 transitionProvided:(int64_t)a5;
- (void)donateMetricsToPlayerItem:(id)a3;
- (void)effectiveRateDidChangeTo:(float)a3 forItem:(id)a4 timeStamp:(id)a5;
- (void)endPlaybackStartCriticalSection;
- (void)endScanningWithIdentifier:(id)a3 completion:(id)a4;
- (void)engine:(id)a3 didChangeQueueController:(id)a4;
- (void)engine:(id)a3 didChangeQueueWithReason:(id)a4;
- (void)engine:(id)a3 willRemoveQueueController:(id)a4;
- (void)errorResolutionDidEndForItem:(id)a3 error:(id)a4 resolution:(int64_t)a5;
- (void)errorResolutionDidStartForItem:(id)a3 error:(id)a4;
- (void)extendLifetimeUntilFirstAudioFrame:(id)a3 isSiriSetQueue:(BOOL)a4;
- (void)finalizeSetQueue:(id)a3 completion:(id)a4;
- (void)finalizeStateRestoreWithCompletion:(id)a3;
- (void)firstFrameWillRenderForItem:(id)a3 timeStamp:(id)a4;
- (void)firstVideoFrameWasRenderedForItem:(id)a3 timeStamp:(id)a4;
- (void)interruptionDidBeginWithInterruptor:(id)a3 timeStamp:(id)a4;
- (void)interruptionDidFinishForInterruptor:(id)a3 shouldResume:(BOOL)a4 timeStamp:(id)a5;
- (void)isMutedDidChangeTo:(BOOL)a3 timeStamp:(id)a4;
- (void)itemDidBecomeCurrent:(id)a3 source:(int64_t)a4 timeStamp:(id)a5;
- (void)itemDidFailToLoad:(id)a3 silently:(BOOL)a4 error:(id)a5 timeStamp:(id)a6;
- (void)itemDidFailToPlayToEnd:(id)a3 error:(id)a4 timeStamp:(id)a5;
- (void)itemDidPlayToEnd:(id)a3 timeStamp:(id)a4;
- (void)itemDidResignCurrent:(id)a3 source:(int64_t)a4 timeStamp:(id)a5;
- (void)itemIsReadyForMetrics:(id)a3 accessLog:(id)a4;
- (void)itemIsReadyToPlay:(id)a3 timeStamp:(id)a4;
- (void)jumpToTime:(double)a3 identifier:(id)a4 completion:(id)a5;
- (void)mediaServicesInterruptionDidBeginWithItemAtDeath:(id)a3 timeAtDeath:(double)a4 timeStamp:(id)a5;
- (void)mediaServicesInterruptionDidEndWithTimeStamp:(id)a3;
- (void)mediaServicesPurgeDidOccurWithTimeStamp:(id)a3;
- (void)overlappedPlaybackDidEndFrom:(id)a3 to:(id)a4 transitionTime:(id)a5 transitionType:(int64_t)a6 timeStamp:(id)a7;
- (void)overlappedPlaybackWillBeginFrom:(id)a3 to:(id)a4 transitionTime:(id)a5 transitionType:(int64_t)a6 timeStamp:(id)a7;
- (void)overlappingTransitionDidReachPivotPointFrom:(id)a3 to:(id)a4 transitionTime:(id)a5 incomingItemAveragePostPivotTransitionRate:(double)a6 transitionType:(int64_t)a7 timeStamp:(id)a8;
- (void)pauseForLeasePreventionWithIdentifier:(id)a3 completion:(id)a4;
- (void)pauseForSleepTimerWithFadeout:(double)a3 identifier:(id)a4 completion:(id)a5;
- (void)pauseWithFadeout:(double)a3 identifier:(id)a4 completion:(id)a5;
- (void)pauseWithIdentifier:(id)a3 completion:(id)a4;
- (void)performWhenMediaServicesAreAvailable:(id)a3 identifier:(id)a4;
- (void)pickBestDeviceRoute;
- (void)playWithRate:(float)a3 identifier:(id)a4 completion:(id)a5;
- (void)playbackBufferStateDidChangeToState:(int64_t)a3 forItem:(id)a4 timeStamp:(id)a5;
- (void)playbackDidReachQueueEndWithTimeStamp:(id)a3;
- (void)playbackDidStartForItem:(id)a3 rate:(float)a4 expectedStartTime:(double)a5 fromStalling:(BOOL)a6 timeStamp:(id)a7;
- (void)playbackDidStopForItem:(id)a3 source:(id)a4 reason:(id)a5 timeStamp:(id)a6;
- (void)playbackIsBlockedOnNonPlayableItem:(id)a3;
- (void)playbackIsLikelyToKeepUp:(BOOL)a3 forItem:(id)a4 timeStamp:(id)a5;
- (void)playbackRateDidChangeNotifiedForItem:(id)a3 newRate:(float)a4 reason:(id)a5 participantIdentifier:(id)a6 timeStamp:(id)a7;
- (void)playbackRateDidChangeToRate:(float)a3 forItem:(id)a4 timeStamp:(id)a5;
- (void)playbackTimeDidChangeTo:(double)a3 forItem:(id)a4 reason:(int64_t)a5 timeStamp:(id)a6;
- (void)playbackWaitingToPlayForItem:(id)a3 reason:(id)a4 timeStamp:(id)a5;
- (void)prepareToPlayWithIdentifier:(id)a3 isRequestingImmediatePlayback:(BOOL)a4;
- (void)relativeVolumeDidChangeTo:(float)a3 timeStamp:(id)a4;
- (void)renderingModeDidChange:(int64_t)a3 timeStamp:(id)a4;
- (void)routeDidChange:(BOOL)a3 metadata:(id)a4 timeStamp:(id)a5;
- (void)screenRecordingDidChange:(BOOL)a3 timeStamp:(id)a4;
- (void)setApplicationMusicPlayerTransitionType:(int64_t)a3 withDuration:(double)a4;
- (void)setIsMuted:(BOOL)a3;
- (void)setRate:(float)a3 identifier:(id)a4 completion:(id)a5;
- (void)setRelativeVolume:(float)a3;
- (void)setupPlaybackStackIfNeeded;
- (void)smartTransitionDidEndFrom:(id)a3 to:(id)a4 transitionTime:(id)a5 timeStamp:(id)a6;
- (void)smartTransitionWillBeginFrom:(id)a3 to:(id)a4 transitionTime:(id)a5 outgoingItemAveragePrePivotTransitionRate:(double)a6 timeStamp:(id)a7 parameters:(id)a8;
- (void)stackControllerDidCancelTransitionFrom:(id)a3 to:(id)a4 type:(int64_t)a5 reason:(id)a6;
- (void)stackControllerDidCreateTransitionFrom:(id)a3 to:(id)a4 type:(int64_t)a5 parameters:(id)a6;
- (void)stateDidChangeFromState:(int64_t)a3 toState:(int64_t)a4 timeStamp:(id)a5;
- (void)timeControlStatusDidChange:(int64_t)a3 waitingReason:(id)a4 timeStamp:(id)a5;
- (void)togglePlaybackWithIdentifier:(id)a3 completion:(id)a4;
- (void)tracksDidChangeForItem:(id)a3 timeStamp:(id)a4;
- (void)updateAudioSession;
- (void)updateAudioSessionSpeechDetection;
- (void)userActionDidBegin:(id)a3;
- (void)userActionDidEnd:(id)a3 error:(id)a4;
- (void)userSeekCompletedForItem:(id)a3 fromTime:(double)a4 toTime:(double)a5 timeStamp:(id)a6;
- (void)willPerformPlayerOperationWithPlayerIdentifier:(id)a3 operation:(id)a4 reason:(id)a5;
@end

@implementation _MPCPlaybackEnginePlayer

- (AVPlayerViewController)playerViewController
{
  v2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v3 = [v2 videoViewController];

  return v3;
}

- (MPAVItem)currentItem
{
  v3 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v4 = [v3 currentQueueItem];
  v5 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v4];

  return v5;
}

- (MPCPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (void)performWhenMediaServicesAreAvailable:(id)a3 identifier:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  [(_MPCPlaybackEnginePlayer *)self setupPlaybackStackIfNeeded];
  v9 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (!v9)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"_MPCPlaybackEnginePlayer.m" lineNumber:2622 description:@"PlaybackStackController setup failed"];
  }

  v10 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v11 = [v10 mediaServicesAvailable];

  if (v11)
  {
    v7[2](v7);
  }

  else
  {
    v12 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
    v13 = [v12 engineID];
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543874;
      v21 = v13;
      v22 = 2048;
      v23 = self;
      v24 = 2114;
      v25 = v8;
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

    v18 = _Block_copy(v7);
    [(NSMutableArray *)mediaServicesWaitingBlocks addObject:v18];
  }
}

- (BOOL)isUserSelectedItem:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v6 = [v5 queueController];
  v7 = [v4 contentItemID];

  LOBYTE(v4) = [v6 isUserSelectedContentItemID:v7];
  return v4;
}

- (void)pickBestDeviceRoute
{
  v2 = [(_MPCPlaybackEnginePlayer *)self externalPlaybackController];
  [v2 pickBestDeviceRoute];
}

- (void)donateMetricsForTransitionWillStartFrom:(id)a3 to:(id)a4 transitionProvided:(int64_t)a5
{
  v6 = a3;
  v9 = a4;
  v7 = v9;
  v8 = v6;
  msv_dispatch_on_main_queue();
}

- (void)donateMetricsToPlayerItem:(id)a3
{
  v3 = a3;
  v4 = [v3 AVPlayerItemPerformanceMetrics];
  v5 = [v4 objectForKeyedSubscript:@"reportingIdentifier"];

  v8 = v3;
  v6 = v3;
  v7 = v5;
  msv_dispatch_on_main_queue();
}

- (void)endPlaybackStartCriticalSection
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = [(_MPCPlaybackEnginePlayer *)self criticalSectionAssertions];
  [v3 removeAllObjects];
}

- (BOOL)isInPlaybackStartCriticalSection
{
  v2 = [(_MPCPlaybackEnginePlayer *)self criticalSectionAssertions];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)extendLifetimeUntilFirstAudioFrame:(id)a3 isSiriSetQueue:(BOOL)a4
{
  v17 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v6 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  if (v17)
  {
    if (v6)
    {
      v7 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
      v8 = [v7 currentItem];

      if (v8)
      {
        v9 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
        [v9 effectiveRate];
        v11 = v10;

        if (v11 <= 0.0)
        {
          if (a4 || (-[_MPCPlaybackEnginePlayer playbackStackController](self, "playbackStackController"), v12 = objc_claimAutoreleasedReturnValue(), [v12 rate], v14 = v13, v12, v14 != 0.0))
          {
            v15 = [(_MPCPlaybackEnginePlayer *)self criticalSectionAssertions];

            if (v15)
            {
              v16 = [(_MPCPlaybackEnginePlayer *)self criticalSectionAssertions];
              [v16 addObject:v17];
            }

            else
            {
              v16 = [MEMORY[0x1E695DF70] arrayWithObject:v17];
              [(_MPCPlaybackEnginePlayer *)self setCriticalSectionAssertions:v16];
            }
          }
        }
      }
    }
  }
}

- (void)assetLoadingDidStartForItem:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v4];
  v6 = [v5 queueSectionID];
  v7 = [v5 queueItemID];
  if (![v6 length])
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    *buf = 138543618;
    v18 = v4;
    v19 = 2114;
    v20 = v6;
    v14 = "Unexpected assetLoadingDidStartForItem: without sectionID: %{public}@ %{public}@";
LABEL_8:
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_FAULT, v14, buf, 0x16u);
    goto LABEL_9;
  }

  if (![v7 length])
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    *buf = 138543618;
    v18 = v4;
    v19 = 2114;
    v20 = v7;
    v14 = "Unexpected assetLoadingDidStartForItem: without itemID: %{public}@ %{public}@";
    goto LABEL_8;
  }

  v8 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v9 = [v8 eventStream];
  v10 = MEMORY[0x1E696AD98];
  v11 = [(_MPCPlaybackEnginePlayer *)self playbackStackController:@"queue-section-id"];
  v12 = [v10 numberWithInteger:{objc_msgSend(v11, "timeControlStatus")}];
  v16[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:3];
  [v9 emitEventType:@"asset-load-begin" payload:v13];

LABEL_9:
}

- (void)assetLoadingDidCompleteForItem:(id)a3 error:(id)a4
{
  v82 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v9 = [v8 engineID];
  v10 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v6];
  v11 = [v10 queueSectionID];
  v12 = [v10 queueItemID];
  if (![(_MPCPlaybackEnginePlayer *)v11 length])
  {
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_50;
    }

    *buf = 138543618;
    v77 = v6;
    v78 = 2114;
    v79 = v11;
    v25 = "Unexpected assetLoadingDidCompleteForItem: without sectionID: %{public}@ %{public}@";
LABEL_19:
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_FAULT, v25, buf, 0x16u);
    goto LABEL_50;
  }

  if (![(_MPCPlaybackEnginePlayer *)v12 length])
  {
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_50;
    }

    *buf = 138543618;
    v77 = v6;
    v78 = 2114;
    v79 = v12;
    v25 = "Unexpected assetLoadingDidCompleteForItem: without itemID: %{public}@ %{public}@";
    goto LABEL_19;
  }

  v68 = v9;
  v69 = v12;
  v13 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v14 = [v13 currentQueueItem];

  if (v10 == v14 && [v8 isVocalAttenuationEnabled] && -[_MPCPlaybackEnginePlayer _itemConfigurationIsIncompatibleWithVocalAttenuationState:](self, "_itemConfigurationIsIncompatibleWithVocalAttenuationState:", v10))
  {
    v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v77 = v68;
      v78 = 2114;
      v79 = self;
      v80 = 2114;
      v81 = v10;
      _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - [AP] - Asset loading did finish - Unable to stream asset in vocal attenuation mode [turning off VA] - QueueItem: %{public}@", buf, 0x20u);
    }

    v16 = [v8 vocalAttenuationController];
    [(MPCWhiskyController *)v16 setEnabled:?];
  }

  if (v7)
  {
    v66 = v8;
    v17 = [v8 eventStream];
    v74[0] = @"queue-section-id";
    v74[1] = @"queue-item-id";
    v75[0] = v11;
    v75[1] = v69;
    v74[2] = @"rtc-service-id";
    v18 = [v10 rtcReportingServiceIdentifier];
    v19 = v18;
    if (!v18)
    {
      v19 = [MEMORY[0x1E695DFB0] null];
    }

    v75[2] = v19;
    v75[3] = v7;
    v20 = v7;
    v74[3] = @"asset-load-error";
    v74[4] = @"time-control-status";
    v21 = MEMORY[0x1E696AD98];
    v22 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v23 = [v21 numberWithInteger:{objc_msgSend(v22, "timeControlStatus")}];
    v75[4] = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:5];
    [v17 emitEventType:@"asset-load-end" payload:v24];

    if (!v18)
    {
    }

    v7 = v20;
    v8 = v66;
    v9 = v68;
    v12 = v69;
  }

  else
  {
    v26 = [(_MPCPlaybackEnginePlayer *)self translator];
    [v26 setMPAVItem:v10 forMFPlayerItem:v6];

    v17 = [v10 modelGenericObject];
    v27 = [v17 anyObject];
    v67 = [v27 identifiers];

    v28 = [v10 modelPlayEvent];
    v29 = [v28 genericObjectRepresentation];
    v30 = [v29 anyObject];
    v65 = [v30 identifiers];

    if ([v17 type]== 1)
    {
      v31 = [v17 song];
      v32 = [v31 isArtistUploadedContent];
    }

    else
    {
      v32 = 0;
    }

    v64 = [v8 eventStream];
    v72[0] = @"queue-section-id";
    v72[1] = @"queue-item-id";
    v73[0] = v11;
    v73[1] = v69;
    v72[2] = @"rtc-service-id";
    v33 = [v10 rtcReportingServiceIdentifier];
    v61 = v33;
    if (!v33)
    {
      v33 = [MEMORY[0x1E695DFB0] null];
    }

    v53 = v33;
    v73[2] = v33;
    v72[3] = @"item-ids";
    v34 = v67;
    if (!v67)
    {
      v34 = [MEMORY[0x1E695DFB0] null];
    }

    v52 = v34;
    v73[3] = v34;
    v72[4] = @"item-kind";
    v35 = [v67 modelKind];
    v63 = v35;
    if (!v35)
    {
      v35 = [MEMORY[0x1E695DFB0] null];
    }

    v51 = v35;
    v73[4] = v35;
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
    v37 = [v10 initialPlaybackStartTime];
    v38 = &unk_1F45993E8;
    v58 = v37;
    if (v37)
    {
      v38 = v37;
    }

    v71[2] = v38;
    v70[3] = @"item-artist-uploaded";
    v57 = [MEMORY[0x1E696AD98] numberWithBool:v32];
    v71[3] = v57;
    v70[4] = @"item-is-start-item";
    [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "isStartItem")}];
    v56 = v70[5] = @"item-is-placeholder";
    v71[4] = v56;
    v71[5] = MEMORY[0x1E695E110];
    v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:6];
    v73[5] = v55;
    v72[6] = @"container-ids";
    v39 = v65;
    if (!v65)
    {
      v39 = [MEMORY[0x1E695DFB0] null];
    }

    v62 = v6;
    v50 = v39;
    v73[6] = v39;
    v72[7] = @"container-kind";
    v40 = [v65 modelKind];
    v41 = v40;
    if (!v40)
    {
      v40 = [MEMORY[0x1E695DFB0] null];
    }

    v49 = v40;
    v73[7] = v40;
    v72[8] = @"time-control-status";
    v42 = MEMORY[0x1E696AD98];
    v54 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v43 = [v42 numberWithInteger:{objc_msgSend(v54, "timeControlStatus")}];
    v73[8] = v43;
    v72[9] = @"player-item-reporting-id";
    v44 = [v10 avPlayerItem];
    v45 = [v44 mpc_reportingIdentifier];
    v46 = v45;
    if (!v45)
    {
      v46 = [MEMORY[0x1E695DFB0] null];
    }

    v73[9] = v46;
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:10];
    [v64 emitEventType:@"asset-load-end" payload:v47];

    if (!v45)
    {
    }

    if (!v41)
    {
    }

    v7 = 0;
    v6 = v62;
    v9 = v68;
    v12 = v69;
    if (!v65)
    {
    }

    v48 = v63;
    if (!v63)
    {

      v48 = 0;
    }

    if (!v67)
    {
    }

    if (!v61)
    {
    }
  }

LABEL_50:
}

- (void)renderingModeDidChange:(int64_t)a3 timeStamp:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = [(_MPCPlaybackEnginePlayer *)self playbackEngine:a3];
  v7 = [v6 engineID];
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v16 = v7;
    v17 = 2114;
    v18 = self;
    v19 = 2048;
    v20 = a3;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - renderingModeDidChange:%ld", buf, 0x20u);
  }

  v9 = [(_MPCPlaybackEnginePlayer *)self currentItem];
  if ([v9 isAssetLoaded])
  {
    [(_MPCPlaybackEnginePlayer *)self _updateActiveFormatForQueueItem:v9];
  }

  v10 = [v6 eventStream];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{a3, @"audio-rendering-mode"}];
  v14 = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [v10 emitEventType:@"audio-rendering-mode-changed" payload:v12];
}

- (void)itemIsReadyForMetrics:(id)a3 accessLog:(id)a4
{
  v69 = *MEMORY[0x1E69E9840];
  v52 = a3;
  v5 = a4;
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v50 = v5;
  v7 = [v5 events];
  v8 = [v7 countByEnumeratingWithState:&v54 objects:v68 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v54 + 1) + 8 * i);
        v13 = [v12 performanceMetrics];

        if (v13)
        {
          v14 = [v12 performanceMetrics];
          [v6 addEntriesFromDictionary:v14];
        }

        [v12 observedBitrate];
        if (v15 > 0.0)
        {
          v16 = MEMORY[0x1E696AD98];
          [v12 observedBitrate];
          v17 = [v16 numberWithDouble:?];
          [v6 setObject:v17 forKeyedSubscript:@"observedBitrate"];
        }

        [v12 indicatedBitrate];
        if (v18 > 0.0)
        {
          v19 = MEMORY[0x1E696AD98];
          [v12 indicatedBitrate];
          v20 = [v19 numberWithDouble:?];
          [v6 setObject:v20 forKeyedSubscript:@"indicatedBitrate"];
        }

        [v12 startupTime];
        if (v21 > 0.0)
        {
          v22 = MEMORY[0x1E696AD98];
          [v12 startupTime];
          v23 = [v22 numberWithDouble:?];
          [v6 setObject:v23 forKeyedSubscript:@"startupTime"];
        }

        [v12 segmentsDownloadedDuration];
        if (v24 > 0.0)
        {
          v25 = MEMORY[0x1E696AD98];
          [v12 segmentsDownloadedDuration];
          v26 = [v25 numberWithDouble:?];
          [v6 setObject:v26 forKeyedSubscript:@"segmentsDownloadedDuration"];
        }

        if ([v12 numberOfBytesTransferred] >= 1)
        {
          v27 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v12, "numberOfBytesTransferred")}];
          [v6 setObject:v27 forKeyedSubscript:@"numberOfBytesTransferred"];
        }

        v28 = [v12 playbackSessionID];

        if (v28)
        {
          v29 = [v12 playbackSessionID];
          [v6 setObject:v29 forKeyedSubscript:@"playbackSessionID"];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v54 objects:v68 count:16];
    }

    while (v9);
  }

  v30 = [v52 avPlayerItem];
  v31 = [v30 mpc_loggingIdentifier];
  [v6 setObject:v31 forKeyedSubscript:@"identifier"];

  v32 = [v52 avPlayerItem];
  v33 = [v32 mpc_reportingIdentifier];
  [v6 setObject:v33 forKeyedSubscript:@"reportingIdentifier"];

  v34 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v35 = [v34 engineID];
  v36 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v52];
  v37 = [v36 queueSectionID];
  v51 = [v36 queueItemID];
  v53 = 0;
  v38 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v6 options:0 error:&v53];
  v39 = v53;
  v47 = v35;
  if (v39)
  {
    v40 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v61 = v35;
      v62 = 2048;
      v63 = self;
      v64 = 2114;
      v65 = v39;
      v66 = 2114;
      v67 = v6;
      _os_log_impl(&dword_1C5C61000, v40, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlaybackEngineImplementation: %p - performanceMetricsPostedForItem received bad metrics - error: %{public}@ - metrics: %{public}@", buf, 0x2Au);
    }

    v41 = v38;

    v42 = 0;
  }

  else
  {
    v41 = v38;
    v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v38 encoding:{4, v35}];
  }

  v43 = [v34 eventStream];
  v58[0] = @"queue-section-id";
  v58[1] = @"queue-item-id";
  v44 = v37;
  v59[0] = v37;
  v59[1] = v51;
  v58[2] = @"av-player-item-performance-metrics";
  v45 = v42;
  if (!v42)
  {
    v45 = [MEMORY[0x1E695DFB0] null];
  }

  v59[2] = v45;
  v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:3];
  [v43 emitEventType:@"item-ready-for-metrics" payload:v46];

  if (!v42)
  {
  }
}

- (void)didPerformPlayerOperationWithPlayerIdentifier:(id)a3 items:(id)a4 operation:(id)a5
{
  v16[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v12 = [v11 eventStream];
  v15[0] = @"player-identifier";
  v15[1] = @"player-operation";
  v16[0] = v8;
  v16[1] = v10;
  v15[2] = @"player-items";
  v13 = v9;
  if (!v9)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  [v12 emitEventType:@"player-operation-end" payload:v14];

  if (!v9)
  {
  }
}

- (void)willPerformPlayerOperationWithPlayerIdentifier:(id)a3 operation:(id)a4 reason:(id)a5
{
  v15[3] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v12 = [v11 eventStream];
  v14[0] = @"player-identifier";
  v14[1] = @"player-operation";
  v15[0] = v10;
  v15[1] = v9;
  v14[2] = @"player-operation-reason";
  v15[2] = v8;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  [v12 emitEventType:@"player-operation-begin" payload:v13];
}

- (void)stackControllerDidCancelTransitionFrom:(id)a3 to:(id)a4 type:(int64_t)a5 reason:(id)a6
{
  v26[6] = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = a4;
  v12 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:a3];
  v13 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v11];

  v14 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  if ([v12 isInOverlappedTransition])
  {
    [v12 _willBeRemovedFromPlayer];
  }

  [v12 setInOverlappedTransition:0];
  [v13 setInOverlappedTransition:0];
  [v12 setInSmartTransition:0];
  [v13 setInSmartTransition:0];
  v15 = [v14 eventStream];
  v25[0] = @"outgoing-item-section-id";
  v16 = [v12 queueSectionID];
  v26[0] = v16;
  v25[1] = @"outgoing-item-id";
  v17 = [v12 queueItemID];
  v26[1] = v17;
  v25[2] = @"incoming-item-section-id";
  v18 = [v13 queueSectionID];
  v26[2] = v18;
  v25[3] = @"incoming-item-id";
  v19 = [v13 queueItemID];
  v26[3] = v19;
  v25[4] = @"transition-type";
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  v25[5] = @"transition-cancellation-reason";
  v26[4] = v20;
  v26[5] = v10;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:6];
  v22 = v10;
  v23 = v14;
  v24 = v21;

  [v15 emitEventType:@"item-transition-cancelled" payload:v24];
}

- (void)stackControllerDidCreateTransitionFrom:(id)a3 to:(id)a4 type:(int64_t)a5 parameters:(id)a6
{
  v27[7] = *MEMORY[0x1E69E9840];
  v9 = a6;
  v10 = a4;
  v11 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:a3];
  v12 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v10];

  v13 = [v9 objectForKeyedSubscript:@"transitionProvided"];
  v14 = [v13 integerValue];

  v25 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v15 = [v25 eventStream];
  v26[0] = @"outgoing-item-section-id";
  v24 = v11;
  v16 = [v11 queueSectionID];
  v27[0] = v16;
  v26[1] = @"outgoing-item-id";
  v17 = [v11 queueItemID];
  v27[1] = v17;
  v26[2] = @"incoming-item-section-id";
  v18 = [v12 queueSectionID];
  v27[2] = v18;
  v26[3] = @"incoming-item-id";
  v19 = [v12 queueItemID];
  v27[3] = v19;
  v26[4] = @"transition-type";
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  v27[4] = v20;
  v26[5] = @"transition-provided";
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
  v26[6] = @"transition-parameters";
  v27[5] = v21;
  v27[6] = v9;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:7];

  [v15 emitEventType:@"item-transition-created" payload:v22];
}

- (void)errorResolutionDidEndForItem:(id)a3 error:(id)a4 resolution:(int64_t)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v11 = [v10 engineID];

  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MFDescription forErrorResolution:a5];
    v14 = 138544386;
    v15 = v11;
    v16 = 2114;
    v17 = self;
    v18 = 2114;
    v19 = v8;
    v20 = 2114;
    v21 = v9;
    v22 = 2114;
    v23 = v13;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - errorResolutionDidEndForItem: - item=%{public}@ - error:%{public}@ - resolution:%{public}@", &v14, 0x34u);
  }
}

- (void)errorResolutionDidStartForItem:(id)a3 error:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v9 = [v8 engineID];

  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138544130;
    v12 = v9;
    v13 = 2114;
    v14 = self;
    v15 = 2114;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - errorResolutionDidStartForItem: - item=%{public}@ - error:%{public}@", &v11, 0x2Au);
  }
}

- (void)didReportSignpostWithType:(int64_t)a3
{
  if (a3 == 1)
  {
    v5 = [(_MPCPlaybackEnginePlayer *)self playbackStartTrace];
    [v5 endInterval];

    [(_MPCPlaybackEnginePlayer *)self setPlaybackStartTrace:0];
  }

  else if (!a3)
  {
    v6 = [(_MPCPlaybackEnginePlayer *)self currentItem];
    v4 = [MPCAVItemTrace traceIntervalWithName:@"MPTRACE_PLAYBACK_PLAYBACKSTART" item:v6 beginEvent:731643908 endEvent:731643912];
    [(_MPCPlaybackEnginePlayer *)self setPlaybackStartTrace:v4];
  }
}

- (void)isMutedDidChangeTo:(BOOL)a3 timeStamp:(id)a4
{
  v4 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  [(_MPCPlaybackEnginePlayer *)self setCurrentIsMuted:v8];

  v9 = [v7 engineID];
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (v6)
    {
      [v6 hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544130;
    *(&time.value + 4) = v9;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 1026;
    v13 = v4;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - isMutedDidChangeTo: - muted=%{public}d - timeStamp:%{public}@", &time, 0x26u);
  }
}

- (void)relativeVolumeDidChangeTo:(float)a3 timeStamp:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  *&v8 = a3;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(_MPCPlaybackEnginePlayer *)self setCurrentRelativeVolume:v9];

  *&v10 = a3;
  [v7 relativeVolumeDidUpdateToVolume:v10];
  v11 = [v7 engineID];
  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = a3;
    if (v6)
    {
      [v6 hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544130;
    *(&time.value + 4) = v11;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2050;
    v16 = v13;
    v17 = 2114;
    v18 = v14;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - relativeVolumeDidChangeTo: - volume=%{public}f - timeStamp:%{public}@", &time, 0x2Au);
  }
}

- (void)firstVideoFrameWasRenderedForItem:(id)a3 timeStamp:(id)a4
{
  v39[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v9 = [v8 engineID];

  v10 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v6];
  v11 = v7;
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
    *&time[4] = v9;
    *&time[12] = 2114;
    *&time[14] = self;
    *&time[22] = 2114;
    *&time[24] = v10;
    LOWORD(v39[0]) = 2114;
    *(v39 + 2) = v18;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - firstVideoFrameWasRenderedForItem: - item=%{public}@ - timeStamp:%{public}@", time, 0x2Au);
  }

  v19 = [v10 queueSectionID];
  v20 = [v10 queueItemID];
  if (![v19 length])
  {
    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    *time = 138543618;
    *&time[4] = v6;
    *&time[12] = 2114;
    *&time[14] = v19;
    v28 = "Unexpected firstVideoFrameWasRenderedForItem: without sectionID: %{public}@ %{public}@";
LABEL_18:
    _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_FAULT, v28, time, 0x16u);
    goto LABEL_19;
  }

  if (![v20 length])
  {
    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    *time = 138543618;
    *&time[4] = v6;
    *&time[12] = 2114;
    *&time[14] = v20;
    v28 = "Unexpected firstVideoFrameWasRenderedForItem: without itemID: %{public}@ %{public}@";
    goto LABEL_18;
  }

  v21 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  [v21 eventStream];
  v22 = v30 = v6;
  v36[0] = @"queue-section-id";
  v36[1] = @"queue-item-id";
  v37[0] = v19;
  v37[1] = v20;
  v36[2] = @"item-start-position";
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
  v37[2] = v23;
  v36[3] = @"time-control-status";
  v29 = v9;
  v24 = MEMORY[0x1E696AD98];
  v25 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v26 = [v24 numberWithInteger:{objc_msgSend(v25, "timeControlStatus")}];
  v37[3] = v26;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:4];
  *time = v31;
  *&time[16] = v32;
  v39[0] = v14;
  [v22 emitEventType:@"item-first-video-frame" payload:v27 atTime:time];

  v9 = v29;
  v6 = v30;
LABEL_19:
}

- (void)playbackIsBlockedOnNonPlayableItem:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v6 = [v5 engineID];
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543874;
    v11 = v6;
    v12 = 2114;
    v13 = self;
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - Playback stuck on non-playable item: %{public}@", &v10, 0x20u);
  }

  v8 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v4];
  v9 = [v5 queueController];
  [v9 playerItemDidBecomeCurrent:v8];
}

- (void)mediaServicesPurgeDidOccurWithTimeStamp:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v6 = [v5 engineID];
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      [v4 hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138543874;
    *(&time.value + 4) = v6;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v23 = v8;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - Media Services Resource Reclamation occurred - timeStamp:%{public}@", &time, 0x20u);
  }

  v19 = v4;
  v9 = v6;

  v10 = [v5 eventStream];
  v20[0] = @"session-id";
  v11 = [v5 queueController];
  v12 = [v11 sessionID];
  v13 = v12;
  if (!v12)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v20[1] = @"time-control-status";
  v21[0] = v13;
  v14 = MEMORY[0x1E696AD98];
  v15 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v16 = [v14 numberWithInteger:{objc_msgSend(v15, "timeControlStatus")}];
  v21[1] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  [v10 emitEventType:@"media-server-purge" payload:v17];

  if (!v12)
  {
  }

  v18 = [v5 eventObserver];
  [v18 engineDidReceiveMediaServicesPurge:v5];

  [(_MPCPlaybackEnginePlayer *)self updateAudioSession];
}

- (void)mediaServicesInterruptionDidEndWithTimeStamp:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v6 = [v5 engineID];
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      [v4 hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138543874;
    *(&time.value + 4) = v6;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v36 = v8;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - Media Services were restored - timeStamp:%{public}@", &time, 0x20u);
  }

  v27 = v4;

  v9 = [v5 eventStream];
  v33[0] = @"session-id";
  v10 = [v5 queueController];
  v11 = [v10 sessionID];
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v33[1] = @"time-control-status";
  v34[0] = v12;
  v13 = MEMORY[0x1E696AD98];
  v14 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v15 = [v13 numberWithInteger:{objc_msgSend(v14, "timeControlStatus")}];
  v34[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
  [v9 emitEventType:@"media-server-reset" payload:v16];

  if (!v11)
  {
  }

  v17 = [v5 eventObserver];
  [v17 engineDidResetMediaServices:v5];

  [(_MPCPlaybackEnginePlayer *)self updateAudioSession];
  [(_MPCPlaybackEnginePlayer *)self updateAudioSessionSpeechDetection];
  if (self->_mediaServicesWaitingBlocks)
  {
    v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(NSMutableArray *)self->_mediaServicesWaitingBlocks count];
      LODWORD(time.value) = 138543874;
      *(&time.value + 4) = v6;
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

- (void)mediaServicesInterruptionDidBeginWithItemAtDeath:(id)a3 timeAtDeath:(double)a4 timeStamp:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v11 = [v10 engineID];
  v26 = v9;
  if (v8)
  {
    v12 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v8];
    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (v9)
      {
        [v9 hostTime];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time), v9];
      LODWORD(time.value) = 138544386;
      *(&time.value + 4) = v11;
      LOWORD(time.flags) = 2114;
      *(&time.flags + 2) = self;
      HIWORD(time.epoch) = 2114;
      v30 = v12;
      v31 = 2048;
      v32 = a4;
      v33 = 2114;
      v34 = v14;
      _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - Media Services were interrupted - item:%{public}@ - time:%.3fs - timeStamp:%{public}@", &time, 0x34u);
    }
  }

  else
  {
    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    if (v9)
    {
      [v9 hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time), v9];
    LODWORD(time.value) = 138543874;
    *(&time.value + 4) = v11;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v30 = v13;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - Media Services were interrupted - no item at death - timeStamp:%{public}@", &time, 0x20u);
  }

LABEL_13:
  v15 = v11;

  v16 = [(_MPCPlaybackEnginePlayer *)self translator];
  [v16 invalidateCache];

  v17 = [v10 eventStream];
  v27[0] = @"session-id";
  v18 = [v10 queueController];
  v19 = [v18 sessionID];
  v20 = v19;
  if (!v19)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v27[1] = @"time-control-status";
  v28[0] = v20;
  v21 = MEMORY[0x1E696AD98];
  v22 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v23 = [v21 numberWithInteger:{objc_msgSend(v22, "timeControlStatus")}];
  v28[1] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
  [v17 emitEventType:@"media-server-died" payload:v24];

  if (!v19)
  {
  }

  v25 = [v10 eventObserver];
  [v25 engineDidLoseMediaServices:v10];
}

- (void)userActionDidEnd:(id)a3 error:(id)a4
{
  v20[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![v6 source] && !-[_MPCPlaybackEnginePlayer _isAVKitSkipAction:](self, "_isAVKitSkipAction:", v6))
  {
    v8 = [MEMORY[0x1E69708F8] successStatus];
    if (v7)
    {
      v9 = [MEMORY[0x1E69708F8] statusWithCode:200 error:v7];

      v8 = v9;
    }

    v10 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
    v11 = [v10 eventStream];
    v19[0] = @"remote-control-id";
    v12 = [v6 identifier];
    v20[0] = v12;
    v19[1] = @"remote-control-status";
    v18 = v8;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v20[1] = v13;
    v19[2] = @"time-control-status";
    v14 = MEMORY[0x1E696AD98];
    v15 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v16 = [v14 numberWithInteger:{objc_msgSend(v15, "timeControlStatus")}];
    v20[2] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
    [v11 emitEventType:@"remote-control-end" payload:v17];
  }
}

- (void)userActionDidBegin:(id)a3
{
  v36[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![v4 source])
  {
    if ([(_MPCPlaybackEnginePlayer *)self _isAVKitSkipAction:v4])
    {
      [(_MPCPlaybackEnginePlayer *)self _performSkipForUserAction:v4];
      goto LABEL_15;
    }

    v5 = [v4 type];
    if (v5 > 8)
    {
      v6 = 0xFFFFFFFFLL;
    }

    else
    {
      v6 = dword_1C60453D8[v5];
    }

    v27 = 0.0;
    memset(v26, 0, sizeof(v26));
    MPCPlaybackEngineEventGetMonotonicTime(v26);
    v7 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v8 = [v7 isModeShared];

    if (!v8)
    {
LABEL_14:
      v15 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
      v16 = [v15 eventStream];
      v35[0] = @"remote-control-id";
      v17 = [v4 identifier];
      v36[0] = v17;
      v35[1] = @"remote-control-type";
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
      v36[1] = v18;
      v35[2] = @"remote-control-source";
      v19 = [v4 sourceID];
      v36[2] = v19;
      v35[3] = @"remote-control-options";
      v20 = [v4 options];
      v36[3] = v20;
      v35[4] = @"time-control-status";
      v21 = MEMORY[0x1E696AD98];
      v22 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
      v23 = [v21 numberWithInteger:{objc_msgSend(v22, "timeControlStatus")}];
      v36[4] = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:5];
      v29 = v26[0];
      v30 = v26[1];
      v31 = v27;
      [v16 emitEventType:@"remote-control-begin" payload:v24 atTime:&v29];

      goto LABEL_15;
    }

    v9 = [v4 timeStamp];
    v10 = v9;
    if (v9)
    {
      [v9 hostTime];
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

- (void)didReachEndOfQueueWithReason:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v6 = [v5 engineID];
  v7 = [v5 eventObserver];
  [v7 engine:v5 didReachEndOfQueueWithReason:v4];

  v8 = [v5 eventStream];
  v20 = @"session-id";
  v9 = [v5 queueController];
  v10 = [v9 sessionID];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v21[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  [v8 emitEventType:@"session-reset" payload:v12];

  if (!v10)
  {
  }

  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543874;
    v15 = v6;
    v16 = 2114;
    v17 = self;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - end of queue reached [%{public}@]", &v14, 0x20u);
  }
}

- (void)screenRecordingDidChange:(BOOL)a3 timeStamp:(id)a4
{
  v4 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v8 = [v7 engineID];

  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (v6)
    {
      [v6 hostTime];
    }

    else
    {
      memset(time, 0, 24);
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(time)];
    *time = 138543874;
    *&time[4] = v8;
    *&time[12] = 1024;
    *&time[14] = v4;
    *&time[18] = 2114;
    *&time[20] = v10;
    _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@]-🚔 Enforcing policy due to screen recording. setMuted/setHidden: %{BOOL}u - timeStamp:%{public}@", time, 0x1Cu);
  }

  v11 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v12 = [v11 eventStream];
  v13 = v12;
  if (v4)
  {
    v14 = @"policy-begin";
  }

  else
  {
    v14 = @"policy-end";
  }

  [v12 emitEventType:v14 payload:MEMORY[0x1E695E0F8]];
}

- (void)tracksDidChangeForItem:(id)a3 timeStamp:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v9 = [v8 engineID];

  v10 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v7];

  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (v6)
    {
      [v6 hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544130;
    *(&time.value + 4) = v9;
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

- (void)playbackIsLikelyToKeepUp:(BOOL)a3 forItem:(id)a4 timeStamp:(id)a5
{
  v6 = a3;
  v55[3] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v11 = [v10 engineID];

  v12 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v8];
  v13 = v9;
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
  v19 = [v12 queueSectionID];
  v20 = [v12 queueItemID];
  if (![v19 length])
  {
    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_29;
    }

    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2114;
    *&buf[14] = v19;
    v25 = "Unexpected playbackIsLikelyToKeepUp:forItem: without sectionID: %{public}@ %{public}@";
LABEL_17:
    _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_FAULT, v25, buf, 0x16u);
    goto LABEL_29;
  }

  if (![v20 length])
  {
    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_29;
    }

    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2114;
    *&buf[14] = v20;
    v25 = "Unexpected playbackIsLikelyToKeepUp:forItem: without itemID: %{public}@ %{public}@";
    goto LABEL_17;
  }

  v44 = v11;
  v21 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v22 = [v21 queueController];
  v23 = [v22 currentItem];

  if (v12 == v23)
  {
    if (v6)
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

      v28 = [v21 eventObserver];
      [v28 engine:v21 didAchieveLikelyToKeepUpWithItem:v12];

      v29 = [v21 eventStream];
      v52[0] = @"queue-section-id";
      v52[1] = @"queue-item-id";
      v53[0] = v19;
      v53[1] = v20;
      v52[2] = @"item-start-position";
      v43 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
      v53[2] = v43;
      v52[3] = @"time-control-status";
      v30 = MEMORY[0x1E696AD98];
      v31 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
      v32 = [v31 timeControlStatus];
      v33 = v30;
      v34 = v29;
      v35 = [v33 numberWithInteger:v32];
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

      v39 = [v21 eventStream];
      v50[0] = @"queue-section-id";
      v50[1] = @"queue-item-id";
      v51[0] = v19;
      v51[1] = v20;
      v50[2] = @"item-end-position";
      v43 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
      v51[2] = v43;
      v50[3] = @"time-control-status";
      v40 = MEMORY[0x1E696AD98];
      v31 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
      v41 = [v31 timeControlStatus];
      v42 = v40;
      v34 = v39;
      v35 = [v42 numberWithInteger:v41];
      v51[3] = v35;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:4];
      *buf = v45;
      *&buf[16] = v46;
      v55[0] = v16;
      v37 = @"item-buffer-stall";
    }

    [v34 emitEventType:v37 payload:v36 atTime:buf];
  }

  v11 = v44;
LABEL_29:
}

- (void)playbackBufferStateDidChangeToState:(int64_t)a3 forItem:(id)a4 timeStamp:(id)a5
{
  v53[3] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v11 = [v10 engineID];

  v12 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v8];
  v13 = v9;
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
  v19 = [v12 queueSectionID];
  v20 = [v12 queueItemID];
  if (![v19 length])
  {
    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_30;
    }

    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2114;
    *&buf[14] = v19;
    v25 = "Unexpected playbackBufferStateDidChangeToState:forItem: without sectionID: %{public}@ %{public}@";
LABEL_18:
    _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_FAULT, v25, buf, 0x16u);
    goto LABEL_30;
  }

  if (![v20 length])
  {
    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_30;
    }

    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2114;
    *&buf[14] = v20;
    v25 = "Unexpected playbackBufferStateDidChangeToState:forItem: without itemID: %{public}@ %{public}@";
    goto LABEL_18;
  }

  v42 = v11;
  v21 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v22 = [v21 queueController];
  v23 = [v22 currentItem];

  if (v12 != v23)
  {
LABEL_29:
    v11 = v42;
    goto LABEL_30;
  }

  v11 = v42;
  if (a3 == 1)
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

    v41 = [v21 eventStream];
    v48[0] = @"queue-section-id";
    v48[1] = @"queue-item-id";
    v49[0] = v19;
    v49[1] = v20;
    v48[2] = @"item-end-position";
    v40 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
    v49[2] = v40;
    v48[3] = @"time-control-status";
    v38 = MEMORY[0x1E696AD98];
    v35 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v36 = [v38 numberWithInteger:{objc_msgSend(v35, "timeControlStatus")}];
    v49[3] = v36;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:4];
    *buf = v43;
    *&buf[16] = v44;
    v53[0] = v16;
    v34 = v41;
    [v41 emitEventType:@"item-buffer-stall" payload:v39 atTime:buf];

    v31 = v40;
    goto LABEL_28;
  }

  if (!a3)
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

    v28 = [v21 eventObserver];
    [v28 engine:v21 didAchieveLikelyToKeepUpWithItem:v12];

    v29 = [v21 eventStream];
    v50[0] = @"queue-section-id";
    v50[1] = @"queue-item-id";
    v51[0] = v19;
    v51[1] = v20;
    v50[2] = @"time-control-status";
    v30 = MEMORY[0x1E696AD98];
    v31 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v32 = [v31 timeControlStatus];
    v33 = v30;
    v34 = v29;
    v35 = [v33 numberWithInteger:v32];
    v51[2] = v35;
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

- (void)interruptionDidFinishForInterruptor:(id)a3 shouldResume:(BOOL)a4 timeStamp:(id)a5
{
  v6 = a4;
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v11 = [v10 engineID];

  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (v9)
    {
      [v9 hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544386;
    *(&time.value + 4) = v11;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v21 = v8;
    v22 = 1024;
    v23 = v6;
    v24 = 2114;
    v25 = v13;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - interruptionDidFinishForInterruptor:shouldResume: - interruptor=%{public}@ - shouldResume=%{BOOL}u - timeStamp:%{public}@", &time, 0x30u);
  }

  v14 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v15 = [v14 eventStream];
  v18[0] = @"interrupt-name";
  v18[1] = @"interrupt-should-resume";
  v19[0] = v8;
  v16 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  v19[1] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  [v15 emitEventType:@"interrupt-end" payload:v17];
}

- (void)interruptionDidBeginWithInterruptor:(id)a3 timeStamp:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v9 = [v8 engineID];

  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      [v7 hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544130;
    *(&time.value + 4) = v9;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v18 = v6;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - interruptionDidBeginWithInterruptor - interruptor=%{public}@ - timeStamp:%{public}@", &time, 0x2Au);
  }

  v12 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v13 = [v12 eventStream];
  v15 = @"interrupt-name";
  v16 = v6;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  [v13 emitEventType:@"interrupt-begin" payload:v14];
}

- (void)stateDidChangeFromState:(int64_t)a3 toState:(int64_t)a4 timeStamp:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v30 = a5;
  v8 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v29 = [v8 engineID];

  v9 = 0;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (a4 <= 3)
  {
    if (a4 <= 1)
    {
      if (!a4)
      {
        v10 = 0;
        v9 = 3;
        goto LABEL_20;
      }

      if (a4 != 1)
      {
        goto LABEL_20;
      }

      v10 = 2;
      goto LABEL_18;
    }

    if (a4 == 2)
    {
      v10 = 1;
LABEL_18:
      v9 = a4;
      goto LABEL_20;
    }

    v10 = 4;
LABEL_16:
    v9 = 1000;
    goto LABEL_20;
  }

  if (a4 <= 5)
  {
    if (a4 == 4)
    {
      v10 = 5;
    }

    else
    {
      v10 = 3;
    }

    goto LABEL_16;
  }

  if (a4 == 6)
  {
    v9 = 1;
    v10 = 2;
  }

  else if (a4 == 7)
  {
    v9 = 4;
    v10 = 6;
  }

LABEL_20:
  v11 = 0;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 <= 3)
  {
    if (a3 <= 1)
    {
      if (!a3)
      {
        v12 = 0;
        v11 = 3;
        goto LABEL_39;
      }

      if (a3 != 1)
      {
        goto LABEL_39;
      }

      v12 = 2;
      goto LABEL_37;
    }

    if (a3 == 2)
    {
      v12 = 1;
LABEL_37:
      v11 = a3;
      goto LABEL_39;
    }

    v12 = 4;
LABEL_35:
    v11 = 1000;
    goto LABEL_39;
  }

  if (a3 <= 5)
  {
    if (a3 == 4)
    {
      v12 = 5;
    }

    else
    {
      v12 = 3;
    }

    goto LABEL_35;
  }

  if (a3 == 6)
  {
    v11 = 1;
    v12 = 2;
  }

  else if (a3 == 7)
  {
    v11 = 4;
    v12 = 6;
  }

LABEL_39:
  v28 = v9;
  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v10;
    v15 = [MFDescription forPlayerState:a3];
    v16 = [MFDescription forPlayerState:a4];
    if (v30)
    {
      [v30 hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138545410;
    *(&time.value + 4) = v29;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v32 = v15;
    v33 = 2048;
    v34 = v12;
    v35 = 2048;
    v36 = v11;
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

  v18 = [(_MPCPlaybackEnginePlayer *)self bookmarker];
  v19 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v20 = [v19 currentQueueItem];
  [(_MPCPlaybackEnginePlayer *)self currentTime];
  v22 = v21;
  v23 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [v23 rate];
  LODWORD(v25) = v24;
  [v18 playbackStateDidChangeFromState:a3 toState:a4 forItem:v20 time:v22 rate:v25];

  if (a3 != a4)
  {
    v26 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
    v27 = [v26 eventObserver];
    [v27 engine:v26 didChangeToState:v28];
  }
}

- (void)routeDidChange:(BOOL)a3 metadata:(id)a4 timeStamp:(id)a5
{
  v6 = a3;
  v43 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v11 = [v10 engineID];

  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v8 routeDescription];
    v14 = [v8 isAirplay];
    if (v9)
    {
      [v9 hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544642;
    *(&time.value + 4) = v11;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 1024;
    v36 = v6;
    v37 = 2114;
    v38 = v13;
    v39 = 1024;
    v40 = v14;
    v41 = 2114;
    v42 = v15;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - routeDidChange - shouldPause=%{BOOL}u - route:%{public}@ - isAirplay=%{BOOL}u - timeStamp:%{public}@", &time, 0x36u);
  }

  v29 = v11;
  v30 = v9;

  v28 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v16 = [v28 eventStream];
  v33[0] = @"route-metadata";
  v31[0] = @"route-description";
  v17 = [v8 routeDescription];
  v18 = v17;
  if (!v17)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v31[1] = @"route-is-airplay";
  v32[0] = v18;
  [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isAirplay")}];
  v19 = v27 = v8;
  v32[1] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v34[0] = v20;
  v33[1] = @"route-should-pause";
  v21 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  v34[1] = v21;
  v33[2] = @"time-control-status";
  v22 = MEMORY[0x1E696AD98];
  v23 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v24 = [v22 numberWithInteger:{objc_msgSend(v23, "timeControlStatus")}];
  v34[2] = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];
  [v16 emitEventType:@"audio-route-changed" payload:v25];

  if (!v17)
  {
  }

  v26 = [(_MPCPlaybackEnginePlayer *)self configurator];
  [v26 updatePlayerConfiguration];
}

- (void)playbackWaitingToPlayForItem:(id)a3 reason:(id)a4 timeStamp:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v12 = [v11 engineID];

  v13 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v8];
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (v10)
    {
      [v10 hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544386;
    *(&time.value + 4) = v12;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v18 = v13;
    v19 = 2114;
    v20 = v9;
    v21 = 2114;
    v22 = v15;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - playbackWaitingToPlayFor - item=%{public}@ - reason:%{public}@ - timeStamp:%{public}@", &time, 0x34u);
  }

  v16 = [(_MPCPlaybackEnginePlayer *)self bookmarker];
  [v10 time];
  [v16 playbackDidStopForItem:v8 time:?];
}

- (void)timeControlStatusDidChange:(int64_t)a3 waitingReason:(id)a4 timeStamp:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v11 = [v10 engineID];

  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MFDescription forTimeControlStatus:a3];
    if (v9)
    {
      [v9 hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544386;
    *(&time.value + 4) = v11;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v22 = v13;
    v23 = 2114;
    v24 = v8;
    v25 = 2114;
    v26 = v14;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - timeControlStatusDidChange - status:%{public}@ - reason:%{public}@ - timeStamp:%{public}@", &time, 0x34u);
  }

  v15 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v16 = [v15 eventStream];
  v19[0] = @"time-control-status";
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v19[1] = @"time-control-status-reason";
  v20[0] = v17;
  v20[1] = v8;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  [v16 emitEventType:@"time-control-status-changed" payload:v18];
}

- (void)firstFrameWillRenderForItem:(id)a3 timeStamp:(id)a4
{
  v46[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v9 = [v8 engineID];
  v10 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v6];
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    [v7 time];
    *buf = 138544130;
    *&buf[4] = v9;
    *&buf[12] = 2114;
    *&buf[14] = self;
    *&buf[22] = 2114;
    *&buf[24] = v10;
    LOWORD(v46[0]) = 2050;
    *(v46 + 2) = v12;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - firstFrameWillRenderForItem - item=%{public}@ - startTime:%{public}.2f", buf, 0x2Au);
  }

  v13 = [v10 queueSectionID];
  v14 = [v10 queueItemID];
  if (![v13 length])
  {
    v33 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      *&buf[4] = v6;
      *&buf[12] = 2114;
      *&buf[14] = v13;
      v34 = "Unexpected firstFrameWillRenderForItem: without sectionID: %{public}@ %{public}@";
LABEL_15:
      _os_log_impl(&dword_1C5C61000, v33, OS_LOG_TYPE_FAULT, v34, buf, 0x16u);
    }

LABEL_16:

    goto LABEL_17;
  }

  if (![v14 length])
  {
    v33 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      *&buf[4] = v6;
      *&buf[12] = 2114;
      *&buf[14] = v14;
      v34 = "Unexpected firstFrameWillRenderForItem: without itemID: %{public}@ %{public}@";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v15 = [v10 timebase];
  [v7 time];
  if (v16 >= 0.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  [v10 initialPlaybackStartTime];
  v18 = v37 = v7;
  [v18 doubleValue];
  v20 = v19;

  if (vabdd_f64(v17, v20) < 0.5)
  {
    v17 = v20;
  }

  CMTimebaseGetTime(buf, v15);
  Seconds = CMTimeGetSeconds(buf);
  v46[0] = 0.0;
  memset(buf, 0, sizeof(buf));
  MPCPlaybackEngineEventGetMonotonicTime(buf);
  v22 = v17 - Seconds;
  [v8 eventStream];
  v23 = v36 = v8;
  v43[0] = @"queue-section-id";
  v43[1] = @"queue-item-id";
  v44[0] = v13;
  v44[1] = v14;
  v43[2] = @"item-start-position";
  [MEMORY[0x1E696AD98] numberWithDouble:v17];
  v24 = v35 = v9;
  v44[2] = v24;
  v43[3] = @"event-time-offset";
  v25 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
  v44[3] = v25;
  v43[4] = @"time-control-status";
  v26 = MEMORY[0x1E696AD98];
  v27 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v28 = [v26 numberWithInteger:{objc_msgSend(v27, "timeControlStatus")}];
  v44[4] = v28;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:5];
  v29 = v38 = v6;
  v39[0] = *buf;
  v39[1] = *&buf[16];
  v40 = v46[0];
  [v23 emitEventType:@"item-first-audio-frame" payload:v29 atTime:v39];

  v7 = v37;
  v9 = v35;

  v8 = v36;
  [(_MPCPlaybackEnginePlayer *)self endPlaybackStartCriticalSection];
  v30 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v22 + v46[0]];
  v31 = [MEMORY[0x1E696AD88] defaultCenter];
  v41 = @"MPCPlaybackEngineFirstAudioFrameDateKey";
  v42 = v30;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  [v31 postNotificationName:@"MPCPlaybackEngineFirstAudioFrameNotification" object:v36 userInfo:v32];

  v6 = v38;
LABEL_17:
}

- (void)effectiveRateDidChangeTo:(float)a3 forItem:(id)a4 timeStamp:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v11 = [v10 engineID];
  v12 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v9];

  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    [v8 time];
    v21 = 138544386;
    v22 = v11;
    v23 = 2114;
    v24 = self;
    v25 = 2114;
    v26 = v12;
    v27 = 2048;
    v28 = a3;
    v29 = 2050;
    v30 = v14;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - effectiveRateDidChange - item=%{public}@ - effectiveRate: %.2f - startTime:%{public}.2f", &v21, 0x34u);
  }

  v15 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v16 = [v15 timeControlStatus];

  if ((v16 - 1) <= 1)
  {
    [v8 time];
    [(_MPCPlaybackEnginePlayer *)self _adjustPlayerTimeForAudioTapProcessing:?];
    v18 = v17;
    v19 = [(_MPCPlaybackEnginePlayer *)self bookmarker];
    *&v20 = a3;
    [v19 updateDurationSnapshotWithTime:v12 forItem:v18 rate:v20];
  }

  if (a3 > 0.0)
  {
    [(_MPCPlaybackEnginePlayer *)self endPlaybackStartCriticalSection];
  }
}

- (void)playbackRateDidChangeNotifiedForItem:(id)a3 newRate:(float)a4 reason:(id)a5 participantIdentifier:(id)a6 timeStamp:(id)a7
{
  v61 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v17 = [v16 engineID];

  v44 = v12;
  v18 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v12];
  v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v13;
    if (v15)
    {
      [v15 hostTime];
    }

    else
    {
      memset(time, 0, 24);
    }

    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(time)];
    *time = 138544898;
    *&time[4] = v17;
    *&time[12] = 2114;
    *&time[14] = self;
    *&time[22] = 2114;
    *&time[24] = v18;
    *v54 = 2048;
    *&v54[2] = a4;
    v55 = 2114;
    v56 = v20;
    v57 = 2114;
    v58 = v14;
    v59 = 2114;
    v60 = v21;
    _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - playbackRateDidChangeNotifiedForItem - item=%{public}@ - rate:%1.2f - reason:%{public}@ - participant:%{public}@ - timeStamp:%{public}@", time, 0x48u);

    v13 = v20;
  }

  v22 = v15;
  v23 = v22;
  v45 = v14;
  v43 = v17;
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

  v26 = [v18 queueSectionID];
  v27 = [v18 queueItemID];
  if (![v26 length])
  {
    v28 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      *time = 138543618;
      v37 = v44;
      *&time[4] = v44;
      *&time[12] = 2114;
      *&time[14] = v26;
      v38 = "Unexpected playbackRateDidChangeNotifiedForItem: without sectionID: %{public}@ %{public}@";
LABEL_26:
      _os_log_impl(&dword_1C5C61000, v28, OS_LOG_TYPE_FAULT, v38, time, 0x16u);
      goto LABEL_28;
    }

LABEL_27:
    v37 = v44;
    goto LABEL_28;
  }

  if (![v27 length])
  {
    v28 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      *time = 138543618;
      v37 = v44;
      *&time[4] = v44;
      *&time[12] = 2114;
      *&time[14] = v27;
      v38 = "Unexpected playbackRateDidChangeNotifiedForItem: without itemID: %{public}@ %{public}@";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v28 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v42 = [v28 eventStream];
  v51[0] = @"queue-section-id";
  v51[1] = @"queue-item-id";
  v52[0] = v26;
  v52[1] = v27;
  v51[2] = @"item-rate-change-position";
  v29 = MEMORY[0x1E696AD98];
  [v23 time];
  v41 = [v29 numberWithDouble:?];
  v52[2] = v41;
  v51[3] = @"item-rate";
  *&v30 = a4;
  v40 = [MEMORY[0x1E696AD98] numberWithFloat:v30];
  v52[3] = v40;
  v51[4] = @"item-rate-change-reason";
  v31 = v13;
  if (!v13)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v31;
  v52[4] = v31;
  v51[5] = @"item-rate-change-participant-id";
  v32 = v45;
  if (!v45)
  {
    v32 = [MEMORY[0x1E695DFB0] null];
  }

  v52[5] = v32;
  v51[6] = @"time-control-status";
  v33 = MEMORY[0x1E696AD98];
  v34 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v35 = [v33 numberWithInteger:{objc_msgSend(v34, "timeControlStatus")}];
  v52[6] = v35;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:7];
  *time = v46;
  *&time[16] = v47;
  *v54 = v25;
  [v42 emitEventType:@"item-rate-changed" payload:v36 atTime:time];

  if (!v45)
  {
  }

  v37 = v44;
  if (!v13)
  {
  }

LABEL_28:
}

- (void)playbackRateDidChangeToRate:(float)a3 forItem:(id)a4 timeStamp:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v9];
  v11 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v12 = [v11 engineID];

  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      [v8 hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544386;
    *(&time.value + 4) = v12;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v19 = v10;
    v20 = 2048;
    v21 = a3;
    v22 = 2114;
    v23 = v14;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - playbackRateDidChangeToRate - item=%{public}@ - rate:%1.2f - timeStamp:%{public}@", &time, 0x34u);
  }

  v15 = [(_MPCPlaybackEnginePlayer *)self bookmarker];
  [v8 time];
  v17 = v16;
  *&v16 = a3;
  [v15 playbackRateDidChangeToRate:v9 forItem:v16 time:v17];
}

- (void)playbackDidStopForItem:(id)a3 source:(id)a4 reason:(id)a5 timeStamp:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v15 = [v14 engineID];
  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    [v13 time];
    v18 = v17;
    if (v13)
    {
      [v13 hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544898;
    *(&time.value + 4) = v15;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v31 = v10;
    v32 = 2114;
    v33 = v11;
    v34 = 2114;
    v35 = v12;
    v36 = 2048;
    v37 = v18;
    v38 = 2114;
    v39 = v19;
    _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - playbackDidStopForItem- item=%{public}@ - source:%{public}@ - reason:%{public}@   - time:%.3fs - timeStamp:%{public}@", &time, 0x48u);
  }

  [v13 time];
  [(_MPCPlaybackEnginePlayer *)self _playbackDidStopForItem:v10 source:v11 reason:v12 time:?];
  v20 = [v14 queueController];
  v21 = [v20 targetContentItemID];
  if (v21)
  {
    v22 = v21;
    v28 = v12;
    v29 = v11;
    v23 = [v14 queueController];
    v24 = [v23 targetContentItemID];
    v25 = [v10 contentItemID];
    v26 = v25;
    if (v24 != v25)
    {
      v27 = [v24 isEqual:v25];

      v12 = v28;
      v11 = v29;
      if ((v27 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v12 = v28;
    v11 = v29;
  }

LABEL_12:
  [(_MPCPlaybackEnginePlayer *)self endPlaybackStartCriticalSection];
LABEL_13:
}

- (void)playbackDidStartForItem:(id)a3 rate:(float)a4 expectedStartTime:(double)a5 fromStalling:(BOOL)a6 timeStamp:(id)a7
{
  v8 = a6;
  v84 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a7;
  v15 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v69 = [v15 engineID];
  v16 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v13];
  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    if (v14)
    {
      [v14 hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544898;
    *(&time.value + 4) = v69;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v75 = v16;
    v76 = 2048;
    v77 = a4;
    v78 = 2048;
    v79 = a5;
    v80 = 1024;
    v81 = v8;
    v82 = 2114;
    v83 = v18;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - playbackDidStartForItem:rate: - item=%{public}@ - rate:%1.2f - expectedStartTime: %1.3f - from stalling:%{BOOL}u - timeStamp:%{public}@", &time, 0x44u);
  }

  if (v16)
  {
    if (v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v56 = [MEMORY[0x1E696AAA8] currentHandler];
    [v56 handleFailureInMethod:a2 object:self file:@"_MPCPlaybackEnginePlayer.m" lineNumber:1635 description:{@"Invalid parameter not satisfying: %@", @"queueItem != nil"}];

    if (v8)
    {
      goto LABEL_11;
    }
  }

  v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v15 playerID];
    LODWORD(time.value) = 138543874;
    *(&time.value + 4) = v69;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = v20;
    HIWORD(time.epoch) = 2114;
    v75 = v16;
    _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@]-PSP: Setting hasPlayedSuccessfully: [playbackDidStartForItem] playerID=%{public}@ item=%{public}@", &time, 0x20u);
  }

  [MPCAVItemTrace traceWithName:@"MPTRACE_PLAYBACK_DID_START" item:v16 event:731643976];
  v21 = [(_MPCPlaybackEnginePlayer *)self playbackStartTrace];
  [v21 endInterval];

  v22 = [(_MPCPlaybackEnginePlayer *)self errorController];
  [v22 setItemsHavePlayed:1];

  [v15 schedulePlaybackStatePreservation];
LABEL_11:
  v68 = v14;
  [v14 time];
  if (v23 >= 0.0)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0.0;
  }

  v25 = [v16 initialPlaybackStartTime];
  [v25 doubleValue];
  v27 = v26;

  if (vabdd_f64(v24, v27) >= 0.5)
  {
    v27 = v24;
  }

  v28 = [(_MPCPlaybackEnginePlayer *)self bookmarker];
  *&v29 = a4;
  [v28 playbackDidStartForItem:v13 time:v27 rate:v29];

  v30 = [v16 queueSectionID];
  v31 = [v16 queueItemID];
  if ([v30 length])
  {
    if ([v31 length])
    {
      if (v8)
      {
        v32 = [(_MPCPlaybackEnginePlayer *)self lastReportedVocalAttenuationEnabledState];
        if (v32 == [v15 isVocalAttenuationEnabled])
        {
LABEL_32:
          -[_MPCPlaybackEnginePlayer setLastReportedVocalAttenuationEnabledState:](self, "setLastReportedVocalAttenuationEnabledState:", [v15 isVocalAttenuationEnabled]);
          v42 = [v15 eventObserver];
          *&v55 = a4;
          [v42 engine:v15 didChangeItemElapsedTime:v27 rate:v55];
          goto LABEL_33;
        }

        v66 = [v15 eventStream];
        v70[0] = @"queue-section-id";
        v70[1] = @"queue-item-id";
        v71[0] = v30;
        v71[1] = v31;
        v70[2] = @"item-start-position";
        v33 = [MEMORY[0x1E696AD98] numberWithDouble:v27];
        v71[2] = v33;
        v70[3] = @"time-control-status";
        v34 = MEMORY[0x1E696AD98];
        v65 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
        v64 = [v34 numberWithInteger:{objc_msgSend(v65, "timeControlStatus")}];
        v71[3] = v64;
        v70[4] = @"supports-vocal-attenuation";
        v63 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v16, "supportsVocalAttenuation")}];
        v71[4] = v63;
        v70[5] = @"vocal-attenuation-available";
        v62 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v15, "isVocalAttenuationAvailable")}];
        v71[5] = v62;
        v70[6] = @"vocal-attenuation-enabled";
        v61 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v15, "isVocalAttenuationEnabled")}];
        v71[6] = v61;
        v70[7] = @"vocal-attenuation-configured";
        v60 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v16, "isConfiguredForVocalAttenuation")}];
        v71[7] = v60;
        v70[8] = @"vocal-attenuation-processing-delay";
        v35 = MEMORY[0x1E696AD98];
        v36 = [v16 supportsVocalAttenuation];
        v37 = 0.0;
        if (v36)
        {
          [v15 currentAudioProcessingDelay];
          v37 = v38 * 1000.0;
        }

        v39 = [v35 numberWithDouble:v37];
        v71[8] = v39;
        v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:9];
        v41 = v66;
        [v66 emitEventType:@"item-vocal-attenuation-changed" payload:v40];
      }

      else
      {
        v67 = [v15 eventStream];
        v72[0] = @"event-time-offset";
        v44 = MEMORY[0x1E696AD98];
        [v68 time];
        v73[0] = [v44 numberWithDouble:v27 - v45];
        v73[1] = v30;
        v72[1] = @"queue-section-id";
        v72[2] = @"queue-item-id";
        v73[2] = v31;
        v72[3] = @"item-start-position";
        v65 = [MEMORY[0x1E696AD98] numberWithDouble:v27];
        v73[3] = v65;
        v72[4] = @"item-expected-start-position";
        v59 = v13;
        [MEMORY[0x1E696AD98] numberWithDouble:a5];
        v64 = v58 = v73[0];
        v73[4] = v64;
        v72[5] = @"time-control-status";
        v46 = MEMORY[0x1E696AD98];
        v63 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
        v62 = [v46 numberWithInteger:{objc_msgSend(v63, "timeControlStatus")}];
        v73[5] = v62;
        v72[6] = @"item-rate";
        *&v47 = a4;
        v61 = [MEMORY[0x1E696AD98] numberWithFloat:v47];
        v73[6] = v61;
        v72[7] = @"supports-vocal-attenuation";
        v60 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v16, "supportsVocalAttenuation")}];
        v73[7] = v60;
        v72[8] = @"vocal-attenuation-available";
        v57 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v15, "isVocalAttenuationAvailable")}];
        v73[8] = v57;
        v72[9] = @"vocal-attenuation-enabled";
        v40 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v15, "isVocalAttenuationEnabled")}];
        v73[9] = v40;
        v72[10] = @"vocal-attenuation-configured";
        v48 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v16, "isConfiguredForVocalAttenuation")}];
        v73[10] = v48;
        v72[11] = @"vocal-attenuation-processing-delay";
        v49 = MEMORY[0x1E696AD98];
        v50 = [v16 supportsVocalAttenuation];
        v51 = 0.0;
        if (v50)
        {
          [v15 currentAudioProcessingDelay];
          v51 = v52 * 1000.0;
        }

        v53 = [v49 numberWithDouble:v51];
        v73[11] = v53;
        v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:12];
        v41 = v67;
        [v67 emitEventType:@"item-resume" payload:v54];

        v33 = v58;
        v13 = v59;
        v39 = v57;
      }

      goto LABEL_32;
    }

    v42 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
    {
      LODWORD(time.value) = 138543618;
      *(&time.value + 4) = v13;
      LOWORD(time.flags) = 2114;
      *(&time.flags + 2) = v31;
      v43 = "Unexpected playbackDidStartForItem: without itemID: %{public}@ %{public}@";
      goto LABEL_27;
    }
  }

  else
  {
    v42 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
    {
      LODWORD(time.value) = 138543618;
      *(&time.value + 4) = v13;
      LOWORD(time.flags) = 2114;
      *(&time.flags + 2) = v30;
      v43 = "Unexpected playbackDidStartForItem: without sectionID: %{public}@ %{public}@";
LABEL_27:
      _os_log_impl(&dword_1C5C61000, v42, OS_LOG_TYPE_FAULT, v43, &time, 0x16u);
    }
  }

LABEL_33:
}

- (double)_adjustPlayerTimeForAudioTapProcessing:(double)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v6 = [v5 engineID];
  [v5 mapPlaybackTimeToUserTime:a3];
  v8 = v7;
  if (v7 != a3)
  {
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138544130;
      v12 = v6;
      v13 = 2114;
      v14 = self;
      v15 = 2048;
      v16 = a3;
      v17 = 2048;
      v18 = v8;
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - Adjusting time with current processing delay - time: %3.4f -> corrected time: %3.4f", &v11, 0x2Au);
    }
  }

  return v8;
}

- (void)_updateActiveFormatForQueueItem:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v6 = [v5 engineID];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v4;
    v8 = [v7 avPlayerItem];
    v9 = [v8 currentStableVariantID];
    if (v9)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __60___MPCPlaybackEnginePlayer__updateActiveFormatForQueueItem___block_invoke;
      aBlock[3] = &unk_1E8234DF0;
      aBlock[4] = self;
      v21 = v7;
      v10 = v6;
      v22 = v10;
      v11 = v21;
      v23 = v11;
      v12 = _Block_copy(aBlock);
      v13 = [v11 audioFormatForStableVariantID:v9];
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
          v27 = self;
          v28 = 2114;
          v29 = v9;
          _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - No session-data audio format found for stableVariantID=%{public}@", buf, 0x20u);
        }

        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __60___MPCPlaybackEnginePlayer__updateActiveFormatForQueueItem___block_invoke_190;
        v15[3] = &unk_1E8234E18;
        v19 = v12;
        v16 = v10;
        v17 = self;
        v18 = v9;
        [v8 loadCurrentTrackAudioFormatWithCompletion:v15];
      }
    }
  }
}

- (void)itemIsReadyToPlay:(id)a3 timeStamp:(id)a4
{
  v56[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v9 = [v8 engineID];

  v10 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v6];
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      [v7 hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544130;
    *(&time.value + 4) = v9;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v55 = v10;
    LOWORD(v56[0]) = 2114;
    *(v56 + 2) = v12;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - itemIsReadyToPlay - item=%{public}@ - timeStamp:%{public}@", &time, 0x2Au);
  }

  v13 = v7;
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

  v19 = [v10 queueSectionID];
  v20 = [v10 queueItemID];
  v45 = v19;
  v44 = v20;
  if (![v19 length])
  {
    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_21;
    }

    LODWORD(time.value) = 138543618;
    *(&time.value + 4) = v6;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = v45;
    v38 = "Unexpected itemIsReadyToPlay: without sectionID: %{public}@ %{public}@";
LABEL_20:
    _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_FAULT, v38, &time, 0x16u);
    goto LABEL_21;
  }

  if (![v20 length])
  {
    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_21;
    }

    LODWORD(time.value) = 138543618;
    *(&time.value + 4) = v6;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = v20;
    v38 = "Unexpected itemIsReadyToPlay: without itemID: %{public}@ %{public}@";
    goto LABEL_20;
  }

  v41 = v9;
  v42 = v6;
  v21 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v22 = [v21 eventStream];
  v23 = value;
  v24 = v22;
  v52[0] = @"queue-section-id";
  v52[1] = @"queue-item-id";
  v53[0] = v45;
  v53[1] = v20;
  v25 = v23;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
  *&time.timescale = v43;
  time.value = v25;
  v40 = v16;
  v55 = v16;
  v56[0] = v18;
  [v24 emitEventType:@"item-ready-to-play" payload:v26 atTime:&time];

  v27 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [v27 rate];
  v29 = v28;

  if (v29 > 0.0)
  {
    v30 = [v21 eventStream];
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
    v35 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v36 = [v34 numberWithInteger:{objc_msgSend(v35, "timeControlStatus")}];
    v51[5] = v36;
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:6];
    *&time.timescale = vaddq_s64(v43, vdupq_n_s64(1uLL));
    time.value = v25;
    v55 = v40;
    v56[0] = v18 + 0.000000001;
    [v30 emitEventType:@"item-rate-changed" payload:v37 atTime:&time];
  }

  [v10 reevaluateHasProtectedContent];
  [v10 reevaluateType];
  [(_MPCPlaybackEnginePlayer *)self _updateActiveFormatForQueueItem:v10];
  v9 = v41;
  v6 = v42;
LABEL_21:
}

- (void)itemDidPlayToEnd:(id)a3 timeStamp:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v7];
  v9 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v10 = [v9 engineID];

  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (v6)
    {
      [v6 hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544130;
    *(&time.value + 4) = v10;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v31 = *&v8;
    v32 = 2114;
    v33 = v12;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - itemDidPlayToEnd - item=%{public}@ - timeStamp:%{public}@", &time, 0x2Au);
  }

  v13 = [(_MPCPlaybackEnginePlayer *)self bookmarker];
  [v6 time];
  [v13 itemDidPlayToEnd:v7 time:?];

  v14 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v15 = [v14 eventObserver];
  [v15 engine:v14 didEndPlaybackOfItem:v8];

  v16 = v8;
  if (MSVDeviceOSIsInternalInstall())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
      if ([v17 durationIsValid] && objc_msgSend(v17, "isAssetLoaded"))
      {
        v18 = [v17 playerItem];
        v19 = v18;
        if (v18)
        {
          [v18 duration];
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

- (void)itemDidFailToPlayToEnd:(id)a3 error:(id)a4 timeStamp:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v12 = [v11 engineID];

  v13 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v8];
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (v10)
    {
      [v10 hostTime];
    }

    else
    {
      memset(time, 0, 24);
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(time)];
    *time = 138544386;
    *&time[4] = v12;
    *&time[12] = 2114;
    *&time[14] = self;
    *&time[22] = 2114;
    *&time[24] = v13;
    *v41 = 2114;
    *&v41[2] = v9;
    v42 = 2114;
    v43 = v15;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - itemDidFailToPlayToEnd - item=%{public}@ - error=%{public}@ - timeStamp:%{public}@", time, 0x34u);
  }

  v16 = v10;
  v17 = v16;
  v32 = v12;
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

  v20 = [v13 queueSectionID];
  v21 = [v13 queueItemID];
  if (![v20 length])
  {
    v22 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_23;
    }

    *time = 138543618;
    *&time[4] = v8;
    *&time[12] = 2114;
    *&time[14] = v20;
    v29 = "Unexpected itemDidFailToPlayToEnd: without sectionID: %{public}@ %{public}@";
LABEL_22:
    _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_FAULT, v29, time, 0x16u);
    goto LABEL_23;
  }

  if (![v21 length])
  {
    v22 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_23;
    }

    *time = 138543618;
    *&time[4] = v8;
    *&time[12] = 2114;
    *&time[14] = v21;
    v29 = "Unexpected itemDidFailToPlayToEnd: without itemID: %{public}@ %{public}@";
    goto LABEL_22;
  }

  v30 = v8;
  v22 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v31 = [v22 eventStream];
  v38[0] = @"queue-section-id";
  v38[1] = @"queue-item-id";
  v39[0] = v20;
  v39[1] = v21;
  v38[2] = @"asset-load-error";
  v23 = v9;
  v24 = v9;
  if (!v9)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v39[2] = v23;
  v38[3] = @"time-control-status";
  v25 = MEMORY[0x1E696AD98];
  v26 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v27 = [v25 numberWithInteger:{objc_msgSend(v26, "timeControlStatus")}];
  v39[3] = v27;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:4];
  *time = v33;
  *&time[16] = v34;
  *v41 = v19;
  [v31 emitEventType:@"item-failed" payload:v28 atTime:time];

  v9 = v24;
  if (!v24)
  {
  }

  v8 = v30;
LABEL_23:
}

- (void)itemDidFailToLoad:(id)a3 silently:(BOOL)a4 error:(id)a5 timeStamp:(id)a6
{
  v7 = a4;
  v27 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v14 = [v13 engineID];
  v15 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v12];

  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (v11)
    {
      [v11 hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544642;
    *(&time.value + 4) = v14;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v20 = v15;
    v21 = 1024;
    v22 = v7;
    v23 = 2114;
    v24 = v10;
    v25 = 2114;
    v26 = v17;
    _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - itemDidFailToLoad - item=%{public}@ - silently=%{BOOL}u - error=%{public}@ - timeStamp:%{public}@", &time, 0x3Au);
  }

  if (v7)
  {
    v18 = [v13 queueController];
    [v18 playerItemDidBecomeCurrent:v15];
  }

  [(_MPCPlaybackEnginePlayer *)self endPlaybackStartCriticalSection];
}

- (void)userSeekCompletedForItem:(id)a3 fromTime:(double)a4 toTime:(double)a5 timeStamp:(id)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v13 = [v12 engineID];
  v14 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v10];
  [(_MPCPlaybackEnginePlayer *)self _adjustPlayerTimeForAudioTapProcessing:a5];
  v16 = v15;
  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    if (v11)
    {
      [v11 hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544642;
    *(&time.value + 4) = v13;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v28 = v14;
    v29 = 2048;
    v30 = a4;
    v31 = 2048;
    v32 = v16;
    v33 = 2114;
    v34 = v18;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - userSeekCompletedForItem - item=%{public}@ - [%.2fs -> %.2fs]- timeStamp:%{public}@", &time, 0x3Eu);
  }

  v19 = [(_MPCPlaybackEnginePlayer *)self bookmarker];
  v20 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [v20 effectiveRate];
  LODWORD(v22) = v21;
  [v19 updateDurationSnapshotWithTime:v10 forItem:v16 rate:v22];

  [(_MPCPlaybackEnginePlayer *)self _logTimeJumpForItem:v14 fromTime:1 toTime:v11 userInitiated:a4 timeStamp:v16];
  v23 = [v12 eventObserver];
  v24 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [v24 rate];
  LODWORD(v26) = v25;
  [v23 engine:v12 didChangeItemElapsedTime:v16 rate:v26];
}

- (void)playbackTimeDidChangeTo:(double)a3 forItem:(id)a4 reason:(int64_t)a5 timeStamp:(id)a6
{
  v84 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a6;
  v12 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v13 = [v12 engineID];
  v14 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v10];
  [(_MPCPlaybackEnginePlayer *)self _adjustPlayerTimeForAudioTapProcessing:a3];
  v16 = v15;
  v17 = [(_MPCPlaybackEnginePlayer *)self bookmarker];
  v18 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [v18 effectiveRate];
  LODWORD(v20) = v19;
  [v17 updateDurationSnapshotWithTime:v10 forItem:v16 rate:v20];

  if ([v14 isAlwaysLive])
  {
    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      if (v11)
      {
        [v11 hostTime];
      }

      else
      {
        memset(time, 0, 24);
      }

      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(time)];
      *time = 138544386;
      *&time[4] = v13;
      *&time[12] = 2114;
      *&time[14] = self;
      *&time[22] = 2048;
      *&time[24] = v16;
      *v73 = 2114;
      *&v73[2] = v14;
      v74 = 2114;
      v75 = *&v31;
      v32 = "[%{public}@]-%{public}@ - playbackTimeDidChangeTo - Live item [ignoring time change] - time:%.2fs - item=%{public}@ - timeStamp:%{public}@";
LABEL_19:
      _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEFAULT, v32, time, 0x34u);
LABEL_39:

      goto LABEL_40;
    }

    goto LABEL_40;
  }

  v22 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  if ([v22 currentState] == 4)
  {

    goto LABEL_9;
  }

  v23 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v24 = [v23 currentState];

  if (v24 != 3)
  {
    v25 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v63 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
      [v63 rate];
      v28 = v27;
      v61 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
      [v61 effectiveRate];
      v30 = v29;
      v57 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
      v59 = +[MFDescription forPlayerState:](MFDescription, "forPlayerState:", [v57 currentState]);
      v56 = [MFDescription forPlaybackTimeChangeReason:a5];
      if (v11)
      {
        [v11 hostTime];
      }

      else
      {
        memset(time, 0, 24);
      }

      v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(time)];
      *time = 138545410;
      *&time[4] = v13;
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

    v21 = [v14 contentItem];
    [v21 elapsedTimeTimestamp];
    v34 = v33;
    [v21 calculatedElapsedTime];
    v36 = v35;
    [v21 elapsedTimeTimestamp];
    if (a5 == 2 || a5 == 1 && v34 != v37)
    {
      [(_MPCPlaybackEnginePlayer *)self _logTimeJumpForItem:v14 fromTime:a5 == 2 toTime:v11 userInitiated:v36 timeStamp:v16];
LABEL_38:
      v31 = [v12 eventObserver];
      v52 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
      [v52 rate];
      LODWORD(v54) = v53;
      [v31 engine:v12 didChangeItemElapsedTime:v16 rate:v54];

      goto LABEL_39;
    }

    v38 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v10];
    v39 = v11;
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

        v62 = [v12 eventStream];
        v70[0] = @"queue-section-id";
        v60 = [v38 queueSectionID];
        v71[0] = v60;
        v70[1] = @"queue-item-id";
        v64 = v38;
        v58 = [v38 queueItemID];
        v71[1] = v58;
        v70[2] = @"item-end-position";
        v43 = MEMORY[0x1E696AD98];
        [v21 duration];
        v44 = a3;
        if (v45 <= a3)
        {
          [v21 duration];
          v44 = v46;
        }

        v47 = 0.0;
        if (v44 >= 0.0)
        {
          [v21 duration];
          v49 = v48 <= a3;
          v47 = a3;
          if (v49)
          {
            [v21 duration];
          }
        }

        v50 = [v43 numberWithDouble:v47];
        v71[2] = v50;
        v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:3];
        *time = v65;
        *&time[16] = v66;
        *v73 = v42;
        [v62 emitEventType:@"item-position-tick" payload:v51 atTime:time];

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
  v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if (v11)
    {
      [v11 hostTime];
    }

    else
    {
      memset(time, 0, 24);
    }

    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(time)];
    *time = 138544386;
    *&time[4] = v13;
    *&time[12] = 2114;
    *&time[14] = self;
    *&time[22] = 2048;
    *&time[24] = v16;
    *v73 = 2114;
    *&v73[2] = v14;
    v74 = 2114;
    v75 = *&v31;
    v32 = "[%{public}@]-%{public}@ - playbackTimeDidChangeTo - FF or RW [ignoring time change to avoid time snaps] - time:%.2fs - item=%{public}@ - timeStamp:%{public}@";
    goto LABEL_19;
  }

LABEL_40:
}

- (void)playbackDidReachQueueEndWithTimeStamp:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v6 = [v5 engineID];

  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      [v4 hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138543874;
    *(&time.value + 4) = v6;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v10 = v8;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - playbackDidReachQueueEnd - timeStamp:%{public}@", &time, 0x20u);
  }
}

- (void)overlappedPlaybackDidEndFrom:(id)a3 to:(id)a4 transitionTime:(id)a5 transitionType:(int64_t)a6 timeStamp:(id)a7
{
  v91 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v16 = [v15 engineID];
  v17 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v11];
  v71 = self;
  v73 = v12;
  v18 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v12];
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
    [v13 startItemSourceTime];
    v21 = v20;
    [v13 endItemSourceTime];
    v23 = v22;
    if (v14)
    {
      [v14 hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544898;
    *(&time.value + 4) = v16;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v83 = v11;
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

  v25 = [(_MPCPlaybackEnginePlayer *)self translator];
  [v25 setMPAVItem:0 forMFPlayerItem:v11];

  v26 = v14;
  v27 = v26;
  v70 = v11;
  v61 = v16;
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

  v30 = [v15 eventStream];
  v80[0] = @"outgoing-item-section-id";
  v58 = [v17 queueSectionID];
  v81[0] = v58;
  v80[1] = @"outgoing-item-id";
  v57 = [v17 queueItemID];
  v81[1] = v57;
  v80[2] = @"transition-outgoing-item-source-time";
  v69 = v27;
  v31 = MEMORY[0x1E696AD98];
  [v13 startItemSourceTime];
  v32 = [v31 numberWithDouble:?];
  v81[2] = v32;
  v80[3] = @"transition-outgoing-item-target-time";
  v33 = MEMORY[0x1E696AD98];
  [v13 startItemTargetTime];
  v34 = [v33 numberWithDouble:?];
  v81[3] = v34;
  v80[4] = @"incoming-item-section-id";
  v35 = [v18 queueSectionID];
  v81[4] = v35;
  v80[5] = @"incoming-item-id";
  [v18 queueItemID];
  v64 = v18;
  v36 = v65 = v15;
  v81[5] = v36;
  v80[6] = @"transition-incoming-item-source-time";
  v37 = MEMORY[0x1E696AD98];
  [v13 endItemSourceTime];
  [v37 numberWithDouble:?];
  v38 = v63 = v17;
  v81[6] = v38;
  v80[7] = @"transition-incoming-item-target-time";
  v39 = MEMORY[0x1E696AD98];
  [v13 endItemTargetTime];
  v40 = [v39 numberWithDouble:?];
  v81[7] = v40;
  v80[8] = @"transition-type";
  v41 = [MEMORY[0x1E696AD98] numberWithInteger:a6];
  v81[8] = v41;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:9];
  v42 = v62 = v13;
  *&time.timescale = v67;
  time.value = value;
  v83 = v66;
  *v84 = v29;
  [v30 emitEventType:@"overlapped-playback-did-end" payload:v42 atTime:&time];

  if (a6 == 1)
  {
    v43 = [(_MPCPlaybackEnginePlayer *)v71 bookmarker];
    [v43 itemTransitionWillBeginFrom:v70 to:v73 type:1 timeStamp:v69];

    v60 = [v65 eventStream];
    v78[0] = @"outgoing-item-section-id";
    v72 = [v63 queueSectionID];
    v79[0] = v72;
    v78[1] = @"outgoing-item-id";
    v44 = [v63 queueItemID];
    v79[1] = v44;
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
    v49 = [v64 queueSectionID];
    v79[4] = v49;
    v78[5] = @"incoming-item-id";
    v50 = [v64 queueItemID];
    v79[5] = v50;
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
    [v60 emitEventType:@"transition-did-end" payload:v56 atTime:&time];
  }
}

- (void)overlappedPlaybackWillBeginFrom:(id)a3 to:(id)a4 transitionTime:(id)a5 transitionType:(int64_t)a6 timeStamp:(id)a7
{
  v104 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v86 = a5;
  v14 = a7;
  v15 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v16 = [v15 engineID];
  v85 = v12;
  v17 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v12];
  v84 = v13;
  v18 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v13];
  if (_os_feature_enabled_impl())
  {
    [v17 setInOverlappedTransition:1];
    [v18 setInOverlappedTransition:1];
  }

  v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    [v86 startItemSourceTime];
    v21 = v20;
    [v86 endItemSourceTime];
    v23 = v22;
    if (v14)
    {
      [v14 hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544898;
    *(&time.value + 4) = v16;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v96 = *&v85;
    *v97 = 2048;
    *&v97[2] = v21;
    v98 = 2114;
    v99 = v13;
    v100 = 2048;
    v101 = v23;
    v102 = 2114;
    v103 = v24;
    _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - overlappedPlaybackWillBegin - %{public}@ [%3.2fs] -> %{public}@ [%3.2fs] - timeStamp:%{public}@", &time, 0x48u);
  }

  v25 = v14;
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
  v80 = time;
  v79 = v96;
  [v26 userSecondsSinceReferenceDate];
  v28 = v27;
  v78 = v16;
  v81 = v26;

  v77 = a6;
  v82 = v18;
  v83 = v15;
  if (a6 == 1)
  {
    v29 = [(_MPCPlaybackEnginePlayer *)self bookmarker];
    [v29 itemTransitionWillBeginFrom:v85 to:v13 type:1 timeStamp:v81];

    v30 = [v15 eventStream];
    v93[0] = @"outgoing-item-section-id";
    v75 = [v17 queueSectionID];
    v94[0] = v75;
    v93[1] = @"outgoing-item-id";
    v73 = [v17 queueItemID];
    v94[1] = v73;
    v93[2] = @"transition-outgoing-item-source-time";
    v31 = MEMORY[0x1E696AD98];
    [v86 startItemSourceTime];
    v72 = [v31 numberWithDouble:?];
    v94[2] = v72;
    v93[3] = @"transition-outgoing-item-target-time";
    v32 = MEMORY[0x1E696AD98];
    [v86 startItemTargetTime];
    v71 = [v32 numberWithDouble:?];
    v94[3] = v71;
    v93[4] = @"incoming-item-section-id";
    v33 = [v18 queueSectionID];
    v94[4] = v33;
    v93[5] = @"incoming-item-id";
    v34 = [v18 queueItemID];
    v94[5] = v34;
    v93[6] = @"transition-incoming-item-source-time";
    v35 = MEMORY[0x1E696AD98];
    [v86 endItemSourceTime];
    v36 = [v35 numberWithDouble:?];
    v94[6] = v36;
    v93[7] = @"transition-incoming-item-target-time";
    v37 = MEMORY[0x1E696AD98];
    [v86 endItemTargetTime];
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
    *&time.timescale = vaddq_s64(*&v80.timescale, v42);
    time.value = v80.value;
    v96 = v79;
    *v97 = v28 + -0.000000001;
    [v30 emitEventType:@"transition-will-start" payload:v41 atTime:&time];

    v17 = v40;
    v18 = v82;

    v15 = v83;
    [(_MPCPlaybackEnginePlayer *)self donateMetricsForTransitionWillStartFrom:v85 to:v13 transitionProvided:1];
  }

  v74 = v17;
  v43 = [v15 eventStream];
  v91[0] = @"outgoing-item-section-id";
  v76 = [v17 queueSectionID];
  v92[0] = v76;
  v91[1] = @"outgoing-item-id";
  v44 = [v17 queueItemID];
  v92[1] = v44;
  v91[2] = @"transition-outgoing-item-source-time";
  v45 = MEMORY[0x1E696AD98];
  [v86 startItemSourceTime];
  v46 = [v45 numberWithDouble:?];
  v92[2] = v46;
  v91[3] = @"transition-outgoing-item-target-time";
  v47 = MEMORY[0x1E696AD98];
  [v86 startItemTargetTime];
  v48 = [v47 numberWithDouble:?];
  v92[3] = v48;
  v91[4] = @"incoming-item-section-id";
  v49 = [v18 queueSectionID];
  v92[4] = v49;
  v91[5] = @"incoming-item-id";
  v50 = [v18 queueItemID];
  v92[5] = v50;
  v91[6] = @"transition-incoming-item-source-time";
  v51 = MEMORY[0x1E696AD98];
  [v86 endItemSourceTime];
  v52 = [v51 numberWithDouble:?];
  v92[6] = v52;
  v91[7] = @"transition-incoming-item-target-time";
  v53 = MEMORY[0x1E696AD98];
  [v86 endItemTargetTime];
  v54 = [v53 numberWithDouble:?];
  v92[7] = v54;
  v91[8] = @"transition-type";
  v55 = [MEMORY[0x1E696AD98] numberWithInteger:v77];
  v92[8] = v55;
  v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:9];
  time = v80;
  v96 = v79;
  *v97 = v28;
  [v43 emitEventType:@"overlapped-playback-will-start" payload:v56 atTime:&time];

  v57 = v74;
  if (MSVDeviceOSIsInternalInstall())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = v57;
      if ([v58 durationIsValid] && objc_msgSend(v58, "isAssetLoaded"))
      {
        v59 = [v58 playerItem];
        v60 = v59;
        if (v59)
        {
          [v59 duration];
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

- (void)smartTransitionDidEndFrom:(id)a3 to:(id)a4 transitionTime:(id)a5 timeStamp:(id)a6
{
  v85 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v15 = [v14 engineID];
  v16 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v10];
  v17 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v11];
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
    [v12 startItemSourceTime];
    v20 = v19;
    [v12 endItemSourceTime];
    v22 = v21;
    if (v13)
    {
      [v13 hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544898;
    *(&time.value + 4) = v15;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v77 = v10;
    *v78 = 2048;
    *&v78[2] = v20;
    v79 = 2114;
    v80 = v11;
    v81 = 2048;
    v82 = v22;
    v83 = 2114;
    v84 = v23;
    _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - smartTransitionDidEnd - %{public}@ [%3.2fs] -> %{public}@ [%3.2fs] - timeStamp:%{public}@", &time, 0x48u);
  }

  v24 = [(_MPCPlaybackEnginePlayer *)self bookmarker];
  [v13 time];
  [v24 itemSmartTransitionDidEnd:v11 time:?];

  v25 = v13;
  v26 = v25;
  v62 = v11;
  v63 = v10;
  v61 = v15;
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
  v66 = time;
  v65 = v77;
  [v26 userSecondsSinceReferenceDate];
  v28 = v27;

  v55 = [v14 eventStream];
  v74[0] = @"outgoing-item-section-id";
  v57 = [v16 queueSectionID];
  v75[0] = v57;
  v74[1] = @"outgoing-item-id";
  [v16 queueItemID];
  v56 = v64 = v16;
  v75[1] = v56;
  v74[2] = @"transition-outgoing-item-source-time";
  v60 = v26;
  v29 = MEMORY[0x1E696AD98];
  [v12 startItemSourceTime];
  v30 = [v29 numberWithDouble:?];
  v75[2] = v30;
  v74[3] = @"transition-outgoing-item-target-time";
  v31 = MEMORY[0x1E696AD98];
  [v12 startItemTargetTime];
  v32 = [v31 numberWithDouble:?];
  v75[3] = v32;
  v74[4] = @"incoming-item-section-id";
  v33 = [v67 queueSectionID];
  v75[4] = v33;
  v74[5] = @"incoming-item-id";
  v34 = [v67 queueItemID];
  v75[5] = v34;
  v74[6] = @"transition-incoming-item-source-time";
  v35 = MEMORY[0x1E696AD98];
  [v12 endItemSourceTime];
  v36 = [v35 numberWithDouble:?];
  v75[6] = v36;
  v74[7] = @"transition-incoming-item-target-time";
  v59 = v14;
  v37 = v12;
  v38 = MEMORY[0x1E696AD98];
  [v37 endItemTargetTime];
  v39 = [v38 numberWithDouble:?];
  v74[8] = @"transition-type";
  v75[7] = v39;
  v75[8] = &unk_1F45993B8;
  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:9];
  v41.i64[0] = -1;
  v41.i64[1] = -1;
  *&time.timescale = vaddq_s64(*&v66.timescale, v41);
  time.value = v66.value;
  v77 = v65;
  *v78 = v28 + -0.000000001;
  [v55 emitEventType:@"overlapped-playback-did-end" payload:v40 atTime:&time];

  v42 = [v14 eventStream];
  v72[0] = @"outgoing-item-section-id";
  v58 = [v64 queueSectionID];
  v73[0] = v58;
  v72[1] = @"outgoing-item-id";
  v43 = [v64 queueItemID];
  v73[1] = v43;
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
  v48 = [v67 queueSectionID];
  v73[4] = v48;
  v72[5] = @"incoming-item-id";
  v49 = [v67 queueItemID];
  v73[5] = v49;
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
  time = v66;
  v77 = v65;
  *v78 = v28;
  [v42 emitEventType:@"transition-did-end" payload:v54 atTime:&time];
}

- (void)overlappingTransitionDidReachPivotPointFrom:(id)a3 to:(id)a4 transitionTime:(id)a5 incomingItemAveragePostPivotTransitionRate:(double)a6 transitionType:(int64_t)a7 timeStamp:(id)a8
{
  v72 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a8;
  v17 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v18 = [v17 engineID];
  v56 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v13];
  v53 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v14];
  v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    [v15 startItemSourceTime];
    v21 = v20;
    [v15 endItemSourceTime];
    v23 = v22;
    if (v16)
    {
      [v16 hostTime];
    }

    else
    {
      memset(time, 0, 24);
    }

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(time)];
    *time = 138544898;
    *&time[4] = v18;
    *&time[12] = 2114;
    *&time[14] = self;
    *&time[22] = 2114;
    *&time[24] = v13;
    *v65 = 2048;
    *&v65[2] = v21;
    v66 = 2114;
    v67 = v14;
    v68 = 2048;
    v69 = v23;
    v70 = 2114;
    v71 = v24;
    _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - overlappingTransitionDidReachPivotPoint - %{public}@ [%3.2fs] -> %{public}@ [%3.2fs] - timeStamp:%{public}@", time, 0x48u);
  }

  v54 = v18;

  v25 = [(_MPCPlaybackEnginePlayer *)self bookmarker];
  [v16 time];
  [v25 itemTransitionDidReachPivotPoint:v13 to:v14 incomingItemAveragePostPivotTransitionRate:a6 time:v26];

  v27 = v16;
  v28 = v27;
  v55 = v14;
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

  v31 = [v17 eventStream];
  v62[0] = @"outgoing-item-section-id";
  v51 = v28;
  v50 = [v56 queueSectionID];
  v63[0] = v50;
  v62[1] = @"outgoing-item-id";
  v49 = [v56 queueItemID];
  v63[1] = v49;
  v62[2] = @"transition-outgoing-item-source-time";
  v32 = MEMORY[0x1E696AD98];
  [v15 startItemSourceTime];
  v48 = [v32 numberWithDouble:?];
  v63[2] = v48;
  v62[3] = @"transition-outgoing-item-target-time";
  v33 = MEMORY[0x1E696AD98];
  [v15 startItemTargetTime];
  v34 = [v33 numberWithDouble:?];
  v63[3] = v34;
  v62[4] = @"incoming-item-section-id";
  v35 = [v53 queueSectionID];
  v63[4] = v35;
  v62[5] = @"incoming-item-id";
  v36 = [v53 queueItemID];
  v63[5] = v36;
  v62[6] = @"transition-incoming-item-source-time";
  v37 = MEMORY[0x1E696AD98];
  [v15 endItemSourceTime];
  v38 = [v37 numberWithDouble:?];
  v39 = v15;
  v47 = v15;
  v40 = v38;
  v63[6] = v38;
  v62[7] = @"transition-incoming-item-target-time";
  v41 = MEMORY[0x1E696AD98];
  [v39 endItemTargetTime];
  [v41 numberWithDouble:?];
  v42 = v46 = v17;
  v63[7] = v42;
  v62[8] = @"transition-type";
  v43 = [MEMORY[0x1E696AD98] numberWithInteger:a7];
  v63[8] = v43;
  v62[9] = @"transition-average-rate";
  v44 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
  v63[9] = v44;
  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:10];
  *time = v57;
  *&time[16] = v58;
  *v65 = v30;
  [v31 emitEventType:@"transition-did-reach-pivot-point" payload:v45 atTime:time];
}

- (void)smartTransitionWillBeginFrom:(id)a3 to:(id)a4 transitionTime:(id)a5 outgoingItemAveragePrePivotTransitionRate:(double)a6 timeStamp:(id)a7 parameters:(id)a8
{
  v76 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v55 = a8;
  v18 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v19 = [v18 engineID];
  v20 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v14];
  v21 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v15];
  [v20 setInOverlappedTransition:1];
  [v21 setInOverlappedTransition:1];
  v60 = v20;
  [v20 setInSmartTransition:1];
  v54 = v21;
  [v21 setInSmartTransition:1];
  v22 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    [v16 startItemSourceTime];
    v24 = v23;
    [v16 endItemSourceTime];
    v26 = v25;
    if (v17)
    {
      [v17 hostTime];
    }

    else
    {
      memset(time, 0, 24);
    }

    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(time)];
    *time = 138544898;
    *&time[4] = v19;
    *&time[12] = 2114;
    *&time[14] = self;
    *&time[22] = 2114;
    *&time[24] = v14;
    *v69 = 2048;
    *&v69[2] = v24;
    v70 = 2114;
    v71 = v15;
    v72 = 2048;
    v73 = v26;
    v74 = 2114;
    v75 = v27;
    _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - smartTransitionWillBegin - %{public}@ [%3.2fs] -> %{public}@ [%3.2fs] - timeStamp:%{public}@", time, 0x48u);
  }

  v28 = [(_MPCPlaybackEnginePlayer *)self bookmarker];
  [v17 time];
  [v28 itemSmartTransitionWillBeginFrom:v14 outgoingItemAveragePrePivotTransitionRate:a6 time:v29];

  v30 = v17;
  v31 = v30;
  v58 = v15;
  v59 = v14;
  v56 = v19;
  v57 = self;
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

  v49 = [v18 eventStream];
  v66[0] = @"outgoing-item-section-id";
  v52 = [v60 queueSectionID];
  v67[0] = v52;
  v66[1] = @"outgoing-item-id";
  v51 = [v60 queueItemID];
  v67[1] = v51;
  v66[2] = @"transition-outgoing-item-source-time";
  v53 = v31;
  v34 = MEMORY[0x1E696AD98];
  [v16 startItemSourceTime];
  v50 = [v34 numberWithDouble:?];
  v67[2] = v50;
  v66[3] = @"transition-outgoing-item-target-time";
  v35 = MEMORY[0x1E696AD98];
  [v16 startItemTargetTime];
  v36 = [v35 numberWithDouble:?];
  v67[3] = v36;
  v66[4] = @"incoming-item-section-id";
  [v54 queueSectionID];
  v38 = v37 = v16;
  v67[4] = v38;
  v66[5] = @"incoming-item-id";
  v39 = [v54 queueItemID];
  v67[5] = v39;
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
  v44 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
  v67[9] = v44;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:10];
  v45 = v48 = v18;
  *time = v61;
  *&time[16] = v62;
  *v69 = v33;
  [v49 emitEventType:@"transition-will-start" payload:v45 atTime:time];

  v46 = [v55 objectForKeyedSubscript:@"transitionProvided"];

  v47 = [v46 integerValue];
  [(_MPCPlaybackEnginePlayer *)v57 donateMetricsForTransitionWillStartFrom:v59 to:v58 transitionProvided:v47];
}

- (void)itemDidResignCurrent:(id)a3 source:(int64_t)a4 timeStamp:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v12 = [v11 engineID];
  v13 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v9];
  if (!v13)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"_MPCPlaybackEnginePlayer.m" lineNumber:1121 description:{@"Invalid parameter not satisfying: %@", @"queueItem != nil"}];
  }

  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [MFDescription forItemChangeSource:a4];
    if (v10)
    {
      [v10 hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544386;
    *(&time.value + 4) = v12;
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

  if (a4 == 1)
  {
    [v13 _didResignActivePlayerItem];
    v17 = [v11 queueController];
    v18 = [v17 music];
    if ([v18 repeatType] == 1)
    {

      goto LABEL_15;
    }

    v19 = [v13 isInOverlappedTransition];

    if ((v19 & 1) == 0)
    {
      v17 = [(_MPCPlaybackEnginePlayer *)self translator];
      [v17 setMPAVItem:0 forMFPlayerItem:v9];
      goto LABEL_15;
    }
  }

  else if (!a4)
  {
    v17 = [v11 queueController];
    [v17 playerItemDidResignCurrent:v13];
LABEL_15:
  }
}

- (void)itemDidBecomeCurrent:(id)a3 source:(int64_t)a4 timeStamp:(id)a5
{
  v75 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v12 = [v11 engineID];
  if (v9)
  {
    v13 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v9];
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v65 = a2;
      v15 = v12;
      v16 = [MFDescription forItemChangeSource:a4];
      if (v10)
      {
        [v10 hostTime];
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

      v12 = v15;
      a2 = v65;
    }

    if (a4 != 1)
    {
      goto LABEL_23;
    }

    v22 = [(_MPCPlaybackEnginePlayer *)self translator];
    [v22 setMPAVItem:v13 forMFPlayerItem:v9];

    [v13 _didBecomeActivePlayerItem];
    v23 = [(_MPCPlaybackEnginePlayer *)self configurator];
    [v23 updatePlayerConfiguration];

    v24 = [v11 leaseManager];
    [v24 prepareForCurrentItemPlayback];

    v25 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    [v25 targetRate];
    v27 = v26;

    v28 = [v11 queueController];
    v29 = [v28 behaviorType];

    if (v29 == 4)
    {
      if (([v13 conformsToProtocol:&unk_1F459C8B8] & 1) == 0)
      {
        v64 = [MEMORY[0x1E696AAA8] currentHandler];
        [v64 handleFailureInMethod:a2 object:self file:@"_MPCPlaybackEnginePlayer.m" lineNumber:1066 description:@"Item does not conform to _MPCPodcastAVItemProvidingProtocol!"];
      }

      [v13 preferredPlaybackRate];
      v27 = v30;
    }

    v31 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v32 = v27;
    if ([v31 currentState] != 1)
    {
      v33 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
      [v33 rate];
      v32 = v34;
    }

    *&v35 = v32;
    [v13 prepareForRate:&__block_literal_global_153 completionHandler:v35];
    v36 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    [v36 rate];
    if (v27 != v37)
    {
      v38 = [v11 queueController];
      v39 = [v38 behaviorType];

      if (v39 != 4)
      {
LABEL_23:
        v41 = [(_MPCPlaybackEnginePlayer *)self bookmarker];
        [v10 time];
        v43 = v42;
        v44 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
        [v44 effectiveRate];
        LODWORD(v46) = v45;
        [v41 itemDidBecomeCurrent:v9 time:v43 rate:v46];

        if (!a4)
        {
          v47 = [v11 queueController];
          [v47 playerItemDidBecomeCurrent:v13];

          v48 = [v11 queueController];
          v49 = [v48 currentItem];

          if (v49 == v13)
          {
            v62 = [v11 eventObserver];
            [v62 engine:v11 didChangeToItem:v13];

            [v11 schedulePlaybackStatePreservation];
          }

          else
          {
            v67[0] = @"current queuecontroller item";
            v50 = MEMORY[0x1E696AEC0];
            v51 = [v11 queueController];
            v52 = [v51 currentItem];
            v53 = [v50 stringWithFormat:@"%@", v52];
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
              v60 = [v11 queueController];
              v61 = [v60 currentItem];
              LODWORD(time.value) = 138543618;
              *(&time.value + 4) = v13;
              LOWORD(time.flags) = 2114;
              *(&time.flags + 2) = v61;
              _os_log_impl(&dword_1C5C61000, v59, OS_LOG_TYPE_DEFAULT, "Mismatch between playback stack current item %{public}@ and queue controller current item %{public}@", &time, 0x16u);
            }
          }
        }

        goto LABEL_30;
      }

      v36 = [v11 player];
      *&v40 = v32;
      [v36 setRate:@"podcastsCustomShowSettings" identifier:&__block_literal_global_158 completion:v40];
    }

    goto LABEL_23;
  }

  if (a4)
  {
    v63 = [MEMORY[0x1E696AAA8] currentHandler];
    [v63 handleFailureInMethod:a2 object:self file:@"_MPCPlaybackEnginePlayer.m" lineNumber:1032 description:{@"Invalid parameter not satisfying: %@", @"source == MFItemChangeSourceQueue"}];
  }

  v17 = [v11 queueController];
  v18 = [v17 targetContentItemID];

  if (!v18)
  {
    v19 = [v11 queueController];
    [v19 playerItemDidBecomeCurrent:0];
  }

  v20 = [v11 eventObserver];
  [v20 engine:v11 didChangeToItem:0];

  [v11 schedulePlaybackStatePreservation];
LABEL_30:
}

- (void)currentItemWillChangeFromItem:(id)a3 toItem:(id)a4 source:(int64_t)a5 timeStamp:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v15 = [v14 engineID];

  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"_MPCPlaybackEnginePlayer.m" lineNumber:986 description:{@"Invalid parameter not satisfying: %@", @"previous == nil || [(MPAVItem *)previous isKindOfClass:[MPAVItem class]]"}];

    if (!v12)
    {
      goto LABEL_6;
    }
  }

  else if (!v12)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"_MPCPlaybackEnginePlayer.m" lineNumber:987 description:{@"Invalid parameter not satisfying: %@", @"current == nil || [(MPAVItem *)current isKindOfClass:[MPAVItem class]]"}];
  }

LABEL_6:
  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [MFDescription forItemChangeSource:a5];
    if (v13)
    {
      [v13 hostTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(&time)];
    LODWORD(time.value) = 138544642;
    *(&time.value + 4) = v15;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = self;
    HIWORD(time.epoch) = 2114;
    v33 = v11;
    v34 = 2114;
    v35 = v12;
    v36 = 2114;
    v37 = v17;
    v38 = 2114;
    v39 = v18;
    _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - currentItemWillChangeFromItem - %{public}@ -> %{public}@ [Source: %{public}@] - timeStamp:%{public}@", &time, 0x3Eu);
  }

  v19 = [(_MPCPlaybackEnginePlayer *)self bookmarker];
  [v13 time];
  [v19 currentItemWillChangeFromItem:v11 toItem:v12 time:?];

  v20 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v12];
  v21 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v11];
  v22 = v21;
  if (a5 == 1)
  {
    [v21 _willResignActivePlayerItem];
    if (_os_feature_enabled_impl() && ([v22 isInOverlappedTransition] & 1) == 0)
    {
      [v22 _willBeRemovedFromPlayer];
    }

    [v20 _willBecomeActivePlayerItem];
  }

  else if (!a5)
  {
    v23 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
    v24 = [v23 eventObserver];
    [v24 engine:v23 willChangeToItem:v20 fromItem:v22];
  }

  v25 = [(_MPCPlaybackEnginePlayer *)self playbackStartTrace];
  v26 = [v25 item];
  v27 = v26;
  if (v26 == v20)
  {
  }

  else
  {
    v28 = [v26 isEqual:v20];

    if ((v28 & 1) == 0)
    {
      v29 = [(_MPCPlaybackEnginePlayer *)self playbackStartTrace];
      [v29 cancel];

      [(_MPCPlaybackEnginePlayer *)self setPlaybackStartTrace:0];
    }
  }
}

- (void)engine:(id)a3 didChangeQueueWithReason:(id)a4
{
  v13 = [(_MPCPlaybackEnginePlayer *)self bookmarker:a3];
  v5 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [v5 currentTime];
  v7 = v6;
  v8 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v9 = [v8 currentItem];
  v10 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [v10 effectiveRate];
  LODWORD(v12) = v11;
  [v13 updateDurationSnapshotWithTime:v9 forItem:v7 rate:v12];
}

- (void)engine:(id)a3 didChangeQueueController:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(_MPCPlaybackEnginePlayer *)self setupPlaybackStackIfNeeded];
  v8 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v9 = [v8 isModeSolo];

  v10 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v11 = [v10 isModeShared];

  v12 = [v7 musicSharePlay];

  if (v9 && v12)
  {
    v13 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    [v13 setupForShared];
LABEL_7:

    goto LABEL_8;
  }

  if (v11 && !v12)
  {
    v13 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    [v13 setupForSolo];
    goto LABEL_7;
  }

LABEL_8:
  v14 = [(_MPCPlaybackEnginePlayer *)self translator];
  v15 = [v14 playbackCoordinator];

  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v6 engineID];
    v18 = [v7 sessionID];
    v19 = [v7 musicSharePlay];
    *buf = 138544130;
    v29 = v17;
    v30 = 2114;
    v31 = v18;
    v32 = 2114;
    v33 = v15;
    v34 = 2114;
    v35 = v19;
    _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] engine:didChangeQueueController: | updating playback coordinator [new queue controller] playbackCoordinator=%{public}@ musicSharePlayBehavior=%{public}@", buf, 0x2Au);
  }

  if (v12)
  {
    v20 = [v7 musicSharePlay];
    [v20 updatePlaybackCoordinator:v15];
  }

  else
  {
    [v15 setDelegate:0];
  }

  self->_jumpIdentifier = 0;
  v21 = MEMORY[0x1E696ABC0];
  v22 = [v7 sessionID];
  v23 = [v21 msv_errorWithDomain:@"MPCEnginePlayerError" code:8 debugDescription:{@"Cancelled to setup a new queue with sessionID %@", v22}];

  v24 = [(_MPCPlaybackEnginePlayer *)self errorController];
  [v24 resetWithReason:v23];

  v25 = [(_MPCPlaybackEnginePlayer *)self translator];
  [v25 invalidateCache];

  v26 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v27 = [v7 sessionID];
  [v26 setupForNewQueueWithSessionID:v27];
}

- (void)engine:(id)a3 willRemoveQueueController:(id)a4
{
  v5 = a4;
  v7 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v6 = [v5 sessionID];

  [v7 teardownForQueueWithSessionID:v6];
}

- (BOOL)_itemConfigurationIsIncompatibleWithVocalAttenuationState:(id)a3
{
  v3 = a3;
  if ([v3 supportsVocalAttenuation])
  {
    v4 = [v3 isConfiguredForVocalAttenuation] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_performSkipForUserAction:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v6 = [v5 engineID];
  if ([(_MPCPlaybackEnginePlayer *)self _isAVKitSkipAction:v4])
  {
    v7 = [v5 mediaRemotePublisher];
    v8 = [v7 commandCenter];

    if ([v4 type] == 7)
    {
      [v8 nextTrackCommand];
    }

    else
    {
      [v8 previousTrackCommand];
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
      v15 = v6;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v4;
      _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@]-Triggering MR command %{public}@ from userAction: %{public}@", &v14, 0x20u);
    }

    [v9 invokeCommandWithEvent:v12 completion:&__block_literal_global_136];
  }
}

- (BOOL)_isAVKitSkipAction:(id)a3
{
  v3 = a3;
  if (([v3 type] - 7) > 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = [v3 sourceID];
    v5 = [v4 isEqualToString:@"AVMusicAppBehavior"];
  }

  return v5;
}

- (void)_playbackDidStopForItem:(id)a3 source:(id)a4 reason:(id)a5 time:(double)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v10];
  v14 = [v13 queueSectionID];
  v15 = [v13 queueItemID];
  if (![v14 length])
  {
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    *buf = 138543618;
    v30 = v10;
    v31 = 2114;
    v32 = v14;
    v25 = "Unexpected _playbackDidStopForItem: without sectionID: %{public}@ %{public}@";
LABEL_10:
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_FAULT, v25, buf, 0x16u);
    goto LABEL_11;
  }

  if (![v15 length])
  {
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    *buf = 138543618;
    v30 = v10;
    v31 = 2114;
    v32 = v15;
    v25 = "Unexpected _playbackDidStopForItem: without itemID: %{public}@ %{public}@";
    goto LABEL_10;
  }

  v16 = [(_MPCPlaybackEnginePlayer *)self bookmarker];
  [v16 playbackDidStopForItem:v10 time:a6];

  v17 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v18 = [v17 eventStream];
  v27[0] = @"queue-section-id";
  v27[1] = @"queue-item-id";
  v28[0] = v14;
  v28[1] = v15;
  v27[2] = @"item-end-position";
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
  v28[2] = v19;
  v28[3] = v12;
  v27[3] = @"item-rate-change-reason";
  v27[4] = @"item-rate-change-source";
  v26 = v11;
  v28[4] = v11;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:5];
  [v18 emitEventType:@"item-pause" payload:v20];

  v21 = [v17 eventObserver];
  v22 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [v22 rate];
  LODWORD(v24) = v23;
  [v21 engine:v17 didChangeItemElapsedTime:a6 rate:v24];

  if ([v12 isEqualToString:@"end of queue reached"])
  {
    [v13 setInitialPlaybackStartTimeOverride:0];
  }

  v11 = v26;
LABEL_11:
}

- (id)_MPAVItemForMFQueuePlayerItem:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"_MPCPlaybackEnginePlayer.m" lineNumber:833 description:{@"Invalid parameter not satisfying: %@", @"item == nil || [(MPAVItem *)item isKindOfClass:[MPAVItem class]]"}];
    }
  }

  v6 = v5;
  v7 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [v6 setCurrentItemTransition:{objc_msgSend(v7, "currentItemTransition")}];

  return v6;
}

- (void)_logTimeJumpForItem:(id)a3 fromTime:(double)a4 toTime:(double)a5 userInitiated:(BOOL)a6 timeStamp:(id)a7
{
  v8 = a6;
  v56 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a7;
  if (v8)
  {
    goto LABEL_5;
  }

  v14 = a4 - a5;
  if (a4 - a5 < 0.0)
  {
    v14 = -(a4 - a5);
  }

  if (v14 > 0.25)
  {
LABEL_5:
    v15 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
    v16 = [v15 engineID];
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v15;
      jumpIdentifier = self->_jumpIdentifier;
      if (v13)
      {
        [v13 hostTime];
      }

      else
      {
        memset(time, 0, 24);
      }

      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.9fs", CMTimeGetSeconds(time)];
      *time = 138545154;
      *&time[4] = v16;
      *&time[12] = 2114;
      *&time[14] = self;
      *&time[22] = 2048;
      *&time[24] = jumpIdentifier;
      LOWORD(v48) = 1024;
      *(&v48 + 2) = v8;
      HIWORD(v48) = 2048;
      v49 = a4;
      v50 = 2048;
      v51 = a5;
      v52 = 2048;
      v53 = a5 - a4;
      v54 = 2114;
      v55 = v20;
      _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@]-%{public}@ - _logTimeJumpForItem - jumpIdentifier: %ld - userInitiated:%{BOOL}u - %.2fs -> %.2fs [D:%.2fs]- timeStamp:%{public}@", time, 0x4Eu);

      v15 = v18;
    }

    v21 = v13;
    v22 = v21;
    v39 = v16;
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

    v25 = [(_MPCPlaybackEnginePlayer *)self _MPAVItemForMFQueuePlayerItem:v12];
    v26 = [v25 queueSectionID];
    v27 = [v25 queueItemID];
    if ([v26 length])
    {
      if ([v27 length])
      {
        [v15 eventStream];
        v35 = v37 = v13;
        v45[0] = @"queue-section-id";
        v45[1] = @"queue-item-id";
        v46[0] = v26;
        v46[1] = v27;
        v45[2] = @"item-start-position";
        [MEMORY[0x1E696AD98] numberWithDouble:a4];
        v36 = v38 = v12;
        v46[2] = v36;
        v45[3] = @"item-end-position";
        v28 = [MEMORY[0x1E696AD98] numberWithDouble:a5];
        v46[3] = v28;
        v45[4] = @"item-jump-user-initiated";
        v29 = [MEMORY[0x1E696AD98] numberWithBool:v8];
        v46[4] = v29;
        v45[5] = @"item-jump-identifier";
        v30 = [MEMORY[0x1E696AD98] numberWithInteger:self->_jumpIdentifier];
        v46[5] = v30;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:6];
        v32 = v31 = v15;
        *time = v40;
        *&time[16] = v41;
        v48 = v24;
        [v35 emitEventType:@"item-position-jump" payload:v32 atTime:time];

        v15 = v31;
        v12 = v38;

        v13 = v37;
        ++self->_jumpIdentifier;
LABEL_24:

        goto LABEL_25;
      }

      v33 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        *time = 138543618;
        *&time[4] = v12;
        *&time[12] = 2114;
        *&time[14] = v27;
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
        *&time[4] = v12;
        *&time[12] = 2114;
        *&time[14] = v26;
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
  v28 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v27 = [v3 numberWithInteger:{objc_msgSend(v28, "currentState")}];
  v30[0] = v27;
  v29[1] = @"currentItem";
  v26 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v4 = [v26 currentItem];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"@";
  }

  v30[1] = v6;
  v29[2] = @"currentRate";
  v7 = MEMORY[0x1E696AD98];
  v25 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [v25 rate];
  v24 = [v7 numberWithFloat:?];
  v30[2] = v24;
  v29[3] = @"currentTime";
  v8 = MEMORY[0x1E696AD98];
  v9 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [v9 currentTime];
  v10 = [v8 numberWithDouble:?];
  v30[3] = v10;
  v29[4] = @"targetRate";
  v11 = MEMORY[0x1E696AD98];
  v12 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [v12 targetRate];
  v13 = [v11 numberWithFloat:?];
  v30[4] = v13;
  v29[5] = @"MediaFoundationStack";
  v14 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v15 = [v14 stateDictionary];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = @"@";
  }

  v30[5] = v17;
  v29[6] = @"engineID";
  v18 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v19 = [v18 engineID];
  v20 = v19;
  v21 = @"N/A";
  if (v19)
  {
    v21 = v19;
  }

  v30[6] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:7];

  return v22;
}

- (void)_setupPlaybackStackWithPlaybackEngine:(id)a3
{
  v55 = a3;
  v5 = +[MPCPlaybackEngine isSystemPodcasts];
  if (v5)
  {
    v6 = objc_alloc_init(MFPodcastsPlaybackDefaults);
  }

  else
  {
    v6 = [MEMORY[0x1E69708A8] standardUserDefaults];
  }

  v7 = v6;
  v8 = v5;
  v9 = [v55 queueTranslator];
  translator = self->_translator;
  self->_translator = v9;

  if (!self->_translator)
  {
    v11 = [[MPCMediaFoundationTranslator alloc] initWithPlaybackEngine:v55];
    v12 = self->_translator;
    self->_translator = v11;
  }

  v13 = [[MPCAssetLoader alloc] initWithDelegate:self];
  assetLoader = self->_assetLoader;
  self->_assetLoader = v13;

  v15 = [[MPCExternalPlaybackController alloc] initWithPlaybackEngine:v55 translator:self->_translator];
  externalPlaybackController = self->_externalPlaybackController;
  self->_externalPlaybackController = v15;

  v17 = [[MPCPlaybackErrorController alloc] initWithPlaybackEngine:v55 translator:self->_translator];
  errorController = self->_errorController;
  self->_errorController = v17;

  [(MPCPlaybackErrorController *)self->_errorController setDelegate:self];
  v19 = [[MPCItemBookmarker alloc] initWithPlaybackEngine:v55 translator:self->_translator];
  bookmarker = self->_bookmarker;
  self->_bookmarker = v19;

  v21 = [MPCLeaseController alloc];
  v22 = self->_translator;
  v23 = [v55 leaseManager];
  v24 = [(MPCLeaseController *)v21 initWithTranslator:v22 leaseManager:v23];
  leaseController = self->_leaseController;
  self->_leaseController = v24;

  v26 = [MFPlaybackStackControllerImplementation alloc];
  v27 = [v55 playerID];
  v28 = [v55 engineID];
  v29 = [(MFPlaybackStackControllerImplementation *)v26 initWithPlayerID:v27 engineID:v28 queueController:self->_translator assetLoader:self->_assetLoader errorController:self->_errorController externalPlaybackController:self->_externalPlaybackController leaseController:self->_leaseController defaults:v7 behavior:v8 queue:MEMORY[0x1E69E96A0]];
  [(_MPCPlaybackEnginePlayer *)self setPlaybackStackController:v29];

  v30 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (!v30)
  {
    v54 = [MEMORY[0x1E696AAA8] currentHandler];
    [v54 handleFailureInMethod:a2 object:self file:@"_MPCPlaybackEnginePlayer.m" lineNumber:753 description:@"_setupPlaybackStackWithPlaybackEngine failed to create a new MFPlaybackStackController"];
  }

  v31 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [v31 setDelegate:self];

  v32 = [v55 initializationParameters];
  v33 = [v32 audioSession];

  if (v33)
  {
    v34 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v35 = [v55 initializationParameters];
    v36 = [v35 audioSession];
    [v34 setupForManagedSessionWithAudioSession:v36];
  }

  v37 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [(MPCLeaseController *)self->_leaseController setStackController:v37];

  v38 = [MPCPlayerItemConfigurator alloc];
  v39 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v40 = [(MPCPlayerItemConfigurator *)v38 initWithPlaybackEngine:v55 stackController:v39 translator:self->_translator];
  configurator = self->_configurator;
  self->_configurator = v40;

  [(MFAssetLoading *)self->_assetLoader setConfigurator:self->_configurator];
  v42 = [v55 queueController];
  v43 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v44 = [v43 currentItem];
  v45 = [v44 contentItemID];
  [v42 _playerItemDidBecomeActiveWithContentItemID:v45];

  [(_MPCPlaybackEnginePlayer *)self updateAudioSession];
  self->_jumpIdentifier = 0;
  v46 = [(_MPCPlaybackEnginePlayer *)self currentRelativeVolume];

  if (v46)
  {
    v47 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v48 = [(_MPCPlaybackEnginePlayer *)self currentRelativeVolume];
    [v48 floatValue];
    [v47 setRelativeVolume:?];
  }

  v49 = [(_MPCPlaybackEnginePlayer *)self currentIsMuted];

  if (v49)
  {
    v50 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v51 = [(_MPCPlaybackEnginePlayer *)self currentIsMuted];
    [v50 setIsMuted:{objc_msgSend(v51, "BOOLValue")}];
  }

  v52 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v53 = [(_MPCPlaybackEnginePlayer *)self applicationMusicPlayerTransitionType];
  [(_MPCPlaybackEnginePlayer *)self applicationMusicPlayerCrossFadeDuration];
  [v52 setApplicationMusicPlayerTransitionType:v53 duration:?];
}

- (BOOL)isMuted
{
  v3 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (v3)
  {
    v4 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v5 = [v4 isMuted];
  }

  else
  {
    v4 = [(_MPCPlaybackEnginePlayer *)self currentIsMuted];
    if (v4)
    {
      v6 = [(_MPCPlaybackEnginePlayer *)self currentIsMuted];
      v5 = [v6 BOOLValue];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)setIsMuted:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [(_MPCPlaybackEnginePlayer *)self setCurrentIsMuted:v5];

  v6 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [v6 setIsMuted:v3];
}

- (float)relativeVolume
{
  v3 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (v3)
  {
    v4 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    [v4 relativeVolume];
    v6 = v5;
  }

  else
  {
    v4 = [(_MPCPlaybackEnginePlayer *)self currentRelativeVolume];
    if (v4)
    {
      v7 = [(_MPCPlaybackEnginePlayer *)self currentRelativeVolume];
      [v7 floatValue];
      v6 = v8;
    }

    else
    {
      v6 = 1.0;
    }
  }

  return v6;
}

- (void)setRelativeVolume:(float)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  [(_MPCPlaybackEnginePlayer *)self setCurrentRelativeVolume:v5];

  v7 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  *&v6 = a3;
  [v7 setRelativeVolume:v6];
}

- (void)jumpToTime:(double)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v11 = [v10 engineID];

  v12 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (v12)
  {
    v13 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61___MPCPlaybackEnginePlayer_jumpToTime_identifier_completion___block_invoke;
    v15[3] = &unk_1E8234CE0;
    v16 = v11;
    v17 = v8;
    v19 = a3;
    v18 = v9;
    [v13 jumpTo:v17 identifier:v15 completion:a3];
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:60 debugDescription:{@"Playback engine stack has not been setup yet. Set a playback queue first before calling %s.", "-[_MPCPlaybackEnginePlayer jumpToTime:identifier:completion:]"}];
    (*(v9 + 2))(v9, v14);
  }
}

- (void)setRate:(float)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v11 = [v10 engineID];

  v12 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (v12)
  {
    objc_initWeak(&location, self);
    v13 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __58___MPCPlaybackEnginePlayer_setRate_identifier_completion___block_invoke;
    v16[3] = &unk_1E8234CB8;
    objc_copyWeak(&v20, &location);
    v17 = v11;
    v18 = v8;
    v21 = a3;
    v19 = v9;
    *&v14 = a3;
    [v13 setRate:v18 identifier:v16 completion:v14];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    v15 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:60 debugDescription:{@"Playback engine stack has not been setup yet. Set a playback queue first before calling %s.", "-[_MPCPlaybackEnginePlayer setRate:identifier:completion:]"}];
    (*(v9 + 2))(v9, v15);
  }
}

- (void)endScanningWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v9 = [v8 engineID];

  v10 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (v10)
  {
    v11 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65___MPCPlaybackEnginePlayer_endScanningWithIdentifier_completion___block_invoke;
    v13[3] = &unk_1E8234C68;
    v14 = v9;
    v15 = v6;
    v16 = v7;
    [v11 endScanningWithIdentifier:v15 completion:v13];
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:60 debugDescription:{@"Playback engine stack has not been setup yet. Set a playback queue first before calling %s.", "-[_MPCPlaybackEnginePlayer endScanningWithIdentifier:completion:]"}];
    (*(v7 + 2))(v7, v12);
  }
}

- (void)togglePlaybackWithIdentifier:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v10 = [v9 engineID];
  v11 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (!v11)
  {
    v15 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:60 debugDescription:{@"Playback engine stack has not been setup yet. Set a playback queue first before calling %s.", "-[_MPCPlaybackEnginePlayer togglePlaybackWithIdentifier:completion:]"}];
    v8[2](v8, v15);
LABEL_15:

    goto LABEL_16;
  }

  v12 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v13 = [v12 currentState];

  if (v13 > 1)
  {
    if (v13 != 2 && v13 != 7)
    {
LABEL_14:
      v27 = MEMORY[0x1E696ABC0];
      v15 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
      v28 = +[MFDescription forPlayerState:](MFDescription, "forPlayerState:", [v15 currentState]);
      v29 = [v27 msv_errorWithDomain:@"MPCError" code:0 underlyingError:0 debugDescription:{@"Attemping to toggle playback with incompatible state - CurrentState:%@", v28}];
      v8[2](v8, v29);

      goto LABEL_15;
    }
  }

  else if (v13)
  {
    if (v13 == 1)
    {
      [(_MPCPlaybackEnginePlayer *)self endPlaybackStartCriticalSection];
      v14 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __68___MPCPlaybackEnginePlayer_togglePlaybackWithIdentifier_completion___block_invoke;
      v38[3] = &unk_1E8234C68;
      v39 = v10;
      v40 = v7;
      v41 = v8;
      [v14 pauseWithIdentifier:v40 completion:v38];

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v16 = [v9 queueController];
  v17 = [v16 behaviorType];

  v18 = 1.0;
  if (v17 == 4)
  {
    v19 = [v9 queueController];
    v20 = [v19 currentItem];

    if (([v20 conformsToProtocol:&unk_1F459C8B8] & 1) == 0)
    {
      v30 = [MEMORY[0x1E696AAA8] currentHandler];
      [v30 handleFailureInMethod:a2 object:self file:@"_MPCPlaybackEnginePlayer.m" lineNumber:594 description:@"Item does not conform to _MPCPodcastAVItemProvidingProtocol!"];
    }

    [v20 preferredPlaybackRate];
    v18 = v21;
  }

  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TogglePlayback %@", v7];
  v23 = [v9 takeCriticalSectionAssertion:v22];

  objc_initWeak(&location, self);
  v24 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __68___MPCPlaybackEnginePlayer_togglePlaybackWithIdentifier_completion___block_invoke_75;
  v31[3] = &unk_1E8234C90;
  v32 = v10;
  v33 = v7;
  objc_copyWeak(&v36, &location);
  v25 = v23;
  v34 = v25;
  v35 = v8;
  *&v26 = v18;
  [v24 playWithRate:v33 identifier:v31 completion:v26];

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);

LABEL_16:
}

- (void)pauseForLeasePreventionWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(_MPCPlaybackEnginePlayer *)self endPlaybackStartCriticalSection];
  v8 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v9 = [v8 engineID];

  v10 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (v10)
  {
    v11 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __77___MPCPlaybackEnginePlayer_pauseForLeasePreventionWithIdentifier_completion___block_invoke;
    v13[3] = &unk_1E8234C68;
    v14 = v9;
    v15 = v6;
    v16 = v7;
    [v11 pauseForLeasePreventionWithIdentifier:v15 completion:v13];
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:60 debugDescription:{@"Playback engine stack has not been setup yet. Set a playback queue first before calling %s.", "-[_MPCPlaybackEnginePlayer pauseForLeasePreventionWithIdentifier:completion:]"}];
    (*(v7 + 2))(v7, v12);
  }
}

- (void)pauseForSleepTimerWithFadeout:(double)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  [(_MPCPlaybackEnginePlayer *)self endPlaybackStartCriticalSection];
  v10 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v11 = [v10 engineID];

  v12 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (v12)
  {
    v13 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __80___MPCPlaybackEnginePlayer_pauseForSleepTimerWithFadeout_identifier_completion___block_invoke;
    v15[3] = &unk_1E8234C68;
    v16 = v11;
    v17 = v8;
    v18 = v9;
    [v13 pauseForSleepTimerWithFadeOut:v17 identifier:v15 completion:a3];
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:60 debugDescription:{@"Playback engine stack has not been setup yet. Set a playback queue first before calling %s.", "-[_MPCPlaybackEnginePlayer pauseForSleepTimerWithFadeout:identifier:completion:]"}];
    (*(v9 + 2))(v9, v14);
  }
}

- (void)pauseWithFadeout:(double)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  [(_MPCPlaybackEnginePlayer *)self endPlaybackStartCriticalSection];
  v10 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v11 = [v10 engineID];

  v12 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (v12)
  {
    v13 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67___MPCPlaybackEnginePlayer_pauseWithFadeout_identifier_completion___block_invoke;
    v15[3] = &unk_1E8234C68;
    v16 = v11;
    v17 = v8;
    v18 = v9;
    [v13 pauseWithFadeOut:v17 identifier:v15 completion:a3];
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:60 debugDescription:{@"Playback engine stack has not been setup yet. Set a playback queue first before calling %s.", "-[_MPCPlaybackEnginePlayer pauseWithFadeout:identifier:completion:]"}];
    (*(v9 + 2))(v9, v14);
  }
}

- (void)pauseWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(_MPCPlaybackEnginePlayer *)self endPlaybackStartCriticalSection];
  v8 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v9 = [v8 engineID];

  v10 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (v10)
  {
    v11 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59___MPCPlaybackEnginePlayer_pauseWithIdentifier_completion___block_invoke;
    v13[3] = &unk_1E8234C68;
    v14 = v9;
    v15 = v6;
    v16 = v7;
    [v11 pauseWithIdentifier:v15 completion:v13];
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:60 debugDescription:{@"Playback engine stack has not been setup yet. Set a playback queue first before calling %s.", "-[_MPCPlaybackEnginePlayer pauseWithIdentifier:completion:]"}];
    (*(v7 + 2))(v7, v12);
  }
}

- (void)playWithRate:(float)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v11 = [v10 engineID];
  v12 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (v12)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PlayWithRate %@", v8];
    v14 = [v10 takeCriticalSectionAssertion:v13];

    objc_initWeak(&location, self);
    v15 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63___MPCPlaybackEnginePlayer_playWithRate_identifier_completion___block_invoke;
    v19[3] = &unk_1E8234C90;
    v20 = v11;
    v21 = v8;
    v23 = v9;
    objc_copyWeak(&v24, &location);
    v16 = v14;
    v22 = v16;
    *&v17 = a3;
    [v15 playWithRate:v21 identifier:v19 completion:v17];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  else
  {
    v18 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:60 debugDescription:{@"Playback engine stack has not been setup yet. Set a playback queue first before calling %s.", "-[_MPCPlaybackEnginePlayer playWithRate:identifier:completion:]"}];
    (*(v9 + 2))(v9, v18);
  }
}

- (int64_t)stateBeforeInterruption
{
  v2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v3 = [v2 interruptedState];
  if (v3 > 7)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = qword_1C6045398[v3];
  }

  return v4;
}

- (int64_t)state
{
  v2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v3 = [v2 currentState];
  if (v3 > 7)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = qword_1C6045398[v3];
  }

  return v4;
}

- (float)currentRate
{
  v2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [v2 rate];
  v4 = v3;

  return v4;
}

- (double)currentTime
{
  v2 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [v2 currentTime];
  v4 = v3;

  return v4;
}

- (void)updateAudioSession
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];

  if (v3)
  {
    v4 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
    v5 = [v4 audioSessionCategory];
    v6 = [v4 audioSessionOptions];
    v7 = -[MFAudioSessionConfiguration initWithCategory:routeSharingPolicy:options:]([MFAudioSessionConfiguration alloc], "initWithCategory:routeSharingPolicy:options:", v5, [v5 isEqualToString:*MEMORY[0x1E6958070]] ^ 1, v6);
    if (+[MPCPlaybackEngine isRemotePlayerService])
    {
      v17 = 0u;
      v18 = 0u;
      if (v4)
      {
        [v4 remoteHostProcessAuditToken];
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

    v14 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
    [v14 updateAudioSessionWithConfiguration:v7];
  }

  else
  {

    [(_MPCPlaybackEnginePlayer *)self setupPlaybackStackIfNeeded];
  }
}

- (void)updateAudioSessionSpeechDetection
{
  v4 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v3 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  [v4 setInhibitSpeechDetection:{objc_msgSend(v3, "isVocalAttenuationEnabled")}];
}

- (void)setApplicationMusicPlayerTransitionType:(int64_t)a3 withDuration:(double)a4
{
  [(_MPCPlaybackEnginePlayer *)self setApplicationMusicPlayerTransitionType:?];
  [(_MPCPlaybackEnginePlayer *)self setApplicationMusicPlayerCrossFadeDuration:a4];
  v7 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [v7 setApplicationMusicPlayerTransitionType:a3 duration:a4];
}

- (void)deactivateAudioSessionIfIdle:(int64_t)a3
{
  v4 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [v4 deactivateAudioSessionIfIdle:a3];
}

- (void)becomeActiveWithCompletion:(id)a3
{
  v4 = a3;
  [(_MPCPlaybackEnginePlayer *)self setupPlaybackStackIfNeeded];
  objc_initWeak(&location, self);
  v5 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v6 = [v5 engineID];

  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55___MPCPlaybackEnginePlayer_becomeActiveWithCompletion___block_invoke;
  v12[3] = &unk_1E8234C40;
  v9 = v7;
  v13 = v9;
  objc_copyWeak(&v16, &location);
  v10 = v6;
  v14 = v10;
  v11 = v4;
  v15 = v11;
  [v8 activateAudioSessionWithCompletion:v12];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)finalizeStateRestoreWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v6 = [v5 engineID];
  objc_initWeak(&location, self);
  v7 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63___MPCPlaybackEnginePlayer_finalizeStateRestoreWithCompletion___block_invoke;
  v10[3] = &unk_1E8236D30;
  objc_copyWeak(&v13, &location);
  v8 = v4;
  v12 = v8;
  v9 = v6;
  v11 = v9;
  [v7 restoreQueue:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)finalizeSetQueue:(id)a3 completion:(id)a4
{
  v72 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = _Block_copy(a4);
  v8 = objc_alloc(MEMORY[0x1E69B13F0]);
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __56___MPCPlaybackEnginePlayer_finalizeSetQueue_completion___block_invoke;
  v65[3] = &unk_1E8239170;
  v9 = v7;
  v67 = v9;
  v10 = v6;
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
  v44 = [v12 commandID];
  v46 = [(_MPCPlaybackEnginePlayer *)self playbackEngine];
  v45 = [v46 engineID];
  v14 = [v12 playbackQueue];
  v15 = [v14 isRequestingImmediatePlayback];
  v16 = [v14 siriReferenceIdentifier];
  v17 = v16 != 0;

  v18 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  v19 = [v18 currentQueueItem];

  if (v19)
  {
    if (v15 & 1) == 0 && (v16 || (objc_opt_class(), (objc_opt_isKindOfClass()) && [v14 shouldSkipWaitingForReadyToPlayStatus]))
    {
      v23 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v69 = v45;
        v70 = 2048;
        v71 = self;
        _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlaybackEngineImplementation: %p - calling performSetQueue completion early (continued asynchronously)", buf, 0x16u);
      }

      v13[2](v13, 0);
      objc_initWeak(buf, self);
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __56___MPCPlaybackEnginePlayer_finalizeSetQueue_completion___block_invoke_29;
      v58[3] = &unk_1E8234BC8;
      objc_copyWeak(&v60, buf);
      v20 = v45;
      v59 = v45;
      v24 = _Block_copy(v58);

      objc_destroyWeak(&v60);
      objc_destroyWeak(buf);
      v13 = v24;
    }

    else
    {
      v20 = v45;
    }

    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __56___MPCPlaybackEnginePlayer_finalizeSetQueue_completion___block_invoke_30;
    v50[3] = &unk_1E8234C18;
    v51 = v20;
    v52 = self;
    v25 = v19;
    v53 = v25;
    v56 = v15;
    v54 = v44;
    v13 = v13;
    v55 = v13;
    v57 = v17;
    v26 = _Block_copy(v50);
    v27 = v25;
    if ([v27 isAssetLoaded] && objc_msgSend(v27, "canUseLoadedAsset") && objc_msgSend(v27, "canReusePlayerItem") && v15)
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

    v33 = [v46 queueController];
    v34 = [v33 behaviorType];

    v35 = v34 == 4;
    v22 = v45;
    if (v35 && v15)
    {
      if (([v27 conformsToProtocol:&unk_1F459C8B8] & 1) == 0)
      {
        v40 = [MEMORY[0x1E696AAA8] currentHandler];
        [v40 handleFailureInMethod:a2 object:self file:@"_MPCPlaybackEnginePlayer.m" lineNumber:329 description:@"Item does not conform to _MPCPodcastAVItemProvidingProtocol!"];
      }

      [v27 preferredPlaybackRate];
      v37 = v36;
      v38 = [v46 player];
      LODWORD(v39) = v37;
      [v38 setRate:@"userDefaultsRate" identifier:&__block_literal_global_14804 completion:v39];
    }
  }

  else
  {
    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v69 = v45;
      v70 = 2048;
      v71 = self;
      _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@]-MPCPlaybackEngineImplementation: %p - finalizeSetQueue completed without a start item [empty queue]", buf, 0x16u);
    }

    v13[2](v13, 0);
    [(_MPCPlaybackEnginePlayer *)self endPlaybackStartCriticalSection];
    v22 = v45;
  }
}

- (void)prepareToPlayWithIdentifier:(id)a3 isRequestingImmediatePlayback:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(_MPCPlaybackEnginePlayer *)self setupPlaybackStackIfNeeded];
  v7 = [(_MPCPlaybackEnginePlayer *)self playbackStackController];
  [v7 prepareToPlayWithIdentifier:v6 isRequestingImmediatePlayback:v4];
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

- (_MPCPlaybackEnginePlayer)initWithPlaybackEngine:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _MPCPlaybackEnginePlayer;
  v5 = [(_MPCPlaybackEnginePlayer *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playbackEngine, v4);
    [v4 addEngineObserver:v6];
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

+ (id)describePlayer:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E6970850] infoCenterForPlayerID:v3];
  v5 = [v4 playbackQueueDataSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 playbackEngine];
    v7 = [v6 player];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [MEMORY[0x1E696AD60] string];
      [v8 appendFormat:@"# Player: %@\n\n", v3];
      v9 = [v7 _stateDictionary];
    }

    else
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_opt_class();
      v9 = NSStringFromClass(v11);
      v8 = [v10 stringWithFormat:@"Unexpected implementation class found: %@", v9];
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No player found for %@", v3];
  }

  return v8;
}

@end