@interface JEMediaActivityTracker
- (JEMediaActivityTracker)initWithPipeline:(id)a3 playlist:(id)a4 eventData:(id)a5 topic:(id)a6;
- (NSMutableArray)eventData;
- (id)combineEventData:(id)a3 withPlaylistDataForItem:(id)a4;
- (id)startActivity:(int64_t)a3 overallPosition:(unint64_t)a4 type:(id)a5 reason:(id)a6 eventData:(id)a7 transitioningEventData:(id)a8;
- (void)generatePlaylistTransitionsIfNecessary:(unint64_t)a3;
- (void)playStartedWithPlaybackRate:(float)a3 overallPosition:(unint64_t)a4 type:(id)a5 reason:(id)a6 eventData:(id)a7;
- (void)playStoppedAtOverallPosition:(unint64_t)a3 type:(id)a4 reason:(id)a5 eventData:(id)a6;
- (void)playTransitionedAtOverallPosition:(unint64_t)a3 eventData:(id)a4;
- (void)resetEventData:(id)a3;
- (void)stopActivity:(int64_t)a3 overallPosition:(unint64_t)a4 type:(id)a5 reason:(id)a6 eventData:(id)a7 transitioningEventData:(id)a8;
- (void)synchronizeAtOverallPosition:(unint64_t)a3;
- (void)synchronizePlaybackRate:(float)a3 overallPosition:(unint64_t)a4;
- (void)updateEventData:(id)a3;
@end

@implementation JEMediaActivityTracker

- (JEMediaActivityTracker)initWithPipeline:(id)a3 playlist:(id)a4 eventData:(id)a5 topic:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = JEMediaActivityTracker;
  v14 = [(JEMediaActivityTracker *)&v18 init];
  v15 = v14;
  if (v14)
  {
    [(JEMediaActivityTracker *)v14 setTopic:v13];
    [(JEMediaActivityTracker *)v15 setPipeline:v10];
    [(JEMediaActivityTracker *)v15 setPlaylist:v11];
    v16 = [v12 mutableCopy];
    [(JEMediaActivityTracker *)v15 setEventData:v16];

    [(JEMediaActivityTracker *)v15 setShouldGenerateTransitions:1];
  }

  return v15;
}

- (void)playStartedWithPlaybackRate:(float)a3 overallPosition:(unint64_t)a4 type:(id)a5 reason:(id)a6 eventData:(id)a7
{
  v10 = [(JEMediaActivityTracker *)self startActivity:0 overallPosition:a4 type:a5 reason:a6 eventData:a7 transitioningEventData:0];
  if ([(JEMediaActivityTracker *)self shouldGenerateTransitions])
  {
    v11 = [JEMediaTimeTracker alloc];
    *&v12 = a3;
    v13 = [(JEMediaTimeTracker *)v11 initWithPosition:a4 playbackRate:v12];
    [(JEMediaActivityTracker *)self setTimeTracker:v13];
  }
}

- (void)playStoppedAtOverallPosition:(unint64_t)a3 type:(id)a4 reason:(id)a5 eventData:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  [(JEMediaActivityTracker *)self generatePlaylistTransitionsIfNecessary:a3];
  [(JEMediaActivityTracker *)self stopActivity:0 overallPosition:a3 type:v12 reason:v11 eventData:v10 transitioningEventData:0];

  [(JEMediaActivityTracker *)self setTimeTracker:0];
}

- (void)playTransitionedAtOverallPosition:(unint64_t)a3 eventData:(id)a4
{
  v7 = a4;
  [(JEMediaActivityTracker *)self stopActivity:0 overallPosition:a3 type:@"automatic" reason:@"transition" eventData:v7 transitioningEventData:0];
  v6 = [(JEMediaActivityTracker *)self startActivity:0 overallPosition:a3 type:@"automatic" reason:@"transition" eventData:v7 transitioningEventData:0];
}

- (void)synchronizePlaybackRate:(float)a3 overallPosition:(unint64_t)a4
{
  v7 = [(JEMediaActivityTracker *)self playActivity];
  v8 = v7;
  if (v7 && ![v7 type])
  {
    v9 = a3 <= 0.0;
    v12 = [v8 isStopped];
    if ((v12 & 1) == 0 && a3 > 0.0)
    {
      [(JEMediaActivityTracker *)self generatePlaylistTransitionsIfNecessary:a4];
      v13 = [(JEMediaActivityTracker *)self timeTracker];
      *&v14 = a3;
      [v13 updatePosition:a4 playbackRate:v14];

      goto LABEL_9;
    }

    if (a3 > 0.0)
    {
      v15 = 1;
    }

    else
    {
      v15 = v12;
    }

    if ((v15 & 1) == 0)
    {
      v10 = JEMetricsOSLog();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      v17 = 0;
      v11 = &v17;
      goto LABEL_7;
    }

    if ((v12 ^ 1))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = a3 <= 0.0;
  }

  if (!v9)
  {
    v10 = JEMetricsOSLog();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_8:

      goto LABEL_9;
    }

    v16 = 0;
    v11 = &v16;
LABEL_7:
    _os_log_impl(&dword_1AB012000, v10, OS_LOG_TYPE_ERROR, "JetEngine: Inconsistent state: did you forget to call playStopped?", v11, 2u);
    goto LABEL_8;
  }

LABEL_9:
}

- (void)synchronizeAtOverallPosition:(unint64_t)a3
{
  v5 = [(JEMediaActivityTracker *)self timeTracker];
  [v5 playbackRate];
  [(JEMediaActivityTracker *)self synchronizePlaybackRate:a3 overallPosition:?];
}

- (void)updateEventData:(id)a3
{
  v4 = a3;
  v5 = [(JEMediaActivityTracker *)self eventData];
  [v5 addObjectsFromArray:v4];
}

- (void)resetEventData:(id)a3
{
  if (a3)
  {
    v4 = [a3 mutableCopy];
  }

  else
  {
    v4 = [MEMORY[0x1E695DF70] array];
  }

  self->_eventData = v4;

  MEMORY[0x1EEE66BB8]();
}

- (NSMutableArray)eventData
{
  eventData = self->_eventData;
  if (!eventData)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = self->_eventData;
    self->_eventData = v4;

    eventData = self->_eventData;
  }

  return eventData;
}

- (id)combineEventData:(id)a3 withPlaylistDataForItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [(JEMediaActivityTracker *)self playlist];
  if (objc_opt_respondsToSelector())
  {
    v10 = [(JEMediaActivityTracker *)self playlist];
    v11 = [v10 eventData];
  }

  else
  {
    v11 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v12 = 0;
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = [v7 eventData];
  if (v11)
  {
LABEL_8:
    [v8 addObjectsFromArray:v11];
  }

LABEL_9:
  if (v12)
  {
    [v8 addObjectsFromArray:v12];
  }

  v13 = [(JEMediaActivityTracker *)self eventData];
  [v8 addObjectsFromArray:v13];

  if (v6)
  {
    [v8 addObjectsFromArray:v6];
  }

  v14 = [v8 copy];

  return v14;
}

- (id)startActivity:(int64_t)a3 overallPosition:(unint64_t)a4 type:(id)a5 reason:(id)a6 eventData:(id)a7 transitioningEventData:(id)a8
{
  v25 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = [(JEMediaActivityTracker *)self playlist];
  v18 = [v17 itemAtOverallPosition:a4 rangeOptions:1];

  v19 = [JEMediaActivity alloc];
  v20 = [(JEMediaActivityTracker *)self pipeline];
  v21 = [(JEMediaActivityTracker *)self topic];
  v22 = [(JEMediaActivity *)v19 initWithType:a3 playlistItem:v18 pipeline:v20 topic:v21];

  v23 = [(JEMediaActivityTracker *)self combineEventData:v14 withPlaylistDataForItem:v18];

  [(JEMediaActivity *)v22 startedAtOverallPosition:a4 type:v16 reason:v15 eventData:v23 transitioningEventData:v25];
  if (a3 == 1)
  {
    [(JEMediaActivityTracker *)self setSeekActivity:v22];
  }

  else if (!a3)
  {
    [(JEMediaActivityTracker *)self setPlayActivity:v22];
  }

  return v22;
}

- (void)stopActivity:(int64_t)a3 overallPosition:(unint64_t)a4 type:(id)a5 reason:(id)a6 eventData:(id)a7 transitioningEventData:(id)a8
{
  v26 = *MEMORY[0x1E69E9840];
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (a3 == 1)
  {
    v18 = [(JEMediaActivityTracker *)self seekActivity];
    [(JEMediaActivityTracker *)self setSeekActivity:0];
    v19 = [(JEMediaActivityTracker *)self playlist];
    v20 = [v19 itemAtOverallPosition:a4 rangeOptions:2];
    [v18 setPlaylistItem:v20];

    if (!v18)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (a3)
    {
      v18 = 0;
      goto LABEL_9;
    }

    v18 = [(JEMediaActivityTracker *)self playActivity];
    [(JEMediaActivityTracker *)self setPlayActivity:0];
    if (!v18)
    {
      goto LABEL_9;
    }
  }

  if (![v18 isStopped])
  {
    v21 = [v18 playlistItem];
    v22 = [(JEMediaActivityTracker *)self combineEventData:v16 withPlaylistDataForItem:v21];
    [v18 stoppedAtOverallPosition:a4 type:v14 reason:v15 eventData:v22 transitioningEventData:v17];

    goto LABEL_12;
  }

LABEL_9:
  v23 = JEMetricsOSLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = 134217984;
    v25 = a3;
    _os_log_impl(&dword_1AB012000, v23, OS_LOG_TYPE_ERROR, "JetEngine: There is no %ld activity to stop.", &v24, 0xCu);
  }

LABEL_12:
}

- (void)generatePlaylistTransitionsIfNecessary:(unint64_t)a3
{
  v31[1] = *MEMORY[0x1E69E9840];
  if ([(JEMediaActivityTracker *)self shouldGenerateTransitions])
  {
    v5 = [(JEMediaActivityTracker *)self playActivity];
    v6 = v5;
    if (v5 && ![v5 type] && (objc_msgSend(v6, "isStopped") & 1) == 0)
    {
      v27 = [v6 eventDataForTransitioningEvents];
      v7 = [(JEMediaActivityTracker *)self playlist];
      v8 = [v6 playlistItem];
      v9 = [v7 itemsBetweenStartOverallPosition:objc_msgSend(v8 endOverallPosition:{"startOverallPosition"), a3}];

      v10 = [(JEMediaActivityTracker *)self playlist];
      objc_opt_class();
      LOBYTE(v8) = objc_opt_isKindOfClass();

      if ((v8 & 1) == 0)
      {
        v11 = +[JEMediaActivityTracker playlistItemComparator];
        v12 = [v9 sortedArrayUsingComparator:v11];

        v9 = v12;
      }

      if ([v9 count] >= 2)
      {
        v13 = 1;
        v26 = v9;
        do
        {
          v14 = [v9 objectAtIndexedSubscript:v13];
          v15 = [v14 startOverallPosition];
          v16 = [v6 playlistItem];
          v17 = [v16 startOverallPosition];

          if (v15 > v17)
          {
            if (v15 >= a3)
            {

              break;
            }

            v18 = [(JEMediaActivityTracker *)self timeTracker];
            v28 = [v18 estimatedTimeAtPosition:v15];

            v19 = MEMORY[0x1E696AD98];
            [v28 timeIntervalSince1970];
            v21 = [v19 numberWithLongLong:(v20 * 1000.0)];
            v29 = @"eventTime";
            v30 = v21;
            v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
            v31[0] = v22;
            [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
            v24 = v23 = a3;

            [(JEMediaActivityTracker *)self stopActivity:0 overallPosition:v15 type:@"automatic" reason:@"transition" eventData:v24 transitioningEventData:v27];
            v25 = [(JEMediaActivityTracker *)self startActivity:0 overallPosition:v15 type:@"automatic" reason:@"transition" eventData:v24 transitioningEventData:v27];

            a3 = v23;
            v9 = v26;

            v6 = v25;
          }

          ++v13;
        }

        while ([v9 count] > v13);
      }
    }
  }
}

uint64_t __48__JEMediaActivityTracker_playlistItemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startOverallPosition];
  v6 = [v4 startOverallPosition];

  v7 = -1;
  if (v5 >= v6)
  {
    v7 = 1;
  }

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

@end