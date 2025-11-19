@interface BGSystemTaskRequest
+ (double)maximumRuntimeForImmediateRun;
+ (int64_t)maximumUploadSizeForImmediateRun;
+ (int64_t)predictedUploadSizeForPrediction:(id)a3;
- (BOOL)cplRequestsImmediateRuntime;
- (void)updateWithPrediction:(id)a3;
@end

@implementation BGSystemTaskRequest

- (void)updateWithPrediction:(id)a3
{
  v4 = a3;
  [(BGSystemTaskRequest *)self setNetworkUploadSize:[BGSystemTaskRequest predictedUploadSizeForPrediction:v4]];
  v5 = [v4 objectForKeyedSubscript:CPLSyncSessionPredictionTypeDownloadResourceSize];

  -[BGSystemTaskRequest setNetworkDownloadSize:](self, "setNetworkDownloadSize:", [v5 longLongValue]);
}

+ (int64_t)predictedUploadSizeForPrediction:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:CPLSyncSessionPredictionTypeUploadResourceSize];
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
    v4 = [v3 longLongValue];
  }

  else
  {
    v4 = 209715200;
  }

  return v4;
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