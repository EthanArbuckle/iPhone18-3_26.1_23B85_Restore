@interface BWBoxedOutputDetectionTimingInfo
- (BWBoxedOutputDetectionTimingInfo)init;
@end

@implementation BWBoxedOutputDetectionTimingInfo

- (BWBoxedOutputDetectionTimingInfo)init
{
  v6.receiver = self;
  v6.super_class = BWBoxedOutputDetectionTimingInfo;
  result = [(BWBoxedOutputDetectionTimingInfo *)&v6 init];
  if (result)
  {
    v3 = MEMORY[0x1E6960C70];
    v4 = *MEMORY[0x1E6960C70];
    *&result->_previousDetectionPTS.value = *MEMORY[0x1E6960C70];
    v5 = *(v3 + 16);
    result->_previousDetectionPTS.epoch = v5;
    *&result->_previousDetectionDuration.value = v4;
    result->_previousDetectionDuration.epoch = v5;
    *&result->_previousNoDetectionPTS.value = v4;
    result->_previousNoDetectionPTS.epoch = v5;
    result->_lastDetectionCount = 0;
  }

  return result;
}

@end