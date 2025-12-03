@interface CPLSyncThroughputReporter
- (CPLSyncThroughputReporter)initWithCategory:(id)category parentMetrics:(id)metrics;
- (CPLSyncThroughputReporter)initWithCategory:(id)category parentReport:(id)report;
- (CPLSyncThroughputReporterDelegate)delegate;
- (id)_beginKindOfWorkIfNecessary:(id *)necessary;
- (id)makeChildReportForCategory:(id)category;
- (id)makeSiblingReportForCategory:(id)category;
- (void)addCompletedWorkItemCount:(unint64_t)count;
- (void)addCompletedWorkItemCount:(unint64_t)count kindOfWork:(id)work;
- (void)beginKindOfWork:(id)work;
- (void)endKindOfWork:(id)work;
- (void)endTrackingWork;
- (void)startTrackingWork;
@end

@implementation CPLSyncThroughputReporter

- (CPLSyncThroughputReporterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)endTrackingWork
{
  v20 = *MEMORY[0x1E69E9840];
  metrics = [(CPLSyncThroughputReporter *)self metrics];
  startTime = [metrics startTime];

  if (startTime)
  {
    if ([(NSMutableDictionary *)self->_kindOfWorkReporters count])
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v5 = self->_kindOfWorkReporters;
      v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v16;
        do
        {
          v9 = 0;
          do
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [(NSMutableDictionary *)self->_kindOfWorkReporters objectForKeyedSubscript:*(*(&v15 + 1) + 8 * v9), v15];
            [v10 endTrackingWork];

            ++v9;
          }

          while (v7 != v9);
          v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v7);
      }

      kindOfWorkReporters = self->_kindOfWorkReporters;
      self->_kindOfWorkReporters = 0;
    }

    delegate = [(CPLSyncThroughputReporter *)self delegate];
    [delegate throughputReporterDidFinish:self];

    metrics2 = [(CPLSyncThroughputReporter *)self metrics];
    [metrics2 setStartTime:0];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)endKindOfWork:(id)work
{
  workCopy = work;
  v4 = [(NSMutableDictionary *)self->_kindOfWorkReporters objectForKeyedSubscript:?];
  v5 = v4;
  if (v4)
  {
    [v4 endTrackingWork];
    [(NSMutableDictionary *)self->_kindOfWorkReporters removeObjectForKey:workCopy];
  }
}

- (void)beginKindOfWork:(id)work
{
  v5 = [(CPLSyncThroughputReporter *)&self->super.isa _beginKindOfWorkIfNecessary:work];
  metrics = [v5 metrics];
  startTime = [metrics startTime];

  if (!startTime)
  {
    [v5 startTrackingWork];
  }
}

- (id)_beginKindOfWorkIfNecessary:(id *)necessary
{
  v3 = a2;
  if (necessary)
  {
    v4 = necessary[1];
    if (!v4)
    {
      v5 = objc_opt_new();
      v6 = necessary[1];
      necessary[1] = v5;

      v4 = necessary[1];
    }

    v7 = [v4 objectForKeyedSubscript:v3];
    if (!v7)
    {
      v7 = [necessary makeChildReportForCategory:v3];
      [necessary[1] setObject:v7 forKeyedSubscript:v3];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)addCompletedWorkItemCount:(unint64_t)count kindOfWork:(id)work
{
  workCopy = work;
  metrics = [(CPLSyncThroughputReporter *)self metrics];
  startTime = [metrics startTime];

  if (!startTime)
  {
    v8 = [MEMORY[0x1E695DF00] now];
    metrics2 = [(CPLSyncThroughputReporter *)self metrics];
    [metrics2 setStartTime:v8];
  }

  if (workCopy)
  {
    selfCopy = [(CPLSyncThroughputReporter *)&self->super.isa _beginKindOfWorkIfNecessary:workCopy];
    metrics3 = [(CPLSyncThroughputReporter *)selfCopy metrics];
    startTime2 = [metrics3 startTime];

    if (!startTime2)
    {
      metrics4 = [(CPLSyncThroughputReporter *)self metrics];
      startTime3 = [metrics4 startTime];
      metrics5 = [(CPLSyncThroughputReporter *)selfCopy metrics];
      [metrics5 setStartTime:startTime3];
    }
  }

  else
  {
    selfCopy = self;
  }

  [(CPLSyncThroughputReporter *)selfCopy addCompletedWorkItemCount:count];
}

- (void)addCompletedWorkItemCount:(unint64_t)count
{
  metrics = [(CPLSyncThroughputReporter *)self metrics];
  startTime = [metrics startTime];

  if (!startTime)
  {
    v7 = [MEMORY[0x1E695DF00] now];
    metrics2 = [(CPLSyncThroughputReporter *)self metrics];
    [metrics2 setStartTime:v7];
  }

  metrics3 = [(CPLSyncThroughputReporter *)self metrics];
  [metrics3 setTotalCount:{objc_msgSend(metrics3, "totalCount") + count}];

  delegate = [(CPLSyncThroughputReporter *)self delegate];
  [delegate throughputReporter:self addedItemCount:count];
}

- (void)startTrackingWork
{
  v4 = [MEMORY[0x1E695DF00] now];
  metrics = [(CPLSyncThroughputReporter *)self metrics];
  [metrics setStartTime:v4];
}

- (id)makeSiblingReportForCategory:(id)category
{
  categoryCopy = category;
  v5 = [objc_alloc(objc_opt_class()) initWithCategory:categoryCopy parentMetrics:self->_parentMetricsIdentifier];

  delegate = [(CPLSyncThroughputReporter *)self delegate];
  [v5 setDelegate:delegate];

  return v5;
}

- (id)makeChildReportForCategory:(id)category
{
  categoryCopy = category;
  v5 = [[CPLSyncThroughputReporter alloc] initWithCategory:categoryCopy parentReport:self];

  return v5;
}

- (CPLSyncThroughputReporter)initWithCategory:(id)category parentReport:(id)report
{
  reportCopy = report;
  categoryCopy = category;
  metrics = [reportCopy metrics];
  metricsIdentifier = [metrics metricsIdentifier];
  v10 = [(CPLSyncThroughputReporter *)self initWithCategory:categoryCopy parentMetrics:metricsIdentifier];

  delegate = [reportCopy delegate];

  [(CPLSyncThroughputReporter *)v10 setDelegate:delegate];
  return v10;
}

- (CPLSyncThroughputReporter)initWithCategory:(id)category parentMetrics:(id)metrics
{
  categoryCopy = category;
  metricsCopy = metrics;
  v14.receiver = self;
  v14.super_class = CPLSyncThroughputReporter;
  v8 = [(CPLSyncThroughputReporter *)&v14 init];
  if (v8)
  {
    v9 = categoryCopy;
    if (metricsCopy)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", metricsCopy, v9];

      v9 = v10;
    }

    objc_storeStrong(&v8->_parentMetricsIdentifier, metrics);
    v11 = [[CPLSyncSessionThroughputMetrics alloc] initWithIdentifier:v9];
    metrics = v8->_metrics;
    v8->_metrics = v11;
  }

  return v8;
}

@end