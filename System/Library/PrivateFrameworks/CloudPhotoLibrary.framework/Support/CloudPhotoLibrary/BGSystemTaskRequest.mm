@interface BGSystemTaskRequest
+ (double)maximumRuntimeForImmediateRun;
+ (int64_t)maximumUploadSizeForImmediateRun;
+ (int64_t)predictedUploadSizeForPrediction:(id)prediction;
- (BOOL)cplRequestsImmediateRuntime;
- (void)updateWithPrediction:(id)prediction;
@end

@implementation BGSystemTaskRequest

- (void)updateWithPrediction:(id)prediction
{
  predictionCopy = prediction;
  [(BGSystemTaskRequest *)self setNetworkUploadSize:[BGSystemTaskRequest predictedUploadSizeForPrediction:predictionCopy]];
  v5 = [predictionCopy objectForKeyedSubscript:CPLSyncSessionPredictionTypeDownloadResourceSize];

  -[BGSystemTaskRequest setNetworkDownloadSize:](self, "setNetworkDownloadSize:", [v5 longLongValue]);
}

+ (int64_t)predictedUploadSizeForPrediction:(id)prediction
{
  v3 = [prediction objectForKeyedSubscript:CPLSyncSessionPredictionTypeUploadResourceSize];
  [v3 doubleValue];
  v5 = (v4 * 1.29999995);

  return v5;
}

+ (int64_t)maximumUploadSizeForImmediateRun
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"CPLMaximumUploadSizeForImmediateRun"];

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

+ (double)maximumRuntimeForImmediateRun
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"CPLMaximumUploadSizeForImmediateRun"];

  v4 = 90.0;
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 doubleValue];
    v4 = v5;
  }

  return v4;
}

- (BOOL)cplRequestsImmediateRuntime
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(BGSystemTaskRequest *)self requestsImmediateRuntime];
}

@end