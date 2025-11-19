@interface FigCaptureFrameCounter
+ (id)osStateData;
+ (void)initialize;
- (BOOL)started;
- (FigCaptureFrameCounter)initWithTitle:(id)a3;
- (double)_frameRateWithFramesCount:(int64_t)a3 firstFramePTS:(id *)a4 lastFramePTS:(id *)a5;
- (double)loggingInterval;
- (id)_summaryIsolated;
- (id)summary;
- (void)_logIntervalFrameRate;
- (void)dealloc;
- (void)incrementWithPTS:(id *)a3;
- (void)setLoggingInterval:(double)a3;
- (void)start;
- (void)stop;
@end

@implementation FigCaptureFrameCounter

- (void)start
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_started)
  {
    os_unfair_lock_unlock(&self->_lock);
    v12 = 0;
    v11 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    self->_started = 1;
    if (self->_loggingInterval > 0.0)
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = objc_opt_class();
      v6 = [objc_msgSend(v4 stringWithFormat:@"%@-%@", NSStringFromClass(v5), self->_title), "UTF8String"];
      v7 = dispatch_queue_create(v6, 0);
      self->_timerQueue = v7;
      self->_timer = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, v7);
      v8 = dispatch_time(0, (self->_loggingInterval * 1000000000.0));
      dispatch_source_set_timer(self->_timer, v8, (self->_loggingInterval * 1000000000.0), 0);
      objc_initWeak(location, self);
      timer = self->_timer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __31__FigCaptureFrameCounter_start__block_invoke;
      handler[3] = &unk_1E798F9C0;
      objc_copyWeak(&v14, location);
      dispatch_source_set_event_handler(timer, handler);
      dispatch_resume(self->_timer);
      objc_destroyWeak(&v14);
      objc_destroyWeak(location);
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();
    fig_note_initialize_category_with_default_work_cf();
    sOSStateHandle = [[FigCaptureOSStateHandle alloc] initWithTitle:@"FigCaptureFrameCounter Summaries" queue:0 dataProviderBlock:&__block_literal_global_13];
    sWeakFrameCounters = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:1];
  }
}

+ (id)osStateData
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  os_unfair_lock_lock(&sWeakFrameCountersLock);
  v3 = [sWeakFrameCounters allObjects];
  os_unfair_lock_unlock(&sWeakFrameCountersLock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 setObject:objc_msgSend(*(*(&v10 + 1) + 8 * v7) forKeyedSubscript:{"summary"), objc_msgSend(*(*(&v10 + 1) + 8 * v7), "title")}];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }

  return v2;
}

- (FigCaptureFrameCounter)initWithTitle:(id)a3
{
  v6.receiver = self;
  v6.super_class = FigCaptureFrameCounter;
  v4 = [(FigCaptureFrameCounter *)&v6 init];
  if (v4)
  {
    v4->_title = [a3 copy];
    v4->_loggingInterval = 10.0;
    v4->_lock._os_unfair_lock_opaque = 0;
    os_unfair_lock_lock(&sWeakFrameCountersLock);
    [sWeakFrameCounters addObject:v4];
    os_unfair_lock_unlock(&sWeakFrameCountersLock);
  }

  return v4;
}

- (void)dealloc
{
  if (self->_started)
  {
    [(FigCaptureFrameCounter *)self stop];
  }

  v3.receiver = self;
  v3.super_class = FigCaptureFrameCounter;
  [(FigCaptureFrameCounter *)&v3 dealloc];
}

- (double)loggingInterval
{
  os_unfair_lock_lock(&self->_lock);
  self->_loggingInterval = 0.0;
  os_unfair_lock_unlock(&self->_lock);
  return 0.0;
}

- (void)setLoggingInterval:(double)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_started)
  {
    os_unfair_lock_unlock(&self->_lock);
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    self->_loggingInterval = a3;

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (BOOL)started
{
  os_unfair_lock_lock(&self->_lock);
  started = self->_started;
  os_unfair_lock_unlock(&self->_lock);
  return started;
}

uint64_t __31__FigCaptureFrameCounter_start__block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak _logIntervalFrameRate];
}

- (void)_logIntervalFrameRate
{
  os_unfair_lock_lock(&self->_lock);
  totalFramesCount = self->_totalFramesCount;
  intervalFramesCount = self->_intervalFramesCount;
  intervalFirstFramePTS = self->_intervalFirstFramePTS;
  intervalLastFramePTS = self->_intervalLastFramePTS;
  [(FigCaptureFrameCounter *)self _frameRateWithFramesCount:intervalFramesCount firstFramePTS:&intervalFirstFramePTS lastFramePTS:&intervalLastFramePTS];
  v6 = v5;
  self->_intervalFramesCount = 0;
  self->_intervalFirstFramePTS = self->_intervalLastFramePTS;
  self->_intervalLastFramePTS = **&MEMORY[0x1E6960CC0];
  os_unfair_lock_unlock(&self->_lock);
  if (dword_1ED844690)
  {
    v21 = 0;
    v20 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v8 = v21;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v20))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      title = self->_title;
      LODWORD(intervalLastFramePTS.value) = 136316418;
      *(&intervalLastFramePTS.value + 4) = "[FigCaptureFrameCounter _logIntervalFrameRate]";
      LOWORD(intervalLastFramePTS.flags) = 2048;
      *(&intervalLastFramePTS.flags + 2) = self;
      HIWORD(intervalLastFramePTS.epoch) = 2114;
      v12 = title;
      v13 = 2048;
      v14 = totalFramesCount;
      v15 = 2048;
      v16 = intervalFramesCount;
      v17 = 2048;
      v18 = v6;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)incrementWithPTS:(id *)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_started)
  {
    if ((self->_totalLastFramePTS.flags & 1) == 0 || (time1 = self->_totalLastFramePTS, time2 = *a3, CMTimeCompare(&time1, &time2) < 0))
    {
      totalFramesCount = self->_totalFramesCount;
      v8 = totalFramesCount == 0;
      self->_totalFramesCount = totalFramesCount + 1;
      ++self->_intervalFramesCount;
      if (!totalFramesCount)
      {
        v12 = *&a3->var0;
        self->_totalFirstFramePTS.epoch = a3->var3;
        *&self->_totalFirstFramePTS.value = v12;
        v13 = *&a3->var0;
        self->_intervalFirstFramePTS.epoch = a3->var3;
        *&self->_intervalFirstFramePTS.value = v13;
      }

      v7 = 0;
      v10 = 0;
      v14 = *&a3->var0;
      self->_totalLastFramePTS.epoch = a3->var3;
      *&self->_totalLastFramePTS.value = v14;
      v15 = *&a3->var0;
      self->_intervalLastFramePTS.epoch = a3->var3;
      *&self->_intervalLastFramePTS.value = v15;
      v9 = 1;
    }

    else
    {
      v5 = MEMORY[0x1E696AEC0];
      time1 = *a3;
      Seconds = CMTimeGetSeconds(&time1);
      time1 = self->_totalLastFramePTS;
      v7 = [v5 stringWithFormat:@"PTS (%f) must be later than last PTS (%f)", *&Seconds, CMTimeGetSeconds(&time1)];
      v8 = 0;
      v9 = 0;
      v10 = -12780;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = -12780;
    v7 = @"Cannot increment without first being started";
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v8 && dword_1ED844690)
  {
    v32 = 0;
    v31 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v17 = v32;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v31))
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 & 0xFFFFFFFE;
    }

    if (v18)
    {
      title = self->_title;
      LODWORD(time2.value) = 136315650;
      *(&time2.value + 4) = "[FigCaptureFrameCounter incrementWithPTS:]";
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = self;
      HIWORD(time2.epoch) = 2114;
      v25 = title;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ((v9 & 1) == 0)
  {
    v32 = 0;
    v31 = OS_LOG_TYPE_DEFAULT;
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v21 = v32;
    if (os_log_type_enabled(v20, v31))
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 & 0xFFFFFFFE;
    }

    if (v22)
    {
      v23 = self->_title;
      LODWORD(time2.value) = 136316162;
      *(&time2.value + 4) = "[FigCaptureFrameCounter incrementWithPTS:]";
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = self;
      HIWORD(time2.epoch) = 2114;
      v25 = v23;
      v26 = 2112;
      v27 = v7;
      v28 = 1024;
      v29 = v10;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)stop
{
  os_unfair_lock_lock(&self->_lock);
  started = self->_started;
  if (started)
  {
    self->_started = 0;
    timer = self->_timer;
    if (timer)
    {
      dispatch_source_cancel(timer);
      dispatch_release(self->_timer);
      self->_timer = 0;
    }

    timerQueue = self->_timerQueue;
    if (timerQueue)
    {
      dispatch_release(timerQueue);
      self->_timerQueue = 0;
    }

    [(FigCaptureFrameCounter *)self _summaryIsolated];
    v6 = MEMORY[0x1E6960CC0];
    self->_totalFramesCount = 0;
    v7 = *v6;
    *&self->_totalFirstFramePTS.value = *v6;
    v8 = *(v6 + 2);
    self->_totalFirstFramePTS.epoch = v8;
    *&self->_totalLastFramePTS.value = v7;
    self->_intervalFirstFramePTS.epoch = v8;
    self->_intervalLastFramePTS.epoch = v8;
    self->_totalLastFramePTS.epoch = v8;
    self->_intervalFramesCount = 0;
    *&self->_intervalFirstFramePTS.value = v7;
    *&self->_intervalLastFramePTS.value = v7;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (started && dword_1ED844690 != 0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!started)
  {
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (id)summary
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(FigCaptureFrameCounter *)self _summaryIsolated];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)_summaryIsolated
{
  os_unfair_lock_assert_owner(&self->_lock);
  totalFramesCount = self->_totalFramesCount;
  totalFirstFramePTS = self->_totalFirstFramePTS;
  totalLastFramePTS = self->_totalLastFramePTS;
  [(FigCaptureFrameCounter *)self _frameRateWithFramesCount:totalFramesCount firstFramePTS:&totalFirstFramePTS lastFramePTS:&totalLastFramePTS];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"Total frames %ld, fps %f", self->_totalFramesCount, v4];
}

- (double)_frameRateWithFramesCount:(int64_t)a3 firstFramePTS:(id *)a4 lastFramePTS:(id *)a5
{
  memset(&v10, 0, sizeof(v10));
  lhs = *a5;
  v8 = *a4;
  CMTimeSubtract(&v10, &lhs, &v8);
  lhs = v10;
  Seconds = CMTimeGetSeconds(&lhs);
  result = 0.0;
  if (a3 >= 1 && Seconds > 0.0)
  {
    return a3 / Seconds;
  }

  return result;
}

@end