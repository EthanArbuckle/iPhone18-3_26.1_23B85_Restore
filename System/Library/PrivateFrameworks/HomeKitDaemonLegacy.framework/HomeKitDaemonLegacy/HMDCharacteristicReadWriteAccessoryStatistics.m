@interface HMDCharacteristicReadWriteAccessoryStatistics
- (HMDCharacteristicReadWriteAccessoryStatistics)init;
@end

@implementation HMDCharacteristicReadWriteAccessoryStatistics

- (HMDCharacteristicReadWriteAccessoryStatistics)init
{
  v3.receiver = self;
  v3.super_class = HMDCharacteristicReadWriteAccessoryStatistics;
  result = [(HMDCharacteristicReadWriteAccessoryStatistics *)&v3 init];
  if (result)
  {
    *&result->_isCurrentlySeen = 0;
    result->_resolveAttempted = 0;
    result->_lastSuccessLinkLayerType = 0;
    result->_lastFailedLinkLayerType = 0;
  }

  return result;
}

@end