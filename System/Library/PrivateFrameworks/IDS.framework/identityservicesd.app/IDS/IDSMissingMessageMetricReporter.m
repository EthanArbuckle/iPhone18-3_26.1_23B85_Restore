@interface IDSMissingMessageMetricReporter
+ (void)sendMetric:(id)a3;
@end

@implementation IDSMissingMessageMetricReporter

+ (void)sendMetric:(id)a3
{
  v3 = a3;
  if ([v3 shouldReportMetric])
  {
    v4 = [IDSServerMessage alloc];
    v5 = [v3 payload];
    v6 = [v3 command];
    v7 = [(IDSServerMessage *)v4 initWithPayload:v5 command:v6];

    v8 = +[IDSDeliveryController sharedInstance];
    v9 = [v3 service];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1003DBF6C;
    v10[3] = &unk_100BD9D10;
    v11 = v3;
    [v8 sendIDSMessage:v7 service:0 topic:v9 completionBlock:v10];
  }
}

@end