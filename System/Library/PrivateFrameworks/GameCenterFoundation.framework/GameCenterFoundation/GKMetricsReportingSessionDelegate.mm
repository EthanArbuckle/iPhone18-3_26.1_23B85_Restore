@interface GKMetricsReportingSessionDelegate
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
@end

@implementation GKMetricsReportingSessionDelegate

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  sessionCopy = session;
  taskCopy = task;
  metricsCopy = metrics;
  selfCopy = self;
  MetricsReportingSessionDelegate.urlSession(_:task:didFinishCollecting:)(selfCopy, taskCopy, metricsCopy);
}

@end