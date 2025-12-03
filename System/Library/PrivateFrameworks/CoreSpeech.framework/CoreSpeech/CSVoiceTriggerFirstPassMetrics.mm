@interface CSVoiceTriggerFirstPassMetrics
+ (CSVoiceTriggerFirstPassMetrics)CSVoiceTriggerFirstPassMetricsWithFirstPassInfoGeneratedTime:(unint64_t)time firstPassInfoProcessedTime:(unint64_t)processedTime;
- (id)_initWithFirstPassInfoGeneratedTime:(unint64_t)time firstPassInfoProcessedTime:(unint64_t)processedTime;
@end

@implementation CSVoiceTriggerFirstPassMetrics

- (id)_initWithFirstPassInfoGeneratedTime:(unint64_t)time firstPassInfoProcessedTime:(unint64_t)processedTime
{
  v12.receiver = self;
  v12.super_class = CSVoiceTriggerFirstPassMetrics;
  v6 = [(CSVoiceTriggerFirstPassMetrics *)&v12 init];
  if (v6)
  {
    v7 = [NSNumber numberWithUnsignedLongLong:time];
    firstPassInfoGeneratedTime = v6->_firstPassInfoGeneratedTime;
    v6->_firstPassInfoGeneratedTime = v7;

    v9 = [NSNumber numberWithUnsignedLongLong:processedTime];
    firstPassInfoProcessedTime = v6->_firstPassInfoProcessedTime;
    v6->_firstPassInfoProcessedTime = v9;
  }

  return v6;
}

+ (CSVoiceTriggerFirstPassMetrics)CSVoiceTriggerFirstPassMetricsWithFirstPassInfoGeneratedTime:(unint64_t)time firstPassInfoProcessedTime:(unint64_t)processedTime
{
  v4 = [[CSVoiceTriggerFirstPassMetrics alloc] _initWithFirstPassInfoGeneratedTime:time firstPassInfoProcessedTime:processedTime];

  return v4;
}

@end