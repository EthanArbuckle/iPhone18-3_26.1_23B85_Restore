@interface CPLBGSTActivity
+ (double)estimatedRunningTimeFromPrediction:(id)prediction minimumRuntime:(double)runtime minimumRuntimeWithExtendedTime:(double)time minimumRuntimeWithVeryLongExtendedTime:(double)extendedTime;
+ (int64_t)_minimumUploadSizeForLargeSession;
+ (int64_t)_minimumUploadSizeForVeryLargeSession;
- (CPLBGSTActivity)initWithTask:(id)task request:(id)request rescheduler:(id)rescheduler;
- (CPLBGSTRescheduler)rescheduler;
- (void)activityHasExpiredWithReason:(unint64_t)reason;
@end

@implementation CPLBGSTActivity

- (CPLBGSTActivity)initWithTask:(id)task request:(id)request rescheduler:(id)rescheduler
{
  requestCopy = request;
  reschedulerCopy = rescheduler;
  v14.receiver = self;
  v14.super_class = CPLBGSTActivity;
  v11 = [(CPLBGSTGenericActivity *)&v14 initWithTask:task];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_request, request);
    objc_storeWeak(&v12->_rescheduler, reschedulerCopy);
  }

  return v12;
}

- (void)activityHasExpiredWithReason:(unint64_t)reason
{
  v6.receiver = self;
  v6.super_class = CPLBGSTActivity;
  [(CPLBGSTGenericActivity *)&v6 activityHasExpiredWithReason:?];
  WeakRetained = objc_loadWeakRetained(&self->_rescheduler);
  [WeakRetained activityHasExpired:self reason:reason];
}

+ (int64_t)_minimumUploadSizeForLargeSession
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"CPLMinimumUploadSizeForLargeSession"];

  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    longLongValue = [v3 longLongValue];
  }

  else
  {
    longLongValue = 209715200;
  }

  return longLongValue;
}

+ (int64_t)_minimumUploadSizeForVeryLargeSession
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"CPLMinimumUploadSizeForVeryLargeSession"];

  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    longLongValue = [v4 longLongValue];
  }

  else
  {
    longLongValue = 0x40000000;
  }

  _minimumUploadSizeForLargeSession = [self _minimumUploadSizeForLargeSession];
  if (_minimumUploadSizeForLargeSession >= longLongValue)
  {
    v7 = 2 * _minimumUploadSizeForLargeSession;
  }

  else
  {
    v7 = longLongValue;
  }

  return v7;
}

+ (double)estimatedRunningTimeFromPrediction:(id)prediction minimumRuntime:(double)runtime minimumRuntimeWithExtendedTime:(double)time minimumRuntimeWithVeryLongExtendedTime:(double)extendedTime
{
  predictionCopy = prediction;
  v10 = [predictionCopy objectForKeyedSubscript:CPLSyncSessionPredictionTypeLargestResourceSize];
  [v10 doubleValue];
  v12 = v11;

  if (([self isVeryLargeUploadSize:v12] & 1) == 0)
  {
    if ([self isLargeUploadSize:v12])
    {
      time = runtime;
    }

    else
    {
      time = 0.0;
    }
  }

  v13 = [predictionCopy objectForKeyedSubscript:CPLSyncSessionPredictionTypeUploadResourceSize];
  [v13 doubleValue];
  v15 = v14;

  if (v15 > 0.0)
  {
    v16 = [predictionCopy objectForKeyedSubscript:CPLSyncSessionPredictionTypeUploadSpeed];
    [v16 doubleValue];
    v18 = v17;

    v19 = 10485760.0;
    if (v18 != 0.0)
    {
      v19 = v18;
    }

    v20 = v15 * 1.29999995 / v19;
    v21 = [predictionCopy objectForKeyedSubscript:CPLSyncSessionPredictionTypeDerivativesGenerationSpeed];
    [v21 doubleValue];
    if (v22 == 0.0)
    {
      v23 = 3145728.0;
    }

    else
    {
      v23 = v22;
    }

    v24 = [predictionCopy objectForKeyedSubscript:CPLSyncSessionPredictionTypeLargeDerivativesGenerationSpeed];
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
    if (time < v30)
    {
      time = v30;
    }
  }

  return time;
}

- (CPLBGSTRescheduler)rescheduler
{
  WeakRetained = objc_loadWeakRetained(&self->_rescheduler);

  return WeakRetained;
}

@end