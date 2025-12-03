@interface MTMediaActivity
+ (unint64_t)startOverallPositionForItem:(id)item;
- (BOOL)isStopped;
- (MTMediaActivity)initWithType:(int64_t)type playlistItem:(id)item pafKit:(id)kit;
- (MTPAFKit)pafKit;
- (id)eventDataForTransitioningEvents;
- (id)startEventHandler;
- (id)stopEventHandler;
- (unint64_t)positionFromOverallPosition:(unint64_t)position;
- (void)startedAtOverallPosition:(unint64_t)position type:(id)type reason:(id)reason eventData:(id)data;
- (void)stoppedAtOverallPosition:(unint64_t)position type:(id)type reason:(id)reason eventData:(id)data;
@end

@implementation MTMediaActivity

- (MTMediaActivity)initWithType:(int64_t)type playlistItem:(id)item pafKit:(id)kit
{
  itemCopy = item;
  kitCopy = kit;
  v13.receiver = self;
  v13.super_class = MTMediaActivity;
  v10 = [(MTMediaActivity *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(MTMediaActivity *)v10 setPafKit:kitCopy];
    [(MTMediaActivity *)v11 setType:type];
    [(MTMediaActivity *)v11 setPlaylistItem:itemCopy];
  }

  return v11;
}

- (unint64_t)positionFromOverallPosition:(unint64_t)position
{
  v19 = *MEMORY[0x277D85DE8];
  playlistItem = [(MTMediaActivity *)self playlistItem];
  v6 = [MTMediaActivity startOverallPositionForItem:playlistItem];

  v7 = position - v6;
  if (position < v6)
  {
    v8 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = 134218240;
      positionCopy = position;
      v17 = 2048;
      v18 = v6;
      _os_log_impl(&dword_258F4B000, v8, OS_LOG_TYPE_ERROR, "MetricsKit: Media Activity is recorded with incorrect overallPosition: %ld playlist item startOverallPosition: %ld", &v15, 0x16u);
    }
  }

  playlistItem2 = [(MTMediaActivity *)self playlistItem];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    playlistItem3 = [(MTMediaActivity *)self playlistItem];
    startPosition = [playlistItem3 startPosition];
  }

  else
  {
    startPosition = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7 + startPosition;
}

- (void)startedAtOverallPosition:(unint64_t)position type:(id)type reason:(id)reason eventData:(id)data
{
  dataCopy = data;
  reasonCopy = reason;
  typeCopy = type;
  startEventHandler = [(MTMediaActivity *)self startEventHandler];
  v14 = [startEventHandler metricsDataForStartActionWithPosition:-[MTMediaActivity positionFromOverallPosition:](self overallPosition:"positionFromOverallPosition:" type:position) reason:position eventData:{typeCopy, reasonCopy, dataCopy}];

  [(MTMediaActivity *)self setStartMetricsData:v14];
  if ([(MTMediaActivity *)self type]!= 1)
  {
    startMetricsData = [(MTMediaActivity *)self startMetricsData];
    recordEvent = [startMetricsData recordEvent];
  }
}

- (void)stoppedAtOverallPosition:(unint64_t)position type:(id)type reason:(id)reason eventData:(id)data
{
  dataCopy = data;
  reasonCopy = reason;
  typeCopy = type;
  stopEventHandler = [(MTMediaActivity *)self stopEventHandler];
  v14 = [(MTMediaActivity *)self positionFromOverallPosition:position];
  startMetricsData = [(MTMediaActivity *)self startMetricsData];
  v16 = [stopEventHandler metricsDataForStopActionWithPosition:v14 overallPosition:position type:typeCopy reason:reasonCopy startMetricsData:startMetricsData eventData:dataCopy];

  [(MTMediaActivity *)self setStopMetricsData:v16];
  stopMetricsData = [(MTMediaActivity *)self stopMetricsData];
  recordEvent = [stopMetricsData recordEvent];
}

- (BOOL)isStopped
{
  stopMetricsData = [(MTMediaActivity *)self stopMetricsData];
  v3 = stopMetricsData != 0;

  return v3;
}

- (id)eventDataForTransitioningEvents
{
  startMetricsData = [(MTMediaActivity *)self startMetricsData];
  userAndClientIDFields = [startMetricsData userAndClientIDFields];

  return userAndClientIDFields;
}

- (id)startEventHandler
{
  type = [(MTMediaActivity *)self type];
  if (type == 1)
  {
    pafKit = [(MTMediaActivity *)self pafKit];
    eventHandlers = [pafKit eventHandlers];
    seekStart = [eventHandlers seekStart];
    goto LABEL_5;
  }

  if (!type)
  {
    pafKit = [(MTMediaActivity *)self pafKit];
    eventHandlers = [pafKit eventHandlers];
    seekStart = [eventHandlers playStart];
LABEL_5:
    v7 = seekStart;

    goto LABEL_7;
  }

  type2 = [(MTMediaActivity *)self type];
  v15 = MTConfigurationError(109, @"No start event handler found for media activity type: %d", v9, v10, v11, v12, v13, v14, type2);
  v7 = 0;
LABEL_7:

  return v7;
}

- (id)stopEventHandler
{
  type = [(MTMediaActivity *)self type];
  if (type == 1)
  {
    pafKit = [(MTMediaActivity *)self pafKit];
    eventHandlers = [pafKit eventHandlers];
    seekStop = [eventHandlers seekStop];
    goto LABEL_5;
  }

  if (!type)
  {
    pafKit = [(MTMediaActivity *)self pafKit];
    eventHandlers = [pafKit eventHandlers];
    seekStop = [eventHandlers playStop];
LABEL_5:
    v7 = seekStop;

    goto LABEL_7;
  }

  type2 = [(MTMediaActivity *)self type];
  v15 = MTConfigurationError(109, @"No stop event handler found for media activity type: %d", v9, v10, v11, v12, v13, v14, type2);
  v7 = 0;
LABEL_7:

  return v7;
}

+ (unint64_t)startOverallPositionForItem:(id)item
{
  itemCopy = item;
  if (objc_opt_respondsToSelector())
  {
    startOverallPosition = [itemCopy startOverallPosition];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_7;
    }

    startOverallPosition = [itemCopy overallPosition];
  }

  v5 = startOverallPosition;
LABEL_7:

  return v5;
}

- (MTPAFKit)pafKit
{
  WeakRetained = objc_loadWeakRetained(&self->_pafKit);

  return WeakRetained;
}

@end