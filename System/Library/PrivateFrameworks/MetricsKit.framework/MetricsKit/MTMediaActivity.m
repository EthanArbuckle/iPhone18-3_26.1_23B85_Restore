@interface MTMediaActivity
+ (unint64_t)startOverallPositionForItem:(id)a3;
- (BOOL)isStopped;
- (MTMediaActivity)initWithType:(int64_t)a3 playlistItem:(id)a4 pafKit:(id)a5;
- (MTPAFKit)pafKit;
- (id)eventDataForTransitioningEvents;
- (id)startEventHandler;
- (id)stopEventHandler;
- (unint64_t)positionFromOverallPosition:(unint64_t)a3;
- (void)startedAtOverallPosition:(unint64_t)a3 type:(id)a4 reason:(id)a5 eventData:(id)a6;
- (void)stoppedAtOverallPosition:(unint64_t)a3 type:(id)a4 reason:(id)a5 eventData:(id)a6;
@end

@implementation MTMediaActivity

- (MTMediaActivity)initWithType:(int64_t)a3 playlistItem:(id)a4 pafKit:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = MTMediaActivity;
  v10 = [(MTMediaActivity *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(MTMediaActivity *)v10 setPafKit:v9];
    [(MTMediaActivity *)v11 setType:a3];
    [(MTMediaActivity *)v11 setPlaylistItem:v8];
  }

  return v11;
}

- (unint64_t)positionFromOverallPosition:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [(MTMediaActivity *)self playlistItem];
  v6 = [MTMediaActivity startOverallPositionForItem:v5];

  v7 = a3 - v6;
  if (a3 < v6)
  {
    v8 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = 134218240;
      v16 = a3;
      v17 = 2048;
      v18 = v6;
      _os_log_impl(&dword_258F4B000, v8, OS_LOG_TYPE_ERROR, "MetricsKit: Media Activity is recorded with incorrect overallPosition: %ld playlist item startOverallPosition: %ld", &v15, 0x16u);
    }
  }

  v9 = [(MTMediaActivity *)self playlistItem];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(MTMediaActivity *)self playlistItem];
    v12 = [v11 startPosition];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7 + v12;
}

- (void)startedAtOverallPosition:(unint64_t)a3 type:(id)a4 reason:(id)a5 eventData:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [(MTMediaActivity *)self startEventHandler];
  v14 = [v13 metricsDataForStartActionWithPosition:-[MTMediaActivity positionFromOverallPosition:](self overallPosition:"positionFromOverallPosition:" type:a3) reason:a3 eventData:{v12, v11, v10}];

  [(MTMediaActivity *)self setStartMetricsData:v14];
  if ([(MTMediaActivity *)self type]!= 1)
  {
    v16 = [(MTMediaActivity *)self startMetricsData];
    v15 = [v16 recordEvent];
  }
}

- (void)stoppedAtOverallPosition:(unint64_t)a3 type:(id)a4 reason:(id)a5 eventData:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [(MTMediaActivity *)self stopEventHandler];
  v14 = [(MTMediaActivity *)self positionFromOverallPosition:a3];
  v15 = [(MTMediaActivity *)self startMetricsData];
  v16 = [v13 metricsDataForStopActionWithPosition:v14 overallPosition:a3 type:v12 reason:v11 startMetricsData:v15 eventData:v10];

  [(MTMediaActivity *)self setStopMetricsData:v16];
  v18 = [(MTMediaActivity *)self stopMetricsData];
  v17 = [v18 recordEvent];
}

- (BOOL)isStopped
{
  v2 = [(MTMediaActivity *)self stopMetricsData];
  v3 = v2 != 0;

  return v3;
}

- (id)eventDataForTransitioningEvents
{
  v2 = [(MTMediaActivity *)self startMetricsData];
  v3 = [v2 userAndClientIDFields];

  return v3;
}

- (id)startEventHandler
{
  v3 = [(MTMediaActivity *)self type];
  if (v3 == 1)
  {
    v4 = [(MTMediaActivity *)self pafKit];
    v5 = [v4 eventHandlers];
    v6 = [v5 seekStart];
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = [(MTMediaActivity *)self pafKit];
    v5 = [v4 eventHandlers];
    v6 = [v5 playStart];
LABEL_5:
    v7 = v6;

    goto LABEL_7;
  }

  v8 = [(MTMediaActivity *)self type];
  v15 = MTConfigurationError(109, @"No start event handler found for media activity type: %d", v9, v10, v11, v12, v13, v14, v8);
  v7 = 0;
LABEL_7:

  return v7;
}

- (id)stopEventHandler
{
  v3 = [(MTMediaActivity *)self type];
  if (v3 == 1)
  {
    v4 = [(MTMediaActivity *)self pafKit];
    v5 = [v4 eventHandlers];
    v6 = [v5 seekStop];
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = [(MTMediaActivity *)self pafKit];
    v5 = [v4 eventHandlers];
    v6 = [v5 playStop];
LABEL_5:
    v7 = v6;

    goto LABEL_7;
  }

  v8 = [(MTMediaActivity *)self type];
  v15 = MTConfigurationError(109, @"No stop event handler found for media activity type: %d", v9, v10, v11, v12, v13, v14, v8);
  v7 = 0;
LABEL_7:

  return v7;
}

+ (unint64_t)startOverallPositionForItem:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 startOverallPosition];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_7;
    }

    v4 = [v3 overallPosition];
  }

  v5 = v4;
LABEL_7:

  return v5;
}

- (MTPAFKit)pafKit
{
  WeakRetained = objc_loadWeakRetained(&self->_pafKit);

  return WeakRetained;
}

@end