@interface MTPAFActivity
- (MTPAFActivity)initWithType:(int64_t)type playbackRate:(float)rate atMilliseconds:(unint64_t)milliseconds triggerType:(id)triggerType reason:(id)reason eventData:(id)data;
- (void)addItemsFromPlaylist:(id)playlist pafKit:(id)kit;
- (void)startItemActivityIfPossible:(id)possible;
- (void)stopItemActivityIfPossible:(id)possible;
- (void)stoppedAtMilliseconds:(unint64_t)milliseconds triggerType:(id)type reason:(id)reason eventData:(id)data;
- (void)synchronizeAtMilliseconds:(unint64_t)milliseconds;
- (void)updateItemActivities:(id)activities;
@end

@implementation MTPAFActivity

- (MTPAFActivity)initWithType:(int64_t)type playbackRate:(float)rate atMilliseconds:(unint64_t)milliseconds triggerType:(id)triggerType reason:(id)reason eventData:(id)data
{
  triggerTypeCopy = triggerType;
  reasonCopy = reason;
  dataCopy = data;
  if (type == 1)
  {
    v17 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_258F4B000, v17, OS_LOG_TYPE_DEBUG, "MetricsKit: MTPAFActivityTypeSeek is not supported yet", buf, 2u);
    }

    selfCopy = 0;
  }

  else
  {
    v25.receiver = self;
    v25.super_class = MTPAFActivity;
    v19 = [(MTPAFActivity *)&v25 init];
    v20 = v19;
    if (v19)
    {
      [(MTPAFActivity *)v19 setActivityType:type];
      [(MTPAFActivity *)v20 setStartPosition:milliseconds];
      [(MTPAFActivity *)v20 setLastPosition:milliseconds];
      [(MTPAFActivity *)v20 setStartTriggerType:triggerTypeCopy];
      [(MTPAFActivity *)v20 setStartReason:reasonCopy];
      [(MTPAFActivity *)v20 setStartEventData:dataCopy];
      v21 = [MTMediaTimeTracker alloc];
      *&v22 = rate;
      v23 = [(MTMediaTimeTracker *)v21 initWithPosition:milliseconds playbackRate:v22];
      [(MTPAFActivity *)v20 setTimeTracker:v23];
    }

    self = v20;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)addItemsFromPlaylist:(id)playlist pafKit:(id)kit
{
  v34 = *MEMORY[0x277D85DE8];
  playlistCopy = playlist;
  kitCopy = kit;
  currentItems = [playlistCopy currentItems];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(currentItems, "count")}];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = currentItems;
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
      [(MTPAFItemActivity *)v14 setPlaylist:playlistCopy];
      activityType = [(MTPAFActivity *)self activityType];
      if (activityType)
      {
        if (activityType != 1)
        {
          goto LABEL_11;
        }

        eventHandlers = [kitCopy eventHandlers];
        seekStart = [eventHandlers seekStart];
        [(MTPAFItemActivity *)v14 setStartEventHandler:seekStart];

        eventHandlers2 = [kitCopy eventHandlers];
        seekStop = [eventHandlers2 seekStop];
      }

      else
      {
        eventHandlers3 = [kitCopy eventHandlers];
        playStart = [eventHandlers3 playStart];
        [(MTPAFItemActivity *)v14 setStartEventHandler:playStart];

        eventHandlers2 = [kitCopy eventHandlers];
        seekStop = [eventHandlers2 playStop];
      }

      v22 = seekStop;
      [(MTPAFItemActivity *)v14 setStopEventHandler:seekStop];

LABEL_11:
      [v9 addObject:v14];

      ++v12;
    }

    while (v10 != v12);
    v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  }

  while (v10);
LABEL_13:

  selfCopy = self;
  objc_sync_enter(selfCopy);
  itemActivities = [(MTPAFActivity *)selfCopy itemActivities];

  if (itemActivities)
  {
    itemActivities2 = [(MTPAFActivity *)selfCopy itemActivities];
    v26 = [itemActivities2 arrayByAddingObjectsFromArray:v9];
    [(MTPAFActivity *)selfCopy setItemActivities:v26];
  }

  else
  {
    itemActivities2 = [v9 copy];
    [(MTPAFActivity *)selfCopy setItemActivities:itemActivities2];
  }

  [(MTPAFActivity *)selfCopy updateItemActivities:v9];
  objc_sync_exit(selfCopy);

  v27 = *MEMORY[0x277D85DE8];
}

- (void)synchronizeAtMilliseconds:(unint64_t)milliseconds
{
  obj = self;
  objc_sync_enter(obj);
  timeTracker = [(MTPAFActivity *)obj timeTracker];
  [timeTracker updatePosition:milliseconds];

  [(MTPAFActivity *)obj setLastPosition:milliseconds];
  itemActivities = [(MTPAFActivity *)obj itemActivities];
  [(MTPAFActivity *)obj updateItemActivities:itemActivities];

  objc_sync_exit(obj);
}

- (void)stoppedAtMilliseconds:(unint64_t)milliseconds triggerType:(id)type reason:(id)reason eventData:(id)data
{
  typeCopy = type;
  reasonCopy = reason;
  dataCopy = data;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MTPAFActivity *)selfCopy setStopped:1];
  [(MTPAFActivity *)selfCopy setLastPosition:milliseconds];
  [(MTPAFActivity *)selfCopy setStopTriggerType:typeCopy];
  [(MTPAFActivity *)selfCopy setStopReason:reasonCopy];
  [(MTPAFActivity *)selfCopy setStopEventData:dataCopy];
  itemActivities = [(MTPAFActivity *)selfCopy itemActivities];
  [(MTPAFActivity *)selfCopy updateItemActivities:itemActivities];

  objc_sync_exit(selfCopy);
}

- (void)startItemActivityIfPossible:(id)possible
{
  v24[1] = *MEMORY[0x277D85DE8];
  possibleCopy = possible;
  startMetricsData = [possibleCopy startMetricsData];
  if (!startMetricsData)
  {
    item = [possibleCopy item];
    start = [(__CFString *)item start];
    if (start <= [(MTPAFActivity *)self lastPosition])
    {
      item2 = [possibleCopy item];
      v9 = [item2 end];
      startPosition = [(MTPAFActivity *)self startPosition];

      if (v9 <= startPosition)
      {
        goto LABEL_10;
      }

      item3 = [possibleCopy item];
      start2 = [item3 start];
      startPosition2 = [(MTPAFActivity *)self startPosition];

      if (start2 <= startPosition2)
      {
        item = [(MTPAFActivity *)self startTriggerType];
        startReason = [(MTPAFActivity *)self startReason];
        startEventData = [(MTPAFActivity *)self startEventData];
      }

      else
      {
        item = @"automatic";
        startReason = @"transition";
        timeTracker = [(MTPAFActivity *)self timeTracker];
        item4 = [possibleCopy item];
        v17 = [timeTracker estimatedTimeAtPastPosition:{objc_msgSend(item4, "start")}];

        mt_millisecondsSince1970 = [v17 mt_millisecondsSince1970];
        v23 = mt_millisecondsSince1970;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        v24[0] = v19;
        startEventData = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      }

      [possibleCopy startAtOverallPosition:-[MTPAFActivity startPosition](self triggerType:"startPosition") reason:item eventData:{startReason, startEventData}];
    }

    goto LABEL_10;
  }

LABEL_10:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)stopItemActivityIfPossible:(id)possible
{
  v24[1] = *MEMORY[0x277D85DE8];
  possibleCopy = possible;
  startMetricsData = [possibleCopy startMetricsData];
  if (startMetricsData)
  {
    stopTriggerType = startMetricsData;
    stopMetricsData = [possibleCopy stopMetricsData];
    if (stopMetricsData)
    {

LABEL_11:
      goto LABEL_12;
    }

    item = [possibleCopy item];
    v9 = [item end];
    if (v9 < [(MTPAFActivity *)self lastPosition])
    {

LABEL_7:
      item2 = [possibleCopy item];
      v12 = [item2 end];
      lastPosition = [(MTPAFActivity *)self lastPosition];

      if (v12 >= lastPosition)
      {
        stopTriggerType = [(MTPAFActivity *)self stopTriggerType];
        stopReason = [(MTPAFActivity *)self stopReason];
        stopEventData = [(MTPAFActivity *)self stopEventData];
      }

      else
      {
        stopTriggerType = @"automatic";
        stopReason = @"transition";
        timeTracker = [(MTPAFActivity *)self timeTracker];
        item3 = [possibleCopy item];
        v17 = [timeTracker estimatedTimeAtPastPosition:{objc_msgSend(item3, "end")}];

        mt_millisecondsSince1970 = [v17 mt_millisecondsSince1970];
        v23 = mt_millisecondsSince1970;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        v24[0] = v19;
        stopEventData = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      }

      [possibleCopy stopAtOverallPosition:-[MTPAFActivity lastPosition](self triggerType:"lastPosition") reason:stopTriggerType eventData:{stopReason, stopEventData}];

      goto LABEL_11;
    }

    stopped = [(MTPAFActivity *)self stopped];

    if (stopped)
    {
      goto LABEL_7;
    }
  }

LABEL_12:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)updateItemActivities:(id)activities
{
  v16 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [activitiesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(activitiesCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [(MTPAFActivity *)self startItemActivityIfPossible:v9];
        [(MTPAFActivity *)self stopItemActivityIfPossible:v9];
      }

      v6 = [activitiesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end