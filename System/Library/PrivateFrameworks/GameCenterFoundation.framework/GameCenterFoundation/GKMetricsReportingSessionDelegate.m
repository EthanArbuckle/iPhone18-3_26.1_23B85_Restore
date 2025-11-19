@interface GKMetricsReportingSessionDelegate
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
@end

@implementation GKMetricsReportingSessionDelegate

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  MetricsReportingSessionDelegate.urlSession(_:task:didFinishCollecting:)(v11, v9, v10);
}

@end