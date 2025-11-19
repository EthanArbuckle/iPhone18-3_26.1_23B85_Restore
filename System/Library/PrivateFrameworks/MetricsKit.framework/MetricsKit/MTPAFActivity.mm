@interface MTPAFActivity
- (MTPAFActivity)initWithType:(int64_t)a3 playbackRate:(float)a4 atMilliseconds:(unint64_t)a5 triggerType:(id)a6 reason:(id)a7 eventData:(id)a8;
- (void)addItemsFromPlaylist:(id)a3 pafKit:(id)a4;
- (void)startItemActivityIfPossible:(id)a3;
- (void)stopItemActivityIfPossible:(id)a3;
- (void)stoppedAtMilliseconds:(unint64_t)a3 triggerType:(id)a4 reason:(id)a5 eventData:(id)a6;
- (void)synchronizeAtMilliseconds:(unint64_t)a3;
- (void)updateItemActivities:(id)a3;
@end

@implementation MTPAFActivity

- (MTPAFActivity)initWithType:(int64_t)a3 playbackRate:(float)a4 atMilliseconds:(unint64_t)a5 triggerType:(id)a6 reason:(id)a7 eventData:(id)a8
{
  v14 = a6;
  v15 = a7;
  v16 = a8;
  if (a3 == 1)
  {
    v17 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_258F4B000, v17, OS_LOG_TYPE_DEBUG, "MetricsKit: MTPAFActivityTypeSeek is not supported yet", buf, 2u);
    }

    v18 = 0;
  }

  else
  {
    v25.receiver = self;
    v25.super_class = MTPAFActivity;
    v19 = [(MTPAFActivity *)&v25 init];
    v20 = v19;
    if (v19)
    {
      [(MTPAFActivity *)v19 setActivityType:a3];
      [(MTPAFActivity *)v20 setStartPosition:a5];
      [(MTPAFActivity *)v20 setLastPosition:a5];
      [(MTPAFActivity *)v20 setStartTriggerType:v14];
      [(MTPAFActivity *)v20 setStartReason:v15];
      [(MTPAFActivity *)v20 setStartEventData:v16];
      v21 = [MTMediaTimeTracker alloc];
      *&v22 = a4;
      v23 = [(MTMediaTimeTracker *)v21 initWithPosition:a5 playbackRate:v22];
      [(MTPAFActivity *)v20 setTimeTracker:v23];
    }

    self = v20;
    v18 = self;
  }

  return v18;
}

- (void)addItemsFromPlaylist:(id)a3 pafKit:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 currentItems];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *v30;
  do
  {
    v12 = 0;
    do
    {
      if (*v30 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v29 + 1) + 8 * v12);
      v14 = objc_alloc_init(MTPAFItemActivity);
      [(MTPAFItemActivity *)v14 setItem:v13];
      [(MTPAFItemActivity *)v14 setPlaylist:v6];
      v15 = [(MTPAFActivity *)self activityType];
      if (v15)
      {
        if (v15 != 1)
        {
          goto LABEL_11;
        }

        v16 = [v7 eventHandlers];
        v17 = [v16 seekStart];
        [(MTPAFItemActivity *)v14 setStartEventHandler:v17];

        v18 = [v7 eventHandlers];
        v19 = [v18 seekStop];
      }

      else
      {
        v20 = [v7 eventHandlers];
        v21 = [v20 playStart];
        [(MTPAFItemActivity *)v14 setStartEventHandler:v21];

        v18 = [v7 eventHandlers];
        v19 = [v18 playStop];
      }

      v22 = v19;
      [(MTPAFItemActivity *)v14 setStopEventHandler:v19];

LABEL_11:
      [v9 addObject:v14];

      ++v12;
    }

    while (v10 != v12);
    v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  }

  while (v10);
LABEL_13:

  v23 = self;
  objc_sync_enter(v23);
  v24 = [(MTPAFActivity *)v23 itemActivities];

  if (v24)
  {
    v25 = [(MTPAFActivity *)v23 itemActivities];
    v26 = [v25 arrayByAddingObjectsFromArray:v9];
    [(MTPAFActivity *)v23 setItemActivities:v26];
  }

  else
  {
    v25 = [v9 copy];
    [(MTPAFActivity *)v23 setItemActivities:v25];
  }

  [(MTPAFActivity *)v23 updateItemActivities:v9];
  objc_sync_exit(v23);

  v27 = *MEMORY[0x277D85DE8];
}

- (void)synchronizeAtMilliseconds:(unint64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  v4 = [(MTPAFActivity *)obj timeTracker];
  [v4 updatePosition:a3];

  [(MTPAFActivity *)obj setLastPosition:a3];
  v5 = [(MTPAFActivity *)obj itemActivities];
  [(MTPAFActivity *)obj updateItemActivities:v5];

  objc_sync_exit(obj);
}

- (void)stoppedAtMilliseconds:(unint64_t)a3 triggerType:(id)a4 reason:(id)a5 eventData:(id)a6
{
  v14 = a4;
  v10 = a5;
  v11 = a6;
  v12 = self;
  objc_sync_enter(v12);
  [(MTPAFActivity *)v12 setStopped:1];
  [(MTPAFActivity *)v12 setLastPosition:a3];
  [(MTPAFActivity *)v12 setStopTriggerType:v14];
  [(MTPAFActivity *)v12 setStopReason:v10];
  [(MTPAFActivity *)v12 setStopEventData:v11];
  v13 = [(MTPAFActivity *)v12 itemActivities];
  [(MTPAFActivity *)v12 updateItemActivities:v13];

  objc_sync_exit(v12);
}

- (void)startItemActivityIfPossible:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 startMetricsData];
  if (!v5)
  {
    v6 = [v4 item];
    v7 = [(__CFString *)v6 start];
    if (v7 <= [(MTPAFActivity *)self lastPosition])
    {
      v8 = [v4 item];
      v9 = [v8 end];
      v10 = [(MTPAFActivity *)self startPosition];

      if (v9 <= v10)
      {
        goto LABEL_10;
      }

      v11 = [v4 item];
      v12 = [v11 start];
      v13 = [(MTPAFActivity *)self startPosition];

      if (v12 <= v13)
      {
        v6 = [(MTPAFActivity *)self startTriggerType];
        v14 = [(MTPAFActivity *)self startReason];
        v20 = [(MTPAFActivity *)self startEventData];
      }

      else
      {
        v6 = @"automatic";
        v14 = @"transition";
        v15 = [(MTPAFActivity *)self timeTracker];
        v16 = [v4 item];
        v17 = [v15 estimatedTimeAtPastPosition:{objc_msgSend(v16, "start")}];

        v18 = [v17 mt_millisecondsSince1970];
        v23 = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        v24[0] = v19;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      }

      [v4 startAtOverallPosition:-[MTPAFActivity startPosition](self triggerType:"startPosition") reason:v6 eventData:{v14, v20}];
    }

    goto LABEL_10;
  }

LABEL_10:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)stopItemActivityIfPossible:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 startMetricsData];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 stopMetricsData];
    if (v7)
    {

LABEL_11:
      goto LABEL_12;
    }

    v8 = [v4 item];
    v9 = [v8 end];
    if (v9 < [(MTPAFActivity *)self lastPosition])
    {

LABEL_7:
      v11 = [v4 item];
      v12 = [v11 end];
      v13 = [(MTPAFActivity *)self lastPosition];

      if (v12 >= v13)
      {
        v6 = [(MTPAFActivity *)self stopTriggerType];
        v14 = [(MTPAFActivity *)self stopReason];
        v20 = [(MTPAFActivity *)self stopEventData];
      }

      else
      {
        v6 = @"automatic";
        v14 = @"transition";
        v15 = [(MTPAFActivity *)self timeTracker];
        v16 = [v4 item];
        v17 = [v15 estimatedTimeAtPastPosition:{objc_msgSend(v16, "end")}];

        v18 = [v17 mt_millisecondsSince1970];
        v23 = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        v24[0] = v19;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      }

      [v4 stopAtOverallPosition:-[MTPAFActivity lastPosition](self triggerType:"lastPosition") reason:v6 eventData:{v14, v20}];

      goto LABEL_11;
    }

    v10 = [(MTPAFActivity *)self stopped];

    if (v10)
    {
      goto LABEL_7;
    }
  }

LABEL_12:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)updateItemActivities:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [(MTPAFActivity *)self startItemActivityIfPossible:v9];
        [(MTPAFActivity *)self stopItemActivityIfPossible:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end