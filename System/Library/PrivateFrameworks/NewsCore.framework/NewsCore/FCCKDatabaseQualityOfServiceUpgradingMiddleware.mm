@interface FCCKDatabaseQualityOfServiceUpgradingMiddleware
- (int64_t)database:(id)database willEnqueueOperation:(id)operation error:(id *)error;
@end

@implementation FCCKDatabaseQualityOfServiceUpgradingMiddleware

- (int64_t)database:(id)database willEnqueueOperation:(id)operation error:(id *)error
{
  operationCopy = operation;
  configuration = [operationCopy configuration];
  v7 = [configuration copy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;

  if ([v10 qualityOfService] == -1)
  {
    [v10 setQualityOfService:17];
  }

  [v10 setAutomaticallyRetryNetworkFailures:0];
  [v10 setDiscretionaryNetworkBehavior:0];
  [operationCopy setConfiguration:v10];

  return 0;
}

@end