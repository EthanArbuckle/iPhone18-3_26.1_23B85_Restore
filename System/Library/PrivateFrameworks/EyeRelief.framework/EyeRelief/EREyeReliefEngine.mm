@interface EREyeReliefEngine
+ (float)_countReductionForInactiveTime:(double)time forSamplingInterval:(double)interval;
- (BOOL)cancelWithError:(id *)error;
- (BOOL)invalidateWithError:(id *)error;
- (id)_initFromUserDefaults:(BOOL)defaults;
- (void)_processDistanceEvent:(id)event;
- (void)processInactivity:(double)inactivity forSamplingInterval:(double)interval;
- (void)processInterventionOutcome:(int64_t)outcome;
- (void)takeDistanceSampleWithCompletion:(id)completion;
@end

@implementation EREyeReliefEngine

- (id)_initFromUserDefaults:(BOOL)defaults
{
  v13.receiver = self;
  v13.super_class = EREyeReliefEngine;
  v4 = [(EREyeReliefEngine *)&v13 init];
  if (v4)
  {
    v5 = objc_opt_new();
    attentionAwarenessClient = v4->_attentionAwarenessClient;
    v4->_attentionAwarenessClient = v5;

    if (defaults)
    {
      v7 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.EyeRelief"];
      userDefaults = v4->_userDefaults;
      v4->_userDefaults = v7;

      [(NSUserDefaults *)v4->_userDefaults floatForKey:@"TooCloseCount"];
    }

    else
    {
      v10 = v4->_userDefaults;
      v4->_userDefaults = 0;

      v9 = 0.0;
    }

    v4->_tooCloseCount = v9;
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Initializing EyeRelief with too close count of %f", v9];
    [ERLogging log:v11 withType:0];

    v4->_tooCloseDistanceThreshold = [(ERAttentionAwarenessClient *)v4->_attentionAwarenessClient tooCloseDistanceThreshold];
  }

  return v4;
}

- (void)processInterventionOutcome:(int64_t)outcome
{
  if (outcome == 2)
  {
    [(EREyeReliefEngine *)self tooCloseCount];
    *&v6 = fmaxf(v5 + -1.0, 0.0);
    [(EREyeReliefEngine *)self setTooCloseCount:v6];
    [(EREyeReliefEngine *)self setInterventionType:0];
    v7 = MEMORY[0x277CCACA8];
    [(EREyeReliefEngine *)self tooCloseCount];
    v9 = [v7 stringWithFormat:@"User moved device back, reduced count to %f", v8];
    [ERLogging log:v9 withType:0];

    userDefaults = [(EREyeReliefEngine *)self userDefaults];
    [(EREyeReliefEngine *)self tooCloseCount];
    [userDefaults setFloat:@"TooCloseCount" forKey:?];
  }
}

- (void)processInactivity:(double)inactivity forSamplingInterval:(double)interval
{
  [objc_opt_class() _countReductionForInactiveTime:inactivity forSamplingInterval:interval];
  v7 = v6;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sampling was inactive for %f, will reduce count by %f", *&inactivity, v6];
  [ERLogging log:v8 withType:0];

  [(EREyeReliefEngine *)self tooCloseCount];
  *&v10 = fmaxf(v9 - v7, 0.0);
  [(EREyeReliefEngine *)self setTooCloseCount:v10];
  [(EREyeReliefEngine *)self setInterventionType:0];
  userDefaults = [(EREyeReliefEngine *)self userDefaults];
  [(EREyeReliefEngine *)self tooCloseCount];
  [userDefaults setFloat:@"TooCloseCount" forKey:?];
}

- (void)takeDistanceSampleWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = os_transaction_create();
  objc_initWeak(&location, self);
  attentionAwarenessClient = [(EREyeReliefEngine *)self attentionAwarenessClient];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__EREyeReliefEngine_takeDistanceSampleWithCompletion___block_invoke;
  v16[3] = &unk_278FD7DC8;
  v7 = completionCopy;
  v18 = v7;
  objc_copyWeak(&v19, &location);
  v8 = v5;
  v17 = v8;
  [attentionAwarenessClient setInterruptHandler:v16];

  attentionAwarenessClient2 = [(EREyeReliefEngine *)self attentionAwarenessClient];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__EREyeReliefEngine_takeDistanceSampleWithCompletion___block_invoke_2;
  v12[3] = &unk_278FD7DF0;
  objc_copyWeak(&v15, &location);
  v10 = v7;
  v14 = v10;
  v11 = v8;
  v13 = v11;
  [attentionAwarenessClient2 pollWithCompletion:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v19);

  objc_destroyWeak(&location);
}

void __54__EREyeReliefEngine_takeDistanceSampleWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    (*(v1 + 16))(v1, 0, [WeakRetained interventionType]);
  }
}

void __54__EREyeReliefEngine_takeDistanceSampleWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _processDistanceEvent:v9];

  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [v4 userDefaults];
  v6 = objc_loadWeakRetained((a1 + 48));
  [v6 tooCloseCount];
  [v5 setFloat:@"TooCloseCount" forKey:?];

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = objc_loadWeakRetained((a1 + 48));
    (*(v7 + 16))(v7, v9, [v8 interventionType]);
  }
}

- (BOOL)invalidateWithError:(id *)error
{
  attentionAwarenessClient = [(EREyeReliefEngine *)self attentionAwarenessClient];
  LOBYTE(error) = [attentionAwarenessClient invalidateWithError:error];

  return error;
}

- (BOOL)cancelWithError:(id *)error
{
  attentionAwarenessClient = [(EREyeReliefEngine *)self attentionAwarenessClient];
  LOBYTE(error) = [attentionAwarenessClient cancelWithError:error];

  return error;
}

- (void)_processDistanceEvent:(id)event
{
  eventCopy = event;
  v5 = MEMORY[0x277CCACA8];
  v20 = eventCopy;
  if (eventCopy)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Processing distance sample"];
    [ERLogging log:v6 withType:0];

    [(EREyeReliefEngine *)self tooCloseCount];
    v8 = v7;
    if ([v20 distanceCategory])
    {
      if ([v20 distanceCategory] == 1)
      {
        v10 = v8 + -1.0;
LABEL_11:
        v8 = fmaxf(v10, 0.0);
        goto LABEL_12;
      }

      if ([v20 distanceCategory] == 2)
      {
        v10 = v8 - *&EREyeReliefCountReductionForUnknownDistance;
        goto LABEL_11;
      }
    }

    else if ((v8 + 1.0) <= 4.0)
    {
      v8 = v8 + 1.0;
    }

    else
    {
      v8 = 4.0;
    }

LABEL_12:
    *&v9 = v8;
    [(EREyeReliefEngine *)self setTooCloseCount:v9];
    v13 = MEMORY[0x277CCACA8];
    [(EREyeReliefEngine *)self tooCloseCount];
    v15 = [v13 stringWithFormat:@"Too close count: %f", v14];
    [ERLogging log:v15 withType:0];

    [(EREyeReliefEngine *)self tooCloseCount];
    if (v16 >= 4.0)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Shield intervention threshold reached"];
      [ERLogging log:v19 withType:0];

      selfCopy2 = self;
      v18 = 1;
    }

    else
    {
      selfCopy2 = self;
      v18 = 0;
    }

    [(EREyeReliefEngine *)selfCopy2 setInterventionType:v18];
    goto LABEL_16;
  }

  [(EREyeReliefEngine *)self tooCloseCount];
  v12 = [v5 stringWithFormat:@"Distance sample was nil, will not process it. Count is still %f", v11];
  [ERLogging log:v12 withType:0];

LABEL_16:
}

+ (float)_countReductionForInactiveTime:(double)time forSamplingInterval:(double)interval
{
  result = 0.0;
  if (time >= interval)
  {
    v6 = time / interval;
    result = floorf(v6);
    if (result > 4.0)
    {
      return 4.0;
    }
  }

  return result;
}

@end