@interface MTRPluginInvokeCommandExpectationMetric
+ (id)invokeCommandExpectationMetricForMetric:(id)metric;
- (id)additionalCoreAnalyticsEventDictionary;
- (id)remoteMessageID;
- (void)setRemoteMessageID:(id)d;
@end

@implementation MTRPluginInvokeCommandExpectationMetric

+ (id)invokeCommandExpectationMetricForMetric:(id)metric
{
  metricCopy = metric;
  v4 = [(MTRPluginMetric *)[MTRPluginInvokeCommandExpectationMetric alloc] initMetricWithName:@"com.apple.matter.invokeCommandExpectationEvent" sourceMetric:metricCopy];
  [v4 setInvokeCommandMetric:metricCopy];

  return v4;
}

- (id)additionalCoreAnalyticsEventDictionary
{
  invokeCommandMetric = [(MTRPluginInvokeCommandExpectationMetric *)self invokeCommandMetric];
  additionalCoreAnalyticsEventDictionary = [invokeCommandMetric additionalCoreAnalyticsEventDictionary];

  return additionalCoreAnalyticsEventDictionary;
}

- (id)remoteMessageID
{
  invokeCommandMetric = [(MTRPluginInvokeCommandExpectationMetric *)self invokeCommandMetric];
  remoteMessageID = [invokeCommandMetric remoteMessageID];

  return remoteMessageID;
}

- (void)setRemoteMessageID:(id)d
{
  dCopy = d;
  invokeCommandMetric = [(MTRPluginInvokeCommandExpectationMetric *)self invokeCommandMetric];
  [invokeCommandMetric setRemoteMessageID:dCopy];
}

@end