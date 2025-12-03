@interface MPCPlaybackEngineLoggingConsumer
- (BOOL)_logAccountEvent:(id)event subscription:(id)subscription cursor:(id)cursor;
- (__CFString)_symbolForCommand:(__CFString *)result;
- (id)_playbackBarWithElapsedTime:(double)time duration:(double)duration;
- (void)_chartWithLevel:(void *)level type:;
- (void)_updateChartWithEvent:(uint64_t)event;
- (void)subscribeToEventStream:(id)stream;
- (void)unsubscribeFromEventStream:(id)stream;
@end

@implementation MPCPlaybackEngineLoggingConsumer

- (id)_playbackBarWithElapsedTime:(double)time duration:(double)duration
{
  if (duration <= 0.0)
  {
    v8 = 0;
  }

  else
  {
    if (_playbackBarWithElapsedTime_duration__onceToken != -1)
    {
      dispatch_once(&_playbackBarWithElapsedTime_duration__onceToken, &__block_literal_global_532);
    }

    v6 = MEMORY[0x1E696AD60];
    v7 = [@" " stringByPaddingToLength:29 withString:@"━" startingAtIndex:0];
    v8 = [v6 stringWithString:v7];

    if (time >= duration)
    {
      timeCopy = duration;
    }

    else
    {
      timeCopy = time;
    }

    [v8 insertString:@"●" atIndex:(round(timeCopy / duration * 28.0) + 1.0)];
    [v8 appendString:@" -"];
    if (duration - time >= 0.0)
    {
      v10 = duration - time;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = [_playbackBarWithElapsedTime_duration____elapsedTimeFormatter stringFromSeconds:time];
    [v8 insertString:v11 atIndex:0];

    v12 = [_playbackBarWithElapsedTime_duration____remainingTimeFormatter stringFromSeconds:v10];
    [v8 appendString:v12];
  }

  return v8;
}

uint64_t __73__MPCPlaybackEngineLoggingConsumer__playbackBarWithElapsedTime_duration___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E6988158]);
  v1 = _playbackBarWithElapsedTime_duration____elapsedTimeFormatter;
  _playbackBarWithElapsedTime_duration____elapsedTimeFormatter = v0;

  [_playbackBarWithElapsedTime_duration____elapsedTimeFormatter setStyle:3];
  v2 = objc_alloc_init(MEMORY[0x1E6988158]);
  v3 = _playbackBarWithElapsedTime_duration____remainingTimeFormatter;
  _playbackBarWithElapsedTime_duration____remainingTimeFormatter = v2;

  v4 = _playbackBarWithElapsedTime_duration____remainingTimeFormatter;

  return [v4 setStyle:3];
}

- (BOOL)_logAccountEvent:(id)event subscription:(id)subscription cursor:(id)cursor
{
  v68 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  subscriptionCopy = subscription;
  payload = [eventCopy payload];
  v10 = [payload objectForKeyedSubscript:@"account-id"];

  payload2 = [eventCopy payload];
  v12 = [payload2 objectForKeyedSubscript:@"account-metadata"];

  v13 = [v12 objectForKeyedSubscript:@"store-account-id"];
  v53 = [v12 objectForKeyedSubscript:@"store-front-id"];
  v14 = [v12 objectForKeyedSubscript:@"delegated"];
  bOOLValue = [v14 BOOLValue];

  v16 = [v12 objectForKeyedSubscript:@"private-listening-enabled"];
  bOOLValue2 = [v16 BOOLValue];

  v17 = MSVLogDateFormatter();
  date = [eventCopy date];
  v54 = [v17 stringFromDate:date];

  type = [eventCopy type];
  LODWORD(date) = [type isEqualToString:@"account-begin"];

  if (date)
  {
    v20 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      streamID = [subscriptionCopy streamID];
      *buf = 138544386;
      v56 = v54;
      v57 = 2114;
      v58 = streamID;
      v59 = 1024;
      threadPriority = [eventCopy threadPriority];
      v61 = 2114;
      v62 = v20;
      v63 = 2114;
      *v64 = v10;
      v23 = "|%{public}@ %{public}@ %2i %{public}@􀉯 ACCOUNT BEGIN              %{public}@";
LABEL_7:
      _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEFAULT, v23, buf, 0x30u);
    }
  }

  else
  {
    type2 = [eventCopy type];
    v25 = [type2 isEqualToString:@"account-update"];

    if (!v25)
    {
      goto LABEL_9;
    }

    v20 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      streamID = [subscriptionCopy streamID];
      *buf = 138544386;
      v56 = v54;
      v57 = 2114;
      v58 = streamID;
      v59 = 1024;
      threadPriority = [eventCopy threadPriority];
      v61 = 2114;
      v62 = v20;
      v63 = 2114;
      *v64 = v10;
      v23 = "|%{public}@ %{public}@ %2i %{public}@􀉷 ACCOUNT UPDATE             %{public}@";
      goto LABEL_7;
    }
  }

LABEL_9:
  v26 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v27 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    streamID2 = [subscriptionCopy streamID];
    threadPriority2 = [eventCopy threadPriority];
    unsignedLongLongValue = [v13 unsignedLongLongValue];
    *buf = 138544899;
    v56 = v54;
    v57 = 2114;
    v58 = streamID2;
    v59 = 1024;
    threadPriority = threadPriority2;
    v61 = 2114;
    v62 = v26;
    v63 = 2049;
    *v64 = unsignedLongLongValue;
    *&v64[8] = 2114;
    v65 = v53;
    v66 = 1024;
    v67 = bOOLValue;
    _os_log_impl(&dword_1C5C61000, v27, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ store-id: %{private}llu; storefront: %{public}@; delegated: %{BOOL}u", buf, 0x40u);
  }

  v31 = [v12 objectForKeyedSubscript:@"household-id"];
  if ([v31 length])
  {
    v32 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      streamID3 = [subscriptionCopy streamID];
      threadPriority3 = [eventCopy threadPriority];
      *buf = 138544386;
      v56 = v54;
      v57 = 2114;
      v58 = streamID3;
      v59 = 1024;
      threadPriority = threadPriority3;
      v61 = 2114;
      v62 = v26;
      v63 = 2114;
      *v64 = v31;
      _os_log_impl(&dword_1C5C61000, v32, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ household-id: %{public}@", buf, 0x30u);
    }
  }

  v35 = [v12 objectForKeyedSubscript:@"subscription-status"];
  v36 = [v12 objectForKeyedSubscript:@"explicit-allowed"];
  bOOLValue3 = [v36 BOOLValue];

  if (v35)
  {
    v37 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      [subscriptionCopy streamID];
      v38 = v26;
      v39 = v13;
      v40 = subscriptionCopy;
      v42 = v41 = v10;
      threadPriority4 = [eventCopy threadPriority];
      *buf = 138544386;
      v56 = v54;
      v57 = 2114;
      v58 = v42;
      v59 = 1024;
      threadPriority = threadPriority4;
      v61 = 2114;
      v62 = v38;
      v63 = 2114;
      *v64 = v35;
      _os_log_impl(&dword_1C5C61000, v37, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ subscription: %{public}@", buf, 0x30u);

      v10 = v41;
      subscriptionCopy = v40;
      v13 = v39;
      v26 = v38;
    }
  }

  v44 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    [subscriptionCopy streamID];
    v45 = v13;
    v46 = subscriptionCopy;
    v48 = v47 = v10;
    threadPriority5 = [eventCopy threadPriority];
    *buf = 138544642;
    v56 = v54;
    v57 = 2114;
    v58 = v48;
    v59 = 1024;
    threadPriority = threadPriority5;
    v61 = 2114;
    v62 = v26;
    v63 = 1024;
    *v64 = bOOLValue2;
    *&v64[4] = 1024;
    *&v64[6] = bOOLValue3;
    _os_log_impl(&dword_1C5C61000, v44, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ private-listening: %{BOOL}u; explicitContentAllowed: %{BOOL}u", buf, 0x32u);

    v10 = v47;
    subscriptionCopy = v46;
    v13 = v45;
  }

  return 1;
}

- (void)_chartWithLevel:(void *)level type:
{
  levelCopy = level;
  if (level)
  {
    v2 = MSVTimelineChartPrefix();
    v3 = levelCopy[8];
    if (v3 == 2)
    {
      v4 = @"🟧";
      v5 = @"🟩";
    }

    else if (v3 == 1)
    {
      v4 = @"⬜️";
      v5 = @"🟧";
    }

    else
    {
      if (v3)
      {
        v4 = @"⬛️";
      }

      else
      {
        v4 = @"⬜️";
      }

      v5 = @"🟥";
    }

    if (*(levelCopy + 56))
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    v7 = v6;
    levelCopy = [(__CFString *)v7 stringByAppendingString:v2];
  }

  return levelCopy;
}

- (void)unsubscribeFromEventStream:(id)stream
{
  v24 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  subscription = self->_subscription;
  self->_subscription = 0;

  lastTimeControlStatusEvent = self->_lastTimeControlStatusEvent;
  self->_lastTimeControlStatusEvent = 0;

  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MSVLogDateFormatter();
    v9 = MEMORY[0x1E695DF00];
    MSVGetProcessLaunchTime();
    v10 = [v9 dateWithTimeIntervalSince1970:?];
    v11 = [v8 stringFromDate:v10];
    streamID = [streamCopy streamID];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    infoDictionary = [mainBundle infoDictionary];
    v15 = [infoDictionary objectForKeyedSubscript:*MEMORY[0x1E695E4F8]];
    v16 = 138544130;
    v17 = v11;
    v18 = 2114;
    v19 = streamID;
    v20 = 2114;
    v21 = v15;
    v22 = 1024;
    v23 = getpid();
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@       ╘═══ 🪫 STREAM STOP ════════════ %{public}@ [%d] ══════════════════════════", &v16, 0x26u);
  }
}

- (void)subscribeToEventStream:(id)stream
{
  v3 = MEMORY[0x1EEE9AC00](self);
  v5 = v4;
  v6 = v3;
  v408 = *MEMORY[0x1E69E9840];
  v7 = v4;
  objc_storeStrong((v6 + 72), v5);
  *(v6 + 64) = -1;
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MSVLogDateFormatter();
    v10 = MEMORY[0x1E695DF00];
    MSVGetProcessLaunchTime();
    v11 = [v10 dateWithTimeIntervalSince1970:?];
    v12 = [v9 stringFromDate:v11];
    streamID = [v7 streamID];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    infoDictionary = [mainBundle infoDictionary];
    v16 = [infoDictionary objectForKeyedSubscript:*MEMORY[0x1E695E4F8]];
    *buf = 138544130;
    v401 = v12;
    v402 = 2114;
    v403 = streamID;
    v404 = 2114;
    v405 = v16;
    v406 = 1024;
    v407 = getpid();
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@       ╒═══ 🔋 STREAM START ═══════════ %{public}@ [%d] ══════════════════════════", buf, 0x26u);
  }

  v17 = *(v6 + 72);
  v398[0] = MEMORY[0x1E69E9820];
  v398[1] = 3221225472;
  v398[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke;
  v398[3] = &unk_1E8231AC8;
  v398[4] = v6;
  v18 = v7;
  v399 = v18;
  [v17 subscribeToEventType:@"session-will-begin" handler:v398];
  v19 = *(v6 + 72);
  v396[0] = MEMORY[0x1E69E9820];
  v396[1] = 3221225472;
  v396[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_6;
  v396[3] = &unk_1E8231AC8;
  v396[4] = v6;
  v20 = v18;
  v397 = v20;
  [v19 subscribeToEventType:@"session-begin" handler:v396];
  v21 = *(v6 + 72);
  v394[0] = MEMORY[0x1E69E9820];
  v394[1] = 3221225472;
  v394[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_7;
  v394[3] = &unk_1E8231AC8;
  v394[4] = v6;
  v22 = v20;
  v395 = v22;
  [v21 subscribeToEventType:@"session-reuse" handler:v394];
  v23 = *(v6 + 72);
  v392[0] = MEMORY[0x1E69E9820];
  v392[1] = 3221225472;
  v392[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_8;
  v392[3] = &unk_1E8231AC8;
  v392[4] = v6;
  v24 = v22;
  v393 = v24;
  [v23 subscribeToEventType:@"session-end" handler:v392];
  v25 = *(v6 + 72);
  v390[0] = MEMORY[0x1E69E9820];
  v390[1] = 3221225472;
  v390[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_9;
  v390[3] = &unk_1E8231AC8;
  v390[4] = v6;
  v26 = v24;
  v391 = v26;
  [v25 subscribeToEventType:@"session-restore-begin" handler:v390];
  v27 = *(v6 + 72);
  v388[0] = MEMORY[0x1E69E9820];
  v388[1] = 3221225472;
  v388[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_10;
  v388[3] = &unk_1E8231AC8;
  v388[4] = v6;
  v28 = v26;
  v389 = v28;
  [v27 subscribeToEventType:@"session-restore-end" handler:v388];
  v29 = *(v6 + 72);
  v386[0] = MEMORY[0x1E69E9820];
  v386[1] = 3221225472;
  v386[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_15;
  v386[3] = &unk_1E8231AC8;
  v386[4] = v6;
  v30 = v28;
  v387 = v30;
  [v29 subscribeToEventType:@"session-migrate-begin" handler:v386];
  v31 = *(v6 + 72);
  v384[0] = MEMORY[0x1E69E9820];
  v384[1] = 3221225472;
  v384[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_16;
  v384[3] = &unk_1E8231AC8;
  v384[4] = v6;
  v32 = v30;
  v385 = v32;
  [v31 subscribeToEventType:@"session-migrate-end" handler:v384];
  v33 = *(v6 + 72);
  v382[0] = MEMORY[0x1E69E9820];
  v382[1] = 3221225472;
  v382[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_17;
  v382[3] = &unk_1E8231AC8;
  v382[4] = v6;
  v34 = v32;
  v383 = v34;
  [v33 subscribeToEventType:@"session-reset" handler:v382];
  v35 = *(v6 + 72);
  v380[0] = MEMORY[0x1E69E9820];
  v380[1] = 3221225472;
  v380[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_18;
  v380[3] = &unk_1E8231AC8;
  v380[4] = v6;
  v36 = v34;
  v381 = v36;
  [v35 subscribeToEventType:@"application-termination" handler:v380];
  v37 = *(v6 + 72);
  v378[0] = MEMORY[0x1E69E9820];
  v378[1] = 3221225472;
  v378[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_19;
  v378[3] = &unk_1E8231AC8;
  v378[4] = v6;
  v38 = v36;
  v379 = v38;
  [v37 subscribeToEventType:@"application-foreground" handler:v378];
  v39 = *(v6 + 72);
  v376[0] = MEMORY[0x1E69E9820];
  v376[1] = 3221225472;
  v376[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_20;
  v376[3] = &unk_1E8231AC8;
  v376[4] = v6;
  v40 = v38;
  v377 = v40;
  [v39 subscribeToEventType:@"application-background" handler:v376];
  v41 = *(v6 + 72);
  v374[0] = MEMORY[0x1E69E9820];
  v374[1] = 3221225472;
  v374[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_21;
  v374[3] = &unk_1E8231AC8;
  v374[4] = v6;
  v42 = v40;
  v375 = v42;
  [v41 subscribeToEventType:@"device-changed" handler:v374];
  v43 = *(v6 + 72);
  v372[0] = MEMORY[0x1E69E9820];
  v372[1] = 3221225472;
  v372[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_24;
  v372[3] = &unk_1E8231AC8;
  v372[4] = v6;
  v44 = v42;
  v373 = v44;
  [v43 subscribeToEventType:@"network-reachability-changed" handler:v372];
  v45 = *(v6 + 72);
  v370[0] = MEMORY[0x1E69E9820];
  v370[1] = 3221225472;
  v370[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_25;
  v370[3] = &unk_1E8231AC8;
  v370[4] = v6;
  v46 = v44;
  v371 = v46;
  [v45 subscribeToEventType:@"network-type-changed" handler:v370];
  v47 = *(v6 + 72);
  v368[0] = MEMORY[0x1E69E9820];
  v368[1] = 3221225472;
  v368[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_36;
  v368[3] = &unk_1E8231AC8;
  v368[4] = v6;
  v48 = v46;
  v369 = v48;
  [v47 subscribeToEventType:@"account-begin" handler:v368];
  v49 = *(v6 + 72);
  v366[0] = MEMORY[0x1E69E9820];
  v366[1] = 3221225472;
  v366[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_2;
  v366[3] = &unk_1E8231AC8;
  v366[4] = v6;
  v50 = v48;
  v367 = v50;
  [v49 subscribeToEventType:@"account-update" handler:v366];
  v51 = *(v6 + 72);
  v364[0] = MEMORY[0x1E69E9820];
  v364[1] = 3221225472;
  v364[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_3;
  v364[3] = &unk_1E8231AC8;
  v364[4] = v6;
  v52 = v50;
  v365 = v52;
  [v51 subscribeToEventType:@"remote-control-delivered" handler:v364];
  v53 = *(v6 + 72);
  v362[0] = MEMORY[0x1E69E9820];
  v362[1] = 3221225472;
  v362[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_37;
  v362[3] = &unk_1E8231AC8;
  v362[4] = v6;
  v54 = v52;
  v363 = v54;
  [v53 subscribeToEventType:@"remote-control-begin" handler:v362];
  v55 = *(v6 + 72);
  v360[0] = MEMORY[0x1E69E9820];
  v360[1] = 3221225472;
  v360[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_38;
  v360[3] = &unk_1E8231AC8;
  v360[4] = v6;
  v56 = v54;
  v361 = v56;
  [v55 subscribeToEventType:@"remote-control-timeout" handler:v360];
  v57 = *(v6 + 72);
  v358[0] = MEMORY[0x1E69E9820];
  v358[1] = 3221225472;
  v358[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_54;
  v358[3] = &unk_1E8231AC8;
  v358[4] = v6;
  v58 = v56;
  v359 = v58;
  [v57 subscribeToEventType:@"remote-control-end" handler:v358];
  v59 = *(v6 + 72);
  v356[0] = MEMORY[0x1E69E9820];
  v356[1] = 3221225472;
  v356[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_55;
  v356[3] = &unk_1E8231AC8;
  v356[4] = v6;
  v60 = v58;
  v357 = v60;
  [v59 subscribeToEventType:@"remote-control-commands-changed" handler:v356];
  v61 = *(v6 + 72);
  v354[0] = MEMORY[0x1E69E9820];
  v354[1] = 3221225472;
  v354[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_95;
  v354[3] = &unk_1E8231AC8;
  v354[4] = v6;
  v62 = v60;
  v355 = v62;
  [v61 subscribeToEventType:@"queue-add" handler:v354];
  v63 = *(v6 + 72);
  v352[0] = MEMORY[0x1E69E9820];
  v352[1] = 3221225472;
  v352[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_102;
  v352[3] = &unk_1E8231AC8;
  v352[4] = v6;
  v64 = v62;
  v353 = v64;
  [v63 subscribeToEventType:@"queue-load-begin" handler:v352];
  v65 = *(v6 + 72);
  v350[0] = MEMORY[0x1E69E9820];
  v350[1] = 3221225472;
  v350[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_103;
  v350[3] = &unk_1E8231AC8;
  v350[4] = v6;
  v66 = v64;
  v351 = v66;
  [v65 subscribeToEventType:@"queue-load-end" handler:v350];
  v67 = *(v6 + 72);
  v348[0] = MEMORY[0x1E69E9820];
  v348[1] = 3221225472;
  v348[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_104;
  v348[3] = &unk_1E8231AC8;
  v348[4] = v6;
  v68 = v66;
  v349 = v68;
  [v67 subscribeToEventType:@"container-begin" handler:v348];
  v69 = *(v6 + 72);
  v346[0] = MEMORY[0x1E69E9820];
  v346[1] = 3221225472;
  v346[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_105;
  v346[3] = &unk_1E8231AC8;
  v346[4] = v6;
  v70 = v68;
  v347 = v70;
  [v69 subscribeToEventType:@"container-end" handler:v346];
  v71 = *(v6 + 72);
  v344[0] = MEMORY[0x1E69E9820];
  v344[1] = 3221225472;
  v344[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_106;
  v344[3] = &unk_1E8231AC8;
  v344[4] = v6;
  v72 = v70;
  v345 = v72;
  [v71 subscribeToEventType:@"item-begin" handler:v344];
  v73 = *(v6 + 72);
  v342[0] = MEMORY[0x1E69E9820];
  v342[1] = 3221225472;
  v342[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_107;
  v342[3] = &unk_1E8231AC8;
  v342[4] = v6;
  v74 = v72;
  v343 = v74;
  [v73 subscribeToEventType:@"item-update" handler:v342];
  v75 = *(v6 + 72);
  v340[0] = MEMORY[0x1E69E9820];
  v340[1] = 3221225472;
  v340[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_108;
  v340[3] = &unk_1E8231AC8;
  v340[4] = v6;
  v76 = v74;
  v341 = v76;
  [v75 subscribeToEventType:@"item-position-jump" handler:v340];
  v77 = *(v6 + 72);
  v338[0] = MEMORY[0x1E69E9820];
  v338[1] = 3221225472;
  v338[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_109;
  v338[3] = &unk_1E8231AC8;
  v338[4] = v6;
  v78 = v76;
  v339 = v78;
  [v77 subscribeToEventType:@"item-position-tick" handler:v338];
  v79 = *(v6 + 72);
  v336[0] = MEMORY[0x1E69E9820];
  v336[1] = 3221225472;
  v336[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_110;
  v336[3] = &unk_1E8231AC8;
  v336[4] = v6;
  v80 = v78;
  v337 = v80;
  [v79 subscribeToEventType:@"item-pause" handler:v336];
  v81 = *(v6 + 72);
  v334[0] = MEMORY[0x1E69E9820];
  v334[1] = 3221225472;
  v334[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_111;
  v334[3] = &unk_1E8231AC8;
  v334[4] = v6;
  v82 = v80;
  v335 = v82;
  [v81 subscribeToEventType:@"item-rate-changed" handler:v334];
  v83 = *(v6 + 72);
  v332[0] = MEMORY[0x1E69E9820];
  v332[1] = 3221225472;
  v332[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_112;
  v332[3] = &unk_1E8231AC8;
  v332[4] = v6;
  v84 = v82;
  v333 = v84;
  [v83 subscribeToEventType:@"item-first-audio-frame" handler:v332];
  if (MSVDeviceOSIsInternalInstall())
  {
    v85 = *(v6 + 72);
    v330[0] = MEMORY[0x1E69E9820];
    v330[1] = 3221225472;
    v330[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_113;
    v330[3] = &unk_1E8231AC8;
    v330[4] = v6;
    v331 = v84;
    [v85 subscribeToEventType:@"item-ready-for-metrics" handler:v330];
  }

  v86 = *(v6 + 72);
  v328[0] = MEMORY[0x1E69E9820];
  v328[1] = 3221225472;
  v328[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_114;
  v328[3] = &unk_1E8231AC8;
  v328[4] = v6;
  v87 = v84;
  v329 = v87;
  [v86 subscribeToEventType:@"item-resume" handler:v328];
  v88 = *(v6 + 72);
  v326[0] = MEMORY[0x1E69E9820];
  v326[1] = 3221225472;
  v326[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_115;
  v326[3] = &unk_1E8231AC8;
  v326[4] = v6;
  v89 = v87;
  v327 = v89;
  [v88 subscribeToEventType:@"item-ready-to-play" handler:v326];
  v90 = *(v6 + 72);
  v324[0] = MEMORY[0x1E69E9820];
  v324[1] = 3221225472;
  v324[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_116;
  v324[3] = &unk_1E8231AC8;
  v324[4] = v6;
  v91 = v89;
  v325 = v91;
  [v90 subscribeToEventType:@"item-buffer-ready" handler:v324];
  v92 = *(v6 + 72);
  v322[0] = MEMORY[0x1E69E9820];
  v322[1] = 3221225472;
  v322[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_117;
  v322[3] = &unk_1E8231AC8;
  v322[4] = v6;
  v93 = v91;
  v323 = v93;
  [v92 subscribeToEventType:@"item-buffer-stall" handler:v322];
  v94 = *(v6 + 72);
  v320[0] = MEMORY[0x1E69E9820];
  v320[1] = 3221225472;
  v320[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_118;
  v320[3] = &unk_1E8231AC8;
  v320[4] = v6;
  v95 = v93;
  v321 = v95;
  [v94 subscribeToEventType:@"item-buffer-finish" handler:v320];
  v96 = *(v6 + 72);
  v318[0] = MEMORY[0x1E69E9820];
  v318[1] = 3221225472;
  v318[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_119;
  v318[3] = &unk_1E8231AC8;
  v318[4] = v6;
  v97 = v95;
  v319 = v97;
  [v96 subscribeToEventType:@"item-key-request-begin" handler:v318];
  v98 = *(v6 + 72);
  v316[0] = MEMORY[0x1E69E9820];
  v316[1] = 3221225472;
  v316[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_120;
  v316[3] = &unk_1E8231AC8;
  v316[4] = v6;
  v99 = v97;
  v317 = v99;
  [v98 subscribeToEventType:@"item-key-request-end" handler:v316];
  v100 = *(v6 + 72);
  v314[0] = MEMORY[0x1E69E9820];
  v314[1] = 3221225472;
  v314[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_121;
  v314[3] = &unk_1E8231AC8;
  v314[4] = v6;
  v101 = v99;
  v315 = v101;
  [v100 subscribeToEventType:@"item-timed-metadata-ping" handler:v314];
  v102 = *(v6 + 72);
  v312[0] = MEMORY[0x1E69E9820];
  v312[1] = 3221225472;
  v312[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_122;
  v312[3] = &unk_1E8231AC8;
  v312[4] = v6;
  v103 = v101;
  v313 = v103;
  [v102 subscribeToEventType:@"item-end" handler:v312];
  v104 = *(v6 + 72);
  v310[0] = MEMORY[0x1E69E9820];
  v310[1] = 3221225472;
  v310[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_123;
  v310[3] = &unk_1E8231AC8;
  v310[4] = v6;
  v105 = v103;
  v311 = v105;
  [v104 subscribeToEventType:@"audio-format-changed" handler:v310];
  v106 = *(v6 + 72);
  v308[0] = MEMORY[0x1E69E9820];
  v308[1] = 3221225472;
  v308[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_124;
  v308[3] = &unk_1E8231AC8;
  v308[4] = v6;
  v107 = v105;
  v309 = v107;
  [v106 subscribeToEventType:@"asset-selection" handler:v308];
  v108 = *(v6 + 72);
  v306[0] = MEMORY[0x1E69E9820];
  v306[1] = 3221225472;
  v306[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_129;
  v306[3] = &unk_1E8231AC8;
  v306[4] = v6;
  v109 = v107;
  v307 = v109;
  [v108 subscribeToEventType:@"audio-format-selection" handler:v306];
  v110 = *(v6 + 72);
  v304[0] = MEMORY[0x1E69E9820];
  v304[1] = 3221225472;
  v304[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_133;
  v304[3] = &unk_1E8231AC8;
  v304[4] = v6;
  v111 = v109;
  v305 = v111;
  [v110 subscribeToEventType:@"asset-load-begin" handler:v304];
  v112 = *(v6 + 72);
  v302[0] = MEMORY[0x1E69E9820];
  v302[1] = 3221225472;
  v302[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_134;
  v302[3] = &unk_1E8231AC8;
  v302[4] = v6;
  v113 = v111;
  v303 = v113;
  [v112 subscribeToEventType:@"asset-load-end" handler:v302];
  v114 = *(v6 + 72);
  v300[0] = MEMORY[0x1E69E9820];
  v300[1] = 3221225472;
  v300[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_135;
  v300[3] = &unk_1E8231AC8;
  v300[4] = v6;
  v115 = v113;
  v301 = v115;
  [v114 subscribeToEventType:@"item-configuration-begin" handler:v300];
  v116 = *(v6 + 72);
  v298[0] = MEMORY[0x1E69E9820];
  v298[1] = 3221225472;
  v298[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_136;
  v298[3] = &unk_1E8231AC8;
  v298[4] = v6;
  v117 = v115;
  v299 = v117;
  [v116 subscribeToEventType:@"item-configuration-end" handler:v298];
  v118 = *(v6 + 72);
  v296[0] = MEMORY[0x1E69E9820];
  v296[1] = 3221225472;
  v296[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_138;
  v296[3] = &unk_1E8231AC8;
  v296[4] = v6;
  v119 = v117;
  v297 = v119;
  [v118 subscribeToEventType:@"item-failed" handler:v296];
  v120 = *(v6 + 72);
  v294[0] = MEMORY[0x1E69E9820];
  v294[1] = 3221225472;
  v294[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_139;
  v294[3] = &unk_1E8231AC8;
  v294[4] = v6;
  v121 = v119;
  v295 = v121;
  [v120 subscribeToEventType:@"item-placeholder-begin" handler:v294];
  v122 = *(v6 + 72);
  v292[0] = MEMORY[0x1E69E9820];
  v292[1] = 3221225472;
  v292[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_140;
  v292[3] = &unk_1E8231AC8;
  v292[4] = v6;
  v123 = v121;
  v293 = v123;
  [v122 subscribeToEventType:@"item-placeholder-end" handler:v292];
  v124 = *(v6 + 72);
  v290[0] = MEMORY[0x1E69E9820];
  v290[1] = 3221225472;
  v290[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_141;
  v290[3] = &unk_1E8231AC8;
  v290[4] = v6;
  v125 = v123;
  v291 = v125;
  [v124 subscribeToEventType:@"item-hls-stream-begin" handler:v290];
  v126 = *(v6 + 72);
  v288[0] = MEMORY[0x1E69E9820];
  v288[1] = 3221225472;
  v288[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_142;
  v288[3] = &unk_1E8231AC8;
  v288[4] = v6;
  v127 = v125;
  v289 = v127;
  [v126 subscribeToEventType:@"item-hls-stream-end" handler:v288];
  v128 = *(v6 + 72);
  v286[0] = MEMORY[0x1E69E9820];
  v286[1] = 3221225472;
  v286[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_143;
  v286[3] = &unk_1E8231AC8;
  v286[4] = v6;
  v129 = v127;
  v287 = v129;
  [v128 subscribeToEventType:@"item-hls-timed-metadata-begin" handler:v286];
  v130 = *(v6 + 72);
  v284[0] = MEMORY[0x1E69E9820];
  v284[1] = 3221225472;
  v284[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_144;
  v284[3] = &unk_1E8231AC8;
  v284[4] = v6;
  v131 = v129;
  v285 = v131;
  [v130 subscribeToEventType:@"item-hls-timed-metadata-end" handler:v284];
  v132 = *(v6 + 72);
  v282[0] = MEMORY[0x1E69E9820];
  v282[1] = 3221225472;
  v282[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_145;
  v282[3] = &unk_1E8231AC8;
  v282[4] = v6;
  v133 = v131;
  v283 = v133;
  [v132 subscribeToEventType:@"item-transition-created" handler:v282];
  v134 = *(v6 + 72);
  v280[0] = MEMORY[0x1E69E9820];
  v280[1] = 3221225472;
  v280[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_211;
  v280[3] = &unk_1E8231AC8;
  v280[4] = v6;
  v135 = v133;
  v281 = v135;
  [v134 subscribeToEventType:@"item-transition-cancelled" handler:v280];
  v136 = *(v6 + 72);
  v278[0] = MEMORY[0x1E69E9820];
  v278[1] = 3221225472;
  v278[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_212;
  v278[3] = &unk_1E8231AC8;
  v278[4] = v6;
  v137 = v135;
  v279 = v137;
  [v136 subscribeToEventType:@"transition-will-start" handler:v278];
  v138 = *(v6 + 72);
  v276[0] = MEMORY[0x1E69E9820];
  v276[1] = 3221225472;
  v276[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_213;
  v276[3] = &unk_1E8231AC8;
  v276[4] = v6;
  v139 = v137;
  v277 = v139;
  [v138 subscribeToEventType:@"transition-did-reach-pivot-point" handler:v276];
  v140 = *(v6 + 72);
  v274[0] = MEMORY[0x1E69E9820];
  v274[1] = 3221225472;
  v274[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_214;
  v274[3] = &unk_1E8231AC8;
  v274[4] = v6;
  v141 = v139;
  v275 = v141;
  [v140 subscribeToEventType:@"transition-did-end" handler:v274];
  v142 = *(v6 + 72);
  v272[0] = MEMORY[0x1E69E9820];
  v272[1] = 3221225472;
  v272[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_215;
  v272[3] = &unk_1E8231AC8;
  v272[4] = v6;
  v143 = v141;
  v273 = v143;
  [v142 subscribeToEventType:@"overlapped-playback-will-start" handler:v272];
  v144 = *(v6 + 72);
  v270[0] = MEMORY[0x1E69E9820];
  v270[1] = 3221225472;
  v270[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_216;
  v270[3] = &unk_1E8231AC8;
  v270[4] = v6;
  v145 = v143;
  v271 = v145;
  [v144 subscribeToEventType:@"overlapped-playback-did-end" handler:v270];
  v146 = *(v6 + 72);
  v268[0] = MEMORY[0x1E69E9820];
  v268[1] = 3221225472;
  v268[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_217;
  v268[3] = &unk_1E8231AC8;
  v268[4] = v6;
  v147 = v145;
  v269 = v147;
  [v146 subscribeToEventType:@"error-resolution" handler:v268];
  v148 = *(v6 + 72);
  v266[0] = MEMORY[0x1E69E9820];
  v266[1] = 3221225472;
  v266[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_218;
  v266[3] = &unk_1E8231AC8;
  v266[4] = v6;
  v149 = v147;
  v267 = v149;
  [v148 subscribeToEventType:@"interrupt-begin" handler:v266];
  v150 = *(v6 + 72);
  v264[0] = MEMORY[0x1E69E9820];
  v264[1] = 3221225472;
  v264[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_219;
  v264[3] = &unk_1E8231AC8;
  v264[4] = v6;
  v151 = v149;
  v265 = v151;
  [v150 subscribeToEventType:@"interrupt-end" handler:v264];
  v152 = *(v6 + 72);
  v262[0] = MEMORY[0x1E69E9820];
  v262[1] = 3221225472;
  v262[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_220;
  v262[3] = &unk_1E8231AC8;
  v262[4] = v6;
  v153 = v151;
  v263 = v153;
  [v152 subscribeToEventType:@"policy-begin" handler:v262];
  v154 = *(v6 + 72);
  v260[0] = MEMORY[0x1E69E9820];
  v260[1] = 3221225472;
  v260[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_221;
  v260[3] = &unk_1E8231AC8;
  v260[4] = v6;
  v155 = v153;
  v261 = v155;
  [v154 subscribeToEventType:@"policy-end" handler:v260];
  v156 = *(v6 + 72);
  v258[0] = MEMORY[0x1E69E9820];
  v258[1] = 3221225472;
  v258[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_222;
  v258[3] = &unk_1E8231AC8;
  v258[4] = v6;
  v157 = v155;
  v259 = v157;
  [v156 subscribeToEventType:@"playback-behavior-changed" handler:v258];
  v158 = *(v6 + 72);
  v256[0] = MEMORY[0x1E69E9820];
  v256[1] = 3221225472;
  v256[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_228;
  v256[3] = &unk_1E8231AC8;
  v256[4] = v6;
  v159 = v157;
  v257 = v159;
  [v158 subscribeToEventType:@"media-server-died" handler:v256];
  v160 = *(v6 + 72);
  v254[0] = MEMORY[0x1E69E9820];
  v254[1] = 3221225472;
  v254[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_229;
  v254[3] = &unk_1E8231AC8;
  v254[4] = v6;
  v161 = v159;
  v255 = v161;
  [v160 subscribeToEventType:@"media-server-reset" handler:v254];
  v162 = *(v6 + 72);
  v252[0] = MEMORY[0x1E69E9820];
  v252[1] = 3221225472;
  v252[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_230;
  v252[3] = &unk_1E8231AC8;
  v252[4] = v6;
  v163 = v161;
  v253 = v163;
  [v162 subscribeToEventType:@"media-server-purge" handler:v252];
  v164 = *(v6 + 72);
  v250[0] = MEMORY[0x1E69E9820];
  v250[1] = 3221225472;
  v250[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_231;
  v250[3] = &unk_1E8231AC8;
  v250[4] = v6;
  v165 = v163;
  v251 = v165;
  [v164 subscribeToEventType:@"audio-route-changed" handler:v250];
  v166 = *(v6 + 72);
  v248[0] = MEMORY[0x1E69E9820];
  v248[1] = 3221225472;
  v248[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_232;
  v248[3] = &unk_1E8231AC8;
  v248[4] = v6;
  v167 = v165;
  v249 = v167;
  [v166 subscribeToEventType:@"audio-rendering-mode-changed" handler:v248];
  v168 = *(v6 + 72);
  v246[0] = MEMORY[0x1E69E9820];
  v246[1] = 3221225472;
  v246[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_233;
  v246[3] = &unk_1E8231AC8;
  v246[4] = v6;
  v169 = v167;
  v247 = v169;
  [v168 subscribeToEventType:@"time-control-status-changed" handler:v246];
  v170 = *(v6 + 72);
  v244[0] = MEMORY[0x1E69E9820];
  v244[1] = 3221225472;
  v244[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_236;
  v244[3] = &unk_1E8231AC8;
  v244[4] = v6;
  v171 = v169;
  v245 = v171;
  [v170 subscribeToEventType:@"player-operation-begin" handler:v244];
  v172 = *(v6 + 72);
  v242[0] = MEMORY[0x1E69E9820];
  v242[1] = 3221225472;
  v242[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_237;
  v242[3] = &unk_1E8231AC8;
  v242[4] = v6;
  v173 = v171;
  v243 = v173;
  [v172 subscribeToEventType:@"player-operation-end" handler:v242];
  v174 = *(v6 + 72);
  v240[0] = MEMORY[0x1E69E9820];
  v240[1] = 3221225472;
  v240[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_238;
  v240[3] = &unk_1E8231AC8;
  v240[4] = v6;
  v175 = v173;
  v241 = v175;
  [v174 subscribeToEventType:@"reload-current-item-begin" handler:v240];
  v176 = *(v6 + 72);
  v238[0] = MEMORY[0x1E69E9820];
  v238[1] = 3221225472;
  v238[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_239;
  v238[3] = &unk_1E8231AC8;
  v238[4] = v6;
  v177 = v175;
  v239 = v177;
  [v176 subscribeToEventType:@"reload-current-item-end" handler:v238];
  v178 = *(v6 + 72);
  v236[0] = MEMORY[0x1E69E9820];
  v236[1] = 3221225472;
  v236[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_240;
  v236[3] = &unk_1E8231AC8;
  v236[4] = v6;
  v179 = v177;
  v237 = v179;
  [v178 subscribeToEventType:@"session-activation-begin" handler:v236];
  v180 = *(v6 + 72);
  v234[0] = MEMORY[0x1E69E9820];
  v234[1] = 3221225472;
  v234[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_241;
  v234[3] = &unk_1E8231AC8;
  v234[4] = v6;
  v181 = v179;
  v235 = v181;
  [v180 subscribeToEventType:@"session-activation-end" handler:v234];
  v182 = *(v6 + 72);
  v232[0] = MEMORY[0x1E69E9820];
  v232[1] = 3221225472;
  v232[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_242;
  v232[3] = &unk_1E8231AC8;
  v232[4] = v6;
  v183 = v181;
  v233 = v183;
  [v182 subscribeToEventType:@"shared-session-begin" handler:v232];
  v184 = *(v6 + 72);
  v230[0] = MEMORY[0x1E69E9820];
  v230[1] = 3221225472;
  v230[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_243;
  v230[3] = &unk_1E8231AC8;
  v230[4] = v6;
  v185 = v183;
  v231 = v185;
  [v184 subscribeToEventType:@"shared-session-end" handler:v230];
  v186 = *(v6 + 72);
  v228[0] = MEMORY[0x1E69E9820];
  v228[1] = 3221225472;
  v228[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_244;
  v228[3] = &unk_1E8231AC8;
  v228[4] = v6;
  v187 = v185;
  v229 = v187;
  [v186 subscribeToEventType:@"shared-session-participants-changed" handler:v228];
  v188 = *(v6 + 72);
  v226[0] = MEMORY[0x1E69E9820];
  v226[1] = 3221225472;
  v226[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_245;
  v226[3] = &unk_1E8231AC8;
  v226[4] = v6;
  v189 = v187;
  v227 = v189;
  [v188 subscribeToEventType:@"shared-session-synchronization-begin" handler:v226];
  v190 = *(v6 + 72);
  v224[0] = MEMORY[0x1E69E9820];
  v224[1] = 3221225472;
  v224[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_246;
  v224[3] = &unk_1E8231AC8;
  v224[4] = v6;
  v191 = v189;
  v225 = v191;
  [v190 subscribeToEventType:@"shared-session-synchronization-end" handler:v224];
  v192 = *(v6 + 72);
  v222[0] = MEMORY[0x1E69E9820];
  v222[1] = 3221225472;
  v222[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_247;
  v222[3] = &unk_1E8231AC8;
  v222[4] = v6;
  v193 = v191;
  v223 = v193;
  [v192 subscribeToEventType:@"item-vocal-attenuation-changed" handler:v222];
  v194 = *(v6 + 72);
  v220[0] = MEMORY[0x1E69E9820];
  v220[1] = 3221225472;
  v220[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_248;
  v220[3] = &unk_1E8231AC8;
  v220[4] = v6;
  v195 = v193;
  v221 = v195;
  [v194 subscribeToEventType:@"vocal-attenuation-statistics" handler:v220];
  v196 = *(v6 + 72);
  v218[0] = MEMORY[0x1E69E9820];
  v218[1] = 3221225472;
  v218[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_249;
  v218[3] = &unk_1E8231AC8;
  v218[4] = v6;
  v197 = v195;
  v219 = v197;
  [v196 subscribeToEventType:@"perf-report" handler:v218];
  v198 = *(v6 + 72);
  v216[0] = MEMORY[0x1E69E9820];
  v216[1] = 3221225472;
  v216[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_280;
  v216[3] = &unk_1E8231AC8;
  v216[4] = v6;
  v199 = v197;
  v217 = v199;
  [v198 subscribeToEventType:@"network-task-begin" handler:v216];
  v200 = *(v6 + 72);
  v214[0] = MEMORY[0x1E69E9820];
  v214[1] = 3221225472;
  v214[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_281;
  v214[3] = &unk_1E8231AC8;
  v214[4] = v6;
  v201 = v199;
  v215 = v201;
  [v200 subscribeToEventType:@"network-task-resume" handler:v214];
  v202 = *(v6 + 72);
  v212[0] = MEMORY[0x1E69E9820];
  v212[1] = 3221225472;
  v212[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_282;
  v212[3] = &unk_1E8231AC8;
  v212[4] = v6;
  v203 = v201;
  v213 = v203;
  [v202 subscribeToEventType:@"network-task-response" handler:v212];
  v204 = *(v6 + 72);
  v210[0] = MEMORY[0x1E69E9820];
  v210[1] = 3221225472;
  v210[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_283;
  v210[3] = &unk_1E8231AC8;
  v210[4] = v6;
  v205 = v203;
  v211 = v205;
  [v204 subscribeToEventType:@"network-task-end" handler:v210];
  v206 = *(v6 + 72);
  v208[0] = MEMORY[0x1E69E9820];
  v208[1] = 3221225472;
  v208[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_295;
  v208[3] = &unk_1E8231AC8;
  v208[4] = v6;
  v209 = v205;
  v207 = v205;
  [v206 subscribeToEventType:@"item-avmetric" handler:v208];
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke(uint64_t a1, void *a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"behavior-type"];
  v6 = [v5 integerValue];

  v7 = *(a1 + 32);
  if (v7)
  {
    if (v6 > 5)
    {
      v7 = @"􀿪";
    }

    else
    {
      v7 = off_1E8231B80[v6];
    }
  }

  v53 = v7;
  v8 = [v3 payload];
  v52 = [v8 objectForKeyedSubscript:@"account-id"];

  v9 = [v3 payload];
  v10 = [v9 objectForKeyedSubscript:@"queue-reporting-metadata"];

  v11 = MSVLogDateFormatter();
  v12 = [v3 date];
  v13 = [v11 stringFromDate:v12];

  v14 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v15 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 40) streamID];
    v51 = a1;
    v17 = v16 = v10;
    v18 = [v3 threadPriority];
    v19 = [v3 payload];
    v20 = [v19 objectForKeyedSubscript:@"session-id"];
    *buf = 138544386;
    v55 = v13;
    v56 = 2114;
    v57 = v17;
    v58 = 1024;
    v59 = v18;
    v60 = 2114;
    v61 = v14;
    v62 = 2114;
    v63 = v20;
    _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀈄 SESSION WILL BEGIN         %{public}@", buf, 0x30u);

    v10 = v16;
    a1 = v51;
  }

  v21 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v22 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v10;
    v24 = [*(a1 + 40) streamID];
    v25 = [v3 threadPriority];
    if (v6 >= 6)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown/%lld", v6];
    }

    else
    {
      v26 = off_1E8231BB0[v6];
    }

    *buf = 138544642;
    v55 = v13;
    v56 = 2114;
    v57 = v24;
    v58 = 1024;
    v59 = v25;
    v60 = 2114;
    v61 = v21;
    v62 = 2114;
    v63 = v53;
    v64 = 2114;
    v65 = v26;
    _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ behaviorType: %{public}@  %{public}@", buf, 0x3Au);

    v10 = v23;
  }

  v27 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [*(a1 + 40) streamID];
    v29 = [v3 threadPriority];
    v30 = [v10 objectForKeyedSubscript:@"feature-name"];
    *buf = 138544386;
    v55 = v13;
    v56 = 2114;
    v57 = v28;
    v58 = 1024;
    v59 = v29;
    v60 = 2114;
    v61 = v21;
    v62 = 2114;
    v63 = v30;
    _os_log_impl(&dword_1C5C61000, v27, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ feature: %{public}@", buf, 0x30u);
  }

  v31 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [*(a1 + 40) streamID];
    v33 = [v3 threadPriority];
    v34 = [v10 objectForKeyedSubscript:@"queue-grouping-id"];
    *buf = 138544386;
    v55 = v13;
    v56 = 2114;
    v57 = v32;
    v58 = 1024;
    v59 = v33;
    v60 = 2114;
    v61 = v21;
    v62 = 2114;
    v63 = v34;
    _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ queue-grouping-id: %{public}@", buf, 0x30u);
  }

  v35 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [*(a1 + 40) streamID];
    v37 = [v3 threadPriority];
    *buf = 138544386;
    v55 = v13;
    v56 = 2114;
    v57 = v36;
    v58 = 1024;
    v59 = v37;
    v60 = 2114;
    v61 = v21;
    v62 = 2114;
    v63 = v52;
    _os_log_impl(&dword_1C5C61000, v35, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ account: %{public}@", buf, 0x30u);
  }

  v38 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = [*(a1 + 40) streamID];
    v40 = [v3 threadPriority];
    v41 = [v10 objectForKeyedSubscript:@"reco-data"];
    *buf = 138544386;
    v55 = v13;
    v56 = 2114;
    v57 = v39;
    v58 = 1024;
    v59 = v40;
    v60 = 2114;
    v61 = v21;
    v62 = 2114;
    v63 = v41;
    _os_log_impl(&dword_1C5C61000, v38, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ recommendation-data: %{public}@", buf, 0x30u);
  }

  v42 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = [*(a1 + 40) streamID];
    v44 = [v3 threadPriority];
    v45 = [v10 objectForKeyedSubscript:@"siri-ref-id"];
    *buf = 138544386;
    v55 = v13;
    v56 = 2114;
    v57 = v43;
    v58 = 1024;
    v59 = v44;
    v60 = 2114;
    v61 = v21;
    v62 = 2114;
    v63 = v45;
    _os_log_impl(&dword_1C5C61000, v42, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ siri-reference-id: %{public}@", buf, 0x30u);
  }

  v46 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v47 = [*(a1 + 40) streamID];
    v48 = [v3 threadPriority];
    v49 = [v10 objectForKeyedSubscript:@"siri-wha-metrics"];
    *buf = 138544386;
    v55 = v13;
    v56 = 2114;
    v57 = v47;
    v58 = 1024;
    v59 = v48;
    v60 = 2114;
    v61 = v21;
    v62 = 2114;
    v63 = v49;
    _os_log_impl(&dword_1C5C61000, v46, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ siri-wha-metrics: %{public}@", buf, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_6(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"behavior-type"];
  v6 = [v5 integerValue];

  v7 = *(a1 + 32);
  if (v7)
  {
    if (v6 > 5)
    {
      v7 = @"􀿪";
    }

    else
    {
      v7 = off_1E8231B80[v6];
    }
  }

  v8 = v7;
  v9 = MSVLogDateFormatter();
  v10 = [v3 date];
  v11 = [v9 stringFromDate:v10];

  v12 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 40) streamID];
    v15 = [v3 threadPriority];
    v16 = [v3 payload];
    [v16 objectForKeyedSubscript:@"session-id"];
    v25 = v6;
    v18 = v17 = v8;
    *buf = 138544386;
    v27 = v11;
    v28 = 2114;
    v29 = v14;
    v30 = 1024;
    v31 = v15;
    v32 = 2114;
    v33 = v12;
    v34 = 2114;
    v35 = v18;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀈄 SESSION BEGIN              %{public}@", buf, 0x30u);

    v8 = v17;
    v6 = v25;
  }

  v19 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v20 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [*(a1 + 40) streamID];
    v22 = [v3 threadPriority];
    if (v6 >= 6)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown/%lld", v6];
    }

    else
    {
      v23 = off_1E8231BB0[v6];
    }

    *buf = 138544642;
    v27 = v11;
    v28 = 2114;
    v29 = v21;
    v30 = 1024;
    v31 = v22;
    v32 = 2114;
    v33 = v19;
    v34 = 2114;
    v35 = v8;
    v36 = 2114;
    v37 = v23;
    _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ behaviorType: %{public}@  %{public}@", buf, 0x3Au);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_7(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"session-reuse-reason"];

  v6 = MSVLogDateFormatter();
  v7 = [v3 date];
  v8 = [v6 stringFromDate:v7];

  v9 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 40) streamID];
    v12 = [v3 threadPriority];
    v13 = [v3 payload];
    v14 = [v13 objectForKeyedSubscript:@"session-id"];
    v20 = 138544386;
    v21 = v8;
    v22 = 2114;
    v23 = v11;
    v24 = 1024;
    v25 = v12;
    v26 = 2114;
    v27 = v9;
    v28 = 2114;
    v29 = v14;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􂅟 SESSION REUSE              %{public}@", &v20, 0x30u);
  }

  v15 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [*(a1 + 40) streamID];
    v18 = [v3 threadPriority];
    v20 = 138544386;
    v21 = v8;
    v22 = 2114;
    v23 = v17;
    v24 = 1024;
    v25 = v18;
    v26 = 2114;
    v27 = v15;
    v28 = 2114;
    v29 = v5;
    _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ reason: %{public}@", &v20, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_8(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = MSVLogDateFormatter();
  v5 = [v3 date];
  v6 = [v4 stringFromDate:v5];

  v7 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 40) streamID];
    v10 = [v3 threadPriority];
    v11 = [v3 payload];
    v12 = [v11 objectForKeyedSubscript:@"session-id"];
    v14 = 138544386;
    v15 = v6;
    v16 = 2114;
    v17 = v9;
    v18 = 1024;
    v19 = v10;
    v20 = 2114;
    v21 = v7;
    v22 = 2114;
    v23 = v12;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀈅 SESSION END                %{public}@", &v14, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_9(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = MSVLogDateFormatter();
  v5 = [v3 date];
  v6 = [v4 stringFromDate:v5];

  v7 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 40) streamID];
    v10 = [v3 threadPriority];
    v11 = [v3 payload];
    v12 = [v11 objectForKeyedSubscript:@"session-id"];
    v14 = 138544386;
    v15 = v6;
    v16 = 2114;
    v17 = v9;
    v18 = 1024;
    v19 = v10;
    v20 = 2114;
    v21 = v7;
    v22 = 2114;
    v23 = v12;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀈈 SESSION RESTORE BEGIN      %{public}@", &v14, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v5];
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"session-id"];

  v52 = @"session-id";
  v53[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
  v10 = [v6 findPreviousEventWithType:@"session-restore-begin" matchingPayload:v9];

  [v5 durationSinceEvent:v10];
  v12 = v11;
  v13 = [v5 payload];
  v14 = [v13 objectForKeyedSubscript:@"session-restoration-error"];

  v15 = MSVLogDateFormatter();
  v16 = [v5 date];
  v39 = [v15 stringFromDate:v16];

  v38 = a1;
  v17 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v18 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [*(a1 + 40) streamID];
    *buf = 138544642;
    v41 = v39;
    v42 = 2114;
    v43 = v19;
    v44 = 1024;
    v45 = [v5 threadPriority];
    v46 = 2114;
    v47 = v17;
    v48 = 2114;
    v49 = v8;
    v50 = 2048;
    v51 = v12;
    _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀈉 SESSION RESTORE END        %{public}@ [%.3fs]", buf, 0x3Au);
  }

  if (v14)
  {
    v36 = v8;
    v37 = v6;
    v20 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
    v35 = v14;
    v21 = [v14 treeDescription];
    v22 = [v21 componentsSeparatedByString:@"\n"];

    if ([v22 count] >= 1)
    {
      for (i = 0; i < [v22 count]; ++i)
      {
        v24 = [v22 objectAtIndexedSubscript:i];
        if (i)
        {
          v25 = [v22 count] - 1;
          v26 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
          v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
          if (i == v25)
          {
            if (v27)
            {
              v28 = [*(v38 + 40) streamID];
              v29 = [v5 threadPriority];
              *buf = 138544386;
              v41 = v39;
              v42 = 2114;
              v43 = v28;
              v44 = 1024;
              v45 = v29;
              v46 = 2114;
              v47 = v20;
              v48 = 2114;
              v49 = v24;
              v30 = v26;
              v31 = "|%{public}@ %{public}@ %2i %{public}@  ╰           %{public}@";
LABEL_14:
              _os_log_impl(&dword_1C5C61000, v30, OS_LOG_TYPE_ERROR, v31, buf, 0x30u);
            }
          }

          else if (v27)
          {
            v28 = [*(v38 + 40) streamID];
            v33 = [v5 threadPriority];
            *buf = 138544386;
            v41 = v39;
            v42 = 2114;
            v43 = v28;
            v44 = 1024;
            v45 = v33;
            v46 = 2114;
            v47 = v20;
            v48 = 2114;
            v49 = v24;
            v30 = v26;
            v31 = "|%{public}@ %{public}@ %2i %{public}@  │           %{public}@";
            goto LABEL_14;
          }
        }

        else
        {
          v26 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v28 = [*(v38 + 40) streamID];
            v32 = [v5 threadPriority];
            *buf = 138544386;
            v41 = v39;
            v42 = 2114;
            v43 = v28;
            v44 = 1024;
            v45 = v32;
            v46 = 2114;
            v47 = v20;
            v48 = 2114;
            v49 = v24;
            v30 = v26;
            v31 = "|%{public}@ %{public}@ %2i %{public}@ ╲╭ error: ❌ %{public}@";
            goto LABEL_14;
          }
        }
      }
    }

    v8 = v36;
    v6 = v37;
    v14 = v35;
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_15(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = MSVLogDateFormatter();
  v5 = [v3 date];
  v6 = [v4 stringFromDate:v5];

  v7 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 40) streamID];
    v10 = [v3 threadPriority];
    v11 = [v3 payload];
    v12 = [v11 objectForKeyedSubscript:@"session-id"];
    v14 = 138544386;
    v15 = v6;
    v16 = 2114;
    v17 = v9;
    v18 = 1024;
    v19 = v10;
    v20 = 2114;
    v21 = v7;
    v22 = 2114;
    v23 = v12;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􂄑 SESSION MIGRATE BEGIN      %{public}@", &v14, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v5];
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"session-id"];

  v52 = @"session-id";
  v53[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
  v10 = [v6 findPreviousEventWithType:@"session-migrate-begin" matchingPayload:v9];

  [v5 durationSinceEvent:v10];
  v12 = v11;
  v13 = [v5 payload];
  v14 = [v13 objectForKeyedSubscript:@"session-migration-error"];

  v15 = MSVLogDateFormatter();
  v16 = [v5 date];
  v39 = [v15 stringFromDate:v16];

  v38 = a1;
  v17 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v18 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [*(a1 + 40) streamID];
    *buf = 138544642;
    v41 = v39;
    v42 = 2114;
    v43 = v19;
    v44 = 1024;
    v45 = [v5 threadPriority];
    v46 = 2114;
    v47 = v17;
    v48 = 2114;
    v49 = v8;
    v50 = 2048;
    v51 = v12;
    _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􂄒 SESSION MIGRATE END        %{public}@ [%.3fs]", buf, 0x3Au);
  }

  if (v14)
  {
    v36 = v8;
    v37 = v6;
    v20 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
    v35 = v14;
    v21 = [v14 treeDescription];
    v22 = [v21 componentsSeparatedByString:@"\n"];

    if ([v22 count] >= 1)
    {
      for (i = 0; i < [v22 count]; ++i)
      {
        v24 = [v22 objectAtIndexedSubscript:i];
        if (i)
        {
          v25 = [v22 count] - 1;
          v26 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
          v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
          if (i == v25)
          {
            if (v27)
            {
              v28 = [*(v38 + 40) streamID];
              v29 = [v5 threadPriority];
              *buf = 138544386;
              v41 = v39;
              v42 = 2114;
              v43 = v28;
              v44 = 1024;
              v45 = v29;
              v46 = 2114;
              v47 = v20;
              v48 = 2114;
              v49 = v24;
              v30 = v26;
              v31 = "|%{public}@ %{public}@ %2i %{public}@  ╰           %{public}@";
LABEL_14:
              _os_log_impl(&dword_1C5C61000, v30, OS_LOG_TYPE_ERROR, v31, buf, 0x30u);
            }
          }

          else if (v27)
          {
            v28 = [*(v38 + 40) streamID];
            v33 = [v5 threadPriority];
            *buf = 138544386;
            v41 = v39;
            v42 = 2114;
            v43 = v28;
            v44 = 1024;
            v45 = v33;
            v46 = 2114;
            v47 = v20;
            v48 = 2114;
            v49 = v24;
            v30 = v26;
            v31 = "|%{public}@ %{public}@ %2i %{public}@  │           %{public}@";
            goto LABEL_14;
          }
        }

        else
        {
          v26 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v28 = [*(v38 + 40) streamID];
            v32 = [v5 threadPriority];
            *buf = 138544386;
            v41 = v39;
            v42 = 2114;
            v43 = v28;
            v44 = 1024;
            v45 = v32;
            v46 = 2114;
            v47 = v20;
            v48 = 2114;
            v49 = v24;
            v30 = v26;
            v31 = "|%{public}@ %{public}@ %2i %{public}@ ╲╭ error: ❌ %{public}@";
            goto LABEL_14;
          }
        }
      }
    }

    v8 = v36;
    v6 = v37;
    v14 = v35;
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_17(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"session-id"];

  v6 = MSVLogDateFormatter();
  v7 = [v3 date];
  v8 = [v6 stringFromDate:v7];

  v9 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 40) streamID];
    v13 = 138544386;
    v14 = v8;
    v15 = 2114;
    v16 = v11;
    v17 = 1024;
    v18 = [v3 threadPriority];
    v19 = 2114;
    v20 = v9;
    v21 = 2114;
    v22 = v5;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀈃 SESSION RESET [BOUNDARY]   %{public}@", &v13, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_18(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = MSVLogDateFormatter();
  v5 = [v3 date];
  v6 = [v4 stringFromDate:v5];

  v7 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 40) streamID];
    v11 = 138544130;
    v12 = v6;
    v13 = 2114;
    v14 = v9;
    v15 = 1024;
    v16 = [v3 threadPriority];
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀭨 APPLICATION TERMINATION", &v11, 0x26u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_19(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = MSVLogDateFormatter();
  v5 = [v3 date];
  v6 = [v4 stringFromDate:v5];

  v7 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 40) streamID];
    v11 = 138544130;
    v12 = v6;
    v13 = 2114;
    v14 = v9;
    v15 = 1024;
    v16 = [v3 threadPriority];
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀑐 APPLICATION FOREGROUND", &v11, 0x26u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_20(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = MSVLogDateFormatter();
  v5 = [v3 date];
  v6 = [v4 stringFromDate:v5];

  v7 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 40) streamID];
    v11 = 138544130;
    v12 = v6;
    v13 = 2114;
    v14 = v9;
    v15 = 1024;
    v16 = [v3 threadPriority];
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀑏 APPLICATION BACKGROUND", &v11, 0x26u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_21(uint64_t a1, void *a2)
{
  v100 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"device-metadata"];

  v6 = [v5 objectForKeyedSubscript:@"device-name"];
  v7 = [v5 objectForKeyedSubscript:@"device-model"];
  v8 = [v5 objectForKeyedSubscript:@"application-bundle-id"];
  v9 = [v5 objectForKeyedSubscript:@"application-name"];
  v72 = [v5 objectForKeyedSubscript:@"application-version"];
  v61 = [v5 objectForKeyedSubscript:@"system-name"];
  v71 = [v5 objectForKeyedSubscript:@"device-software-variant"];
  v70 = [v5 objectForKeyedSubscript:@"system-version"];
  v69 = [v5 objectForKeyedSubscript:@"system-build"];
  v68 = [v5 objectForKeyedSubscript:@"application-source-version"];
  v67 = [v5 objectForKeyedSubscript:@"application-uuid"];
  v10 = [v5 objectForKeyedSubscript:@"internal-carry"];
  HIDWORD(v59) = [v10 BOOLValue];

  v11 = [v5 objectForKeyedSubscript:@"private-listening-enabled"];
  LODWORD(v59) = [v11 BOOLValue];

  v12 = [v5 objectForKeyedSubscript:@"focus-mode-private-listening-enabled"];
  v60 = [v12 integerValue];

  v13 = MSVLogDateFormatter();
  v77 = v3;
  v14 = [v3 date];
  v76 = [v13 stringFromDate:v14];

  v15 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [*(a1 + 40) streamID];
    *buf = 138544130;
    v85 = v76;
    v86 = 2114;
    v87 = v17;
    v88 = 1024;
    v89 = [v77 threadPriority];
    v90 = 2114;
    v91 = v15;
    _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􁄩 DEVICE CHANGED", buf, 0x26u);
  }

  v75 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v18 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [*(a1 + 40) streamID];
    v20 = [v77 threadPriority];
    *buf = 138544643;
    v85 = v76;
    v86 = 2114;
    v87 = v19;
    v88 = 1024;
    v89 = v20;
    v90 = 2114;
    v91 = v75;
    v92 = 2113;
    *v93 = v6;
    *&v93[8] = 2114;
    *&v93[10] = v7;
    _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ name: %{private}@; model: %{public}@", buf, 0x3Au);
  }

  v64 = v7;
  v65 = v6;

  v21 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [*(a1 + 40) streamID];
    v23 = [v77 threadPriority];
    *buf = 138545410;
    v85 = v76;
    v86 = 2114;
    v87 = v22;
    v88 = 1024;
    v89 = v23;
    v90 = 2114;
    v91 = v75;
    v92 = 2114;
    *v93 = v9;
    *&v93[8] = 2114;
    *&v93[10] = v72;
    v94 = 2114;
    v95 = v8;
    v96 = 2114;
    v97 = v67;
    v98 = 2114;
    v99 = v68;
    _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ application: %{public}@/%{public}@; bundleID: %{public}@; uuid: %{public}@; version: %{public}@", buf, 0x58u);
  }

  v62 = v9;
  v63 = v8;

  v66 = v5;
  v24 = [v5 objectForKeyedSubscript:@"media-frameworks"];
  v25 = [v24 sortedArrayUsingComparator:&__block_literal_global_2415];

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v26 = v25;
  v27 = [v26 countByEnumeratingWithState:&v79 objects:v83 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v80;
    v30 = "PlaybackEvents";
    v73 = *v80;
    v74 = v26;
    do
    {
      v31 = 0;
      v78 = v28;
      do
      {
        if (*v80 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v32 = *(*(&v79 + 1) + 8 * v31);
        if ([v32 isRoot])
        {
          v33 = os_log_create("com.apple.amp.mediaplaybackcore", v30);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = [*(a1 + 40) streamID];
            v35 = v30;
            v36 = a1;
            v37 = [v77 threadPriority];
            v38 = [v32 name];
            v39 = [v32 uuid];
            v40 = [v39 UUIDString];
            v41 = [v32 version];
            *buf = 138544898;
            v85 = v76;
            v86 = 2114;
            v87 = v34;
            v88 = 1024;
            v89 = v37;
            a1 = v36;
            v30 = v35;
            v28 = v78;
            v90 = 2114;
            v91 = v75;
            v92 = 2114;
            *v93 = v38;
            *&v93[8] = 2114;
            *&v93[10] = v40;
            v94 = 2114;
            v95 = v41;
            _os_log_impl(&dword_1C5C61000, v33, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ root: %{public}-26@; uuid: %{public}@; version: %{public}@", buf, 0x44u);

            v29 = v73;
            v26 = v74;
          }
        }

        ++v31;
      }

      while (v28 != v31);
      v28 = [v26 countByEnumeratingWithState:&v79 objects:v83 count:16];
    }

    while (v28);
  }

  if (v60 == 2)
  {
    v53 = @"Disabled";
    v42 = v64;
    v47 = v65;
    v44 = v62;
    v43 = v63;
    v45 = v61;
  }

  else
  {
    v43 = v63;
    v42 = v64;
    v45 = v61;
    v44 = v62;
    if (!v60)
    {
      v46 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
      v47 = v65;
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v48 = [*(a1 + 40) streamID];
      v49 = [v77 threadPriority];
      *buf = 138544386;
      v85 = v76;
      v86 = 2114;
      v87 = v48;
      v88 = 1024;
      v89 = v49;
      v90 = 2114;
      v91 = v75;
      v92 = 1024;
      *v93 = v59;
      v50 = "|%{public}@ %{public}@ %2i %{public}@  │ private-listening: %{BOOL}u";
      v51 = v46;
      v52 = 44;
      goto LABEL_26;
    }

    v53 = @"Enabled";
    v47 = v65;
  }

  v46 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_27;
  }

  v48 = [*(a1 + 40) streamID];
  v54 = [v77 threadPriority];
  *buf = 138544642;
  v85 = v76;
  v86 = 2114;
  v87 = v48;
  v88 = 1024;
  v89 = v54;
  v90 = 2114;
  v91 = v75;
  v92 = 1024;
  *v93 = v59;
  *&v93[4] = 2114;
  *&v93[6] = v53;
  v50 = "|%{public}@ %{public}@ %2i %{public}@  │ private-listening: %{BOOL}u; focus-mode-private-listening: %{public}@";
  v51 = v46;
  v52 = 54;
LABEL_26:
  _os_log_impl(&dword_1C5C61000, v51, OS_LOG_TYPE_DEFAULT, v50, buf, v52);

LABEL_27:
  v55 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = [*(a1 + 40) streamID];
    v57 = [v77 threadPriority];
    *buf = 138545410;
    v85 = v76;
    v86 = 2114;
    v87 = v56;
    v88 = 1024;
    v89 = v57;
    v90 = 2114;
    v91 = v75;
    v92 = 2114;
    *v93 = v45;
    *&v93[8] = 2114;
    *&v93[10] = v71;
    v94 = 2114;
    v95 = v70;
    v96 = 2114;
    v97 = v69;
    v98 = 1024;
    LODWORD(v99) = HIDWORD(v59);
    _os_log_impl(&dword_1C5C61000, v55, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ os: %{public}@ [%{public}@]/%{public}@ %{public}@; internalCarry: %{BOOL}u", buf, 0x54u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_24(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"network-reachability"];
  v6 = [v5 integerValue];

  v7 = @"Unreachable";
  if (v6 == 1)
  {
    v7 = @"Likely Reachable";
  }

  if (v6 == 2)
  {
    v8 = @"Reachable";
  }

  else
  {
    v8 = v7;
  }

  v9 = MSVLogDateFormatter();
  v10 = [v3 date];
  v11 = [v9 stringFromDate:v10];

  v12 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 40) streamID];
    v16 = 138544386;
    v17 = v11;
    v18 = 2114;
    v19 = v14;
    v20 = 1024;
    v21 = [v3 threadPriority];
    v22 = 2114;
    v23 = v12;
    v24 = 2114;
    v25 = v8;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀤆 NET REACHABILITY CHANGED   %{public}@", &v16, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_25(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"network-type"];
  v6 = [v5 integerValue];

  v7 = @"Unknown";
  if (v6 <= 99)
  {
    if ((v6 - 1) >= 8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v6 > 1000)
  {
    switch(v6)
    {
      case 1001:
        v7 = @"Bridged WiFi";
        break;
      case 2000:
        v7 = @"Wired Ethernet";
        break;
      case 3000:
        v7 = @"Other";
        break;
    }
  }

  else
  {
    switch(v6)
    {
      case 100:
LABEL_3:
        v7 = @"Cellular";
        break;
      case 500:
        v7 = @"Bluetooth";
        break;
      case 1000:
        v7 = @"WiFi";
        break;
    }
  }

LABEL_4:
  v42 = v7;
  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"network-constrained"];
  v43 = [v9 BOOLValue];

  v10 = [v3 payload];
  v11 = [v10 objectForKeyedSubscript:@"network-expensive"];
  v12 = [v11 BOOLValue];

  v13 = [v3 payload];
  v14 = [v13 objectForKeyedSubscript:@"network-high-quality"];
  v15 = [v14 BOOLValue];

  v16 = [v3 payload];
  v17 = [v16 objectForKeyedSubscript:@"network-signal-strength"];

  if (![v17 count])
  {
LABEL_23:
    v25 = @"<unknown>";
    goto LABEL_24;
  }

  v18 = [v17 objectForKeyedSubscript:*MEMORY[0x1E69E4188]];
  v19 = [v18 integerValue];

  v20 = [v17 objectForKeyedSubscript:*MEMORY[0x1E69E4190]];
  v21 = [v20 integerValue];

  if (v21 > 0xA || v19 < 0 || v19 > v21)
  {
    v26 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v45 = v17;
      _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_FAULT, "Unexpected signalStrength values: %{public}@", buf, 0xCu);
    }

    goto LABEL_23;
  }

  v22 = [MEMORY[0x1E696AD60] stringWithCapacity:v21];
  if (v21)
  {
    for (i = 0; i != v21; ++i)
    {
      if (i >= v19)
      {
        v24 = @"○";
      }

      else
      {
        v24 = @"●";
      }

      [v22 appendString:v24];
    }
  }

  v25 = [v22 copy];

LABEL_24:
  v27 = MSVLogDateFormatter();
  v28 = [v3 date];
  v29 = [v27 stringFromDate:v28];

  v30 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v31 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [*(a1 + 40) streamID];
    v33 = [v3 threadPriority];
    *buf = 138544386;
    v45 = v29;
    v46 = 2114;
    v47 = v32;
    v48 = 1024;
    v49 = v33;
    v50 = 2114;
    v51 = v30;
    v52 = 2114;
    *v53 = v42;
    _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀤆 NETWORK TYPE CHANGED       %{public}@", buf, 0x30u);
  }

  v34 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v35 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [*(a1 + 40) streamID];
    v37 = [v3 threadPriority];
    *buf = 138544386;
    v45 = v29;
    v46 = 2114;
    v47 = v36;
    v48 = 1024;
    v49 = v37;
    v50 = 2114;
    v51 = v34;
    v52 = 2114;
    *v53 = v25;
    _os_log_impl(&dword_1C5C61000, v35, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ strength: %{public}@", buf, 0x30u);
  }

  v38 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = [*(a1 + 40) streamID];
    v40 = [v3 threadPriority];
    *buf = 138544898;
    v45 = v29;
    v46 = 2114;
    v47 = v39;
    v48 = 1024;
    v49 = v40;
    v50 = 2114;
    v51 = v34;
    v52 = 1024;
    *v53 = v43;
    *&v53[4] = 1024;
    *&v53[6] = v15;
    v54 = 1024;
    v55 = v12;
    _os_log_impl(&dword_1C5C61000, v38, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ constrained: %{BOOL}u; high quality: %{BOOL}u; expensive: %{BOOL}u", buf, 0x38u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_36(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)v5 _updateChartWithEvent:v7];
  v8 = [*(a1 + 32) _logAccountEvent:v7 subscription:*(a1 + 40) cursor:v6];

  return v8;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)v5 _updateChartWithEvent:v7];
  v8 = [*(a1 + 32) _logAccountEvent:v7 subscription:*(a1 + 40) cursor:v6];

  return v8;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_3(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"remote-control-type"];
  v6 = [v5 unsignedIntValue];

  v7 = [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _symbolForCommand:v6];
  v26 = MPCRemoteCommandDescriptionCopy(v6);
  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"remote-control-id"];

  v10 = [v3 payload];
  v11 = [v10 objectForKeyedSubscript:@"remote-control-source"];

  v12 = MSVLogDateFormatter();
  v13 = [v3 date];
  v14 = [v12 stringFromDate:v13];

  v15 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [*(a1 + 40) streamID];
    *buf = 138544386;
    v28 = v14;
    v29 = 2114;
    v30 = v17;
    v31 = 1024;
    v32 = [v3 threadPriority];
    v33 = 2114;
    v34 = v15;
    v35 = 2114;
    v36 = v9;
    _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀣚 COMMAND DELIVERED          %{public}@", buf, 0x30u);
  }

  v18 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v19 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [*(a1 + 40) streamID];
    v21 = [v3 threadPriority];
    *buf = 138544386;
    v28 = v14;
    v29 = 2114;
    v30 = v20;
    v31 = 1024;
    v32 = v21;
    v33 = 2114;
    v34 = v18;
    v35 = 2114;
    v36 = v11;
    _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭  source: %{public}@", buf, 0x30u);
  }

  v22 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [*(a1 + 40) streamID];
    v24 = [v3 threadPriority];
    *buf = 138544642;
    v28 = v14;
    v29 = 2114;
    v30 = v23;
    v31 = 1024;
    v32 = v24;
    v33 = 2114;
    v34 = v18;
    v35 = 2114;
    v36 = v7;
    v37 = 2114;
    v38 = v26;
    _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ command: %{public}@  %{public}@", buf, 0x3Au);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_37(uint64_t a1, void *a2)
{
  v106 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"remote-control-type"];
  v6 = [v5 unsignedIntValue];

  v90 = [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _symbolForCommand:v6];
  v7 = MPCRemoteCommandDescriptionCopy(v6);
  v8 = [v3 payload];
  v89 = [v8 objectForKeyedSubscript:@"remote-control-id"];

  v9 = [v3 payload];
  v88 = [v9 objectForKeyedSubscript:@"remote-control-source"];

  v10 = [v3 payload];
  v11 = [v10 objectForKeyedSubscript:@"remote-control-associated-participant-id"];

  v12 = [v3 payload];
  v13 = [v12 objectForKeyedSubscript:@"remote-control-options"];
  v14 = [v13 mutableCopy];

  v15 = *MEMORY[0x1E69B1150];
  v92 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69B1150]];
  v16 = *MEMORY[0x1E69B1088];
  v17 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69B1088]];
  [v14 setObject:0 forKeyedSubscript:v15];
  [v14 setObject:0 forKeyedSubscript:v16];
  v18 = [v3 payload];
  v19 = [v18 objectForKeyedSubscript:@"remote-control-queue-data"];

  v20 = MSVLogDateFormatter();
  v21 = [v3 date];
  v95 = [v20 stringFromDate:v21];

  v22 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v23 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  v91 = v11;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 40) streamID];
    v24 = v19;
    v25 = v17;
    v27 = v26 = v7;
    *buf = 138544386;
    v97 = v95;
    v98 = 2114;
    v99 = v27;
    v100 = 1024;
    v101 = [v3 threadPriority];
    v102 = 2114;
    v103 = v22;
    v104 = 2114;
    *v105 = v89;
    _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀩿 COMMAND BEGIN              %{public}@", buf, 0x30u);

    v7 = v26;
    v17 = v25;
    v19 = v24;
    v11 = v91;
  }

  v94 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v28 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [*(a1 + 40) streamID];
    v30 = [v3 threadPriority];
    *buf = 138544386;
    v97 = v95;
    v98 = 2114;
    v99 = v29;
    v100 = 1024;
    v101 = v30;
    v102 = 2114;
    v103 = v94;
    v104 = 2114;
    *v105 = v88;
    _os_log_impl(&dword_1C5C61000, v28, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭  source: %{public}@", buf, 0x30u);
  }

  if (v11)
  {
    v31 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [*(a1 + 40) streamID];
      v33 = [v3 threadPriority];
      *buf = 138544386;
      v97 = v95;
      v98 = 2114;
      v99 = v32;
      v100 = 1024;
      v101 = v33;
      v102 = 2114;
      v103 = v94;
      v104 = 2114;
      *v105 = v11;
      _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ associatedParticipantID: %{public}@", buf, 0x30u);
    }
  }

  v93 = a1;
  v34 = v92;
  v86 = v17;
  v87 = v14;
  if ([v14 count])
  {
    v84 = v19;
    v85 = v7;
    v35 = [v14 description];
    v36 = [v35 componentsSeparatedByString:@"\n"];

    if ([v36 count] >= 1)
    {
      for (i = 0; i < [v36 count]; ++i)
      {
        v38 = [v36 objectAtIndexedSubscript:i];
        if (i)
        {
          v39 = [v36 count] - 1;
          v40 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
          v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
          if (i == v39)
          {
            if (v41)
            {
              v42 = [*(v93 + 40) streamID];
              v43 = [v3 threadPriority];
              *buf = 138544386;
              v97 = v95;
              v98 = 2114;
              v99 = v42;
              v100 = 1024;
              v101 = v43;
              v102 = 2114;
              v103 = v94;
              v104 = 2114;
              *v105 = v38;
              v44 = v40;
              v45 = "|%{public}@ %{public}@ %2i %{public}@  │   ╰ %{public}@";
LABEL_20:
              _os_log_impl(&dword_1C5C61000, v44, OS_LOG_TYPE_DEFAULT, v45, buf, 0x30u);
            }
          }

          else if (v41)
          {
            v42 = [*(v93 + 40) streamID];
            v47 = [v3 threadPriority];
            *buf = 138544386;
            v97 = v95;
            v98 = 2114;
            v99 = v42;
            v100 = 1024;
            v101 = v47;
            v102 = 2114;
            v103 = v94;
            v104 = 2114;
            *v105 = v38;
            v44 = v40;
            v45 = "|%{public}@ %{public}@ %2i %{public}@  │   │ %{public}@";
            goto LABEL_20;
          }
        }

        else
        {
          v40 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v42 = [*(v93 + 40) streamID];
            v46 = [v3 threadPriority];
            *buf = 138544386;
            v97 = v95;
            v98 = 2114;
            v99 = v42;
            v100 = 1024;
            v101 = v46;
            v102 = 2114;
            v103 = v94;
            v104 = 2114;
            *v105 = v38;
            v44 = v40;
            v45 = "|%{public}@ %{public}@ %2i %{public}@  │  ╲╭ options: %{public}@";
            goto LABEL_20;
          }
        }
      }
    }

    v7 = v85;
    a1 = v93;
    v11 = v91;
    v34 = v92;
    v14 = v87;
    v19 = v84;
  }

  if (v34)
  {
    v48 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = [*(a1 + 40) streamID];
      v50 = [v3 threadPriority];
      *buf = 138544386;
      v97 = v95;
      v98 = 2114;
      v99 = v49;
      v100 = 1024;
      v101 = v50;
      v102 = 2114;
      v103 = v94;
      v104 = 2114;
      *v105 = v34;
      _os_log_impl(&dword_1C5C61000, v48, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ nowPlayingContentItemID: %{public}@", buf, 0x30u);
    }
  }

  if (v19)
  {
    v51 = MRSystemAppPlaybackQueueCreateFromExternalRepresentation();
    MRSystemAppPlaybackQueueGetType();
    v52 = MRSystemAppPlaybackQueueCopyTypeDescription();
    IsRequestingImmediatePlayback = MRSystemAppPlaybackQueueIsRequestingImmediatePlayback();
    v54 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 40) streamID];
      v56 = v55 = v7;
      v57 = [v3 threadPriority];
      *buf = 138544642;
      v97 = v95;
      v98 = 2114;
      v99 = v56;
      v100 = 1024;
      v101 = v57;
      v102 = 2114;
      v103 = v94;
      v104 = 2114;
      *v105 = v52;
      *&v105[8] = 1024;
      *&v105[10] = IsRequestingImmediatePlayback;
      _os_log_impl(&dword_1C5C61000, v54, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ queueType: %{public}@; immediatePlayback: %{BOOL}u", buf, 0x36u);

      v7 = v55;
    }

    SiriAssetInfo = MRSystemAppPlaybackQueueGetSiriAssetInfo();
    v59 = MRSystemAppPlaybackQueueCopyFeatureName();
    v60 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      v61 = SiriAssetInfo == 0;
      v62 = v52;
      v63 = v17;
      v64 = v19;
      v65 = !v61;
      [*(v93 + 40) streamID];
      v67 = v66 = v7;
      v68 = [v3 threadPriority];
      *buf = 138544642;
      v97 = v95;
      v98 = 2114;
      v99 = v67;
      v100 = 1024;
      v101 = v68;
      v102 = 2114;
      v103 = v94;
      v104 = 1024;
      *v105 = v65;
      v69 = v64;
      v17 = v63;
      v52 = v62;
      *&v105[4] = 2114;
      *&v105[6] = v59;
      _os_log_impl(&dword_1C5C61000, v60, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ hasSiriAssetInfo: %{BOOL}u; featureName: %{public}@", buf, 0x36u);

      v7 = v66;
      v19 = v69;
    }

    if (v51)
    {
      MRSystemAppPlaybackQueueDestroy();
    }

    a1 = v93;
    v11 = v91;
    v34 = v92;
    v14 = v87;
  }

  if (v17)
  {
    v70 = MEMORY[0x1E695DF00];
    [v17 doubleValue];
    v71 = [v70 dateWithTimeIntervalSinceReferenceDate:?];
    v72 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 40) streamID];
      v74 = v73 = v19;
      v75 = v7;
      v76 = [v3 threadPriority];
      MSVLogDateFormatter();
      v78 = v77 = v14;
      v79 = [v78 stringFromDate:v71];
      *buf = 138544386;
      v97 = v95;
      v98 = 2114;
      v99 = v74;
      v100 = 1024;
      v101 = v76;
      v7 = v75;
      v102 = 2114;
      v103 = v94;
      v104 = 2114;
      *v105 = v79;
      _os_log_impl(&dword_1C5C61000, v72, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ sendTime: %{public}@", buf, 0x30u);

      v14 = v77;
      v19 = v73;
      v11 = v91;
      v34 = v92;
      v17 = v86;

      a1 = v93;
    }
  }

  v80 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
  {
    v81 = [*(a1 + 40) streamID];
    v82 = [v3 threadPriority];
    *buf = 138544642;
    v97 = v95;
    v98 = 2114;
    v99 = v81;
    v100 = 1024;
    v101 = v82;
    v102 = 2114;
    v103 = v94;
    v104 = 2114;
    *v105 = v90;
    *&v105[8] = 2114;
    *&v105[10] = v7;
    _os_log_impl(&dword_1C5C61000, v80, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ command: %{public}@  %{public}@", buf, 0x3Au);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_38(uint64_t a1, void *a2, void *a3)
{
  v129[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v5];
  v128 = @"remote-control-id";
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"remote-control-id"];
  v129[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v129 forKeys:&v128 count:1];
  v10 = [v6 findPreviousEventWithType:@"remote-control-begin" matchingPayload:v9];

  v11 = [v10 payload];
  v12 = [v11 objectForKeyedSubscript:@"remote-control-type"];
  LODWORD(v9) = [v12 unsignedIntValue];

  v13 = MPCRemoteCommandDescriptionCopy(v9);
  v14 = v9;
  v15 = a1;
  v16 = [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _symbolForCommand:v14];
  v17 = [v5 payload];
  v18 = [v17 objectForKeyedSubscript:@"remote-control-id"];

  v108 = v5;
  v19 = [v5 payload];
  v20 = [v19 objectForKeyedSubscript:@"remote-control-status"];
  v21 = [v20 firstObject];

  [v21 statusCode];
  v22 = MRMediaRemoteCommandHandlerStatusFromMPRemoteCommandHandlerStatus();
  if (*(v15 + 32))
  {
    if (v22 > 9)
    {
      if (v22 == 10)
      {
        v23 = @"🚷";
        goto LABEL_11;
      }

      if (v22 == 20)
      {
LABEL_5:
        v23 = @"📵";
LABEL_11:
        v102 = v23;
        goto LABEL_12;
      }
    }

    else
    {
      if (!v22)
      {
        v23 = @"✅";
        goto LABEL_11;
      }

      if (v22 == 1)
      {
        goto LABEL_5;
      }
    }

    v23 = @"🚫";
    goto LABEL_11;
  }

  v102 = 0;
LABEL_12:
  v103 = MRMediaRemoteCopyCommandHandlerStatusDescription();
  [v5 durationSinceEvent:v10];
  v25 = v24;
  v26 = MSVLogDateFormatter();
  v27 = [v5 date];
  v107 = [v26 stringFromDate:v27];

  v28 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v29 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    [*(v15 + 40) streamID];
    v31 = v30 = v21;
    *buf = 138544642;
    v114 = v107;
    v115 = 2114;
    v116 = v31;
    v117 = 1024;
    v118 = [v108 threadPriority];
    v119 = 2114;
    v120 = v28;
    v121 = 2114;
    v122 = v18;
    v123 = 2048;
    v124 = v25;
    _os_log_impl(&dword_1C5C61000, v29, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀹷 COMMAND TIMEOUT            %{public}@ [%.3fs]", buf, 0x3Au);

    v21 = v30;
  }

  v106 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v32 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [*(v15 + 40) streamID];
    v34 = [v108 threadPriority];
    *buf = 138544642;
    v114 = v107;
    v115 = 2114;
    v116 = v33;
    v117 = 1024;
    v118 = v34;
    v119 = 2114;
    v120 = v106;
    v121 = 2114;
    v122 = v16;
    v123 = 2114;
    v124 = v13;
    _os_log_impl(&dword_1C5C61000, v32, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ command: %{public}@  %{public}@ 💢", buf, 0x3Au);
  }

  v35 = [v21 type];
  v105 = v15;
  if (v35 > 2)
  {
    if (v35 == 3)
    {
      goto LABEL_44;
    }

    if (v35 == 999)
    {
      v40 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = [*(v15 + 40) streamID];
        v42 = [v108 threadPriority];
        v43 = [v21 customDataType];
        [v21 customData];
        v44 = v99 = v18;
        v45 = [v44 length];
        *buf = 138544642;
        v114 = v107;
        v115 = 2114;
        v116 = v41;
        v117 = 1024;
        v118 = v42;
        v119 = 2114;
        v120 = v106;
        v121 = 2114;
        v122 = v43;
        v123 = 2048;
        v124 = v45;
        _os_log_impl(&dword_1C5C61000, v40, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ customDataType: %{public}@; customDataSize: %llu", buf, 0x3Au);

        v18 = v99;
        v15 = v105;
      }

      v36 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [*(v15 + 40) streamID];
        v46 = [v108 threadPriority];
        *buf = 138544642;
        v114 = v107;
        v115 = 2114;
        v116 = v37;
        v117 = 1024;
        v118 = v46;
        v119 = 2114;
        v120 = v106;
        v121 = 2114;
        v122 = v102;
        v123 = 2114;
        v124 = v103;
        v39 = "|%{public}@ %{public}@ %2i %{public}@  ╰ status: %{public}@ %{public}@";
LABEL_26:
        _os_log_impl(&dword_1C5C61000, v36, OS_LOG_TYPE_DEFAULT, v39, buf, 0x3Au);
      }

LABEL_59:
    }
  }

  else
  {
    if (v35 < 2)
    {
      v36 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_59;
      }

      v37 = [*(v15 + 40) streamID];
      v38 = [v108 threadPriority];
      *buf = 138544642;
      v114 = v107;
      v115 = 2114;
      v116 = v37;
      v117 = 1024;
      v118 = v38;
      v119 = 2114;
      v120 = v106;
      v121 = 2114;
      v122 = v102;
      v123 = 2114;
      v124 = v103;
      v39 = "|%{public}@ %{public}@ %2i %{public}@  ╰  status: %{public}@ %{public}@";
      goto LABEL_26;
    }

    if (v35 == 2)
    {
      v98 = v10;
      v100 = v18;
      v95 = v16;
      v96 = v13;
      v92 = v6;
      v47 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = [*(v15 + 40) streamID];
        v49 = [v108 threadPriority];
        [v21 dialog];
        v51 = v50 = v21;
        v52 = [v51 localizedTitle];
        v53 = [v50 dialog];
        v54 = [v53 localizedMessage];
        *buf = 138544642;
        v114 = v107;
        v115 = 2114;
        v116 = v48;
        v117 = 1024;
        v118 = v49;
        v119 = 2114;
        v120 = v106;
        v121 = 2114;
        v122 = v52;
        v123 = 2114;
        v124 = v54;
        _os_log_impl(&dword_1C5C61000, v47, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ dialog.title: %{public}@; dialog.message: %{public}@", buf, 0x3Au);

        v21 = v50;
      }

      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v93 = v21;
      v55 = [v21 dialog];
      v56 = [v55 actions];

      obj = v56;
      v57 = [v56 countByEnumeratingWithState:&v109 objects:v127 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v110;
        v60 = "com.apple.amp.mediaplaybackcore";
        do
        {
          for (i = 0; i != v58; ++i)
          {
            if (*v110 != v59)
            {
              objc_enumerationMutation(obj);
            }

            v62 = *(*(&v109 + 1) + 8 * i);
            v63 = [v62 type];
            v64 = @"􀿨 ";
            if (v63 <= 2)
            {
              v64 = off_1E8231BE0[v63];
            }

            v65 = os_log_create(v60, "PlaybackEvents");
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              v66 = [*(v15 + 40) streamID];
              v67 = [v108 threadPriority];
              [v62 title];
              v68 = v58;
              v69 = v60;
              v71 = v70 = v59;
              v72 = [v62 event];
              v73 = v72;
              *buf = 138544898;
              v74 = &stru_1F454A698;
              if (v72)
              {
                v74 = v72;
              }

              v114 = v107;
              v115 = 2114;
              v116 = v66;
              v117 = 1024;
              v118 = v67;
              v15 = v105;
              v119 = 2114;
              v120 = v106;
              v121 = 2114;
              v122 = v64;
              v123 = 2114;
              v124 = v71;
              v125 = 2114;
              v126 = v74;
              _os_log_impl(&dword_1C5C61000, v65, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ dialog.action[%{public}@]: %{public}@ %{public}@", buf, 0x44u);

              v59 = v70;
              v60 = v69;
              v58 = v68;
            }
          }

          v58 = [obj countByEnumeratingWithState:&v109 objects:v127 count:16];
        }

        while (v58);
      }

      v6 = v92;
      v21 = v93;
      v13 = v96;
      v10 = v98;
      v16 = v95;
      v18 = v100;
LABEL_44:
      v75 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        v76 = [*(v15 + 40) streamID];
        v77 = [v108 threadPriority];
        *buf = 138544642;
        v114 = v107;
        v115 = 2114;
        v116 = v76;
        v117 = 1024;
        v118 = v77;
        v119 = 2114;
        v120 = v106;
        v121 = 2114;
        v122 = v102;
        v123 = 2114;
        v124 = v103;
        _os_log_impl(&dword_1C5C61000, v75, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │  status: %{public}@ %{public}@", buf, 0x3Au);
      }

      v78 = [v21 error];
      v79 = [v78 treeDescription];
      v36 = [v79 componentsSeparatedByString:@"\n"];

      if ([v36 count]>= 1)
      {
        v94 = v21;
        v101 = v18;
        v97 = v13;
        v80 = 0;
        while (1)
        {
          v81 = [v36 objectAtIndexedSubscript:v80, v92];
          if (v80)
          {
            v82 = [v36 count]- 1;
            v83 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
            v84 = os_log_type_enabled(v83, OS_LOG_TYPE_ERROR);
            if (v80 == v82)
            {
              if (v84)
              {
                v85 = [*(v105 + 40) streamID];
                v86 = [v108 threadPriority];
                *buf = 138544386;
                v114 = v107;
                v115 = 2114;
                v116 = v85;
                v117 = 1024;
                v118 = v86;
                v119 = 2114;
                v120 = v106;
                v121 = 2114;
                v122 = v81;
                v87 = v83;
                v88 = "|%{public}@ %{public}@ %2i %{public}@  ╰             %{public}@";
LABEL_56:
                _os_log_impl(&dword_1C5C61000, v87, OS_LOG_TYPE_ERROR, v88, buf, 0x30u);
              }
            }

            else if (v84)
            {
              v85 = [*(v105 + 40) streamID];
              v90 = [v108 threadPriority];
              *buf = 138544386;
              v114 = v107;
              v115 = 2114;
              v116 = v85;
              v117 = 1024;
              v118 = v90;
              v119 = 2114;
              v120 = v106;
              v121 = 2114;
              v122 = v81;
              v87 = v83;
              v88 = "|%{public}@ %{public}@ %2i %{public}@  │             %{public}@";
              goto LABEL_56;
            }
          }

          else
          {
            v83 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
            if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
            {
              v85 = [*(v105 + 40) streamID];
              v89 = [v108 threadPriority];
              *buf = 138544386;
              v114 = v107;
              v115 = 2114;
              v116 = v85;
              v117 = 1024;
              v118 = v89;
              v119 = 2114;
              v120 = v106;
              v121 = 2114;
              v122 = v81;
              v87 = v83;
              v88 = "|%{public}@ %{public}@ %2i %{public}@  │   error: ❌ %{public}@";
              goto LABEL_56;
            }
          }

          if (++v80 >= [v36 count])
          {
            v13 = v97;
            v21 = v94;
            v18 = v101;
            goto LABEL_59;
          }
        }
      }

      goto LABEL_59;
    }
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  v142[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v5];
  v141 = @"remote-control-id";
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"remote-control-id"];
  v142[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v142 forKeys:&v141 count:1];
  v10 = [v6 findPreviousEventWithType:@"remote-control-begin" matchingPayload:v9];

  v11 = [v10 payload];
  v12 = [v11 objectForKeyedSubscript:@"remote-control-type"];
  LODWORD(v9) = [v12 unsignedIntValue];

  v13 = [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _symbolForCommand:v9];
  v14 = MPCRemoteCommandDescriptionCopy(v9);
  v15 = [v5 payload];
  v16 = [v15 objectForKeyedSubscript:@"remote-control-id"];

  v121 = v5;
  v17 = [v5 payload];
  v18 = [v17 objectForKeyedSubscript:@"remote-control-status"];
  v19 = [v18 firstObject];

  [v19 statusCode];
  v20 = MRMediaRemoteCommandHandlerStatusFromMPRemoteCommandHandlerStatus();
  if (*(a1 + 32))
  {
    if (v20 > 9)
    {
      if (v20 == 10)
      {
        v21 = @"🚷";
        goto LABEL_11;
      }

      if (v20 == 20)
      {
LABEL_5:
        v21 = @"📵";
LABEL_11:
        v112 = v21;
        goto LABEL_12;
      }
    }

    else
    {
      if (!v20)
      {
        v21 = @"✅";
        goto LABEL_11;
      }

      if (v20 == 1)
      {
        goto LABEL_5;
      }
    }

    v21 = @"🚫";
    goto LABEL_11;
  }

  v112 = 0;
LABEL_12:
  v114 = MRMediaRemoteCopyCommandHandlerStatusDescription();
  v22 = [v121 payload];
  v115 = [v22 objectForKeyedSubscript:@"remote-control-internal-status"];

  [v121 durationSinceEvent:v10];
  v24 = v23;
  v25 = MSVLogDateFormatter();
  v26 = [v121 date];
  v120 = [v25 stringFromDate:v26];

  v27 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v28 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [*(a1 + 40) streamID];
    *buf = 138544642;
    v128 = v120;
    v129 = 2114;
    v130 = v29;
    v131 = 1024;
    v132 = [v121 threadPriority];
    v133 = 2114;
    v134 = v27;
    v135 = 2114;
    v136 = v16;
    v137 = 2048;
    v138 = v24;
    _os_log_impl(&dword_1C5C61000, v28, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀪀 COMMAND END                %{public}@ [%.3fs]", buf, 0x3Au);
  }

  v119 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v30 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [*(a1 + 40) streamID];
    v32 = [v121 threadPriority];
    *buf = 138544642;
    v128 = v120;
    v129 = 2114;
    v130 = v31;
    v131 = 1024;
    v132 = v32;
    v133 = 2114;
    v134 = v119;
    v135 = 2114;
    v136 = v13;
    v137 = 2114;
    v138 = v14;
    _os_log_impl(&dword_1C5C61000, v30, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ command: %{public}@  %{public}@", buf, 0x3Au);
  }

  v113 = v16;

  v33 = [v19 type];
  v118 = a1;
  if (v33 > 2)
  {
    if (v33 == 3)
    {
      goto LABEL_45;
    }

    if (v33 == 999)
    {
      v41 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [*(a1 + 40) streamID];
        v43 = v19;
        v44 = [v121 threadPriority];
        [v43 customDataType];
        v46 = v45 = v14;
        v47 = [v43 customData];
        v48 = [v47 length];
        *buf = 138544642;
        v128 = v120;
        v129 = 2114;
        v130 = v42;
        v131 = 1024;
        v132 = v44;
        v19 = v43;
        v133 = 2114;
        v134 = v119;
        v135 = 2114;
        v136 = v46;
        v137 = 2048;
        v138 = v48;
        _os_log_impl(&dword_1C5C61000, v41, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ customDataType: %{public}@; customDataSize: %llu", buf, 0x3Au);

        v14 = v45;
        a1 = v118;
      }

      v34 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [*(a1 + 40) streamID];
        v49 = [v121 threadPriority];
        *buf = 138544642;
        v128 = v120;
        v129 = 2114;
        v130 = v36;
        v131 = 1024;
        v132 = v49;
        v133 = 2114;
        v134 = v119;
        v135 = 2114;
        v136 = v112;
        v137 = 2114;
        v138 = v114;
        v38 = "|%{public}@ %{public}@ %2i %{public}@  ╰ status: %{public}@ %{public}@";
        goto LABEL_50;
      }

LABEL_68:
    }
  }

  else
  {
    if (v33 < 2)
    {
      v34 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
      v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
      if (v115)
      {
        if (!v35)
        {
          goto LABEL_68;
        }

        v36 = [*(a1 + 40) streamID];
        v37 = [v121 threadPriority];
        *buf = 138544898;
        v128 = v120;
        v129 = 2114;
        v130 = v36;
        v131 = 1024;
        v132 = v37;
        v133 = 2114;
        v134 = v119;
        v135 = 2114;
        v136 = v112;
        v137 = 2114;
        v138 = v114;
        v139 = 2114;
        v140 = v115;
        v38 = "|%{public}@ %{public}@ %2i %{public}@  ╰  status: %{public}@ %{public}@; internalStatus: %{public}@";
        goto LABEL_21;
      }

      if (!v35)
      {
        goto LABEL_68;
      }

      v36 = [*(a1 + 40) streamID];
      v87 = [v121 threadPriority];
      *buf = 138544642;
      v128 = v120;
      v129 = 2114;
      v130 = v36;
      v131 = 1024;
      v132 = v87;
      v133 = 2114;
      v134 = v119;
      v135 = 2114;
      v136 = v112;
      v137 = 2114;
      v138 = v114;
      v38 = "|%{public}@ %{public}@ %2i %{public}@  ╰  status: %{public}@ %{public}@";
LABEL_50:
      v39 = v34;
      v40 = 58;
      goto LABEL_51;
    }

    if (v33 == 2)
    {
      v109 = v10;
      v111 = v14;
      v108 = v13;
      v106 = v6;
      v50 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = [*(a1 + 40) streamID];
        v52 = [v121 threadPriority];
        v53 = [v19 dialog];
        v54 = [v53 localizedTitle];
        v55 = [v19 dialog];
        v56 = [v55 localizedMessage];
        *buf = 138544642;
        v128 = v120;
        v129 = 2114;
        v130 = v51;
        v131 = 1024;
        v132 = v52;
        v133 = 2114;
        v134 = v119;
        v135 = 2114;
        v136 = v54;
        v137 = 2114;
        v138 = v56;
        _os_log_impl(&dword_1C5C61000, v50, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ dialog.title: %{public}@; dialog.message: %{public}@", buf, 0x3Au);
      }

      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v107 = v19;
      v57 = [v19 dialog];
      v58 = [v57 actions];

      obj = v58;
      v59 = [v58 countByEnumeratingWithState:&v122 objects:v126 count:16];
      if (v59)
      {
        v60 = v59;
        v61 = *v123;
        v62 = @"􀿨 ";
        v63 = "PlaybackEvents";
        do
        {
          v64 = 0;
          v116 = v60;
          do
          {
            if (*v123 != v61)
            {
              objc_enumerationMutation(obj);
            }

            v65 = *(*(&v122 + 1) + 8 * v64);
            v66 = [v65 type];
            v67 = v62;
            if (v66 <= 2)
            {
              v67 = off_1E8231BE0[v66];
            }

            v68 = os_log_create("com.apple.amp.mediaplaybackcore", v63);
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              v69 = [*(a1 + 40) streamID];
              v70 = v63;
              v71 = v62;
              v72 = [v121 threadPriority];
              [v65 title];
              v74 = v73 = v61;
              v75 = [v65 event];
              v76 = v75;
              *buf = 138544898;
              v77 = &stru_1F454A698;
              if (v75)
              {
                v77 = v75;
              }

              v128 = v120;
              v129 = 2114;
              v130 = v69;
              v131 = 1024;
              v132 = v72;
              v62 = v71;
              v63 = v70;
              v133 = 2114;
              v134 = v119;
              v135 = 2114;
              v136 = v67;
              v137 = 2114;
              v138 = v74;
              v139 = 2114;
              v140 = v77;
              _os_log_impl(&dword_1C5C61000, v68, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ dialog.action[%{public}@]: %{public}@ %{public}@", buf, 0x44u);

              v61 = v73;
              v60 = v116;

              a1 = v118;
            }

            ++v64;
          }

          while (v60 != v64);
          v60 = [obj countByEnumeratingWithState:&v122 objects:v126 count:16];
        }

        while (v60);
      }

      v19 = v107;
      v78 = [v107 error];

      v6 = v106;
      v13 = v108;
      v10 = v109;
      v14 = v111;
      if (v78)
      {
LABEL_45:
        v79 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
        v80 = os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT);
        v81 = v6;
        if (v115)
        {
          if (v80)
          {
            v82 = [*(v118 + 40) streamID];
            v83 = [v121 threadPriority];
            *buf = 138544898;
            v128 = v120;
            v129 = 2114;
            v130 = v82;
            v131 = 1024;
            v132 = v83;
            v133 = 2114;
            v134 = v119;
            v135 = 2114;
            v136 = v112;
            v137 = 2114;
            v138 = v114;
            v139 = 2114;
            v140 = v115;
            v84 = "|%{public}@ %{public}@ %2i %{public}@  │  status: %{public}@ %{public}@; internalStatus: %{public}@";
            v85 = v79;
            v86 = 68;
LABEL_54:
            _os_log_impl(&dword_1C5C61000, v85, OS_LOG_TYPE_DEFAULT, v84, buf, v86);
          }
        }

        else if (v80)
        {
          v82 = [*(v118 + 40) streamID];
          v88 = [v121 threadPriority];
          *buf = 138544642;
          v128 = v120;
          v129 = 2114;
          v130 = v82;
          v131 = 1024;
          v132 = v88;
          v133 = 2114;
          v134 = v119;
          v135 = 2114;
          v136 = v112;
          v137 = 2114;
          v138 = v114;
          v84 = "|%{public}@ %{public}@ %2i %{public}@  │  status: %{public}@ %{public}@";
          v85 = v79;
          v86 = 58;
          goto LABEL_54;
        }

        v89 = [v19 error];
        v90 = [v89 treeDescription];
        v34 = [v90 componentsSeparatedByString:@"\n"];

        if ([v34 count]< 1)
        {
          goto LABEL_68;
        }

        v110 = v10;
        v91 = 0;
        while (1)
        {
          v92 = [v34 objectAtIndexedSubscript:v91];
          if (v91)
          {
            v93 = [v34 count]- 1;
            v94 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
            v95 = os_log_type_enabled(v94, OS_LOG_TYPE_ERROR);
            if (v91 == v93)
            {
              if (v95)
              {
                v96 = [*(v118 + 40) streamID];
                v97 = [v121 threadPriority];
                *buf = 138544386;
                v128 = v120;
                v129 = 2114;
                v130 = v96;
                v131 = 1024;
                v132 = v97;
                v133 = 2114;
                v134 = v119;
                v135 = 2114;
                v136 = v92;
                v98 = v94;
                v99 = "|%{public}@ %{public}@ %2i %{public}@  ╰             %{public}@";
LABEL_65:
                _os_log_impl(&dword_1C5C61000, v98, OS_LOG_TYPE_ERROR, v99, buf, 0x30u);
              }
            }

            else if (v95)
            {
              v96 = [*(v118 + 40) streamID];
              v101 = [v121 threadPriority];
              *buf = 138544386;
              v128 = v120;
              v129 = 2114;
              v130 = v96;
              v131 = 1024;
              v132 = v101;
              v133 = 2114;
              v134 = v119;
              v135 = 2114;
              v136 = v92;
              v98 = v94;
              v99 = "|%{public}@ %{public}@ %2i %{public}@  │             %{public}@";
              goto LABEL_65;
            }
          }

          else
          {
            v94 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
            if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
            {
              v96 = [*(v118 + 40) streamID];
              v100 = [v121 threadPriority];
              *buf = 138544386;
              v128 = v120;
              v129 = 2114;
              v130 = v96;
              v131 = 1024;
              v132 = v100;
              v133 = 2114;
              v134 = v119;
              v135 = 2114;
              v136 = v92;
              v98 = v94;
              v99 = "|%{public}@ %{public}@ %2i %{public}@  │   error: ❌ %{public}@";
              goto LABEL_65;
            }
          }

          if (++v91 >= [v34 count])
          {
            v6 = v81;
            v10 = v110;
            goto LABEL_68;
          }
        }
      }

      v34 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
      v103 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
      if (v115)
      {
        if (v103)
        {
          v36 = [*(a1 + 40) streamID];
          v104 = [v121 threadPriority];
          *buf = 138544898;
          v128 = v120;
          v129 = 2114;
          v130 = v36;
          v131 = 1024;
          v132 = v104;
          v133 = 2114;
          v134 = v119;
          v135 = 2114;
          v136 = v112;
          v137 = 2114;
          v138 = v114;
          v139 = 2114;
          v140 = v115;
          v38 = "|%{public}@ %{public}@ %2i %{public}@  ╰  status: %{public}@ %{public}@; internalStatus: %{public}@";
LABEL_21:
          v39 = v34;
          v40 = 68;
LABEL_51:
          _os_log_impl(&dword_1C5C61000, v39, OS_LOG_TYPE_DEFAULT, v38, buf, v40);

          goto LABEL_68;
        }
      }

      else if (v103)
      {
        v36 = [*(a1 + 40) streamID];
        v105 = [v121 threadPriority];
        *buf = 138544642;
        v128 = v120;
        v129 = 2114;
        v130 = v36;
        v131 = 1024;
        v132 = v105;
        v133 = 2114;
        v134 = v119;
        v135 = 2114;
        v136 = v112;
        v137 = 2114;
        v138 = v114;
        v38 = "|%{public}@ %{public}@ %2i %{public}@  ╰  status: %{public}@ %{public}@";
        goto LABEL_50;
      }

      goto LABEL_68;
    }
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_55(uint64_t a1, void *a2, void *a3)
{
  v153 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v5];
  v101 = v6;
  v100 = [v6 findPreviousEventWithType:@"remote-control-commands-changed" matchingPayload:0];
  v7 = [v100 payload];
  v8 = [v7 objectForKeyedSubscript:@"remote-control-commands"];

  v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v130 objects:v152 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v131;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v131 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v130 + 1) + 8 * i);
        v16 = [v15 objectForKeyedSubscript:@"commandType"];
        [v9 setObject:v15 forKeyedSubscript:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v130 objects:v152 count:16];
    }

    while (v12);
  }

  v102 = a1;
  v99 = v10;

  v103 = v5;
  v17 = [v5 payload];
  v18 = [v17 objectForKeyedSubscript:@"remote-control-commands"];

  v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v18, "count")}];
  v106 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v18, "count")}];
  v105 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v18, "count")}];
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v98 = v18;
  v20 = v18;
  v21 = v19;
  obj = [v20 reverseObjectEnumerator];
  v22 = [obj countByEnumeratingWithState:&v126 objects:v151 count:16];
  v104 = v19;
  if (v22)
  {
    v23 = v22;
    v24 = *v127;
    do
    {
      v25 = 0;
      do
      {
        if (*v127 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v126 + 1) + 8 * v25);
        v27 = [v26 objectForKeyedSubscript:@"commandType"];
        v28 = [v27 integerValue];

        v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v28];
        v30 = [v9 objectForKeyedSubscript:v29];

        if (v28 != 99990)
        {
          v31 = [v26 objectForKeyedSubscript:@"supported"];
          v32 = [v31 BOOLValue];

          if (!v30 || ([v30 objectForKeyedSubscript:@"supported"], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "BOOLValue"), v33, v32 != v34))
          {
            if (v32)
            {
              v35 = v21;
            }

            else
            {
              v35 = v106;
            }

            goto LABEL_21;
          }

          v36 = [v26 objectForKeyedSubscript:@"enabled"];
          v37 = [v36 BOOLValue];

          v38 = [v30 objectForKeyedSubscript:@"enabled"];
          v39 = [v38 BOOLValue];

          if (v37 != v39)
          {
            goto LABEL_20;
          }

          v40 = [v26 objectForKeyedSubscript:@"unsupportedReasons"];
          v41 = [v30 objectForKeyedSubscript:@"unsupportedReasons"];
          if (v40 == v41)
          {
            v42 = 0;
          }

          else
          {
            v42 = [v40 isEqual:v41] ^ 1;
          }

          v43 = [v26 objectForKeyedSubscript:@"disabledReasons"];
          v44 = [v30 objectForKeyedSubscript:@"disabledReasons"];
          if (v43 == v44)
          {
            v45 = 0;
          }

          else
          {
            v45 = [v43 isEqual:v44] ^ 1;
          }

          if ((v42 | v45))
          {
            [v105 addObject:v26];
            v21 = v104;
          }

          else
          {
            v46 = [v26 objectForKeyedSubscript:@"options"];
            v47 = [v30 objectForKeyedSubscript:@"options"];
            v48 = v47;
            v21 = v104;
            if (v46 == v47)
            {
            }

            else
            {
              v49 = [v46 isEqual:v47];

              if ((v49 & 1) == 0)
              {
LABEL_20:
                v35 = v105;
LABEL_21:
                [v35 addObject:v26];
              }
            }
          }
        }

        ++v25;
      }

      while (v23 != v25);
      v50 = [obj countByEnumeratingWithState:&v126 objects:v151 count:16];
      v23 = v50;
    }

    while (v50);
  }

  if ([v21 count] || objc_msgSend(v106, "count") || objc_msgSend(v105, "count"))
  {
    v51 = MSVLogDateFormatter();
    v52 = [v103 date];
    v53 = [v51 stringFromDate:v52];

    v54 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
    v55 = os_log_create("com.apple.amp.mediaplaybackcore", "CommandsChanged");
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = [*(v102 + 40) streamID];
      v57 = [v103 threadPriority];
      *buf = 138544130;
      v135 = v53;
      v136 = 2114;
      v137 = v56;
      v138 = 1024;
      v139 = v57;
      v140 = 2114;
      v141 = v54;
      _os_log_impl(&dword_1C5C61000, v55, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀪂 COMMANDS CHANGED", buf, 0x26u);
    }

    v58 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
    v59 = os_log_create("com.apple.amp.mediaplaybackcore", "CommandsChanged");
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = [*(v102 + 40) streamID];
      v61 = [v103 threadPriority];
      *buf = 138544130;
      v135 = v53;
      v136 = 2114;
      v137 = v60;
      v138 = 1024;
      v139 = v61;
      v140 = 2114;
      v141 = v58;
      _os_log_impl(&dword_1C5C61000, v59, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ commands:", buf, 0x26u);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_77;
    aBlock[3] = &unk_1E8231B10;
    obja = v53;
    v122 = obja;
    v123 = *(v102 + 40);
    v96 = v103;
    v124 = v96;
    v97 = v58;
    v125 = v97;
    v62 = _Block_copy(aBlock);
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v63 = v104;
    v64 = [v63 countByEnumeratingWithState:&v117 objects:v150 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v118;
      do
      {
        for (j = 0; j != v65; ++j)
        {
          if (*v118 != v66)
          {
            objc_enumerationMutation(v63);
          }

          v62[2](v62, @"􀃝", *(*(&v117 + 1) + 8 * j));
        }

        v65 = [v63 countByEnumeratingWithState:&v117 objects:v150 count:16];
      }

      while (v65);
    }

    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v68 = v105;
    v69 = [v68 countByEnumeratingWithState:&v113 objects:v149 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = *v114;
      do
      {
        for (k = 0; k != v70; ++k)
        {
          if (*v114 != v71)
          {
            objc_enumerationMutation(v68);
          }

          v62[2](v62, @"􀃩", *(*(&v113 + 1) + 8 * k));
        }

        v70 = [v68 countByEnumeratingWithState:&v113 objects:v149 count:16];
      }

      while (v70);
    }

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v73 = v106;
    v74 = [v73 countByEnumeratingWithState:&v109 objects:v148 count:16];
    if (v74)
    {
      v75 = v74;
      v76 = *v110;
      do
      {
        for (m = 0; m != v75; ++m)
        {
          if (*v110 != v76)
          {
            objc_enumerationMutation(v73);
          }

          v62[2](v62, @"􀃞", *(*(&v109 + 1) + 8 * m));
        }

        v75 = [v73 countByEnumeratingWithState:&v109 objects:v148 count:16];
      }

      while (v75);
    }

    v78 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
    v79 = os_log_create("com.apple.amp.mediaplaybackcore", "CommandsChanged");
    if (!os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      v86 = v103;
      v88 = v100;
      v87 = v101;
      v90 = v98;
      v89 = v99;
      v85 = obja;
      goto LABEL_69;
    }

    v80 = [*(v102 + 40) streamID];
    v81 = [v96 threadPriority];
    v82 = [v63 count];
    v83 = [v73 count];
    v84 = [v68 count];
    *buf = 138544898;
    v85 = obja;
    v135 = obja;
    v136 = 2114;
    v137 = v80;
    v138 = 1024;
    v139 = v81;
    v140 = 2114;
    v141 = v78;
    v142 = 2048;
    v143 = v82;
    v144 = 2048;
    v145 = v83;
    v146 = 2048;
    v147 = v84;
    _os_log_impl(&dword_1C5C61000, v79, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ added: %lld; removed: %lld; updated: %lld", buf, 0x44u);

    v86 = v103;
    v88 = v100;
    v87 = v101;
    v89 = v99;
  }

  else
  {
    v92 = MSVLogDateFormatter();
    v86 = v103;
    v93 = [v103 date];
    v85 = [v92 stringFromDate:v93];

    v78 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
    v79 = os_log_create("com.apple.amp.mediaplaybackcore", "CommandsChanged");
    v89 = v99;
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      v94 = [*(v102 + 40) streamID];
      v95 = [v103 threadPriority];
      *buf = 138544130;
      v135 = v85;
      v136 = 2114;
      v137 = v94;
      v138 = 1024;
      v139 = v95;
      v140 = 2114;
      v141 = v78;
      _os_log_impl(&dword_1C5C61000, v79, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀪂 COMMANDS CHANGED           [no change]", buf, 0x26u);
    }

    v88 = v100;
    v87 = v101;
  }

  v90 = v98;
LABEL_69:

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_95(uint64_t a1, void *a2)
{
  v98 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"private-listening-source"];
  v77 = [v5 integerValue];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"queue-reporting-metadata"];

  v8 = [v7 objectForKeyedSubscript:@"private-listening-enabled"];
  v83 = [v7 objectForKeyedSubscript:@"application-bundle-id"];
  v79 = [v7 objectForKeyedSubscript:@"application-version"];
  v9 = [v3 payload];
  v82 = [v9 objectForKeyedSubscript:@"queue-delegated-account-metadata"];

  v84 = [v7 objectForKeyedSubscript:@"device-metadata"];
  v10 = MSVLogDateFormatter();
  v11 = [v3 date];
  v85 = [v10 stringFromDate:v11];

  v12 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 40) streamID];
    v15 = [v3 threadPriority];
    v16 = [v3 payload];
    [v16 objectForKeyedSubscript:@"queue-section-id"];
    v18 = v17 = v8;
    *buf = 138544386;
    v87 = v85;
    v88 = 2114;
    v89 = v14;
    v90 = 1024;
    v91 = v15;
    v92 = 2114;
    v93 = v12;
    v94 = 2114;
    v95 = v18;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀋾 QUEUE ADD                  %{public}@", buf, 0x30u);

    v8 = v17;
  }

  v19 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v20 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [*(a1 + 40) streamID];
    v22 = [v3 threadPriority];
    v23 = [v3 payload];
    v24 = [v23 objectForKeyedSubscript:@"queue-description"];
    *buf = 138544386;
    v87 = v85;
    v88 = 2114;
    v89 = v21;
    v90 = 1024;
    v91 = v22;
    v92 = 2114;
    v93 = v19;
    v94 = 2114;
    v95 = v24;
    _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ queue: %{public}@", buf, 0x30u);
  }

  v25 = [v3 payload];
  v26 = [v25 objectForKeyedSubscript:@"queue-adjusted-start-item-ids"];

  v78 = v26;
  if (v26)
  {
    v27 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [*(a1 + 40) streamID];
      v29 = [v3 threadPriority];
      *buf = 138544386;
      v87 = v85;
      v88 = 2114;
      v89 = v28;
      v90 = 1024;
      v91 = v29;
      v92 = 2114;
      v93 = v19;
      v94 = 2114;
      v95 = v78;
      _os_log_impl(&dword_1C5C61000, v27, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ adjusted-start-item: %{public}@", buf, 0x30u);
    }
  }

  v30 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [*(a1 + 40) streamID];
    v32 = [v3 threadPriority];
    v33 = [v3 payload];
    v34 = [v33 objectForKeyedSubscript:@"queue-start-item-ids"];
    *buf = 138544386;
    v87 = v85;
    v88 = 2114;
    v89 = v31;
    v90 = 1024;
    v91 = v32;
    v92 = 2114;
    v93 = v19;
    v94 = 2114;
    v95 = v34;
    _os_log_impl(&dword_1C5C61000, v30, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ start-item: %{public}@", buf, 0x30u);
  }

  v35 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [*(a1 + 40) streamID];
    v37 = [v3 threadPriority];
    v38 = [v7 objectForKeyedSubscript:@"feature-name"];
    *buf = 138544386;
    v87 = v85;
    v88 = 2114;
    v89 = v36;
    v90 = 1024;
    v91 = v37;
    v92 = 2114;
    v93 = v19;
    v94 = 2114;
    v95 = v38;
    _os_log_impl(&dword_1C5C61000, v35, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ feature: %{public}@", buf, 0x30u);
  }

  v39 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = [*(a1 + 40) streamID];
    v41 = [v3 threadPriority];
    v42 = [v7 objectForKeyedSubscript:@"queue-grouping-id"];
    *buf = 138544386;
    v87 = v85;
    v88 = 2114;
    v89 = v40;
    v90 = 1024;
    v91 = v41;
    v92 = 2114;
    v93 = v19;
    v94 = 2114;
    v95 = v42;
    _os_log_impl(&dword_1C5C61000, v39, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ queue-grouping-id: %{public}@", buf, 0x30u);
  }

  v43 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = [*(a1 + 40) streamID];
    v45 = [v3 threadPriority];
    v46 = [v3 payload];
    v47 = [v46 objectForKeyedSubscript:@"account-id"];
    *buf = 138544386;
    v87 = v85;
    v88 = 2114;
    v89 = v44;
    v90 = 1024;
    v91 = v45;
    v92 = 2114;
    v93 = v19;
    v94 = 2114;
    v95 = v47;
    _os_log_impl(&dword_1C5C61000, v43, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ account: %{public}@", buf, 0x30u);
  }

  if (v83)
  {
    v48 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = [*(a1 + 40) streamID];
      v50 = [v3 threadPriority];
      *buf = 138544642;
      v87 = v85;
      v88 = 2114;
      v89 = v49;
      v90 = 1024;
      v91 = v50;
      v92 = 2114;
      v93 = v19;
      v94 = 2114;
      v95 = v83;
      v96 = 2114;
      v97 = v79;
      _os_log_impl(&dword_1C5C61000, v48, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ requesting-application: %{public}@/%{public}@", buf, 0x3Au);
    }
  }

  v80 = a1;
  v81 = v19;
  if (v84)
  {
    v51 = [v84 objectForKeyedSubscript:@"device-name"];
    v52 = [v84 objectForKeyedSubscript:@"device-software-variant"];
    v53 = [v84 objectForKeyedSubscript:@"user-agent"];
    v54 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = [*(v80 + 40) streamID];
      v56 = [v3 threadPriority];
      [v3 payload];
      v57 = v76 = v7;
      [v57 objectForKeyedSubscript:@"queue-delegated-account-id"];
      v58 = v52;
      v60 = v59 = v8;
      *buf = 138544642;
      v87 = v85;
      v88 = 2114;
      v89 = v55;
      v90 = 1024;
      v91 = v56;
      v92 = 2114;
      v93 = v81;
      v94 = 2114;
      v95 = v60;
      v96 = 2114;
      v97 = v51;
      _os_log_impl(&dword_1C5C61000, v54, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ delegatedAccount: %{public}@; delegatedDeviceName: %{public}@", buf, 0x3Au);

      v8 = v59;
      v52 = v58;

      v7 = v76;
    }

    v61 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v62 = [*(v80 + 40) streamID];
      v63 = [v3 threadPriority];
      *buf = 138544642;
      v87 = v85;
      v88 = 2114;
      v89 = v62;
      v90 = 1024;
      v91 = v63;
      v92 = 2114;
      v93 = v81;
      v94 = 2114;
      v95 = v52;
      v96 = 2114;
      v97 = v53;
      _os_log_impl(&dword_1C5C61000, v61, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ delegatedDeviceOSVariant: %{public}@; delegatedDeviceUserAgent: %{public}@", buf, 0x3Au);
    }

    v19 = v81;
  }

  if (v82)
  {
    v64 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = [*(v80 + 40) streamID];
      v66 = [v3 threadPriority];
      v67 = [v82 objectForKeyedSubscript:@"private-listening-enabled"];
      v68 = [v67 BOOLValue];
      *buf = 138544386;
      v87 = v85;
      v88 = 2114;
      v89 = v65;
      v90 = 1024;
      v91 = v66;
      v19 = v81;
      v92 = 2114;
      v93 = v81;
      v94 = 1024;
      LODWORD(v95) = v68;
      _os_log_impl(&dword_1C5C61000, v64, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ delegated-private-listening: %{BOOL}u", buf, 0x2Cu);
    }
  }

  v69 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
  {
    v70 = [*(v80 + 40) streamID];
    v71 = [v3 threadPriority];
    if ((v77 - 1) > 2)
    {
      v72 = @"Unknown";
      if (v8)
      {
LABEL_34:
        v73 = [v8 BOOLValue];
        v74 = @"NO";
        if (v73)
        {
          v74 = @"YES";
        }

        goto LABEL_39;
      }
    }

    else
    {
      v72 = off_1E8231BF8[v77 - 1];
      if (v8)
      {
        goto LABEL_34;
      }
    }

    v74 = 0;
LABEL_39:
    *buf = 138544642;
    v87 = v85;
    v88 = 2114;
    v89 = v70;
    v90 = 1024;
    v91 = v71;
    v92 = 2114;
    v93 = v81;
    v94 = 2114;
    v95 = v72;
    v19 = v81;
    v96 = 2114;
    v97 = v74;
    _os_log_impl(&dword_1C5C61000, v69, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ private-listening-source: %{public}@; private-listening-override: %{public}@", buf, 0x3Au);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_102(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = MSVLogDateFormatter();
  v5 = [v3 date];
  v6 = [v4 stringFromDate:v5];

  v7 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 40) streamID];
    v10 = [v3 threadPriority];
    v11 = [v3 payload];
    v12 = [v11 objectForKeyedSubscript:@"queue-section-id"];
    v14 = 138544386;
    v15 = v6;
    v16 = 2114;
    v17 = v9;
    v18 = 1024;
    v19 = v10;
    v20 = 2114;
    v21 = v7;
    v22 = 2114;
    v23 = v12;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀈽 QUEUE LOAD BEGIN           %{public}@", &v14, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_103(uint64_t a1, void *a2, void *a3)
{
  v61[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v5];
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"queue-load-error"];

  v9 = [v5 payload];
  v10 = [v9 objectForKeyedSubscript:@"queue-section-id"];

  v11 = [v5 payload];
  v12 = [v11 objectForKeyedSubscript:@"queue-section-item-count"];
  v13 = [v12 integerValue];

  v60 = @"queue-section-id";
  v61[0] = v10;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&v60 count:1];
  v15 = [v6 findPreviousEventWithType:@"queue-load-begin" matchingPayload:v14];

  [v5 durationSinceEvent:v15];
  v17 = v16;
  v18 = MSVLogDateFormatter();
  v19 = [v5 date];
  v47 = [v18 stringFromDate:v19];

  v20 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v21 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 40) streamID];
    v23 = v22 = v15;
    *buf = 138544642;
    v49 = v47;
    v50 = 2114;
    v51 = v23;
    v52 = 1024;
    v53 = [v5 threadPriority];
    v54 = 2114;
    v55 = v20;
    v56 = 2114;
    v57 = v10;
    v58 = 2048;
    v59 = v17;
    _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀈾 QUEUE LOAD END             %{public}@ [%.3fs]", buf, 0x3Au);

    v15 = v22;
  }

  v45 = v10;

  v46 = a1;
  v24 = *(a1 + 32);
  if (v8)
  {
    v25 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:v24 type:?];
    v26 = [v8 treeDescription];
    v27 = [v26 componentsSeparatedByString:@"\n"];

    if ([v27 count]>= 1)
    {
      v42 = v15;
      v43 = v8;
      v44 = v6;
      v28 = 0;
      while (1)
      {
        v29 = [v27 objectAtIndexedSubscript:v28, v42, v43, v44, v45];
        if (v28)
        {
          v30 = [v27 count]- 1;
          v31 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
          v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
          if (v28 == v30)
          {
            if (v32)
            {
              v33 = [*(v46 + 40) streamID];
              v34 = [v5 threadPriority];
              *buf = 138544386;
              v49 = v47;
              v50 = 2114;
              v51 = v33;
              v52 = 1024;
              v53 = v34;
              v54 = 2114;
              v55 = v25;
              v56 = 2114;
              v57 = v29;
              v35 = v31;
              v36 = "|%{public}@ %{public}@ %2i %{public}@  ╰           %{public}@";
LABEL_14:
              _os_log_impl(&dword_1C5C61000, v35, OS_LOG_TYPE_ERROR, v36, buf, 0x30u);
            }
          }

          else if (v32)
          {
            v33 = [*(v46 + 40) streamID];
            v38 = [v5 threadPriority];
            *buf = 138544386;
            v49 = v47;
            v50 = 2114;
            v51 = v33;
            v52 = 1024;
            v53 = v38;
            v54 = 2114;
            v55 = v25;
            v56 = 2114;
            v57 = v29;
            v35 = v31;
            v36 = "|%{public}@ %{public}@ %2i %{public}@  │           %{public}@";
            goto LABEL_14;
          }
        }

        else
        {
          v31 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v33 = [*(v46 + 40) streamID];
            v37 = [v5 threadPriority];
            *buf = 138544386;
            v49 = v47;
            v50 = 2114;
            v51 = v33;
            v52 = 1024;
            v53 = v37;
            v54 = 2114;
            v55 = v25;
            v56 = 2114;
            v57 = v29;
            v35 = v31;
            v36 = "|%{public}@ %{public}@ %2i %{public}@ ╲╭ error: ❌ %{public}@";
            goto LABEL_14;
          }
        }

        if (++v28 >= [v27 count])
        {
          v8 = v43;
          v6 = v44;
          v15 = v42;
          break;
        }
      }
    }
  }

  else
  {
    v25 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:v24 type:?];
    v27 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [*(v46 + 40) streamID];
      v40 = [v5 threadPriority];
      *buf = 138544386;
      v49 = v47;
      v50 = 2114;
      v51 = v39;
      v52 = 1024;
      v53 = v40;
      v54 = 2114;
      v55 = v25;
      v56 = 2048;
      v57 = v13;
      _os_log_impl(&dword_1C5C61000, v27, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ itemCount: %ld", buf, 0x30u);
    }
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_104(uint64_t a1, void *a2)
{
  *(&v105[1] + 6) = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"container-metadata"];

  v91 = [v5 objectForKeyedSubscript:@"container-title"];
  v6 = [v3 payload];
  v89 = [v6 objectForKeyedSubscript:@"container-kind"];

  v7 = [v3 payload];
  v90 = [v7 objectForKeyedSubscript:@"container-ids"];

  v8 = MSVLogDateFormatter();
  v9 = [v3 date];
  v93 = [v8 stringFromDate:v9];

  v10 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 40) streamID];
    v13 = [v3 threadPriority];
    v14 = [v3 payload];
    v15 = [v14 objectForKeyedSubscript:@"queue-section-id"];
    *buf = 138544386;
    v95 = v93;
    v96 = 2114;
    v97 = v12;
    v98 = 1024;
    v99 = v13;
    v100 = 2114;
    v101 = v10;
    v102 = 2114;
    v103 = v15;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀈯 CONTAINER BEGIN            %{public}@", buf, 0x30u);
  }

  v16 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 40) streamID];
    v19 = [v3 threadPriority];
    *buf = 138544386;
    v95 = v93;
    v96 = 2114;
    v97 = v18;
    v98 = 1024;
    v99 = v19;
    v100 = 2114;
    v101 = v16;
    v102 = 2114;
    v103 = v91;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ title: %{public}@", buf, 0x30u);
  }

  v20 = [v5 objectForKeyedSubscript:@"container-is-playlist-folder"];
  v21 = [v5 objectForKeyedSubscript:@"container-is-collaborative-playlist"];
  v22 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  v92 = v16;
  if (v20 | v21)
  {
    if (v23)
    {
      v24 = [*(a1 + 40) streamID];
      v25 = [v3 threadPriority];
      v26 = [v89 humanDescription];
      v27 = [v20 BOOLValue];
      v28 = [v21 BOOLValue];
      *buf = 138544898;
      v95 = v93;
      v96 = 2114;
      v97 = v24;
      v98 = 1024;
      v99 = v25;
      v100 = 2114;
      v101 = v92;
      v102 = 2114;
      v103 = v26;
      v104 = 1024;
      LODWORD(v105[0]) = v27;
      WORD2(v105[0]) = 1024;
      *(v105 + 6) = v28;
      _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ kind: %{public}@; isFolder: %{BOOL}u; isCollaborative: %{BOOL}u", buf, 0x3Cu);
    }

    v29 = [v3 payload];
    v22 = [v29 objectForKeyedSubscript:@"nested-container"];

    if (!v20)
    {
      v16 = v92;
      goto LABEL_28;
    }

    v16 = v92;
    if (!v22)
    {
      goto LABEL_28;
    }

    v30 = [v22 objectForKeyedSubscript:@"container-metadata"];
    v86 = [v30 objectForKeyedSubscript:@"container-title"];
    v85 = [v22 objectForKeyedSubscript:@"container-kind"];
    v84 = [v22 objectForKeyedSubscript:@"container-ids"];
    *(&v87 + 1) = [v30 objectForKeyedSubscript:@"container-is-playlist-folder"];
    *&v87 = [v30 objectForKeyedSubscript:@"container-is-collaborative-playlist"];
    v31 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [*(a1 + 40) streamID];
      v33 = [v3 threadPriority];
      *buf = 138544386;
      v95 = v93;
      v96 = 2114;
      v97 = v32;
      v98 = 1024;
      v99 = v33;
      v100 = 2114;
      v101 = v92;
      v102 = 2114;
      v103 = v86;
      _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │╲╭ title: %{public}@", buf, 0x30u);
    }

    v34 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    v83 = v30;
    if (v87 == 0)
    {
      if (v35)
      {
        v36 = [*(a1 + 40) streamID];
        v47 = [v3 threadPriority];
        v38 = [v85 humanDescription];
        *buf = 138544386;
        v95 = v93;
        v96 = 2114;
        v97 = v36;
        v98 = 1024;
        v99 = v47;
        v30 = v83;
        v100 = 2114;
        v101 = v92;
        v102 = 2114;
        v103 = v38;
        v40 = "|%{public}@ %{public}@ %2i %{public}@  │ │ kind: %{public}@";
        v41 = v34;
        v42 = 48;
        goto LABEL_20;
      }
    }

    else if (v35)
    {
      v36 = [*(a1 + 40) streamID];
      v37 = [v3 threadPriority];
      v38 = [v85 humanDescription];
      LODWORD(v82) = [*(&v87 + 1) BOOLValue];
      v39 = [v87 BOOLValue];
      *buf = 138544898;
      v95 = v93;
      v96 = 2114;
      v97 = v36;
      v98 = 1024;
      v99 = v37;
      v30 = v83;
      v100 = 2114;
      v101 = v92;
      v102 = 2114;
      v103 = v38;
      v104 = 1024;
      LODWORD(v105[0]) = v82;
      WORD2(v105[0]) = 1024;
      *(v105 + 6) = v39;
      v40 = "|%{public}@ %{public}@ %2i %{public}@  │ │ kind: %{public}@; isFolder: %{BOOL}u; isCollaborative: %{BOOL}u";
      v41 = v34;
      v42 = 60;
LABEL_20:
      _os_log_impl(&dword_1C5C61000, v41, OS_LOG_TYPE_DEFAULT, v40, buf, v42);
    }

    v48 = [v30 objectForKeyedSubscript:@"container-playlist-version-hash"];
    v16 = v92;
    if (v48)
    {
      v49 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = [*(a1 + 40) streamID];
        v51 = [v3 threadPriority];
        *buf = 138544386;
        v95 = v93;
        v96 = 2114;
        v97 = v50;
        v98 = 1024;
        v99 = v51;
        v100 = 2114;
        v101 = v92;
        v102 = 2114;
        v103 = v48;
        _os_log_impl(&dword_1C5C61000, v49, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ │ playlistVersionHash: %{public}@", buf, 0x30u);

        v30 = v83;
      }
    }

    v52 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = [*(a1 + 40) streamID];
      v54 = [v3 threadPriority];
      [v84 humanDescription];
      v82 = v21;
      v56 = v55 = v20;
      *buf = 138544386;
      v95 = v93;
      v96 = 2114;
      v97 = v53;
      v98 = 1024;
      v99 = v54;
      v16 = v92;
      v100 = 2114;
      v101 = v92;
      v102 = 2114;
      v103 = v56;
      _os_log_impl(&dword_1C5C61000, v52, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ ╰ identifiers: %{public}@", buf, 0x30u);

      v20 = v55;
      v21 = v82;

      v30 = v83;
    }

    goto LABEL_28;
  }

  if (v23)
  {
    v43 = [*(a1 + 40) streamID];
    v44 = [v3 threadPriority];
    [v89 humanDescription];
    v46 = v45 = v20;
    *buf = 138544386;
    v95 = v93;
    v96 = 2114;
    v97 = v43;
    v98 = 1024;
    v99 = v44;
    v100 = 2114;
    v101 = v16;
    v102 = 2114;
    v103 = v46;
    _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ kind: %{public}@", buf, 0x30u);

    v20 = v45;
  }

LABEL_28:

  v57 = [v5 objectForKeyedSubscript:@"container-playlist-version-hash"];
  if (v57)
  {
    v58 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = [*(a1 + 40) streamID];
      v60 = [v3 threadPriority];
      *buf = 138544386;
      v95 = v93;
      v96 = 2114;
      v97 = v59;
      v98 = 1024;
      v99 = v60;
      v100 = 2114;
      v101 = v16;
      v102 = 2114;
      v103 = v57;
      _os_log_impl(&dword_1C5C61000, v58, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ playlistVersionHash: %{public}@", buf, 0x30u);
    }
  }

  v61 = [v5 objectForKeyedSubscript:{@"container-radio-type", v82}];
  v62 = [v61 integerValue];

  v63 = [v5 objectForKeyedSubscript:@"container-radio-subtype"];
  [v63 integerValue];

  if (v62)
  {
    v64 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = [*(a1 + 40) streamID];
      v66 = [v3 threadPriority];
      v88 = v57;
      v67 = v3;
      v68 = v5;
      v69 = a1;
      v70 = v21;
      v71 = v20;
      v72 = v66;
      v73 = NSStringFromMPModelRadioStationType();
      v74 = NSStringFromMPModelRadioStationSubtype();
      *buf = 138544642;
      v95 = v93;
      v96 = 2114;
      v97 = v65;
      v98 = 1024;
      v99 = v72;
      v20 = v71;
      v21 = v70;
      a1 = v69;
      v5 = v68;
      v3 = v67;
      v57 = v88;
      v100 = 2114;
      v101 = v92;
      v102 = 2114;
      v103 = v73;
      v104 = 2114;
      v105[0] = v74;
      _os_log_impl(&dword_1C5C61000, v64, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ stationType: %{public}@; stationSubtype: %{public}@", buf, 0x3Au);

      v16 = v92;
    }
  }

  v75 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
  {
    v76 = [*(a1 + 40) streamID];
    v77 = [v3 threadPriority];
    [v90 humanDescription];
    v78 = v21;
    v80 = v79 = v20;
    *buf = 138544386;
    v95 = v93;
    v96 = 2114;
    v97 = v76;
    v98 = 1024;
    v99 = v77;
    v100 = 2114;
    v101 = v16;
    v102 = 2114;
    v103 = v80;
    _os_log_impl(&dword_1C5C61000, v75, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ identifiers: %{public}@", buf, 0x30u);

    v20 = v79;
    v21 = v78;
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_105(uint64_t a1, void *a2, void *a3)
{
  v123[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  [(MPCPlaybackEngineLoggingConsumer *)v6 _updateChartWithEvent:v5];
  v122 = @"queue-section-id";
  v8 = [v5 payload];
  v9 = [v8 objectForKeyedSubscript:@"queue-section-id"];
  v123[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v123 forKeys:&v122 count:1];
  v11 = [v7 findPreviousEventWithType:@"container-begin" matchingPayload:v10];

  v12 = [v11 payload];
  v13 = [v12 objectForKeyedSubscript:@"container-metadata"];

  v104 = [v13 objectForKeyedSubscript:@"container-title"];
  v14 = [v11 payload];
  v15 = [v14 objectForKeyedSubscript:@"container-kind"];

  v105 = v11;
  v16 = [v11 payload];
  v17 = [v16 objectForKeyedSubscript:@"container-ids"];

  v18 = MSVLogDateFormatter();
  v19 = [v5 date];
  v109 = [v18 stringFromDate:v19];

  v20 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v21 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [*(a1 + 40) streamID];
    v23 = [v5 threadPriority];
    [v5 payload];
    v107 = v5;
    v24 = v13;
    v25 = a1;
    v26 = v15;
    v28 = v27 = v17;
    v29 = [v28 objectForKeyedSubscript:@"queue-section-id"];
    *buf = 138544386;
    v111 = v109;
    v112 = 2114;
    v113 = v22;
    v114 = 1024;
    v115 = v23;
    v116 = 2114;
    v117 = v20;
    v118 = 2114;
    v119 = v29;
    _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀈰 CONTAINER END              %{public}@", buf, 0x30u);

    v17 = v27;
    v15 = v26;
    a1 = v25;
    v13 = v24;
    v5 = v107;
  }

  v30 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v31 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [*(a1 + 40) streamID];
    v33 = [v5 threadPriority];
    *buf = 138544386;
    v111 = v109;
    v112 = 2114;
    v113 = v32;
    v114 = 1024;
    v115 = v33;
    v116 = 2114;
    v117 = v30;
    v118 = 2114;
    v119 = v104;
    _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ title: %{public}@", buf, 0x30u);
  }

  v34 = [v13 objectForKeyedSubscript:@"container-is-playlist-folder"];
  [v13 objectForKeyedSubscript:@"container-is-collaborative-playlist"];
  v103 = v106 = v34;
  v35 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
  v108 = v30;
  if (v34 | v103)
  {
    if (v36)
    {
      v37 = [*(a1 + 40) streamID];
      v38 = [v5 threadPriority];
      v39 = [v15 humanDescription];
      v40 = [v106 BOOLValue];
      v41 = [v103 BOOLValue];
      *buf = 138544898;
      v111 = v109;
      v112 = 2114;
      v113 = v37;
      v114 = 1024;
      v115 = v38;
      v116 = 2114;
      v117 = v108;
      v118 = 2114;
      v119 = v39;
      v120 = 1024;
      *v121 = v40;
      *&v121[4] = 1024;
      *&v121[6] = v41;
      _os_log_impl(&dword_1C5C61000, v35, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ kind: %{public}@; isFolder: %{BOOL}u; isCollaborative: %{BOOL}u", buf, 0x3Cu);
    }

    v42 = [v105 payload];
    v35 = [v42 objectForKeyedSubscript:@"nested-container"];

    if (v106)
    {
      v30 = v108;
      if (v35)
      {
        v43 = [v35 objectForKeyedSubscript:@"container-metadata"];
        v44 = [v43 objectForKeyedSubscript:@"container-title"];
        v99 = [v35 objectForKeyedSubscript:@"container-kind"];
        v98 = [v35 objectForKeyedSubscript:@"container-ids"];
        *(&v101 + 1) = [v43 objectForKeyedSubscript:@"container-is-playlist-folder"];
        v100 = v43;
        *&v101 = [v43 objectForKeyedSubscript:@"container-is-collaborative-playlist"];
        v45 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = [*(a1 + 40) streamID];
          v47 = [v5 threadPriority];
          *buf = 138544386;
          v111 = v109;
          v112 = 2114;
          v113 = v46;
          v114 = 1024;
          v115 = v47;
          v116 = 2114;
          v117 = v108;
          v118 = 2114;
          v119 = v44;
          _os_log_impl(&dword_1C5C61000, v45, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │╲╭ title: %{public}@", buf, 0x30u);
        }

        v97 = v44;

        v48 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
        v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
        if (v101 == 0)
        {
          if (v49)
          {
            v57 = [*(a1 + 40) streamID];
            v58 = [v5 threadPriority];
            v59 = [v99 humanDescription];
            *buf = 138544386;
            v111 = v109;
            v112 = 2114;
            v113 = v57;
            v114 = 1024;
            v115 = v58;
            v116 = 2114;
            v117 = v108;
            v118 = 2114;
            v119 = v59;
            _os_log_impl(&dword_1C5C61000, v48, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ │ kind: %{public}@", buf, 0x30u);
          }
        }

        else if (v49)
        {
          v50 = [*(a1 + 40) streamID];
          v95 = [v5 threadPriority];
          v51 = [v99 humanDescription];
          v52 = [*(&v101 + 1) BOOLValue];
          v53 = [v101 BOOLValue];
          *buf = 138544898;
          v111 = v109;
          v112 = 2114;
          v113 = v50;
          v114 = 1024;
          v115 = v95;
          v116 = 2114;
          v117 = v108;
          v118 = 2114;
          v119 = v51;
          v120 = 1024;
          *v121 = v52;
          *&v121[4] = 1024;
          *&v121[6] = v53;
          _os_log_impl(&dword_1C5C61000, v48, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ │ kind: %{public}@; isFolder: %{BOOL}u; isCollaborative: %{BOOL}u", buf, 0x3Cu);
        }

        v60 = [v100 objectForKeyedSubscript:@"container-playlist-version-hash"];
        v30 = v108;
        if (v60)
        {
          v61 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            v62 = [*(a1 + 40) streamID];
            v63 = [v5 threadPriority];
            *buf = 138544386;
            v111 = v109;
            v112 = 2114;
            v113 = v62;
            v114 = 1024;
            v115 = v63;
            v116 = 2114;
            v117 = v108;
            v118 = 2114;
            v119 = v60;
            _os_log_impl(&dword_1C5C61000, v61, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ │ playlistVersionHash: %{public}@", buf, 0x30u);
          }
        }

        v64 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v65 = [*(a1 + 40) streamID];
          v66 = [v5 threadPriority];
          [v98 humanDescription];
          v96 = v17;
          v67 = v5;
          v68 = v13;
          v69 = a1;
          v71 = v70 = v15;
          *buf = 138544386;
          v111 = v109;
          v112 = 2114;
          v113 = v65;
          v114 = 1024;
          v115 = v66;
          v30 = v108;
          v116 = 2114;
          v117 = v108;
          v118 = 2114;
          v119 = v71;
          _os_log_impl(&dword_1C5C61000, v64, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ ╰ identifiers: %{public}@", buf, 0x30u);

          v15 = v70;
          a1 = v69;
          v13 = v68;
          v5 = v67;
          v17 = v96;
        }
      }
    }

    else
    {
      v30 = v108;
    }
  }

  else if (v36)
  {
    v54 = [*(a1 + 40) streamID];
    v55 = [v5 threadPriority];
    v56 = [v15 humanDescription];
    *buf = 138544386;
    v111 = v109;
    v112 = 2114;
    v113 = v54;
    v114 = 1024;
    v115 = v55;
    v116 = 2114;
    v117 = v30;
    v118 = 2114;
    v119 = v56;
    _os_log_impl(&dword_1C5C61000, v35, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ kind: %{public}@", buf, 0x30u);
  }

  v72 = [v13 objectForKeyedSubscript:@"container-playlist-version-hash"];
  if (v72)
  {
    v73 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      v74 = [*(a1 + 40) streamID];
      v75 = [v5 threadPriority];
      *buf = 138544386;
      v111 = v109;
      v112 = 2114;
      v113 = v74;
      v114 = 1024;
      v115 = v75;
      v116 = 2114;
      v117 = v30;
      v118 = 2114;
      v119 = v72;
      _os_log_impl(&dword_1C5C61000, v73, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ playlistVersionHash: %{public}@", buf, 0x30u);
    }
  }

  v76 = [v13 objectForKeyedSubscript:@"container-radio-type"];
  v77 = [v76 integerValue];

  v78 = [v13 objectForKeyedSubscript:@"container-radio-subtype"];
  [v78 integerValue];

  if (v77)
  {
    v79 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      v80 = [*(a1 + 40) streamID];
      v81 = [v5 threadPriority];
      v102 = v72;
      v82 = v17;
      v83 = v5;
      v84 = v13;
      v85 = a1;
      v86 = v15;
      v87 = v81;
      v88 = NSStringFromMPModelRadioStationType();
      v89 = NSStringFromMPModelRadioStationSubtype();
      *buf = 138544642;
      v111 = v109;
      v112 = 2114;
      v113 = v80;
      v114 = 1024;
      v115 = v87;
      v15 = v86;
      a1 = v85;
      v13 = v84;
      v5 = v83;
      v17 = v82;
      v72 = v102;
      v116 = 2114;
      v117 = v108;
      v118 = 2114;
      v119 = v88;
      v120 = 2114;
      *v121 = v89;
      _os_log_impl(&dword_1C5C61000, v79, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ stationType: %{public}@; stationSubtype: %{public}@", buf, 0x3Au);

      v30 = v108;
    }
  }

  v90 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
  {
    v91 = [*(a1 + 40) streamID];
    v92 = [v5 threadPriority];
    v93 = [v17 humanDescription];
    *buf = 138544386;
    v111 = v109;
    v112 = 2114;
    v113 = v91;
    v114 = 1024;
    v115 = v92;
    v116 = 2114;
    v117 = v30;
    v118 = 2114;
    v119 = v93;
    _os_log_impl(&dword_1C5C61000, v90, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ identifiers: %{public}@", buf, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_106(uint64_t a1, void *a2)
{
  v91 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"queue-section-id"];

  v6 = [v3 payload];
  v72 = [v6 objectForKeyedSubscript:@"queue-item-id"];

  v7 = [v3 payload];
  v8 = [v7 objectForKeyedSubscript:@"item-metadata"];
  v71 = [v8 objectForKeyedSubscript:@"item-title"];

  v9 = [v3 payload];
  v10 = [v9 objectForKeyedSubscript:@"item-metadata"];
  v70 = [v10 objectForKeyedSubscript:@"explicit-treatment"];

  v11 = [v3 payload];
  v69 = [v11 objectForKeyedSubscript:@"item-ids"];

  v12 = [v3 payload];
  v13 = [v12 objectForKeyedSubscript:@"item-metadata"];

  v14 = [v13 objectForKeyedSubscript:@"item-duration"];
  [v14 doubleValue];
  v16 = v15;

  v17 = [v13 objectForKeyedSubscript:@"item-initial-position"];
  [v17 doubleValue];
  v19 = v18;

  v20 = [v13 objectForKeyedSubscript:@"item-start-boundary"];
  [v20 doubleValue];
  v22 = v21;

  v23 = [v13 objectForKeyedSubscript:@"item-end-boundary"];
  [v23 doubleValue];
  v25 = v24;

  v26 = [v13 objectForKeyedSubscript:@"requires-mpaf"];
  v67 = [v26 BOOLValue];

  v27 = [v13 objectForKeyedSubscript:@"item-has-video"];
  v66 = [v27 BOOLValue];

  v28 = [v13 objectForKeyedSubscript:@"item-artist-uploaded"];
  v65 = [v28 BOOLValue];

  v29 = [v13 objectForKeyedSubscript:@"podcast-preferred-rate"];
  v30 = [v13 objectForKeyedSubscript:@"podcast-playback-setting-source"];
  v68 = [v13 objectForKeyedSubscript:@"disc-number"];
  v73 = [v13 objectForKeyedSubscript:@"track-number"];
  v31 = MSVLogDateFormatter();
  v32 = [v3 date];
  v75 = [v31 stringFromDate:v32];

  v33 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v34 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [*(a1 + 40) streamID];
    *buf = 138544642;
    v77 = v75;
    v78 = 2114;
    v79 = v35;
    v80 = 1024;
    v81 = [v3 threadPriority];
    v82 = 2114;
    v83 = v33;
    v84 = 2114;
    *v85 = v5;
    *&v85[8] = 2114;
    v86 = v72;
    _os_log_impl(&dword_1C5C61000, v34, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀀀 ITEM BEGIN                 %{public}@ %{public}@", buf, 0x3Au);
  }

  v74 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v36 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [*(a1 + 40) streamID];
    v38 = [v3 threadPriority];
    *buf = 138544642;
    v39 = &stru_1F454A698;
    v77 = v75;
    if (v70)
    {
      v39 = v70;
    }

    v78 = 2114;
    v79 = v37;
    v80 = 1024;
    v81 = v38;
    v82 = 2114;
    v83 = v74;
    v84 = 2114;
    *v85 = v71;
    *&v85[8] = 2114;
    v86 = v39;
    _os_log_impl(&dword_1C5C61000, v36, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ title: %{public}@ %{public}@", buf, 0x3Au);
  }

  v40 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  v41 = v68;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [*(a1 + 40) streamID];
    v43 = [v3 threadPriority];
    *buf = 138545154;
    v77 = v75;
    v78 = 2114;
    v79 = v42;
    v80 = 1024;
    v81 = v43;
    v82 = 2114;
    v83 = v74;
    v84 = 2048;
    *v85 = v16;
    *&v85[8] = 2048;
    v86 = v19;
    v87 = 2048;
    v88 = v22;
    v89 = 2048;
    v90 = v25;
    _os_log_impl(&dword_1C5C61000, v40, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ duration: %0.2f; initialPosition: %0.2f; startBoundary: %0.2f; endBoundary: %0.2f", buf, 0x4Eu);
  }

  if (v68 | v73)
  {
    v44 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = [*(a1 + 40) streamID];
      v46 = a1;
      v47 = v30;
      v48 = v29;
      v49 = v5;
      v50 = [v3 threadPriority];
      v51 = [v68 integerValue];
      v52 = [v73 integerValue];
      *buf = 138544642;
      v77 = v75;
      v78 = 2114;
      v79 = v45;
      v80 = 1024;
      v81 = v50;
      v5 = v49;
      v29 = v48;
      v30 = v47;
      a1 = v46;
      v41 = v68;
      v82 = 2114;
      v83 = v74;
      v84 = 2048;
      *v85 = v51;
      *&v85[8] = 2048;
      v86 = v52;
      _os_log_impl(&dword_1C5C61000, v44, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ discNumber: %ld : trackNumber: %ld", buf, 0x3Au);
    }
  }

  v53 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v54 = [*(a1 + 40) streamID];
    v55 = [v3 threadPriority];
    *buf = 138544898;
    v77 = v75;
    v78 = 2114;
    v79 = v54;
    v80 = 1024;
    v81 = v55;
    v82 = 2114;
    v83 = v74;
    v84 = 1024;
    *v85 = v67;
    *&v85[4] = 1024;
    *&v85[6] = v66;
    LOWORD(v86) = 1024;
    *(&v86 + 2) = v65;
    _os_log_impl(&dword_1C5C61000, v53, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ requiresPAF: %{BOOL}u; video: %{BOOL}u; artistUploaded: %{BOOL}u", buf, 0x38u);
  }

  if (v29)
  {
    v56 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = [*(a1 + 40) streamID];
      v58 = [v3 threadPriority];
      [v29 doubleValue];
      *buf = 138544642;
      v77 = v75;
      v78 = 2114;
      v79 = v57;
      v80 = 1024;
      v81 = v58;
      v82 = 2114;
      v83 = v74;
      v84 = 2048;
      *v85 = v59;
      *&v85[8] = 2114;
      v86 = v30;
      _os_log_impl(&dword_1C5C61000, v56, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  | preferred rate: %0.2f; source: %{public}@", buf, 0x3Au);
    }
  }

  v60 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    v61 = [*(a1 + 40) streamID];
    v62 = [v3 threadPriority];
    v63 = [v69 humanDescription];
    *buf = 138544386;
    v77 = v75;
    v78 = 2114;
    v79 = v61;
    v80 = 1024;
    v81 = v62;
    v82 = 2114;
    v83 = v74;
    v84 = 2114;
    *v85 = v63;
    _os_log_impl(&dword_1C5C61000, v60, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ identifiers: %{public}@", buf, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_107(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v34 = [v4 objectForKeyedSubscript:@"queue-section-id"];

  v5 = [v3 payload];
  v33 = [v5 objectForKeyedSubscript:@"queue-item-id"];

  v6 = [v3 payload];
  v32 = [v6 objectForKeyedSubscript:@"item-ids"];

  v7 = [v3 payload];
  v8 = [v7 objectForKeyedSubscript:@"item-metadata"];

  v9 = [v8 objectForKeyedSubscript:@"podcast-preferred-rate"];
  v10 = [v8 objectForKeyedSubscript:@"podcast-playback-setting-source"];
  v11 = MSVLogDateFormatter();
  v12 = [v3 date];
  v13 = [v11 stringFromDate:v12];

  v14 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v15 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [*(a1 + 40) streamID];
    *buf = 138544642;
    v36 = v13;
    v37 = 2114;
    v38 = v16;
    v39 = 1024;
    v40 = [v3 threadPriority];
    v41 = 2114;
    v42 = v14;
    v43 = 2114;
    v44 = v34;
    v45 = 2114;
    v46 = v33;
    _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀍷 ITEM UPDATE                %{public}@ %{public}@", buf, 0x3Au);
  }

  v17 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v18 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [*(a1 + 40) streamID];
    v20 = v10;
    v21 = v9;
    v22 = [v3 threadPriority];
    [v32 humanDescription];
    v23 = v31 = v8;
    *buf = 138544386;
    v36 = v13;
    v37 = 2114;
    v38 = v19;
    v39 = 1024;
    v40 = v22;
    v9 = v21;
    v10 = v20;
    v41 = 2114;
    v42 = v17;
    v43 = 2114;
    v44 = v23;
    _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ identifiers: %{public}@", buf, 0x30u);

    v8 = v31;
  }

  if (v9)
  {
    v24 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
    v25 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [*(a1 + 40) streamID];
      v27 = v9;
      v28 = [v3 threadPriority];
      [v27 doubleValue];
      *buf = 138544642;
      v36 = v13;
      v37 = 2114;
      v38 = v26;
      v39 = 1024;
      v40 = v28;
      v9 = v27;
      v41 = 2114;
      v42 = v24;
      v43 = 2048;
      v44 = v29;
      v45 = 2114;
      v46 = v10;
      _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ preferred rate: %0.2f; source: %{public}@", buf, 0x3Au);
    }
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_108(uint64_t a1, void *a2, void *a3)
{
  v72[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  [(MPCPlaybackEngineLoggingConsumer *)v6 _updateChartWithEvent:v5];
  v8 = [v5 payload];
  v9 = [v8 objectForKeyedSubscript:@"queue-section-id"];

  v10 = [v5 payload];
  v11 = [v10 objectForKeyedSubscript:@"queue-item-id"];

  v12 = [v5 payload];
  v13 = [v12 objectForKeyedSubscript:@"item-start-position"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v5 payload];
  v17 = [v16 objectForKeyedSubscript:@"item-end-position"];
  [v17 doubleValue];
  v19 = v18;

  v20 = [v5 payload];
  v54 = [v20 objectForKeyedSubscript:@"item-jump-identifier"];

  v21 = [v5 payload];
  v22 = [v21 objectForKeyedSubscript:@"item-jump-user-initiated"];
  v51 = [v22 BOOLValue];

  v71[0] = @"queue-section-id";
  v71[1] = @"queue-item-id";
  v72[0] = v9;
  v72[1] = v11;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:2];
  v24 = [v7 findPreviousEventWithType:@"item-begin" matchingPayload:v23];

  v69[0] = @"queue-section-id";
  v69[1] = @"queue-item-id";
  v70[0] = v9;
  v70[1] = v11;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:2];
  v26 = [v7 findPreviousEventWithType:@"item-update" matchingPayload:v25];

  v53 = v24;
  v27 = [v24 payload];
  v28 = [v27 objectForKeyedSubscript:@"item-metadata"];
  v29 = [v28 objectForKeyedSubscript:@"item-duration"];
  [v29 doubleValue];
  v52 = v26;
  if (v30 == 0.0)
  {
    v31 = [v26 payload];
    v32 = [v31 objectForKeyedSubscript:@"item-metadata"];
    v33 = [v32 objectForKeyedSubscript:@"item-duration"];
    [v33 doubleValue];
    v35 = v34;
  }

  else
  {
    v35 = v30;
  }

  v36 = [*(a1 + 32) _playbackBarWithElapsedTime:v19 duration:v35];
  v37 = MSVLogDateFormatter();
  v38 = [v5 date];
  v39 = [v37 stringFromDate:v38];

  v40 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v41 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [*(a1 + 40) streamID];
    *buf = 138544898;
    v56 = v39;
    v57 = 2114;
    v58 = v42;
    v59 = 1024;
    v60 = [v5 threadPriority];
    v61 = 2114;
    v62 = v40;
    v63 = 2114;
    v64 = v9;
    v65 = 2114;
    v66 = *&v11;
    v67 = 2114;
    v68 = v36;
    _os_log_impl(&dword_1C5C61000, v41, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀘨 ITEM JUMP                  %{public}@ %{public}@                   ║ %{public}@", buf, 0x44u);
  }

  v43 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v44 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = [*(a1 + 40) streamID];
    v46 = [v5 threadPriority];
    *buf = 138544642;
    v56 = v39;
    v57 = 2114;
    v58 = v45;
    v59 = 1024;
    v60 = v46;
    v61 = 2114;
    v62 = v43;
    v63 = 2048;
    v64 = v15;
    v65 = 2048;
    v66 = v19;
    _os_log_impl(&dword_1C5C61000, v44, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ start: %0.2f; end: %0.2f", buf, 0x3Au);
  }

  v47 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = [*(a1 + 40) streamID];
    v49 = [v5 threadPriority];
    *buf = 138544642;
    v56 = v39;
    v57 = 2114;
    v58 = v48;
    v59 = 1024;
    v60 = v49;
    v61 = 2114;
    v62 = v43;
    v63 = 2114;
    v64 = v54;
    v65 = 1024;
    LODWORD(v66) = v51;
    _os_log_impl(&dword_1C5C61000, v47, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ jumpIdentifier: %{public}@; userInitiated: %{BOOL}u", buf, 0x36u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_109(uint64_t a1, void *a2, void *a3)
{
  v55[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v5];
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"queue-section-id"];

  v9 = [v5 payload];
  v10 = [v9 objectForKeyedSubscript:@"queue-item-id"];

  v54[0] = @"queue-section-id";
  v54[1] = @"queue-item-id";
  v55[0] = v8;
  v55[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
  v12 = [v6 findPreviousEventWithType:@"item-begin" matchingPayload:v11];

  v13 = [v5 payload];
  v14 = [v13 objectForKeyedSubscript:@"item-end-position"];
  [v14 doubleValue];
  v16 = v15;

  v37 = v12;
  v17 = [v12 payload];
  v18 = [v17 objectForKeyedSubscript:@"item-metadata"];
  v19 = [v18 objectForKeyedSubscript:@"item-duration"];
  [v19 doubleValue];
  v21 = v20;

  if (v21 == 0.0)
  {
    v52[0] = @"queue-section-id";
    v52[1] = @"queue-item-id";
    v22 = v8;
    v53[0] = v8;
    v53[1] = v10;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
    v24 = [v6 findPreviousEventWithType:@"item-update" matchingPayload:v23];

    v25 = [v24 payload];
    v26 = [v25 objectForKeyedSubscript:@"item-metadata"];
    v27 = [v26 objectForKeyedSubscript:@"item-duration"];
    [v27 doubleValue];
    v21 = v28;
  }

  else
  {
    v22 = v8;
  }

  v29 = [*(a1 + 32) _playbackBarWithElapsedTime:v16 duration:v21];
  v30 = MSVLogDateFormatter();
  v31 = [v5 date];
  v32 = [v30 stringFromDate:v31];

  v33 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v34 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [*(a1 + 40) streamID];
    *buf = 138544898;
    v39 = v32;
    v40 = 2114;
    v41 = v35;
    v42 = 1024;
    v43 = [v5 threadPriority];
    v44 = 2114;
    v45 = v33;
    v46 = 2114;
    v47 = v22;
    v48 = 2114;
    v49 = v10;
    v50 = 2114;
    v51 = v29;
    _os_log_impl(&dword_1C5C61000, v34, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀡐 ITEM TICK                  %{public}@ %{public}@                   ║ %{public}@", buf, 0x44u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_110(uint64_t a1, void *a2, void *a3)
{
  v74[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  [(MPCPlaybackEngineLoggingConsumer *)v6 _updateChartWithEvent:v5];
  v8 = [v5 payload];
  v9 = [v8 objectForKeyedSubscript:@"queue-section-id"];

  v10 = [v5 payload];
  v11 = [v10 objectForKeyedSubscript:@"queue-item-id"];

  v12 = [v5 payload];
  v13 = [v12 objectForKeyedSubscript:@"item-end-position"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v5 payload];
  v56 = [v16 objectForKeyedSubscript:@"item-rate-change-reason"];

  v17 = [v5 payload];
  v53 = [v17 objectForKeyedSubscript:@"item-rate-change-source"];

  v73[0] = @"queue-section-id";
  v73[1] = @"queue-item-id";
  v74[0] = v9;
  v74[1] = v11;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:2];
  v19 = [v7 findPreviousEventWithType:@"item-update" matchingPayload:v18];

  v71[0] = @"queue-section-id";
  v71[1] = @"queue-item-id";
  v54 = v9;
  v55 = v11;
  v72[0] = v9;
  v72[1] = v11;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:2];
  v21 = [v7 findPreviousEventWithType:@"item-begin" matchingPayload:v20];

  v52 = v21;
  v22 = [v21 payload];
  v23 = [v22 objectForKeyedSubscript:@"item-metadata"];
  v24 = [v23 objectForKeyedSubscript:@"item-duration"];
  [v24 doubleValue];
  if (v25 == 0.0)
  {
    v26 = [v19 payload];
    v27 = [v26 objectForKeyedSubscript:@"item-metadata"];
    v28 = [v27 objectForKeyedSubscript:@"item-duration"];
    [v28 doubleValue];
    v30 = v29;
  }

  else
  {
    v30 = v25;
  }

  v31 = [*(a1 + 32) _playbackBarWithElapsedTime:v15 duration:v30];
  v32 = MSVLogDateFormatter();
  v33 = [v5 date];
  v34 = [v32 stringFromDate:v33];

  v35 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v36 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  v37 = v54;
  v38 = v55;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v39 = [*(a1 + 40) streamID];
    *buf = 138544898;
    v58 = v34;
    v59 = 2114;
    v60 = v39;
    v61 = 1024;
    v62 = [v5 threadPriority];
    v63 = 2114;
    v64 = v35;
    v65 = 2114;
    v66 = *&v54;
    v67 = 2114;
    v68 = v55;
    v69 = 2114;
    v70 = v31;
    _os_log_impl(&dword_1C5C61000, v36, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀊘 ITEM PAUSE                 %{public}@ %{public}@                   ║ %{public}@", buf, 0x44u);
  }

  v40 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v41 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [*(a1 + 40) streamID];
    v43 = [v5 threadPriority];
    *buf = 138544386;
    v58 = v34;
    v59 = 2114;
    v60 = v42;
    v61 = 1024;
    v62 = v43;
    v63 = 2114;
    v64 = v40;
    v65 = 2048;
    v66 = v15;
    _os_log_impl(&dword_1C5C61000, v41, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ end: %0.2f", buf, 0x30u);
  }

  v44 = v19;
  if ([v56 length])
  {
    v45 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [*(a1 + 40) streamID];
      v47 = [v5 threadPriority];
      *buf = 138544386;
      v58 = v34;
      v59 = 2114;
      v60 = v46;
      v61 = 1024;
      v62 = v47;
      v63 = 2114;
      v64 = v40;
      v65 = 2114;
      v66 = *&v56;
      _os_log_impl(&dword_1C5C61000, v45, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ reason: %{public}@", buf, 0x30u);

      v44 = v19;
      v37 = v54;
      v38 = v55;
    }
  }

  if ([v53 length])
  {
    v48 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = [*(a1 + 40) streamID];
      v50 = [v5 threadPriority];
      *buf = 138544386;
      v58 = v34;
      v59 = 2114;
      v60 = v49;
      v61 = 1024;
      v62 = v50;
      v63 = 2114;
      v64 = v40;
      v65 = 2114;
      v66 = *&v53;
      _os_log_impl(&dword_1C5C61000, v48, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ source: %{public}@", buf, 0x30u);
    }
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_111(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  [v4 objectForKeyedSubscript:@"queue-section-id"];
  v5 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"queue-item-id"];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"item-rate-change-position"];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v3 payload];
  v13 = [v12 objectForKeyedSubscript:@"item-rate"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v3 payload];
  [v16 objectForKeyedSubscript:@"item-rate-change-reason"];
  v17 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

  v18 = [v3 payload];
  [v18 objectForKeyedSubscript:@"item-rate-change-participant-id"];
  v19 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

  v20 = MSVLogDateFormatter();
  v21 = [v3 date];
  v22 = [v20 stringFromDate:v21];

  v23 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v24 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [*(a1 + 40) streamID];
    v41 = 138544642;
    v42 = v22;
    v43 = 2114;
    v44 = v25;
    v45 = 1024;
    v46 = [v3 threadPriority];
    v47 = 2114;
    v48 = v23;
    v49 = 2114;
    v50 = v5;
    v51 = 2114;
    v52 = v7;
    _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀊕 RATE CHANGED               %{public}@ %{public}@", &v41, 0x3Au);
  }

  v26 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v27 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [*(a1 + 40) streamID];
    v29 = [v3 threadPriority];
    v41 = 138544386;
    v42 = v22;
    v43 = 2114;
    v44 = v28;
    v45 = 1024;
    v46 = v29;
    v47 = 2114;
    v48 = v26;
    v49 = 2048;
    v50 = v11;
    _os_log_impl(&dword_1C5C61000, v27, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ position: %0.2f", &v41, 0x30u);
  }

  if ([*&v17 length])
  {
    v30 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [*(a1 + 40) streamID];
      v32 = [v3 threadPriority];
      v41 = 138544386;
      v42 = v22;
      v43 = 2114;
      v44 = v31;
      v45 = 1024;
      v46 = v32;
      v47 = 2114;
      v48 = v26;
      v49 = 2114;
      v50 = v17;
      _os_log_impl(&dword_1C5C61000, v30, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ reason: %{public}@", &v41, 0x30u);
    }
  }

  if ([*&v19 length])
  {
    v33 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [*(a1 + 40) streamID];
      v35 = [v3 threadPriority];
      v41 = 138544386;
      v42 = v22;
      v43 = 2114;
      v44 = v34;
      v45 = 1024;
      v46 = v35;
      v47 = 2114;
      v48 = v26;
      v49 = 2114;
      v50 = v19;
      _os_log_impl(&dword_1C5C61000, v33, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ participant: %{public}@", &v41, 0x30u);
    }
  }

  v36 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = v15;
    v38 = [*(a1 + 40) streamID];
    v39 = [v3 threadPriority];
    v41 = 138544386;
    v42 = v22;
    v43 = 2114;
    v44 = v38;
    v45 = 1024;
    v46 = v39;
    v47 = 2114;
    v48 = v26;
    v49 = 2048;
    v50 = v37;
    _os_log_impl(&dword_1C5C61000, v36, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ rate: %0.2f", &v41, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_112(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"queue-section-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"queue-item-id"];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"event-time-offset"];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v3 date];
  v13 = [v12 dateByAddingTimeInterval:v11];

  v14 = MSVLogDateFormatter();
  v15 = [v3 date];
  v16 = [v14 stringFromDate:v15];

  v17 = MSVLogDateFormatter();
  v18 = [v17 stringFromDate:v13];

  v19 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v20 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [*(a1 + 40) streamID];
    v23 = 138544642;
    v24 = v18;
    v25 = 2114;
    v26 = v21;
    v27 = 1024;
    v28 = [v3 threadPriority];
    v29 = 2114;
    v30 = v19;
    v31 = 2114;
    v32 = v5;
    v33 = 2114;
    v34 = v7;
    _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀀻 FIRST AUDIO FRAME          %{public}@ %{public}@", &v23, 0x3Au);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_113(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"queue-section-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"queue-item-id"];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"av-player-item-performance-metrics"];

  v10 = MSVLogDateFormatter();
  v11 = [v3 date];
  v12 = [v10 stringFromDate:v11];

  v13 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [*(a1 + 40) streamID];
    v21 = 138544642;
    v22 = v12;
    v23 = 2114;
    v24 = v15;
    v25 = 1024;
    v26 = [v3 threadPriority];
    v27 = 2114;
    v28 = v13;
    v29 = 2114;
    v30 = v5;
    v31 = 2114;
    v32 = v7;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀍾 ITEM READY FOR METRICS     %{public}@ %{public}@", &v21, 0x3Au);
  }

  v16 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 40) streamID];
    v19 = [v3 threadPriority];
    v21 = 138544386;
    v22 = v12;
    v23 = 2114;
    v24 = v18;
    v25 = 1024;
    v26 = v19;
    v27 = 2114;
    v28 = v16;
    v29 = 2114;
    v30 = v9;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ accessLog: %{public}@", &v21, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_114(uint64_t a1, void *a2, void *a3)
{
  v104[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  [(MPCPlaybackEngineLoggingConsumer *)v6 _updateChartWithEvent:v5];
  v8 = [v5 payload];
  v9 = [v8 objectForKeyedSubscript:@"queue-section-id"];

  v10 = v9;
  v11 = [v5 payload];
  v12 = [v11 objectForKeyedSubscript:@"queue-item-id"];

  v13 = [v5 payload];
  v14 = [v13 objectForKeyedSubscript:@"item-start-position"];
  [v14 doubleValue];
  v16 = v15;

  v17 = [v5 payload];
  v18 = [v17 objectForKeyedSubscript:@"event-time-offset"];
  [v18 doubleValue];
  v20 = v19;

  v21 = [v5 payload];
  v22 = [v21 objectForKeyedSubscript:@"item-expected-start-position"];
  [v22 doubleValue];
  v24 = v23;

  v25 = [v5 payload];
  v26 = [v25 objectForKeyedSubscript:@"supports-vocal-attenuation"];
  v86 = [v26 BOOLValue];

  v27 = [v5 payload];
  v28 = [v27 objectForKeyedSubscript:@"vocal-attenuation-available"];
  v85 = [v28 BOOLValue];

  v29 = [v5 payload];
  v30 = [v29 objectForKeyedSubscript:@"vocal-attenuation-enabled"];
  v84 = [v30 BOOLValue];

  v31 = [v5 payload];
  v32 = [v31 objectForKeyedSubscript:@"vocal-attenuation-configured"];
  v83 = [v32 BOOLValue];

  v33 = [v5 payload];
  v34 = [v33 objectForKeyedSubscript:@"vocal-attenuation-processing-delay"];
  [v34 doubleValue];
  v36 = v35;

  v103[0] = @"queue-section-id";
  v103[1] = @"queue-item-id";
  v104[0] = v9;
  v104[1] = v12;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:v103 count:2];
  v38 = [v7 findPreviousEventWithType:@"item-begin" matchingPayload:v37];

  v101[0] = @"queue-section-id";
  v101[1] = @"queue-item-id";
  v102[0] = v9;
  v102[1] = v12;
  v88 = v12;
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:v101 count:2];
  v40 = [v7 findPreviousEventWithType:@"item-update" matchingPayload:v39];

  v87 = v38;
  v41 = [v38 payload];
  v42 = [v41 objectForKeyedSubscript:@"item-metadata"];
  v43 = [v42 objectForKeyedSubscript:@"item-duration"];
  [v43 doubleValue];
  if (v44 == 0.0)
  {
    v45 = [v40 payload];
    v46 = [v45 objectForKeyedSubscript:@"item-metadata"];
    v47 = [v46 objectForKeyedSubscript:@"item-duration"];
    [v47 doubleValue];
    v49 = v48;
  }

  else
  {
    v49 = v44;
  }

  v50 = [*(a1 + 32) _playbackBarWithElapsedTime:v16 duration:v49];
  v51 = MSVLogDateFormatter();
  v52 = [v5 date];
  v53 = [v51 stringFromDate:v52];

  v54 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v55 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = [*(a1 + 40) streamID];
    *buf = 138544898;
    v90 = v53;
    v91 = 2114;
    v92 = v56;
    v93 = 1024;
    v94 = [v5 threadPriority];
    v95 = 2114;
    v96 = v54;
    v97 = 2114;
    *v98 = v10;
    *&v98[8] = 2114;
    v99 = v88;
    *v100 = 2114;
    *&v100[2] = v50;
    _os_log_impl(&dword_1C5C61000, v55, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀊕 ITEM RESUME                %{public}@ %{public}@                   ║ %{public}@", buf, 0x44u);
  }

  v57 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v58 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    v59 = [*(a1 + 40) streamID];
    v60 = [v5 threadPriority];
    *buf = 138544386;
    v90 = v53;
    v91 = 2114;
    v92 = v59;
    v93 = 1024;
    v94 = v60;
    v95 = 2114;
    v96 = v57;
    v97 = 2048;
    *v98 = v16;
    _os_log_impl(&dword_1C5C61000, v58, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ start: %0.2f", buf, 0x30u);
  }

  if (vabdd_f64(v24, v16) > 0.01)
  {
    v61 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
    v62 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = [*(a1 + 40) streamID];
      v64 = [v5 threadPriority];
      *buf = 138544386;
      v90 = v53;
      v91 = 2114;
      v92 = v63;
      v93 = 1024;
      v94 = v64;
      v95 = 2114;
      v96 = v61;
      v97 = 2048;
      *v98 = v24;
      _os_log_impl(&dword_1C5C61000, v62, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  | expectedStart: %0.2f", buf, 0x30u);
    }
  }

  if (fabs(v20) > 0.1)
  {
    v65 = [v5 date];
    v66 = [v65 dateByAddingTimeInterval:v20];

    v67 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
    v68 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 40) streamID];
      v69 = v80 = a1;
      v70 = v50;
      v71 = [v5 threadPriority];
      MSVLogDateFormatter();
      v72 = v81 = v40;
      [v72 stringFromDate:v66];
      v73 = v82 = v10;
      *buf = 138544386;
      v90 = v53;
      v91 = 2114;
      v92 = v69;
      v93 = 1024;
      v94 = v71;
      v50 = v70;
      v95 = 2114;
      v96 = v67;
      v97 = 2114;
      *v98 = v73;
      _os_log_impl(&dword_1C5C61000, v68, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  | actual: %{public}@", buf, 0x30u);

      v40 = v81;
      a1 = v80;

      v10 = v82;
    }
  }

  v74 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v75 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 40) streamID];
    v77 = v76 = v40;
    v78 = [v5 threadPriority];
    *buf = 138545410;
    v90 = v53;
    v91 = 2114;
    v92 = v77;
    v93 = 1024;
    v94 = v78;
    v95 = 2114;
    v96 = v74;
    v97 = 1024;
    *v98 = v86;
    *&v98[4] = 1024;
    *&v98[6] = v83;
    LOWORD(v99) = 1024;
    *(&v99 + 2) = v85;
    HIWORD(v99) = 1024;
    *v100 = v84;
    *&v100[4] = 2048;
    *&v100[6] = v36;
    _os_log_impl(&dword_1C5C61000, v75, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ vocal control supported:%{BOOL}u configured:%{BOOL}u available:%{BOOL}u enabled:%{BOOL}u delay:%.0fms", buf, 0x48u);

    v40 = v76;
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_115(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"queue-section-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"queue-item-id"];

  v8 = MSVLogDateFormatter();
  v9 = [v3 date];
  v10 = [v8 stringFromDate:v9];

  v11 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 40) streamID];
    v15 = 138544642;
    v16 = v10;
    v17 = 2114;
    v18 = v13;
    v19 = 1024;
    v20 = [v3 threadPriority];
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = v5;
    v25 = 2114;
    v26 = v7;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀁣 READY TO PLAY              %{public}@ %{public}@", &v15, 0x3Au);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_116(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"queue-section-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"queue-item-id"];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"item-start-position"];
  [v9 doubleValue];
  v11 = v10;

  v12 = MSVLogDateFormatter();
  v13 = [v3 date];
  v14 = [v12 stringFromDate:v13];

  v15 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [*(a1 + 40) streamID];
    v23 = 138544642;
    v24 = v14;
    v25 = 2114;
    v26 = v17;
    v27 = 1024;
    v28 = [v3 threadPriority];
    v29 = 2114;
    v30 = v15;
    v31 = 2114;
    v32 = v5;
    v33 = 2114;
    v34 = v7;
    _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_INFO, "|%{public}@ %{public}@ %2i %{public}@􀺸 ITEM BUFFER READY          %{public}@ %{public}@", &v23, 0x3Au);
  }

  v18 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v19 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [*(a1 + 40) streamID];
    v21 = [v3 threadPriority];
    v23 = 138544386;
    v24 = v14;
    v25 = 2114;
    v26 = v20;
    v27 = 1024;
    v28 = v21;
    v29 = 2114;
    v30 = v18;
    v31 = 2048;
    v32 = v11;
    _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_INFO, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ start: %0.2f", &v23, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_117(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"queue-section-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"queue-item-id"];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"item-end-position"];
  [v9 doubleValue];
  v11 = v10;

  v12 = MSVLogDateFormatter();
  v13 = [v3 date];
  v14 = [v12 stringFromDate:v13];

  v15 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [*(a1 + 40) streamID];
    v23 = 138544642;
    v24 = v14;
    v25 = 2114;
    v26 = v17;
    v27 = 1024;
    v28 = [v3 threadPriority];
    v29 = 2114;
    v30 = v15;
    v31 = 2114;
    v32 = v5;
    v33 = 2114;
    v34 = v7;
    _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀛪 ITEM BUFFER STALL          %{public}@ %{public}@", &v23, 0x3Au);
  }

  v18 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v19 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [*(a1 + 40) streamID];
    v21 = [v3 threadPriority];
    v23 = 138544386;
    v24 = v14;
    v25 = 2114;
    v26 = v20;
    v27 = 1024;
    v28 = v21;
    v29 = 2114;
    v30 = v18;
    v31 = 2048;
    v32 = v11;
    _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ end: %0.2f", &v23, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_118(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"queue-section-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"queue-item-id"];

  v8 = MSVLogDateFormatter();
  v9 = [v3 date];
  v10 = [v8 stringFromDate:v9];

  v11 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [*(a1 + 40) streamID];
    v15 = 138544642;
    v16 = v10;
    v17 = 2114;
    v18 = v13;
    v19 = 1024;
    v20 = [v3 threadPriority];
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = v5;
    v25 = 2114;
    v26 = v7;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_INFO, "|%{public}@ %{public}@ %2i %{public}@􀛨 ITEM BUFFER FINISH         %{public}@ %{public}@", &v15, 0x3Au);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_119(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"queue-section-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"queue-item-id"];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"key-request-options"];
  v10 = [v9 integerValue];

  v11 = MSVLogDateFormatter();
  v12 = [v3 date];
  v13 = [v11 stringFromDate:v12];

  v14 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v15 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [*(a1 + 40) streamID];
    *buf = 138544642;
    v32 = v13;
    v33 = 2114;
    v34 = v16;
    v35 = 1024;
    v36 = [v3 threadPriority];
    v37 = 2114;
    v38 = v14;
    v39 = 2114;
    *v40 = v5;
    *&v40[8] = 2114;
    v41 = v7;
    _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀢕 ITEM SECKEY BEGIN          %{public}@ %{public}@", buf, 0x3Au);
  }

  v17 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v18 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [*(a1 + 40) streamID];
    v20 = v10;
    v21 = v5;
    v22 = [v3 threadPriority];
    [v3 payload];
    v23 = v29 = a1;
    [v23 objectForKeyedSubscript:@"asset-skd"];
    v24 = v30 = v7;
    *buf = 138544386;
    v32 = v13;
    v33 = 2114;
    v34 = v19;
    v35 = 1024;
    v36 = v22;
    v5 = v21;
    v10 = v20;
    v37 = 2114;
    v38 = v17;
    v39 = 2114;
    *v40 = v24;
    _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ skd: %{public}@", buf, 0x30u);

    v7 = v30;
    a1 = v29;
  }

  v25 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [*(a1 + 40) streamID];
    v27 = [v3 threadPriority];
    *buf = 138544898;
    v32 = v13;
    v33 = 2114;
    v34 = v26;
    v35 = 1024;
    v36 = v27;
    v37 = 2114;
    v38 = v17;
    v39 = 1024;
    *v40 = v10 & 1;
    *&v40[4] = 1024;
    *&v40[6] = (v10 >> 1) & 1;
    LOWORD(v41) = 1024;
    *(&v41 + 2) = (v10 >> 2) & 1;
    _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ request: isSharedKey=%{BOOL}u isPersistable=%{BOOL}u isRenew=%{BOOL}u", buf, 0x38u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_120(uint64_t a1, void *a2, void *a3)
{
  v76[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v5];
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"queue-section-id"];

  v9 = [v5 payload];
  v10 = [v9 objectForKeyedSubscript:@"queue-item-id"];

  v11 = [v5 payload];
  v57 = [v11 objectForKeyedSubscript:@"key-request-error"];

  v12 = [v5 payload];
  v13 = [v12 objectForKeyedSubscript:@"key-cached-response"];
  v58 = [v13 BOOLValue];

  v75[0] = @"queue-section-id";
  v14 = [v5 payload];
  v15 = [v14 objectForKeyedSubscript:@"queue-section-id"];
  v75[1] = @"queue-item-id";
  v76[0] = v15;
  v16 = [v5 payload];
  v17 = [v16 objectForKeyedSubscript:@"queue-item-id"];
  v76[1] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:2];
  v56 = v6;
  v19 = [v6 findPreviousEventWithType:@"item-key-request-begin" matchingPayload:v18];

  [v5 durationSinceEvent:v19];
  v21 = v20;
  v22 = MSVLogDateFormatter();
  v23 = [v5 date];
  v60 = [v22 stringFromDate:v23];

  v24 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v25 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [*(a1 + 40) streamID];
    *buf = 138544898;
    v62 = v60;
    v63 = 2114;
    v64 = v26;
    v65 = 1024;
    v66 = [v5 threadPriority];
    v67 = 2114;
    v68 = v24;
    v69 = 2114;
    v70 = v8;
    v71 = 2114;
    v72 = v10;
    v73 = 2048;
    v74 = v21;
    _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀢖 ITEM SECKEY END            %{public}@ %{public}@ [%.3fs]", buf, 0x44u);
  }

  v54 = v10;
  v55 = v8;

  v59 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v27 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [*(a1 + 40) streamID];
    v29 = [v5 threadPriority];
    v30 = [v5 payload];
    v31 = [v30 objectForKeyedSubscript:@"asset-skd"];
    *buf = 138544386;
    v62 = v60;
    v63 = 2114;
    v64 = v28;
    v65 = 1024;
    v66 = v29;
    v67 = 2114;
    v68 = v59;
    v69 = 2114;
    v70 = v31;
    _os_log_impl(&dword_1C5C61000, v27, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ skd: %{public}@", buf, 0x30u);
  }

  v32 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
  v34 = v57;
  if (!v57)
  {
    if (v33)
    {
      v51 = [*(a1 + 40) streamID];
      v52 = [v5 threadPriority];
      *buf = 138544386;
      v62 = v60;
      v63 = 2114;
      v64 = v51;
      v65 = 1024;
      v66 = v52;
      v67 = 2114;
      v68 = v59;
      v69 = 1024;
      LODWORD(v70) = v58;
      _os_log_impl(&dword_1C5C61000, v32, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ cached: %{BOOL}u", buf, 0x2Cu);
    }

    goto LABEL_23;
  }

  if (v33)
  {
    v35 = [*(a1 + 40) streamID];
    v36 = [v5 threadPriority];
    *buf = 138544386;
    v62 = v60;
    v63 = 2114;
    v64 = v35;
    v65 = 1024;
    v66 = v36;
    v67 = 2114;
    v68 = v59;
    v69 = 1024;
    LODWORD(v70) = v58;
    _os_log_impl(&dword_1C5C61000, v32, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ cached: %{BOOL}u", buf, 0x2Cu);
  }

  v37 = [v57 treeDescription];
  v32 = [v37 componentsSeparatedByString:@"\n"];

  if ([v32 count]< 1)
  {
LABEL_23:
    v50 = v56;
    goto LABEL_24;
  }

  v38 = a1;
  v39 = 0;
  do
  {
    v40 = [v32 objectAtIndexedSubscript:v39];
    if (v39)
    {
      v41 = [v32 count]- 1;
      v42 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
      v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
      if (v39 == v41)
      {
        if (!v43)
        {
          goto LABEL_19;
        }

        v44 = [*(v38 + 40) streamID];
        v45 = [v5 threadPriority];
        *buf = 138544386;
        v62 = v60;
        v63 = 2114;
        v64 = v44;
        v65 = 1024;
        v66 = v45;
        v67 = 2114;
        v68 = v59;
        v69 = 2114;
        v70 = v40;
        v46 = v42;
        v47 = "|%{public}@ %{public}@ %2i %{public}@  ╰           %{public}@";
      }

      else
      {
        if (!v43)
        {
          goto LABEL_19;
        }

        v44 = [*(v38 + 40) streamID];
        v49 = [v5 threadPriority];
        *buf = 138544386;
        v62 = v60;
        v63 = 2114;
        v64 = v44;
        v65 = 1024;
        v66 = v49;
        v67 = 2114;
        v68 = v59;
        v69 = 2114;
        v70 = v40;
        v46 = v42;
        v47 = "|%{public}@ %{public}@ %2i %{public}@  │           %{public}@";
      }
    }

    else
    {
      v42 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v44 = [*(v38 + 40) streamID];
      v48 = [v5 threadPriority];
      *buf = 138544386;
      v62 = v60;
      v63 = 2114;
      v64 = v44;
      v65 = 1024;
      v66 = v48;
      v67 = 2114;
      v68 = v59;
      v69 = 2114;
      v70 = v40;
      v46 = v42;
      v47 = "|%{public}@ %{public}@ %2i %{public}@  │ error: ❌ %{public}@";
    }

    _os_log_impl(&dword_1C5C61000, v46, OS_LOG_TYPE_ERROR, v47, buf, 0x30u);

LABEL_19:
    ++v39;
  }

  while (v39 < [v32 count]);
  v50 = v56;
  v34 = v57;
LABEL_24:

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_121(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"queue-section-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"queue-item-id"];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"item-timed-metadata"];

  v10 = MSVLogDateFormatter();
  v11 = [v3 date];
  v12 = [v10 stringFromDate:v11];

  v13 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [*(a1 + 40) streamID];
    v21 = 138544642;
    v22 = v12;
    v23 = 2114;
    v24 = v15;
    v25 = 1024;
    v26 = [v3 threadPriority];
    v27 = 2114;
    v28 = v13;
    v29 = 2114;
    v30 = v5;
    v31 = 2114;
    v32 = v7;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀢊 ITEM METADATA PING          %{public}@ %{public}@", &v21, 0x3Au);
  }

  v16 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 40) streamID];
    v19 = [v3 threadPriority];
    v21 = 138544386;
    v22 = v12;
    v23 = 2114;
    v24 = v18;
    v25 = 1024;
    v26 = v19;
    v27 = 2114;
    v28 = v16;
    v29 = 2114;
    v30 = v9;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ data: %{public}@", &v21, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_122(uint64_t a1, void *a2, void *a3)
{
  v66[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  [(MPCPlaybackEngineLoggingConsumer *)v6 _updateChartWithEvent:v5];
  v8 = [v5 payload];
  v9 = [v8 objectForKeyedSubscript:@"queue-section-id"];

  v10 = [v5 payload];
  v11 = [v10 objectForKeyedSubscript:@"queue-item-id"];

  v12 = [v5 payload];
  v13 = [v12 objectForKeyedSubscript:@"item-end-position"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v5 payload];
  v17 = [v16 objectForKeyedSubscript:@"item-did-play-to-end"];
  v46 = [v17 BOOLValue];

  v65[0] = @"queue-section-id";
  v65[1] = @"queue-item-id";
  v66[0] = v9;
  v66[1] = v11;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
  v19 = [v7 findPreviousEventWithType:@"item-begin" matchingPayload:v18];

  v63[0] = @"queue-section-id";
  v63[1] = @"queue-item-id";
  v64[0] = v9;
  v64[1] = v11;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:2];
  v21 = [v7 findPreviousEventWithType:@"item-update" matchingPayload:v20];

  v48 = v19;
  v22 = [v19 payload];
  v23 = [v22 objectForKeyedSubscript:@"item-metadata"];
  v24 = [v23 objectForKeyedSubscript:@"item-duration"];
  [v24 doubleValue];
  v47 = v21;
  if (v25 == 0.0)
  {
    v26 = [v21 payload];
    v27 = [v26 objectForKeyedSubscript:@"item-metadata"];
    v28 = [v27 objectForKeyedSubscript:@"item-duration"];
    [v28 doubleValue];
    v30 = v29;
  }

  else
  {
    v30 = v25;
  }

  v31 = [*(a1 + 32) _playbackBarWithElapsedTime:v15 duration:v30];
  v32 = MSVLogDateFormatter();
  v33 = [v5 date];
  v34 = [v32 stringFromDate:v33];

  v35 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v36 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [*(a1 + 40) streamID];
    *buf = 138544898;
    v50 = v34;
    v51 = 2114;
    v52 = v37;
    v53 = 1024;
    v54 = [v5 threadPriority];
    v55 = 2114;
    v56 = v35;
    v57 = 2114;
    v58 = *&v9;
    v59 = 2114;
    v60 = v11;
    v61 = 2114;
    v62 = v31;
    _os_log_impl(&dword_1C5C61000, v36, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀀁 ITEM END                   %{public}@ %{public}@                   ║ %{public}@", buf, 0x44u);
  }

  v38 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v39 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = [*(a1 + 40) streamID];
    v41 = [v5 threadPriority];
    *buf = 138544386;
    v50 = v34;
    v51 = 2114;
    v52 = v40;
    v53 = 1024;
    v54 = v41;
    v55 = 2114;
    v56 = v38;
    v57 = 2048;
    v58 = v15;
    _os_log_impl(&dword_1C5C61000, v39, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ end: %0.2f", buf, 0x30u);
  }

  v42 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = [*(a1 + 40) streamID];
    v44 = [v5 threadPriority];
    *buf = 138544386;
    v50 = v34;
    v51 = 2114;
    v52 = v43;
    v53 = 1024;
    v54 = v44;
    v55 = 2114;
    v56 = v38;
    v57 = 1024;
    LODWORD(v58) = v46;
    _os_log_impl(&dword_1C5C61000, v42, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ didPlayToEnd: %{BOOL}u", buf, 0x2Cu);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_123(uint64_t a1, void *a2)
{
  v87 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"queue-section-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"queue-item-id"];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"item-audio-format-metadata"];

  v10 = [v9 objectForKeyedSubscript:@"active-format"];
  v11 = [v9 objectForKeyedSubscript:@"target-format"];
  v12 = [v9 objectForKeyedSubscript:@"active-format-justification"];
  v13 = [v12 integerValue];

  v14 = NSStringFromMPCPlayerAudioFormatJustification(v13);
  v15 = [v9 objectForKeyedSubscript:@"preferred-tiers"];
  v16 = [v15 integerValue];

  v17 = NSStringComponentsFromMPCPlayerAudioFormatTierPreference(v16);
  v18 = [v17 msv_compactDescription];

  v19 = [v9 objectForKeyedSubscript:@"alternate-formats"];
  v20 = [v9 objectForKeyedSubscript:@"route"];
  if (v10)
  {
    v63 = v20;
    v64 = v18;
    v65 = v19;
    v60 = v9;
    v21 = MSVLogDateFormatter();
    v22 = [v3 date];
    v67 = [v21 stringFromDate:v22];

    v23 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
    v24 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [*(a1 + 40) streamID];
      *buf = 138544642;
      v76 = v67;
      v77 = 2114;
      v78 = v25;
      v79 = 1024;
      v80 = [v3 threadPriority];
      v81 = 2114;
      v82 = v23;
      v83 = 2114;
      v84 = v5;
      v85 = 2114;
      v86 = v7;
      _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀒿 AUDIO CHANGE               %{public}@ %{public}@", buf, 0x3Au);
    }

    v61 = v7;
    v62 = v5;

    v66 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
    v26 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [*(a1 + 40) streamID];
      v28 = [v3 threadPriority];
      v29 = [v10 humanDescription];
      *buf = 138544386;
      v76 = v67;
      v77 = 2114;
      v78 = v27;
      v79 = 1024;
      v80 = v28;
      v81 = 2114;
      v82 = v66;
      v83 = 2114;
      v84 = v29;
      _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ activeFormat: %{public}@", buf, 0x30u);
    }

    v30 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [*(a1 + 40) streamID];
      v32 = [v3 threadPriority];
      v33 = [v11 humanDescription];
      *buf = 138544386;
      v76 = v67;
      v77 = 2114;
      v78 = v31;
      v79 = 1024;
      v80 = v32;
      v81 = 2114;
      v82 = v66;
      v83 = 2114;
      v84 = v33;
      _os_log_impl(&dword_1C5C61000, v30, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ targetFormat: %{public}@", buf, 0x30u);
    }

    v58 = v11;
    v59 = v10;

    v34 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [*(a1 + 40) streamID];
      v36 = [v3 threadPriority];
      *buf = 138544642;
      v76 = v67;
      v77 = 2114;
      v78 = v35;
      v79 = 1024;
      v80 = v36;
      v81 = 2114;
      v82 = v66;
      v83 = 2114;
      v84 = v14;
      v85 = 2114;
      v86 = v64;
      _os_log_impl(&dword_1C5C61000, v34, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ justification: %{public}@; preferences: %{public}@", buf, 0x3Au);
    }

    v57 = v14;

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = v65;
    v37 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v71;
      v40 = "com.apple.amp.mediaplaybackcore";
      v41 = "PlaybackEvents";
      do
      {
        v42 = 0;
        v68 = v38;
        do
        {
          if (*v71 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v43 = *(*(&v70 + 1) + 8 * v42);
          v44 = os_log_create(v40, v41);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            [*(a1 + 40) streamID];
            v46 = v45 = v41;
            v47 = v40;
            v48 = a1;
            v49 = v3;
            v50 = [v3 threadPriority];
            v51 = [v43 humanDescription];
            *buf = 138544386;
            v76 = v67;
            v77 = 2114;
            v78 = v46;
            v79 = 1024;
            v80 = v50;
            v3 = v49;
            a1 = v48;
            v40 = v47;
            v81 = 2114;
            v82 = v66;
            v83 = 2114;
            v84 = v51;
            _os_log_impl(&dword_1C5C61000, v44, OS_LOG_TYPE_DEBUG, "|%{public}@ %{public}@ %2i %{public}@  │ alternate: %{public}@", buf, 0x30u);

            v41 = v45;
            v38 = v68;
          }

          ++v42;
        }

        while (v38 != v42);
        v38 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
      }

      while (v38);
    }

    v52 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = [*(a1 + 40) streamID];
      v54 = [v3 threadPriority];
      v55 = [v63 humanDescription];
      *buf = 138544386;
      v76 = v67;
      v77 = 2114;
      v78 = v53;
      v79 = 1024;
      v80 = v54;
      v81 = 2114;
      v82 = v66;
      v83 = 2114;
      v84 = v55;
      _os_log_impl(&dword_1C5C61000, v52, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ audioRoute: %{public}@", buf, 0x30u);
    }

    v7 = v61;
    v5 = v62;
    v10 = v59;
    v9 = v60;
    v14 = v57;
    v11 = v58;
    v18 = v64;
    v19 = v65;
    v20 = v63;
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_124(uint64_t a1, void *a2)
{
  v101 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"queue-section-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"queue-item-id"];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"asset-load-info"];

  v10 = [v9 objectForKeyedSubscript:@"item-asset-type"];
  v11 = [v10 intValue];

  v12 = [v9 objectForKeyedSubscript:@"item-asset-endpoint-type"];
  v13 = [v12 intValue];

  v14 = [v9 objectForKeyedSubscript:@"item-asset-is-delegated-playback"];
  v76 = [v14 BOOLValue];

  v15 = [v9 objectForKeyedSubscript:@"item-asset-source"];
  v16 = [v15 intValue];

  v74 = [v9 objectForKeyedSubscript:@"player-item-identifier"];
  v73 = [v9 objectForKeyedSubscript:@"item-asset-url"];
  v75 = [v9 objectForKeyedSubscript:@"item-asset-cache-age"];
  v17 = [v3 payload];
  v18 = [v17 objectForKeyedSubscript:@"item-audio-asset-type-selection-metadata"];

  [v18 objectForKeyedSubscript:@"audio-asset-type-selection-explanation"];
  v72 = v71 = v18;
  v78 = [v18 objectForKeyedSubscript:@"audio-asset-type-selection-justification"];
  v19 = MSVLogDateFormatter();
  v81 = v3;
  v20 = [v3 date];
  v80 = [v19 stringFromDate:v20];

  v21 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v22 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [*(a1 + 40) streamID];
    *buf = 138544642;
    v88 = v80;
    v89 = 2114;
    v90 = v23;
    v91 = 1024;
    v92 = [v81 threadPriority];
    v93 = 2114;
    v94 = v21;
    v95 = 2114;
    v96 = v5;
    v97 = 2114;
    *v98 = v7;
    _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀒿 AUDIO ASSET SELECTION      %{public}@ %{public}@", buf, 0x3Au);
  }

  v79 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v24 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [*(a1 + 40) streamID];
    v26 = [v81 threadPriority];
    if ((v11 - 1) > 4)
    {
      v27 = @"Unspecified";
    }

    else
    {
      v27 = off_1E8231C10[v11 - 1];
    }

    *buf = 138544386;
    v88 = v80;
    v89 = 2114;
    v90 = v25;
    v91 = 1024;
    v92 = v26;
    v93 = 2114;
    v94 = v79;
    v95 = 2114;
    v96 = v27;
    _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ type: %{public}@", buf, 0x30u);
  }

  v28 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (v75)
  {
    if (v29)
    {
      v30 = [*(a1 + 40) streamID];
      v31 = [v81 threadPriority];
      if ((v13 - 1) > 2)
      {
        v32 = @"Unknown";
      }

      else
      {
        v32 = off_1E8231C38[v13 - 1];
      }

      v36 = a1;
      if ((v16 - 1) > 5)
      {
        v37 = @"Unknown";
      }

      else
      {
        v37 = off_1E8231C50[v16 - 1];
      }

      [v75 doubleValue];
      *buf = 138545154;
      v88 = v80;
      v89 = 2114;
      v90 = v30;
      v91 = 1024;
      v92 = v31;
      v93 = 2114;
      v94 = v79;
      v95 = 2114;
      v96 = v32;
      v97 = 1024;
      *v98 = v76;
      *&v98[4] = 2114;
      *&v98[6] = v37;
      v99 = 2048;
      v100 = v38 / 3600.0 / 24.0;
      _os_log_impl(&dword_1C5C61000, v28, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ endpoint: %{public}@; delegated: %{BOOL}u; source: %{public}@; age: %0.1fd", buf, 0x4Au);

      a1 = v36;
    }
  }

  else if (v29)
  {
    v33 = [*(a1 + 40) streamID];
    v34 = [v81 threadPriority];
    if ((v13 - 1) > 2)
    {
      v35 = @"Unknown";
    }

    else
    {
      v35 = off_1E8231C38[v13 - 1];
    }

    if ((v16 - 1) > 5)
    {
      v39 = @"Unknown";
    }

    else
    {
      v39 = off_1E8231C50[v16 - 1];
    }

    *buf = 138544898;
    v88 = v80;
    v89 = 2114;
    v90 = v33;
    v91 = 1024;
    v92 = v34;
    v93 = 2114;
    v94 = v79;
    v95 = 2114;
    v96 = v35;
    v97 = 1024;
    *v98 = v76;
    *&v98[4] = 2114;
    *&v98[6] = v39;
    _os_log_impl(&dword_1C5C61000, v28, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ endpoint: %{public}@; delegated: %{BOOL}u; source: %{public}@", buf, 0x40u);
  }

  v40 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = [*(a1 + 40) streamID];
    v42 = [v81 threadPriority];
    *buf = 138544642;
    v88 = v80;
    v89 = 2114;
    v90 = v41;
    v91 = 1024;
    v92 = v42;
    v93 = 2114;
    v94 = v79;
    v95 = 2114;
    v96 = v74;
    v97 = 2114;
    *v98 = v73;
    _os_log_impl(&dword_1C5C61000, v40, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ AVPlayerItem: %{public}@; url: %{public}@", buf, 0x3Au);
  }

  v43 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
  if (v78)
  {
    if (v44)
    {
      v45 = [*(a1 + 40) streamID];
      v46 = [v81 threadPriority];
      *buf = 138544386;
      v88 = v80;
      v89 = 2114;
      v90 = v45;
      v91 = 1024;
      v92 = v46;
      v93 = 2114;
      v94 = v79;
      v95 = 2114;
      v96 = v72;
      _os_log_impl(&dword_1C5C61000, v43, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ explanation: %{public}@", buf, 0x30u);
    }

    v68 = v9;
    v69 = v7;
    v70 = v5;

    v47 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = [*(a1 + 40) streamID];
      v49 = [v81 threadPriority];
      *buf = 138544130;
      v88 = v80;
      v89 = 2114;
      v90 = v48;
      v91 = 1024;
      v92 = v49;
      v93 = 2114;
      v94 = v79;
      _os_log_impl(&dword_1C5C61000, v47, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ justification:", buf, 0x26u);
    }

    v50 = [v78 allKeys];
    v51 = [v50 sortedArrayUsingComparator:&__block_literal_global_128];

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v43 = v51;
    v52 = [v43 countByEnumeratingWithState:&v82 objects:v86 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v83;
      v55 = "com.apple.amp.mediaplaybackcore";
      v77 = a1;
      do
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v83 != v54)
          {
            objc_enumerationMutation(v43);
          }

          v57 = *(*(&v82 + 1) + 8 * i);
          v58 = os_log_create(v55, "PlaybackEvents");
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            v59 = [*(a1 + 40) streamID];
            v60 = v55;
            v61 = [v81 threadPriority];
            [v78 objectForKeyedSubscript:v57];
            v62 = v54;
            v64 = v63 = v43;
            *buf = 138544642;
            v88 = v80;
            v89 = 2114;
            v90 = v59;
            v91 = 1024;
            v92 = v61;
            v55 = v60;
            v93 = 2114;
            v94 = v79;
            v95 = 2114;
            v96 = v57;
            v97 = 2114;
            *v98 = v64;
            _os_log_impl(&dword_1C5C61000, v58, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@      │ %{public}@: %{public}@", buf, 0x3Au);

            v43 = v63;
            v54 = v62;

            a1 = v77;
          }
        }

        v53 = [v43 countByEnumeratingWithState:&v82 objects:v86 count:16];
      }

      while (v53);
    }

    v7 = v69;
    v5 = v70;
    v9 = v68;
  }

  else if (v44)
  {
    v65 = [*(a1 + 40) streamID];
    v66 = [v81 threadPriority];
    *buf = 138544386;
    v88 = v80;
    v89 = 2114;
    v90 = v65;
    v91 = 1024;
    v92 = v66;
    v93 = 2114;
    v94 = v79;
    v95 = 2114;
    v96 = v72;
    _os_log_impl(&dword_1C5C61000, v43, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ explanation: %{public}@", buf, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_129(uint64_t a1, void *a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"queue-section-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"queue-item-id"];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"item-audio-format-selection-metadata"];

  v10 = [v9 objectForKeyedSubscript:@"audio-format-selection-format"];
  v50 = [v9 objectForKeyedSubscript:@"audio-format-selection-explanation"];
  v53 = [v9 objectForKeyedSubscript:@"audio-format-selection-justification"];
  v11 = MSVLogDateFormatter();
  v55 = v3;
  v12 = [v3 date];
  v54 = [v11 stringFromDate:v12];

  v13 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [*(a1 + 40) streamID];
    *buf = 138544642;
    v62 = v54;
    v63 = 2114;
    v64 = v15;
    v65 = 1024;
    v66 = [v55 threadPriority];
    v67 = 2114;
    v68 = v13;
    v69 = 2114;
    v70 = v5;
    v71 = 2114;
    v72 = v7;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀒿 AUDIO FORMAT SELECTION     %{public}@ %{public}@", buf, 0x3Au);
  }

  v52 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [*(a1 + 40) streamID];
    v18 = [v55 threadPriority];
    v19 = [v10 humanDescription];
    *buf = 138544386;
    v62 = v54;
    v63 = 2114;
    v64 = v17;
    v65 = 1024;
    v66 = v18;
    v67 = 2114;
    v68 = v52;
    v69 = 2114;
    v70 = v19;
    _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ format: %{public}@", buf, 0x30u);
  }

  v20 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (v53)
  {
    v49 = v5;
    if (v21)
    {
      v22 = [*(a1 + 40) streamID];
      v23 = [v55 threadPriority];
      *buf = 138544386;
      v62 = v54;
      v63 = 2114;
      v64 = v22;
      v65 = 1024;
      v66 = v23;
      v67 = 2114;
      v68 = v52;
      v69 = 2114;
      v70 = v50;
      _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ explanation: %{public}@", buf, 0x30u);
    }

    v46 = v10;
    v47 = v9;
    v48 = v7;

    v24 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [*(a1 + 40) streamID];
      v26 = [v55 threadPriority];
      *buf = 138544130;
      v62 = v54;
      v63 = 2114;
      v64 = v25;
      v65 = 1024;
      v66 = v26;
      v67 = 2114;
      v68 = v52;
      _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ justification:", buf, 0x26u);
    }

    v27 = [v53 allKeys];
    v28 = [v27 sortedArrayUsingComparator:&__block_literal_global_132];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v20 = v28;
    v29 = [v20 countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v57;
      v32 = "com.apple.amp.mediaplaybackcore";
      v51 = a1;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v57 != v31)
          {
            objc_enumerationMutation(v20);
          }

          v34 = *(*(&v56 + 1) + 8 * i);
          v35 = os_log_create(v32, "PlaybackEvents");
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = [*(a1 + 40) streamID];
            v37 = [v55 threadPriority];
            [v53 objectForKeyedSubscript:v34];
            v38 = v30;
            v39 = v32;
            v40 = v31;
            v42 = v41 = v20;
            *buf = 138544642;
            v62 = v54;
            v63 = 2114;
            v64 = v36;
            v65 = 1024;
            v66 = v37;
            v67 = 2114;
            v68 = v52;
            v69 = 2114;
            v70 = v34;
            v71 = 2114;
            v72 = v42;
            _os_log_impl(&dword_1C5C61000, v35, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@      │ %{public}@: %{public}@", buf, 0x3Au);

            v20 = v41;
            v31 = v40;
            v32 = v39;
            v30 = v38;

            a1 = v51;
          }
        }

        v30 = [v20 countByEnumeratingWithState:&v56 objects:v60 count:16];
      }

      while (v30);
    }

    v7 = v48;
    v5 = v49;
    v10 = v46;
    v9 = v47;
  }

  else if (v21)
  {
    v43 = [*(a1 + 40) streamID];
    v44 = [v55 threadPriority];
    *buf = 138544386;
    v62 = v54;
    v63 = 2114;
    v64 = v43;
    v65 = 1024;
    v66 = v44;
    v67 = 2114;
    v68 = v52;
    v69 = 2114;
    v70 = v50;
    _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ explanation: %{public}@", buf, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_133(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"queue-section-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"queue-item-id"];

  v8 = MSVLogDateFormatter();
  v9 = [v3 date];
  v10 = [v8 stringFromDate:v9];

  v11 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 40) streamID];
    v15 = 138544642;
    v16 = v10;
    v17 = 2114;
    v18 = v13;
    v19 = 1024;
    v20 = [v3 threadPriority];
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = v5;
    v25 = 2114;
    v26 = v7;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀌕 ITEM ASSET BEGIN           %{public}@ %{public}@", &v15, 0x3Au);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_134(uint64_t a1, void *a2, void *a3)
{
  v57[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v5];
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"queue-section-id"];

  v9 = [v5 payload];
  v10 = [v9 objectForKeyedSubscript:@"queue-item-id"];

  v56[0] = @"queue-section-id";
  v56[1] = @"queue-item-id";
  v57[0] = v8;
  v57[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:2];
  v12 = [v6 findPreviousEventWithType:@"asset-load-begin" matchingPayload:v11];

  [v5 durationSinceEvent:v12];
  v14 = v13;
  v15 = [v5 payload];
  v16 = [v15 objectForKeyedSubscript:@"asset-load-error"];

  v17 = MSVLogDateFormatter();
  v18 = [v5 date];
  v41 = [v17 stringFromDate:v18];

  v19 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v20 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [*(a1 + 40) streamID];
    *buf = 138544898;
    v43 = v41;
    v44 = 2114;
    v45 = v21;
    v46 = 1024;
    v47 = [v5 threadPriority];
    v48 = 2114;
    v49 = v19;
    v50 = 2114;
    v51 = v8;
    v52 = 2114;
    v53 = v10;
    v54 = 2048;
    v55 = v14;
    _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀌖 ITEM ASSET END             %{public}@ %{public}@ [%.3fs]", buf, 0x44u);
  }

  if (v16)
  {
    v38 = v12;
    v39 = v8;
    v40 = v6;
    v22 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
    v37 = v16;
    v23 = [v16 treeDescription];
    v24 = [v23 componentsSeparatedByString:@"\n"];

    if ([v24 count] >= 1)
    {
      for (i = 0; i < [v24 count]; ++i)
      {
        v26 = [v24 objectAtIndexedSubscript:i];
        if (i)
        {
          v27 = [v24 count] - 1;
          v28 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
          v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
          if (i == v27)
          {
            if (v29)
            {
              v30 = [*(a1 + 40) streamID];
              v31 = [v5 threadPriority];
              *buf = 138544386;
              v43 = v41;
              v44 = 2114;
              v45 = v30;
              v46 = 1024;
              v47 = v31;
              v48 = 2114;
              v49 = v22;
              v50 = 2114;
              v51 = v26;
              v32 = v28;
              v33 = "|%{public}@ %{public}@ %2i %{public}@  ╰           %{public}@";
LABEL_14:
              _os_log_impl(&dword_1C5C61000, v32, OS_LOG_TYPE_ERROR, v33, buf, 0x30u);
            }
          }

          else if (v29)
          {
            v30 = [*(a1 + 40) streamID];
            v35 = [v5 threadPriority];
            *buf = 138544386;
            v43 = v41;
            v44 = 2114;
            v45 = v30;
            v46 = 1024;
            v47 = v35;
            v48 = 2114;
            v49 = v22;
            v50 = 2114;
            v51 = v26;
            v32 = v28;
            v33 = "|%{public}@ %{public}@ %2i %{public}@  │           %{public}@";
            goto LABEL_14;
          }
        }

        else
        {
          v28 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v30 = [*(a1 + 40) streamID];
            v34 = [v5 threadPriority];
            *buf = 138544386;
            v43 = v41;
            v44 = 2114;
            v45 = v30;
            v46 = 1024;
            v47 = v34;
            v48 = 2114;
            v49 = v22;
            v50 = 2114;
            v51 = v26;
            v32 = v28;
            v33 = "|%{public}@ %{public}@ %2i %{public}@ ╲╭ error: ❌ %{public}@";
            goto LABEL_14;
          }
        }
      }
    }

    v8 = v39;
    v6 = v40;
    v12 = v38;
    v16 = v37;
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_135(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"queue-section-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"queue-item-id"];

  v8 = MSVLogDateFormatter();
  v9 = [v3 date];
  v10 = [v8 stringFromDate:v9];

  v11 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 40) streamID];
    v15 = 138544642;
    v16 = v10;
    v17 = 2114;
    v18 = v13;
    v19 = 1024;
    v20 = [v3 threadPriority];
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = v5;
    v25 = 2114;
    v26 = v7;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀍺 ITEM CONFIG BEGIN          %{public}@ %{public}@", &v15, 0x3Au);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_136(uint64_t a1, void *a2, void *a3)
{
  v89[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  [(MPCPlaybackEngineLoggingConsumer *)v6 _updateChartWithEvent:v5];
  v8 = [v5 payload];
  v9 = [v8 objectForKeyedSubscript:@"queue-section-id"];

  v10 = [v5 payload];
  v11 = [v10 objectForKeyedSubscript:@"queue-item-id"];

  v12 = [v5 payload];
  v13 = [v12 objectForKeyedSubscript:@"item-configured-eq"];
  v14 = [v13 intValue];

  v73 = [MEMORY[0x1E69708A0] settingWithPreset:v14];
  v15 = [v5 payload];
  v16 = [v15 objectForKeyedSubscript:@"item-configured-sc-vol-normalization"];
  [v16 doubleValue];
  v18 = v17;

  v19 = [v5 payload];
  v20 = [v19 objectForKeyedSubscript:@"item-configured-loudness"];

  v21 = [v5 payload];
  v22 = [v21 objectForKeyedSubscript:@"hls-metadata-wait-time"];
  [v22 doubleValue];
  v24 = v23;

  v25 = [v5 payload];
  v72 = [v25 objectForKeyedSubscript:@"audio-route"];

  v88[0] = @"queue-section-id";
  v88[1] = @"queue-item-id";
  v74 = v11;
  v75 = v9;
  v89[0] = v9;
  v89[1] = v11;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:2];
  v27 = [v7 findPreviousEventWithType:@"item-configuration-begin" matchingPayload:v26];

  [v5 durationSinceEvent:v27];
  v29 = v28;
  v30 = [v5 payload];
  v31 = [v30 objectForKeyedSubscript:@"supports-vocal-attenuation"];
  v71 = [v31 BOOLValue];

  v32 = [v5 payload];
  v33 = [v32 objectForKeyedSubscript:@"vocal-attenuation-available"];
  v70 = [v33 BOOLValue];

  v34 = [v5 payload];
  v35 = [v34 objectForKeyedSubscript:@"vocal-attenuation-enabled"];
  HIDWORD(v68) = [v35 BOOLValue];

  v36 = [v5 payload];
  v37 = [v36 objectForKeyedSubscript:@"vocal-attenuation-configured"];
  LODWORD(v68) = [v37 BOOLValue];

  v38 = MSVLogDateFormatter();
  v39 = [v5 date];
  v40 = [v38 stringFromDate:v39];

  v41 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v42 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = [*(a1 + 40) streamID];
    *buf = 138544898;
    v77 = v40;
    v78 = 2114;
    v79 = v43;
    v80 = 1024;
    v81 = [v5 threadPriority];
    v82 = 2114;
    v83 = v41;
    v84 = 2114;
    *v85 = v75;
    *&v85[8] = 2114;
    v86 = v11;
    LOWORD(v87[0]) = 2048;
    *(v87 + 2) = v29;
    _os_log_impl(&dword_1C5C61000, v42, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀪑 ITEM CONFIG END            %{public}@ %{public}@ [%.3fs]", buf, 0x44u);
  }

  v44 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v45 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = [*(a1 + 40) streamID];
    v47 = [v5 threadPriority];
    v48 = [v73 name];
    *buf = 138544386;
    v77 = v40;
    v78 = 2114;
    v79 = v46;
    v80 = 1024;
    v81 = v47;
    v82 = 2114;
    v83 = v44;
    v84 = 2114;
    *v85 = v48;
    _os_log_impl(&dword_1C5C61000, v45, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ EQ: %{public}@", buf, 0x30u);
  }

  if (v18 > 0.0)
  {
    v49 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = [*(a1 + 40) streamID];
      v51 = [v5 threadPriority];
      *buf = 138544386;
      v77 = v40;
      v78 = 2114;
      v79 = v50;
      v80 = 1024;
      v81 = v51;
      v82 = 2114;
      v83 = v44;
      v84 = 2048;
      *v85 = v18;
      _os_log_impl(&dword_1C5C61000, v49, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ soundCheckVolumeNormalization: %.3f", buf, 0x30u);
    }
  }

  if ([v20 count])
  {
    v52 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = [*(a1 + 40) streamID];
      v54 = [v5 threadPriority];
      v55 = [v20 msv_compactDescription];
      *buf = 138544386;
      v77 = v40;
      v78 = 2114;
      v79 = v53;
      v80 = 1024;
      v81 = v54;
      v82 = 2114;
      v83 = v44;
      v84 = 2114;
      *v85 = v55;
      _os_log_impl(&dword_1C5C61000, v52, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ loudnessInfo: %{public}@", buf, 0x30u);
    }
  }

  if (v24 > 0.0)
  {
    v56 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = [*(a1 + 40) streamID];
      v58 = [v5 threadPriority];
      *buf = 138544386;
      v77 = v40;
      v78 = 2114;
      v79 = v57;
      v80 = 1024;
      v81 = v58;
      v82 = 2114;
      v83 = v44;
      v84 = 2048;
      *v85 = v24;
      _os_log_impl(&dword_1C5C61000, v56, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ hlsMetadataWaitTime: %0.3fs", buf, 0x30u);
    }
  }

  v59 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v60 = [*(a1 + 40) streamID];
    v61 = [v5 threadPriority];
    *buf = 138545154;
    v77 = v40;
    v78 = 2114;
    v79 = v60;
    v80 = 1024;
    v81 = v61;
    v82 = 2114;
    v83 = v44;
    v84 = 1024;
    *v85 = v71;
    *&v85[4] = 1024;
    *&v85[6] = v69;
    LOWORD(v86) = 1024;
    *(&v86 + 2) = v70;
    HIWORD(v86) = 1024;
    v87[0] = HIDWORD(v69);
    _os_log_impl(&dword_1C5C61000, v59, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ vocal control supported:%{BOOL}u configured:%{BOOL}u available:%{BOOL}u enabled:%{BOOL}u", buf, 0x3Eu);
  }

  v62 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    v63 = [*(a1 + 40) streamID];
    v64 = [v5 threadPriority];
    v65 = [v72 name];
    v66 = NSStringFromMPCPlayerAudioRouteType([v72 type]);
    *buf = 138544642;
    v77 = v40;
    v78 = 2114;
    v79 = v63;
    v80 = 1024;
    v81 = v64;
    v82 = 2114;
    v83 = v44;
    v84 = 2114;
    *v85 = v65;
    *&v85[8] = 2114;
    v86 = v66;
    _os_log_impl(&dword_1C5C61000, v62, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ route: %{public}@ (%{public}@)", buf, 0x3Au);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_138(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"queue-section-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"queue-item-id"];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"asset-load-error"];

  v10 = MSVLogDateFormatter();
  v11 = [v3 date];
  v33 = [v10 stringFromDate:v11];

  v12 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 40) streamID];
    *buf = 138544642;
    v35 = v33;
    v36 = 2114;
    v37 = v14;
    v38 = 1024;
    v39 = [v3 threadPriority];
    v40 = 2114;
    v41 = v12;
    v42 = 2114;
    v43 = v5;
    v44 = 2114;
    v45 = v7;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀌔 ITEM FAILED                %{public}@ %{public}@", buf, 0x3Au);
  }

  if (v9)
  {
    v31 = v7;
    v32 = v5;
    v15 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
    v30 = v9;
    v16 = [v9 treeDescription];
    v17 = [v16 componentsSeparatedByString:@"\n"];

    if ([v17 count] >= 1)
    {
      for (i = 0; i < [v17 count]; ++i)
      {
        v19 = [v17 objectAtIndexedSubscript:i];
        if (i)
        {
          v20 = [v17 count] - 1;
          v21 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
          v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
          if (i == v20)
          {
            if (v22)
            {
              v23 = [*(a1 + 40) streamID];
              v24 = [v3 threadPriority];
              *buf = 138544386;
              v35 = v33;
              v36 = 2114;
              v37 = v23;
              v38 = 1024;
              v39 = v24;
              v40 = 2114;
              v41 = v15;
              v42 = 2114;
              v43 = v19;
              v25 = v21;
              v26 = "|%{public}@ %{public}@ %2i %{public}@  ╰           %{public}@";
LABEL_14:
              _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_ERROR, v26, buf, 0x30u);
            }
          }

          else if (v22)
          {
            v23 = [*(a1 + 40) streamID];
            v28 = [v3 threadPriority];
            *buf = 138544386;
            v35 = v33;
            v36 = 2114;
            v37 = v23;
            v38 = 1024;
            v39 = v28;
            v40 = 2114;
            v41 = v15;
            v42 = 2114;
            v43 = v19;
            v25 = v21;
            v26 = "|%{public}@ %{public}@ %2i %{public}@  │           %{public}@";
            goto LABEL_14;
          }
        }

        else
        {
          v21 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v23 = [*(a1 + 40) streamID];
            v27 = [v3 threadPriority];
            *buf = 138544386;
            v35 = v33;
            v36 = 2114;
            v37 = v23;
            v38 = 1024;
            v39 = v27;
            v40 = 2114;
            v41 = v15;
            v42 = 2114;
            v43 = v19;
            v25 = v21;
            v26 = "|%{public}@ %{public}@ %2i %{public}@ ╲╭ error: ❌ %{public}@";
            goto LABEL_14;
          }
        }
      }
    }

    v7 = v31;
    v5 = v32;
    v9 = v30;
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_139(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"queue-section-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"queue-item-id"];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"item-metadata"];
  v10 = [v9 objectForKeyedSubscript:@"item-title"];

  v11 = MSVLogDateFormatter();
  v12 = [v3 date];
  v13 = [v11 stringFromDate:v12];

  v14 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v15 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [*(a1 + 40) streamID];
    v22 = 138544642;
    v23 = v13;
    v24 = 2114;
    v25 = v16;
    v26 = 1024;
    v27 = [v3 threadPriority];
    v28 = 2114;
    v29 = v14;
    v30 = 2114;
    v31 = v5;
    v32 = 2114;
    v33 = v7;
    _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀓞 PLACEHOLDER BEGIN          %{public}@ %{public}@", &v22, 0x3Au);
  }

  v17 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v18 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [*(a1 + 40) streamID];
    v20 = [v3 threadPriority];
    v22 = 138544386;
    v23 = v13;
    v24 = 2114;
    v25 = v19;
    v26 = 1024;
    v27 = v20;
    v28 = 2114;
    v29 = v17;
    v30 = 2114;
    v31 = v10;
    _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ title: %{public}@", &v22, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_140(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"queue-section-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"queue-item-id"];

  v8 = MSVLogDateFormatter();
  v9 = [v3 date];
  v10 = [v8 stringFromDate:v9];

  v11 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 40) streamID];
    v15 = 138544642;
    v16 = v10;
    v17 = 2114;
    v18 = v13;
    v19 = 1024;
    v20 = [v3 threadPriority];
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = v5;
    v25 = 2114;
    v26 = v7;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀧒 PLACEHOLDER END            %{public}@ %{public}@", &v15, 0x3Au);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_141(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"queue-section-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"item-start-item-id"];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"item-stream-id"];

  v10 = MSVLogDateFormatter();
  v11 = [v3 date];
  v12 = [v10 stringFromDate:v11];

  v13 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [*(a1 + 40) streamID];
    *buf = 138544898;
    v28 = v12;
    v29 = 2114;
    v30 = v15;
    v31 = 1024;
    v32 = [v3 threadPriority];
    v33 = 2114;
    v34 = v13;
    v35 = 2114;
    v36 = v5;
    v37 = 2114;
    v38 = v7;
    v39 = 2114;
    v40 = v9;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀒙 HLS BEGIN                  %{public}@ %{public}@ %{public}@", buf, 0x44u);
  }

  v16 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 40) streamID];
    v19 = [v3 threadPriority];
    v20 = [v3 payload];
    [v20 objectForKeyedSubscript:@"container-indeterminate-duration"];
    v26 = v9;
    v21 = v7;
    v23 = v22 = v5;
    v24 = [v23 BOOLValue];
    *buf = 138544386;
    v28 = v12;
    v29 = 2114;
    v30 = v18;
    v31 = 1024;
    v32 = v19;
    v33 = 2114;
    v34 = v16;
    v35 = 1024;
    LODWORD(v36) = v24;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ hasIndeterminateDuration: %{BOOL}u", buf, 0x2Cu);

    v5 = v22;
    v7 = v21;
    v9 = v26;
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_142(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"queue-section-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"item-end-item-id"];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"item-stream-id"];

  v10 = MSVLogDateFormatter();
  v11 = [v3 date];
  v12 = [v10 stringFromDate:v11];

  v13 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [*(a1 + 40) streamID];
    v17 = 138544898;
    v18 = v12;
    v19 = 2114;
    v20 = v15;
    v21 = 1024;
    v22 = [v3 threadPriority];
    v23 = 2114;
    v24 = v13;
    v25 = 2114;
    v26 = v5;
    v27 = 2114;
    v28 = v7;
    v29 = 2114;
    v30 = v9;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀒚 HLS END                    %{public}@ %{public}@ %{public}@", &v17, 0x44u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_143(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"item-stream-id"];

  v6 = MSVLogDateFormatter();
  v7 = [v3 date];
  v8 = [v6 stringFromDate:v7];

  v9 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 40) streamID];
    v13 = 138544386;
    v14 = v8;
    v15 = 2114;
    v16 = v11;
    v17 = 1024;
    v18 = [v3 threadPriority];
    v19 = 2114;
    v20 = v9;
    v21 = 2114;
    v22 = v5;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀭹 TIMED METADATA BEGIN       %{public}@", &v13, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_144(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"item-stream-id"];

  v6 = MSVLogDateFormatter();
  v7 = [v3 date];
  v8 = [v6 stringFromDate:v7];

  v9 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 40) streamID];
    v13 = 138544386;
    v14 = v8;
    v15 = 2114;
    v16 = v11;
    v17 = 1024;
    v18 = [v3 threadPriority];
    v19 = 2114;
    v20 = v9;
    v21 = 2114;
    v22 = v5;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀭺 TIMED METADATA END         %{public}@", &v13, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_145(uint64_t a1, void *a2)
{
  v124 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"outgoing-item-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"incoming-item-id"];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"transition-type"];
  v10 = [v9 integerValue];

  v11 = [v3 payload];
  v12 = [v11 objectForKeyedSubscript:@"transition-provided"];
  v13 = [v12 integerValue];

  v107 = v3;
  v14 = [v3 payload];
  v15 = [v14 objectForKeyedSubscript:@"transition-parameters"];

  v100 = [v15 objectForKeyedSubscript:@"strategy"];
  v102 = [v15 objectForKeyedSubscript:@"outgoing"];
  v101 = [v15 objectForKeyedSubscript:@"incoming"];
  v103 = v15;
  v16 = [v15 objectForKeyedSubscript:@"duration"];
  [v16 doubleValue];
  v18 = v17;

  if (*(a1 + 32))
  {
    if ((v10 - 1) > 2)
    {
      v19 = @"􀠊  Gapless";
    }

    else
    {
      v19 = off_1E8231CA8[v10 - 1];
    }

    if ((v13 - 1) > 4)
    {
      v20 = @"None";
    }

    else
    {
      v20 = off_1E8231C80[v13 - 1];
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  v21 = MSVLogDateFormatter();
  v22 = [v107 date];
  v106 = [v21 stringFromDate:v22];

  v23 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v24 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [*(a1 + 40) streamID];
    *buf = 138544642;
    v113 = v106;
    v114 = 2114;
    v115 = v25;
    v116 = 1024;
    v117 = [v107 threadPriority];
    v118 = 2114;
    v119 = v23;
    v120 = 2114;
    v121 = v5;
    v122 = 2114;
    v123 = v7;
    _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀉘 ITEM TRANSITION SETUP      %{public}@ => %{public}@", buf, 0x3Au);
  }

  v105 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v26 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [*(a1 + 40) streamID];
    v28 = [v107 threadPriority];
    *buf = 138544386;
    v113 = v106;
    v114 = 2114;
    v115 = v27;
    v116 = 1024;
    v117 = v28;
    v118 = 2114;
    v119 = v105;
    v120 = 2114;
    v121 = v19;
    _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ type: %{public}@", buf, 0x30u);
  }

  v29 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
  v104 = a1;
  if ((v10 - 1) > 1)
  {
    if (v30)
    {
      v78 = [*(a1 + 40) streamID];
      v79 = [v107 threadPriority];
      *buf = 138544130;
      v113 = v106;
      v114 = 2114;
      v115 = v78;
      v116 = 1024;
      v117 = v79;
      v118 = 2114;
      v119 = v105;
      _os_log_impl(&dword_1C5C61000, v29, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ parameters:", buf, 0x26u);
    }

    if (![v103 count])
    {
      goto LABEL_72;
    }

    v80 = [v103 allKeys];
    v77 = [v80 sortedArrayUsingComparator:&__block_literal_global_210];

    if ([v77 count] < 1)
    {
LABEL_71:

      goto LABEL_72;
    }

    v97 = v7;
    v99 = v5;
    v81 = 0;
    while (1)
    {
      v82 = [v77 objectAtIndexedSubscript:v81];
      if (!v81)
      {
        v84 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          v91 = [*(a1 + 40) streamID];
          v92 = [v107 threadPriority];
          v93 = [v103 objectForKeyedSubscript:v82];
          *buf = 138544642;
          v113 = v106;
          v114 = 2114;
          v115 = v91;
          v116 = 1024;
          v117 = v92;
          v118 = 2114;
          v119 = v105;
          v120 = 2114;
          v121 = v82;
          v122 = 2114;
          v123 = v93;
          _os_log_impl(&dword_1C5C61000, v84, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@     ╲╭ %{public}@: %{public}@", buf, 0x3Au);

          a1 = v104;
        }

        goto LABEL_69;
      }

      v83 = [v77 count] - 1;
      v84 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
      v85 = os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT);
      if (v81 == v83)
      {
        if (v85)
        {
          v86 = [*(a1 + 40) streamID];
          v87 = [v107 threadPriority];
          v88 = [v103 objectForKeyedSubscript:v82];
          *buf = 138544642;
          v113 = v106;
          v114 = 2114;
          v115 = v86;
          v116 = 1024;
          v117 = v87;
          a1 = v104;
          v118 = 2114;
          v119 = v105;
          v120 = 2114;
          v121 = v82;
          v122 = 2114;
          v123 = v88;
          v89 = v84;
          v90 = "|%{public}@ %{public}@ %2i %{public}@      ╰ %{public}@: %{public}@";
LABEL_68:
          _os_log_impl(&dword_1C5C61000, v89, OS_LOG_TYPE_DEFAULT, v90, buf, 0x3Au);
        }
      }

      else if (v85)
      {
        v86 = [*(a1 + 40) streamID];
        v94 = [v107 threadPriority];
        v88 = [v103 objectForKeyedSubscript:v82];
        *buf = 138544642;
        v113 = v106;
        v114 = 2114;
        v115 = v86;
        v116 = 1024;
        v117 = v94;
        a1 = v104;
        v118 = 2114;
        v119 = v105;
        v120 = 2114;
        v121 = v82;
        v122 = 2114;
        v123 = v88;
        v89 = v84;
        v90 = "|%{public}@ %{public}@ %2i %{public}@      │ %{public}@: %{public}@";
        goto LABEL_68;
      }

LABEL_69:

      if (++v81 >= [v77 count])
      {
        goto LABEL_70;
      }
    }
  }

  if (v30)
  {
    v31 = [*(a1 + 40) streamID];
    v32 = [v107 threadPriority];
    *buf = 138544386;
    v113 = v106;
    v114 = 2114;
    v115 = v31;
    v116 = 1024;
    v117 = v32;
    v118 = 2114;
    v119 = v105;
    v120 = 2114;
    v121 = v20;
    _os_log_impl(&dword_1C5C61000, v29, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  | transition provided: %{public}@", buf, 0x30u);
  }

  if (v10 == 2)
  {
    v33 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [*(a1 + 40) streamID];
      v35 = [v107 threadPriority];
      *buf = 138544386;
      v113 = v106;
      v114 = 2114;
      v115 = v34;
      v116 = 1024;
      v117 = v35;
      v118 = 2114;
      v119 = v105;
      v120 = 2114;
      v121 = v100;
      _os_log_impl(&dword_1C5C61000, v33, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  | transition strategy: %{public}@", buf, 0x30u);
    }
  }

  v36 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [*(a1 + 40) streamID];
    v38 = [v107 threadPriority];
    *buf = 138544386;
    v113 = v106;
    v114 = 2114;
    v115 = v37;
    v116 = 1024;
    v117 = v38;
    v118 = 2114;
    v119 = v105;
    v120 = 2048;
    v121 = v18;
    _os_log_impl(&dword_1C5C61000, v36, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  | transition duration: %3.2f", buf, 0x30u);
  }

  if ([v102 count])
  {
    v39 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [*(a1 + 40) streamID];
      v41 = [v107 threadPriority];
      *buf = 138544130;
      v113 = v106;
      v114 = 2114;
      v115 = v40;
      v116 = 1024;
      v117 = v41;
      v118 = 2114;
      v119 = v105;
      _os_log_impl(&dword_1C5C61000, v39, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ outgoing:", buf, 0x26u);
    }

    if ([v102 count])
    {
      v96 = v7;
      v98 = v5;
      v42 = [v102 allKeys];
      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 3221225472;
      v110[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_206;
      v110[3] = &unk_1E8231B38;
      v111 = &unk_1F4599808;
      v43 = [v42 sortedArrayUsingComparator:v110];

      if ([v43 count] >= 1)
      {
        for (i = 0; i < [v43 count]; ++i)
        {
          v45 = [v43 objectAtIndexedSubscript:i];
          if (!i)
          {
            v47 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              v54 = [*(a1 + 40) streamID];
              v55 = [v107 threadPriority];
              v56 = [v102 objectForKeyedSubscript:v45];
              *buf = 138544642;
              v113 = v106;
              v114 = 2114;
              v115 = v54;
              v116 = 1024;
              v117 = v55;
              v118 = 2114;
              v119 = v105;
              v120 = 2114;
              v121 = v45;
              v122 = 2114;
              v123 = v56;
              _os_log_impl(&dword_1C5C61000, v47, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │  ╲╭ %{public}@: %{public}@", buf, 0x3Au);

              a1 = v104;
            }

            goto LABEL_36;
          }

          v46 = [v43 count] - 1;
          v47 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
          v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
          if (i == v46)
          {
            if (v48)
            {
              v49 = [*(a1 + 40) streamID];
              v50 = [v107 threadPriority];
              v51 = [v102 objectForKeyedSubscript:v45];
              *buf = 138544642;
              v113 = v106;
              v114 = 2114;
              v115 = v49;
              v116 = 1024;
              v117 = v50;
              v118 = 2114;
              v119 = v105;
              v120 = 2114;
              v121 = v45;
              v122 = 2114;
              v123 = v51;
              v52 = v47;
              v53 = "|%{public}@ %{public}@ %2i %{public}@  │   ╰ %{public}@: %{public}@";
LABEL_35:
              _os_log_impl(&dword_1C5C61000, v52, OS_LOG_TYPE_DEFAULT, v53, buf, 0x3Au);

              a1 = v104;
            }
          }

          else if (v48)
          {
            v49 = [*(a1 + 40) streamID];
            v57 = [v107 threadPriority];
            v51 = [v102 objectForKeyedSubscript:v45];
            *buf = 138544642;
            v113 = v106;
            v114 = 2114;
            v115 = v49;
            v116 = 1024;
            v117 = v57;
            v118 = 2114;
            v119 = v105;
            v120 = 2114;
            v121 = v45;
            v122 = 2114;
            v123 = v51;
            v52 = v47;
            v53 = "|%{public}@ %{public}@ %2i %{public}@  │   │ %{public}@: %{public}@";
            goto LABEL_35;
          }

LABEL_36:
        }
      }

      v7 = v96;
      v5 = v98;
    }
  }

  if ([v101 count])
  {
    v58 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = [*(a1 + 40) streamID];
      v60 = [v107 threadPriority];
      *buf = 138544130;
      v113 = v106;
      v114 = 2114;
      v115 = v59;
      v116 = 1024;
      v117 = v60;
      v118 = 2114;
      v119 = v105;
      _os_log_impl(&dword_1C5C61000, v58, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ incoming:", buf, 0x26u);
    }

    if ([v101 count])
    {
      v97 = v7;
      v99 = v5;
      v61 = [v101 allKeys];
      v108[0] = MEMORY[0x1E69E9820];
      v108[1] = 3221225472;
      v108[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_207;
      v108[3] = &unk_1E8231B38;
      v109 = &unk_1F4599808;
      v62 = [v61 sortedArrayUsingComparator:v108];

      if ([v62 count] >= 1)
      {
        for (j = 0; j < [v62 count]; ++j)
        {
          v64 = [v62 objectAtIndexedSubscript:j];
          if (!j)
          {
            v66 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              v73 = [*(a1 + 40) streamID];
              v74 = [v107 threadPriority];
              v75 = [v101 objectForKeyedSubscript:v64];
              *buf = 138544642;
              v113 = v106;
              v114 = 2114;
              v115 = v73;
              v116 = 1024;
              v117 = v74;
              v118 = 2114;
              v119 = v105;
              v120 = 2114;
              v121 = v64;
              v122 = 2114;
              v123 = v75;
              _os_log_impl(&dword_1C5C61000, v66, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@     ╲╭ %{public}@: %{public}@", buf, 0x3Au);

              a1 = v104;
            }

            goto LABEL_53;
          }

          v65 = [v62 count] - 1;
          v66 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
          v67 = os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT);
          if (j == v65)
          {
            if (v67)
            {
              v68 = [*(a1 + 40) streamID];
              v69 = [v107 threadPriority];
              v70 = [v101 objectForKeyedSubscript:v64];
              *buf = 138544642;
              v113 = v106;
              v114 = 2114;
              v115 = v68;
              v116 = 1024;
              v117 = v69;
              v118 = 2114;
              v119 = v105;
              v120 = 2114;
              v121 = v64;
              v122 = 2114;
              v123 = v70;
              v71 = v66;
              v72 = "|%{public}@ %{public}@ %2i %{public}@      ╰ %{public}@: %{public}@";
LABEL_52:
              _os_log_impl(&dword_1C5C61000, v71, OS_LOG_TYPE_DEFAULT, v72, buf, 0x3Au);

              a1 = v104;
            }
          }

          else if (v67)
          {
            v68 = [*(a1 + 40) streamID];
            v76 = [v107 threadPriority];
            v70 = [v101 objectForKeyedSubscript:v64];
            *buf = 138544642;
            v113 = v106;
            v114 = 2114;
            v115 = v68;
            v116 = 1024;
            v117 = v76;
            v118 = 2114;
            v119 = v105;
            v120 = 2114;
            v121 = v64;
            v122 = 2114;
            v123 = v70;
            v71 = v66;
            v72 = "|%{public}@ %{public}@ %2i %{public}@      │ %{public}@: %{public}@";
            goto LABEL_52;
          }

LABEL_53:
        }
      }

      v77 = v109;
LABEL_70:
      v7 = v97;
      v5 = v99;
      goto LABEL_71;
    }
  }

LABEL_72:

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_211(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"outgoing-item-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"incoming-item-id"];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"transition-type"];
  v10 = [v9 integerValue];

  v11 = [v3 payload];
  v28 = [v11 objectForKeyedSubscript:@"transition-cancellation-reason"];

  if (*(a1 + 32))
  {
    if ((v10 - 1) > 2)
    {
      v12 = @"􀠊  Gapless";
    }

    else
    {
      v12 = off_1E8231CA8[v10 - 1];
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = MSVLogDateFormatter();
  v14 = [v3 date];
  v15 = [v13 stringFromDate:v14];

  v16 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 40) streamID];
    *buf = 138544642;
    v30 = v15;
    v31 = 2114;
    v32 = v18;
    v33 = 1024;
    v34 = [v3 threadPriority];
    v35 = 2114;
    v36 = v16;
    v37 = 2114;
    v38 = v5;
    v39 = 2114;
    v40 = v7;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀉘 ITEM TRANSITION CANCELLED  %{public}@ => %{public}@", buf, 0x3Au);
  }

  v19 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v20 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [*(a1 + 40) streamID];
    v22 = [v3 threadPriority];
    *buf = 138544386;
    v30 = v15;
    v31 = 2114;
    v32 = v21;
    v33 = 1024;
    v34 = v22;
    v35 = 2114;
    v36 = v19;
    v37 = 2114;
    v38 = v12;
    _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ type: %{public}@", buf, 0x30u);
  }

  v23 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [*(a1 + 40) streamID];
    v25 = [v3 threadPriority];
    v26 = [v28 treeDescription];
    *buf = 138544386;
    v30 = v15;
    v31 = 2114;
    v32 = v24;
    v33 = 1024;
    v34 = v25;
    v35 = 2114;
    v36 = v19;
    v37 = 2114;
    v38 = v26;
    _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ reason: %{public}@", buf, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_212(uint64_t a1, void *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"outgoing-item-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"incoming-item-id"];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"transition-type"];
  v10 = [v9 integerValue];

  v11 = [v3 payload];
  v12 = [v11 objectForKeyedSubscript:@"transition-outgoing-item-source-time"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [v3 payload];
  v16 = [v15 objectForKeyedSubscript:@"transition-outgoing-item-target-time"];
  [v16 doubleValue];
  v18 = v17;

  v19 = [v3 payload];
  v20 = [v19 objectForKeyedSubscript:@"transition-incoming-item-source-time"];
  [v20 doubleValue];
  v22 = v21;

  v23 = [v3 payload];
  v24 = [v23 objectForKeyedSubscript:@"transition-incoming-item-target-time"];
  [v24 doubleValue];
  v26 = v25;

  v27 = [v3 payload];
  v28 = [v27 objectForKeyedSubscript:@"transition-average-rate"];
  [v28 doubleValue];
  v30 = v29;

  if (*(a1 + 32))
  {
    if ((v10 - 1) > 2)
    {
      v31 = @"􀠊  Gapless";
    }

    else
    {
      v31 = off_1E8231CA8[v10 - 1];
    }
  }

  else
  {
    v31 = 0;
  }

  v32 = MSVLogDateFormatter();
  v33 = [v3 date];
  v34 = [v32 stringFromDate:v33];

  v35 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v36 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [*(a1 + 40) streamID];
    v49 = 138544642;
    v50 = v34;
    v51 = 2114;
    v52 = v37;
    v53 = 1024;
    v54 = [v3 threadPriority];
    v55 = 2114;
    v56 = v35;
    v57 = 2114;
    v58 = v5;
    v59 = 2114;
    v60 = v7;
    _os_log_impl(&dword_1C5C61000, v36, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀉘 ITEM TRANSITION START      %{public}@ => %{public}@", &v49, 0x3Au);
  }

  v38 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v39 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = [*(a1 + 40) streamID];
    v41 = [v3 threadPriority];
    v49 = 138544386;
    v50 = v34;
    v51 = 2114;
    v52 = v40;
    v53 = 1024;
    v54 = v41;
    v55 = 2114;
    v56 = v38;
    v57 = 2114;
    v58 = v31;
    _os_log_impl(&dword_1C5C61000, v39, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ type: %{public}@", &v49, 0x30u);
  }

  v42 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = [*(a1 + 40) streamID];
    v44 = [v3 threadPriority];
    v49 = 138544898;
    v50 = v34;
    v51 = 2114;
    v52 = v43;
    v53 = 1024;
    v54 = v44;
    v55 = 2114;
    v56 = v38;
    v57 = 2048;
    v58 = v18;
    v59 = 2048;
    v60 = v14;
    v61 = 2048;
    v62 = v30;
    _os_log_impl(&dword_1C5C61000, v42, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ outgoing: { targetTime: %3.2f; sourceTime: %3.2f averageRate: %3.2f }", &v49, 0x44u);
  }

  v45 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = [*(a1 + 40) streamID];
    v47 = [v3 threadPriority];
    v49 = 138544642;
    v50 = v34;
    v51 = 2114;
    v52 = v46;
    v53 = 1024;
    v54 = v47;
    v55 = 2114;
    v56 = v38;
    v57 = 2048;
    v58 = v26;
    v59 = 2048;
    v60 = v22;
    _os_log_impl(&dword_1C5C61000, v45, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ incoming: { targetTime: %3.2f; sourceTime: %3.2f }", &v49, 0x3Au);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_213(uint64_t a1, void *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"outgoing-item-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"incoming-item-id"];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"transition-type"];
  v10 = [v9 integerValue];

  v11 = [v3 payload];
  v12 = [v11 objectForKeyedSubscript:@"transition-outgoing-item-source-time"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [v3 payload];
  v16 = [v15 objectForKeyedSubscript:@"transition-outgoing-item-target-time"];
  [v16 doubleValue];
  v18 = v17;

  v19 = [v3 payload];
  v20 = [v19 objectForKeyedSubscript:@"transition-incoming-item-source-time"];
  [v20 doubleValue];
  v22 = v21;

  v23 = [v3 payload];
  v24 = [v23 objectForKeyedSubscript:@"transition-incoming-item-target-time"];
  [v24 doubleValue];
  v26 = v25;

  v27 = [v3 payload];
  v28 = [v27 objectForKeyedSubscript:@"transition-average-rate"];
  [v28 doubleValue];
  v30 = v29;

  if (*(a1 + 32))
  {
    if ((v10 - 1) > 2)
    {
      v31 = @"􀠊  Gapless";
    }

    else
    {
      v31 = off_1E8231CA8[v10 - 1];
    }
  }

  else
  {
    v31 = 0;
  }

  v32 = MSVLogDateFormatter();
  v33 = [v3 date];
  v34 = [v32 stringFromDate:v33];

  v35 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v36 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [*(a1 + 40) streamID];
    v49 = 138544642;
    v50 = v34;
    v51 = 2114;
    v52 = v37;
    v53 = 1024;
    v54 = [v3 threadPriority];
    v55 = 2114;
    v56 = v35;
    v57 = 2114;
    v58 = v5;
    v59 = 2114;
    v60 = v7;
    _os_log_impl(&dword_1C5C61000, v36, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀉙 ITEM TRANSITION PIVOT      %{public}@ => %{public}@", &v49, 0x3Au);
  }

  v38 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v39 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = [*(a1 + 40) streamID];
    v41 = [v3 threadPriority];
    v49 = 138544386;
    v50 = v34;
    v51 = 2114;
    v52 = v40;
    v53 = 1024;
    v54 = v41;
    v55 = 2114;
    v56 = v38;
    v57 = 2114;
    v58 = v31;
    _os_log_impl(&dword_1C5C61000, v39, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ type: %{public}@", &v49, 0x30u);
  }

  v42 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = [*(a1 + 40) streamID];
    v44 = [v3 threadPriority];
    v49 = 138544642;
    v50 = v34;
    v51 = 2114;
    v52 = v43;
    v53 = 1024;
    v54 = v44;
    v55 = 2114;
    v56 = v38;
    v57 = 2048;
    v58 = v18;
    v59 = 2048;
    v60 = v14;
    _os_log_impl(&dword_1C5C61000, v42, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ outgoing: { targetTime: %3.2f; sourceTime: %3.2f }", &v49, 0x3Au);
  }

  v45 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = [*(a1 + 40) streamID];
    v47 = [v3 threadPriority];
    v49 = 138544898;
    v50 = v34;
    v51 = 2114;
    v52 = v46;
    v53 = 1024;
    v54 = v47;
    v55 = 2114;
    v56 = v38;
    v57 = 2048;
    v58 = v26;
    v59 = 2048;
    v60 = v22;
    v61 = 2048;
    v62 = v30;
    _os_log_impl(&dword_1C5C61000, v45, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ incoming: { targetTime: %3.2f; sourceTime: %3.2f; averageRate: %3.2f }", &v49, 0x44u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_214(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"outgoing-item-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"incoming-item-id"];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"transition-type"];
  v10 = [v9 integerValue];

  v11 = [v3 payload];
  v12 = [v11 objectForKeyedSubscript:@"transition-outgoing-item-source-time"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [v3 payload];
  v16 = [v15 objectForKeyedSubscript:@"transition-outgoing-item-target-time"];
  [v16 doubleValue];
  v18 = v17;

  v19 = [v3 payload];
  v20 = [v19 objectForKeyedSubscript:@"transition-incoming-item-source-time"];
  [v20 doubleValue];
  v22 = v21;

  v23 = [v3 payload];
  v24 = [v23 objectForKeyedSubscript:@"transition-incoming-item-target-time"];
  [v24 doubleValue];
  v26 = v25;

  if (*(a1 + 32))
  {
    if ((v10 - 1) > 2)
    {
      v27 = @"􀠊  Gapless";
    }

    else
    {
      v27 = off_1E8231CA8[v10 - 1];
    }
  }

  else
  {
    v27 = 0;
  }

  v28 = MSVLogDateFormatter();
  v29 = [v3 date];
  v30 = [v28 stringFromDate:v29];

  v31 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v32 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [*(a1 + 40) streamID];
    v45 = 138544642;
    v46 = v30;
    v47 = 2114;
    v48 = v33;
    v49 = 1024;
    v50 = [v3 threadPriority];
    v51 = 2114;
    v52 = v31;
    v53 = 2114;
    v54 = v5;
    v55 = 2114;
    v56 = v7;
    _os_log_impl(&dword_1C5C61000, v32, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀰧 ITEM TRANSITION END        %{public}@ => %{public}@", &v45, 0x3Au);
  }

  v34 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v35 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [*(a1 + 40) streamID];
    v37 = [v3 threadPriority];
    v45 = 138544386;
    v46 = v30;
    v47 = 2114;
    v48 = v36;
    v49 = 1024;
    v50 = v37;
    v51 = 2114;
    v52 = v34;
    v53 = 2114;
    v54 = v27;
    _os_log_impl(&dword_1C5C61000, v35, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ type: %{public}@", &v45, 0x30u);
  }

  v38 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = [*(a1 + 40) streamID];
    v40 = [v3 threadPriority];
    v45 = 138544642;
    v46 = v30;
    v47 = 2114;
    v48 = v39;
    v49 = 1024;
    v50 = v40;
    v51 = 2114;
    v52 = v34;
    v53 = 2048;
    v54 = v18;
    v55 = 2048;
    v56 = v14;
    _os_log_impl(&dword_1C5C61000, v38, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ outgoing: { targetTime: %3.2f; sourceTime: %3.2f }", &v45, 0x3Au);
  }

  v41 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [*(a1 + 40) streamID];
    v43 = [v3 threadPriority];
    v45 = 138544642;
    v46 = v30;
    v47 = 2114;
    v48 = v42;
    v49 = 1024;
    v50 = v43;
    v51 = 2114;
    v52 = v34;
    v53 = 2048;
    v54 = v26;
    v55 = 2048;
    v56 = v22;
    _os_log_impl(&dword_1C5C61000, v41, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ incoming: { targetTime: %3.2f; sourceTime: %3.2f }", &v45, 0x3Au);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_215(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"outgoing-item-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"incoming-item-id"];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"transition-type"];
  v10 = [v9 integerValue];

  v11 = [v3 payload];
  v12 = [v11 objectForKeyedSubscript:@"transition-outgoing-item-source-time"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [v3 payload];
  v16 = [v15 objectForKeyedSubscript:@"transition-outgoing-item-target-time"];
  [v16 doubleValue];
  v18 = v17;

  v19 = [v3 payload];
  v20 = [v19 objectForKeyedSubscript:@"transition-incoming-item-source-time"];
  [v20 doubleValue];
  v22 = v21;

  v23 = [v3 payload];
  v24 = [v23 objectForKeyedSubscript:@"transition-incoming-item-target-time"];
  [v24 doubleValue];
  v26 = v25;

  if (*(a1 + 32))
  {
    if ((v10 - 1) > 2)
    {
      v27 = @"􀠊  Gapless";
    }

    else
    {
      v27 = off_1E8231CA8[v10 - 1];
    }
  }

  else
  {
    v27 = 0;
  }

  v28 = MSVLogDateFormatter();
  v29 = [v3 date];
  v30 = [v28 stringFromDate:v29];

  v31 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v32 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = [*(a1 + 40) streamID];
    v45 = 138544642;
    v46 = v30;
    v47 = 2114;
    v48 = v33;
    v49 = 1024;
    v50 = [v3 threadPriority];
    v51 = 2114;
    v52 = v31;
    v53 = 2114;
    v54 = v5;
    v55 = 2114;
    v56 = v7;
    _os_log_impl(&dword_1C5C61000, v32, OS_LOG_TYPE_INFO, "|%{public}@ %{public}@ %2i %{public}@􀯮 OVERLAP START              %{public}@ => %{public}@", &v45, 0x3Au);
  }

  v34 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v35 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    v36 = [*(a1 + 40) streamID];
    v37 = [v3 threadPriority];
    v45 = 138544386;
    v46 = v30;
    v47 = 2114;
    v48 = v36;
    v49 = 1024;
    v50 = v37;
    v51 = 2114;
    v52 = v34;
    v53 = 2114;
    v54 = v27;
    _os_log_impl(&dword_1C5C61000, v35, OS_LOG_TYPE_INFO, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ type: %{public}@", &v45, 0x30u);
  }

  v38 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v39 = [*(a1 + 40) streamID];
    v40 = [v3 threadPriority];
    v45 = 138544642;
    v46 = v30;
    v47 = 2114;
    v48 = v39;
    v49 = 1024;
    v50 = v40;
    v51 = 2114;
    v52 = v34;
    v53 = 2048;
    v54 = v18;
    v55 = 2048;
    v56 = v14;
    _os_log_impl(&dword_1C5C61000, v38, OS_LOG_TYPE_INFO, "|%{public}@ %{public}@ %2i %{public}@  │ outgoing: { targetTime: %3.2f; sourceTime: %3.2f }", &v45, 0x3Au);
  }

  v41 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    v42 = [*(a1 + 40) streamID];
    v43 = [v3 threadPriority];
    v45 = 138544642;
    v46 = v30;
    v47 = 2114;
    v48 = v42;
    v49 = 1024;
    v50 = v43;
    v51 = 2114;
    v52 = v34;
    v53 = 2048;
    v54 = v26;
    v55 = 2048;
    v56 = v22;
    _os_log_impl(&dword_1C5C61000, v41, OS_LOG_TYPE_INFO, "|%{public}@ %{public}@ %2i %{public}@  ╰ incoming: { targetTime: %3.2f; sourceTime: %3.2f }", &v45, 0x3Au);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_216(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"outgoing-item-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"incoming-item-id"];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"transition-type"];
  v10 = [v9 integerValue];

  v11 = [v3 payload];
  v12 = [v11 objectForKeyedSubscript:@"transition-outgoing-item-source-time"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [v3 payload];
  v16 = [v15 objectForKeyedSubscript:@"transition-outgoing-item-target-time"];
  [v16 doubleValue];
  v18 = v17;

  v19 = [v3 payload];
  v20 = [v19 objectForKeyedSubscript:@"transition-incoming-item-source-time"];
  [v20 doubleValue];
  v22 = v21;

  v23 = [v3 payload];
  v24 = [v23 objectForKeyedSubscript:@"transition-incoming-item-target-time"];
  [v24 doubleValue];
  v26 = v25;

  if (*(a1 + 32))
  {
    if ((v10 - 1) > 2)
    {
      v27 = @"􀠊  Gapless";
    }

    else
    {
      v27 = off_1E8231CA8[v10 - 1];
    }
  }

  else
  {
    v27 = 0;
  }

  v28 = MSVLogDateFormatter();
  v29 = [v3 date];
  v30 = [v28 stringFromDate:v29];

  v31 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v32 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = [*(a1 + 40) streamID];
    v45 = 138544642;
    v46 = v30;
    v47 = 2114;
    v48 = v33;
    v49 = 1024;
    v50 = [v3 threadPriority];
    v51 = 2114;
    v52 = v31;
    v53 = 2114;
    v54 = v5;
    v55 = 2114;
    v56 = v7;
    _os_log_impl(&dword_1C5C61000, v32, OS_LOG_TYPE_INFO, "|%{public}@ %{public}@ %2i %{public}@􀯯 OVERLAP END                %{public}@ => %{public}@", &v45, 0x3Au);
  }

  v34 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v35 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    v36 = [*(a1 + 40) streamID];
    v37 = [v3 threadPriority];
    v45 = 138544386;
    v46 = v30;
    v47 = 2114;
    v48 = v36;
    v49 = 1024;
    v50 = v37;
    v51 = 2114;
    v52 = v34;
    v53 = 2114;
    v54 = v27;
    _os_log_impl(&dword_1C5C61000, v35, OS_LOG_TYPE_INFO, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ type: %{public}@", &v45, 0x30u);
  }

  v38 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v39 = [*(a1 + 40) streamID];
    v40 = [v3 threadPriority];
    v45 = 138544642;
    v46 = v30;
    v47 = 2114;
    v48 = v39;
    v49 = 1024;
    v50 = v40;
    v51 = 2114;
    v52 = v34;
    v53 = 2048;
    v54 = v18;
    v55 = 2048;
    v56 = v14;
    _os_log_impl(&dword_1C5C61000, v38, OS_LOG_TYPE_INFO, "|%{public}@ %{public}@ %2i %{public}@  │ outgoing: { targetTime: %3.2f; sourceTime: %3.2f }", &v45, 0x3Au);
  }

  v41 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    v42 = [*(a1 + 40) streamID];
    v43 = [v3 threadPriority];
    v45 = 138544642;
    v46 = v30;
    v47 = 2114;
    v48 = v42;
    v49 = 1024;
    v50 = v43;
    v51 = 2114;
    v52 = v34;
    v53 = 2048;
    v54 = v26;
    v55 = 2048;
    v56 = v22;
    _os_log_impl(&dword_1C5C61000, v41, OS_LOG_TYPE_INFO, "|%{public}@ %{public}@ %2i %{public}@  ╰ incoming: { targetTime: %3.2f; sourceTime: %3.2f }", &v45, 0x3Au);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_217(uint64_t a1, void *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = *(a1 + 32);
  v5 = [v3 payload];
  v6 = [v5 objectForKeyedSubscript:@"resolution-type"];
  v7 = [v6 integerValue];
  if (v4)
  {
    if (v7 > 2)
    {
      v4 = @"Unknown";
    }

    else
    {
      v4 = off_1E8231CC0[v7];
    }
  }

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"error-for-resolution"];

  v10 = [v3 payload];
  v11 = [v10 objectForKeyedSubscript:@"queue-section-id"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1F454A698;
  }

  v14 = v13;

  v15 = [v3 payload];
  v16 = [v15 objectForKeyedSubscript:@"queue-item-id"];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_1F454A698;
  }

  v19 = v18;

  v20 = MSVLogDateFormatter();
  v21 = [v3 date];
  v43 = [v20 stringFromDate:v21];

  v22 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v23 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [*(a1 + 40) streamID];
    *buf = 138544898;
    v45 = v43;
    v46 = 2114;
    v47 = v24;
    v48 = 1024;
    v49 = [v3 threadPriority];
    v50 = 2114;
    v51 = v22;
    v52 = 2114;
    v53 = v14;
    v54 = 2114;
    v55 = v19;
    v56 = 2114;
    v57 = v4;
    _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀘯 ERROR RESOLUTION           %{public}@ %{public}@ %{public}@", buf, 0x44u);
  }

  v40 = v19;
  v41 = v14;

  v25 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v42 = v9;
  v26 = [v9 treeDescription];
  v27 = [v26 componentsSeparatedByString:@"\n"];

  if ([v27 count] >= 1)
  {
    for (i = 0; i < [v27 count]; ++i)
    {
      v29 = [v27 objectAtIndexedSubscript:i];
      if (i)
      {
        v30 = [v27 count] - 1;
        v31 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
        v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
        if (i == v30)
        {
          if (v32)
          {
            v33 = [*(a1 + 40) streamID];
            v34 = [v3 threadPriority];
            *buf = 138544386;
            v45 = v43;
            v46 = 2114;
            v47 = v33;
            v48 = 1024;
            v49 = v34;
            v50 = 2114;
            v51 = v25;
            v52 = 2114;
            v53 = v29;
            v35 = v31;
            v36 = "|%{public}@ %{public}@ %2i %{public}@  ╰           %{public}@";
LABEL_23:
            _os_log_impl(&dword_1C5C61000, v35, OS_LOG_TYPE_ERROR, v36, buf, 0x30u);
          }
        }

        else if (v32)
        {
          v33 = [*(a1 + 40) streamID];
          v38 = [v3 threadPriority];
          *buf = 138544386;
          v45 = v43;
          v46 = 2114;
          v47 = v33;
          v48 = 1024;
          v49 = v38;
          v50 = 2114;
          v51 = v25;
          v52 = 2114;
          v53 = v29;
          v35 = v31;
          v36 = "|%{public}@ %{public}@ %2i %{public}@  │           %{public}@";
          goto LABEL_23;
        }
      }

      else
      {
        v31 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v33 = [*(a1 + 40) streamID];
          v37 = [v3 threadPriority];
          *buf = 138544386;
          v45 = v43;
          v46 = 2114;
          v47 = v33;
          v48 = 1024;
          v49 = v37;
          v50 = 2114;
          v51 = v25;
          v52 = 2114;
          v53 = v29;
          v35 = v31;
          v36 = "|%{public}@ %{public}@ %2i %{public}@ ╲╭ error: ❌ %{public}@";
          goto LABEL_23;
        }
      }
    }
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_218(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"interrupt-name"];

  v6 = MSVLogDateFormatter();
  v7 = [v3 date];
  v8 = [v6 stringFromDate:v7];

  v9 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 40) streamID];
    v13 = 138544386;
    v14 = v8;
    v15 = 2114;
    v16 = v11;
    v17 = 1024;
    v18 = [v3 threadPriority];
    v19 = 2114;
    v20 = v9;
    v21 = 2114;
    v22 = v5;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀘰 INTERRUPT BEGIN            %{public}@", &v13, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_219(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"interrupt-name"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"interrupt-should-resume"];
  v8 = [v7 BOOLValue];

  v9 = MSVLogDateFormatter();
  v10 = [v3 date];
  v11 = [v9 stringFromDate:v10];

  v12 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 40) streamID];
    v20 = 138544386;
    v21 = v11;
    v22 = 2114;
    v23 = v14;
    v24 = 1024;
    v25 = [v3 threadPriority];
    v26 = 2114;
    v27 = v12;
    v28 = 2114;
    v29 = v5;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀘯 INTERRUPT END              %{public}@", &v20, 0x30u);
  }

  v15 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [*(a1 + 40) streamID];
    v18 = [v3 threadPriority];
    v20 = 138544386;
    v21 = v11;
    v22 = 2114;
    v23 = v17;
    v24 = 1024;
    v25 = v18;
    v26 = 2114;
    v27 = v15;
    v28 = 1024;
    LODWORD(v29) = v8;
    _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ resume: %{BOOL}u", &v20, 0x2Cu);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_220(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = MSVLogDateFormatter();
  v5 = [v3 date];
  v6 = [v4 stringFromDate:v5];

  v7 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 40) streamID];
    v11 = 138544130;
    v12 = v6;
    v13 = 2114;
    v14 = v9;
    v15 = 1024;
    v16 = [v3 threadPriority];
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀞠 POLICY BEGIN", &v11, 0x26u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_221(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = MSVLogDateFormatter();
  v5 = [v3 date];
  v6 = [v4 stringFromDate:v5];

  v7 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 40) streamID];
    v11 = 138544130;
    v12 = v6;
    v13 = 2114;
    v14 = v9;
    v15 = 1024;
    v16 = [v3 threadPriority];
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀞟 POLICY END", &v11, 0x26u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_222(uint64_t a1, void *a2)
{
  v106 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"playback-behavior-metadata"];

  v6 = [v5 objectForKeyedSubscript:@"shuffle-type"];
  v7 = [v6 integerValue];

  v8 = [v5 objectForKeyedSubscript:@"repeat-type"];
  v9 = [v8 integerValue];

  v10 = [v5 objectForKeyedSubscript:@"autoplay-mode"];
  v11 = [v10 integerValue];

  v92 = v5;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v25 = @"􀀲  n/a";
    v26 = *(a1 + 32);
    v27 = @"􀀲  n/a";
    v28 = @"􀀲  n/a";
    v29 = @"􀀲  n/a";
    v90 = @"􀀲  n/a";
    goto LABEL_23;
  }

  v94 = v3;
  v12 = [v5 objectForKeyedSubscript:@"user-transition-preference"];
  v13 = [v12 integerValue];

  v14 = [v5 objectForKeyedSubscript:@"transitions-enabled"];
  v15 = [v14 BOOLValue];

  v16 = [v5 objectForKeyedSubscript:@"transition-style"];
  v17 = [v16 integerValue];

  v18 = [v5 objectForKeyedSubscript:@"crossfade-duration"];
  [v18 floatValue];
  v20 = v19;

  v21 = [v5 objectForKeyedSubscript:@"transition-settings-source"];
  v22 = [v21 integerValue];

  v23 = *(a1 + 32);
  if (v23)
  {
    if ((v13 - 1) > 2)
    {
      v24 = @"􀁜  Unknown";
    }

    else
    {
      v24 = off_1E8231CD8[v13 - 1];
    }

    v90 = v24;
  }

  else
  {
    v90 = 0;
  }

  v30 = @"􀀲  Disabled";
  if (v15)
  {
    v30 = @"􀁢  Enabled";
  }

  if (v23)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v29 = v31;
  v32 = @"􀜍  Smart Transition";
  if (!v17)
  {
    v32 = @"􀟧  Crossfade";
  }

  if (*(a1 + 32))
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v28 = v33;
  v26 = *(a1 + 32);
  if (!v26)
  {
    v25 = 0;
    v27 = 0;
LABEL_74:
    v3 = v94;
    goto LABEL_23;
  }

  LODWORD(v34) = v20;
  v35 = [MEMORY[0x1E696AD98] numberWithFloat:v34];
  v36 = [v35 stringValue];
  v27 = [@"􁏐  " stringByAppendingString:v36];

  v26 = *(a1 + 32);
  if (!v26)
  {
    v25 = 0;
    goto LABEL_74;
  }

  v37 = v22 - 1;
  v38 = (v22 - 1) > 2;
  v3 = v94;
  if (v38)
  {
    v25 = @"􀭟  Unknown";
  }

  else
  {
    v25 = off_1E8231CF0[v37];
  }

LABEL_23:
  v91 = v25;
  if (!v26)
  {
    v48 = 0;
    v43 = 0;
    goto LABEL_71;
  }

  v39 = MPNSStringFromShuffleType();
  v40 = v39;
  if ((v7 - 1) < 2)
  {
    v41 = @"􀵊  ";
LABEL_28:
    v42 = [(__CFString *)v41 stringByAppendingString:v40];
    goto LABEL_30;
  }

  if (!v7)
  {
    v41 = @"􀵉  ";
    goto LABEL_28;
  }

  v42 = v39;
LABEL_30:
  v43 = v42;

  if (!*(a1 + 32))
  {
    v48 = 0;
    goto LABEL_71;
  }

  v44 = MPNSStringFromRepeatType();
  v45 = v44;
  switch(v9)
  {
    case 2:
      v46 = @"􀵌  ";
      goto LABEL_37;
    case 1:
      v46 = @"􀵎  ";
      goto LABEL_37;
    case 0:
      v46 = @"􀵋  ";
LABEL_37:
      v47 = [(__CFString *)v46 stringByAppendingString:v45];
      goto LABEL_39;
  }

  v47 = v44;
LABEL_39:
  v48 = v47;

  if (!*(a1 + 32))
  {
LABEL_71:
    v93 = 0;
    goto LABEL_51;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v49 = @"􀵐  ";
      v50 = @"On";
      goto LABEL_50;
    }

    if (v11 == 3)
    {
      v49 = @"􀁠  ";
      v50 = @"Unsupported";
      goto LABEL_50;
    }
  }

  else
  {
    if (!v11)
    {
      v49 = @"􀕧  ";
      v50 = @"Unknown";
      goto LABEL_50;
    }

    if (v11 == 1)
    {
      v49 = @"􀵏  ";
      v50 = @"Off";
LABEL_50:
      v93 = [(__CFString *)v49 stringByAppendingString:v50];
    }
  }

LABEL_51:
  v51 = MSVLogDateFormatter();
  v52 = [v3 date];
  v95 = [v51 stringFromDate:v52];

  v53 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v54 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 40) streamID];
    v88 = v28;
    v89 = a1;
    v55 = v87 = v29;
    v56 = [v3 threadPriority];
    [v3 payload];
    v58 = v57 = v43;
    [v58 objectForKeyedSubscript:@"session-id"];
    v60 = v59 = v48;
    *buf = 138544386;
    v97 = v95;
    v98 = 2114;
    v99 = v55;
    v100 = 1024;
    v101 = v56;
    v102 = 2114;
    v103 = v53;
    v104 = 2114;
    v105 = v60;
    _os_log_impl(&dword_1C5C61000, v54, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀵉 BEHAVIOR CHANGED           %{public}@", buf, 0x30u);

    v48 = v59;
    v43 = v57;

    v29 = v87;
    v28 = v88;
    a1 = v89;
  }

  v61 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v62 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    v63 = [*(a1 + 40) streamID];
    v64 = [v3 threadPriority];
    *buf = 138544386;
    v97 = v95;
    v98 = 2114;
    v99 = v63;
    v100 = 1024;
    v101 = v64;
    v102 = 2114;
    v103 = v61;
    v104 = 2114;
    v105 = v43;
    _os_log_impl(&dword_1C5C61000, v62, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ shuffle:                   %{public}@", buf, 0x30u);
  }

  v65 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    v66 = [*(a1 + 40) streamID];
    v67 = [v3 threadPriority];
    *buf = 138544386;
    v97 = v95;
    v98 = 2114;
    v99 = v66;
    v100 = 1024;
    v101 = v67;
    v102 = 2114;
    v103 = v61;
    v104 = 2114;
    v105 = v48;
    _os_log_impl(&dword_1C5C61000, v65, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ repeat:                    %{public}@", buf, 0x30u);
  }

  v68 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    v69 = [*(a1 + 40) streamID];
    v70 = [v3 threadPriority];
    *buf = 138544386;
    v97 = v95;
    v98 = 2114;
    v99 = v69;
    v100 = 1024;
    v101 = v70;
    v102 = 2114;
    v103 = v61;
    v104 = 2114;
    v105 = v93;
    _os_log_impl(&dword_1C5C61000, v68, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ autoplay:                  %{public}@", buf, 0x30u);
  }

  v71 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
  {
    v72 = [*(a1 + 40) streamID];
    v73 = [v3 threadPriority];
    *buf = 138544386;
    v97 = v95;
    v98 = 2114;
    v99 = v72;
    v100 = 1024;
    v101 = v73;
    v102 = 2114;
    v103 = v61;
    v104 = 2114;
    v105 = v90;
    _os_log_impl(&dword_1C5C61000, v71, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ userTransitionPreference:  %{public}@", buf, 0x30u);
  }

  v74 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
  {
    v75 = [*(a1 + 40) streamID];
    v76 = [v3 threadPriority];
    *buf = 138544386;
    v97 = v95;
    v98 = 2114;
    v99 = v75;
    v100 = 1024;
    v101 = v76;
    v102 = 2114;
    v103 = v61;
    v104 = 2114;
    v105 = v29;
    _os_log_impl(&dword_1C5C61000, v74, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ transitionsEnabled:        %{public}@", buf, 0x30u);
  }

  v77 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
  {
    v78 = [*(a1 + 40) streamID];
    v79 = [v3 threadPriority];
    *buf = 138544386;
    v97 = v95;
    v98 = 2114;
    v99 = v78;
    v100 = 1024;
    v101 = v79;
    v102 = 2114;
    v103 = v61;
    v104 = 2114;
    v105 = v28;
    _os_log_impl(&dword_1C5C61000, v77, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ transitionStyle:           %{public}@", buf, 0x30u);
  }

  v80 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
  {
    v81 = [*(a1 + 40) streamID];
    v82 = [v3 threadPriority];
    *buf = 138544386;
    v97 = v95;
    v98 = 2114;
    v99 = v81;
    v100 = 1024;
    v101 = v82;
    v102 = 2114;
    v103 = v61;
    v104 = 2114;
    v105 = v27;
    _os_log_impl(&dword_1C5C61000, v80, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ crossfadeDuration:         %{public}@", buf, 0x30u);
  }

  v83 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
  {
    v84 = [*(a1 + 40) streamID];
    v85 = [v3 threadPriority];
    *buf = 138544386;
    v97 = v95;
    v98 = 2114;
    v99 = v84;
    v100 = 1024;
    v101 = v85;
    v102 = 2114;
    v103 = v61;
    v104 = 2114;
    v105 = v91;
    _os_log_impl(&dword_1C5C61000, v83, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ transitionSource:          %{public}@", buf, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_228(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = MSVLogDateFormatter();
  v5 = [v3 date];
  v6 = [v4 stringFromDate:v5];

  v7 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 40) streamID];
    v10 = [v3 threadPriority];
    v11 = [v3 payload];
    v12 = [v11 objectForKeyedSubscript:@"session-id"];
    v14 = 138544386;
    v15 = v6;
    v16 = 2114;
    v17 = v9;
    v18 = 1024;
    v19 = v10;
    v20 = 2114;
    v21 = v7;
    v22 = 2114;
    v23 = v12;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀃯 ❗MEDIASERVICES LOST       %{public}@", &v14, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_229(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = MSVLogDateFormatter();
  v5 = [v3 date];
  v6 = [v4 stringFromDate:v5];

  v7 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 40) streamID];
    v10 = [v3 threadPriority];
    v11 = [v3 payload];
    v12 = [v11 objectForKeyedSubscript:@"session-id"];
    v14 = 138544386;
    v15 = v6;
    v16 = 2114;
    v17 = v9;
    v18 = 1024;
    v19 = v10;
    v20 = 2114;
    v21 = v7;
    v22 = 2114;
    v23 = v12;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀃮 ❕MEDIASERVICES RESET      %{public}@", &v14, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_230(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = MSVLogDateFormatter();
  v5 = [v3 date];
  v6 = [v4 stringFromDate:v5];

  v7 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 40) streamID];
    v10 = [v3 threadPriority];
    v11 = [v3 payload];
    v12 = [v11 objectForKeyedSubscript:@"session-id"];
    v14 = 138544386;
    v15 = v6;
    v16 = 2114;
    v17 = v9;
    v18 = 1024;
    v19 = v10;
    v20 = 2114;
    v21 = v7;
    v22 = 2114;
    v23 = v12;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀃮 MEDIASERVICES PURGE       %{public}@", &v14, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_231(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"route-metadata"];

  v6 = [v5 objectForKeyedSubscript:@"route-description"];
  v40 = v5;
  v7 = [v5 objectForKeyedSubscript:@"route-is-airplay"];
  v38 = [v7 BOOLValue];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"route-should-pause"];
  v39 = [v9 BOOLValue];

  v10 = MSVLogDateFormatter();
  v42 = v3;
  v11 = [v3 date];
  v41 = [v10 stringFromDate:v11];

  v12 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 40) streamID];
    v15 = [v3 threadPriority];
    v16 = [v3 payload];
    v17 = [v16 objectForKeyedSubscript:@"session-id"];
    *buf = 138544386;
    v44 = v41;
    v45 = 2114;
    v46 = v14;
    v47 = 1024;
    v48 = v15;
    v49 = 2114;
    v50 = v12;
    v51 = 2114;
    v52 = v17;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀥑 ROUTE CHANGED              %{public}@", buf, 0x30u);
  }

  v18 = a1;
  v19 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v20 = [v6 componentsSeparatedByString:@"\n"];
  if ([v20 count] >= 1)
  {
    for (i = 0; i < [v20 count]; ++i)
    {
      v22 = [v20 objectAtIndexedSubscript:i];
      if (i)
      {
        v23 = [v20 count] - 1;
        v24 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
        if (i == v23)
        {
          if (v25)
          {
            goto LABEL_12;
          }
        }

        else if (v25)
        {
LABEL_12:
          v26 = [*(v18 + 40) streamID];
          v30 = [v42 threadPriority];
          *buf = 138544386;
          v44 = v41;
          v45 = 2114;
          v46 = v26;
          v47 = 1024;
          v48 = v30;
          v49 = 2114;
          v50 = v19;
          v51 = 2114;
          v52 = v22;
          v28 = v24;
          v29 = "|%{public}@ %{public}@ %2i %{public}@  │ %{public}@";
          goto LABEL_13;
        }
      }

      else
      {
        v24 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [*(v18 + 40) streamID];
          v27 = [v42 threadPriority];
          *buf = 138544386;
          v44 = v41;
          v45 = 2114;
          v46 = v26;
          v47 = 1024;
          v48 = v27;
          v49 = 2114;
          v50 = v19;
          v51 = 2114;
          v52 = v22;
          v28 = v24;
          v29 = "|%{public}@ %{public}@ %2i %{public}@ ╲╭ %{public}@";
LABEL_13:
          _os_log_impl(&dword_1C5C61000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 0x30u);
        }
      }
    }
  }

  v31 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [*(v18 + 40) streamID];
    v33 = [v42 threadPriority];
    *buf = 138544386;
    v44 = v41;
    v45 = 2114;
    v46 = v32;
    v47 = 1024;
    v48 = v33;
    v49 = 2114;
    v50 = v19;
    v51 = 1024;
    LODWORD(v52) = v38;
    _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ isAirPlay: %{BOOL}u", buf, 0x2Cu);
  }

  v34 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [*(v18 + 40) streamID];
    v36 = [v42 threadPriority];
    *buf = 138544386;
    v44 = v41;
    v45 = 2114;
    v46 = v35;
    v47 = 1024;
    v48 = v36;
    v49 = 2114;
    v50 = v19;
    v51 = 1024;
    LODWORD(v52) = v39;
    _os_log_impl(&dword_1C5C61000, v34, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ shouldPause: %{BOOL}u", buf, 0x2Cu);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_232(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"audio-rendering-mode"];
  v6 = [v5 integerValue];

  if ((v6 - 1) > 4)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_1E8238FD0[v6 - 1];
  }

  v8 = v7;
  v9 = MSVLogDateFormatter();
  v10 = [v3 date];
  v11 = [v9 stringFromDate:v10];

  v12 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 40) streamID];
    v16 = 138544386;
    v17 = v11;
    v18 = 2114;
    v19 = v14;
    v20 = 1024;
    v21 = [v3 threadPriority];
    v22 = 2114;
    v23 = v12;
    v24 = 2114;
    v25 = v8;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀥑 RENDERING MODE CHANGED     %{public}@", &v16, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_233(uint64_t a1, void *a2, void *a3)
{
  v62[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v5];
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"time-control-status"];
  v9 = [v8 integerValue];

  v10 = [v5 payload];
  v43 = [v10 objectForKeyedSubscript:@"time-control-status-reason"];

  if (*(a1 + 32))
  {
    if ((v9 + 1) > 3)
    {
      v11 = @"Stopped";
    }

    else
    {
      v11 = off_1E8231D08[v9 + 1];
    }

    v41 = v11;
  }

  else
  {
    v41 = 0;
  }

  v62[0] = @"item-begin";
  v62[1] = @"item-end";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:{2, v41}];
  v13 = [v6 findPreviousEventWithTypes:v12 matchingPayload:0];

  v14 = [v13 payload];
  v45 = [v14 objectForKeyedSubscript:@"queue-section-id"];

  v15 = [v13 payload];
  v44 = [v15 objectForKeyedSubscript:@"queue-item-id"];

  v16 = MSVLogDateFormatter();
  v17 = [v5 date];
  v18 = [v16 stringFromDate:v17];

  v19 = [v13 type];
  if (v19 == @"item-end")
  {

    goto LABEL_12;
  }

  v20 = v19;
  v21 = [(__CFString *)v19 isEqual:@"item-end"];

  if (v21)
  {
LABEL_12:
    v23 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
    v26 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v27 = [*(a1 + 40) streamID];
    *buf = 138544130;
    v47 = v18;
    v48 = 2114;
    v49 = v27;
    v50 = 1024;
    v51 = [v5 threadPriority];
    v52 = 2114;
    v53 = v23;
    v28 = "|%{public}@ %{public}@ %2i %{public}@􁁝 TIME CONTROL CHANGED";
    v29 = v26;
    v30 = 38;
    goto LABEL_14;
  }

  if (v9 != 2)
  {
    v23 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
    v26 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v27 = [*(a1 + 40) streamID];
    *buf = 138544642;
    v47 = v18;
    v48 = 2114;
    v49 = v27;
    v50 = 1024;
    v51 = [v5 threadPriority];
    v52 = 2114;
    v53 = v23;
    v54 = 2114;
    v55 = v45;
    v56 = 2114;
    v57 = v44;
    v28 = "|%{public}@ %{public}@ %2i %{public}@􁁝 TIME CONTROL CHANGED       %{public}@ %{public}@";
    v29 = v26;
    v30 = 58;
LABEL_14:
    _os_log_impl(&dword_1C5C61000, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);

    goto LABEL_21;
  }

  v60 = @"time-control-status";
  v61 = &unk_1F4599028;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  v23 = [v6 findPreviousEventWithType:@"time-control-status-changed" matchingPayload:v22];

  if (v23)
  {
    [v5 durationSinceEvent:v23];
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v31 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [*(a1 + 40) streamID];
    *buf = 138544898;
    v47 = v18;
    v48 = 2114;
    v49 = v32;
    v50 = 1024;
    v51 = [v5 threadPriority];
    v52 = 2114;
    v53 = v26;
    v54 = 2114;
    v55 = v45;
    v56 = 2114;
    v57 = v44;
    v58 = 2048;
    v59 = v25;
    _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􁁝 TIME CONTROL CHANGED       %{public}@ %{public}@ [%.3fs]", buf, 0x44u);
  }

LABEL_21:
  v33 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v34 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [*(a1 + 40) streamID];
    v36 = [v5 threadPriority];
    *buf = 138544386;
    v47 = v18;
    v48 = 2114;
    v49 = v35;
    v50 = 1024;
    v51 = v36;
    v52 = 2114;
    v53 = v33;
    v54 = 2114;
    v55 = v42;
    _os_log_impl(&dword_1C5C61000, v34, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ status: %{public}@", buf, 0x30u);
  }

  v37 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = [*(a1 + 40) streamID];
    v39 = [v5 threadPriority];
    *buf = 138544386;
    v47 = v18;
    v48 = 2114;
    v49 = v38;
    v50 = 1024;
    v51 = v39;
    v52 = 2114;
    v53 = v33;
    v54 = 2114;
    v55 = v43;
    _os_log_impl(&dword_1C5C61000, v37, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ reason: %{public}@", buf, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_236(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"player-identifier"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"player-operation"];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"player-operation-reason"];

  v10 = MSVLogDateFormatter();
  v11 = [v3 date];
  v12 = [v10 stringFromDate:v11];

  v13 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [*(a1 + 40) streamID];
    v24 = 138544386;
    v25 = v12;
    v26 = 2114;
    v27 = v15;
    v28 = 1024;
    v29 = [v3 threadPriority];
    v30 = 2114;
    v31 = v13;
    v32 = 2114;
    v33 = v5;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀽍 PLAYER OPERATION BEGIN     %{public}@", &v24, 0x30u);
  }

  v16 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 40) streamID];
    v19 = [v3 threadPriority];
    v24 = 138544386;
    v25 = v12;
    v26 = 2114;
    v27 = v18;
    v28 = 1024;
    v29 = v19;
    v30 = 2114;
    v31 = v16;
    v32 = 2114;
    v33 = v7;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ operation: %{public}@", &v24, 0x30u);
  }

  v20 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [*(a1 + 40) streamID];
    v22 = [v3 threadPriority];
    v24 = 138544386;
    v25 = v12;
    v26 = 2114;
    v27 = v21;
    v28 = 1024;
    v29 = v22;
    v30 = 2114;
    v31 = v16;
    v32 = 2114;
    v33 = v9;
    _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ reason: %{public}@", &v24, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_237(uint64_t a1, void *a2, void *a3)
{
  v61[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"player-identifier"];

  v9 = [v5 payload];
  v10 = [v9 objectForKeyedSubscript:@"player-items"];

  v11 = [v5 payload];
  v12 = [v11 objectForKeyedSubscript:@"player-operation"];

  v60 = @"player-identifier";
  v61[0] = v8;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&v60 count:1];
  v14 = [v6 findPreviousEventWithType:@"player-operation-begin" matchingPayload:v13];

  [v5 durationSinceEvent:v14];
  v16 = v15;
  v17 = MSVLogDateFormatter();
  v18 = [v5 date];
  v47 = [v17 stringFromDate:v18];

  v19 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v20 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [*(a1 + 40) streamID];
    *buf = 138544642;
    v49 = v47;
    v50 = 2114;
    v51 = v21;
    v52 = 1024;
    v53 = [v5 threadPriority];
    v54 = 2114;
    v55 = v19;
    v56 = 2114;
    v57 = v8;
    v58 = 2048;
    v59 = v16;
    _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀽎 PLAYER OPERATION END       %{public}@ [%.3fs]", buf, 0x3Au);
  }

  v46 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v22 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [*(a1 + 40) streamID];
    v24 = [v5 threadPriority];
    *buf = 138544386;
    v49 = v47;
    v50 = 2114;
    v51 = v23;
    v52 = 1024;
    v53 = v24;
    v54 = 2114;
    v55 = v46;
    v56 = 2114;
    v57 = v12;
    _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ operation: %{public}@", buf, 0x30u);
  }

  if (v10)
  {
    v25 = [v10 length];
    v26 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (v25)
    {
      v43 = v14;
      v45 = v6;
      if (v27)
      {
        v28 = [*(a1 + 40) streamID];
        v29 = [v5 threadPriority];
        *buf = 138544130;
        v49 = v47;
        v50 = 2114;
        v51 = v28;
        v52 = 1024;
        v53 = v29;
        v54 = 2114;
        v55 = v46;
        _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ items: [", buf, 0x26u);
      }

      v44 = v10;
      v30 = [v10 componentsSeparatedByString:@"\n"];
      if ([v30 count] >= 1)
      {
        for (i = 0; i < [v30 count]; ++i)
        {
          v32 = [v30 objectAtIndexedSubscript:i];
          if (i)
          {
            v33 = [v30 count] - 1;
            v34 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
            v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
            if (i == v33)
            {
              if (v35)
              {
                goto LABEL_18;
              }
            }

            else if (v35)
            {
LABEL_18:
              v36 = [*(a1 + 40) streamID];
              v37 = [v5 threadPriority];
              *buf = 138544386;
              v49 = v47;
              v50 = 2114;
              v51 = v36;
              v52 = 1024;
              v53 = v37;
              v54 = 2114;
              v55 = v46;
              v56 = 2114;
              v57 = v32;
              _os_log_impl(&dword_1C5C61000, v34, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@       %{public}@", buf, 0x30u);
            }
          }

          else
          {
            v34 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_18;
            }
          }
        }
      }

      v26 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [*(a1 + 40) streamID];
        v39 = [v5 threadPriority];
        *buf = 138544130;
        v49 = v47;
        v50 = 2114;
        v51 = v38;
        v52 = 1024;
        v53 = v39;
        v54 = 2114;
        v55 = v46;
        _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@    ]", buf, 0x26u);
      }

      v6 = v45;
      v10 = v44;
      v14 = v43;
    }

    else if (v27)
    {
      v40 = [*(a1 + 40) streamID];
      v41 = [v5 threadPriority];
      *buf = 138544130;
      v49 = v47;
      v50 = 2114;
      v51 = v40;
      v52 = 1024;
      v53 = v41;
      v54 = 2114;
      v55 = v46;
      _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ items: []", buf, 0x26u);
    }
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_238(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"reload-current-item-reason"];
  v6 = [v5 integerValue];

  v7 = @"Unknown";
  if (v6 == 1)
  {
    v7 = @"ProcessingChanged";
  }

  if (!v6)
  {
    v7 = @"AudioFormatChanged";
  }

  v8 = v7;
  v9 = MSVLogDateFormatter();
  v10 = [v3 date];
  v11 = [v9 stringFromDate:v10];

  v12 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 40) streamID];
    v16 = 138544386;
    v17 = v11;
    v18 = 2114;
    v19 = v14;
    v20 = 1024;
    v21 = [v3 threadPriority];
    v22 = 2114;
    v23 = v12;
    v24 = 2114;
    v25 = v8;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􁹠 RELOAD CURRENT ITEM BEGIN  %{public}@", &v16, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_239(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"reload-current-item-error"];

  v9 = [v6 findPreviousEventWithType:@"reload-current-item-begin" matchingPayload:0];
  if (v9)
  {
    [v5 durationSinceEvent:v9];
    v11 = v10;
    v12 = [v9 payload];
    v13 = [v12 objectForKeyedSubscript:@"reload-current-item-reason"];
    v14 = [v13 integerValue];

    v15 = @"Unknown";
    if (v14 == 1)
    {
      v15 = @"ProcessingChanged";
    }

    if (!v14)
    {
      v15 = @"AudioFormatChanged";
    }

    v16 = v15;
    v17 = MSVLogDateFormatter();
    v18 = [v5 date];
    v40 = [v17 stringFromDate:v18];

    v19 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
    v20 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [*(a1 + 40) streamID];
      *buf = 138544642;
      v42 = v40;
      v43 = 2114;
      v44 = v21;
      v45 = 1024;
      v46 = [v5 threadPriority];
      v47 = 2114;
      v48 = v19;
      v49 = 2114;
      v50 = v16;
      v51 = 2048;
      v52 = v11;
      _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􁹠 RELOAD CURRENT ITEM END    %{public}@ [%.3fs]", buf, 0x3Au);
    }

    if (v8)
    {
      v37 = v16;
      v38 = v9;
      v39 = v6;
      v22 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
      v23 = [v8 treeDescription];
      v24 = [v23 componentsSeparatedByString:@"\n"];

      if ([v24 count] >= 1)
      {
        for (i = 0; i < [v24 count]; ++i)
        {
          v26 = [v24 objectAtIndexedSubscript:{i, v37, v38}];
          if (i)
          {
            v27 = [v24 count] - 1;
            v28 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
            v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
            if (i == v27)
            {
              if (v29)
              {
                v30 = [*(a1 + 40) streamID];
                v31 = [v5 threadPriority];
                *buf = 138544386;
                v42 = v40;
                v43 = 2114;
                v44 = v30;
                v45 = 1024;
                v46 = v31;
                v47 = 2114;
                v48 = v22;
                v49 = 2114;
                v50 = v26;
                v32 = v28;
                v33 = "|%{public}@ %{public}@ %2i %{public}@  ╰           %{public}@";
LABEL_19:
                _os_log_impl(&dword_1C5C61000, v32, OS_LOG_TYPE_ERROR, v33, buf, 0x30u);
              }
            }

            else if (v29)
            {
              v30 = [*(a1 + 40) streamID];
              v35 = [v5 threadPriority];
              *buf = 138544386;
              v42 = v40;
              v43 = 2114;
              v44 = v30;
              v45 = 1024;
              v46 = v35;
              v47 = 2114;
              v48 = v22;
              v49 = 2114;
              v50 = v26;
              v32 = v28;
              v33 = "|%{public}@ %{public}@ %2i %{public}@  │           %{public}@";
              goto LABEL_19;
            }
          }

          else
          {
            v28 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              v30 = [*(a1 + 40) streamID];
              v34 = [v5 threadPriority];
              *buf = 138544386;
              v42 = v40;
              v43 = 2114;
              v44 = v30;
              v45 = 1024;
              v46 = v34;
              v47 = 2114;
              v48 = v22;
              v49 = 2114;
              v50 = v26;
              v32 = v28;
              v33 = "|%{public}@ %{public}@ %2i %{public}@ ╲╭ error: ❌ %{public}@";
              goto LABEL_19;
            }
          }
        }
      }

      v6 = v39;
      v16 = v37;
      v9 = v38;
    }
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_240(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"session-activation-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"session-activation-command-id"];

  v8 = MSVLogDateFormatter();
  v9 = [v3 date];
  v10 = [v8 stringFromDate:v9];

  v11 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 40) streamID];
    v19 = 138544386;
    v20 = v10;
    v21 = 2114;
    v22 = v13;
    v23 = 1024;
    v24 = [v3 threadPriority];
    v25 = 2114;
    v26 = v11;
    v27 = 2114;
    v28 = v5;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀷃 SESSION ACTIVATION BEGIN   %{public}@", &v19, 0x30u);
  }

  v14 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v15 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [*(a1 + 40) streamID];
    v17 = [v3 threadPriority];
    v19 = 138544386;
    v20 = v10;
    v21 = 2114;
    v22 = v16;
    v23 = 1024;
    v24 = v17;
    v25 = 2114;
    v26 = v14;
    v27 = 2114;
    v28 = v7;
    _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ commandID: %{public}@", &v19, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_241(uint64_t a1, void *a2, void *a3)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"session-activation-error"];

  v9 = [v5 payload];
  v10 = [v9 objectForKeyedSubscript:@"session-activation-id"];

  v52 = @"session-activation-id";
  v53[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
  v12 = [v6 findPreviousEventWithType:@"session-activation-begin" matchingPayload:v11];

  [v5 durationSinceEvent:v12];
  v14 = v13;
  v15 = MSVLogDateFormatter();
  v16 = [v5 date];
  v39 = [v15 stringFromDate:v16];

  v38 = a1;
  v17 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v18 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [*(a1 + 40) streamID];
    *buf = 138544642;
    v41 = v39;
    v42 = 2114;
    v43 = v19;
    v44 = 1024;
    v45 = [v5 threadPriority];
    v46 = 2114;
    v47 = v17;
    v48 = 2114;
    v49 = v10;
    v50 = 2048;
    v51 = v14;
    _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀷄 SESSION ACTIVATION END     %{public}@ [%.3fs]", buf, 0x3Au);
  }

  if (v8)
  {
    v35 = v12;
    v36 = v10;
    v37 = v6;
    v20 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
    v21 = [v8 treeDescription];
    v22 = [v21 componentsSeparatedByString:@"\n"];

    if ([v22 count] >= 1)
    {
      for (i = 0; i < [v22 count]; ++i)
      {
        v24 = [v22 objectAtIndexedSubscript:{i, v35, v36}];
        if (i)
        {
          v25 = [v22 count] - 1;
          v26 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
          v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
          if (i == v25)
          {
            if (v27)
            {
              v28 = [*(v38 + 40) streamID];
              v29 = [v5 threadPriority];
              *buf = 138544386;
              v41 = v39;
              v42 = 2114;
              v43 = v28;
              v44 = 1024;
              v45 = v29;
              v46 = 2114;
              v47 = v20;
              v48 = 2114;
              v49 = v24;
              v30 = v26;
              v31 = "|%{public}@ %{public}@ %2i %{public}@  ╰           %{public}@";
LABEL_14:
              _os_log_impl(&dword_1C5C61000, v30, OS_LOG_TYPE_ERROR, v31, buf, 0x30u);
            }
          }

          else if (v27)
          {
            v28 = [*(v38 + 40) streamID];
            v33 = [v5 threadPriority];
            *buf = 138544386;
            v41 = v39;
            v42 = 2114;
            v43 = v28;
            v44 = 1024;
            v45 = v33;
            v46 = 2114;
            v47 = v20;
            v48 = 2114;
            v49 = v24;
            v30 = v26;
            v31 = "|%{public}@ %{public}@ %2i %{public}@  │           %{public}@";
            goto LABEL_14;
          }
        }

        else
        {
          v26 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v28 = [*(v38 + 40) streamID];
            v32 = [v5 threadPriority];
            *buf = 138544386;
            v41 = v39;
            v42 = 2114;
            v43 = v28;
            v44 = 1024;
            v45 = v32;
            v46 = 2114;
            v47 = v20;
            v48 = 2114;
            v49 = v24;
            v30 = v26;
            v31 = "|%{public}@ %{public}@ %2i %{public}@ ╲╭ error: ❌ %{public}@";
            goto LABEL_14;
          }
        }
      }
    }

    v6 = v37;
    v12 = v35;
    v10 = v36;
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_242(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"session-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"shared-session-id"];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"shared-session-type"];
  v10 = [v9 integerValue];

  v11 = [v3 payload];
  v12 = [v11 objectForKeyedSubscript:@"shared-session-event-reason"];

  v13 = [v3 payload];
  v14 = [v13 objectForKeyedSubscript:@"shared-session-is-reconnect"];
  LODWORD(v11) = [v14 BOOLValue];

  v38 = v11;
  v37 = v7;
  if (*(a1 + 32))
  {
    switch(v10)
    {
      case 0:
        v16 = @"Unknown";
        v15 = @"􀓔";
        goto LABEL_13;
      case 1:
        v15 = @"􁐅";
        goto LABEL_11;
      case 2:
        v15 = @"􁓵";
LABEL_12:
        v16 = @"GroupSession";
        goto LABEL_13;
    }

    v15 = @"􀿪";
  }

  else
  {
    v15 = 0;
    if (!v10)
    {
      v16 = @"Unknown";
      goto LABEL_13;
    }
  }

  if (v10 == 2)
  {
    goto LABEL_12;
  }

  if (v10 == 1)
  {
LABEL_11:
    v16 = @"LiveLink";
    goto LABEL_13;
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedSharedSessionType-%ld", v10];
LABEL_13:
  v17 = MSVLogDateFormatter();
  v18 = [v3 date];
  v19 = [v17 stringFromDate:v18];

  v20 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v21 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [*(a1 + 40) streamID];
    *buf = 138544386;
    v40 = v19;
    v41 = 2114;
    v42 = v22;
    v43 = 1024;
    v44 = [v3 threadPriority];
    v45 = 2114;
    v46 = v20;
    v47 = 2114;
    v48 = v5;
    _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􁃑 SHARED SESSION BEGIN       %{public}@", buf, 0x30u);
  }

  v23 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v24 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [*(a1 + 40) streamID];
    v26 = [v3 threadPriority];
    *buf = 138544642;
    v40 = v19;
    v41 = 2114;
    v42 = v25;
    v43 = 1024;
    v44 = v26;
    v45 = 2114;
    v46 = v23;
    v47 = 2114;
    v48 = v15;
    v49 = 2114;
    v50 = v16;
    _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ type: %{public}@  %{public}@", buf, 0x3Au);
  }

  if (v5 != v37 && ([(__CFString *)v5 isEqual:v37]& 1) == 0)
  {
    v27 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [*(a1 + 40) streamID];
      v29 = [v3 threadPriority];
      *buf = 138544386;
      v40 = v19;
      v41 = 2114;
      v42 = v28;
      v43 = 1024;
      v44 = v29;
      v45 = 2114;
      v46 = v23;
      v47 = 2114;
      v48 = v37;
      _os_log_impl(&dword_1C5C61000, v27, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ sharedSessionID: %{public}@", buf, 0x30u);
    }
  }

  v30 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [*(a1 + 40) streamID];
    v32 = [v3 threadPriority];
    *buf = 138544386;
    v40 = v19;
    v41 = 2114;
    v42 = v31;
    v43 = 1024;
    v44 = v32;
    v45 = 2114;
    v46 = v23;
    v47 = 2114;
    v48 = v12;
    _os_log_impl(&dword_1C5C61000, v30, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ reason: %{public}@", buf, 0x30u);
  }

  if (v38)
  {
    v33 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [*(a1 + 40) streamID];
      v35 = [v3 threadPriority];
      *buf = 138544386;
      v40 = v19;
      v41 = 2114;
      v42 = v34;
      v43 = 1024;
      v44 = v35;
      v45 = 2114;
      v46 = v23;
      v47 = 1024;
      LODWORD(v48) = 1;
      _os_log_impl(&dword_1C5C61000, v33, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ isReconnect: %{BOOL}u", buf, 0x2Cu);
    }
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_243(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"session-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"shared-session-event-reason"];

  v8 = MSVLogDateFormatter();
  v9 = [v3 date];
  v10 = [v8 stringFromDate:v9];

  v11 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 40) streamID];
    v19 = 138544386;
    v20 = v10;
    v21 = 2114;
    v22 = v13;
    v23 = 1024;
    v24 = [v3 threadPriority];
    v25 = 2114;
    v26 = v11;
    v27 = 2114;
    v28 = v5;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􁃑 SHARED SESSION END         %{public}@", &v19, 0x30u);
  }

  v14 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v15 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [*(a1 + 40) streamID];
    v17 = [v3 threadPriority];
    v19 = 138544386;
    v20 = v10;
    v21 = 2114;
    v22 = v16;
    v23 = 1024;
    v24 = v17;
    v25 = 2114;
    v26 = v14;
    v27 = 2114;
    v28 = v7;
    _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ reason: %{public}@", &v19, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_244(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"shared-session-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"shared-session-event-route-type"];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"participants"];

  v10 = MSVLogDateFormatter();
  v38 = v3;
  v11 = [v3 date];
  v37 = [v10 stringFromDate:v11];

  v12 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 40) streamID];
    *buf = 138544386;
    v46 = v37;
    v47 = 2114;
    v48 = v14;
    v49 = 1024;
    v50 = [v38 threadPriority];
    v51 = 2114;
    v52 = v12;
    v53 = 2114;
    v54 = v5;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀠃 PARTICIPANTS CHANGED       %{public}@", buf, 0x30u);
  }

  v35 = v5;

  v36 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v15 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [*(a1 + 40) streamID];
    v17 = [v38 threadPriority];
    v18 = [v9 count];
    *buf = 138544386;
    v46 = v37;
    v47 = 2114;
    v48 = v16;
    v49 = 1024;
    v50 = v17;
    v51 = 2114;
    v52 = v36;
    v53 = 2048;
    v54 = v18;
    _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ participants.count: %ld", buf, 0x30u);
  }

  if (v7)
  {
    v19 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [*(a1 + 40) streamID];
      v21 = [v38 threadPriority];
      [v7 intValue];
      v22 = MRGroupSessionRouteTypeDescription();
      *buf = 138544386;
      v46 = v37;
      v47 = 2114;
      v48 = v20;
      v49 = 1024;
      v50 = v21;
      v51 = 2114;
      v52 = v36;
      v53 = 2114;
      v54 = v22;
      _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ routeType: %{public}@", buf, 0x30u);
    }
  }

  v34 = v7;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v9;
  v23 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v41;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v41 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v40 + 1) + 8 * i);
        v28 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          [*(a1 + 40) streamID];
          v30 = v29 = a1;
          v31 = [v38 threadPriority];
          v32 = [(MPCSharedSessionParticipant *)v27 humanDescription];
          *buf = 138544386;
          v46 = v37;
          v47 = 2114;
          v48 = v30;
          v49 = 1024;
          v50 = v31;
          v51 = 2114;
          v52 = v36;
          v53 = 2114;
          v54 = v32;
          _os_log_impl(&dword_1C5C61000, v28, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ participant: [ %{public}@ ]", buf, 0x30u);

          a1 = v29;
        }
      }

      v24 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v24);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_245(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"shared-session-id"];

  v6 = MSVLogDateFormatter();
  v7 = [v3 date];
  v8 = [v6 stringFromDate:v7];

  v9 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 40) streamID];
    v20 = 138544386;
    v21 = v8;
    v22 = 2114;
    v23 = v11;
    v24 = 1024;
    v25 = [v3 threadPriority];
    v26 = 2114;
    v27 = v9;
    v28 = 2114;
    v29 = v5;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀖊 SHARED SESSION SYNC BEGIN  %{public}@", &v20, 0x30u);
  }

  v12 = [v3 payload];
  v13 = [v12 objectForKeyedSubscript:@"originating-participant"];

  if (v13)
  {
    v14 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
    v15 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [*(a1 + 40) streamID];
      v17 = [v3 threadPriority];
      v18 = [(MPCSharedSessionParticipant *)v13 humanDescription];
      v20 = 138544386;
      v21 = v8;
      v22 = 2114;
      v23 = v16;
      v24 = 1024;
      v25 = v17;
      v26 = 2114;
      v27 = v14;
      v28 = 2114;
      v29 = v18;
      _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ participant: [ %{public}@ ]", &v20, 0x30u);
    }
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_246(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"shared-session-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"shared-sync-error"];

  v8 = MSVLogDateFormatter();
  v9 = [v3 date];
  v30 = [v8 stringFromDate:v9];

  v10 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 40) streamID];
    *buf = 138544386;
    v32 = v30;
    v33 = 2114;
    v34 = v12;
    v35 = 1024;
    v36 = [v3 threadPriority];
    v37 = 2114;
    v38 = v10;
    v39 = 2114;
    v40 = v5;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀖋 SHARED SESSION SYNC END    %{public}@", buf, 0x30u);
  }

  if (v7)
  {
    v29 = v5;
    v13 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
    v28 = v7;
    v14 = [v7 treeDescription];
    v15 = [v14 componentsSeparatedByString:@"\n"];

    if ([v15 count] >= 1)
    {
      for (i = 0; i < [v15 count]; ++i)
      {
        v17 = [v15 objectAtIndexedSubscript:i];
        if (i)
        {
          v18 = [v15 count] - 1;
          v19 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
          v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
          if (i == v18)
          {
            if (v20)
            {
              v21 = [*(a1 + 40) streamID];
              v22 = [v3 threadPriority];
              *buf = 138544386;
              v32 = v30;
              v33 = 2114;
              v34 = v21;
              v35 = 1024;
              v36 = v22;
              v37 = 2114;
              v38 = v13;
              v39 = 2114;
              v40 = v17;
              v23 = v19;
              v24 = "|%{public}@ %{public}@ %2i %{public}@  ╰           %{public}@";
LABEL_14:
              _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0x30u);
            }
          }

          else if (v20)
          {
            v21 = [*(a1 + 40) streamID];
            v26 = [v3 threadPriority];
            *buf = 138544386;
            v32 = v30;
            v33 = 2114;
            v34 = v21;
            v35 = 1024;
            v36 = v26;
            v37 = 2114;
            v38 = v13;
            v39 = 2114;
            v40 = v17;
            v23 = v19;
            v24 = "|%{public}@ %{public}@ %2i %{public}@  │           %{public}@";
            goto LABEL_14;
          }
        }

        else
        {
          v19 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v21 = [*(a1 + 40) streamID];
            v25 = [v3 threadPriority];
            *buf = 138544386;
            v32 = v30;
            v33 = 2114;
            v34 = v21;
            v35 = 1024;
            v36 = v25;
            v37 = 2114;
            v38 = v13;
            v39 = 2114;
            v40 = v17;
            v23 = v19;
            v24 = "|%{public}@ %{public}@ %2i %{public}@ ╲╭ error: ❌ %{public}@";
            goto LABEL_14;
          }
        }
      }
    }

    v7 = v28;
    v5 = v29;
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_247(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"queue-section-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"queue-item-id"];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"item-start-position"];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v3 payload];
  v13 = [v12 objectForKeyedSubscript:@"supports-vocal-attenuation"];
  v42 = [v13 BOOLValue];

  v14 = [v3 payload];
  v15 = [v14 objectForKeyedSubscript:@"vocal-attenuation-available"];
  v41 = [v15 BOOLValue];

  v16 = [v3 payload];
  v17 = [v16 objectForKeyedSubscript:@"vocal-attenuation-enabled"];
  v18 = [v17 BOOLValue];

  v19 = [v3 payload];
  v20 = [v19 objectForKeyedSubscript:@"vocal-attenuation-configured"];
  v21 = [v20 BOOLValue];

  v22 = [v3 payload];
  v23 = [v22 objectForKeyedSubscript:@"vocal-attenuation-processing-delay"];
  [v23 doubleValue];
  v25 = v24;

  v26 = MSVLogDateFormatter();
  v27 = [v3 date];
  v28 = [v26 stringFromDate:v27];

  v29 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v30 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [*(a1 + 40) streamID];
    *buf = 138544642;
    v44 = v28;
    v45 = 2114;
    v46 = v31;
    v47 = 1024;
    v48 = [v3 threadPriority];
    v49 = 2114;
    v50 = v29;
    v51 = 2114;
    *v52 = v5;
    *&v52[8] = 2114;
    v53 = v7;
    _os_log_impl(&dword_1C5C61000, v30, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@𝄢 ITEM VOCAL CHANGED         %{public}@ %{public}@", buf, 0x3Au);
  }

  v32 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v33 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = [*(a1 + 40) streamID];
    v35 = [v3 threadPriority];
    *buf = 138544386;
    v44 = v28;
    v45 = 2114;
    v46 = v34;
    v47 = 1024;
    v48 = v35;
    v49 = 2114;
    v50 = v32;
    v51 = 2048;
    *v52 = v11;
    _os_log_impl(&dword_1C5C61000, v33, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ start: %0.2f", buf, 0x30u);
  }

  v36 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v37 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = [*(a1 + 40) streamID];
    v39 = [v3 threadPriority];
    *buf = 138545410;
    v44 = v28;
    v45 = 2114;
    v46 = v38;
    v47 = 1024;
    v48 = v39;
    v49 = 2114;
    v50 = v36;
    v51 = 1024;
    *v52 = v42;
    *&v52[4] = 1024;
    *&v52[6] = v21;
    LOWORD(v53) = 1024;
    *(&v53 + 2) = v41;
    HIWORD(v53) = 1024;
    v54 = v18;
    v55 = 2048;
    v56 = v25;
    _os_log_impl(&dword_1C5C61000, v37, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ vocal control supported:%{BOOL}u configured:%{BOOL}u available:%{BOOL}u enabled:%{BOOL}u delay:%.0fms", buf, 0x48u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_248(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"vocal-attenuation-statistics-mean"];
  [v5 floatValue];
  v7 = v6;

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"vocal-attenuation-statistics-max"];
  [v9 floatValue];
  v11 = v10;

  v12 = [v3 payload];
  v13 = [v12 objectForKeyedSubscript:@"vocal-attenuation-statistics-stdev"];
  [v13 floatValue];
  v15 = v14;

  v16 = [v3 payload];
  v17 = [v16 objectForKeyedSubscript:@"vocal-attenuation-statistics-glitches"];
  *&v18 = COERCE_DOUBLE([v17 integerValue]);

  v19 = [v3 payload];
  v20 = [v19 objectForKeyedSubscript:@"vocal-attenuation-statistics-samples"];
  *&v21 = COERCE_DOUBLE([v20 integerValue]);

  v22 = [v3 payload];
  v23 = [v22 objectForKeyedSubscript:@"vocal-attenuation-statistics-thermal"];
  *&v24 = COERCE_DOUBLE([v23 integerValue]);

  v25 = MSVLogDateFormatter();
  v26 = [v3 date];
  v27 = [v25 stringFromDate:v26];

  v28 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v29 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [*(a1 + 40) streamID];
    v40 = 138544130;
    v41 = v27;
    v42 = 2114;
    v43 = v30;
    v44 = 1024;
    v45 = [v3 threadPriority];
    v46 = 2114;
    v47 = v28;
    _os_log_impl(&dword_1C5C61000, v29, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀣉 VOCAL STATS", &v40, 0x26u);
  }

  v31 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v32 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [*(a1 + 40) streamID];
    v34 = [v3 threadPriority];
    v40 = 138544898;
    v41 = v27;
    v42 = 2114;
    v43 = v33;
    v44 = 1024;
    v45 = v34;
    v46 = 2114;
    v47 = v31;
    v48 = 2048;
    v49 = *&v21;
    v50 = 2048;
    v51 = *&v18;
    v52 = 2048;
    v53 = *&v24;
    _os_log_impl(&dword_1C5C61000, v32, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ samples: %ld; glitches: %ld; thermalLevel: %ld", &v40, 0x44u);
  }

  v35 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v36 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [*(a1 + 40) streamID];
    v38 = [v3 threadPriority];
    v40 = 138544898;
    v41 = v27;
    v42 = 2114;
    v43 = v37;
    v44 = 1024;
    v45 = v38;
    v46 = 2114;
    v47 = v35;
    v48 = 2048;
    v49 = v7;
    v50 = 2048;
    v51 = v11;
    v52 = 2048;
    v53 = v15;
    _os_log_impl(&dword_1C5C61000, v36, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ mean: %0.1fms; max: %0.1fms; std: %0.1fms", &v40, 0x44u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_249(uint64_t a1, void *a2)
{
  v118 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"perf-metrics"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"queue-section-id"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1F454A698;
  }

  v71 = v9;

  v10 = [v3 payload];
  v11 = [v10 objectForKeyedSubscript:@"queue-item-id"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1F454A698;
  }

  v70 = v13;

  v14 = MSVLogDateFormatter();
  v85 = v3;
  v15 = [v3 date];
  v84 = [v14 stringFromDate:v15];

  v16 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 40) streamID];
    *buf = 138544642;
    v103 = v84;
    v104 = 2114;
    v105 = v18;
    v106 = 1024;
    v107 = [v85 threadPriority];
    v108 = 2114;
    v109 = v16;
    v110 = 2114;
    v111 = *&v71;
    v112 = 2114;
    v113 = v70;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀍾 PERFORMANCE REPORT         %{public}@ %{public}@", buf, 0x3Au);
  }

  v83 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v69 = v5;
  obj = [v5 objectForKeyedSubscript:@"metrics"];
  v74 = [obj countByEnumeratingWithState:&v97 objects:v117 count:16];
  if (v74)
  {
    v19 = "com.apple.amp.mediaplaybackcore";
    v20 = "PlaybackEvents";
    v73 = *v98;
    do
    {
      v21 = 0;
      do
      {
        if (*v98 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v75 = v21;
        v22 = *(*(&v97 + 1) + 8 * v21);
        v23 = os_log_create(v19, v20);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [*(a1 + 40) streamID];
          v86 = [v85 threadPriority];
          v25 = [v22 objectForKeyedSubscript:@"name"];
          v26 = [v22 objectForKeyedSubscript:@"tags"];
          v27 = [v26 componentsJoinedByString:{@", "}];
          *buf = 138544642;
          v103 = v84;
          v104 = 2114;
          v105 = v24;
          v106 = 1024;
          v107 = v86;
          v108 = 2114;
          v109 = v83;
          v110 = 2114;
          v111 = *&v25;
          v112 = 2112;
          v113 = v27;
          _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ metric: %{public}@ (%@)", buf, 0x3Au);
        }

        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v76 = [v22 objectForKeyedSubscript:@"segments"];
        v78 = [v76 countByEnumeratingWithState:&v93 objects:v116 count:16];
        if (v78)
        {
          v77 = *v94;
          v28 = 0.0;
          do
          {
            for (i = 0; i != v78; ++i)
            {
              if (*v94 != v77)
              {
                objc_enumerationMutation(v76);
              }

              v30 = *(*(&v93 + 1) + 8 * i);
              v31 = [v30 objectForKeyedSubscript:@"duration"];
              [v31 doubleValue];
              v33 = v32;

              v34 = os_log_create(v19, v20);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                v35 = [*(a1 + 40) streamID];
                v87 = [v85 threadPriority];
                v36 = [v30 objectForKeyedSubscript:@"component"];
                v37 = [v30 objectForKeyedSubscript:@"subcomponent"];
                *buf = 138544898;
                v103 = v84;
                v104 = 2114;
                v105 = v35;
                v106 = 1024;
                v107 = v87;
                v108 = 2114;
                v109 = v83;
                v110 = 2114;
                v111 = *&v36;
                v112 = 2114;
                v113 = v37;
                v114 = 2048;
                v115 = v33;
                _os_log_impl(&dword_1C5C61000, v34, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ├╴ %{public}@: %{public}-25@ [%0.3f]", buf, 0x44u);
              }

              v38 = [v30 objectForKeyedSubscript:@"complexities"];
              v39 = [v30 objectForKeyedSubscript:@"optimizations"];
              v40 = [v30 objectForKeyedSubscript:@"steps"];
              if ([v38 count] || objc_msgSend(v39, "count") || objc_msgSend(v40, "count"))
              {
                v81 = i;
                v82 = v39;
                v41 = os_log_create(v19, v20);
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  v42 = [*(a1 + 40) streamID];
                  v43 = v40;
                  v44 = [v85 threadPriority];
                  v45 = [v38 msv_compactDescription];
                  *buf = 138544386;
                  v103 = v84;
                  v104 = 2114;
                  v105 = v42;
                  v106 = 1024;
                  v107 = v44;
                  v40 = v43;
                  v108 = 2114;
                  v109 = v83;
                  v110 = 2114;
                  v111 = *&v45;
                  _os_log_impl(&dword_1C5C61000, v41, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │  ╲╭ complexities: [%{public}@]", buf, 0x30u);
                }

                v80 = v38;

                v91 = 0u;
                v92 = 0u;
                v89 = 0u;
                v90 = 0u;
                v79 = v40;
                v88 = v40;
                v46 = [v88 countByEnumeratingWithState:&v89 objects:v101 count:16];
                if (v46)
                {
                  v47 = v46;
                  v48 = *v90;
                  do
                  {
                    for (j = 0; j != v47; ++j)
                    {
                      if (*v90 != v48)
                      {
                        objc_enumerationMutation(v88);
                      }

                      v50 = *(*(&v89 + 1) + 8 * j);
                      v51 = [v50 objectForKeyedSubscript:@"duration"];
                      [v51 doubleValue];
                      v53 = v52;

                      v54 = os_log_create(v19, v20);
                      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                      {
                        v55 = [*(a1 + 40) streamID];
                        v56 = v20;
                        v57 = v19;
                        v58 = a1;
                        v59 = [v85 threadPriority];
                        v60 = [v50 objectForKeyedSubscript:@"name"];
                        *buf = 138544642;
                        v103 = v84;
                        v104 = 2114;
                        v105 = v55;
                        v106 = 1024;
                        v107 = v59;
                        a1 = v58;
                        v19 = v57;
                        v20 = v56;
                        v108 = 2114;
                        v109 = v83;
                        v110 = 2114;
                        v111 = *&v60;
                        v112 = 2048;
                        v113 = v53;
                        _os_log_impl(&dword_1C5C61000, v54, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │   │ step: %{public}-28@ [%0.3f]", buf, 0x3Au);
                      }
                    }

                    v47 = [v88 countByEnumeratingWithState:&v89 objects:v101 count:16];
                  }

                  while (v47);
                }

                v61 = os_log_create(v19, v20);
                if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                {
                  v62 = [*(a1 + 40) streamID];
                  v63 = [v85 threadPriority];
                  v64 = [v82 msv_compactDescription];
                  *buf = 138544386;
                  v103 = v84;
                  v104 = 2114;
                  v105 = v62;
                  v106 = 1024;
                  v107 = v63;
                  v108 = 2114;
                  v109 = v83;
                  v110 = 2114;
                  v111 = *&v64;
                  _os_log_impl(&dword_1C5C61000, v61, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │   ╰ optimizations: %{public}@", buf, 0x30u);
                }

                v38 = v80;
                i = v81;
                v39 = v82;
                v40 = v79;
              }

              v28 = v28 + v33;
            }

            v78 = [v76 countByEnumeratingWithState:&v93 objects:v116 count:16];
          }

          while (v78);
        }

        else
        {
          v28 = 0.0;
        }

        v65 = os_log_create(v19, v20);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          v66 = [*(a1 + 40) streamID];
          v67 = [v85 threadPriority];
          *buf = 138544386;
          v103 = v84;
          v104 = 2114;
          v105 = v66;
          v106 = 1024;
          v107 = v67;
          v108 = 2114;
          v109 = v83;
          v110 = 2048;
          v111 = v28;
          _os_log_impl(&dword_1C5C61000, v65, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ totalTime: %0.3f", buf, 0x30u);
        }

        v21 = v75 + 1;
      }

      while (v75 + 1 != v74);
      v74 = [obj countByEnumeratingWithState:&v97 objects:v117 count:16];
    }

    while (v74);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_280(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v3];
  v4 = [v3 payload];
  v32 = [v4 objectForKeyedSubscript:@"network-request-context-info"];

  v5 = [v3 payload];
  v6 = [v5 objectForKeyedSubscript:@"network-request-id"];

  v7 = [v3 payload];
  v8 = [v7 objectForKeyedSubscript:@"network-request-url"];

  v9 = [v3 payload];
  v10 = [v9 objectForKeyedSubscript:@"network-request-name"];

  v11 = MSVLogDateFormatter();
  v12 = [v3 date];
  v13 = [v11 stringFromDate:v12];

  v14 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v15 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [*(a1 + 40) streamID];
    *buf = 138544386;
    v34 = v13;
    v35 = 2114;
    v36 = v16;
    v37 = 1024;
    v38 = [v3 threadPriority];
    v39 = 2114;
    v40 = v14;
    v41 = 2114;
    v42 = v6;
    _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀤆 NETWORK TASK BEGIN         %{public}@", buf, 0x30u);
  }

  v17 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v18 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [*(a1 + 40) streamID];
    v20 = [v3 threadPriority];
    [v32 msv_compactDescription];
    v31 = v10;
    v21 = v8;
    v23 = v22 = v6;
    *buf = 138544386;
    v34 = v13;
    v35 = 2114;
    v36 = v19;
    v37 = 1024;
    v38 = v20;
    v39 = 2114;
    v40 = v17;
    v41 = 2114;
    v42 = v23;
    _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ context: %{public}@", buf, 0x30u);

    v6 = v22;
    v8 = v21;
    v10 = v31;
  }

  if (v10)
  {
    v24 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [*(a1 + 40) streamID];
      v26 = [v3 threadPriority];
      *buf = 138544386;
      v34 = v13;
      v35 = 2114;
      v36 = v25;
      v37 = 1024;
      v38 = v26;
      v39 = 2114;
      v40 = v17;
      v41 = 2114;
      v42 = v10;
      _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  │ name: %{public}@", buf, 0x30u);
    }
  }

  v27 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [*(a1 + 40) streamID];
    v29 = [v3 threadPriority];
    *buf = 138544386;
    v34 = v13;
    v35 = 2114;
    v36 = v28;
    v37 = 1024;
    v38 = v29;
    v39 = 2114;
    v40 = v17;
    v41 = 2114;
    v42 = v8;
    _os_log_impl(&dword_1C5C61000, v27, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ url: %{public}@", buf, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_281(uint64_t a1, void *a2, void *a3)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"network-request-id"];

  v9 = [v5 payload];
  v10 = [v9 objectForKeyedSubscript:@"network-task-id"];

  v38 = @"network-request-id";
  v39[0] = v8;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v12 = [v6 findPreviousEventWithType:@"network-task-begin" matchingPayload:v11];

  if (v12)
  {
    [v5 timeIntervalSinceEvent:v12];
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = MSVLogDateFormatter();
  v16 = [v5 date];
  v17 = [v15 stringFromDate:v16];

  v18 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v19 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [*(a1 + 40) streamID];
    v26 = 138544642;
    v27 = v17;
    v28 = 2114;
    v29 = v20;
    v30 = 1024;
    v31 = [v5 threadPriority];
    v32 = 2114;
    v33 = v18;
    v34 = 2114;
    v35 = v8;
    v36 = 2048;
    v37 = v14;
    _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀤆 NETWORK TASK RESUME        %{public}@ [%.3fs]", &v26, 0x3Au);
  }

  v21 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v22 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [*(a1 + 40) streamID];
    v24 = [v5 threadPriority];
    v26 = 138544386;
    v27 = v17;
    v28 = 2114;
    v29 = v23;
    v30 = 1024;
    v31 = v24;
    v32 = 2114;
    v33 = v21;
    v34 = 2114;
    v35 = v10;
    _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ urlTask: %{public}@", &v26, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_282(uint64_t a1, void *a2, void *a3)
{
  v57[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"network-request-id"];

  v9 = [v5 payload];
  v40 = [v9 objectForKeyedSubscript:@"network-response-status-code"];

  v10 = [v5 payload];
  v11 = [v10 objectForKeyedSubscript:@"network-response-headers"];

  v56 = @"network-request-id";
  v57[0] = v8;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
  v41 = v6;
  v13 = [v6 findPreviousEventWithType:@"network-task-resume" matchingPayload:v12];

  if (v13)
  {
    [v5 timeIntervalSinceEvent:v13];
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v38 = v13;
  v16 = MSVLogDateFormatter();
  v17 = [v5 date];
  v43 = [v16 stringFromDate:v17];

  v18 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v19 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [*(a1 + 40) streamID];
    *buf = 138544642;
    v45 = v43;
    v46 = 2114;
    v47 = v20;
    v48 = 1024;
    v49 = [v5 threadPriority];
    v50 = 2114;
    v51 = v18;
    v52 = 2114;
    v53 = v8;
    v54 = 2048;
    v55 = v15;
    _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀤆 NETWORK TASK RESPONSE      %{public}@ [%.3fs]", buf, 0x3Au);
  }

  v21 = a1;
  v42 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v39 = v11;
  v22 = [v11 description];
  v23 = [v22 componentsSeparatedByString:@"\n"];

  if ([v23 count] >= 1)
  {
    for (i = 0; i < [v23 count]; ++i)
    {
      v25 = [v23 objectAtIndexedSubscript:i];
      if (i)
      {
        v26 = [v23 count] - 1;
        v27 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
        if (i == v26)
        {
          if (v28)
          {
            goto LABEL_15;
          }
        }

        else if (v28)
        {
LABEL_15:
          v29 = [*(v21 + 40) streamID];
          v33 = [v5 threadPriority];
          *buf = 138544386;
          v45 = v43;
          v46 = 2114;
          v47 = v29;
          v48 = 1024;
          v49 = v33;
          v50 = 2114;
          v51 = v42;
          v52 = 2114;
          v53 = v25;
          v31 = v27;
          v32 = "|%{public}@ %{public}@ %2i %{public}@  │ %{public}@";
          goto LABEL_16;
        }
      }

      else
      {
        v27 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [*(v21 + 40) streamID];
          v30 = [v5 threadPriority];
          *buf = 138544386;
          v45 = v43;
          v46 = 2114;
          v47 = v29;
          v48 = 1024;
          v49 = v30;
          v50 = 2114;
          v51 = v42;
          v52 = 2114;
          v53 = v25;
          v31 = v27;
          v32 = "|%{public}@ %{public}@ %2i %{public}@ ╲╭ headers: %{public}@";
LABEL_16:
          _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 0x30u);
        }
      }
    }
  }

  v34 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [*(v21 + 40) streamID];
    v36 = [v5 threadPriority];
    *buf = 138544386;
    v45 = v43;
    v46 = 2114;
    v47 = v35;
    v48 = 1024;
    v49 = v36;
    v50 = 2114;
    v51 = v42;
    v52 = 2114;
    v53 = v40;
    _os_log_impl(&dword_1C5C61000, v34, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ╰ statusCode: %{public}@", buf, 0x30u);
  }

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_283(uint64_t a1, void *a2, void *a3)
{
  v65[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [(MPCPlaybackEngineLoggingConsumer *)*(a1 + 32) _updateChartWithEvent:v5];
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"network-request-id"];

  v9 = [v5 payload];
  v10 = [v9 objectForKeyedSubscript:@"network-task-error"];

  v11 = [v5 payload];
  v12 = [v11 objectForKeyedSubscript:@"network-metrics"];

  v64 = @"network-request-id";
  v65[0] = v8;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:&v64 count:1];
  v14 = [v6 findPreviousEventWithType:@"network-task-begin" matchingPayload:v13];

  if (v14)
  {
    [v5 timeIntervalSinceEvent:v14];
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = MSVLogDateFormatter();
  v18 = [v5 date];
  v45 = [v17 stringFromDate:v18];

  v19 = *(a1 + 32);
  if (v19[6])
  {
    v20 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:v19 type:?];
    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v20 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:v19 type:?];
    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }
  }

  v22 = [*(a1 + 40) streamID];
  *buf = 138544642;
  v53 = v45;
  v54 = 2114;
  v55 = v22;
  v56 = 1024;
  v57 = [v5 threadPriority];
  v58 = 2114;
  v59 = v20;
  v60 = 2114;
  v61 = v8;
  v62 = 2048;
  v63 = v16;
  _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀤆 NETWORK TASK END           %{public}@ [%.3fs]", buf, 0x3Au);

LABEL_9:
  v44 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  if (v10)
  {
    v42 = v14;
    v43 = v12;
    v23 = a1;
    v24 = [v10 treeDescription];
    v25 = [v24 componentsSeparatedByString:@"\n"];

    if ([v25 count] < 1)
    {
      goto LABEL_23;
    }

    v41 = v10;
    v26 = 0;
    while (1)
    {
      v27 = [v25 objectAtIndexedSubscript:v26];
      if (v26)
      {
        v28 = [v25 count] - 1;
        v29 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
        if (v26 == v28)
        {
          if (v30)
          {
            v31 = [*(v23 + 40) streamID];
            v32 = [v5 threadPriority];
            *buf = 138544386;
            v53 = v45;
            v54 = 2114;
            v55 = v31;
            v56 = 1024;
            v57 = v32;
            v58 = 2114;
            v59 = v44;
            v60 = 2114;
            v61 = v27;
            v33 = v29;
            v34 = "|%{public}@ %{public}@ %2i %{public}@  ╰           %{public}@";
LABEL_20:
            _os_log_impl(&dword_1C5C61000, v33, OS_LOG_TYPE_ERROR, v34, buf, 0x30u);
          }
        }

        else if (v30)
        {
          v31 = [*(v23 + 40) streamID];
          v36 = [v5 threadPriority];
          *buf = 138544386;
          v53 = v45;
          v54 = 2114;
          v55 = v31;
          v56 = 1024;
          v57 = v36;
          v58 = 2114;
          v59 = v44;
          v60 = 2114;
          v61 = v27;
          v33 = v29;
          v34 = "|%{public}@ %{public}@ %2i %{public}@  │           %{public}@";
          goto LABEL_20;
        }
      }

      else
      {
        v29 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents_Oversize");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v31 = [*(v23 + 40) streamID];
          v35 = [v5 threadPriority];
          *buf = 138544386;
          v53 = v45;
          v54 = 2114;
          v55 = v31;
          v56 = 1024;
          v57 = v35;
          v58 = 2114;
          v59 = v44;
          v60 = 2114;
          v61 = v27;
          v33 = v29;
          v34 = "|%{public}@ %{public}@ %2i %{public}@ ╲╭ error: ❌ %{public}@";
          goto LABEL_20;
        }
      }

      if (++v26 >= [v25 count])
      {
        v10 = v41;
LABEL_23:
        v14 = v42;
LABEL_26:

        v12 = v43;
        goto LABEL_27;
      }
    }
  }

  v37 = [v12 urlMetrics];
  v38 = [v37 count];

  if (v38)
  {
    v39 = [v12 urlMetrics];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_284;
    v46[3] = &unk_1E8231B60;
    v43 = v12;
    v47 = v12;
    v48 = v45;
    v49 = *(a1 + 40);
    v50 = v5;
    v51 = v44;
    [v39 enumerateObjectsUsingBlock:v46];

    v25 = v47;
    goto LABEL_26;
  }

LABEL_27:

  return 1;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_295(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"queue-section-id"];

  v6 = [v3 payload];
  v7 = [v6 objectForKeyedSubscript:@"queue-item-id"];

  v8 = [v3 payload];
  v9 = [v8 objectForKeyedSubscript:@"av-player-item-id"];

  v10 = [v3 payload];
  v11 = [v10 objectForKeyedSubscript:@"item-avmetric-event-name"];

  v12 = [v3 payload];
  v13 = [v12 objectForKeyedSubscript:@"item-avmetric-event-data"];

  v14 = MSVLogDateFormatter();
  v15 = [v3 date];
  v41 = [v14 stringFromDate:v15];

  v16 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 40) streamID];
    *buf = 138544898;
    v43 = v41;
    v44 = 2114;
    v45 = v18;
    v46 = 1024;
    v47 = [v3 threadPriority];
    v48 = 2114;
    v49 = v16;
    v50 = 2114;
    v51 = v5;
    v52 = 2114;
    v53 = v7;
    v54 = 2114;
    v55 = v9;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@􀼳 ITEM AV METRIC EVENT       %{public}@ %{public}@ %{public}@", buf, 0x44u);
  }

  v40 = [MPCPlaybackEngineLoggingConsumer _chartWithLevel:? type:?];
  v19 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [*(a1 + 40) streamID];
    v21 = [v3 threadPriority];
    *buf = 138544386;
    v43 = v41;
    v44 = 2114;
    v45 = v20;
    v46 = 1024;
    v47 = v21;
    v48 = 2114;
    v49 = v40;
    v50 = 2114;
    v51 = v11;
    _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@ ╲╭ name: %{public}@", buf, 0x30u);
  }

  if ([v13 count])
  {
    v37 = v11;
    v38 = v7;
    v39 = v5;
    v22 = a1;
    v36 = v13;
    v23 = [v13 description];
    v24 = [v23 componentsSeparatedByString:@"\n"];

    if ([v24 count] >= 1)
    {
      for (i = 0; i < [v24 count]; ++i)
      {
        v26 = [v24 objectAtIndexedSubscript:i];
        if (i)
        {
          v27 = [v24 count] - 1;
          v28 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
          v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
          if (i == v27)
          {
            if (v29)
            {
              goto LABEL_15;
            }
          }

          else if (v29)
          {
LABEL_15:
            v30 = [*(v22 + 40) streamID];
            v34 = [v3 threadPriority];
            *buf = 138544386;
            v43 = v41;
            v44 = 2114;
            v45 = v30;
            v46 = 1024;
            v47 = v34;
            v48 = 2114;
            v49 = v40;
            v50 = 2114;
            v51 = v26;
            v32 = v28;
            v33 = "|%{public}@ %{public}@ %2i %{public}@    %{public}@";
            goto LABEL_16;
          }
        }

        else
        {
          v28 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v30 = [*(v22 + 40) streamID];
            v31 = [v3 threadPriority];
            *buf = 138544386;
            v43 = v41;
            v44 = 2114;
            v45 = v30;
            v46 = 1024;
            v47 = v31;
            v48 = 2114;
            v49 = v40;
            v50 = 2114;
            v51 = v26;
            v32 = v28;
            v33 = "|%{public}@ %{public}@ %2i %{public}@  ╰ data: %{public}@";
LABEL_16:
            _os_log_impl(&dword_1C5C61000, v32, OS_LOG_TYPE_DEFAULT, v33, buf, 0x30u);
          }
        }
      }
    }

    v7 = v38;
    v5 = v39;
    v11 = v37;
    v13 = v36;
  }

  return 1;
}

- (void)_updateChartWithEvent:(uint64_t)event
{
  v62[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (event)
  {
    type = [v3 type];
    v62[0] = @"remote-control-begin";
    v62[1] = @"shared-session-synchronization-begin";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
    v7 = [v6 containsObject:type];

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v61[0] = @"remote-control-end";
      v61[1] = @"shared-session-synchronization-end";
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
      v10 = [v9 containsObject:type];

      if ((v10 & 1) == 0)
      {
        v60 = @"session-begin";
        v8 = 1;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
        v23 = [v22 containsObject:type];

        if ((v23 & 1) == 0)
        {
          v59 = @"session-end";
          v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
          v25 = [v24 containsObject:type];

          if ((v25 & 1) == 0)
          {
            v58[0] = @"container-begin";
            v58[1] = @"item-placeholder-begin";
            v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
            v30 = [v29 containsObject:type];

            if (v30)
            {
              v8 = 1;
            }

            else
            {
              v57[0] = @"container-end";
              v57[1] = @"item-placeholder-end";
              v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
              v32 = [v31 containsObject:type];

              if ((v32 & 1) == 0)
              {
                v56 = @"item-begin";
                v8 = 1;
                v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
                v36 = [v35 containsObject:type];

                if ((v36 & 1) == 0)
                {
                  v55 = @"item-end";
                  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
                  v38 = [v37 containsObject:type];

                  if ((v38 & 1) == 0)
                  {
                    v54 = @"asset-load-begin";
                    v8 = 1;
                    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
                    v43 = [v42 containsObject:type];

                    if ((v43 & 1) == 0)
                    {
                      v53 = @"asset-load-end";
                      v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
                      v45 = [v44 containsObject:type];

                      if ((v45 & 1) == 0)
                      {
                        v52 = @"network-task-begin";
                        v8 = 1;
                        v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
                        v47 = [v46 containsObject:type];

                        if ((v47 & 1) == 0)
                        {
                          v51 = @"network-task-end";
                          v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
                          v49 = [v48 containsObject:type];

                          if (!v49)
                          {
LABEL_8:
                            payload = [v4 payload];
                            v13 = [payload objectForKeyedSubscript:@"time-control-status"];

                            if (v13)
                            {
                              payload2 = [v4 payload];
                              v15 = [payload2 objectForKeyedSubscript:@"time-control-status"];
                              *(event + 64) = [v15 integerValue];
                            }

                            if (type == @"remote-control-begin" || [(__CFString *)type isEqual:@"remote-control-begin"])
                            {
                              payload3 = [v4 payload];
                              v17 = [payload3 objectForKeyedSubscript:@"remote-control-type"];
                              integerValue = [v17 integerValue];

                              if (integerValue <= 120)
                              {
                                if (integerValue <= 1)
                                {
                                  if (integerValue)
                                  {
                                    if (integerValue != 1)
                                    {
                                      goto LABEL_43;
                                    }

                                    goto LABEL_31;
                                  }

LABEL_34:
                                  *(event + 56) = 1;
                                  goto LABEL_43;
                                }

                                if (integerValue != 2)
                                {
                                  if (integerValue != 3)
                                  {
LABEL_43:

                                    goto LABEL_44;
                                  }

LABEL_31:
                                  *(event + 56) = 0;
                                  goto LABEL_43;
                                }

                                *(event + 56) ^= 1u;
LABEL_42:
                                *(event + 57) = 0;
                                goto LABEL_43;
                              }

                              if (integerValue > 130)
                              {
                                if (integerValue != 133)
                                {
                                  if (integerValue != 131)
                                  {
                                    goto LABEL_43;
                                  }

                                  goto LABEL_34;
                                }
                              }

                              else
                              {
                                if (integerValue == 121)
                                {
                                  goto LABEL_34;
                                }

                                if (integerValue != 122)
                                {
                                  goto LABEL_43;
                                }
                              }

                              payload4 = [v4 payload];
                              v27 = [payload4 objectForKeyedSubscript:@"remote-control-queue-start"];
                              *(event + 56) = [v27 BOOLValue];
                            }

                            else
                            {
                              if (type == @"audio-route-changed" || [(__CFString *)type isEqual:@"audio-route-changed"])
                              {
                                payload5 = [v4 payload];
                                v20 = [payload5 objectForKeyedSubscript:@"route-should-pause"];
                                bOOLValue = [v20 BOOLValue];

                                if (!bOOLValue)
                                {
                                  goto LABEL_43;
                                }

                                goto LABEL_31;
                              }

                              if (type != @"item-rate-changed" && ![(__CFString *)type isEqual:@"item-rate-changed"])
                              {
                                v50[0] = @"session-reset";
                                v50[1] = @"media-server-died";
                                v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
                                v34 = [v33 containsObject:type];

                                if (v34)
                                {
                                  goto LABEL_31;
                                }

                                if ((type == @"interrupt-begin" || [(__CFString *)type isEqual:@"interrupt-begin"]) && *(event + 56) == 1)
                                {
                                  *(event + 56) = 256;
                                  goto LABEL_43;
                                }

                                if (type != @"interrupt-end" && ![(__CFString *)type isEqual:@"interrupt-end"]|| *(event + 57) != 1)
                                {
                                  goto LABEL_43;
                                }

                                payload6 = [v4 payload];
                                v40 = [payload6 objectForKeyedSubscript:@"interrupt-should-resume"];
                                bOOLValue2 = [v40 BOOLValue];

                                *(event + 56) = bOOLValue2;
                                goto LABEL_42;
                              }

                              payload7 = [v4 payload];
                              payload4 = [payload7 objectForKeyedSubscript:@"item-rate-change-participant-id"];

                              if ([payload4 length])
                              {
                                *(event + 56) = 0;
                              }
                            }

                            goto LABEL_43;
                          }

                          v8 = -1;
                        }

                        v11 = 48;
LABEL_7:
                        *(event + v11) += v8;
                        goto LABEL_8;
                      }

                      v8 = -1;
                    }

                    v11 = 40;
                    goto LABEL_7;
                  }

                  v8 = -1;
                }

                v11 = 32;
                goto LABEL_7;
              }

              v8 = -1;
            }

            v11 = 24;
            goto LABEL_7;
          }

          v8 = -1;
        }

        v11 = 16;
        goto LABEL_7;
      }

      v8 = -1;
    }

    v11 = 8;
    goto LABEL_7;
  }

LABEL_44:
}

void __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_284(uint64_t a1, void *a2, unint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    v6 = [*(a1 + 32) urlMetrics];
    if ([v6 count] - 1 <= a3)
    {
      v7 = @"  ╰";
    }

    else
    {
      v7 = @"  │";
    }

    v8 = v7;
  }

  else
  {
    v8 = @" ╲╭";
  }

  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEvents");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 40);
    v11 = [*(a1 + 48) streamID];
    v12 = [*(a1 + 56) threadPriority];
    v13 = *(a1 + 64);
    v14 = [v5 statusCode];
    v15 = [v5 responseMessageSize] / 0x3E8uLL;
    [v5 totalTime];
    v17 = v16 * 1000.0;
    [v5 connectionTime];
    v19 = v18 * 1000.0;
    [v5 dnsTime];
    v21 = 138546178;
    v22 = v10;
    v23 = 2114;
    v24 = v11;
    v25 = 1024;
    v26 = v12;
    v27 = 2114;
    v28 = v13;
    v29 = 2114;
    v30 = v8;
    v31 = 2050;
    v32 = v14;
    v33 = 2050;
    v34 = v15;
    v35 = 2050;
    v36 = v17;
    v37 = 2050;
    v38 = v19;
    v39 = 2050;
    v40 = v20 * 1000.0;
    v41 = 1024;
    v42 = [v5 cachedResponse];
    v43 = 1024;
    v44 = [v5 connectionReused];
    _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@%{public}@ statusCode:%{public}ld responseSize:%{public}ldkB totalTime:%{public}.0fms conn:%{public}.0fms dns:%{public}.0fms cached:%{BOOL}u connReused:%{BOOL}u", &v21, 0x6Eu);
  }
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_206(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) indexOfObject:v5];
  v8 = [*(a1 + 32) indexOfObject:v6];
  if (v7 >= v8)
  {
    if (v7 > v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = [v5 compare:v6];
    }
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_207(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) indexOfObject:v5];
  v8 = [*(a1 + 32) indexOfObject:v6];
  if (v7 >= v8)
  {
    if (v7 > v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = [v5 compare:v6];
    }
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_208(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = MEMORY[0x1E695E0F0];
  v7 = [MEMORY[0x1E695E0F0] indexOfObject:v4];
  v8 = [v6 indexOfObject:v5];
  if (v7 >= v8)
  {
    if (v7 > v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = [v4 compare:v5];
    }
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_77(uint64_t a1, void *a2, void *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"commandType"];
  v8 = [v7 integerValue];

  v9 = MPCRemoteCommandDescriptionCopy(v8);
  v10 = [v6 objectForKeyedSubscript:@"supported"];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    v12 = @"enabled";
    v13 = [v6 objectForKeyedSubscript:@"enabled"];
    v14 = [v13 BOOLValue];

    if (v14)
    {
      goto LABEL_6;
    }

    v15 = @"disabled: %@";
    v16 = @"disabledReasons";
  }

  else
  {
    v15 = @"unsupported: %@";
    v16 = @"unsupportedReasons";
  }

  v17 = MEMORY[0x1E696AEC0];
  v18 = [v6 objectForKeyedSubscript:v16];
  v19 = [v18 msv_compactDescription];
  v12 = [v17 stringWithFormat:v15, v19];

LABEL_6:
  v20 = os_log_create("com.apple.amp.mediaplaybackcore", "CommandsChanged");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 32);
    v22 = [*(a1 + 40) streamID];
    v23 = [*(a1 + 48) threadPriority];
    v24 = *(a1 + 56);
    *buf = 138544898;
    v49 = v21;
    v50 = 2114;
    v51 = v22;
    v52 = 1024;
    v53 = v23;
    v54 = 2114;
    v55 = v24;
    v56 = 2114;
    v57 = v5;
    v58 = 2114;
    v59 = v9;
    v60 = 2114;
    v61 = v12;
    _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "|%{public}@ %{public}@ %2i %{public}@  ├╴%{public}@ %{public}-40@ [%{public}@]", buf, 0x44u);
  }

  v25 = [v6 objectForKeyedSubscript:@"options"];
  if ([v25 count])
  {
    v46 = v6;
    v47 = v5;
    v45 = v25;
    v26 = [v25 description];
    v27 = [v26 componentsSeparatedByString:@"\n"];

    if ([v27 count] >= 1)
    {
      for (i = 0; i < [v27 count]; ++i)
      {
        v29 = [v27 objectAtIndexedSubscript:i];
        if (i)
        {
          v30 = [v27 count] - 1;
          v31 = os_log_create("com.apple.amp.mediaplaybackcore", "CommandsChanged");
          v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
          if (i == v30)
          {
            if (v32)
            {
              v33 = *(a1 + 32);
              v34 = [*(a1 + 40) streamID];
              v35 = [*(a1 + 48) threadPriority];
              v36 = *(a1 + 56);
              *buf = 138544386;
              v49 = v33;
              v50 = 2114;
              v51 = v34;
              v52 = 1024;
              v53 = v35;
              v54 = 2114;
              v55 = v36;
              v56 = 2114;
              v57 = v29;
              v37 = v31;
              v38 = "|%{public}@ %{public}@ %2i %{public}@  │   ╰ %{public}@";
LABEL_19:
              _os_log_impl(&dword_1C5C61000, v37, OS_LOG_TYPE_DEFAULT, v38, buf, 0x30u);
            }
          }

          else if (v32)
          {
            v42 = *(a1 + 32);
            v34 = [*(a1 + 40) streamID];
            v43 = [*(a1 + 48) threadPriority];
            v44 = *(a1 + 56);
            *buf = 138544386;
            v49 = v42;
            v50 = 2114;
            v51 = v34;
            v52 = 1024;
            v53 = v43;
            v54 = 2114;
            v55 = v44;
            v56 = 2114;
            v57 = v29;
            v37 = v31;
            v38 = "|%{public}@ %{public}@ %2i %{public}@  │   │ %{public}@";
            goto LABEL_19;
          }
        }

        else
        {
          v31 = os_log_create("com.apple.amp.mediaplaybackcore", "CommandsChanged");
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v39 = *(a1 + 32);
            v34 = [*(a1 + 40) streamID];
            v40 = [*(a1 + 48) threadPriority];
            v41 = *(a1 + 56);
            *buf = 138544386;
            v49 = v39;
            v50 = 2114;
            v51 = v34;
            v52 = 1024;
            v53 = v40;
            v54 = 2114;
            v55 = v41;
            v56 = 2114;
            v57 = v29;
            v37 = v31;
            v38 = "|%{public}@ %{public}@ %2i %{public}@  │  ╲╭ options: %{public}@";
            goto LABEL_19;
          }
        }
      }
    }

    v6 = v46;
    v5 = v47;
    v25 = v45;
  }
}

- (__CFString)_symbolForCommand:(__CFString *)result
{
  if (result)
  {
    result = @"▶️";
    switch(a2)
    {
      case 0:
        return result;
      case 1:
        result = @"⏸";
        break;
      case 2:
        result = @"⏯";
        break;
      case 3:
        result = @"⏹";
        break;
      case 4:
        result = @"⏭";
        break;
      case 5:
        result = @"⏮";
        break;
      case 6:
      case 26:
LABEL_6:
        result = @"🔀";
        break;
      case 7:
      case 25:
        result = @"🔁";
        break;
      case 8:
      case 9:
        result = @"⏩";
        break;
      case 10:
      case 11:
        result = @"⏪";
        break;
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 23:
      case 24:
LABEL_16:
        result = @"✴️";
        break;
      case 21:
        result = @"👍🏻";
        break;
      case 22:
        result = @"👎🏻";
        break;
      default:
        switch(a2)
        {
          case 122:
            result = @"🔤";
            break;
          case 125:
            result = @"🆕";
            break;
          case 129:
            result = @"🚮";
            break;
          case 130:
            result = @"#️⃣";
            break;
          case 131:
            result = @"🈁";
            break;
          case 132:
            result = @"🆙";
            break;
          case 133:
            result = @"🔠";
            break;
          case 134:
            goto LABEL_6;
          case 135:
            result = @"🔃";
            break;
          case 139:
            result = @"⏏️";
            break;
          case 140:
            result = @"ℹ️";
            break;
          case 142:
          case 143:
            result = @"🎤";
            break;
          case 144:
            result = @"🧽";
            break;
          default:
            goto LABEL_16;
        }

        break;
    }
  }

  return result;
}

uint64_t __59__MPCPlaybackEngineLoggingConsumer_subscribeToEventStream___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

@end