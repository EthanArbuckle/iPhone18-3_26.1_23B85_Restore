@interface MTMediaActivityTracker
- (MTMediaActivityTracker)initWithVPAFKit:(id)a3 playlist:(id)a4 eventData:(id)a5;
- (MTVPAFKit)vpafKit;
- (NSMutableArray)eventData;
- (id)combineEventData:(id)a3 withPlaylistDataForItem:(id)a4;
- (id)startActivity:(int64_t)a3 overallPosition:(unint64_t)a4 type:(id)a5 reason:(id)a6 eventData:(id)a7;
- (void)generatePlaylistTransitionsIfNecessary:(unint64_t)a3;
- (void)playStartedWithPlaybackRate:(float)a3 overallPosition:(unint64_t)a4 type:(id)a5 reason:(id)a6 eventData:(id)a7;
- (void)playStoppedAtOverallPosition:(unint64_t)a3 type:(id)a4 reason:(id)a5 eventData:(id)a6;
- (void)playTransitionedAtOverallPosition:(unint64_t)a3 eventData:(id)a4;
- (void)resetEventData:(id)a3;
- (void)stopActivity:(int64_t)a3 overallPosition:(unint64_t)a4 type:(id)a5 reason:(id)a6 eventData:(id)a7;
- (void)synchronizeAtOverallPosition:(unint64_t)a3;
- (void)synchronizePlaybackRate:(float)a3 overallPosition:(unint64_t)a4;
- (void)updateEventData:(id)a3;
@end

@implementation MTMediaActivityTracker

- (MTMediaActivityTracker)initWithVPAFKit:(id)a3 playlist:(id)a4 eventData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = MTMediaActivityTracker;
  v11 = [(MTMediaActivityTracker *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(MTMediaActivityTracker *)v11 setVpafKit:v8];
    [(MTMediaActivityTracker *)v12 setPlaylist:v9];
    v13 = [v10 mutableCopy];
    [(MTMediaActivityTracker *)v12 setEventData:v13];

    [(MTMediaActivityTracker *)v12 setShouldGenerateTransitions:1];
  }

  return v12;
}

- (void)playStartedWithPlaybackRate:(float)a3 overallPosition:(unint64_t)a4 type:(id)a5 reason:(id)a6 eventData:(id)a7
{
  v10 = [(MTMediaActivityTracker *)self startActivity:0 overallPosition:a4 type:a5 reason:a6 eventData:a7];
  if ([(MTMediaActivityTracker *)self shouldGenerateTransitions])
  {
    v11 = [MTMediaTimeTracker alloc];
    *&v12 = a3;
    v13 = [(MTMediaTimeTracker *)v11 initWithPosition:a4 playbackRate:v12];
    [(MTMediaActivityTracker *)self setTimeTracker:v13];
  }
}

- (void)playStoppedAtOverallPosition:(unint64_t)a3 type:(id)a4 reason:(id)a5 eventData:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  [(MTMediaActivityTracker *)self generatePlaylistTransitionsIfNecessary:a3];
  [(MTMediaActivityTracker *)self stopActivity:0 overallPosition:a3 type:v12 reason:v11 eventData:v10];

  [(MTMediaActivityTracker *)self setTimeTracker:0];
}

- (void)playTransitionedAtOverallPosition:(unint64_t)a3 eventData:(id)a4
{
  v7 = a4;
  [(MTMediaActivityTracker *)self stopActivity:0 overallPosition:a3 type:@"automatic" reason:@"transition" eventData:v7];
  v6 = [(MTMediaActivityTracker *)self startActivity:0 overallPosition:a3 type:@"automatic" reason:@"transition" eventData:v7];
}

- (void)synchronizePlaybackRate:(float)a3 overallPosition:(unint64_t)a4
{
  v7 = [(MTMediaActivityTracker *)self playActivity];
  v22 = v7;
  if (!v7 || [v7 type])
  {
    v14 = a3 <= 0.0;
    goto LABEL_4;
  }

  v14 = a3 <= 0.0;
  v17 = [v22 isStopped];
  if ((v17 & 1) != 0 || a3 <= 0.0)
  {
    if (a3 > 0.0)
    {
      v20 = 1;
    }

    else
    {
      v20 = v17;
    }

    if ((v20 & 1) == 0)
    {
      v15 = @"Inconsistent state: did you forget to call playStopped?";
LABEL_6:
      v16 = MTConfigurationError(110, v15, v8, v9, v10, v11, v12, v13, v21);
      goto LABEL_7;
    }

    if (((v17 ^ 1) & 1) == 0)
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
    [(MTMediaActivityTracker *)self generatePlaylistTransitionsIfNecessary:a4];
    v18 = [(MTMediaActivityTracker *)self timeTracker];
    *&v19 = a3;
    [v18 updatePosition:a4 playbackRate:v19];
  }

LABEL_7:

  MEMORY[0x2821F96F8]();
}

- (void)synchronizeAtOverallPosition:(unint64_t)a3
{
  v5 = [(MTMediaActivityTracker *)self timeTracker];
  [v5 playbackRate];
  [(MTMediaActivityTracker *)self synchronizePlaybackRate:a3 overallPosition:?];
}

- (void)updateEventData:(id)a3
{
  v4 = a3;
  v5 = [(MTMediaActivityTracker *)self eventData];
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
    v4 = [MEMORY[0x277CBEB18] array];
  }

  eventData = self->_eventData;
  self->_eventData = v4;

  MEMORY[0x2821F96F8]();
}

- (NSMutableArray)eventData
{
  eventData = self->_eventData;
  if (!eventData)
  {
    v4 = [MEMORY[0x277CBEB18] array];
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
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [(MTMediaActivityTracker *)self playlist];
  if (objc_opt_respondsToSelector())
  {
    v10 = [(MTMediaActivityTracker *)self playlist];
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

  v13 = [(MTMediaActivityTracker *)self eventData];
  [v8 addObjectsFromArray:v13];

  if (v6)
  {
    [v8 addObjectsFromArray:v6];
  }

  v14 = [v8 copy];

  return v14;
}

- (id)startActivity:(int64_t)a3 overallPosition:(unint64_t)a4 type:(id)a5 reason:(id)a6 eventData:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = [(MTMediaActivityTracker *)self playlist];
  v16 = [v15 itemAtOverallPosition:a4 rangeOptions:1];

  v17 = [MTMediaActivity alloc];
  v18 = [(MTMediaActivityTracker *)self vpafKit];
  v19 = [(MTMediaActivity *)v17 initWithType:a3 playlistItem:v16 pafKit:v18];

  v20 = [(MTMediaActivityTracker *)self combineEventData:v12 withPlaylistDataForItem:v16];

  [(MTMediaActivity *)v19 startedAtOverallPosition:a4 type:v14 reason:v13 eventData:v20];
  if (a3 == 1)
  {
    [(MTMediaActivityTracker *)self setSeekActivity:v19];
  }

  else if (!a3)
  {
    [(MTMediaActivityTracker *)self setPlayActivity:v19];
  }

  return v19;
}

- (void)stopActivity:(int64_t)a3 overallPosition:(unint64_t)a4 type:(id)a5 reason:(id)a6 eventData:(id)a7
{
  v26 = a5;
  v12 = a6;
  v19 = a7;
  if (a3 == 1)
  {
    v20 = [(MTMediaActivityTracker *)self seekActivity];
    [(MTMediaActivityTracker *)self setSeekActivity:0];
    v21 = [(MTMediaActivityTracker *)self playlist];
    v22 = [v21 itemAtOverallPosition:a4 rangeOptions:2];
    [v20 setPlaylistItem:v22];

    if (!v20)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (a3)
    {
      v20 = 0;
      goto LABEL_9;
    }

    v20 = [(MTMediaActivityTracker *)self playActivity];
    [(MTMediaActivityTracker *)self setPlayActivity:0];
    if (!v20)
    {
      goto LABEL_9;
    }
  }

  if (![v20 isStopped])
  {
    v23 = [v20 playlistItem];
    v24 = [(MTMediaActivityTracker *)self combineEventData:v19 withPlaylistDataForItem:v23];
    [v20 stoppedAtOverallPosition:a4 type:v26 reason:v12 eventData:v24];

    goto LABEL_10;
  }

LABEL_9:
  v25 = MTConfigurationError(110, @"There is no %@ activity to stop.", v13, v14, v15, v16, v17, v18, a3);
LABEL_10:
}

- (void)generatePlaylistTransitionsIfNecessary:(unint64_t)a3
{
  v30[2] = *MEMORY[0x277D85DE8];
  if ([(MTMediaActivityTracker *)self shouldGenerateTransitions])
  {
    v5 = [(MTMediaActivityTracker *)self playActivity];
    v6 = v5;
    if (v5 && ![v5 type] && (objc_msgSend(v6, "isStopped") & 1) == 0)
    {
      v26 = [v6 eventDataForTransitioningEvents];
      v7 = [(MTMediaActivityTracker *)self playlist];
      v8 = [v6 playlistItem];
      v9 = [v7 itemsBetweenStartOverallPosition:+[MTMediaActivity startOverallPositionForItem:](MTMediaActivity endOverallPosition:{"startOverallPositionForItem:", v8), a3}];

      v10 = [(MTMediaActivityTracker *)self playlist];
      objc_opt_class();
      LOBYTE(v8) = objc_opt_isKindOfClass();

      if (v8)
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
          v16 = [v6 playlistItem];
          v17 = [MTMediaActivity startOverallPositionForItem:v16];

          if (v15 > v17)
          {
            if (v15 >= a3)
            {

              break;
            }

            v18 = [(MTMediaActivityTracker *)self timeTracker];
            v27 = [v18 estimatedTimeAtPosition:v15];

            v28 = @"eventTime";
            v19 = [v27 mt_millisecondsSince1970];
            v29 = v19;
            [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
            v21 = v20 = v11;
            v30[0] = v21;
            v30[1] = v26;
            [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
            v23 = v22 = a3;

            v11 = v20;
            [(MTMediaActivityTracker *)self stopActivity:0 overallPosition:v15 type:@"automatic" reason:@"transition" eventData:v23];
            v24 = [(MTMediaActivityTracker *)self startActivity:0 overallPosition:v15 type:@"automatic" reason:@"transition" eventData:v23];

            a3 = v22;
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