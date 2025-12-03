@interface HDStatisticsNoiseLevelConfiguration
- (HDStatisticsNoiseLevelConfiguration)initWithOverlapProcessingEnabled:(BOOL)enabled;
@end

@implementation HDStatisticsNoiseLevelConfiguration

- (HDStatisticsNoiseLevelConfiguration)initWithOverlapProcessingEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = HDStatisticsNoiseLevelConfiguration;
  result = [(HDStatisticsNoiseLevelConfiguration *)&v5 init];
  if (result)
  {
    result->_enableOverlapProcessing = enabled;
  }

  return result;
}

@end