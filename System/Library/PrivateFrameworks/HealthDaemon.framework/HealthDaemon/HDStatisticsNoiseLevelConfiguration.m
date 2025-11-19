@interface HDStatisticsNoiseLevelConfiguration
- (HDStatisticsNoiseLevelConfiguration)initWithOverlapProcessingEnabled:(BOOL)a3;
@end

@implementation HDStatisticsNoiseLevelConfiguration

- (HDStatisticsNoiseLevelConfiguration)initWithOverlapProcessingEnabled:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HDStatisticsNoiseLevelConfiguration;
  result = [(HDStatisticsNoiseLevelConfiguration *)&v5 init];
  if (result)
  {
    result->_enableOverlapProcessing = a3;
  }

  return result;
}

@end