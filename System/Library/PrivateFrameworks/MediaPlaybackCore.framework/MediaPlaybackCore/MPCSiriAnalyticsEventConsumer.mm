@interface MPCSiriAnalyticsEventConsumer
- (MPCPlaybackEngine)playbackEngine;
- (MPCSiriAnalyticsEventConsumer)initWithPlaybackEngine:(id)a3;
- (id)_validateAndBuildContextWithEvent:(id)a3;
- (void)_handleAssetLoadEnd:(id)a3 cursor:(id)a4;
- (void)subscribeToEventStream:(id)a3;
@end

@implementation MPCSiriAnalyticsEventConsumer

- (MPCPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (id)_validateAndBuildContextWithEvent:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 payload];
  v6 = [v5 objectForKeyedSubscript:@"queue-reporting-metadata"];

  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:@"siri-ref-id"];
    v8 = v7;
    if (v7 && ([v7 isEqualToString:self->_lastSiriReferenceIdentifierForPlaybackStart] & 1) == 0)
    {
      v10 = [v6 objectForKeyedSubscript:@"siri-wha-metrics"];
      if ([v10 count])
      {
        v20[0] = @"refId";
        v20[1] = @"endTimeReciever";
        v21[0] = v8;
        v11 = MEMORY[0x1E696AD98];
        v12 = [v4 date];
        [v12 timeIntervalSinceReferenceDate];
        v13 = [v11 numberWithDouble:?];
        v21[1] = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];

        v19[0] = v14;
        v19[1] = v10;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
        v9 = AFAnalyticsContextsMerge();
      }

      else
      {
        v17 = @"refId";
        v18 = v8;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_handleAssetLoadEnd:(id)a3 cursor:(id)a4
{
  v33[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 type];
  v9 = [v8 isEqualToString:@"asset-load-end"];

  if (v9)
  {
    v10 = [v6 payload];
    v11 = [v10 objectForKeyedSubscript:@"queue-section-id"];

    v12 = [v6 payload];
    v13 = [v12 objectForKeyedSubscript:@"queue-item-id"];

    v32 = @"queue-section-id";
    v33[0] = v11;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v15 = [v7 findPreviousEventWithType:@"queue-add" matchingPayload:v14];

    v16 = [(MPCSiriAnalyticsEventConsumer *)self _validateAndBuildContextWithEvent:v15];
    v17 = [v16 mutableCopy];

    if (v17)
    {
      v30[0] = @"queue-section-id";
      v30[1] = @"queue-item-id";
      v31[0] = v11;
      v31[1] = v13;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
      v19 = [v7 findPreviousEventWithType:@"asset-load-begin" matchingPayload:v18];

      v20 = MEMORY[0x1E696AD98];
      [v19 durationSinceEvent:v6];
      v22 = [v20 numberWithDouble:v21 * 1000.0];
      [v17 setObject:v22 forKeyedSubscript:@"Duration"];

      v23 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_DEFAULT, "MPCSiriAnalyticsEventConsumer: AFAnalyticsEventTypeMusicPlaybackAssetLoad", buf, 2u);
      }

      v24 = [MEMORY[0x1E698D0C8] sharedAnalytics];
      if (v6)
      {
        [v6 monotonicTime];
        v25 = *(&v26 + 1);
      }

      else
      {
        v25 = 0;
        v28 = 0;
        v26 = 0u;
        v27 = 0u;
      }

      [v24 logEventWithType:2903 machAbsoluteTime:v25 context:{v17, v26, v27, v28}];
    }
  }
}

- (void)subscribeToEventStream:(id)a3
{
  objc_storeStrong(&self->_subscription, a3);
  v5 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__MPCSiriAnalyticsEventConsumer_subscribeToEventStream___block_invoke;
  v10[3] = &unk_1E8232330;
  v10[4] = self;
  [v5 subscribeToEventType:@"session-will-begin" handler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__MPCSiriAnalyticsEventConsumer_subscribeToEventStream___block_invoke_13;
  v9[3] = &unk_1E8232330;
  v9[4] = self;
  [v5 subscribeToEventType:@"item-buffer-ready" handler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__MPCSiriAnalyticsEventConsumer_subscribeToEventStream___block_invoke_15;
  v8[3] = &unk_1E8232330;
  v8[4] = self;
  [v5 subscribeToEventType:@"item-first-audio-frame" handler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__MPCSiriAnalyticsEventConsumer_subscribeToEventStream___block_invoke_27;
  v7[3] = &unk_1E8232330;
  v7[4] = self;
  [v5 subscribeToEventType:@"item-begin" handler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__MPCSiriAnalyticsEventConsumer_subscribeToEventStream___block_invoke_2;
  v6[3] = &unk_1E8232330;
  v6[4] = self;
  [v5 subscribeToEventType:@"asset-load-end" handler:v6];
}

uint64_t __56__MPCSiriAnalyticsEventConsumer_subscribeToEventStream___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _validateAndBuildContextWithEvent:v3];
  if (v4)
  {
    [*(*(a1 + 32) + 24) setBool:1 forKey:@"HasPlayedWithSiri"];
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "MPCSiriAnalyticsEventConsumer: AFAnalyticsEventTypeMusicPlaybackQueueReceived", buf, 2u);
    }

    v6 = [MEMORY[0x1E698D0C8] sharedAnalytics];
    if (v3)
    {
      [v3 monotonicTime];
      v7 = *(&v9 + 1);
    }

    else
    {
      v7 = 0;
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }

    [v6 logEventWithType:2906 machAbsoluteTime:v7 context:{v4, v9, v10, v11}];
  }

  return 1;
}

uint64_t __56__MPCSiriAnalyticsEventConsumer_subscribeToEventStream___block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v43[2] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = [v5 findPreviousEventWithType:@"session-begin" matchingPayload:0];
  v7 = [v5 cursorUntilEvent:v6];
  v42[0] = @"queue-section-id";
  v8 = [v4 payload];
  v9 = [v8 objectForKeyedSubscript:@"queue-section-id"];
  v42[1] = @"queue-item-id";
  v43[0] = v9;
  v10 = [v4 payload];
  v11 = [v10 objectForKeyedSubscript:@"queue-item-id"];
  v43[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
  v13 = [v7 findPreviousEventWithType:@"item-buffer-ready" matchingPayload:v12];

  v14 = v4;
  if (!v13)
  {
    v34 = v7;
    v40[0] = @"queue-section-id";
    v15 = [v4 payload];
    v16 = [v15 objectForKeyedSubscript:@"queue-section-id"];
    v40[1] = @"queue-item-id";
    v41[0] = v16;
    v17 = [v4 payload];
    v18 = [v17 objectForKeyedSubscript:@"queue-item-id"];
    v41[1] = v18;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
    v20 = v19 = v4;
    v21 = [v5 findPreviousEventWithType:@"item-begin" matchingPayload:v20];

    v14 = v19;
    v22 = [v21 payload];
    v23 = [v22 objectForKeyedSubscript:@"item-metadata"];
    v24 = [v23 objectForKeyedSubscript:@"item-is-start-item"];
    LODWORD(v15) = [v24 BOOLValue];

    if (v15)
    {
      v38 = @"queue-section-id";
      v25 = [v19 payload];
      v26 = [v25 objectForKeyedSubscript:@"queue-section-id"];
      v39 = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v28 = [v5 findPreviousEventWithType:@"queue-add" matchingPayload:v27];

      v29 = [*(a1 + 32) _validateAndBuildContextWithEvent:v28];
      if (v29)
      {
        v30 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C5C61000, v30, OS_LOG_TYPE_DEFAULT, "MPCSiriAnalyticsEventConsumer: AFAnalyticsEventTypeMusicPlaybackReady", buf, 2u);
        }

        v31 = [MEMORY[0x1E698D0C8] sharedAnalytics];
        if (v14)
        {
          [v14 monotonicTime];
          v32 = v36;
        }

        else
        {
          v32 = 0;
        }

        [v31 logEventWithType:2901 machAbsoluteTime:v32 context:v29];
      }
    }

    v7 = v34;
  }

  return 1;
}

uint64_t __56__MPCSiriAnalyticsEventConsumer_subscribeToEventStream___block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v50[2] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = [v4 payload];
  v7 = [v6 objectForKeyedSubscript:@"queue-section-id"];

  v8 = [v4 payload];
  v37 = [v8 objectForKeyedSubscript:@"queue-item-id"];

  v49[0] = @"queue-section-id";
  v49[1] = @"queue-item-id";
  v50[0] = v7;
  v50[1] = v37;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];
  v10 = [v5 findPreviousEventWithType:@"item-begin" matchingPayload:v9];

  v11 = [v10 payload];
  v12 = [v11 objectForKeyedSubscript:@"item-metadata"];
  v13 = [v12 objectForKeyedSubscript:@"item-is-start-item"];
  LODWORD(v9) = [v13 BOOLValue];

  if (v9)
  {
    v14 = [v5 cursorUntilEvent:v10];
    if (![v14 countOfPreviousEventsWithType:@"item-first-audio-frame" matchingPayload:0])
    {
      v47 = @"queue-section-id";
      v48 = v7;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v35 = [v5 findPreviousEventWithType:@"queue-add" matchingPayload:v15];

      v16 = [*(a1 + 32) _validateAndBuildContextWithEvent:v35];
      v17 = [v16 mutableCopy];

      if (v17)
      {
        v45[0] = @"queue-section-id";
        v45[1] = @"item-start-item-id";
        v46[0] = v7;
        v46[1] = v37;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];
        v33 = [v14 findPreviousEventWithType:@"item-hls-stream-begin" matchingPayload:v18];

        if (v33)
        {
          [v17 setObject:@"HLS" forKeyedSubscript:@"contentType"];
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          *&buf[24] = __Block_byref_object_copy__4141;
          v43 = __Block_byref_object_dispose__4142;
          v44 = 0;
          v40[0] = @"queue-section-id";
          v40[1] = @"queue-item-id";
          v41[0] = v7;
          v41[1] = v37;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __56__MPCSiriAnalyticsEventConsumer_subscribeToEventStream___block_invoke_22;
          v38[3] = &unk_1E82322F0;
          v38[4] = buf;
          [v14 enumeratePreviousEventsWithType:@"audio-format-changed" matchingPayload:v19 usingBlock:v38];

          v20 = *(*&buf[8] + 40);
          if (v20)
          {
            v21 = [v20 analyticsFormatInfo];
            [v17 addEntriesFromDictionary:v21];
          }

          _Block_object_dispose(buf, 8);
        }

        else
        {
          [v17 setObject:@"CRABS" forKeyedSubscript:@"contentType"];
        }

        v22 = [v4 payload];
        v23 = [v22 objectForKeyedSubscript:@"event-time-offset"];
        [v23 doubleValue];
        v25 = v24;

        if (v4)
        {
          [v4 monotonicTime];
        }

        else
        {
          v43 = 0;
          memset(buf, 0, sizeof(buf));
        }

        info = 0;
        mach_timebase_info(&info);
        v26 = info.denom * (v25 * 1000000000.0) / info.numer + *&buf[8];
        v27 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = v26;
          *&buf[12] = 2114;
          *&buf[14] = v17;
          _os_log_impl(&dword_1C5C61000, v27, OS_LOG_TYPE_DEFAULT, "MPCSiriAnalyticsEventConsumer: AFAnalyticsEventTypeMusicPlaybackStart %lld %{public}@", buf, 0x16u);
        }

        v28 = [MEMORY[0x1E698D0C8] sharedAnalytics];
        [v28 logEventWithType:2905 machAbsoluteTime:v26 context:v17];

        v29 = [v17 objectForKeyedSubscript:@"refId"];
        v30 = *(a1 + 32);
        v31 = *(v30 + 16);
        *(v30 + 16) = v29;
      }
    }
  }

  return 1;
}

uint64_t __56__MPCSiriAnalyticsEventConsumer_subscribeToEventStream___block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"item-metadata"];
  v9 = [v8 objectForKeyedSubscript:@"item-is-start-item"];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v11 = [v5 payload];
    v12 = [v11 objectForKeyedSubscript:@"queue-section-id"];

    v13 = [v5 payload];
    v14 = [v13 objectForKeyedSubscript:@"queue-item-id"];

    v25[0] = @"asset-load-end";
    v25[1] = @"session-reset";
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v16 = [v6 findPreviousEventWithTypes:v15 matchingPayload:0];

    if (v16)
    {
      v17 = [v16 type];
      v18 = [v17 isEqualToString:@"session-reset"];

      if ((v18 & 1) == 0)
      {
        v19 = [v16 payload];
        v20 = [v19 objectForKeyedSubscript:@"queue-section-id"];
        if ([v20 isEqualToString:v12])
        {
          v21 = [v16 payload];
          v22 = [v21 objectForKeyedSubscript:@"queue-item-id"];
          v24 = [v22 isEqualToString:v14];

          if (v24)
          {
            [*(a1 + 32) _handleAssetLoadEnd:v16 cursor:v6];
          }
        }

        else
        {
        }
      }
    }
  }

  return 1;
}

uint64_t __56__MPCSiriAnalyticsEventConsumer_subscribeToEventStream___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"queue-section-id"];

  v9 = [v5 payload];
  v10 = [v9 objectForKeyedSubscript:@"queue-item-id"];

  v26[0] = @"item-begin";
  v26[1] = @"session-reset";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v12 = [v6 findPreviousEventWithTypes:v11 matchingPayload:0];

  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = [v12 type];
  v14 = [v13 isEqualToString:@"session-reset"];

  if (v14)
  {
    goto LABEL_11;
  }

  v15 = [v12 type];
  if (([v15 isEqualToString:@"item-begin"] & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  v16 = [v12 payload];
  v17 = [v16 objectForKeyedSubscript:@"queue-section-id"];
  if (([v17 isEqualToString:v8] & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  v18 = [v12 payload];
  v25 = [v18 objectForKeyedSubscript:@"queue-item-id"];
  if (![v25 isEqualToString:v10])
  {

    goto LABEL_9;
  }

  v23 = [v5 payload];
  v21 = [v23 objectForKeyedSubscript:@"item-metadata"];
  [v21 objectForKeyedSubscript:@"item-is-start-item"];
  v19 = v22 = v18;
  v24 = [v19 BOOLValue];

  if (v24)
  {
    [*(a1 + 32) _handleAssetLoadEnd:v5 cursor:v6];
  }

LABEL_11:

  return 1;
}

void __56__MPCSiriAnalyticsEventConsumer_subscribeToEventStream___block_invoke_22(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 payload];
  v9 = [v5 objectForKeyedSubscript:@"item-audio-format-metadata"];

  v6 = [v9 objectForKeyedSubscript:@"active-format"];
  v7 = [v9 objectForKeyedSubscript:@"target-format"];
  v8 = v7;
  if (v6)
  {
    *a3 = 1;
    v8 = v6;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v8);
}

- (MPCSiriAnalyticsEventConsumer)initWithPlaybackEngine:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MPCSiriAnalyticsEventConsumer;
  v5 = [(MPCSiriAnalyticsEventConsumer *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playbackEngine, v4);
    v7 = dispatch_queue_create("com.apple.MediaPlaybackCore.SiriAnalyticsEventConsumer.eventQueue", 0);
    eventQueue = v6->_eventQueue;
    v6->_eventQueue = v7;

    v9 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobileipod"];
    mobileipodDefaults = v6->_mobileipodDefaults;
    v6->_mobileipodDefaults = v9;
  }

  return v6;
}

@end