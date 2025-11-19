@interface CSVoiceTriggerFirstPassMetrics
+ (CSVoiceTriggerFirstPassMetrics)CSVoiceTriggerFirstPassMetricsWithFirstPassInfoGeneratedTime:(unint64_t)a3 firstPassInfoProcessedTime:(unint64_t)a4;
- (id)_initWithFirstPassInfoGeneratedTime:(unint64_t)a3 firstPassInfoProcessedTime:(unint64_t)a4;
@end

@implementation CSVoiceTriggerFirstPassMetrics

- (id)_initWithFirstPassInfoGeneratedTime:(unint64_t)a3 firstPassInfoProcessedTime:(unint64_t)a4
{
  v12.receiver = self;
  v12.super_class = CSVoiceTriggerFirstPassMetrics;
  v6 = [(CSVoiceTriggerFirstPassMetrics *)&v12 init];
  if (v6)
  {
    v7 = [NSNumber numberWithUnsignedLongLong:a3];
    firstPassInfoGeneratedTime = v6->_firstPassInfoGeneratedTime;
    v6->_firstPassInfoGeneratedTime = v7;

    v9 = [NSNumber numberWithUnsignedLongLong:a4];
    firstPassInfoProcessedTime = v6->_firstPassInfoProcessedTime;
    v6->_firstPassInfoProcessedTime = v9;
  }

  return v6;
}

+ (CSVoiceTriggerFirstPassMetrics)CSVoiceTriggerFirstPassMetricsWithFirstPassInfoGeneratedTime:(unint64_t)a3 firstPassInfoProcessedTime:(unint64_t)a4
{
  v4 = [[CSVoiceTriggerFirstPassMetrics alloc] _initWithFirstPassInfoGeneratedTime:a3 firstPassInfoProcessedTime:a4];

  return v4;
}

@end