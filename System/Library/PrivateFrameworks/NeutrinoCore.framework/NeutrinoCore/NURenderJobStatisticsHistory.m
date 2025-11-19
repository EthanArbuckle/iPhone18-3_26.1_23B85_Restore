@interface NURenderJobStatisticsHistory
- (id)description;
- (id)initHistoryForJobsWithName:(id)a3 rollingHistoryMaxSize:(unint64_t)a4;
- (void)addStatisticsToHistory:(id)a3 wasCanceled:(BOOL)a4;
- (void)dealloc;
- (void)recordJobCreated;
@end

@implementation NURenderJobStatisticsHistory

- (void)dealloc
{
  free(self->_timeBetweenJobCreations);
  free(self->_timeBetweenJobDeliveries);
  v3.receiver = self;
  v3.super_class = NURenderJobStatisticsHistory;
  [(NURenderJobStatisticsHistory *)&v3 dealloc];
}

- (id)description
{
  +[NURenderJobStatisticsHistory totalSchedulerTimeExecutingPrepare];
  v45 = v3;
  +[NURenderJobStatisticsHistory totalSchedulerTimeExecutingRender];
  v5 = v4;
  +[NURenderJobStatisticsHistory totalSchedulerTimeExecutingComplete];
  v46 = v6;
  +[NURenderJobStatisticsHistory totalSchedulerTimeExecuting];
  v47 = v7;
  v8 = +[NURenderJobStatisticsHistory totalSchedulerJobCount];
  v9 = +[NURenderJobStatisticsHistory totalSchedulerCanceledJobCount];
  v10 = +[NURenderJobStatisticsHistory totalSchedulerDeliveredJobCount];
  v11 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:2048];
  v12 = v11;
  deliveriesSize = self->_deliveriesSize;
  v14 = -1.0;
  v15 = -1.0;
  v16 = -1.0;
  v17 = -1.0;
  if (deliveriesSize)
  {
    v18 = deliveriesSize;
    timeBetweenJobDeliveries = self->_timeBetweenJobDeliveries;
    v17 = 0.0;
    v15 = 1.79769313e308;
    v16 = 2.22507386e-308;
    do
    {
      v20 = *timeBetweenJobDeliveries++;
      v21 = v20;
      if (v20 < v15)
      {
        v15 = v21;
      }

      if (v21 > v16)
      {
        v16 = v21;
      }

      v17 = v17 + v21 / v18;
      --deliveriesSize;
    }

    while (deliveriesSize);
  }

  creationsSize = self->_creationsSize;
  v23 = -1.0;
  v24 = -1.0;
  if (creationsSize)
  {
    v25 = creationsSize;
    timeBetweenJobCreations = self->_timeBetweenJobCreations;
    v24 = 0.0;
    v14 = 1.79769313e308;
    v23 = 2.22507386e-308;
    do
    {
      v27 = *timeBetweenJobCreations++;
      v28 = v27;
      if (v27 < v14)
      {
        v14 = v28;
      }

      if (v28 > v23)
      {
        v23 = v28;
      }

      v24 = v24 + v28 / v25;
      --creationsSize;
    }

    while (creationsSize);
  }

  [v11 appendFormat:@"FPS Stats:              avg   min   max \n"];
  [v12 appendFormat:@"Job rate (submission): %.2f  %.2f  %.2f (sample count: %llu)\n", 1.0 / v24, 1.0 / v23, 1.0 / v14, self->_creationsSize];
  [v12 appendFormat:@"Job rate   (delivery): %.2f  %.2f  %.2f (sample count: %llu)\n", 1.0 / v17, 1.0 / v16, 1.0 / v15, self->_deliveriesSize];
  [v12 appendFormat:@"\nScheduler Time: (jobs of this name / all jobs) = %%  unit: seconds\n"];
  totalTimeExecutingPrepare = self->_totalTimeExecutingPrepare;
  if (v45 <= 0.0)
  {
    v30 = 100.0;
  }

  else
  {
    v30 = totalTimeExecutingPrepare / v45 * 100.0;
  }

  [v12 appendFormat:@"Prepare  (execute): (%7.2f / %7.2f) = %.2f%%\n", *&totalTimeExecutingPrepare, *&v45, *&v30];
  totalTimeExecutingRender = self->_totalTimeExecutingRender;
  if (v5 <= 0.0)
  {
    v32 = 100.0;
  }

  else
  {
    v32 = totalTimeExecutingRender / v5 * 100.0;
  }

  [v12 appendFormat:@"Render   (execute): (%7.2f / %7.2f) = %.2f%%\n", *&totalTimeExecutingRender, *&v5, *&v32];
  totalTimeExecutingComplete = self->_totalTimeExecutingComplete;
  if (v46 <= 0.0)
  {
    v34 = 100.0;
  }

  else
  {
    v34 = totalTimeExecutingComplete / v46 * 100.0;
  }

  [v12 appendFormat:@"Complete (execute): (%7.2f / %7.2f) = %.2f%%\n", *&totalTimeExecutingComplete, *&v46, *&v34];
  totalTimeExecuting = self->_totalTimeExecuting;
  if (v47 <= 0.0)
  {
    v36 = 100.0;
  }

  else
  {
    v36 = totalTimeExecuting / v47 * 100.0;
  }

  [v12 appendFormat:@"Total    (execute): (%7.2f / %7.2f) = %.2f%%", *&totalTimeExecuting, *&v47, *&v36];
  [v12 appendString:@"\n\n"];
  [v12 appendFormat:@"Scheduler Job Counts: (jobs of this name / all jobs) = %%\n"];
  jobCount = self->_jobCount;
  if (v8)
  {
    v38 = ((jobCount / v8) * 100.0);
  }

  else
  {
    v38 = 100.0;
  }

  [v12 appendFormat:@"Jobs     (Total): (%5llu / %5llu) = %.2f%%\n", jobCount, v8, *&v38];
  deliveredJobsCount = self->_deliveredJobsCount;
  if (v10)
  {
    v40 = ((deliveredJobsCount / v10) * 100.0);
  }

  else
  {
    v40 = 100.0;
  }

  [v12 appendFormat:@"Jobs (Delivered): (%5llu / %5llu) = %.2f%%\n", deliveredJobsCount, v10, *&v40];
  canceledJobsCount = self->_canceledJobsCount;
  if (v9)
  {
    v42 = ((canceledJobsCount / v9) * 100.0);
  }

  else
  {
    v42 = 100.0;
  }

  [v12 appendFormat:@"Jobs (Coalesced): (%5llu / %5llu) = %.2f%%\n", canceledJobsCount, v9, *&v42];
  v43 = [(NURenderJobStatisticsHistogram *)self->_histogram description];
  [v12 appendFormat:@"\n\nHistogram:\n\n%@", v43];

  return v12;
}

- (void)addStatisticsToHistory:(id)a3 wasCanceled:(BOOL)a4
{
  v4 = a4;
  v30 = a3;
  v6 = NUAbsoluteTime();
  if (v4)
  {
    if (+[NUGlobalSettings renderJobDebugCaptureCanceledJobs])
    {
      [(NURenderJobStatisticsHistogram *)self->_histogram addStatisticsToHistogram:v30];
    }

    ++self->_canceledJobsCount;
    +[NURenderJobStatisticsHistory setTotalSchedulerCanceledJobCount:](NURenderJobStatisticsHistory, "setTotalSchedulerCanceledJobCount:", +[NURenderJobStatisticsHistory totalSchedulerCanceledJobCount]+ 1);
  }

  else
  {
    v7 = v6;
    [(NURenderJobStatisticsHistogram *)self->_histogram addStatisticsToHistogram:v30];
    v8 = v7 - self->_prevDeliveredTime;
    if (v8 < 3.0)
    {
      deliveriesHead = self->_deliveriesHead;
      deliveriesSize = self->_deliveriesSize;
      self->_timeBetweenJobDeliveries[deliveriesHead] = v8;
      v11 = deliveriesHead + 1;
      rollingHistoryMaxSize = self->_rollingHistoryMaxSize;
      v13 = v11 % rollingHistoryMaxSize;
      if (rollingHistoryMaxSize >= deliveriesSize + 1)
      {
        rollingHistoryMaxSize = deliveriesSize + 1;
      }

      self->_deliveriesHead = v13;
      self->_deliveriesSize = rollingHistoryMaxSize;
    }

    self->_prevDeliveredTime = v7;
    ++self->_deliveredJobsCount;
    +[NURenderJobStatisticsHistory setTotalSchedulerDeliveredJobCount:](NURenderJobStatisticsHistory, "setTotalSchedulerDeliveredJobCount:", +[NURenderJobStatisticsHistory totalSchedulerDeliveredJobCount]+ 1);
  }

  [v30 prepareDuration];
  v15 = v14;
  +[NURenderJobStatisticsHistory totalSchedulerTimeExecutingPrepare];
  [NURenderJobStatisticsHistory setTotalSchedulerTimeExecutingPrepare:v15 + v16];
  [v30 renderDuration];
  v18 = v17;
  +[NURenderJobStatisticsHistory totalSchedulerTimeExecutingRender];
  [NURenderJobStatisticsHistory setTotalSchedulerTimeExecutingRender:v18 + v19];
  [v30 completeDuration];
  v21 = v20;
  +[NURenderJobStatisticsHistory totalSchedulerTimeExecutingComplete];
  [NURenderJobStatisticsHistory setTotalSchedulerTimeExecutingComplete:v21 + v22];
  [v30 duration];
  v24 = v23;
  +[NURenderJobStatisticsHistory totalSchedulerTimeExecuting];
  [NURenderJobStatisticsHistory setTotalSchedulerTimeExecuting:v24 + v25];
  [v30 prepareDuration];
  self->_totalTimeExecutingPrepare = v26 + self->_totalTimeExecutingPrepare;
  [v30 renderDuration];
  self->_totalTimeExecutingRender = v27 + self->_totalTimeExecutingRender;
  [v30 completeDuration];
  self->_totalTimeExecutingComplete = v28 + self->_totalTimeExecutingComplete;
  [v30 duration];
  self->_totalTimeExecuting = v29 + self->_totalTimeExecuting;
}

- (void)recordJobCreated
{
  v3 = NUAbsoluteTime();
  ++self->_jobCount;
  +[NURenderJobStatisticsHistory setTotalSchedulerJobCount:](NURenderJobStatisticsHistory, "setTotalSchedulerJobCount:", +[NURenderJobStatisticsHistory totalSchedulerJobCount]+ 1);
  v4 = v3 - self->_prevCreatedTime;
  if (v4 < 3.0)
  {
    rollingHistoryMaxSize = self->_rollingHistoryMaxSize;
    creationsHead = self->_creationsHead;
    creationsSize = self->_creationsSize;
    self->_timeBetweenJobCreations[creationsHead] = v4;
    v8 = (creationsHead + 1) % rollingHistoryMaxSize;
    if (rollingHistoryMaxSize >= creationsSize + 1)
    {
      rollingHistoryMaxSize = creationsSize + 1;
    }

    self->_creationsHead = v8;
    self->_creationsSize = rollingHistoryMaxSize;
  }

  self->_prevCreatedTime = v3;
}

- (id)initHistoryForJobsWithName:(id)a3 rollingHistoryMaxSize:(unint64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = NURenderJobStatisticsHistory;
  v8 = [(NURenderJobStatisticsHistory *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_jobRequestName, a3);
    v9->_timeBetweenJobCreations = malloc_type_calloc(a4, 8uLL, 0x100004000313F17uLL);
    v9->_timeBetweenJobDeliveries = malloc_type_calloc(a4, 8uLL, 0x100004000313F17uLL);
    v9->_rollingHistoryMaxSize = a4;
    v10 = [[NURenderJobStatisticsHistogram alloc] initWithBins:2048 millisPerBin:0.05];
    histogram = v9->_histogram;
    v9->_histogram = v10;

    *&v9->_deliveriesHead = 0u;
    *&v9->_creationsSize = 0u;
    *&v9->_prevCreatedTime = 0u;
  }

  return v9;
}

@end