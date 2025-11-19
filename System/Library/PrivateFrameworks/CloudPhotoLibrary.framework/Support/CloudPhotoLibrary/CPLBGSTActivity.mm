@interface CPLBGSTActivity
+ (double)estimatedRunningTimeFromPrediction:(id)a3 minimumRuntime:(double)a4 minimumRuntimeWithExtendedTime:(double)a5 minimumRuntimeWithVeryLongExtendedTime:(double)a6;
+ (int64_t)_minimumUploadSizeForLargeSession;
+ (int64_t)_minimumUploadSizeForVeryLargeSession;
- (CPLBGSTActivity)initWithTask:(id)a3 request:(id)a4 rescheduler:(id)a5;
- (CPLBGSTRescheduler)rescheduler;
- (void)activityHasExpiredWithReason:(unint64_t)a3;
@end

@implementation CPLBGSTActivity

- (CPLBGSTActivity)initWithTask:(id)a3 request:(id)a4 rescheduler:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CPLBGSTActivity;
  v11 = [(CPLBGSTGenericActivity *)&v14 initWithTask:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_request, a4);
    objc_storeWeak(&v12->_rescheduler, v10);
  }

  return v12;
}

- (void)activityHasExpiredWithReason:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = CPLBGSTActivity;
  [(CPLBGSTGenericActivity *)&v6 activityHasExpiredWithReason:?];
  WeakRetained = objc_loadWeakRetained(&self->_rescheduler);
  [WeakRetained activityHasExpired:self reason:a3];
}

+ (int64_t)_minimumUploadSizeForLargeSession
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"CPLMinimumUploadSizeForLargeSession"];

  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 longLongValue];
  }

  else
  {
    v4 = 209715200;
  }

  return v4;
}

+ (int64_t)_minimumUploadSizeForVeryLargeSession
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"CPLMinimumUploadSizeForVeryLargeSession"];

  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [v4 longLongValue];
  }

  else
  {
    v5 = 0x40000000;
  }

  v6 = [a1 _minimumUploadSizeForLargeSession];
  if (v6 >= v5)
  {
    v7 = 2 * v6;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

+ (double)estimatedRunningTimeFromPrediction:(id)a3 minimumRuntime:(double)a4 minimumRuntimeWithExtendedTime:(double)a5 minimumRuntimeWithVeryLongExtendedTime:(double)a6
{
  v9 = a3;
  v10 = [v9 objectForKeyedSubscript:CPLSyncSessionPredictionTypeLargestResourceSize];
  [v10 doubleValue];
  v12 = v11;

  if (([a1 isVeryLargeUploadSize:v12] & 1) == 0)
  {
    if ([a1 isLargeUploadSize:v12])
    {
      a5 = a4;
    }

    else
    {
      a5 = 0.0;
    }
  }

  v13 = [v9 objectForKeyedSubscript:CPLSyncSessionPredictionTypeUploadResourceSize];
  [v13 doubleValue];
  v15 = v14;

  if (v15 > 0.0)
  {
    v16 = [v9 objectForKeyedSubscript:CPLSyncSessionPredictionTypeUploadSpeed];
    [v16 doubleValue];
    v18 = v17;

    v19 = 10485760.0;
    if (v18 != 0.0)
    {
      v19 = v18;
    }

    v20 = v15 * 1.29999995 / v19;
    v21 = [v9 objectForKeyedSubscript:CPLSyncSessionPredictionTypeDerivativesGenerationSpeed];
    [v21 doubleValue];
    if (v22 == 0.0)
    {
      v23 = 3145728.0;
    }

    else
    {
      v23 = v22;
    }

    v24 = [v9 objectForKeyedSubscript:CPLSyncSessionPredictionTypeLargeDerivativesGenerationSpeed];
    [v24 doubleValue];
    v26 = v25;

    v27 = 0.0;
    v28 = 10485760.0;
    if (v26 != 0.0)
    {
      v28 = v26;
    }

    v29 = v12 / v28 + 0.0;
    if (v12 > 0.0)
    {
      v27 = v29;
    }

    if (v15 > v12)
    {
      v27 = (v15 - v12) / v23 + v27;
    }

    v30 = v20 + v27;
    if (a5 < v30)
    {
      a5 = v30;
    }
  }

  return a5;
}

- (CPLBGSTRescheduler)rescheduler
{
  WeakRetained = objc_loadWeakRetained(&self->_rescheduler);

  return WeakRetained;
}

@end