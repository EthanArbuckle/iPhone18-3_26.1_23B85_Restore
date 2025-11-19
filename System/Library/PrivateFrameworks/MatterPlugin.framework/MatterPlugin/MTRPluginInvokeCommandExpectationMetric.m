@interface MTRPluginInvokeCommandExpectationMetric
+ (id)invokeCommandExpectationMetricForMetric:(id)a3;
- (id)additionalCoreAnalyticsEventDictionary;
- (id)remoteMessageID;
- (void)setRemoteMessageID:(id)a3;
@end

@implementation MTRPluginInvokeCommandExpectationMetric

+ (id)invokeCommandExpectationMetricForMetric:(id)a3
{
  v3 = a3;
  v4 = [(MTRPluginMetric *)[MTRPluginInvokeCommandExpectationMetric alloc] initMetricWithName:@"com.apple.matter.invokeCommandExpectationEvent" sourceMetric:v3];
  [v4 setInvokeCommandMetric:v3];

  return v4;
}

- (id)additionalCoreAnalyticsEventDictionary
{
  v2 = [(MTRPluginInvokeCommandExpectationMetric *)self invokeCommandMetric];
  v3 = [v2 additionalCoreAnalyticsEventDictionary];

  return v3;
}

- (id)remoteMessageID
{
  v2 = [(MTRPluginInvokeCommandExpectationMetric *)self invokeCommandMetric];
  v3 = [v2 remoteMessageID];

  return v3;
}

- (void)setRemoteMessageID:(id)a3
{
  v4 = a3;
  v5 = [(MTRPluginInvokeCommandExpectationMetric *)self invokeCommandMetric];
  [v5 setRemoteMessageID:v4];
}

@end