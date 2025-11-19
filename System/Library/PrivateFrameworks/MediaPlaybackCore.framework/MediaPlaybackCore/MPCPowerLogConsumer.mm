@interface MPCPowerLogConsumer
+ (PPSTelemetryIdentifier)songTransitionsTelemetryID;
+ (PPSTelemetryIdentifier)vocalAttenuationTelemetryID;
- (void)dealloc;
- (void)reportSongTransitionInfo:(double)a3 transitionProvided:(int64_t)a4 date:(id)a5;
- (void)reportVocalAttenuationIsActive:(BOOL)a3 date:(id)a4;
- (void)subscribeToEventStream:(id)a3;
@end

@implementation MPCPowerLogConsumer

- (void)reportSongTransitionInfo:(double)a3 transitionProvided:(int64_t)a4 date:(id)a5
{
  v21[3] = *MEMORY[0x1E69E9840];
  v20[0] = @"TransitionDuration";
  v7 = MEMORY[0x1E696AD98];
  v8 = a5;
  v9 = [v7 numberWithDouble:a3];
  v21[0] = v9;
  v20[1] = @"TransitionProvided";
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v21[1] = v10;
  v20[2] = @"TimestampSent";
  v11 = MEMORY[0x1E696AD98];
  [v8 timeIntervalSince1970];
  v13 = v12;

  v14 = [v11 numberWithDouble:v13];
  v21[2] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  v16 = dispatch_get_global_queue(17, 0);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__MPCPowerLogConsumer_reportSongTransitionInfo_transitionProvided_date___block_invoke;
  v18[3] = &unk_1E8239298;
  v19 = v15;
  v17 = v15;
  dispatch_async(v16, v18);
}

uint64_t __72__MPCPowerLogConsumer_reportSongTransitionInfo_transitionProvided_date___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_DEFAULT, "PowerLog: Logging SongTransitions info with payload:\n%{public}@", &v5, 0xCu);
  }

  +[MPCPowerLogConsumer songTransitionsTelemetryID];
  return PPSSendTelemetry();
}

- (void)reportVocalAttenuationIsActive:(BOOL)a3 date:(id)a4
{
  v4 = a3;
  v19[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([(MPCPowerLogConsumer *)self lastVocalAttenuationIsActive]!= v4 && MSVDeviceSupportsVocalAttenuation())
  {
    v18[0] = @"Enabled";
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    v18[1] = @"TimestampSent";
    v19[0] = v7;
    v8 = MEMORY[0x1E696AD98];
    [v6 timeIntervalSince1970];
    v9 = [v8 numberWithDouble:?];
    v19[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];

    v11 = dispatch_get_global_queue(17, 0);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __59__MPCPowerLogConsumer_reportVocalAttenuationIsActive_date___block_invoke;
    v16 = &unk_1E8239298;
    v17 = v10;
    v12 = v10;
    dispatch_async(v11, &v13);

    [(MPCPowerLogConsumer *)self setLastVocalAttenuationIsActive:v4, v13, v14, v15, v16];
  }
}

uint64_t __59__MPCPowerLogConsumer_reportVocalAttenuationIsActive_date___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_DEFAULT, "PowerLog: Logging VocalAttenuation state change event with payload:\n%{public}@", &v5, 0xCu);
  }

  +[MPCPowerLogConsumer vocalAttenuationTelemetryID];
  return PPSSendTelemetry();
}

- (void)subscribeToEventStream:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_subscription, a3);
  if (MSVDeviceSupportsVocalAttenuation())
  {
    subscription = self->_subscription;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46__MPCPowerLogConsumer_subscribeToEventStream___block_invoke;
    v13[3] = &unk_1E8232330;
    v13[4] = self;
    [(MPCPlaybackEngineEventStreamSubscription *)subscription subscribeToEventType:@"item-resume" handler:v13];
    v7 = self->_subscription;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__MPCPowerLogConsumer_subscribeToEventStream___block_invoke_2;
    v12[3] = &unk_1E8232330;
    v12[4] = self;
    [(MPCPlaybackEngineEventStreamSubscription *)v7 subscribeToEventType:@"item-vocal-attenuation-changed" handler:v12];
    v8 = self->_subscription;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__MPCPowerLogConsumer_subscribeToEventStream___block_invoke_3;
    v11[3] = &unk_1E8232330;
    v11[4] = self;
    [(MPCPlaybackEngineEventStreamSubscription *)v8 subscribeToEventType:@"item-pause" handler:v11];
  }

  if (+[MPCPlaybackEngine deviceSupportsTransitions])
  {
    v9 = self->_subscription;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__MPCPowerLogConsumer_subscribeToEventStream___block_invoke_4;
    v10[3] = &unk_1E8232330;
    v10[4] = self;
    [(MPCPlaybackEngineEventStreamSubscription *)v9 subscribeToEventType:@"transition-will-start" handler:v10];
  }
}

uint64_t __46__MPCPowerLogConsumer_subscribeToEventStream___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"vocal-attenuation-enabled"];
  v6 = [v5 BOOLValue];
  v7 = [v3 date];

  [v2 reportVocalAttenuationIsActive:v6 date:v7];
  return 1;
}

uint64_t __46__MPCPowerLogConsumer_subscribeToEventStream___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"vocal-attenuation-enabled"];
  v6 = [v5 BOOLValue];
  v7 = [v3 date];

  [v2 reportVocalAttenuationIsActive:v6 date:v7];
  return 1;
}

uint64_t __46__MPCPowerLogConsumer_subscribeToEventStream___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 date];
  [v2 reportVocalAttenuationIsActive:0 date:v3];

  return 1;
}

uint64_t __46__MPCPowerLogConsumer_subscribeToEventStream___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 findPreviousEventWithType:@"item-transition-created" matchingPayload:0];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 payload];
    v9 = [v8 objectForKeyedSubscript:@"transition-provided"];
    v10 = [v9 integerValue];

    v11 = [v7 payload];
    v12 = [v11 objectForKeyedSubscript:@"transition-parameters"];

    v13 = [v12 objectForKeyedSubscript:@"duration"];
    [v13 doubleValue];
    v15 = v14;

    v16 = *(a1 + 32);
    v17 = [v5 date];
    [v16 reportSongTransitionInfo:v10 transitionProvided:v17 date:v15];
  }

  return 1;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E695DF00] now];
  [(MPCPowerLogConsumer *)self reportVocalAttenuationIsActive:0 date:v3];

  v4.receiver = self;
  v4.super_class = MPCPowerLogConsumer;
  [(MPCPowerLogConsumer *)&v4 dealloc];
}

+ (PPSTelemetryIdentifier)songTransitionsTelemetryID
{
  if (songTransitionsTelemetryID_onceToken != -1)
  {
    dispatch_once(&songTransitionsTelemetryID_onceToken, &__block_literal_global_9);
  }

  return songTransitionsTelemetryID_telemetryID;
}

uint64_t __49__MPCPowerLogConsumer_songTransitionsTelemetryID__block_invoke()
{
  result = PPSCreateTelemetryIdentifier();
  songTransitionsTelemetryID_telemetryID = result;
  return result;
}

+ (PPSTelemetryIdentifier)vocalAttenuationTelemetryID
{
  if (vocalAttenuationTelemetryID_onceToken != -1)
  {
    dispatch_once(&vocalAttenuationTelemetryID_onceToken, &__block_literal_global_3482);
  }

  return vocalAttenuationTelemetryID_telemetryID;
}

uint64_t __50__MPCPowerLogConsumer_vocalAttenuationTelemetryID__block_invoke()
{
  result = PPSCreateTelemetryIdentifier();
  vocalAttenuationTelemetryID_telemetryID = result;
  return result;
}

@end