@interface MPCPlayActivityFeedEventConsumer
- (BOOL)_finalizePAFEvents:(id)a3;
- (BOOL)_handleApplicationTerminationEvent:(id)a3 cursor:(id)a4;
- (BOOL)_handleItemEndEvent:(id)a3 cursor:(id)a4;
- (BOOL)_handleItemPauseEvent:(id)a3 cursor:(id)a4;
- (BOOL)_handleItemPositionJumpEvent:(id)a3 cursor:(id)a4;
- (BOOL)_handleItemResumeEvent:(id)a3 cursor:(id)a4;
- (BOOL)_itemBeginOccuredDuringOverlappingTransition:(id)a3 cursor:(id)a4;
- (BOOL)_itemEndOccuredDuringOverlappingTransition:(id)a3 cursor:(id)a4;
- (BOOL)_itemIsPlaceholderFromQueueSectionIdentifier:(id)a3 itemIdentifier:(id)a4 cursor:(id)a5;
- (BOOL)_itemIsPlayingFromQueueSectionIdentifier:(id)a3 itemIdentifier:(id)a4 cursor:(id)a5;
- (BOOL)_itemWithinHLSTimedMetadataBeginFromQueueSection:(id)a3 itemIdentifier:(id)a4 cursor:(id)a5;
- (BOOL)_queueSectionIsAODFromSectionIdentifier:(id)a3 cursor:(id)a4;
- (BOOL)_vocalControlIsOnForEvent:(id)a3;
- (MPCPlayActivityFeedEventConsumer)init;
- (double)_getPlaybackDurationForHLSStreamFromStartEvent:(id)a3 toEndEvent:(id)a4 withLimitedCursor:(id)a5;
- (double)_getStartTimeForMostRecentPlaybackStart:(id)a3 withItemBeginEvent:(id)a4 containerBeginEvent:(id)a5 cursor:(id)a6;
- (double)_incomingDurationBeforePivotForTransition:(id)a3 useSourceTime:(BOOL)a4;
- (double)_incomingPivotTimeForTransitionEvent:(id)a3 useSourceTime:(BOOL)a4;
- (double)_incomingStartTimeForTransitionEvent:(id)a3 useSourceTime:(BOOL)a4;
- (double)_outgoingDurationAfterPivotForTransition:(id)a3 useSourceTime:(BOOL)a4;
- (double)_outgoingEndTimeForTransitionEvent:(id)a3 useSourceTime:(BOOL)a4;
- (double)_outgoingPivotTimeForTransitionEvent:(id)a3 useSourceTime:(BOOL)a4;
- (double)_wallClockPlayDurationForEndEvent:(id)a3 endReasonType:(int64_t)a4 itemBeginEvent:(id)a5 cursor:(id)a6;
- (id)_fetchField:(id)a3 fromTransitionEvent:(id)a4 inParametersDictionary:(id)a5;
- (id)_findRecentPlaybackStartFromTypes:(id)a3 matchingPayload:(id)a4 cursor:(id)a5;
- (id)_generateAggregateNoncatalogEndEventForCursor:(id)a3;
- (id)_generatePlaybackEndEventFromEvent:(id)a3 withQueueSectionIdentifier:(id)a4 itemIdentifier:(id)a5 cursor:(id)a6;
- (void)_clampTimeValuesForPAFEvent:(id)a3 withDuration:(double)a4;
- (void)_handleURLBagProviderDidUpdateBagNotification:(id)a3;
- (void)_sendPlayEndNotificationWithStartTime:(double)a3 endTime:(double)a4 pafEvent:(id)a5 cursor:(id)a6;
- (void)_updateAllowedBundleIdsIfNecessary:(id)a3;
- (void)_updatePAFEvent:(id)a3 withAccountIdentifier:(id)a4 cursor:(id)a5;
- (void)_updatePAFEvent:(id)a3 withAudioChangeEvent:(id)a4;
- (void)_updatePAFEvent:(id)a3 withDeviceInfoFromCursor:(id)a4;
- (void)_updatePAFEvent:(id)a3 withEnqueuerAccountIdentifier:(id)a4 queueAddEvent:(id)a5 cursor:(id)a6;
- (void)_updatePAFEvent:(id)a3 withItemBeginEvent:(id)a4 containerBeginPayload:(id)a5 cursor:(id)a6 forEventType:(id)a7;
- (void)_updatePAFEvent:(id)a3 withQueueAddEvent:(id)a4 queueSectionIdentifier:(id)a5 cursor:(id)a6;
- (void)_updatePAFEvent:(id)a3 withSharedListeningInfoFromCursor:(id)a4;
- (void)_updatePAFEvent:(id)a3 withVocalAttenuationInfoForEndEvent:(id)a4 cursor:(id)a5;
- (void)subscribeToEventStream:(id)a3;
@end

@implementation MPCPlayActivityFeedEventConsumer

- (MPCPlayActivityFeedEventConsumer)init
{
  v10.receiver = self;
  v10.super_class = MPCPlayActivityFeedEventConsumer;
  v2 = [(MPCPlayActivityFeedEventConsumer *)&v10 init];
  allowedBundleIds = v2->_allowedBundleIds;
  v2->_allowedBundleIds = 0;

  v4 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__MPCPlayActivityFeedEventConsumer_init__block_invoke;
  block[3] = &unk_1E8239298;
  v5 = v2;
  v9 = v5;
  dispatch_async(v4, block);

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 addObserver:v5 selector:sel__handleURLBagProviderDidUpdateBagNotification_ name:*MEMORY[0x1E69E4348] object:0];

  return v5;
}

void __40__MPCPlayActivityFeedEventConsumer_init__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_ERROR, "[MPCPlayActivityFeedEventConsumer] Failed to fetch the bag. error: %{public}@", &v8, 0xCu);
    }
  }

  [*(a1 + 32) _updateAllowedBundleIdsIfNecessary:v5];
}

void __40__MPCPlayActivityFeedEventConsumer_init__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69E4618]);
  v3 = [MEMORY[0x1E69E4680] activeAccount];
  v4 = [v2 initWithIdentity:v3];

  v5 = [MEMORY[0x1E69E4658] sharedBagProvider];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__MPCPlayActivityFeedEventConsumer_init__block_invoke_2;
  v6[3] = &unk_1E82319D8;
  v7 = *(a1 + 32);
  [v5 getBagForRequestContext:v4 withCompletionHandler:v6];
}

- (BOOL)_finalizePAFEvents:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69E4510] shared];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__MPCPlayActivityFeedEventConsumer__finalizePAFEvents___block_invoke;
  v8[3] = &unk_1E8238628;
  v9 = v4;
  v10 = self;
  v6 = v4;
  [v5 recordPlayActivityEvents:v6 shouldFlush:0 withCompletionHandler:v8];

  return 1;
}

void __55__MPCPlayActivityFeedEventConsumer__finalizePAFEvents___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_ERROR, "[MPCPlayActivityFeedEventConsumer] Failed to record play activity events.", v9, 2u);
    }
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E69E4618]);
    v5 = [MEMORY[0x1E69E4680] activeAccount];
    v2 = [v4 initWithIdentity:v5];

    v6 = [MEMORY[0x1E69E4658] sharedBagProvider];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__MPCPlayActivityFeedEventConsumer__finalizePAFEvents___block_invoke_2;
    v10[3] = &unk_1E8231AA0;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    [v6 getBagForRequestContext:v2 withCompletionHandler:v10];
  }
}

void __55__MPCPlayActivityFeedEventConsumer__finalizePAFEvents___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_ERROR, "[MPCPlayActivityFeedEventConsumer] Failed to fetch the bag.", buf, 2u);
    }
  }

  v8 = [v5 numberForBagKey:@"play-activity-feed-post-all-play-starts"];
  if (objc_opt_respondsToSelector())
  {
    v36 = [v8 BOOLValue];
  }

  else
  {
    v36 = 0;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = *(a1 + 32);
  v9 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (!v9)
  {

    goto LABEL_37;
  }

  v10 = v9;
  v31 = a1;
  v32 = v8;
  v33 = v6;
  v34 = v5;
  v11 = 0;
  v12 = 0;
  v39 = 0;
  v13 = *v44;
  v35 = *MEMORY[0x1E69B1340];
  do
  {
    v14 = 0;
    do
    {
      if (*v44 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v43 + 1) + 8 * v14);
      v16 = [v15 eventType];
      if ([v15 systemReleaseType] == 4)
      {
        [v15 itemEndTime];
        v18 = v17;
        [v15 itemStartTime];
        if (v18 - v19 > 43200.0)
        {
          v37 = v12;
          v20 = MEMORY[0x1E69B13D8];
          v48 = @"PAF Event";
          v21 = [v15 description];
          v49 = v21;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
          v23 = v22 = v13;
          v50 = v23;
          v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
          v25 = v20;
          v12 = v37;
          [v25 snapshotWithDomain:v35 type:@"Bug" subType:@"PAFDurationBug" context:@"Playback greater than 12 hours" triggerThresholdValues:&stru_1F454A698 events:v24 completion:0];

          v13 = v22;
        }
      }

      switch(v16)
      {
        case 2:
          goto LABEL_23;
        case 1:
          v28 = [v15 reasonHintType] == 1;
          v39 |= v28;
          v12 |= [v15 containerType] == 1;
          v11 |= v36 | v28 & v12;
          if ((v11 & 1) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_25;
        case 0:
          v26 = [v15 endReasonType];
          if (v26 <= 0xF && ((1 << v26) & 0x8872) != 0)
          {
LABEL_23:
            v11 = 1;
          }

          break;
      }

      if ((v11 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_25:
      if (v39 & 1) != 0 && (v12)
      {

        v39 = 1;
        LOBYTE(v12) = 1;
        v6 = v33;
        v5 = v34;
        v8 = v32;
        goto LABEL_35;
      }

LABEL_27:
      ++v14;
    }

    while (v10 != v14);
    v29 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    v10 = v29;
  }

  while (v29);

  v6 = v33;
  v5 = v34;
  v8 = v32;
  if ((v11 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_35:
  v30 = [MEMORY[0x1E69E4510] shared];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __55__MPCPlayActivityFeedEventConsumer__finalizePAFEvents___block_invoke_143;
  v40[3] = &unk_1E8231A78;
  v40[4] = *(v31 + 40);
  v41 = v39 & 1;
  v42 = v12 & 1;
  [v30 flushPendingPlayActivityEventsWithCompletionHandler:v40];

LABEL_37:
}

void __55__MPCPlayActivityFeedEventConsumer__finalizePAFEvents___block_invoke_143(uint64_t a1, uint64_t a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_ERROR, "[MPCPlayActivityFeedEventConsumer] Failed to flush play activity events.", v9, 2u);
    }
  }

  else
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = *(a1 + 32);
    v10[0] = @"MPCJinglePlayActivityReportingControllerUserInfoKeyDidIncludeContainerChangeEvent";
    v5 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
    v10[1] = @"MPCJinglePlayActivityReportingControllerUserInfoDidIncludeRadioStationStartEvent";
    v11[0] = v5;
    if (*(a1 + 41) == 1)
    {
      v6 = *(a1 + 40);
    }

    else
    {
      v6 = 0;
    }

    v7 = [MEMORY[0x1E696AD98] numberWithInt:v6];
    v11[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
    [v2 postNotificationName:@"MPCJinglePlayActivityReportingControllerDidFlushEventsNotification" object:v4 userInfo:v8];
  }
}

- (BOOL)_queueSectionIsAODFromSectionIdentifier:(id)a3 cursor:(id)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v24 = @"queue-section-id";
    v25[0] = a3;
    v5 = MEMORY[0x1E695DF20];
    v6 = a4;
    v7 = a3;
    v8 = [v5 dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v9 = [v6 findPreviousEventWithType:@"container-begin" matchingPayload:v8];

    v23[0] = @"item-hls-stream-begin";
    v23[1] = @"item-hls-stream-end";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v21 = @"queue-section-id";
    v22 = v7;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];

    v12 = [v6 findPreviousEventWithTypes:v10 matchingPayload:v11];

    if (v9)
    {
      v16 = [v9 payload];
      v13 = [v16 objectForKeyedSubscript:@"container-metadata"];
      v14 = [v13 objectForKeyedSubscript:@"container-radio-type"];
      v15 = [v14 intValue];

      LOBYTE(v16) = 0;
      if (v15 == 4 && v12)
      {
        v17 = [v12 type];
        if ([v17 isEqualToString:@"item-hls-stream-begin"])
        {
          v18 = [v12 payload];
          v19 = [v18 objectForKeyedSubscript:@"container-indeterminate-duration"];
          LODWORD(v16) = [v19 BOOLValue] ^ 1;
        }

        else
        {
          LOBYTE(v16) = 0;
        }
      }
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (void)_clampTimeValuesForPAFEvent:(id)a3 withDuration:(double)a4
{
  v11 = a3;
  [v11 itemStartTime];
  v6 = v5;
  [v11 itemEndTime];
  v8 = 0.0;
  if (v6 >= 0.0)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0.0;
  }

  if (v7 >= 0.0)
  {
    v8 = v7;
  }

  if (v9 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = v9;
  }

  if (v8 < a4)
  {
    a4 = v8;
  }

  [v11 setItemStartTime:v10];
  [v11 setItemEndTime:a4];
}

- (void)_updatePAFEvent:(id)a3 withSharedListeningInfoFromCursor:(id)a4
{
  v30[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 findPreviousEventWithType:@"session-begin" matchingPayload:0];
  v8 = [v7 payload];
  v9 = [v8 objectForKeyedSubscript:@"behavior-type"];
  v10 = [v9 integerValue];

  v30[0] = @"shared-session-begin";
  v30[1] = @"shared-session-end";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v12 = [v6 findPreviousEventWithTypes:v11 matchingPayload:0];

  if (v12)
  {
    v13 = [v12 type];
    if ([v13 isEqualToString:@"shared-session-begin"])
    {
      v14 = [v12 payload];
      v15 = [v14 objectForKeyedSubscript:@"shared-session-type"];
      v16 = [v15 integerValue] == 2;

      if (v16)
      {
        v17 = v6;
        v18 = v10 == 3;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v17 = [v6 cursorUntilEvent:v7];
  if (v10 == 3)
  {
    v18 = 1;
LABEL_8:
    v19 = [v17 findPreviousEventWithType:@"shared-session-participants-changed" matchingPayload:0];
    v20 = [v19 payload];
    v21 = [v20 objectForKeyedSubscript:@"shared-session-event-route-type"];

    if (v21)
    {
      [v21 intValue];
      if (MROutputDeviceSubtypeFromGroupSessionRoute() == 14)
      {
LABEL_18:

        goto LABEL_19;
      }

      if (!v18)
      {
        if ([v21 intValue] == 8 || objc_msgSend(v21, "intValue") == 11)
        {
          v22 = 6;
        }

        else
        {
          if ([v21 intValue] != 5)
          {
            goto LABEL_17;
          }

          [v21 intValue];
          if (MROutputDeviceTypeFromGroupSessionRoute() == 1)
          {
            v22 = 5;
          }

          else
          {
            [v21 intValue];
            v22 = 4 * (MROutputDeviceTypeFromGroupSessionRoute() == 2);
          }
        }

        goto LABEL_16;
      }
    }

    else if (!v18)
    {
LABEL_17:
      v23 = [v19 payload];
      v24 = [v23 objectForKeyedSubscript:@"participants"];

      [v5 setSharedActivityGroupSizeCurrent:{objc_msgSend(v24, "count")}];
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = [v24 count];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __86__MPCPlayActivityFeedEventConsumer__updatePAFEvent_withSharedListeningInfoFromCursor___block_invoke;
      v25[3] = &unk_1E82322F0;
      v25[4] = &v26;
      [v17 enumeratePreviousEventsWithType:@"shared-session-participants-changed" usingBlock:v25];
      [v5 setSharedActivityGroupSizeMax:v27[3]];
      _Block_object_dispose(&v26, 8);

      goto LABEL_18;
    }

    v22 = 1;
LABEL_16:
    [v5 setSharedActivityType:v22];
    goto LABEL_17;
  }

LABEL_19:
}

void __86__MPCPlayActivityFeedEventConsumer__updatePAFEvent_withSharedListeningInfoFromCursor___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  v7 = [v3 objectForKeyedSubscript:@"participants"];

  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = [v7 count];
  if (v4 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
}

- (void)_updatePAFEvent:(id)a3 withAudioChangeEvent:(id)a4
{
  v5 = a3;
  if (a4)
  {
    v20 = v5;
    v6 = [a4 payload];
    v7 = [v6 objectForKeyedSubscript:@"item-audio-format-metadata"];

    v8 = [v7 objectForKeyedSubscript:@"active-format"];
    v9 = [v7 objectForKeyedSubscript:@"target-format"];
    v10 = [v7 objectForKeyedSubscript:@"preferred-tiers"];
    v11 = [v10 integerValue];

    if ([v9 codec])
    {
      v12 = objc_alloc_init(MEMORY[0x1E69E44E8]);
      [v12 setBitDepth:{objc_msgSend(v9, "bitDepth")}];
      [v12 setBitRate:{objc_msgSend(v9, "bitrate")}];
      v13 = [v9 audioChannelLayoutDescription];
      [v12 setChannelLayoutDescription:v13];

      [v12 setCodec:{objc_msgSend(v9, "codec")}];
      [v12 setSampleRate:{objc_msgSend(v9, "sampleRate")}];
      [v12 setSpatialized:{objc_msgSend(v9, "isMultiChannel")}];
      [v20 setTargetedAudioQuality:v12];
    }

    if ([v8 codec])
    {
      v14 = objc_alloc_init(MEMORY[0x1E69E44E8]);
      [v14 setBitDepth:{objc_msgSend(v8, "bitDepth")}];
      [v14 setBitRate:{objc_msgSend(v8, "bitrate")}];
      v15 = [v8 audioChannelLayoutDescription];
      [v14 setChannelLayoutDescription:v15];

      [v14 setCodec:{objc_msgSend(v8, "codec")}];
      [v14 setSampleRate:{objc_msgSend(v8, "sampleRate")}];
      [v14 setSpatialized:{objc_msgSend(v8, "isMultiChannel")}];
      [v20 setProvidedAudioQuality:v14];
    }

    v16 = 2;
    v17 = 3;
    if ((v11 & 4) == 0)
    {
      v17 = (v11 >> 1) & 4;
    }

    if ((v11 & 2) == 0)
    {
      v16 = v17;
    }

    if (v11)
    {
      v18 = 1;
    }

    else
    {
      v18 = v16;
    }

    [v20 setAudioQualityPreference:v18];
    if ((v11 & 0x10) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    [v20 setPlaybackFormatPreference:v19];

    v5 = v20;
  }
}

- (void)_updatePAFEvent:(id)a3 withDeviceInfoFromCursor:(id)a4
{
  v79[1] = *MEMORY[0x1E69E9840];
  v70 = a3;
  v68 = a4;
  v79[0] = @"device-changed";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:1];
  v67 = [v68 findPreviousEventWithTypes:v5 matchingPayload:0];

  v6 = [v67 payload];
  v69 = [v6 objectForKeyedSubscript:@"device-metadata"];

  v7 = [v67 payload];
  v8 = [v7 objectForKeyedSubscript:@"internal-carry"];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = [&unk_1F45997F0 arrayByAddingObject:@"CARRY"];
  }

  else
  {
    v10 = &unk_1F45997F0;
  }

  [v69 objectForKeyedSubscript:@"media-frameworks"];
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v11 = v72 = 0u;
  v12 = 0;
  v13 = 0;
  v14 = [v11 countByEnumeratingWithState:&v71 objects:v78 count:16];
  if (v14)
  {
    v15 = *v72;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v72 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v71 + 1) + 8 * i);
        v13 |= [v17 isRoot];
        v12 |= [v17 isDebug];
      }

      v14 = [v11 countByEnumeratingWithState:&v71 objects:v78 count:16];
    }

    while (v14);
  }

  v18 = [v69 objectForKeyedSubscript:@"application-source-version"];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 isEqualToString:@"9000"];
    v21 = [v19 isEqualToString:@"9100"];
    v22 = [v19 hasSuffix:@"-Debug"];
    v23 = [v19 hasPrefix:@"9000"];
    v12 |= v22 | v20;
    v13 |= [v19 isEqualToString:@"9999.99.99"] | v23 | v21;
  }

  if ((v9 & 1) != 0 || ((v13 | v12) & 1) == 0)
  {
    v24 = v10;
    if ((v13 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v24 = [v10 arrayByAddingObject:@"DEV"];

  if (v13)
  {
LABEL_18:
    v25 = v24;
    v24 = [v24 arrayByAddingObject:@"ROOTS"];
  }

LABEL_19:
  if (v12)
  {
    v26 = v24;
    v24 = [v24 arrayByAddingObject:@"DEBUG"];
  }

  v63 = v24;
  [v70 setBuildFeatures:v24];
  v27 = [v69 objectForKeyedSubscript:@"user-agent"];
  [v70 setBuildVersion:v27];

  v28 = [v69 objectForKeyedSubscript:@"device-name"];
  [v70 setDeviceName:v28];

  v29 = [v70 requestingBundleVersion];
  if (v29)
  {
    goto LABEL_22;
  }

  v30 = [v70 requestingBundleIdentifier];
  v31 = v30 == 0;

  if (v31)
  {
    v29 = [v69 objectForKeyedSubscript:@"application-bundle-id"];
    v57 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
    v58 = MRMediaRemoteCopyLocalDeviceSystemClassicalRoomApplicationDisplayID();
    v77[0] = v57;
    v77[1] = v58;
    v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
    v60 = [v59 containsObject:v29];

    v61 = self;
    objc_sync_enter(v61);
    if ((v60 & 1) != 0 || [(NSArray *)v61->_allowedBundleIds containsObject:v29])
    {
      [v70 setRequestingBundleIdentifier:v29];
      v62 = [v69 objectForKeyedSubscript:@"application-version"];
      [v70 setRequestingBundleVersion:v62];
    }

    objc_sync_exit(v61);

LABEL_22:
  }

  v32 = [v69 objectForKeyedSubscript:@"device-software-variant"];
  if ([v32 isEqualToString:@"Carrier"])
  {
    v33 = 2;
  }

  else if ([v32 isEqualToString:@"Beta"])
  {
    v33 = 3;
  }

  else if ([v32 isEqualToString:@"Internal"])
  {
    v33 = 4;
  }

  else
  {
    v33 = 1;
  }

  [v70 setSystemReleaseType:v33];
  v66 = [v68 findPreviousEventWithType:@"network-reachability-changed" matchingPayload:0];
  v34 = [v66 payload];
  v64 = [v34 objectForKeyedSubscript:@"network-reachability"];

  [v70 setOffline:{objc_msgSend(v64, "integerValue") == 0}];
  v35 = [v68 findPreviousEventWithType:@"session-begin" matchingPayload:0];
  v36 = [v35 payload];
  v37 = [v36 objectForKeyedSubscript:@"session-id"];

  v75 = @"session-id";
  v76 = v37;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
  v39 = [v68 findPreviousEventWithType:@"playback-behavior-changed" matchingPayload:v38];

  v40 = [v39 payload];
  v41 = [v40 objectForKeyedSubscript:@"playback-behavior-metadata"];
  v42 = [v41 objectForKeyedSubscript:@"repeat-type"];
  v43 = [v42 intValue];

  if (v43 <= 2)
  {
    [v70 setRepeatPlayMode:v43 + 1];
  }

  v44 = [v39 payload];
  v45 = [v44 objectForKeyedSubscript:@"playback-behavior-metadata"];
  v46 = [v45 objectForKeyedSubscript:@"shuffle-type"];
  v47 = [v46 intValue];

  if (v47 <= 2)
  {
    [v70 setShufflePlayMode:qword_1C6045250[v47]];
  }

  v48 = [v39 payload];
  v49 = [v48 objectForKeyedSubscript:@"playback-behavior-metadata"];
  v50 = [v49 objectForKeyedSubscript:@"autoplay-mode"];
  v51 = [v50 intValue];

  if (v51 <= 3)
  {
    [v70 setAutoPlayMode:v51];
  }

  v52 = [v39 payload];
  v53 = [v52 objectForKeyedSubscript:@"playback-behavior-metadata"];
  v54 = [v53 objectForKeyedSubscript:@"user-transition-preference"];
  v55 = [v54 intValue];

  if (v55 <= 3)
  {
    [v70 setUserTransitionTypePreference:v55];
  }

  v56 = [MEMORY[0x1E695DFE8] systemTimeZone];
  [v70 setEventTimeZone:v56];
}

- (BOOL)_vocalControlIsOnForEvent:(id)a3
{
  v5 = a3;
  v6 = [v5 type];
  if (([v6 isEqualToString:@"item-resume"] & 1) == 0)
  {
    v7 = [v5 type];
    v8 = [v7 isEqualToString:@"item-vocal-attenuation-changed"];

    if (v8)
    {
      goto LABEL_5;
    }

    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MPCPlayActivityFeedEventConsumer.m" lineNumber:1892 description:@"Only Item Resume and Vocal Attenuation Changed events contain vocal attenuation fields."];
  }

LABEL_5:
  v9 = [v5 payload];
  v10 = [v9 objectForKeyedSubscript:@"vocal-attenuation-available"];
  if ([v10 BOOLValue])
  {
    v11 = [v5 payload];
    v12 = [v11 objectForKeyedSubscript:@"vocal-attenuation-configured"];
    if ([v12 BOOLValue])
    {
      v13 = [v5 payload];
      v14 = [v13 objectForKeyedSubscript:@"supports-vocal-attenuation"];
      if ([v14 BOOLValue])
      {
        v15 = [v5 payload];
        v16 = [v15 objectForKeyedSubscript:@"vocal-attenuation-enabled"];
        v17 = [v16 BOOLValue];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_updatePAFEvent:(id)a3 withVocalAttenuationInfoForEndEvent:(id)a4 cursor:(id)a5
{
  v82[2] = *MEMORY[0x1E69E9840];
  v56 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v7 payload];
  v10 = [v9 objectForKeyedSubscript:@"queue-section-id"];

  v11 = [v7 payload];
  v12 = [v11 objectForKeyedSubscript:@"queue-item-id"];

  v82[0] = @"item-resume";
  v82[1] = @"item-vocal-attenuation-changed";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];
  v14 = [v8 findPreviousEventWithTypes:v13 matchingPayload:0];

  if (v14)
  {
    v15 = [v14 payload];
    v16 = [v15 objectForKeyedSubscript:@"vocal-attenuation-available"];
    v17 = [v16 BOOLValue] ? 1 : 2;

    [v56 setVocalAttenuationAvailability:v17];
    if (v10)
    {
      if (v12 && [(MPCPlayActivityFeedEventConsumer *)self _itemIsPlayingFromQueueSectionIdentifier:v10 itemIdentifier:v12 cursor:v8])
      {
        v80 = @"queue-section-id";
        v81 = v10;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
        v53 = [v8 findPreviousEventWithType:@"container-begin" matchingPayload:v18];

        v78 = @"queue-section-id";
        v79 = v10;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
        v54 = [v8 findPreviousEventWithType:@"item-hls-stream-begin" matchingPayload:v19];

        v20 = [v54 payload];
        v21 = [v20 objectForKeyedSubscript:@"container-indeterminate-duration"];
        if ([v21 BOOLValue])
        {

LABEL_11:
          [v56 setVocalAttenuationDuration:{0.0, v50}];
LABEL_27:

          goto LABEL_28;
        }

        v22 = [v53 payload];
        v23 = [v22 objectForKeyedSubscript:@"container-metadata"];
        v24 = [v23 objectForKeyedSubscript:@"container-radio-subtype"];
        LODWORD(v50) = [v24 integerValue] == 2;

        if (v50)
        {
          goto LABEL_11;
        }

        v77[0] = @"item-resume";
        v77[1] = @"item-position-jump";
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
        v75[0] = @"queue-section-id";
        v75[1] = @"queue-item-id";
        v76[0] = v10;
        v76[1] = v12;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:2];
        v51 = [(MPCPlayActivityFeedEventConsumer *)self _findRecentPlaybackStartFromTypes:v25 matchingPayload:v26 cursor:v8];

        v68 = 0;
        v69 = &v68;
        v70 = 0x2020000000;
        v27 = [v7 payload];
        v28 = [v27 objectForKeyedSubscript:@"item-end-position"];
        [v28 doubleValue];
        v30 = v29;

        v71 = v30;
        v31 = [v7 type];
        if ([v31 isEqualToString:@"item-end"])
        {
          v32 = [v7 payload];
          v33 = [v32 objectForKeyedSubscript:@"item-did-play-to-end"];
          v34 = [v33 BOOLValue];

          if (v34)
          {
            v73[0] = @"queue-section-id";
            v73[1] = @"queue-item-id";
            v74[0] = v10;
            v74[1] = v12;
            v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:2];
            v36 = [v8 findPreviousEventWithType:@"item-begin" matchingPayload:v35];

            v37 = [v36 payload];
            v38 = [v37 objectForKeyedSubscript:@"item-metadata"];

            v39 = [v38 objectForKeyedSubscript:@"item-end-boundary"];
            LOBYTE(v37) = v39 == 0;

            if (v37)
            {
              [v38 objectForKeyedSubscript:@"item-duration"];
            }

            else
            {
              [v38 objectForKeyedSubscript:@"item-end-boundary"];
            }
            v40 = ;
            [v40 doubleValue];
            *(v69 + 3) = v44;

            goto LABEL_21;
          }
        }

        else
        {
        }

        v41 = [v7 type];
        v42 = [v41 isEqualToString:@"item-position-jump"];

        if (!v42)
        {
LABEL_22:
          if ([v14 isEqual:{v51, v51}])
          {
            if ([(MPCPlayActivityFeedEventConsumer *)self _vocalControlIsOnForEvent:v52])
            {
              v45 = [v52 payload];
              v46 = [v45 objectForKeyedSubscript:@"item-start-position"];
              [v46 doubleValue];
              v48 = v47;

              [v56 setVocalAttenuationDuration:v69[3] - v48];
            }
          }

          else
          {
            v64 = 0;
            v65 = &v64;
            v66 = 0x2020000000;
            v67 = 0;
            v63[0] = 0;
            v63[1] = v63;
            v63[2] = 0x2020000000;
            v63[3] = 0xBFF0000000000000;
            v72[0] = @"item-resume";
            v72[1] = @"item-vocal-attenuation-changed";
            v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:2];
            v57[0] = MEMORY[0x1E69E9820];
            v57[1] = 3221225472;
            v57[2] = __95__MPCPlayActivityFeedEventConsumer__updatePAFEvent_withVocalAttenuationInfoForEndEvent_cursor___block_invoke;
            v57[3] = &unk_1E8231A50;
            v58 = v52;
            v59 = self;
            v60 = v63;
            v61 = &v68;
            v62 = &v64;
            [v8 enumeratePreviousEventsWithTypes:v49 usingBlock:v57];

            [v56 setVocalAttenuationDuration:v65[3]];
            _Block_object_dispose(v63, 8);
            _Block_object_dispose(&v64, 8);
          }

          _Block_object_dispose(&v68, 8);

          goto LABEL_27;
        }

        v36 = [v7 payload];
        v38 = [v36 objectForKeyedSubscript:@"item-start-position"];
        [v38 doubleValue];
        *(v69 + 3) = v43;
LABEL_21:

        goto LABEL_22;
      }
    }
  }

LABEL_28:
}

void __95__MPCPlayActivityFeedEventConsumer__updatePAFEvent_withVocalAttenuationInfoForEndEvent_cursor___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v19 = a2;
  if ([v19 compare:*(a1 + 32)] == 1)
  {
    v5 = [*(a1 + 40) _vocalControlIsOnForEvent:v19];
    v6 = [v19 payload];
    v7 = [v6 objectForKeyedSubscript:@"item-start-position"];
    [v7 doubleValue];
    if (v5)
    {
      *(*(*(a1 + 48) + 8) + 24) = v8;

      v9 = *(*(*(a1 + 48) + 8) + 24);
      if (v9 > 0.0)
      {
        v10 = *(*(*(a1 + 56) + 8) + 24);
        if (v10 > 0.0)
        {
          *(*(*(a1 + 64) + 8) + 24) = v10 - v9 + *(*(*(a1 + 64) + 8) + 24);
          *(*(*(a1 + 48) + 8) + 24) = 0xBFF0000000000000;
          *(*(*(a1 + 56) + 8) + 24) = 0xBFF0000000000000;
        }
      }
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = v8;
    }
  }

  else
  {
    *a3 = 1;
    if ([*(a1 + 40) _vocalControlIsOnForEvent:v19])
    {
      v11 = [*(a1 + 32) payload];
      v12 = [v11 objectForKeyedSubscript:@"item-start-position"];
      [v12 doubleValue];
      *(*(*(a1 + 48) + 8) + 24) = v13;

      v14 = [*(a1 + 32) type];
      LODWORD(v12) = [v14 isEqualToString:@"item-position-jump"];

      if (v12)
      {
        v15 = [*(a1 + 32) payload];
        v16 = [v15 objectForKeyedSubscript:@"item-end-position"];
        [v16 doubleValue];
        *(*(*(a1 + 48) + 8) + 24) = v17;
      }

      v18 = *(*(*(a1 + 56) + 8) + 24);
      if (v18 > 0.0)
      {
        *(*(*(a1 + 64) + 8) + 24) = v18 - *(*(*(a1 + 48) + 8) + 24) + *(*(*(a1 + 64) + 8) + 24);
      }
    }
  }
}

- (void)_updatePAFEvent:(id)a3 withEnqueuerAccountIdentifier:(id)a4 queueAddEvent:(id)a5 cursor:(id)a6
{
  v57 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v11)
  {
    v14 = [v12 payload];
    v15 = [v14 objectForKeyedSubscript:@"queue-reporting-metadata"];

    v47 = v15;
    v16 = [v15 objectForKeyedSubscript:@"device-metadata"];
    v50[0] = @"account-update";
    v50[1] = @"account-begin";
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
    v48 = @"account-id";
    v49 = v11;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v19 = [v13 findPreviousEventWithTypes:v17 matchingPayload:v18];

    v46 = v19;
    v20 = [v19 payload];
    v21 = [v20 objectForKeyedSubscript:@"account-metadata"];

    v22 = objc_alloc_init(MEMORY[0x1E69E44F0]);
    v23 = [v21 objectForKeyedSubscript:@"store-account-id"];
    [v22 setStoreAccountID:{objc_msgSend(v23, "unsignedLongLongValue")}];

    v45 = v21;
    v24 = [v21 objectForKeyedSubscript:@"store-front-id"];
    [v22 setStoreFrontID:v24];

    v25 = [v16 objectForKeyedSubscript:@"user-agent"];
    [v22 setBuildVersion:v25];

    v26 = [v16 objectForKeyedSubscript:@"device-guid"];
    [v22 setDeviceGUID:v26];

    v27 = [v16 objectForKeyedSubscript:@"device-name"];
    [v22 setDeviceName:v27];

    v28 = [MEMORY[0x1E695DFE8] systemTimeZone];
    [v22 setTimeZone:v28];

    v29 = [v12 payload];
    v30 = [v29 objectForKeyedSubscript:@"queue-delegated-account-metadata"];
    v31 = [v30 objectForKeyedSubscript:@"private-listening-enabled"];

    if (v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = MEMORY[0x1E695E118];
    }

    [v22 setPrivateListeningEnabled:v32];
    v33 = [v12 payload];
    v34 = [v33 objectForKeyedSubscript:@"private-listening-source"];
    v35 = [v34 integerValue];

    if (v35 == 1)
    {
      v44 = v11;
      v36 = v10;
      v37 = [v13 findPreviousEventWithType:@"device-changed" matchingPayload:0];
      v38 = [v37 payload];
      v39 = [v38 objectForKeyedSubscript:@"device-metadata"];
      v40 = [v39 objectForKeyedSubscript:@"private-listening-enabled"];

      if ([v40 BOOLValue])
      {
        [v22 setPrivateListeningEnabled:MEMORY[0x1E695E118]];
      }

      v31 = v40;
      v10 = v36;
      v11 = v44;
    }

    v41 = [v16 objectForKeyedSubscript:@"device-software-variant"];
    v42 = v47;
    if ([v41 isEqualToString:@"Carrier"])
    {
      v43 = 2;
    }

    else if ([v41 isEqualToString:@"Beta"])
    {
      v43 = 3;
    }

    else if ([v41 isEqualToString:@"Internal"])
    {
      v43 = 4;
    }

    else
    {
      v43 = 1;
    }

    [v22 setSystemReleaseType:v43];
    [v22 setSBEnabled:1];
    [v10 setEnqueuerProperties:v22];
  }

  else
  {
    v42 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v52 = self;
      v53 = 2114;
      v54 = v10;
      v55 = 2114;
      v56 = v13;
      _os_log_impl(&dword_1C5C61000, v42, OS_LOG_TYPE_ERROR, "MPCPlayActivityFeedEventConsumer %p - Unable to update PAF event [missing account identifier for delegated playback] - event:%{public}@ - cursor:%{public}@", buf, 0x20u);
    }
  }
}

- (void)_updatePAFEvent:(id)a3 withAccountIdentifier:(id)a4 cursor:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v22[0] = @"account-update";
    v22[1] = @"account-begin";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v20 = @"account-id";
    v21 = v9;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v13 = [v10 findPreviousEventWithTypes:v11 matchingPayload:v12];

    v14 = [v13 payload];
    v15 = [v14 objectForKeyedSubscript:@"account-metadata"];

    v16 = [v15 objectForKeyedSubscript:@"subscription-status"];
    [v8 setSBEnabled:{objc_msgSend(v16, "hasCapability:", 128)}];
    v17 = [v15 objectForKeyedSubscript:@"store-front-id"];
    [v8 setStoreFrontID:v17];

    v18 = [v15 objectForKeyedSubscript:@"store-account-id"];
    [v8 setStoreAccountID:{objc_msgSend(v18, "unsignedLongLongValue")}];

    v19 = [v15 objectForKeyedSubscript:@"household-id"];
    [v8 setHouseholdID:v19];
  }

  else
  {
    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v24 = self;
      v25 = 2114;
      v26 = v8;
      v27 = 2114;
      v28 = v10;
      _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_ERROR, "MPCPlayActivityFeedEventConsumer %p - Unable to update PAF event [missing account identifier] - event:%{public}@ - cursor:%{public}@", buf, 0x20u);
    }
  }
}

- (void)_updatePAFEvent:(id)a3 withItemBeginEvent:(id)a4 containerBeginPayload:(id)a5 cursor:(id)a6 forEventType:(id)a7
{
  v183 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v13 payload];
  v18 = [v17 objectForKeyedSubscript:@"queue-section-id"];

  v19 = [v13 payload];
  v20 = [v19 objectForKeyedSubscript:@"queue-item-id"];

  if (v18 && v20)
  {
    v151 = v16;
    v175[0] = @"queue-section-id";
    v175[1] = @"queue-item-id";
    v155 = v18;
    v176[0] = v18;
    v176[1] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v176 forKeys:v175 count:2];
    v160 = [v15 findPreviousEventWithType:@"item-update" matchingPayload:v21];

    v22 = [v13 payload];
    v161 = [v14 objectForKeyedSubscript:@"container-metadata"];
    v162 = [v22 objectForKeyedSubscript:@"item-metadata"];
    v173 = @"queue-section-id";
    v159 = v22;
    v23 = [v22 objectForKeyedSubscript:@"queue-section-id"];
    v174 = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v174 forKeys:&v173 count:1];
    v25 = [v15 findPreviousEventWithType:@"queue-add" matchingPayload:v24];

    v157 = v25;
    v26 = [v25 payload];
    v27 = [v26 objectForKeyedSubscript:@"private-listening-source"];
    v28 = [v27 integerValue];

    v154 = v20;
    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v48 = [v157 payload];
        v49 = [v48 objectForKeyedSubscript:@"account-id"];

        if (!v49)
        {
          v65 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
          v158 = v65;
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218498;
            v178 = self;
            v179 = 2114;
            v180 = v157;
            v181 = 2114;
            v182 = v15;
            _os_log_impl(&dword_1C5C61000, v65, OS_LOG_TYPE_ERROR, "PlayActivityFeedEventConsumer %p: _updatePafEvent:withItemBeginEvent:containerBeginPayload:cursor:forEventType: - could not find accountIdentifier event=%{public}@ - cursor:%{public}@", buf, 0x20u);
          }

          v16 = v151;
          v18 = v155;
          v43 = v160;
          v66 = v161;
          goto LABEL_92;
        }

        v145 = v13;
        v172[0] = @"account-begin";
        v172[1] = @"account-update";
        v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v172 count:2];
        v170 = @"account-id";
        v171 = v49;
        v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v171 forKeys:&v170 count:1];
        v52 = [v15 findPreviousEventWithTypes:v50 matchingPayload:v51];

        v147 = v15;
        v53 = [v15 findPreviousEventWithType:@"device-changed" matchingPayload:0];
        v54 = v52;
        v55 = [v52 payload];
        v56 = [v55 objectForKeyedSubscript:@"account-metadata"];
        v57 = [v56 objectForKeyedSubscript:@"private-listening-enabled"];

        v58 = v53;
        v59 = [v53 payload];
        v60 = [v59 objectForKeyedSubscript:@"device-metadata"];
        v61 = [v60 objectForKeyedSubscript:@"focus-mode-private-listening-enabled"];
        v62 = [v61 integerValue];

        if (v62)
        {
          v63 = [MEMORY[0x1E696AD98] numberWithInt:v62 == 1];
          [v12 setPrivateListeningEnabled:v63];
        }

        else
        {
          if (v57)
          {
            v67 = v57;
          }

          else
          {
            v67 = MEMORY[0x1E695E118];
          }

          [v12 setPrivateListeningEnabled:v67];
        }

        v29 = v159;

        v13 = v145;
        v15 = v147;
        v30 = v160;
      }

      else
      {
        v29 = v159;
        v30 = v160;
        if (v28 == 3)
        {
          v44 = [v157 payload];
          v45 = [v44 objectForKeyedSubscript:@"queue-reporting-metadata"];
          v46 = [v45 objectForKeyedSubscript:@"private-listening-enabled"];

          if (v46)
          {
            v47 = v46;
          }

          else
          {
            v47 = MEMORY[0x1E695E118];
          }

          [v12 setPrivateListeningEnabled:v47];
        }
      }
    }

    else
    {
      if (v28)
      {
        v29 = v159;
        v30 = v160;
        if (v28 != 1)
        {
          goto LABEL_35;
        }

        v31 = v13;
        v32 = v15;
        v33 = [v15 findPreviousEventWithType:@"device-changed" matchingPayload:0];
        v34 = [v33 payload];
        v35 = [v34 objectForKeyedSubscript:@"device-metadata"];
        v36 = [v35 objectForKeyedSubscript:@"private-listening-enabled"];

        v37 = [v33 payload];
        v38 = [v37 objectForKeyedSubscript:@"device-metadata"];
        v39 = [v38 objectForKeyedSubscript:@"focus-mode-private-listening-enabled"];
        v40 = [v39 integerValue];

        if (v40)
        {
          v41 = [MEMORY[0x1E696AD98] numberWithInt:v40 == 1];
          [v12 setPrivateListeningEnabled:v41];
        }

        else
        {
          if (v36)
          {
            v64 = v36;
          }

          else
          {
            v64 = MEMORY[0x1E695E118];
          }

          [v12 setPrivateListeningEnabled:v64];
        }

        v15 = v32;
        v13 = v31;
      }

      else
      {
        [v12 setPrivateListeningEnabled:MEMORY[0x1E695E118]];
      }

      v29 = v159;
      v30 = v160;
    }

LABEL_35:
    v68 = [v162 objectForKeyedSubscript:@"item-duration"];
    [v68 doubleValue];
    [v12 setItemDuration:?];

    v69 = [v162 objectForKeyedSubscript:@"item-has-video"];
    v70 = [v69 BOOLValue];

    [v12 setMediaType:v70];
    v71 = [v29 objectForKeyedSubscript:@"radio-track-info"];
    [v12 setTrackInfo:v71];

    v72 = [v14 objectForKeyedSubscript:@"container-kind"];
    v152 = v14;
    v73 = [v14 objectForKeyedSubscript:@"container-ids"];
    v74 = [v30 payload];
    v75 = [v74 objectForKeyedSubscript:@"item-kind"];
    v76 = v75;
    if (v75)
    {
      v77 = v75;
    }

    else
    {
      v77 = [v29 objectForKeyedSubscript:@"item-kind"];
    }

    v150 = v77;

    v78 = [v30 payload];
    v79 = [v78 objectForKeyedSubscript:@"item-ids"];
    v80 = v79;
    v158 = v72;
    if (v79)
    {
      v81 = v79;
    }

    else
    {
      v81 = [v29 objectForKeyedSubscript:@"item-ids"];
    }

    v82 = v81;

    v83 = objc_alloc_init(MEMORY[0x1E69E4500]);
    v84 = [v158 modelClass];
    v153 = v82;
    v156 = v83;
    if (v84 == objc_opt_class())
    {
      [v12 setContainerType:1];
      v86 = v73;
      v93 = [v73 radio];
      v94 = [v93 stationHash];
      [v83 setStationHash:v94];

      v95 = [v73 radio];
      v96 = [v95 stationStringID];
      [v83 setStationStringID:v96];

      v14 = v152;
      goto LABEL_57;
    }

    v85 = [v158 modelClass];
    v86 = v73;
    if (v85 != objc_opt_class())
    {
      v87 = [v158 modelClass];
      if (v87 == objc_opt_class())
      {
        [v12 setContainerType:3];
      }

      else
      {
        v88 = [v158 modelClass];
        if (v88 == objc_opt_class())
        {
          [v12 setContainerType:4];
          v89 = [v82 personalizedStore];
          v90 = [v89 cloudAlbumID];
          v91 = v90;
          if (v90)
          {
            v92 = v90;
          }

          else
          {
            v109 = [v73 personalizedStore];
            v92 = [v109 cloudAlbumID];
          }

          [v83 setCloudAlbumID:v92];
          v86 = v73;
          v14 = v152;
LABEL_56:
          v82 = v153;
LABEL_57:
          v149 = v86;
          v110 = [v86 universalStore];
          [v83 setAdamID:{objc_msgSend(v110, "adamID")}];

          [v12 setContainerIDs:v83];
          v111 = objc_alloc_init(MEMORY[0x1E69E4508]);
          v112 = [v162 objectForKeyedSubscript:@"item-artist-uploaded"];
          v113 = [v112 BOOLValue];

          if (v113)
          {
            v114 = [v82 universalStore];
            v115 = [v114 subscriptionAdamID];
            if (v115)
            {
              [v111 setSubscriptionAdamID:v115];
            }

            else
            {
              v126 = [v82 universalStore];
              [v111 setSubscriptionAdamID:{objc_msgSend(v126, "adamID")}];
            }

            v125 = 6;
          }

          else
          {
            v116 = [v12 containerType];
            v117 = [v82 universalStore];
            v118 = v117;
            if (v116 == 1)
            {
              v119 = [v117 adamID];
              if (v119)
              {
                [v111 setRadioAdamID:v119];
              }

              else
              {
                v127 = [v82 universalStore];
                [v111 setRadioAdamID:{objc_msgSend(v127, "subscriptionAdamID")}];
              }

              v125 = [v111 radioAdamID] != 0;
            }

            else
            {
              [v111 setSubscriptionAdamID:{objc_msgSend(v117, "subscriptionAdamID")}];

              v120 = [v82 universalStore];
              [v111 setPurchasedAdamID:{objc_msgSend(v120, "purchasedAdamID")}];

              v121 = [v82 personalizedStore];
              [v111 setCloudID:{objc_msgSend(v121, "cloudID")}];

              v122 = [v82 universalStore];
              [v111 setReportingAdamID:{objc_msgSend(v122, "reportingAdamID")}];

              v123 = [v150 modelClass];
              if (v123 == objc_opt_class())
              {
                v125 = 9;
              }

              else
              {
                v124 = [v150 modelClass];
                if (v124 != objc_opt_class())
                {
                  v66 = v161;
                  v125 = [v111 subscriptionAdamID] || objc_msgSend(v111, "purchasedAdamID") || objc_msgSend(v111, "reportingAdamID");
                  goto LABEL_76;
                }

                v125 = 8;
              }
            }
          }

          v66 = v161;
LABEL_76:
          v128 = [v66 objectForKeyedSubscript:@"container-radio-type"];
          if (v128)
          {
            v129 = v128;
            v146 = v13;
            v148 = v15;
            [v66 objectForKeyedSubscript:@"container-radio-type"];
            v131 = v130 = v66;
            v132 = [v131 intValue];

            v43 = v160;
            if (v132 == 4)
            {
              v169[0] = @"item-hls-stream-begin";
              v169[1] = @"item-hls-stream-end";
              v133 = [MEMORY[0x1E695DEC8] arrayWithObjects:v169 count:2];
              v167 = @"queue-section-id";
              v168 = v155;
              v134 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v168 forKeys:&v167 count:1];
              v135 = [v148 findPreviousEventWithTypes:v133 matchingPayload:v134];

              v165[0] = @"queue-section-id";
              v165[1] = @"queue-item-id";
              v166[0] = v155;
              v166[1] = v154;
              v136 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v166 forKeys:v165 count:2];
              v137 = [v148 findPreviousEventWithType:@"item-timed-metadata-ping" matchingPayload:v136];

              v138 = [v135 type];
              v139 = [v138 isEqualToString:@"item-hls-stream-begin"];

              v140 = [v130 objectForKeyedSubscript:@"container-radio-subtype"];
              v141 = [v140 integerValue];

              if ((v139 & 1) != 0 || v141 == 2)
              {
                v83 = v156;
                if (v137 && ([v151 isEqualToString:@"item-end"] & 1) != 0)
                {
                  v125 = 5;
                }

                else
                {
                  v125 = 4;
                }
              }

              else
              {
                v83 = v156;
                if (v135)
                {
                  v142 = [v148 cursorUntilEvent:v146];
                  v163 = @"queue-section-id";
                  v164 = v155;
                  v143 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v164 forKeys:&v163 count:1];
                  v144 = [v142 findPreviousEventWithType:@"item-hls-stream-end" matchingPayload:v143];

                  if (v144)
                  {
                    v125 = 4;
                  }
                }
              }

              v14 = v152;
              v43 = v160;
              v66 = v161;

              v13 = v146;
              v15 = v148;
            }

            else
            {
              v15 = v148;
              v66 = v130;
              v83 = v156;
            }
          }

          else
          {
            v43 = v160;
          }

          [v12 setItemIDs:v111];
          [v12 setItemType:v125];

          v16 = v151;
          v20 = v154;
          v18 = v155;
LABEL_92:

          goto LABEL_93;
        }
      }

      v14 = v152;
      goto LABEL_57;
    }

    [v12 setContainerType:2];
    v97 = [v161 objectForKeyedSubscript:@"container-is-playlist-folder"];
    v98 = v161;
    v99 = [v97 BOOLValue];

    if (v99)
    {
      [v12 setContainerType:6];
      v100 = [v73 personalizedStore];
      [v83 setCloudPlaylistFolderID:{objc_msgSend(v100, "cloudID")}];

      v14 = v152;
      v101 = [v152 objectForKeyedSubscript:@"nested-container"];
      v102 = [v101 objectForKeyedSubscript:@"container-ids"];

      v103 = [v101 objectForKeyedSubscript:@"container-metadata"];

      v98 = v103;
      v86 = v102;
    }

    else
    {
      v14 = v152;
    }

    v104 = [v86 personalizedStore];
    [v83 setCloudPlaylistID:{objc_msgSend(v104, "cloudID")}];

    v105 = [v86 universalStore];
    v106 = [v105 globalPlaylistID];
    [v83 setGlobalPlaylistID:v106];

    v107 = [v98 objectForKeyedSubscript:@"container-playlist-version-hash"];
    [v83 setPlaylistVersionHash:v107];

    v161 = v98;
    v108 = [v98 objectForKeyedSubscript:@"container-is-collaborative-playlist"];
    [v12 setCollaborativePlaylist:{objc_msgSend(v108, "BOOLValue")}];

    goto LABEL_56;
  }

  v42 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218498;
    v178 = self;
    v179 = 2114;
    v180 = v13;
    v181 = 2114;
    v182 = v15;
    _os_log_impl(&dword_1C5C61000, v42, OS_LOG_TYPE_ERROR, "PlayActivityFeedEventConsumer %p: _updatePafEvent:withItemBeginEvent:containerBeginPayload:cursor:forEventType: - could not find queueSectionIdentifier/itemIdentifier event=%{public}@ - cursor:%{public}@", buf, 0x20u);
  }

  v43 = v42;
LABEL_93:
}

- (void)_updatePAFEvent:(id)a3 withQueueAddEvent:(id)a4 queueSectionIdentifier:(id)a5 cursor:(id)a6
{
  v38[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v35 = a5;
  v12 = a6;
  v13 = [v11 payload];
  v14 = [v13 objectForKeyedSubscript:@"queue-reporting-metadata"];

  v15 = [v14 objectForKeyedSubscript:@"feature-name"];
  [v10 setFeatureName:v15];

  v16 = [v14 objectForKeyedSubscript:@"queue-grouping-id"];
  [v10 setQueueGroupingID:v16];

  v17 = [v14 objectForKeyedSubscript:@"reco-data"];
  [v10 setRecommendationData:v17];

  v18 = MEMORY[0x1E696AD98];
  v19 = [v14 objectForKeyedSubscript:@"siri-ref-id"];
  v20 = [v18 numberWithBool:v19 != 0];
  [v10 setSiriInitiated:v20];

  v21 = [v14 objectForKeyedSubscript:@"application-bundle-id"];
  v33 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  v34 = MRMediaRemoteCopyLocalDeviceSystemClassicalRoomApplicationDisplayID();
  v38[0] = v33;
  v38[1] = v34;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  LOBYTE(v19) = [v22 containsObject:v21];

  v23 = self;
  objc_sync_enter(v23);
  if ((v19 & 1) != 0 || [(NSArray *)v23->_allowedBundleIds containsObject:v21])
  {
    [v10 setRequestingBundleIdentifier:v21];
    v24 = [v14 objectForKeyedSubscript:@"application-version"];
    [v10 setRequestingBundleVersion:v24];
  }

  objc_sync_exit(v23);

  v25 = [v11 payload];
  v26 = [v25 objectForKeyedSubscript:@"account-id"];

  v36 = @"rectification-section-id";
  v37 = v35;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v28 = [v12 findPreviousEventWithType:@"account-rectification" matchingPayload:v27];

  if (v28)
  {
    v29 = [v28 payload];
    v30 = [v29 objectForKeyedSubscript:@"account-id"];

    v26 = v30;
  }

  [(MPCPlayActivityFeedEventConsumer *)v23 _updatePAFEvent:v10 withAccountIdentifier:v26 cursor:v12];
  v31 = [v11 payload];
  v32 = [v31 objectForKeyedSubscript:@"queue-delegated-account-id"];

  if (v32)
  {
    [(MPCPlayActivityFeedEventConsumer *)v23 _updatePAFEvent:v10 withEnqueuerAccountIdentifier:v32 queueAddEvent:v11 cursor:v12];
  }
}

- (void)_sendPlayEndNotificationWithStartTime:(double)a3 endTime:(double)a4 pafEvent:(id)a5 cursor:(id)a6
{
  v40[2] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = [v11 findPreviousEventWithType:@"session-begin" matchingPayload:0];
  v14 = [v13 payload];
  v15 = [v14 objectForKeyedSubscript:@"behavior-type"];
  v16 = [v15 integerValue];

  v40[0] = @"shared-session-begin";
  v40[1] = @"shared-session-end";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v18 = [v11 findPreviousEventWithTypes:v17 matchingPayload:0];

  if (v18)
  {
    v19 = [v18 type];
    if ([v19 isEqualToString:@"shared-session-begin"])
    {
      [v18 payload];
      v20 = v39 = v10;
      [v20 objectForKeyedSubscript:@"shared-session-type"];
      v21 = v11;
      v22 = v13;
      v24 = v23 = self;
      v25 = [v24 integerValue] == 2;

      self = v23;
      v13 = v22;
      v11 = v21;

      v10 = v39;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = 0x1E696A000;
  if (v16 == 3 || v25)
  {
    v27 = [v11 findPreviousEventWithType:@"shared-session-participants-changed" matchingPayload:0];
    [v27 payload];
    v29 = v28 = v10;
    v30 = [v29 objectForKeyedSubscript:@"participants"];

    v31 = [v27 payload];
    [v31 objectForKeyedSubscript:@"shared-session-id"];
    v32 = v13;
    v34 = v33 = self;

    v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v30, "count")}];
    [v12 setObject:v35 forKeyedSubscript:@"MPCPlayActivityUtilitiesPlayEndEventSharedSessionParticipantCountKey"];

    v10 = v28;
    [v12 setObject:v34 forKeyedSubscript:@"MPCPlayActivityUtilitiesPlayEndEventSharedSessionIdKey"];

    self = v33;
    v13 = v32;
    v26 = 0x1E696A000uLL;
  }

  if ([v10 endReasonType] == 11)
  {
    [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"MPCPlayActivityUtilitiesPlayEndEventIsNaturalTransitionKey"];
  }

  v36 = [*(v26 + 3480) numberWithDouble:a3];
  [v12 setObject:v36 forKeyedSubscript:@"MPCPlayActivityUtilitiesPlayEndEventStartTimeKey"];

  v37 = [*(v26 + 3480) numberWithDouble:a4];
  [v12 setObject:v37 forKeyedSubscript:@"MPCPlayActivityUtilitiesPlayEndEventEndTimeKey"];

  v38 = [MEMORY[0x1E696AD88] defaultCenter];
  [v38 postNotificationName:@"MPCPlayActivityUtilitiesPlayEndNotification" object:self userInfo:v12];
}

- (double)_getPlaybackDurationForHLSStreamFromStartEvent:(id)a3 toEndEvent:(id)a4 withLimitedCursor:(id)a5
{
  v26[3] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v8 timeIntervalSinceEvent:v7];
  v11 = v10;
  v12 = [v9 findPreviousEventWithType:@"item-buffer-stall" matchingPayload:0];
  if (v12)
  {
    v13 = [v9 cursorUntilEvent:v12];
    v14 = [v13 countOfPreviousEventsWithType:@"item-buffer-ready" matchingPayload:0];
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v15 = 0;
    if (!v14)
    {
      [v8 timeIntervalSinceEvent:{v12, 0.0}];
    }

    v25 = v15;
    v26[0] = @"item-pause";
    v26[1] = @"item-end";
    v26[2] = @"item-buffer-ready";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __112__MPCPlayActivityFeedEventConsumer__getPlaybackDurationForHLSStreamFromStartEvent_toEndEvent_withLimitedCursor___block_invoke;
    v18[3] = &unk_1E8231F38;
    v19 = v9;
    v20 = v7;
    v21 = &v22;
    [v19 enumeratePreviousEventsWithTypes:v16 usingBlock:v18];

    if (v11 - v23[3] >= 0.0)
    {
      v11 = v11 - v23[3];
    }

    else
    {
      v11 = 0.0;
    }

    _Block_object_dispose(&v22, 8);
  }

  return v11;
}

void __112__MPCPlayActivityFeedEventConsumer__getPlaybackDurationForHLSStreamFromStartEvent_toEndEvent_withLimitedCursor___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = [*(a1 + 32) cursorFromEvent:? untilEvent:?];
  v6 = [v5 findPreviousEventWithType:@"item-buffer-stall" matchingPayload:0];
  if (v6)
  {
    v7 = [v5 cursorFromEvent:v6 untilEvent:*(a1 + 40)];
    v8 = [v7 findPreviousEventWithType:@"item-buffer-stall" matchingPayload:0];
    if (v8)
    {
      [v10 timeIntervalSinceEvent:v8];
      if (v9 < 0.0)
      {
        v9 = 0.0;
      }

      *(*(*(a1 + 48) + 8) + 24) = v9 + *(*(*(a1 + 48) + 8) + 24);
    }

    else
    {
      *a3 = 1;
    }
  }

  else
  {
    *a3 = 1;
  }
}

- (double)_getStartTimeForMostRecentPlaybackStart:(id)a3 withItemBeginEvent:(id)a4 containerBeginEvent:(id)a5 cursor:(id)a6
{
  v106 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v9 payload];
  v13 = [v12 objectForKeyedSubscript:@"queue-section-id"];

  v14 = [v9 payload];
  v15 = [v14 objectForKeyedSubscript:@"queue-item-id"];

  if (v13 && v15)
  {
    v85 = v15;
    v16 = [(MPCPlayActivityFeedEventConsumer *)self _queueSectionIsAODFromSectionIdentifier:v13 cursor:v11];
    v17 = [v11 cursorUntilEvent:v10];
    if (v16)
    {
      v99[0] = @"item-hls-stream-begin";
      v99[1] = @"item-hls-stream-end";
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:2];
      v97 = @"queue-section-id";
      v98 = v13;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
      v20 = [v11 findPreviousEventWithTypes:v18 matchingPayload:v19];

      v21 = [v11 cursorUntilEvent:v20];
      v22 = [v21 countOfPreviousEventsWithType:@"item-resume" matchingPayload:0];
      v82 = v21;
      v23 = [v21 countOfPreviousEventsWithType:@"item-timed-metadata-ping" matchingPayload:0];
      v24 = v23;
      if (v22)
      {
        if (v22 != 1)
        {
          goto LABEL_28;
        }

        v25 = [v9 type];
        if ([v25 isEqualToString:@"item-resume"])
        {

          goto LABEL_28;
        }

        if (v24 < 2)
        {
          v81 = v20;
          v55 = [v82 findPreviousEventWithType:@"item-resume" matchingPayload:0];
LABEL_49:
          if (!v55)
          {
            v26 = 0.0;
            goto LABEL_42;
          }

          v58 = [v55 payload];
          v77 = [v58 objectForKeyedSubscript:@"item-start-position"];
          [v77 doubleValue];
          v26 = v78;

LABEL_41:
LABEL_42:
          v20 = v81;
LABEL_43:

          goto LABEL_44;
        }
      }

      else if (v23 < 2)
      {
        v26 = 0.0;
        if (v23)
        {
          goto LABEL_43;
        }

        v75 = [v9 type];
        v76 = [v75 isEqualToString:@"item-resume"];

        if (!v76)
        {
          goto LABEL_43;
        }

        v81 = v20;
        v55 = v9;
        goto LABEL_49;
      }

LABEL_28:
      v81 = v20;
      v56 = [v9 type];
      v57 = [v56 isEqualToString:@"item-resume"];

      if (v57)
      {
        v55 = [v9 payload];
        v58 = [v55 objectForKeyedSubscript:@"item-start-position"];
        [v58 doubleValue];
        v26 = v59;
        goto LABEL_41;
      }

      v96[0] = @"item-resume";
      v96[1] = @"item-begin";
      v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:2];
      v94 = @"queue-section-id";
      v95 = v13;
      v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
      v55 = [v11 findPreviousEventWithTypes:v60 matchingPayload:v61];

      v92[0] = @"queue-section-id";
      v92[1] = @"item-jump-user-initiated";
      v93[0] = v13;
      v93[1] = MEMORY[0x1E695E118];
      v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v93 forKeys:v92 count:2];
      v58 = [v17 findPreviousEventWithType:@"item-position-jump" matchingPayload:v62];

      if (v58 && (!v55 || [v58 compare:v55] == 1))
      {
        v63 = v58;

        v55 = v63;
      }

      v64 = [v55 type];
      v65 = [v64 isEqualToString:@"item-begin"];

      if (v65)
      {
        v66 = [v55 payload];
        v67 = [v66 objectForKeyedSubscript:@"item-metadata"];
        v68 = [v67 objectForKeyedSubscript:@"item-initial-position"];
      }

      else
      {
        v69 = [v55 type];
        v70 = [v69 isEqualToString:@"item-resume"];

        if (!v70)
        {
          v73 = [v55 type];
          v74 = [v73 isEqualToString:@"item-position-jump"];

          if (!v74)
          {
            v68 = 0;
            goto LABEL_40;
          }

          v66 = [v55 payload];
          v68 = [v66 objectForKeyedSubscript:@"item-end-position"];
LABEL_39:

LABEL_40:
          [v68 doubleValue];
          v26 = v71;

          goto LABEL_41;
        }

        v66 = [v55 payload];
        v68 = [v66 objectForKeyedSubscript:@"item-start-position"];
      }

      v15 = v85;
      goto LABEL_39;
    }

    v27 = [v9 type];
    v28 = [v27 isEqualToString:@"item-resume"];

    if (v28)
    {
      v84 = v10;
      v29 = [v11 cursorFromEvent:v9 untilEvent:v10];
      v90[0] = @"queue-section-id";
      v90[1] = @"queue-item-id";
      v91[0] = v13;
      v91[1] = v85;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v91 forKeys:v90 count:2];
      v83 = v29;
      v79 = [v29 countOfPreviousEventsWithType:@"item-resume" matchingPayload:v30];

      v89[0] = MEMORY[0x1E695E118];
      v88[0] = @"item-jump-user-initiated";
      v88[1] = @"queue-section-id";
      v31 = [v9 payload];
      [v31 objectForKeyedSubscript:@"queue-section-id"];
      v33 = v32 = v17;
      v89[1] = v33;
      v88[2] = @"queue-item-id";
      v34 = [v9 payload];
      v35 = [v34 objectForKeyedSubscript:@"queue-item-id"];
      v89[2] = v35;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:3];
      v80 = v32;
      v37 = [v32 findPreviousEventWithType:@"item-position-jump" matchingPayload:v36];

      if (v79 || !v37)
      {
        v10 = v84;
        if (v79 || ![(MPCPlayActivityFeedEventConsumer *)self _itemBeginOccuredDuringOverlappingTransition:v84 cursor:v11])
        {
          v38 = [v9 payload];
          v53 = [v38 objectForKeyedSubscript:@"item-start-position"];
          [v53 doubleValue];
          v26 = v54;
        }

        else
        {
          v86[0] = @"incoming-item-section-id";
          v86[1] = @"incoming-item-id";
          v87[0] = v13;
          v87[1] = v85;
          v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:v86 count:2];
          v38 = [v11 findPreviousEventWithType:@"item-transition-created" matchingPayload:v48];

          [(MPCPlayActivityFeedEventConsumer *)self _incomingStartTimeForTransitionEvent:v38 useSourceTime:1];
          v26 = v49;
        }
      }

      else
      {
        v38 = [v37 payload];
        v39 = [v38 objectForKeyedSubscript:@"item-end-position"];
        [v39 doubleValue];
        v26 = v40;

        v10 = v84;
      }

      v17 = v80;
    }

    else
    {
      v41 = v10;
      v42 = [v9 type];
      v43 = [v42 isEqualToString:@"item-begin"];

      if (v43)
      {
        v44 = [v41 payload];
        v45 = [v44 objectForKeyedSubscript:@"item-metadata"];
        v46 = [v45 objectForKeyedSubscript:@"item-initial-position"];
        [v46 doubleValue];
        v26 = v47;

        v10 = v41;
      }

      else
      {
        v50 = [v9 payload];
        v51 = [v50 objectForKeyedSubscript:@"item-end-position"];
        [v51 doubleValue];
        v26 = v52;

        v10 = v41;
      }
    }

    v15 = v85;
  }

  else
  {
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
    v26 = -1.0;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v101 = self;
      v102 = 2114;
      v103 = v9;
      v104 = 2114;
      v105 = v11;
      _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_ERROR, "PlayActivityFeedEventConsumer %p: _getStartTimeForMostRecentPlaybackStart:withItemBeginEvent:cursor: - could not find queueSectionIdentifier/itemIdentifier event=%{public}@ - cursor:%{public}@", buf, 0x20u);
    }
  }

LABEL_44:

  return v26;
}

- (double)_wallClockPlayDurationForEndEvent:(id)a3 endReasonType:(int64_t)a4 itemBeginEvent:(id)a5 cursor:(id)a6
{
  v97[3] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v72 = a5;
  v11 = a6;
  v12 = [v10 payload];
  v13 = [v12 objectForKeyedSubscript:@"queue-section-id"];

  v14 = [v10 payload];
  v15 = [v14 objectForKeyedSubscript:@"queue-item-id"];

  v16 = 0.0;
  if (v13 && v15)
  {
    v68 = a4;
    v17 = [v11 cursorFromEvent:v10 untilEvent:0];
    v18 = [(MPCPlayActivityFeedEventConsumer *)self _queueSectionIsAODFromSectionIdentifier:v13 cursor:v11];
    v97[0] = @"item-begin";
    v97[1] = @"item-resume";
    v97[2] = @"item-position-jump";
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:3];
    v95[0] = @"queue-section-id";
    v95[1] = @"queue-item-id";
    v96[0] = v13;
    v96[1] = v15;
    v71 = v15;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:2];
    v69 = v17;
    v70 = self;
    v21 = [(MPCPlayActivityFeedEventConsumer *)self _findRecentPlaybackStartFromTypes:v19 matchingPayload:v20 cursor:v17];

    if (v18)
    {
      v22 = v21;
      v94[0] = @"item-hls-stream-begin";
      v94[1] = @"item-hls-stream-end";
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:2];
      v92 = @"queue-section-id";
      v93 = v13;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
      v25 = [v11 findPreviousEventWithTypes:v23 matchingPayload:v24];

      v26 = [v11 cursorUntilEvent:v25];
      if ([v26 countOfPreviousEventsWithType:@"item-resume" matchingPayload:0] <= 1)
      {
        v27 = [v22 type];
        if ([v27 isEqualToString:@"item-resume"])
        {
        }

        else
        {
          v28 = [v26 countOfPreviousEventsWithType:@"item-timed-metadata-ping" matchingPayload:0];

          if (v28 < 2)
          {
            v91[0] = @"item-resume";
            v91[1] = @"item-position-jump";
            v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
            v89 = @"queue-section-id";
            v90 = v13;
            v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
            v31 = v69;
            v32 = [(MPCPlayActivityFeedEventConsumer *)v70 _findRecentPlaybackStartFromTypes:v29 matchingPayload:v30 cursor:v69];

            [v10 timeIntervalSinceEvent:v32];
            v16 = v33;

            v34 = v32;
            v15 = v71;
            goto LABEL_35;
          }
        }
      }

      v21 = v22;
    }

    [v10 timeIntervalSinceEvent:v21];
    v16 = v35;
    v36 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
    v37 = v70;
    v34 = v21;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v38 = [v10 monotonicDate];
      v39 = [v34 monotonicDate];
      *buf = 134218754;
      v82 = v70;
      v83 = 2114;
      v84 = v38;
      v85 = 2114;
      v86 = *&v39;
      v87 = 2048;
      v88 = v16;
      _os_log_impl(&dword_1C5C61000, v36, OS_LOG_TYPE_INFO, "PlayActivityFeedEventConsumer %p: Adding wall clock duration from end event %{public}@ - start event %{public}@ = %.3fs", buf, 0x2Au);
    }

    v40 = [v34 type];
    v41 = [v40 isEqualToString:@"item-resume"];

    if (v41)
    {
      v42 = [v11 cursorFromEvent:v34 untilEvent:v72];
      v79[0] = @"queue-section-id";
      v79[1] = @"queue-item-id";
      v80[0] = v13;
      v80[1] = v71;
      v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:2];
      v44 = [v42 countOfPreviousEventsWithType:@"item-resume" matchingPayload:v43];

      if (v44)
      {
        v31 = v69;
      }

      else
      {
        v31 = v69;
        if ([(MPCPlayActivityFeedEventConsumer *)v70 _itemBeginOccuredDuringOverlappingTransition:v72 cursor:v11])
        {
          v77[0] = @"incoming-item-section-id";
          v77[1] = @"incoming-item-id";
          v78[0] = v13;
          v78[1] = v71;
          v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:2];
          v53 = [v11 findPreviousEventWithType:@"item-transition-created" matchingPayload:v52];

          if (v53)
          {
            [(MPCPlayActivityFeedEventConsumer *)v70 _incomingDurationBeforePivotForTransition:v53 useSourceTime:1];
            v55 = v54;
            v56 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
            if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
            {
              v57 = [v53 payload];
              v58 = [v57 objectForKeyedSubscript:@"transition-parameters"];
              *buf = 134218498;
              v82 = v70;
              v83 = 2114;
              v84 = v58;
              v85 = 2048;
              v86 = v55;
              _os_log_impl(&dword_1C5C61000, v56, OS_LOG_TYPE_INFO, "PlayActivityFeedEventConsumer %p: Adding wall clock duration from incoming pivot %{public}@ = %.3fs", buf, 0x20u);

              v31 = v69;
              v37 = v70;
            }

            v16 = v16 + v55;
          }
        }
      }

      v15 = v71;
    }

    else
    {
      v42 = [v34 type];
      v31 = v69;
      v15 = v71;
      if ([v42 isEqualToString:@"item-begin"])
      {
        v45 = [(MPCPlayActivityFeedEventConsumer *)v70 _itemBeginOccuredDuringOverlappingTransition:v72 cursor:v11];

        if (!v45)
        {
LABEL_29:
          v25 = [v10 type];
          if ([v25 isEqualToString:@"item-end"] && -[MPCPlayActivityFeedEventConsumer _itemEndOccuredDuringOverlappingTransition:cursor:](v37, "_itemEndOccuredDuringOverlappingTransition:cursor:", v10, v11))
          {

            if (v68 != 11)
            {
LABEL_36:

              goto LABEL_37;
            }

            v73[0] = @"outgoing-item-section-id";
            v73[1] = @"outgoing-item-id";
            v74[0] = v13;
            v74[1] = v15;
            v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:2];
            v25 = [v11 findPreviousEventWithType:@"item-transition-created" matchingPayload:v59];

            [(MPCPlayActivityFeedEventConsumer *)v37 _outgoingDurationAfterPivotForTransition:v25 useSourceTime:1];
            v61 = v60;
            v62 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
            if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
            {
              v63 = [v25 payload];
              v64 = [v63 objectForKeyedSubscript:@"transition-parameters"];
              v65 = v37;
              v66 = v64;
              *buf = 134218498;
              v82 = v65;
              v83 = 2114;
              v84 = v64;
              v85 = 2048;
              v86 = v61;
              _os_log_impl(&dword_1C5C61000, v62, OS_LOG_TYPE_INFO, "PlayActivityFeedEventConsumer %p: Adding wall clock duration from outgoing pivot %{public}@ = %.3fs", buf, 0x20u);

              v15 = v71;
            }

            v16 = v16 + v61;
          }

LABEL_35:

          goto LABEL_36;
        }

        v75[0] = @"incoming-item-section-id";
        v75[1] = @"incoming-item-id";
        v76[0] = v13;
        v76[1] = v71;
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:2];
        v42 = [v11 findPreviousEventWithType:@"item-transition-created" matchingPayload:v46];

        if (v42)
        {
          [(MPCPlayActivityFeedEventConsumer *)v70 _incomingDurationBeforePivotForTransition:v42 useSourceTime:1];
          v48 = v47;
          v49 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            v50 = [v42 payload];
            v51 = [v50 objectForKeyedSubscript:@"transition-parameters"];
            *buf = 134218498;
            v82 = v70;
            v83 = 2114;
            v84 = v51;
            v85 = 2048;
            v86 = v48;
            _os_log_impl(&dword_1C5C61000, v49, OS_LOG_TYPE_INFO, "PlayActivityFeedEventConsumer %p: Adding wall clock duration from incoming pivot %{public}@ = %.3fs", buf, 0x20u);

            v37 = v70;
            v15 = v71;
          }

          v16 = v16 + v48;
        }
      }
    }

    goto LABEL_29;
  }

LABEL_37:

  return v16;
}

- (double)_outgoingDurationAfterPivotForTransition:(id)a3 useSourceTime:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(MPCPlayActivityFeedEventConsumer *)self _outgoingPivotTimeForTransitionEvent:v6 useSourceTime:v4];
  v8 = v7;
  [(MPCPlayActivityFeedEventConsumer *)self _outgoingEndTimeForTransitionEvent:v6 useSourceTime:v4];
  v10 = v9;

  result = 0.0;
  if (v10 >= 0.0 && v8 >= 0.0)
  {
    return v10 - v8;
  }

  return result;
}

- (double)_incomingDurationBeforePivotForTransition:(id)a3 useSourceTime:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(MPCPlayActivityFeedEventConsumer *)self _incomingStartTimeForTransitionEvent:v6 useSourceTime:v4];
  v8 = v7;
  [(MPCPlayActivityFeedEventConsumer *)self _incomingPivotTimeForTransitionEvent:v6 useSourceTime:v4];
  v10 = v9;

  result = 0.0;
  if (v10 >= 0.0 && v8 >= 0.0)
  {
    return v10 - v8;
  }

  return result;
}

- (double)_outgoingEndTimeForTransitionEvent:(id)a3 useSourceTime:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(MPCPlayActivityFeedEventConsumer *)self _fetchField:@"transitionEndSourceTime" fromTransitionEvent:v6 inParametersDictionary:@"outgoing"];
  v8 = [(MPCPlayActivityFeedEventConsumer *)self _fetchField:@"transitionEndTargetTime" fromTransitionEvent:v6 inParametersDictionary:@"outgoing"];
  v9 = [(MPCPlayActivityFeedEventConsumer *)self _fetchField:@"endTime" fromTransitionEvent:v6 inParametersDictionary:@"outgoing"];
  v10 = v9;
  if (v4 && v7)
  {
    v9 = v7;
LABEL_8:
    [v9 doubleValue];
    v12 = v11;
    goto LABEL_9;
  }

  if (!v4 && v8)
  {
    v9 = v8;
    goto LABEL_8;
  }

  if (v9)
  {
    goto LABEL_8;
  }

  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = 134218242;
    v16 = self;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_ERROR, "PlayActivityFeedEventConsumer %p: _outgoingEndTimeForTransitionEvent: - could not find Outgoing Item end time in ItemTransitionParameters event=%{public}@", &v15, 0x16u);
  }

  v12 = -1.0;
LABEL_9:

  return v12;
}

- (double)_outgoingPivotTimeForTransitionEvent:(id)a3 useSourceTime:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(MPCPlayActivityFeedEventConsumer *)self _fetchField:@"pivotSourceTime" fromTransitionEvent:v6 inParametersDictionary:@"outgoing"];
  v8 = [(MPCPlayActivityFeedEventConsumer *)self _fetchField:@"pivotTargetTime" fromTransitionEvent:v6 inParametersDictionary:@"outgoing"];
  v9 = [(MPCPlayActivityFeedEventConsumer *)self _fetchField:@"startTime" fromTransitionEvent:v6 inParametersDictionary:@"outgoing"];
  v10 = v9;
  if (v4 && v7)
  {
    v9 = v7;
LABEL_8:
    [v9 doubleValue];
    v12 = v11;
    goto LABEL_9;
  }

  if (!v4 && v8)
  {
    v9 = v8;
    goto LABEL_8;
  }

  if (v9)
  {
    goto LABEL_8;
  }

  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = 134218242;
    v16 = self;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_ERROR, "PlayActivityFeedEventConsumer %p: _outgoingPivotTimeForTransitionEvent: - could not find Outgoing Item pivot time in ItemTransitionParameters event=%{public}@", &v15, 0x16u);
  }

  v12 = -1.0;
LABEL_9:

  return v12;
}

- (double)_incomingPivotTimeForTransitionEvent:(id)a3 useSourceTime:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(MPCPlayActivityFeedEventConsumer *)self _fetchField:@"pivotSourceTime" fromTransitionEvent:v6 inParametersDictionary:@"incoming"];
  v8 = [(MPCPlayActivityFeedEventConsumer *)self _fetchField:@"pivotTargetTime" fromTransitionEvent:v6 inParametersDictionary:@"incoming"];
  v9 = [(MPCPlayActivityFeedEventConsumer *)self _fetchField:@"startTime" fromTransitionEvent:v6 inParametersDictionary:@"incoming"];
  v10 = v9;
  if (v4 && v7)
  {
    v9 = v7;
LABEL_8:
    [v9 doubleValue];
    v12 = v11;
    goto LABEL_9;
  }

  if (!v4 && v8)
  {
    v9 = v8;
    goto LABEL_8;
  }

  if (v9)
  {
    goto LABEL_8;
  }

  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = 134218242;
    v16 = self;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_ERROR, "PlayActivityFeedEventConsumer %p: _incomingPivotTimeForTransitionEvent: - could not find Incoming Item pivot time in ItemTransitionParameters event=%{public}@", &v15, 0x16u);
  }

  v12 = -1.0;
LABEL_9:

  return v12;
}

- (double)_incomingStartTimeForTransitionEvent:(id)a3 useSourceTime:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(MPCPlayActivityFeedEventConsumer *)self _fetchField:@"transitionStartSourceTime" fromTransitionEvent:v6 inParametersDictionary:@"incoming"];
  v8 = [(MPCPlayActivityFeedEventConsumer *)self _fetchField:@"transitionStartTargetTime" fromTransitionEvent:v6 inParametersDictionary:@"incoming"];
  v9 = [(MPCPlayActivityFeedEventConsumer *)self _fetchField:@"startTime" fromTransitionEvent:v6 inParametersDictionary:@"incoming"];
  v10 = v9;
  if (v4 && v7)
  {
    v9 = v7;
LABEL_8:
    [v9 doubleValue];
    v12 = v11;
    goto LABEL_9;
  }

  if (!v4 && v8)
  {
    v9 = v8;
    goto LABEL_8;
  }

  if (v9)
  {
    goto LABEL_8;
  }

  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = 134218242;
    v16 = self;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_ERROR, "PlayActivityFeedEventConsumer %p: _incomingStartTimeForTransitionEvent: - could not find Incoming Item start time in ItemTransitionParameters event=%{public}@", &v15, 0x16u);
  }

  v12 = -1.0;
LABEL_9:

  return v12;
}

- (id)_fetchField:(id)a3 fromTransitionEvent:(id)a4 inParametersDictionary:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 payload];
  v12 = [v11 objectForKeyedSubscript:@"transition-parameters"];

  if (v12)
  {
    v13 = [v12 objectForKeyedSubscript:v10];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 objectForKeyedSubscript:v8];
      goto LABEL_10;
    }

    v16 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 134218498;
      v19 = self;
      v20 = 2114;
      v21 = v10;
      v22 = 2114;
      v23 = v9;
      _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_ERROR, "PlayActivityFeedEventConsumer %p: _fetchField:fromTransitionEvent:inParametersDictionary: - could not find Item parameters for key=%{public}@ in ItemTransitionParameters event=%{public}@", &v18, 0x20u);
    }

    v14 = 0;
  }

  else
  {
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = 134218242;
      v19 = self;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_ERROR, "PlayActivityFeedEventConsumer %p: _fetchField:fromTransitionEvent:inParametersDictionary: - could not find ItemTransitionParameters event=%{public}@", &v18, 0x16u);
    }
  }

  v15 = 0;
LABEL_10:

  return v15;
}

- (BOOL)_itemEndOccuredDuringOverlappingTransition:(id)a3 cursor:(id)a4
{
  v20[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"queue-section-id"];

  v9 = [v5 payload];
  v10 = [v9 objectForKeyedSubscript:@"queue-item-id"];

  v11 = 0;
  if (v8 && v10)
  {
    v12 = [v6 cursorFromEvent:v5 untilEvent:0];
    v20[0] = @"transition-will-start";
    v20[1] = @"transition-did-reach-pivot-point";
    v20[2] = @"transition-did-end";
    v20[3] = @"item-transition-cancelled";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
    v18[0] = @"outgoing-item-section-id";
    v18[1] = @"outgoing-item-id";
    v19[0] = v8;
    v19[1] = v10;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v15 = [v12 findPreviousEventWithTypes:v13 matchingPayload:v14];

    if (v15)
    {
      v16 = [v15 type];
      v11 = [v16 isEqualToString:@"transition-did-reach-pivot-point"];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)_itemBeginOccuredDuringOverlappingTransition:(id)a3 cursor:(id)a4
{
  v20[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"queue-section-id"];

  v9 = [v5 payload];
  v10 = [v9 objectForKeyedSubscript:@"queue-item-id"];

  v11 = 0;
  if (v8 && v10)
  {
    v12 = [v6 cursorFromEvent:v5 untilEvent:0];
    v20[0] = @"transition-will-start";
    v20[1] = @"transition-did-reach-pivot-point";
    v20[2] = @"transition-did-end";
    v20[3] = @"item-transition-cancelled";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
    v18[0] = @"incoming-item-section-id";
    v18[1] = @"incoming-item-id";
    v19[0] = v8;
    v19[1] = v10;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v15 = [v12 findPreviousEventWithTypes:v13 matchingPayload:v14];

    if (v15)
    {
      v16 = [v15 type];
      v11 = [v16 isEqualToString:@"transition-did-reach-pivot-point"];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)_findRecentPlaybackStartFromTypes:(id)a3 matchingPayload:(id)a4 cursor:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2135;
  v20 = __Block_byref_object_dispose__2136;
  v21 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__MPCPlayActivityFeedEventConsumer__findRecentPlaybackStartFromTypes_matchingPayload_cursor___block_invoke;
  v13[3] = &unk_1E8231A28;
  v10 = v9;
  v14 = v10;
  v15 = &v16;
  [v10 enumeratePreviousEventsWithTypes:v7 matchingPayload:v8 usingBlock:v13];
  v11 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v11;
}

void __93__MPCPlayActivityFeedEventConsumer__findRecentPlaybackStartFromTypes_matchingPayload_cursor___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [v6 type];
  v8 = [v7 isEqualToString:@"item-position-jump"];

  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = [*(a1 + 32) cursorFromEvent:v6 untilEvent:0];
  v16[0] = @"remote-control-begin";
  v16[1] = @"remote-control-end";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v11 = [v9 findPreviousEventWithTypes:v10 matchingPayload:0];

  if (v11)
  {
    v12 = [v11 type];
    if ([v12 isEqualToString:@"remote-control-end"])
    {

      goto LABEL_5;
    }

    v13 = [v6 payload];
    v14 = [v13 objectForKeyedSubscript:@"item-jump-user-initiated"];
    v15 = [v14 BOOLValue];

    if (!v15)
    {
      goto LABEL_8;
    }

LABEL_7:
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
    goto LABEL_8;
  }

LABEL_5:

LABEL_8:
}

- (id)_generateAggregateNoncatalogEndEventForCursor:(id)a3
{
  v82[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v82[0] = @"item-begin";
  v82[1] = @"item-pause";
  v82[2] = @"item-end";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:3];
  v6 = [v4 findPreviousEventWithTypes:v5 matchingPayload:0];

  v7 = [v6 type];
  v8 = [v7 isEqualToString:@"item-begin"];

  if (!v8)
  {
    v28 = 0;
    goto LABEL_30;
  }

  v9 = v6;
  v53 = [v4 cursorUntilEvent:v9];
  v10 = [v9 payload];
  v11 = [v10 objectForKeyedSubscript:@"queue-item-id"];
  v12 = v11 == 0;

  if (v12)
  {
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v4;
      _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_ERROR, "PlayActivityFeedEventConsumer %p: _generateAggregateNoncatalogEndEventForCursor: - could not find queueItemIdentifier - cursor:%{public}@", buf, 0x16u);
    }
  }

  else
  {
    v13 = MEMORY[0x1E695E118];
    v80[1] = @"queue-item-id";
    v81[0] = MEMORY[0x1E695E118];
    v80[0] = @"item-jump-user-initiated";
    v14 = [v9 payload];
    v15 = [v14 objectForKeyedSubscript:@"queue-item-id"];
    v81[1] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:2];
    v17 = [v53 findPreviousEventWithType:@"item-position-jump" matchingPayload:v16];

    if (!v17)
    {
      v52 = [v4 cursorFromEvent:v9 untilEvent:0];
      v77 = v13;
      v78 = @"item-metadata";
      v76 = @"requires-mpaf";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
      v79 = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
      v51 = [v52 findPreviousEventWithType:@"item-begin" matchingPayload:v19];

      if (v51)
      {
        v20 = [v51 payload];
        v21 = [v20 objectForKeyedSubscript:@"queue-item-id"];
        v22 = v21 == 0;

        if (v22)
        {
          v43 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218242;
            *&buf[4] = self;
            *&buf[12] = 2114;
            *&buf[14] = v4;
            _os_log_impl(&dword_1C5C61000, v43, OS_LOG_TYPE_ERROR, "PlayActivityFeedEventConsumer %p: _generateAggregateNoncatalogEndEventForCursor: - could not find queueItemIdentifier - cursor:%{public}@", buf, 0x16u);
          }

          v27 = 0;
          goto LABEL_21;
        }

        v74 = @"queue-item-id";
        v23 = [v51 payload];
        v24 = [v23 objectForKeyedSubscript:@"queue-item-id"];
        v75 = v24;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
        v26 = [v52 findPreviousEventWithType:@"item-end" matchingPayload:v25];

        v27 = [v52 cursorUntilEvent:v26];
      }

      else
      {
        v27 = v52;
      }

      v72 = @"item-metadata";
      v70 = @"requires-mpaf";
      v71 = MEMORY[0x1E695E110];
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      v73 = v29;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
      v31 = [v27 countOfPreviousEventsWithType:@"item-begin" matchingPayload:v30] == 0;

      if (v31)
      {
        v28 = 0;
LABEL_28:

        v17 = 0;
        goto LABEL_29;
      }

      v50 = [v27 findPreviousEventWithType:@"item-resume" matchingPayload:0];
      if (v50)
      {
        v32 = objc_alloc_init(MEMORY[0x1E69E44F8]);
        [v32 setEventType:0];
        v33 = [MEMORY[0x1E695DF00] date];
        [v32 setEventDate:v33];

        [v32 setItemType:7];
        [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v32 withDeviceInfoFromCursor:v52];
        v34 = [v50 payload];
        v35 = [v34 objectForKeyedSubscript:@"queue-section-id"];

        v68 = @"queue-section-id";
        v69 = v35;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        v49 = [v52 findPreviousEventWithType:@"queue-add" matchingPayload:v36];

        v37 = [v49 payload];
        v38 = [v37 objectForKeyedSubscript:@"account-id"];

        v66 = @"rectification-section-id";
        v67 = v35;
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v48 = [v52 findPreviousEventWithType:@"account-rectification" matchingPayload:v39];

        if (v48)
        {
          v40 = [v48 payload];
          v41 = [v40 objectForKeyedSubscript:@"account-id"];

          v42 = v41;
        }

        else
        {
          v42 = v38;
        }

        [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v32 withAccountIdentifier:v42 cursor:?];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v65 = 0;
        v59 = 0;
        v60 = &v59;
        v61 = 0x2020000000;
        v62 = 0;
        v63[0] = @"item-position-jump";
        v63[1] = @"item-pause";
        v63[2] = @"item-end";
        v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:3];
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __82__MPCPlayActivityFeedEventConsumer__generateAggregateNoncatalogEndEventForCursor___block_invoke;
        v54[3] = &unk_1E8231A00;
        v54[4] = self;
        v55 = v4;
        v27 = v27;
        v56 = v27;
        v57 = &v59;
        v58 = buf;
        [v27 enumeratePreviousEventsWithTypes:v44 usingBlock:v54];

        if (*(*&buf[8] + 24) <= 0.0)
        {
          v43 = v50;
          v28 = 0;
        }

        else
        {
          [v32 setItemDuration:v60[3]];
          [v32 setItemEndTime:*(*&buf[8] + 24)];
          [v32 setHouseholdID:0];
          [v32 setRepeatPlayMode:0];
          [v32 setShufflePlayMode:0];
          [v32 setAutoPlayMode:0];
          v45 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"UTC"];
          [v32 setEventTimeZone:v45];

          [v32 setPrivateListeningEnabled:0];
          [v32 setUserTransitionTypePreference:0];
          v28 = v32;
          v43 = v50;
        }

        _Block_object_dispose(&v59, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_27;
      }

      v43 = 0;
LABEL_21:
      v28 = 0;
LABEL_27:

      goto LABEL_28;
    }
  }

  v28 = 0;
LABEL_29:

LABEL_30:

  return v28;
}

void __82__MPCPlayActivityFeedEventConsumer__generateAggregateNoncatalogEndEventForCursor___block_invoke(uint64_t a1, void *a2)
{
  v82 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"queue-section-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"queue-item-id"];

  v61 = v5;
  if (v5 && v7)
  {
    v8 = [*(a1 + 48) cursorFromEvent:v3 untilEvent:0];
    v9 = [v3 type];
    v10 = [v9 isEqualToString:@"item-position-jump"];

    if (!v10)
    {
      goto LABEL_10;
    }

    v75[0] = @"remote-control-begin";
    v75[1] = @"remote-control-end";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:2];
    v12 = [v8 findPreviousEventWithTypes:v11 matchingPayload:0];

    if (v12)
    {
      v13 = [v12 type];
      if ([v13 isEqualToString:@"remote-control-end"])
      {

        goto LABEL_30;
      }

      v16 = [v3 payload];
      v17 = [v16 objectForKeyedSubscript:@"item-jump-user-initiated"];
      v18 = [v17 BOOLValue];

      if (!v18)
      {
        goto LABEL_30;
      }

LABEL_10:
      v73[0] = @"queue-section-id";
      v73[1] = @"queue-item-id";
      v74[0] = v5;
      v74[1] = v7;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:2];
      v20 = [v8 findPreviousEventWithType:@"item-begin" matchingPayload:v19];

      v21 = [v20 payload];
      v22 = [v21 objectForKeyedSubscript:@"item-metadata"];
      v23 = [v22 objectForKeyedSubscript:@"item-duration"];
      [v23 doubleValue];
      v25 = v24;

      v60 = v20;
      v26 = [*(a1 + 40) cursorFromEvent:v3 untilEvent:v20];
      v71[0] = @"queue-section-id";
      v71[1] = @"queue-item-id";
      v72[0] = v5;
      v72[1] = v7;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:2];
      v28 = [v26 countOfPreviousEventsWithType:@"item-resume" matchingPayload:v27];

      if (v28)
      {
        v29 = [v3 type];
        v30 = [v29 isEqualToString:@"item-end"];

        if (!v30)
        {
          goto LABEL_16;
        }

        *(*(*(a1 + 56) + 8) + 24) = v25 + *(*(*(a1 + 56) + 8) + 24);
        v69[0] = @"queue-section-id";
        v69[1] = @"queue-item-id";
        v70[0] = v5;
        v70[1] = v7;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:2];
        [v26 findPreviousEventWithType:@"item-pause" matchingPayload:v31];
        v33 = v32 = v26;

        if (v33)
        {
          v34 = v32;
          v35 = [v32 cursorUntilEvent:v33];
          v67[0] = @"queue-section-id";
          v67[1] = @"queue-item-id";
          v68[0] = v61;
          v68[1] = v7;
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:2];
          v37 = [v35 findPreviousEventWithType:@"item-resume" matchingPayload:v36];

          if (!v37)
          {
LABEL_28:

            v26 = v34;
            goto LABEL_29;
          }

          v26 = v34;
LABEL_16:
          v34 = v26;
          v40 = *(a1 + 32);
          v64[0] = @"item-begin";
          v64[1] = @"item-resume";
          v64[2] = @"item-position-jump";
          v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:3];
          v62[0] = @"queue-section-id";
          v62[1] = @"queue-item-id";
          v63[0] = v61;
          v63[1] = v7;
          v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2];
          v33 = [v40 _findRecentPlaybackStartFromTypes:v41 matchingPayload:v42 cursor:v8];

          if (v33)
          {
            [*(a1 + 32) _getStartTimeForMostRecentPlaybackStart:v33 withItemBeginEvent:v20 containerBeginEvent:0 cursor:v8];
            v44 = v43;
            v45 = [v3 type];
            v46 = [v45 isEqualToString:@"item-position-jump"];
            v47 = @"item-end-position";
            if (v46)
            {
              v47 = @"item-start-position";
            }

            v48 = v47;

            v49 = [v3 payload];
            v50 = [v49 objectForKeyedSubscript:v48];
            [v50 doubleValue];
            v52 = v51;

            if (v52 >= v25)
            {
              v52 = v25;
            }

            v53 = [v3 payload];
            v54 = [v53 objectForKeyedSubscript:@"item-did-play-to-end"];
            v55 = [v54 BOOLValue];

            if (v55)
            {
              v56 = v25;
            }

            else
            {
              v56 = v52;
            }

            v57 = v56 - v44;
            if (v57 >= 0.0)
            {
              v58 = v57;
            }

            else
            {
              v58 = 0.0;
            }

            v59 = *(a1 + 64);

            *(*(v59 + 8) + 24) = v58 + *(*(v59 + 8) + 24);
          }

          goto LABEL_28;
        }

        v65[0] = @"queue-section-id";
        v65[1] = @"queue-item-id";
        v66[0] = v5;
        v66[1] = v7;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
        v39 = [v32 findPreviousEventWithType:@"item-resume" matchingPayload:v38];

        v26 = v32;
        if (v39)
        {
          goto LABEL_16;
        }
      }

LABEL_29:
    }
  }

  else
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      *buf = 134218498;
      v77 = v14;
      v78 = 2114;
      v79 = v3;
      v80 = 2114;
      v81 = v15;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_ERROR, "PlayActivityFeedEventConsumer %p: _generateAggregateNoncatalogEndEventForCursor: - could not find queueSectionIdentifier/itemIdentifier event=%{public}@ - cursor:%{public}@", buf, 0x20u);
    }
  }

LABEL_30:
}

- (BOOL)_itemIsPlaceholderFromQueueSectionIdentifier:(id)a3 itemIdentifier:(id)a4 cursor:(id)a5
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(MPCPlayActivityFeedEventConsumer *)self _itemWithinHLSTimedMetadataBeginFromQueueSection:v8 itemIdentifier:v9 cursor:v10])
  {
    v15[0] = @"queue-section-id";
    v15[1] = @"queue-item-id";
    v16[0] = v8;
    v16[1] = v9;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v12 = [v10 findPreviousEventWithType:@"item-timed-metadata-ping" matchingPayload:v11];

    v13 = v12 == 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_itemWithinHLSTimedMetadataBeginFromQueueSection:(id)a3 itemIdentifier:(id)a4 cursor:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a5;
  v21 = @"queue-section-id";
  v22[0] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v9 = [v7 findPreviousEventWithType:@"item-hls-stream-begin" matchingPayload:v8];

  if (v9)
  {
    v20[0] = @"item-hls-timed-metadata-begin";
    v20[1] = @"item-hls-timed-metadata-end";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v18 = @"item-stream-id";
    v11 = [v9 payload];
    v12 = [v11 objectForKeyedSubscript:@"item-stream-id"];
    v19 = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v14 = [v7 findPreviousEventWithTypes:v10 matchingPayload:v13];

    v15 = [v14 type];
    v16 = [v15 isEqualToString:@"item-hls-timed-metadata-begin"];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)_itemIsPlayingFromQueueSectionIdentifier:(id)a3 itemIdentifier:(id)a4 cursor:(id)a5
{
  v30[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v29[0] = @"queue-section-id";
  v29[1] = @"queue-item-id";
  v30[0] = v8;
  v30[1] = v9;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v12 = [v10 findPreviousEventWithType:@"item-begin" matchingPayload:v11];

  if (v12)
  {
    v13 = [v10 cursorFromEvent:v12 untilEvent:0];
    if ([(MPCPlayActivityFeedEventConsumer *)self _itemWithinHLSTimedMetadataBeginFromQueueSection:v8 itemIdentifier:v9 cursor:v13])
    {
      v14 = v10;
      v27 = @"queue-section-id";
      v28 = v8;
      v15 = MEMORY[0x1E695DF20];
      v16 = &v28;
      v17 = &v27;
      v18 = 1;
    }

    else
    {
      v14 = [v10 cursorUntilEvent:v12];
      v25[0] = @"queue-section-id";
      v25[1] = @"queue-item-id";
      v26[0] = v8;
      v26[1] = v9;
      v15 = MEMORY[0x1E695DF20];
      v16 = v26;
      v17 = v25;
      v18 = 2;
    }

    v20 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v18];
    v21 = [v14 findPreviousEventWithType:@"item-pause" matchingPayload:v20];
    if (v21)
    {
      v22 = [v14 cursorUntilEvent:v21];
      v23 = [v22 findPreviousEventWithType:@"item-resume" matchingPayload:v20];
    }

    else
    {
      v23 = [v14 findPreviousEventWithType:@"item-resume" matchingPayload:v20];
    }

    v19 = v23 != 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)_handleApplicationTerminationEvent:(id)a3 cursor:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [v7 findPreviousEventWithType:@"item-begin" matchingPayload:0];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 payload];
    v12 = [v11 objectForKeyedSubscript:@"queue-section-id"];

    v13 = [v10 payload];
    v14 = [v13 objectForKeyedSubscript:@"queue-item-id"];

    if (v14 && v12)
    {
      v33[0] = @"queue-section-id";
      v33[1] = @"queue-item-id";
      v34[0] = v12;
      v34[1] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
      v16 = [v7 findPreviousEventWithType:@"item-resume" matchingPayload:v15];

      if (v16)
      {
        v17 = [(MPCPlayActivityFeedEventConsumer *)self _generatePlaybackEndEventFromEvent:v6 withQueueSectionIdentifier:v12 itemIdentifier:v14 cursor:v7];
        if ([v17 itemType] != 4 || (objc_msgSend(v17, "itemDuration"), v18 != 0.0))
        {
          v19 = [v6 date];
          [v16 date];
          v20 = v32 = v6;
          [v19 timeIntervalSinceDate:v20];
          v22 = v21;

          v23 = [v16 payload];
          v24 = [v23 objectForKeyedSubscript:@"item-start-position"];
          [v24 doubleValue];
          [v17 setItemEndTime:v22 + v25];

          v6 = v32;
        }

        if (v17)
        {
          [v17 itemStartTime];
          v27 = v26;
          [v17 itemEndTime];
          [(MPCPlayActivityFeedEventConsumer *)self _sendPlayEndNotificationWithStartTime:v17 endTime:v7 pafEvent:v27 cursor:v28];
          [v8 addObject:v17];
        }
      }

      v29 = [(MPCPlayActivityFeedEventConsumer *)self _generateAggregateNoncatalogEndEventForCursor:v7];
      if (v29)
      {
        [v8 addObject:v29];
      }

      if ([v8 count])
      {
        v30 = [(MPCPlayActivityFeedEventConsumer *)self _finalizePAFEvents:v8];
      }

      else
      {
        v30 = 1;
      }
    }

    else
    {
      v16 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        v36 = self;
        v37 = 2114;
        v38 = v6;
        v39 = 2114;
        v40 = v7;
        _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_ERROR, "PlayActivityFeedEventConsumer %p: _handleApplicationTerminationEvent:cursor: - could not find queueSectionIdentifier/itemIdentifier event=%{public}@ - cursor:%{public}@", buf, 0x20u);
      }

      v30 = 1;
    }
  }

  else
  {
    v30 = 1;
  }

  return v30;
}

- (id)_generatePlaybackEndEventFromEvent:(id)a3 withQueueSectionIdentifier:(id)a4 itemIdentifier:(id)a5 cursor:(id)a6
{
  v126[2] = *MEMORY[0x1E69E9840];
  v86 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v85 = v11;
  if (![(MPCPlayActivityFeedEventConsumer *)self _itemIsPlayingFromQueueSectionIdentifier:v10 itemIdentifier:v11 cursor:v12]|| [(MPCPlayActivityFeedEventConsumer *)self _itemIsPlaceholderFromQueueSectionIdentifier:v10 itemIdentifier:v11 cursor:v12])
  {
    v13 = 0;
    goto LABEL_32;
  }

  v125[0] = @"queue-section-id";
  v125[1] = @"queue-item-id";
  v126[0] = v10;
  v126[1] = v11;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v126 forKeys:v125 count:2];
  v84 = [v12 findPreviousEventWithType:@"item-begin" matchingPayload:v14];

  v15 = [v84 payload];
  v81 = [v15 objectForKeyedSubscript:@"item-metadata"];

  v16 = objc_alloc_init(MEMORY[0x1E69E44F8]);
  v17 = [v86 date];
  [v16 setEventDate:v17];

  [v16 setEventType:0];
  v123 = @"queue-section-id";
  v124 = v10;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
  v83 = [v12 findPreviousEventWithType:@"container-begin" matchingPayload:v18];

  v19 = [v83 payload];
  v20 = [v86 type];
  [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v16 withItemBeginEvent:v84 containerBeginPayload:v19 cursor:v12 forEventType:v20];

  v121 = @"queue-section-id";
  v122 = v10;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
  v80 = [v12 findPreviousEventWithType:@"queue-add" matchingPayload:v21];

  [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v16 withQueueAddEvent:v80 queueSectionIdentifier:v10 cursor:v12];
  [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v16 withDeviceInfoFromCursor:v12];
  v120[0] = @"item-begin";
  v120[1] = @"item-resume";
  v120[2] = @"item-position-jump";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:3];
  v118[0] = @"queue-section-id";
  v118[1] = @"queue-item-id";
  v119[0] = v10;
  v119[1] = v11;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v119 forKeys:v118 count:2];
  v82 = [(MPCPlayActivityFeedEventConsumer *)self _findRecentPlaybackStartFromTypes:v22 matchingPayload:v23 cursor:v12];

  [(MPCPlayActivityFeedEventConsumer *)self _getStartTimeForMostRecentPlaybackStart:v82 withItemBeginEvent:v84 containerBeginEvent:v83 cursor:v12];
  v25 = v24;
  if ([(MPCPlayActivityFeedEventConsumer *)self _itemEndOccuredDuringOverlappingTransition:v86 cursor:v12])
  {
    v116[0] = @"outgoing-item-section-id";
    v116[1] = @"outgoing-item-id";
    v117[0] = v10;
    v117[1] = v11;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v117 forKeys:v116 count:2];
    v27 = [v12 findPreviousEventWithType:@"item-transition-created" matchingPayload:v26];

    v28 = [v27 payload];
    v29 = [v28 objectForKeyedSubscript:@"transition-provided"];
    v30 = [v29 integerValue];

    if (v30 <= 5)
    {
      [v16 setTransitionTypeProvided:v30];
    }

    [(MPCPlayActivityFeedEventConsumer *)self _outgoingEndTimeForTransitionEvent:v27 useSourceTime:1];
    v32 = v31;
  }

  else
  {
    v27 = [v86 payload];
    v33 = [v27 objectForKeyedSubscript:@"item-end-position"];
    [v33 doubleValue];
    v32 = v34;
  }

  [v16 setItemStartTime:v25];
  [v16 setItemEndTime:v32];
  v35 = [v86 type];
  v36 = [v35 isEqualToString:@"application-termination"];

  if (v36)
  {
    [v16 setEndReasonType:15];
    goto LABEL_21;
  }

  if ([v16 itemType] == 5)
  {
    [v16 setEndReasonType:0];
    goto LABEL_21;
  }

  v37 = [v12 cursorUntilEvent:v82];
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  LOBYTE(v91) = 0;
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 0;
  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v102 = 0;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v98 = 0;
  v94[0] = MEMORY[0x1E69E9820];
  v94[1] = 3221225472;
  v94[2] = __120__MPCPlayActivityFeedEventConsumer__generatePlaybackEndEventFromEvent_withQueueSectionIdentifier_itemIdentifier_cursor___block_invoke;
  v94[3] = &unk_1E8231DF8;
  v94[4] = &v88;
  v94[5] = &v103;
  v94[6] = &v99;
  v94[7] = &v95;
  [v37 enumeratePreviousEventsWithType:@"remote-control-begin" usingBlock:v94];
  if (*(v89 + 24) == 1)
  {
    [v16 setEndReasonType:3];
    v38 = [v86 payload];
    v39 = [v38 objectForKeyedSubscript:@"item-end-position"];
    [v39 doubleValue];
  }

  else if (*(v104 + 24) == 1)
  {
    [v16 setEndReasonType:2];
    v38 = [v86 payload];
    v39 = [v38 objectForKeyedSubscript:@"item-end-position"];
    [v39 doubleValue];
  }

  else
  {
    if (*(v100 + 24) != 1)
    {
      v70 = [v86 payload];
      v71 = [v70 objectForKeyedSubscript:@"item-did-play-to-end"];
      v72 = [v71 BOOLValue];

      if (v72)
      {
        v73 = [v81 objectForKeyedSubscript:@"item-end-boundary"];
        v74 = v73 == 0;

        if (v74)
        {
          [v81 objectForKeyedSubscript:@"item-duration"];
        }

        else
        {
          [v81 objectForKeyedSubscript:@"item-end-boundary"];
        }
        v75 = ;
        [v75 doubleValue];
        v32 = v77;

        [v16 setEndReasonType:11];
        goto LABEL_20;
      }

      if (*(v96 + 24) != 1)
      {
        if ([(MPCPlayActivityFeedEventConsumer *)self _itemEndOccuredDuringOverlappingTransition:v86 cursor:v12])
        {
          v76 = 11;
        }

        else
        {
          v76 = 1;
        }

        [v16 setEndReasonType:v76];
        goto LABEL_20;
      }
    }

    [v16 setEndReasonType:4];
    v38 = [v86 payload];
    v39 = [v38 objectForKeyedSubscript:@"item-end-position"];
    [v39 doubleValue];
  }

  v32 = v40;

LABEL_20:
  _Block_object_dispose(&v95, 8);
  _Block_object_dispose(&v99, 8);
  _Block_object_dispose(&v103, 8);
  _Block_object_dispose(&v88, 8);

LABEL_21:
  [v16 setItemEndTime:v32];
  v41 = [v84 payload];
  v42 = [v41 objectForKeyedSubscript:@"item-metadata"];
  v43 = [v42 objectForKeyedSubscript:@"item-end-boundary"];
  v44 = v43;
  if (v43)
  {
    [v43 doubleValue];
    v46 = v45;
  }

  else
  {
    v47 = [v84 payload];
    v48 = [v47 objectForKeyedSubscript:@"item-metadata"];
    v49 = [v48 objectForKeyedSubscript:@"item-duration"];
    [v49 doubleValue];
    v46 = v50;
  }

  [(MPCPlayActivityFeedEventConsumer *)self _clampTimeValuesForPAFEvent:v16 withDuration:v46];
  v114[0] = @"queue-section-id";
  v114[1] = @"queue-item-id";
  v115[0] = v10;
  v115[1] = v85;
  v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v115 forKeys:v114 count:2];
  v79 = [v12 findPreviousEventWithType:@"item-timed-metadata-ping" matchingPayload:v51];

  v52 = [v79 payload];
  v53 = [v52 objectForKeyedSubscript:@"item-timed-metadata"];
  [v16 setTimedMetadata:v53];

  v54 = [v81 objectForKeyedSubscript:@"requires-mpaf"];
  LOBYTE(v53) = [v54 BOOLValue];

  if (v53)
  {
    v88 = 0;
    v89 = &v88;
    v90 = 0x3032000000;
    v91 = __Block_byref_object_copy__2135;
    v92 = __Block_byref_object_dispose__2136;
    v93 = 0;
    v112[0] = @"queue-section-id";
    v112[1] = @"queue-item-id";
    v113[0] = v10;
    v113[1] = v85;
    v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v113 forKeys:v112 count:2];
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __120__MPCPlayActivityFeedEventConsumer__generatePlaybackEndEventFromEvent_withQueueSectionIdentifier_itemIdentifier_cursor___block_invoke_2;
    v87[3] = &unk_1E82322F0;
    v87[4] = &v88;
    [v12 enumeratePreviousEventsWithType:@"audio-format-changed" matchingPayload:v55 usingBlock:v87];

    [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v16 withAudioChangeEvent:v89[5]];
    [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v16 withSharedListeningInfoFromCursor:v12];
    [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v16 withVocalAttenuationInfoForEndEvent:v86 cursor:v12];
    -[MPCPlayActivityFeedEventConsumer _wallClockPlayDurationForEndEvent:endReasonType:itemBeginEvent:cursor:](self, "_wallClockPlayDurationForEndEvent:endReasonType:itemBeginEvent:cursor:", v86, [v16 endReasonType], v84, v12);
    [v16 setWallClockPlayDuration:?];
    v110 = @"queue-section-id";
    v111 = v10;
    v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
    v78 = [v12 findPreviousEventWithType:@"item-hls-stream-begin" matchingPayload:v56];

    v57 = [v78 payload];
    v58 = [v57 objectForKeyedSubscript:@"container-indeterminate-duration"];
    if ([v58 BOOLValue])
    {
    }

    else
    {
      v59 = [v83 payload];
      v60 = [v59 objectForKeyedSubscript:@"container-metadata"];
      v61 = [v60 objectForKeyedSubscript:@"container-radio-subtype"];
      v62 = [v61 integerValue] == 2;

      if (!v62)
      {
LABEL_30:
        v13 = v16;

        _Block_object_dispose(&v88, 8);
        goto LABEL_31;
      }
    }

    v109[0] = @"item-resume";
    v109[1] = @"item-timed-metadata-ping";
    v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v109 count:2];
    v107 = @"queue-section-id";
    v108 = v10;
    v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
    v65 = [v12 findPreviousEventWithTypes:v63 matchingPayload:v64];

    [v16 setItemStartTime:0.0];
    v66 = [v12 cursorFromEvent:v86 untilEvent:v65];
    [(MPCPlayActivityFeedEventConsumer *)self _getPlaybackDurationForHLSStreamFromStartEvent:v65 toEndEvent:v86 withLimitedCursor:v66];
    v68 = v67;

    [v16 setItemEndTime:v68];
    [v16 setItemDuration:0.0];

    goto LABEL_30;
  }

  [(MPCPlayActivityFeedEventConsumer *)self _sendPlayEndNotificationWithStartTime:v16 endTime:v12 pafEvent:v25 cursor:v32];
  v13 = 0;
LABEL_31:

LABEL_32:

  return v13;
}

void __120__MPCPlayActivityFeedEventConsumer__generatePlaybackEndEventFromEvent_withQueueSectionIdentifier_itemIdentifier_cursor___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 payload];
  v6 = [v5 objectForKeyedSubscript:@"remote-control-type"];
  v7 = [v6 unsignedIntValue];

  if (v7 > 121)
  {
    if (v7 == 122)
    {
      v8 = 56;
    }

    else
    {
      if (v7 != 131)
      {
        return;
      }

      v8 = 48;
    }
  }

  else if (v7 == 4)
  {
    v8 = 32;
  }

  else
  {
    if (v7 != 5)
    {
      return;
    }

    v8 = 40;
  }

  *(*(*(a1 + v8) + 8) + 24) = 1;
  *a3 = 1;
}

void __120__MPCPlayActivityFeedEventConsumer__generatePlaybackEndEventFromEvent_withQueueSectionIdentifier_itemIdentifier_cursor___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [v9 payload];
  v7 = [v6 objectForKeyedSubscript:@"item-audio-format-metadata"];

  v8 = [v7 objectForKeyedSubscript:@"active-format"];
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (BOOL)_handleItemEndEvent:(id)a3 cursor:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 payload];
  v9 = [v8 objectForKeyedSubscript:@"queue-section-id"];

  v10 = [v6 payload];
  v11 = [v10 objectForKeyedSubscript:@"queue-item-id"];

  if (!v11 || !v9)
  {
    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v28 = self;
      v29 = 2114;
      v30 = v6;
      v31 = 2114;
      v32 = v7;
      _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_ERROR, "PlayActivityFeedEventConsumer %p: _handleItemEndEvent:cursor: - could not find queueSectionIdentifier/itemIdentifier event=%{public}@ - cursor:%{public}@", buf, 0x20u);
    }

    goto LABEL_8;
  }

  v12 = [(MPCPlayActivityFeedEventConsumer *)self _generatePlaybackEndEventFromEvent:v6 withQueueSectionIdentifier:v9 itemIdentifier:v11 cursor:v7];
  v13 = v12;
  if (!v12)
  {
LABEL_8:
    v22 = 1;
    goto LABEL_11;
  }

  [v12 itemStartTime];
  v15 = v14;
  [v13 itemEndTime];
  [(MPCPlayActivityFeedEventConsumer *)self _sendPlayEndNotificationWithStartTime:v13 endTime:v7 pafEvent:v15 cursor:v16];
  v17 = [(MPCPlayActivityFeedEventConsumer *)self _generateAggregateNoncatalogEndEventForCursor:v7];
  v18 = v17;
  if (v17)
  {
    v26[0] = v17;
    v26[1] = v13;
    v19 = MEMORY[0x1E695DEC8];
    v20 = v26;
    v21 = 2;
  }

  else
  {
    v25 = v13;
    v19 = MEMORY[0x1E695DEC8];
    v20 = &v25;
    v21 = 1;
  }

  v23 = [v19 arrayWithObjects:v20 count:v21];
  v22 = [(MPCPlayActivityFeedEventConsumer *)self _finalizePAFEvents:v23];

LABEL_11:
  return v22;
}

- (BOOL)_handleItemPauseEvent:(id)a3 cursor:(id)a4
{
  v113[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 payload];
  v9 = [v8 objectForKeyedSubscript:@"queue-section-id"];

  v10 = [v6 payload];
  v11 = [v10 objectForKeyedSubscript:@"queue-item-id"];

  if (!v11 || !v9)
  {
    v33 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v6;
      *&buf[22] = 2114;
      v93 = v7;
      _os_log_impl(&dword_1C5C61000, v33, OS_LOG_TYPE_ERROR, "PlayActivityFeedEventConsumer %p: _handleItemPauseEvent:cursor: - could not find queueSectionIdentifier/itemIdentifier event=%{public}@ - cursor:%{public}@", buf, 0x20u);
    }

    v34 = 1;
    goto LABEL_32;
  }

  if ([(MPCPlayActivityFeedEventConsumer *)self _itemIsPlayingFromQueueSectionIdentifier:v9 itemIdentifier:v11 cursor:v7])
  {
    v112[0] = @"queue-section-id";
    v112[1] = @"queue-item-id";
    v113[0] = v9;
    v113[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v113 forKeys:v112 count:2];
    v79 = [v7 findPreviousEventWithType:@"item-begin" matchingPayload:v12];

    v111[0] = @"item-begin";
    v111[1] = @"item-resume";
    v111[2] = @"item-position-jump";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:3];
    v109[0] = @"queue-section-id";
    v109[1] = @"queue-item-id";
    v110[0] = v9;
    v110[1] = v11;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v110 forKeys:v109 count:2];
    v76 = [(MPCPlayActivityFeedEventConsumer *)self _findRecentPlaybackStartFromTypes:v13 matchingPayload:v14 cursor:v7];

    v107 = @"queue-section-id";
    v108 = v9;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
    v77 = [v7 findPreviousEventWithType:@"container-begin" matchingPayload:v15];

    [(MPCPlayActivityFeedEventConsumer *)self _getStartTimeForMostRecentPlaybackStart:v76 withItemBeginEvent:v79 containerBeginEvent:v77 cursor:v7];
    v17 = v16;
    v18 = [v6 payload];
    v19 = [v18 objectForKeyedSubscript:@"item-end-position"];
    [v19 doubleValue];
    v21 = v20;

    v22 = [v79 payload];
    v23 = [v22 objectForKeyedSubscript:@"item-metadata"];
    v24 = [v23 objectForKeyedSubscript:@"requires-mpaf"];
    v25 = [v24 BOOLValue];

    if ((v25 & 1) == 0)
    {
      [(MPCPlayActivityFeedEventConsumer *)self _sendPlayEndNotificationWithStartTime:0 endTime:v7 pafEvent:v17 cursor:v21];
      v34 = 1;
LABEL_31:

      v33 = v79;
LABEL_32:

      goto LABEL_33;
    }

    v26 = objc_alloc_init(MEMORY[0x1E69E44F8]);
    v27 = [v6 date];
    [v26 setEventDate:v27];

    [v26 setEventType:0];
    v28 = [v77 payload];
    v29 = [v6 type];
    [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v26 withItemBeginEvent:v79 containerBeginPayload:v28 cursor:v7 forEventType:v29];

    v74 = [v7 cursorUntilEvent:v79];
    if ([v26 itemType] != 4)
    {
      v105[0] = @"queue-section-id";
      v105[1] = @"queue-item-id";
      v106[0] = v9;
      v106[1] = v11;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:2];
      v31 = [v74 countOfPreviousEventsWithType:@"item-resume" matchingPayload:v30] == 0;

      if (v31)
      {
        v34 = 1;
LABEL_30:

        goto LABEL_31;
      }
    }

    v103 = @"queue-section-id";
    v104 = v9;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
    v73 = [v7 findPreviousEventWithType:@"queue-add" matchingPayload:v32];

    [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v26 withQueueAddEvent:v73 queueSectionIdentifier:v9 cursor:v7];
    [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v26 withDeviceInfoFromCursor:v7];
    [v26 setItemStartTime:v17];
    [v26 setItemEndTime:v21];
    v75 = [v7 cursorUntilEvent:v76];
    v84 = 0;
    v85 = &v84;
    v86 = 0x2020000000;
    v87 = 0;
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __65__MPCPlayActivityFeedEventConsumer__handleItemPauseEvent_cursor___block_invoke;
    v81[3] = &unk_1E8231A28;
    v83 = &v84;
    v78 = v7;
    v82 = v78;
    [v75 enumeratePreviousEventsWithType:@"remote-control-begin" usingBlock:v81];
    if (*(v85 + 24) == 1)
    {
      [v26 setEndReasonType:5];
    }

    else
    {
      v35 = [v75 findPreviousEventWithType:@"interrupt-begin" matchingPayload:0];
      if (v35)
      {
        v36 = 6;
      }

      else
      {
        v36 = 1;
      }

      [v26 setEndReasonType:v36];
    }

    v37 = [v79 payload];
    v38 = [v37 objectForKeyedSubscript:@"item-metadata"];
    v39 = [v38 objectForKeyedSubscript:@"item-end-boundary"];
    v40 = v39;
    if (!v39)
    {
      v71 = [v79 payload];
      v69 = [v71 objectForKeyedSubscript:@"item-metadata"];
      v40 = [v69 objectForKeyedSubscript:@"item-duration"];
    }

    [v40 doubleValue];
    v42 = v41;
    if (!v39)
    {
    }

    [(MPCPlayActivityFeedEventConsumer *)self _clampTimeValuesForPAFEvent:v26 withDuration:v42];
    v101 = @"queue-section-id";
    v102 = v9;
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
    v72 = [v78 findPreviousEventWithType:@"item-timed-metadata-ping" matchingPayload:v43];

    v44 = [v72 payload];
    v45 = [v44 objectForKeyedSubscript:@"item-timed-metadata"];
    [v26 setTimedMetadata:v45];

    v99 = @"queue-section-id";
    v100 = v9;
    v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
    v70 = [v78 findPreviousEventWithType:@"item-hls-stream-begin" matchingPayload:v46];

    v47 = [v70 payload];
    v48 = [v47 objectForKeyedSubscript:@"container-indeterminate-duration"];
    if ([v48 BOOLValue])
    {
    }

    else
    {
      v68 = [v77 payload];
      v49 = [v68 objectForKeyedSubscript:@"container-metadata"];
      v50 = [v49 objectForKeyedSubscript:@"container-radio-subtype"];
      v67 = [v50 integerValue] == 2;

      if (!v67)
      {
LABEL_26:
        [v26 itemStartTime];
        v58 = v57;
        [v26 itemEndTime];
        [(MPCPlayActivityFeedEventConsumer *)self _sendPlayEndNotificationWithStartTime:v26 endTime:v78 pafEvent:v58 cursor:v59];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v93 = __Block_byref_object_copy__2135;
        v94 = __Block_byref_object_dispose__2136;
        v95 = 0;
        v90[0] = @"queue-section-id";
        v90[1] = @"queue-item-id";
        v91[0] = v9;
        v91[1] = v11;
        v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v91 forKeys:v90 count:2];
        v80[0] = MEMORY[0x1E69E9820];
        v80[1] = 3221225472;
        v80[2] = __65__MPCPlayActivityFeedEventConsumer__handleItemPauseEvent_cursor___block_invoke_2;
        v80[3] = &unk_1E82322F0;
        v80[4] = buf;
        [v78 enumeratePreviousEventsWithType:@"audio-format-changed" matchingPayload:v60 usingBlock:v80];

        [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v26 withAudioChangeEvent:*(*&buf[8] + 40)];
        [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v26 withSharedListeningInfoFromCursor:v78];
        [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v26 withVocalAttenuationInfoForEndEvent:v6 cursor:v78];
        -[MPCPlayActivityFeedEventConsumer _wallClockPlayDurationForEndEvent:endReasonType:itemBeginEvent:cursor:](self, "_wallClockPlayDurationForEndEvent:endReasonType:itemBeginEvent:cursor:", v6, [v26 endReasonType], v79, v78);
        [v26 setWallClockPlayDuration:?];
        v61 = [(MPCPlayActivityFeedEventConsumer *)self _generateAggregateNoncatalogEndEventForCursor:v78];
        v62 = v61;
        if (v61)
        {
          v89[0] = v61;
          v89[1] = v26;
          v63 = v89;
          v64 = 2;
        }

        else
        {
          v88 = v26;
          v63 = &v88;
          v64 = 1;
        }

        v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:v64];
        v34 = [(MPCPlayActivityFeedEventConsumer *)self _finalizePAFEvents:v65];

        _Block_object_dispose(buf, 8);
        _Block_object_dispose(&v84, 8);

        goto LABEL_30;
      }
    }

    v98[0] = @"item-resume";
    v98[1] = @"item-timed-metadata-ping";
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:2];
    v96 = @"queue-section-id";
    v97 = v9;
    v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
    v53 = [v78 findPreviousEventWithTypes:v51 matchingPayload:v52];

    [v26 setItemStartTime:0.0];
    v54 = [v78 cursorFromEvent:v6 untilEvent:v53];
    [(MPCPlayActivityFeedEventConsumer *)self _getPlaybackDurationForHLSStreamFromStartEvent:v53 toEndEvent:v6 withLimitedCursor:v54];
    v56 = v55;

    [v26 setItemEndTime:v56];
    [v26 setItemDuration:0.0];

    goto LABEL_26;
  }

  v34 = 1;
LABEL_33:

  return v34;
}

void __65__MPCPlayActivityFeedEventConsumer__handleItemPauseEvent_cursor___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 payload];
  v6 = [v5 objectForKeyedSubscript:@"remote-control-type"];
  v7 = [v6 unsignedIntValue];

  if ((v7 - 1) <= 2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void __65__MPCPlayActivityFeedEventConsumer__handleItemPauseEvent_cursor___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [v9 payload];
  v7 = [v6 objectForKeyedSubscript:@"item-audio-format-metadata"];

  v8 = [v7 objectForKeyedSubscript:@"active-format"];
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (BOOL)_handleItemPositionJumpEvent:(id)a3 cursor:(id)a4
{
  v106[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v106[0] = @"remote-control-begin";
  v106[1] = @"remote-control-end";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:2];
  v9 = [v7 findPreviousEventWithTypes:v8 matchingPayload:0];

  if (v9)
  {
    v10 = [v9 type];
    if ([v10 isEqualToString:@"remote-control-end"])
    {
      v11 = 1;
LABEL_30:

      goto LABEL_31;
    }

    v12 = [v6 payload];
    v13 = [v12 objectForKeyedSubscript:@"item-jump-user-initiated"];
    v14 = [v13 BOOLValue];

    if (v14)
    {
      v15 = [v6 payload];
      v10 = [v15 objectForKeyedSubscript:@"queue-section-id"];

      v16 = [v6 payload];
      v83 = [v16 objectForKeyedSubscript:@"queue-item-id"];

      if (!v83 || !v10)
      {
        v18 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218498;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v6;
          *&buf[22] = 2114;
          v90 = v7;
          _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_ERROR, "PlayActivityFeedEventConsumer %p: _handleItemPositionJumpEvent:cursor: - could not find queueSectionIdentifier/itemIdentifier event=%{public}@ - cursor:%{public}@", buf, 0x20u);
        }

        v11 = 1;
        goto LABEL_29;
      }

      v104[0] = @"queue-section-id";
      v104[1] = @"queue-item-id";
      v105[0] = v10;
      v105[1] = v83;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:2];
      v18 = [v7 findPreviousEventWithType:@"item-begin" matchingPayload:v17];

      v103[0] = @"item-begin";
      v103[1] = @"item-resume";
      v103[2] = @"item-position-jump";
      v103[3] = @"item-pause";
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:4];
      v101[0] = @"queue-section-id";
      v101[1] = @"queue-item-id";
      v102[0] = v10;
      v102[1] = v83;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:v101 count:2];
      v79 = [(MPCPlayActivityFeedEventConsumer *)self _findRecentPlaybackStartFromTypes:v19 matchingPayload:v20 cursor:v7];

      v99 = @"queue-section-id";
      v100 = v10;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
      v80 = [v7 findPreviousEventWithType:@"container-begin" matchingPayload:v21];

      [(MPCPlayActivityFeedEventConsumer *)self _getStartTimeForMostRecentPlaybackStart:v79 withItemBeginEvent:v18 containerBeginEvent:v80 cursor:v7];
      v23 = v22;
      v24 = [v6 payload];
      v25 = [v24 objectForKeyedSubscript:@"item-start-position"];
      [v25 doubleValue];
      v27 = v26;

      v28 = [v18 payload];
      v29 = [v28 objectForKeyedSubscript:@"item-metadata"];
      v30 = [v29 objectForKeyedSubscript:@"requires-mpaf"];
      v31 = [v30 BOOLValue];

      if ((v31 & 1) == 0)
      {
        [(MPCPlayActivityFeedEventConsumer *)self _sendPlayEndNotificationWithStartTime:0 endTime:v7 pafEvent:v23 cursor:v27];
        v11 = 1;
LABEL_28:

LABEL_29:
        goto LABEL_30;
      }

      v97 = @"queue-section-id";
      v98 = v10;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
      v78 = [v7 findPreviousEventWithType:@"item-hls-stream-begin" matchingPayload:v32];

      v82 = [v78 payload];
      v81 = [v82 objectForKeyedSubscript:@"container-indeterminate-duration"];
      if ([v81 BOOLValue])
      {
        v11 = 1;
      }

      else
      {
        v33 = [v80 payload];
        v34 = [v33 objectForKeyedSubscript:@"container-metadata"];
        v35 = [v34 objectForKeyedSubscript:@"container-radio-subtype"];
        v36 = [v35 integerValue] == 2;

        if (v36)
        {
          v11 = 1;
LABEL_27:

          goto LABEL_28;
        }

        v82 = objc_alloc_init(MEMORY[0x1E69E44F8]);
        v37 = [v6 date];
        [v82 setEventDate:v37];

        [v82 setEventType:0];
        [v82 setEndReasonType:9];
        v81 = objc_alloc_init(MEMORY[0x1E69E44F8]);
        v38 = [v6 date];
        [v81 setEventDate:v38];

        [v81 setEventType:0];
        [v81 setEndReasonType:10];
        v39 = [v80 payload];
        v40 = [v6 type];
        [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v82 withItemBeginEvent:v18 containerBeginPayload:v39 cursor:v7 forEventType:v40];

        v41 = [v80 payload];
        v42 = [v6 type];
        [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v81 withItemBeginEvent:v18 containerBeginPayload:v41 cursor:v7 forEventType:v42];

        v95 = @"queue-section-id";
        v96 = v10;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
        v76 = [v7 findPreviousEventWithType:@"queue-add" matchingPayload:v43];

        [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v82 withQueueAddEvent:v76 queueSectionIdentifier:v10 cursor:v7];
        [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v81 withQueueAddEvent:v76 queueSectionIdentifier:v10 cursor:v7];
        [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v82 withDeviceInfoFromCursor:v7];
        [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v81 withDeviceInfoFromCursor:v7];
        [v82 setItemStartTime:v23];
        v44 = [v6 payload];
        v45 = [v44 objectForKeyedSubscript:@"item-start-position"];
        [v45 doubleValue];
        [v82 setItemEndTime:?];

        v46 = [v6 payload];
        v47 = [v46 objectForKeyedSubscript:@"item-start-position"];
        [v47 doubleValue];
        [v81 setItemStartTime:?];

        v48 = [v6 payload];
        v49 = [v48 objectForKeyedSubscript:@"item-end-position"];
        [v49 doubleValue];
        v51 = v50;

        [v81 setItemEndTime:v51];
        v93 = @"queue-section-id";
        v94 = v10;
        v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
        v77 = [v7 findPreviousEventWithType:@"item-timed-metadata-ping" matchingPayload:v52];

        if (v77)
        {
          v53 = [v77 payload];
          v54 = [v53 objectForKeyedSubscript:@"item-timed-metadata"];
          [v82 setTimedMetadata:v54];

          v55 = [v77 payload];
          v56 = [v55 objectForKeyedSubscript:@"item-timed-metadata"];
          [v81 setTimedMetadata:v56];
        }

        v57 = [v18 payload];
        v75 = [v57 objectForKeyedSubscript:@"item-metadata"];
        v58 = [v75 objectForKeyedSubscript:@"item-end-boundary"];
        v59 = v58;
        if (v58)
        {
          [v58 doubleValue];
          v61 = v60;
        }

        else
        {
          v74 = [v18 payload];
          v62 = [v74 objectForKeyedSubscript:@"item-metadata"];
          v63 = [v62 objectForKeyedSubscript:@"item-duration"];
          [v63 doubleValue];
          v61 = v64;
        }

        [(MPCPlayActivityFeedEventConsumer *)self _clampTimeValuesForPAFEvent:v82 withDuration:v61];
        [(MPCPlayActivityFeedEventConsumer *)self _clampTimeValuesForPAFEvent:v81 withDuration:v61];
        [v82 itemStartTime];
        v66 = v65;
        [v82 itemEndTime];
        [(MPCPlayActivityFeedEventConsumer *)self _sendPlayEndNotificationWithStartTime:v82 endTime:v7 pafEvent:v66 cursor:v67];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v90 = __Block_byref_object_copy__2135;
        v91 = __Block_byref_object_dispose__2136;
        v92 = 0;
        v87[0] = @"queue-section-id";
        v87[1] = @"queue-item-id";
        v88[0] = v10;
        v88[1] = v83;
        v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:v87 count:2];
        v84[0] = MEMORY[0x1E69E9820];
        v84[1] = 3221225472;
        v84[2] = __72__MPCPlayActivityFeedEventConsumer__handleItemPositionJumpEvent_cursor___block_invoke;
        v84[3] = &unk_1E82322F0;
        v84[4] = buf;
        [v7 enumeratePreviousEventsWithType:@"audio-format-changed" matchingPayload:v68 usingBlock:v84];

        [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v82 withAudioChangeEvent:*(*&buf[8] + 40)];
        [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v81 withAudioChangeEvent:*(*&buf[8] + 40)];
        [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v82 withSharedListeningInfoFromCursor:v7];
        [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v81 withSharedListeningInfoFromCursor:v7];
        [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v82 withVocalAttenuationInfoForEndEvent:v6 cursor:v7];
        [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v81 withVocalAttenuationInfoForEndEvent:v6 cursor:v7];
        [v81 setVocalAttenuationDuration:0.0];
        [v81 setWallClockPlayDuration:0.0];
        -[MPCPlayActivityFeedEventConsumer _wallClockPlayDurationForEndEvent:endReasonType:itemBeginEvent:cursor:](self, "_wallClockPlayDurationForEndEvent:endReasonType:itemBeginEvent:cursor:", v6, [v82 endReasonType], v18, v7);
        [v82 setWallClockPlayDuration:?];
        v69 = [(MPCPlayActivityFeedEventConsumer *)self _generateAggregateNoncatalogEndEventForCursor:v7];
        v70 = v69;
        if (v69)
        {
          v85[1] = v69;
          v85[2] = v82;
          v71 = &v86;
        }

        else
        {
          v84[5] = v82;
          v71 = v85;
        }

        *v71 = v81;
        v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
        v11 = [(MPCPlayActivityFeedEventConsumer *)self _finalizePAFEvents:v72];

        _Block_object_dispose(buf, 8);
      }

      goto LABEL_27;
    }
  }

  v11 = 1;
LABEL_31:

  return v11;
}

void __72__MPCPlayActivityFeedEventConsumer__handleItemPositionJumpEvent_cursor___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [v9 payload];
  v7 = [v6 objectForKeyedSubscript:@"item-audio-format-metadata"];

  v8 = [v7 objectForKeyedSubscript:@"active-format"];
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (BOOL)_handleItemResumeEvent:(id)a3 cursor:(id)a4
{
  v103 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"queue-section-id"];

  v9 = [v5 payload];
  v10 = [v9 objectForKeyedSubscript:@"queue-item-id"];

  if (v10 && v8)
  {
    v95 = @"queue-section-id";
    v96 = v8;
    v72 = 1;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
    v79 = [v6 findPreviousEventWithType:@"queue-add" matchingPayload:v11];

    v93 = @"queue-section-id";
    v94 = v8;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
    v76 = [v6 findPreviousEventWithType:@"item-hls-stream-begin" matchingPayload:v12];

    v13 = objc_alloc_init(MEMORY[0x1E69E44F8]);
    v14 = [v5 date];
    [v13 setEventDate:v14];

    [v13 setEventType:1];
    v77 = v13;
    [v13 setEndReasonType:0];
    v74 = [v6 findPreviousEventWithType:@"item-end" matchingPayload:0];
    v15 = [v6 cursorUntilEvent:?];
    v91[0] = @"queue-section-id";
    v91[1] = @"queue-item-id";
    v92[0] = v8;
    v92[1] = v10;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:2];
    v75 = [v6 findPreviousEventWithType:@"item-begin" matchingPayload:v16];

    v89[0] = @"queue-section-id";
    v89[1] = @"queue-item-id";
    v90[0] = v8;
    v90[1] = v10;
    v71 = v10;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:2];
    v18 = [v15 countOfPreviousEventsWithType:@"item-resume" matchingPayload:v17];

    v87 = @"remote-control-type";
    v88 = &unk_1F4599010;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
    v70 = v15;
    v20 = [v15 findPreviousEventWithType:@"remote-control-end" matchingPayload:v19];

    v69 = [v6 findPreviousEventWithType:@"session-begin" matchingPayload:0];
    v21 = [v6 cursorUntilEvent:?];
    v22 = [v21 findPreviousEventWithType:@"item-resume" matchingPayload:0];
    if (!v22)
    {
      v23 = [v21 findPreviousEventWithType:@"session-restore-begin" matchingPayload:0];
      v72 = v23 == 0;
    }

    v68 = v21;

    v24 = v76;
    if (!v18 && v72 && !v20)
    {
      v25 = [v5 payload];
      v26 = [v25 objectForKeyedSubscript:@"queue-section-id"];
      v27 = [v74 payload];
      v28 = [v27 objectForKeyedSubscript:@"queue-section-id"];
      v29 = [v26 isEqualToString:v28];

      v24 = v76;
      if ((v29 & 1) == 0)
      {
        [v77 setReasonHintType:1];
      }
    }

    v73 = v20;
    v85 = @"queue-section-id";
    v86 = v8;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
    v31 = [v6 findPreviousEventWithType:@"container-begin" matchingPayload:v30];

    v32 = [v31 payload];
    v33 = [v5 type];
    v34 = v75;
    [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v77 withItemBeginEvent:v75 containerBeginPayload:v32 cursor:v6 forEventType:v33];

    [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v77 withQueueAddEvent:v79 queueSectionIdentifier:v8 cursor:v6];
    [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v77 withDeviceInfoFromCursor:v6];
    v35 = v31;
    [(MPCPlayActivityFeedEventConsumer *)self _getStartTimeForMostRecentPlaybackStart:v5 withItemBeginEvent:v75 containerBeginEvent:v31 cursor:v6];
    [v77 setItemStartTime:?];
    v83 = @"queue-section-id";
    v84 = v8;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
    v37 = [v6 findPreviousEventWithType:@"item-timed-metadata-ping" matchingPayload:v36];

    v67 = v37;
    v38 = [v37 payload];
    v39 = [v38 objectForKeyedSubscript:@"item-timed-metadata"];
    [v77 setTimedMetadata:v39];

    v40 = [v24 payload];
    v41 = [v40 objectForKeyedSubscript:@"container-indeterminate-duration"];
    if ([v41 BOOLValue])
    {
    }

    else
    {
      v43 = [v31 payload];
      v44 = [v43 objectForKeyedSubscript:@"container-metadata"];
      v45 = [v44 objectForKeyedSubscript:@"container-radio-subtype"];
      v65 = [v45 integerValue];

      v34 = v75;
      if (v65 != 2)
      {
LABEL_17:
        v46 = [v34 payload];
        [v46 objectForKeyedSubscript:@"item-metadata"];
        v48 = v47 = v34;
        v49 = [v48 objectForKeyedSubscript:@"item-end-boundary"];
        v50 = v49;
        if (v49)
        {
          [v49 doubleValue];
          v52 = v51;
        }

        else
        {
          v66 = [v47 payload];
          v53 = [v66 objectForKeyedSubscript:@"item-metadata"];
          v54 = [v53 objectForKeyedSubscript:@"item-duration"];
          [v54 doubleValue];
          v52 = v55;
        }

        v10 = v71;
        if (v52 == 0.0)
        {
          v81[0] = @"queue-section-id";
          v81[1] = @"queue-item-id";
          v82[0] = v8;
          v82[1] = v71;
          v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:2];
          v57 = [v6 findPreviousEventWithType:@"item-update" matchingPayload:v56];

          v58 = [v57 payload];
          v59 = [v58 objectForKeyedSubscript:@"item-metadata"];
          v60 = [v59 objectForKeyedSubscript:@"item-duration"];
          [v60 doubleValue];
          v52 = v61;
        }

        [(MPCPlayActivityFeedEventConsumer *)self _clampTimeValuesForPAFEvent:v77 withDuration:v52];
        if ([v77 isSBEnabled])
        {
          [(MPCPlayActivityFeedEventConsumer *)self _updatePAFEvent:v77 withSharedListeningInfoFromCursor:v6];
          v62 = [MEMORY[0x1E696AD88] defaultCenter];
          [v62 postNotificationName:@"MPCPlayActivityUtilitiesPlayStartNotification" object:self];

          v80 = v77;
          v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
          v42 = [(MPCPlayActivityFeedEventConsumer *)self _finalizePAFEvents:v63];
        }

        else
        {
          v42 = 1;
        }

        goto LABEL_26;
      }
    }

    [v77 setItemStartTime:{0.0, v65}];
    [v77 setItemDuration:0.0];
    goto LABEL_17;
  }

  v79 = os_log_create("com.apple.amp.mediaplaybackcore", "PAF");
  if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218498;
    v98 = self;
    v99 = 2114;
    v100 = v5;
    v101 = 2114;
    v102 = v6;
    _os_log_impl(&dword_1C5C61000, v79, OS_LOG_TYPE_ERROR, "PlayActivityFeedEventConsumer %p: _handleItemResumeEvent:cursor: - could not find queueSectionIdentifier/itemIdentifier event=%{public}@ - cursor:%{public}@", buf, 0x20u);
  }

  v42 = 1;
LABEL_26:

  return v42;
}

- (void)_updateAllowedBundleIdsIfNecessary:(id)a3
{
  v12 = a3;
  v4 = [v12 dictionaryForBagKey:@"metrics"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 valueForKeyPath:@"treatmentProfiles.bundleIdAllowList.treatments"];
    if (v6 && _NSIsNSArray())
    {
      v7 = [v6 objectAtIndexedSubscript:0];
      if (v7 && _NSIsNSDictionary())
      {
        v8 = [v7 valueForKeyPath:@"fieldActions.bundle-id.allowedValues"];
        if (v8 && _NSIsNSArray())
        {
          v9 = self;
          objc_sync_enter(v9);
          v10 = [v8 msv_filter:&__block_literal_global_2155];
          allowedBundleIds = v9->_allowedBundleIds;
          v9->_allowedBundleIds = v10;

          objc_sync_exit(v9);
        }
      }
    }
  }
}

- (void)_handleURLBagProviderDidUpdateBagNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69E4358]];

  [(MPCPlayActivityFeedEventConsumer *)self _updateAllowedBundleIdsIfNecessary:v5];
}

- (void)subscribeToEventStream:(id)a3
{
  objc_storeStrong(&self->_subscription, a3);
  v5 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__MPCPlayActivityFeedEventConsumer_subscribeToEventStream___block_invoke;
  v10[3] = &unk_1E8232330;
  v10[4] = self;
  [v5 subscribeToEventType:@"item-resume" handler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__MPCPlayActivityFeedEventConsumer_subscribeToEventStream___block_invoke_2;
  v9[3] = &unk_1E8232330;
  v9[4] = self;
  [v5 subscribeToEventType:@"item-position-jump" handler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__MPCPlayActivityFeedEventConsumer_subscribeToEventStream___block_invoke_3;
  v8[3] = &unk_1E8232330;
  v8[4] = self;
  [v5 subscribeToEventType:@"item-pause" handler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__MPCPlayActivityFeedEventConsumer_subscribeToEventStream___block_invoke_4;
  v7[3] = &unk_1E8232330;
  v7[4] = self;
  [v5 subscribeToEventType:@"item-end" handler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__MPCPlayActivityFeedEventConsumer_subscribeToEventStream___block_invoke_5;
  v6[3] = &unk_1E8232330;
  v6[4] = self;
  [v5 subscribeToEventType:@"application-termination" handler:v6];
}

@end