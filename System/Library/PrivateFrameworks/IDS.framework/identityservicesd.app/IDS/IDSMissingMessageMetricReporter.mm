@interface IDSMissingMessageMetricReporter
+ (void)sendMetric:(id)metric;
@end

@implementation IDSMissingMessageMetricReporter

+ (void)sendMetric:(id)metric
{
  metricCopy = metric;
  if ([metricCopy shouldReportMetric])
  {
    v4 = [IDSServerMessage alloc];
    payload = [metricCopy payload];
    command = [metricCopy command];
    v7 = [(IDSServerMessage *)v4 initWithPayload:payload command:command];

    v8 = +[IDSDeliveryController sharedInstance];
    service = [metricCopy service];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1003DBF6C;
    v10[3] = &unk_100BD9D10;
    v11 = metricCopy;
    [v8 sendIDSMessage:v7 service:0 topic:service completionBlock:v10];
  }
}

@end