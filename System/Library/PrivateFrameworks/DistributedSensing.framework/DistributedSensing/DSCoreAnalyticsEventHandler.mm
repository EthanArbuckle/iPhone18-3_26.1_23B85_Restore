@interface DSCoreAnalyticsEventHandler
- (DSCoreAnalyticsEventHandler)init;
- (void)dsFirstListenerSessionSetUnsuccessful;
- (void)dsProviderAvailable;
- (void)dsProviderUnavailable;
@end

@implementation DSCoreAnalyticsEventHandler

- (DSCoreAnalyticsEventHandler)init
{
  v6.receiver = self;
  v6.super_class = DSCoreAnalyticsEventHandler;
  v2 = [(DSCoreAnalyticsEventHandler *)&v6 init];
  v3 = v2;
  if (v2)
  {
    sessionMetric = v2->_sessionMetric;
    v2->_sessionMetric = 0;
  }

  return v3;
}

- (void)dsProviderAvailable
{
  sessionMetric = self->_sessionMetric;
  if (sessionMetric)
  {

    [(DSSessionMetric *)sessionMetric dsProviderAvailable];
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v5 = +[DSLogging sharedInstance];
    dsLogger = [v5 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSCoreAnalytics] null metric during provider availability update\n", v7, 2u);
    }
  }
}

- (void)dsProviderUnavailable
{
  sessionMetric = self->_sessionMetric;
  if (sessionMetric)
  {

    [(DSSessionMetric *)sessionMetric dsProviderUnavailable];
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v5 = +[DSLogging sharedInstance];
    dsLogger = [v5 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSCoreAnalytics] null metric during provider unavailability update\n", v7, 2u);
    }
  }
}

- (void)dsFirstListenerSessionSetUnsuccessful
{
  sessionMetric = self->_sessionMetric;
  if (sessionMetric)
  {

    [(DSSessionMetric *)sessionMetric dsFirstListenerSessionSetUnsuccessful];
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v5 = +[DSLogging sharedInstance];
    dsLogger = [v5 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSCoreAnalytics] null metric during first listener session update\n", v7, 2u);
    }
  }
}

- (void)dsSessionCompletedWithStopReason:(NSObject *)a1 numHeartbeats:numMotionStateMessages:activeProviderLostCount:dataLinkType:maxListenerClients:avgListenerStartInterval:.cold.1(NSObject **a1)
{
  v2 = +[DSLogging sharedInstance];
  v3 = [v2 dsLogger];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_0(&dword_249027000, v4, v5, "[DSCoreAnalytics] null event name\n", v6, v7, v8, v9, 0);
  }

  *a1 = v3;
}

- (void)dsSessionCompletedWithStopReason:(NSObject *)a1 numHeartbeats:numMotionStateMessages:activeProviderLostCount:dataLinkType:maxListenerClients:avgListenerStartInterval:.cold.2(NSObject **a1)
{
  v2 = +[DSLogging sharedInstance];
  v3 = [v2 dsLogger];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_0(&dword_249027000, v4, v5, "[DSCoreAnalytics] null event dictionary\n", v6, v7, v8, v9, 0);
  }

  *a1 = v3;
}

@end