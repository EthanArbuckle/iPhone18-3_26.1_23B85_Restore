@interface JEMediaActivityTracker
- (JEMediaActivityTracker)initWithPipeline:(id)pipeline playlist:(id)playlist eventData:(id)data topic:(id)topic;
- (NSMutableArray)eventData;
- (id)combineEventData:(id)data withPlaylistDataForItem:(id)item;
- (id)startActivity:(int64_t)activity overallPosition:(unint64_t)position type:(id)type reason:(id)reason eventData:(id)data transitioningEventData:(id)eventData;
- (void)generatePlaylistTransitionsIfNecessary:(unint64_t)necessary;
- (void)playStartedWithPlaybackRate:(float)rate overallPosition:(unint64_t)position type:(id)type reason:(id)reason eventData:(id)data;
- (void)playStoppedAtOverallPosition:(unint64_t)position type:(id)type reason:(id)reason eventData:(id)data;
- (void)playTransitionedAtOverallPosition:(unint64_t)position eventData:(id)data;
- (void)resetEventData:(id)data;
- (void)stopActivity:(int64_t)activity overallPosition:(unint64_t)position type:(id)type reason:(id)reason eventData:(id)data transitioningEventData:(id)eventData;
- (void)synchronizeAtOverallPosition:(unint64_t)position;
- (void)synchronizePlaybackRate:(float)rate overallPosition:(unint64_t)position;
- (void)updateEventData:(id)data;
@end

@implementation JEMediaActivityTracker

- (JEMediaActivityTracker)initWithPipeline:(id)pipeline playlist:(id)playlist eventData:(id)data topic:(id)topic
{
  pipelineCopy = pipeline;
  playlistCopy = playlist;
  dataCopy = data;
  topicCopy = topic;
  v18.receiver = self;
  v18.super_class = JEMediaActivityTracker;
  v14 = [(JEMediaActivityTracker *)&v18 init];
  v15 = v14;
  if (v14)
  {
    [(JEMediaActivityTracker *)v14 setTopic:topicCopy];
    [(JEMediaActivityTracker *)v15 setPipeline:pipelineCopy];
    [(JEMediaActivityTracker *)v15 setPlaylist:playlistCopy];
    v16 = [dataCopy mutableCopy];
    [(JEMediaActivityTracker *)v15 setEventData:v16];

    [(JEMediaActivityTracker *)v15 setShouldGenerateTransitions:1];
  }

  return v15;
}

- (void)playStartedWithPlaybackRate:(float)rate overallPosition:(unint64_t)position type:(id)type reason:(id)reason eventData:(id)data
{
  v10 = [(JEMediaActivityTracker *)self startActivity:0 overallPosition:position type:type reason:reason eventData:data transitioningEventData:0];
  if ([(JEMediaActivityTracker *)self shouldGenerateTransitions])
  {
    v11 = [JEMediaTimeTracker alloc];
    *&v12 = rate;
    v13 = [(JEMediaTimeTracker *)v11 initWithPosition:position playbackRate:v12];
    [(JEMediaActivityTracker *)self setTimeTracker:v13];
  }
}

- (void)playStoppedAtOverallPosition:(unint64_t)position type:(id)type reason:(id)reason eventData:(id)data
{
  dataCopy = data;
  reasonCopy = reason;
  typeCopy = type;
  [(JEMediaActivityTracker *)self generatePlaylistTransitionsIfNecessary:position];
  [(JEMediaActivityTracker *)self stopActivity:0 overallPosition:position type:typeCopy reason:reasonCopy eventData:dataCopy transitioningEventData:0];

  [(JEMediaActivityTracker *)self setTimeTracker:0];
}

- (void)playTransitionedAtOverallPosition:(unint64_t)position eventData:(id)data
{
  dataCopy = data;
  [(JEMediaActivityTracker *)self stopActivity:0 overallPosition:position type:@"automatic" reason:@"transition" eventData:dataCopy transitioningEventData:0];
  v6 = [(JEMediaActivityTracker *)self startActivity:0 overallPosition:position type:@"automatic" reason:@"transition" eventData:dataCopy transitioningEventData:0];
}

- (void)synchronizePlaybackRate:(float)rate overallPosition:(unint64_t)position
{
  playActivity = [(JEMediaActivityTracker *)self playActivity];
  v8 = playActivity;
  if (playActivity && ![playActivity type])
  {
    v9 = rate <= 0.0;
    isStopped = [v8 isStopped];
    if ((isStopped & 1) == 0 && rate > 0.0)
    {
      [(JEMediaActivityTracker *)self generatePlaylistTransitionsIfNecessary:position];
      timeTracker = [(JEMediaActivityTracker *)self timeTracker];
      *&v14 = rate;
      [timeTracker updatePosition:position playbackRate:v14];

      goto LABEL_9;
    }

    if (rate > 0.0)
    {
      v15 = 1;
    }

    else
    {
      v15 = isStopped;
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

    if ((isStopped ^ 1))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = rate <= 0.0;
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

- (void)synchronizeAtOverallPosition:(unint64_t)position
{
  timeTracker = [(JEMediaActivityTracker *)self timeTracker];
  [timeTracker playbackRate];
  [(JEMediaActivityTracker *)self synchronizePlaybackRate:position overallPosition:?];
}

- (void)updateEventData:(id)data
{
  dataCopy = data;
  eventData = [(JEMediaActivityTracker *)self eventData];
  [eventData addObjectsFromArray:dataCopy];
}

- (void)resetEventData:(id)data
{
  if (data)
  {
    array = [data mutableCopy];
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
  }

  self->_eventData = array;

  MEMORY[0x1EEE66BB8]();
}

- (NSMutableArray)eventData
{
  eventData = self->_eventData;
  if (!eventData)
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = self->_eventData;
    self->_eventData = array;

    eventData = self->_eventData;
  }

  return eventData;
}

- (id)combineEventData:(id)data withPlaylistDataForItem:(id)item
{
  dataCopy = data;
  itemCopy = item;
  array = [MEMORY[0x1E695DF70] array];
  playlist = [(JEMediaActivityTracker *)self playlist];
  if (objc_opt_respondsToSelector())
  {
    playlist2 = [(JEMediaActivityTracker *)self playlist];
    eventData = [playlist2 eventData];
  }

  else
  {
    eventData = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    eventData2 = 0;
    if (!eventData)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  eventData2 = [itemCopy eventData];
  if (eventData)
  {
LABEL_8:
    [array addObjectsFromArray:eventData];
  }

LABEL_9:
  if (eventData2)
  {
    [array addObjectsFromArray:eventData2];
  }

  eventData3 = [(JEMediaActivityTracker *)self eventData];
  [array addObjectsFromArray:eventData3];

  if (dataCopy)
  {
    [array addObjectsFromArray:dataCopy];
  }

  v14 = [array copy];

  return v14;
}

- (id)startActivity:(int64_t)activity overallPosition:(unint64_t)position type:(id)type reason:(id)reason eventData:(id)data transitioningEventData:(id)eventData
{
  eventDataCopy = eventData;
  dataCopy = data;
  reasonCopy = reason;
  typeCopy = type;
  playlist = [(JEMediaActivityTracker *)self playlist];
  v18 = [playlist itemAtOverallPosition:position rangeOptions:1];

  v19 = [JEMediaActivity alloc];
  pipeline = [(JEMediaActivityTracker *)self pipeline];
  topic = [(JEMediaActivityTracker *)self topic];
  v22 = [(JEMediaActivity *)v19 initWithType:activity playlistItem:v18 pipeline:pipeline topic:topic];

  v23 = [(JEMediaActivityTracker *)self combineEventData:dataCopy withPlaylistDataForItem:v18];

  [(JEMediaActivity *)v22 startedAtOverallPosition:position type:typeCopy reason:reasonCopy eventData:v23 transitioningEventData:eventDataCopy];
  if (activity == 1)
  {
    [(JEMediaActivityTracker *)self setSeekActivity:v22];
  }

  else if (!activity)
  {
    [(JEMediaActivityTracker *)self setPlayActivity:v22];
  }

  return v22;
}

- (void)stopActivity:(int64_t)activity overallPosition:(unint64_t)position type:(id)type reason:(id)reason eventData:(id)data transitioningEventData:(id)eventData
{
  v26 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  reasonCopy = reason;
  dataCopy = data;
  eventDataCopy = eventData;
  if (activity == 1)
  {
    seekActivity = [(JEMediaActivityTracker *)self seekActivity];
    [(JEMediaActivityTracker *)self setSeekActivity:0];
    playlist = [(JEMediaActivityTracker *)self playlist];
    v20 = [playlist itemAtOverallPosition:position rangeOptions:2];
    [seekActivity setPlaylistItem:v20];

    if (!seekActivity)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (activity)
    {
      seekActivity = 0;
      goto LABEL_9;
    }

    seekActivity = [(JEMediaActivityTracker *)self playActivity];
    [(JEMediaActivityTracker *)self setPlayActivity:0];
    if (!seekActivity)
    {
      goto LABEL_9;
    }
  }

  if (![seekActivity isStopped])
  {
    playlistItem = [seekActivity playlistItem];
    v22 = [(JEMediaActivityTracker *)self combineEventData:dataCopy withPlaylistDataForItem:playlistItem];
    [seekActivity stoppedAtOverallPosition:position type:typeCopy reason:reasonCopy eventData:v22 transitioningEventData:eventDataCopy];

    goto LABEL_12;
  }

LABEL_9:
  v23 = JEMetricsOSLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = 134217984;
    activityCopy = activity;
    _os_log_impl(&dword_1AB012000, v23, OS_LOG_TYPE_ERROR, "JetEngine: There is no %ld activity to stop.", &v24, 0xCu);
  }

LABEL_12:
}

- (void)generatePlaylistTransitionsIfNecessary:(unint64_t)necessary
{
  v31[1] = *MEMORY[0x1E69E9840];
  if ([(JEMediaActivityTracker *)self shouldGenerateTransitions])
  {
    playActivity = [(JEMediaActivityTracker *)self playActivity];
    v6 = playActivity;
    if (playActivity && ![playActivity type] && (objc_msgSend(v6, "isStopped") & 1) == 0)
    {
      eventDataForTransitioningEvents = [v6 eventDataForTransitioningEvents];
      playlist = [(JEMediaActivityTracker *)self playlist];
      playlistItem = [v6 playlistItem];
      v9 = [playlist itemsBetweenStartOverallPosition:objc_msgSend(playlistItem endOverallPosition:{"startOverallPosition"), necessary}];

      playlist2 = [(JEMediaActivityTracker *)self playlist];
      objc_opt_class();
      LOBYTE(playlistItem) = objc_opt_isKindOfClass();

      if ((playlistItem & 1) == 0)
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
          startOverallPosition = [v14 startOverallPosition];
          playlistItem2 = [v6 playlistItem];
          startOverallPosition2 = [playlistItem2 startOverallPosition];

          if (startOverallPosition > startOverallPosition2)
          {
            if (startOverallPosition >= necessary)
            {

              break;
            }

            timeTracker = [(JEMediaActivityTracker *)self timeTracker];
            v28 = [timeTracker estimatedTimeAtPosition:startOverallPosition];

            v19 = MEMORY[0x1E696AD98];
            [v28 timeIntervalSince1970];
            v21 = [v19 numberWithLongLong:(v20 * 1000.0)];
            v29 = @"eventTime";
            v30 = v21;
            v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
            v31[0] = v22;
            [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
            v24 = v23 = necessary;

            [(JEMediaActivityTracker *)self stopActivity:0 overallPosition:startOverallPosition type:@"automatic" reason:@"transition" eventData:v24 transitioningEventData:eventDataForTransitioningEvents];
            v25 = [(JEMediaActivityTracker *)self startActivity:0 overallPosition:startOverallPosition type:@"automatic" reason:@"transition" eventData:v24 transitioningEventData:eventDataForTransitioningEvents];

            necessary = v23;
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