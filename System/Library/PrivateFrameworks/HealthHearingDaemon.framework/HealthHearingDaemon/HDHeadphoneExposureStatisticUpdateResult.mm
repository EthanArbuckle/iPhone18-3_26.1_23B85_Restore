@interface HDHeadphoneExposureStatisticUpdateResult
- (id)_initWithIncludedSeries:(BOOL)series canTriggerNotification:(BOOL)notification;
- (void)combineWithResult:(id)result;
@end

@implementation HDHeadphoneExposureStatisticUpdateResult

- (void)combineWithResult:(id)result
{
  resultCopy = result;
  includedSeries = [(HDHeadphoneExposureStatisticUpdateResult *)self includedSeries];
  if (includedSeries)
  {
    LOBYTE(includedSeries) = [resultCopy includedSeries];
  }

  self->_includedSeries = includedSeries;
  if ([(HDHeadphoneExposureStatisticUpdateResult *)self canTriggerNotification])
  {
    canTriggerNotification = 1;
  }

  else
  {
    canTriggerNotification = [resultCopy canTriggerNotification];
  }

  self->_canTriggerNotification = canTriggerNotification;

  MEMORY[0x2821F96F8]();
}

- (id)_initWithIncludedSeries:(BOOL)series canTriggerNotification:(BOOL)notification
{
  v10.receiver = self;
  v10.super_class = HDHeadphoneExposureStatisticUpdateResult;
  v6 = [(HDHeadphoneExposureStatisticUpdateResult *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_includedSeries = series;
    v6->_canTriggerNotification = notification;
    v8 = v6;
  }

  return v7;
}

@end