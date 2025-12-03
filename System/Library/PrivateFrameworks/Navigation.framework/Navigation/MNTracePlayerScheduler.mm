@interface MNTracePlayerScheduler
- (MNTracePlayerScheduler)init;
- (MNTracePlayerSchedulerDelegate)delegate;
- (void)_timerFired;
- (void)_update;
- (void)addTimelineStream:(id)stream;
- (void)dealloc;
- (void)pause;
- (void)removeAllTimelineStreams;
- (void)removeTimelineStream:(id)stream;
- (void)resume;
- (void)setPosition:(double)position;
@end

@implementation MNTracePlayerScheduler

- (MNTracePlayerSchedulerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_timerFired
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  speedMultiplier = self->_speedMultiplier;
  v5 = v4 - self->_lastTimerScheduleTime;
  self->_lastTimerScheduleTime = v4;
  v6 = 0.0333333333;
  if (v5 <= 1.0)
  {
    v6 = v5;
  }

  position = self->_position;
  v8 = position + v6 * speedMultiplier;
  self->_position = v8;
  if (floor(position) != floor(v8))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained tracePlayerScheduler:self didUpdatePosition:self->_position];
  }

  [(MNTracePlayerScheduler *)self _update];
}

- (void)_update
{
  v25 = *MEMORY[0x1E69E9840];
  p_nextTimelineStream = &self->_nextTimelineStream;
  position = self->_position;
  [(MNTracePlayerTimelineStream *)self->_nextTimelineStream nextUpdatePosition];
  if (position >= v5)
  {
    [(MNTracePlayerTimelineStream *)*p_nextTimelineStream triggerNextUpdate];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self->_timelineStreams;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v21;
    v11 = 978307200.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        [v13 nextUpdatePosition];
        if (v14 < v11)
        {
          [v13 nextUpdatePosition];
          v11 = v15;
          v16 = v13;

          v9 = v16;
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(p_nextTimelineStream, v9);
  if (*p_nextTimelineStream)
  {
    v17 = self->_position;
    [(MNTracePlayerTimelineStream *)*p_nextTimelineStream nextUpdatePosition];
    if (v17 >= v18)
    {
      [(MNTracePlayerScheduler *)self _update];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)pause
{
  [(MNDispatchTimer *)self->_timer cancel];
  timer = self->_timer;
  self->_timer = 0;
}

- (void)resume
{
  if (!self->_timer)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    self->_lastTimerScheduleTime = v3;
    [(MNDispatchTimer *)self->_timer cancel];
    objc_initWeak(&location, self);
    v4 = [MNDispatchTimer alloc];
    v5 = MNNavigationQueue();
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __32__MNTracePlayerScheduler_resume__block_invoke;
    v11 = &unk_1E8430EA0;
    objc_copyWeak(&v12, &location);
    v6 = [(MNDispatchTimer *)v4 initWithTime:1 repeating:v5 queue:&v8 handler:0.0333333333];
    timer = self->_timer;
    self->_timer = v6;

    [(MNDispatchTimer *)self->_timer activate:v8];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __32__MNTracePlayerScheduler_resume__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _timerFired];
}

- (void)removeAllTimelineStreams
{
  [(NSMutableArray *)self->_timelineStreams removeAllObjects];
  nextTimelineStream = self->_nextTimelineStream;
  self->_nextTimelineStream = 0;
}

- (void)removeTimelineStream:(id)stream
{
  timelineStreams = self->_timelineStreams;
  streamCopy = stream;
  [(NSMutableArray *)timelineStreams removeObject:streamCopy];
  nextTimelineStream = self->_nextTimelineStream;

  if (nextTimelineStream == streamCopy)
  {
    self->_nextTimelineStream = 0;
  }
}

- (void)addTimelineStream:(id)stream
{
  streamCopy = stream;
  timelineStreams = self->_timelineStreams;
  v8 = streamCopy;
  if (!timelineStreams)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_timelineStreams;
    self->_timelineStreams = array;

    streamCopy = v8;
    timelineStreams = self->_timelineStreams;
  }

  [(NSMutableArray *)timelineStreams addObject:streamCopy];
  [v8 jumpToPosition:self->_position];
}

- (void)setPosition:(double)position
{
  v15 = *MEMORY[0x1E69E9840];
  self->_position = position;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_timelineStreams;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) jumpToPosition:{position, v10}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(MNDispatchTimer *)self->_timer cancel];
  v3.receiver = self;
  v3.super_class = MNTracePlayerScheduler;
  [(MNTracePlayerScheduler *)&v3 dealloc];
}

- (MNTracePlayerScheduler)init
{
  v6.receiver = self;
  v6.super_class = MNTracePlayerScheduler;
  v2 = [(MNTracePlayerScheduler *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_speedMultiplier = 1.0;
    v4 = v2;
  }

  return v3;
}

@end