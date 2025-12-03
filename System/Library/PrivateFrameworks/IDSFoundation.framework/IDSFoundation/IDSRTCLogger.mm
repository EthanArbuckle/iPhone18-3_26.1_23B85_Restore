@interface IDSRTCLogger
+ (id)loggerWithCategory:(unsigned __int16)category;
- (IDSRTCLogger)initWithCategory:(unsigned __int16)category;
- (void)logMetric:(id)metric;
@end

@implementation IDSRTCLogger

- (IDSRTCLogger)initWithCategory:(unsigned __int16)category
{
  v5.receiver = self;
  v5.super_class = IDSRTCLogger;
  result = [(IDSRTCLogger *)&v5 init];
  if (result)
  {
    result->_category = category;
  }

  return result;
}

+ (id)loggerWithCategory:(unsigned __int16)category
{
  v3 = [[self alloc] initWithCategory:category];

  return v3;
}

- (void)logMetric:(id)metric
{
  metricCopy = metric;
  v5 = [MEMORY[0x1E69956E0] RTCSessionPromiseWithBatchingInterval:30.0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A7C92990;
  v7[3] = &unk_1E77E28C8;
  v7[4] = self;
  v8 = metricCopy;
  v6 = metricCopy;
  [v5 registerResultBlock:v7];
}

@end