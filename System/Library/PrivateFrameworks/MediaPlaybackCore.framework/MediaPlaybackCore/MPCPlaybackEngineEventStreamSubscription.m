@interface MPCPlaybackEngineEventStreamSubscription
@end

@implementation MPCPlaybackEngineEventStreamSubscription

void __54___MPCPlaybackEngineEventStreamSubscription_processID__block_invoke()
{
  if (+[MPCPlaybackEngine isSystemMusic])
  {
    v0 = @"mus";
  }

  else if (+[MPCPlaybackEngine isSystemPodcasts])
  {
    v0 = @"pod";
  }

  else
  {
    v1 = +[MPCPlaybackEngine isRemotePlayerService];
    v0 = @"oth";
    if (v1)
    {
      v0 = @"rps";
    }
  }

  v2 = processID_processID;
  processID_processID = v0;
}

void __77___MPCPlaybackEngineEventStreamSubscription__onQueue_enqueueIncrementalFlush__block_invoke(int8x16_t *a1)
{
  v1 = a1[2].i64[0];
  if (v1)
  {
    v2 = *(v1 + 80);
  }

  else
  {
    v2 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77___MPCPlaybackEngineEventStreamSubscription__onQueue_enqueueIncrementalFlush__block_invoke_2;
  block[3] = &unk_1E82392C0;
  v4 = a1[2];
  v3 = v4.i64[0];
  v6 = vextq_s8(v4, v4, 8uLL);
  dispatch_sync(v2, block);
}

os_unfair_lock_s *__77___MPCPlaybackEngineEventStreamSubscription__onQueue_enqueueIncrementalFlush__block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 12) = 0;
  result = *(a1 + 40);
  if (result)
  {
    if ((result[4]._os_unfair_lock_opaque & 0x100) == 0)
    {
      result = [(MPCPlaybackEngineEventStream *)result _hasNoDeferralAssertions];
      if (result)
      {
        [(_MPCPlaybackEngineEventStreamSubscription *)*(a1 + 32) _onQueue_flush:?];
        result = *(a1 + 32);
        if (BYTE1(result[3]._os_unfair_lock_opaque) == 1)
        {

          return [(os_unfair_lock_s *)result _onQueue_enqueueIncrementalFlush];
        }
      }
    }
  }

  return result;
}

uint64_t __71___MPCPlaybackEngineEventStreamSubscription_flushEventsWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _onQueue_flush];
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 40) engineID];
    v4 = [objc_opt_class() identifier];
    v5 = *(a1 + 48);
    v7 = 138543874;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_DEBUG, "[EVS:%{public}@:%{public}@:%p] flushEventsWithCompletion:… | flushed events", &v7, 0x20u);
  }

  return (*(*(a1 + 56) + 16))();
}

@end