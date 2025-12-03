@interface MTSampling
- (BOOL)isSampledInWithEventType:(id)type samplingForced:(id)forced sessionSamplingPercentage:(id)percentage sessionDuration:(id)duration samplingPercentage:(id)samplingPercentage;
- (BOOL)isSampledInWithEventType:(id)type sessionSamplingPercentage:(double)percentage sessionDurationMs:(unint64_t)ms;
- (BOOL)isSampledInWithMetricsData:(id)data;
- (MTSampling)init;
- (void)clearSessionWithEventType:(id)type;
@end

@implementation MTSampling

- (MTSampling)init
{
  v5.receiver = self;
  v5.super_class = MTSampling;
  v2 = [(MTSampling *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(MTSampling *)v2 setSessions:v3];
  }

  return v2;
}

- (BOOL)isSampledInWithMetricsData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy objectForKeyedSubscript:@"eventType"];
  v5 = [dataCopy objectForKeyedSubscript:@"xpSamplingPercentageUsers"];
  v6 = [dataCopy objectForKeyedSubscript:@"xpSessionDuration"];
  v7 = [dataCopy objectForKeyedSubscript:@"xpSamplingForced"];
  v8 = [dataCopy objectForKeyedSubscript:@"xpSamplingPercentage"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v5;
  }

  else
  {
    v11 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v6;
  }

  else
  {
    v12 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(MTSampling *)self isSampledInWithEventType:v9 samplingForced:v10 sessionSamplingPercentage:v11 sessionDuration:v12 samplingPercentage:v13];

  return v14;
}

- (BOOL)isSampledInWithEventType:(id)type samplingForced:(id)forced sessionSamplingPercentage:(id)percentage sessionDuration:(id)duration samplingPercentage:(id)samplingPercentage
{
  typeCopy = type;
  forcedCopy = forced;
  percentageCopy = percentage;
  durationCopy = duration;
  samplingPercentageCopy = samplingPercentage;
  v20 = 1;
  if (!forcedCopy || ([forcedCopy BOOLValue] & 1) == 0)
  {
    if (!typeCopy || (percentageCopy ? (v17 = percentageCopy) : (v17 = &unk_286A4C200), ([v17 doubleValue], durationCopy) ? (v19 = durationCopy) : (v19 = &unk_286A4C200), !-[MTSampling isSampledInWithEventType:sessionSamplingPercentage:sessionDurationMs:](self, "isSampledInWithEventType:sessionSamplingPercentage:sessionDurationMs:", typeCopy, objc_msgSend(v19, "unsignedIntValue"), v18)))
    {
      if (!samplingPercentageCopy || ([samplingPercentageCopy doubleValue], !-[MTSampling isSampledInWithSamplingPercentage:](self, "isSampledInWithSamplingPercentage:")))
      {
        v20 = 0;
      }
    }
  }

  return v20;
}

- (BOOL)isSampledInWithEventType:(id)type sessionSamplingPercentage:(double)percentage sessionDurationMs:(unint64_t)ms
{
  typeCopy = type;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sessions = [(MTSampling *)selfCopy sessions];
  v11 = [sessions objectForKeyedSubscript:typeCopy];

  if (v11)
  {
    v12 = [MEMORY[0x277CBEAA8] now];
    v13 = [v12 compare:v11];

    if (v13 != -1)
    {
      sessions2 = [(MTSampling *)selfCopy sessions];
      [sessions2 removeObjectForKey:typeCopy];

      v11 = 0;
    }
  }

  objc_sync_exit(selfCopy);

  if (v11)
  {
    v15 = [MEMORY[0x277CBEAA8] now];
    v16 = [v15 compare:v11];

    if (v16 == -1)
    {
      goto LABEL_13;
    }
  }

  if (percentage == 0.0)
  {
    v17 = 0;
    goto LABEL_14;
  }

  v18 = [(MTSampling *)selfCopy isSampledInWithSamplingPercentage:percentage];
  v17 = v18;
  if (ms && v18)
  {
    v19 = ms / 1000.0;
    v20 = [MEMORY[0x277CBEAA8] now];
    v21 = [v20 dateByAddingTimeInterval:v19];

    v22 = selfCopy;
    objc_sync_enter(v22);
    sessions3 = [(MTSampling *)v22 sessions];
    v24 = [sessions3 objectForKeyedSubscript:typeCopy];

    if (!v24)
    {
      sessions4 = [(MTSampling *)v22 sessions];
      [sessions4 setObject:v21 forKeyedSubscript:typeCopy];
    }

    objc_sync_exit(v22);
    objc_initWeak(&location, v22);
    v26 = MEMORY[0x277CBEBB8];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __83__MTSampling_isSampledInWithEventType_sessionSamplingPercentage_sessionDurationMs___block_invoke;
    v29[3] = &unk_2798CD090;
    objc_copyWeak(&v31, &location);
    v30 = typeCopy;
    v27 = [v26 scheduledTimerWithTimeInterval:0 repeats:v29 block:v19];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);

LABEL_13:
    v17 = 1;
  }

LABEL_14:

  return v17;
}

void __83__MTSampling_isSampledInWithEventType_sessionSamplingPercentage_sessionDurationMs___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained clearSessionWithEventType:*(a1 + 32)];
}

- (void)clearSessionWithEventType:(id)type
{
  typeCopy = type;
  sessions = [(MTSampling *)self sessions];
  v5 = [sessions objectForKeyedSubscript:typeCopy];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    v7 = [v6 compare:v5];

    if (v7 != -1)
    {
      sessions2 = [(MTSampling *)self sessions];
      [sessions2 removeObjectForKey:typeCopy];
    }
  }
}

@end