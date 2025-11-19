@interface CPLSyncThroughputReporter
- (CPLSyncThroughputReporter)initWithCategory:(id)a3 parentMetrics:(id)a4;
- (CPLSyncThroughputReporter)initWithCategory:(id)a3 parentReport:(id)a4;
- (CPLSyncThroughputReporterDelegate)delegate;
- (id)_beginKindOfWorkIfNecessary:(id *)a1;
- (id)makeChildReportForCategory:(id)a3;
- (id)makeSiblingReportForCategory:(id)a3;
- (void)addCompletedWorkItemCount:(unint64_t)a3;
- (void)addCompletedWorkItemCount:(unint64_t)a3 kindOfWork:(id)a4;
- (void)beginKindOfWork:(id)a3;
- (void)endKindOfWork:(id)a3;
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
  v3 = [(CPLSyncThroughputReporter *)self metrics];
  v4 = [v3 startTime];

  if (v4)
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

    v12 = [(CPLSyncThroughputReporter *)self delegate];
    [v12 throughputReporterDidFinish:self];

    v13 = [(CPLSyncThroughputReporter *)self metrics];
    [v13 setStartTime:0];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)endKindOfWork:(id)a3
{
  v6 = a3;
  v4 = [(NSMutableDictionary *)self->_kindOfWorkReporters objectForKeyedSubscript:?];
  v5 = v4;
  if (v4)
  {
    [v4 endTrackingWork];
    [(NSMutableDictionary *)self->_kindOfWorkReporters removeObjectForKey:v6];
  }
}

- (void)beginKindOfWork:(id)a3
{
  v5 = [(CPLSyncThroughputReporter *)&self->super.isa _beginKindOfWorkIfNecessary:a3];
  v3 = [v5 metrics];
  v4 = [v3 startTime];

  if (!v4)
  {
    [v5 startTrackingWork];
  }
}

- (id)_beginKindOfWorkIfNecessary:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = a1[1];
    if (!v4)
    {
      v5 = objc_opt_new();
      v6 = a1[1];
      a1[1] = v5;

      v4 = a1[1];
    }

    v7 = [v4 objectForKeyedSubscript:v3];
    if (!v7)
    {
      v7 = [a1 makeChildReportForCategory:v3];
      [a1[1] setObject:v7 forKeyedSubscript:v3];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)addCompletedWorkItemCount:(unint64_t)a3 kindOfWork:(id)a4
{
  v16 = a4;
  v6 = [(CPLSyncThroughputReporter *)self metrics];
  v7 = [v6 startTime];

  if (!v7)
  {
    v8 = [MEMORY[0x1E695DF00] now];
    v9 = [(CPLSyncThroughputReporter *)self metrics];
    [v9 setStartTime:v8];
  }

  if (v16)
  {
    v10 = [(CPLSyncThroughputReporter *)&self->super.isa _beginKindOfWorkIfNecessary:v16];
    v11 = [(CPLSyncThroughputReporter *)v10 metrics];
    v12 = [v11 startTime];

    if (!v12)
    {
      v13 = [(CPLSyncThroughputReporter *)self metrics];
      v14 = [v13 startTime];
      v15 = [(CPLSyncThroughputReporter *)v10 metrics];
      [v15 setStartTime:v14];
    }
  }

  else
  {
    v10 = self;
  }

  [(CPLSyncThroughputReporter *)v10 addCompletedWorkItemCount:a3];
}

- (void)addCompletedWorkItemCount:(unint64_t)a3
{
  v5 = [(CPLSyncThroughputReporter *)self metrics];
  v6 = [v5 startTime];

  if (!v6)
  {
    v7 = [MEMORY[0x1E695DF00] now];
    v8 = [(CPLSyncThroughputReporter *)self metrics];
    [v8 setStartTime:v7];
  }

  v9 = [(CPLSyncThroughputReporter *)self metrics];
  [v9 setTotalCount:{objc_msgSend(v9, "totalCount") + a3}];

  v10 = [(CPLSyncThroughputReporter *)self delegate];
  [v10 throughputReporter:self addedItemCount:a3];
}

- (void)startTrackingWork
{
  v4 = [MEMORY[0x1E695DF00] now];
  v3 = [(CPLSyncThroughputReporter *)self metrics];
  [v3 setStartTime:v4];
}

- (id)makeSiblingReportForCategory:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithCategory:v4 parentMetrics:self->_parentMetricsIdentifier];

  v6 = [(CPLSyncThroughputReporter *)self delegate];
  [v5 setDelegate:v6];

  return v5;
}

- (id)makeChildReportForCategory:(id)a3
{
  v4 = a3;
  v5 = [[CPLSyncThroughputReporter alloc] initWithCategory:v4 parentReport:self];

  return v5;
}

- (CPLSyncThroughputReporter)initWithCategory:(id)a3 parentReport:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 metrics];
  v9 = [v8 metricsIdentifier];
  v10 = [(CPLSyncThroughputReporter *)self initWithCategory:v7 parentMetrics:v9];

  v11 = [v6 delegate];

  [(CPLSyncThroughputReporter *)v10 setDelegate:v11];
  return v10;
}

- (CPLSyncThroughputReporter)initWithCategory:(id)a3 parentMetrics:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CPLSyncThroughputReporter;
  v8 = [(CPLSyncThroughputReporter *)&v14 init];
  if (v8)
  {
    v9 = v6;
    if (v7)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, v9];

      v9 = v10;
    }

    objc_storeStrong(&v8->_parentMetricsIdentifier, a4);
    v11 = [[CPLSyncSessionThroughputMetrics alloc] initWithIdentifier:v9];
    metrics = v8->_metrics;
    v8->_metrics = v11;
  }

  return v8;
}

@end