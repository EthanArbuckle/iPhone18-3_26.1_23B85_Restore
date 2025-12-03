@interface MTMediaActivityTracker
- (MTMediaActivityTracker)initWithVPAFKit:(id)kit playlist:(id)playlist eventData:(id)data;
- (MTVPAFKit)vpafKit;
- (NSMutableArray)eventData;
- (id)combineEventData:(id)data withPlaylistDataForItem:(id)item;
- (id)startActivity:(int64_t)activity overallPosition:(unint64_t)position type:(id)type reason:(id)reason eventData:(id)data;
- (void)generatePlaylistTransitionsIfNecessary:(unint64_t)necessary;
- (void)playStartedWithPlaybackRate:(float)rate overallPosition:(unint64_t)position type:(id)type reason:(id)reason eventData:(id)data;
- (void)playStoppedAtOverallPosition:(unint64_t)position type:(id)type reason:(id)reason eventData:(id)data;
- (void)playTransitionedAtOverallPosition:(unint64_t)position eventData:(id)data;
- (void)resetEventData:(id)data;
- (void)stopActivity:(int64_t)activity overallPosition:(unint64_t)position type:(id)type reason:(id)reason eventData:(id)data;
- (void)synchronizeAtOverallPosition:(unint64_t)position;
- (void)synchronizePlaybackRate:(float)rate overallPosition:(unint64_t)position;
- (void)updateEventData:(id)data;
@end

@implementation MTMediaActivityTracker

- (MTMediaActivityTracker)initWithVPAFKit:(id)kit playlist:(id)playlist eventData:(id)data
{
  kitCopy = kit;
  playlistCopy = playlist;
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = MTMediaActivityTracker;
  v11 = [(MTMediaActivityTracker *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(MTMediaActivityTracker *)v11 setVpafKit:kitCopy];
    [(MTMediaActivityTracker *)v12 setPlaylist:playlistCopy];
    v13 = [dataCopy mutableCopy];
    [(MTMediaActivityTracker *)v12 setEventData:v13];

    [(MTMediaActivityTracker *)v12 setShouldGenerateTransitions:1];
  }

  return v12;
}

- (void)playStartedWithPlaybackRate:(float)rate overallPosition:(unint64_t)position type:(id)type reason:(id)reason eventData:(id)data
{
  v10 = [(MTMediaActivityTracker *)self startActivity:0 overallPosition:position type:type reason:reason eventData:data];
  if ([(MTMediaActivityTracker *)self shouldGenerateTransitions])
  {
    v11 = [MTMediaTimeTracker alloc];
    *&v12 = rate;
    v13 = [(MTMediaTimeTracker *)v11 initWithPosition:position playbackRate:v12];
    [(MTMediaActivityTracker *)self setTimeTracker:v13];
  }
}

- (void)playStoppedAtOverallPosition:(unint64_t)position type:(id)type reason:(id)reason eventData:(id)data
{
  dataCopy = data;
  reasonCopy = reason;
  typeCopy = type;
  [(MTMediaActivityTracker *)self generatePlaylistTransitionsIfNecessary:position];
  [(MTMediaActivityTracker *)self stopActivity:0 overallPosition:position type:typeCopy reason:reasonCopy eventData:dataCopy];

  [(MTMediaActivityTracker *)self setTimeTracker:0];
}

- (void)playTransitionedAtOverallPosition:(unint64_t)position eventData:(id)data
{
  dataCopy = data;
  [(MTMediaActivityTracker *)self stopActivity:0 overallPosition:position type:@"automatic" reason:@"transition" eventData:dataCopy];
  v6 = [(MTMediaActivityTracker *)self startActivity:0 overallPosition:position type:@"automatic" reason:@"transition" eventData:dataCopy];
}

- (void)synchronizePlaybackRate:(float)rate overallPosition:(unint64_t)position
{
  playActivity = [(MTMediaActivityTracker *)self playActivity];
  v22 = playActivity;
  if (!playActivity || [playActivity type])
  {
    v14 = rate <= 0.0;
    goto LABEL_4;
  }

  v14 = rate <= 0.0;
  isStopped = [v22 isStopped];
  if ((isStopped & 1) != 0 || rate <= 0.0)
  {
    if (rate > 0.0)
    {
      v20 = 1;
    }

    else
    {
      v20 = isStopped;
    }

    if ((v20 & 1) == 0)
    {
      v15 = @"Inconsistent state: did you forget to call playStopped?";
LABEL_6:
      v16 = MTConfigurationError(110, v15, v8, v9, v10, v11, v12, v13, v21);
      goto LABEL_7;
    }

    if (((isStopped ^ 1) & 1) == 0)
    {
LABEL_4:
      if (v14)
      {
        goto LABEL_7;
      }

      v15 = @"Inconsistent state: did you forget to call playStarted?";
      goto LABEL_6;
    }
  }

  else
  {
    [(MTMediaActivityTracker *)self generatePlaylistTransitionsIfNecessary:position];
    timeTracker = [(MTMediaActivityTracker *)self timeTracker];
    *&v19 = rate;
    [timeTracker updatePosition:position playbackRate:v19];
  }

LABEL_7:

  MEMORY[0x2821F96F8]();
}

- (void)synchronizeAtOverallPosition:(unint64_t)position
{
  timeTracker = [(MTMediaActivityTracker *)self timeTracker];
  [timeTracker playbackRate];
  [(MTMediaActivityTracker *)self synchronizePlaybackRate:position overallPosition:?];
}

- (void)updateEventData:(id)data
{
  dataCopy = data;
  eventData = [(MTMediaActivityTracker *)self eventData];
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
    array = [MEMORY[0x277CBEB18] array];
  }

  eventData = self->_eventData;
  self->_eventData = array;

  MEMORY[0x2821F96F8]();
}

- (NSMutableArray)eventData
{
  eventData = self->_eventData;
  if (!eventData)
  {
    array = [MEMORY[0x277CBEB18] array];
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
  array = [MEMORY[0x277CBEB18] array];
  playlist = [(MTMediaActivityTracker *)self playlist];
  if (objc_opt_respondsToSelector())
  {
    playlist2 = [(MTMediaActivityTracker *)self playlist];
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

  eventData3 = [(MTMediaActivityTracker *)self eventData];
  [array addObjectsFromArray:eventData3];

  if (dataCopy)
  {
    [array addObjectsFromArray:dataCopy];
  }

  v14 = [array copy];

  return v14;
}

- (id)startActivity:(int64_t)activity overallPosition:(unint64_t)position type:(id)type reason:(id)reason eventData:(id)data
{
  dataCopy = data;
  reasonCopy = reason;
  typeCopy = type;
  playlist = [(MTMediaActivityTracker *)self playlist];
  v16 = [playlist itemAtOverallPosition:position rangeOptions:1];

  v17 = [MTMediaActivity alloc];
  vpafKit = [(MTMediaActivityTracker *)self vpafKit];
  v19 = [(MTMediaActivity *)v17 initWithType:activity playlistItem:v16 pafKit:vpafKit];

  v20 = [(MTMediaActivityTracker *)self combineEventData:dataCopy withPlaylistDataForItem:v16];

  [(MTMediaActivity *)v19 startedAtOverallPosition:position type:typeCopy reason:reasonCopy eventData:v20];
  if (activity == 1)
  {
    [(MTMediaActivityTracker *)self setSeekActivity:v19];
  }

  else if (!activity)
  {
    [(MTMediaActivityTracker *)self setPlayActivity:v19];
  }

  return v19;
}

- (void)stopActivity:(int64_t)activity overallPosition:(unint64_t)position type:(id)type reason:(id)reason eventData:(id)data
{
  typeCopy = type;
  reasonCopy = reason;
  dataCopy = data;
  if (activity == 1)
  {
    seekActivity = [(MTMediaActivityTracker *)self seekActivity];
    [(MTMediaActivityTracker *)self setSeekActivity:0];
    playlist = [(MTMediaActivityTracker *)self playlist];
    v22 = [playlist itemAtOverallPosition:position rangeOptions:2];
    [seekActivity setPlaylistItem:v22];

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

    seekActivity = [(MTMediaActivityTracker *)self playActivity];
    [(MTMediaActivityTracker *)self setPlayActivity:0];
    if (!seekActivity)
    {
      goto LABEL_9;
    }
  }

  if (![seekActivity isStopped])
  {
    playlistItem = [seekActivity playlistItem];
    v24 = [(MTMediaActivityTracker *)self combineEventData:dataCopy withPlaylistDataForItem:playlistItem];
    [seekActivity stoppedAtOverallPosition:position type:typeCopy reason:reasonCopy eventData:v24];

    goto LABEL_10;
  }

LABEL_9:
  v25 = MTConfigurationError(110, @"There is no %@ activity to stop.", v13, v14, v15, v16, v17, v18, activity);
LABEL_10:
}

- (void)generatePlaylistTransitionsIfNecessary:(unint64_t)necessary
{
  v30[2] = *MEMORY[0x277D85DE8];
  if ([(MTMediaActivityTracker *)self shouldGenerateTransitions])
  {
    playActivity = [(MTMediaActivityTracker *)self playActivity];
    v6 = playActivity;
    if (playActivity && ![playActivity type] && (objc_msgSend(v6, "isStopped") & 1) == 0)
    {
      eventDataForTransitioningEvents = [v6 eventDataForTransitioningEvents];
      playlist = [(MTMediaActivityTracker *)self playlist];
      playlistItem = [v6 playlistItem];
      v9 = [playlist itemsBetweenStartOverallPosition:+[MTMediaActivity startOverallPositionForItem:](MTMediaActivity endOverallPosition:{"startOverallPositionForItem:", playlistItem), necessary}];

      playlist2 = [(MTMediaActivityTracker *)self playlist];
      objc_opt_class();
      LOBYTE(playlistItem) = objc_opt_isKindOfClass();

      if (playlistItem)
      {
        v11 = v9;
      }

      else
      {
        v12 = +[MTMediaActivityTracker playlistItemComparator];
        v11 = [v9 sortedArrayUsingComparator:v12];
      }

      if ([v11 count] >= 2)
      {
        for (i = 1; [v11 count] > i; ++i)
        {
          v14 = [v11 objectAtIndexedSubscript:i];
          v15 = [MTMediaActivity startOverallPositionForItem:v14];
          playlistItem2 = [v6 playlistItem];
          v17 = [MTMediaActivity startOverallPositionForItem:playlistItem2];

          if (v15 > v17)
          {
            if (v15 >= necessary)
            {

              break;
            }

            timeTracker = [(MTMediaActivityTracker *)self timeTracker];
            v27 = [timeTracker estimatedTimeAtPosition:v15];

            v28 = @"eventTime";
            mt_millisecondsSince1970 = [v27 mt_millisecondsSince1970];
            v29 = mt_millisecondsSince1970;
            [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
            v21 = v20 = v11;
            v30[0] = v21;
            v30[1] = eventDataForTransitioningEvents;
            [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
            v23 = v22 = necessary;

            v11 = v20;
            [(MTMediaActivityTracker *)self stopActivity:0 overallPosition:v15 type:@"automatic" reason:@"transition" eventData:v23];
            v24 = [(MTMediaActivityTracker *)self startActivity:0 overallPosition:v15 type:@"automatic" reason:@"transition" eventData:v23];

            necessary = v22;
            v6 = v24;
          }
        }
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __48__MTMediaActivityTracker_playlistItemComparator__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MTMediaActivity startOverallPositionForItem:a2];
  v6 = [MTMediaActivity startOverallPositionForItem:v4];

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

- (MTVPAFKit)vpafKit
{
  WeakRetained = objc_loadWeakRetained(&self->_vpafKit);

  return WeakRetained;
}

@end