@interface HDHeadphoneExposureStatisticUpdateResult
- (id)_initWithIncludedSeries:(BOOL)a3 canTriggerNotification:(BOOL)a4;
- (void)combineWithResult:(id)a3;
@end

@implementation HDHeadphoneExposureStatisticUpdateResult

- (void)combineWithResult:(id)a3
{
  v6 = a3;
  v4 = [(HDHeadphoneExposureStatisticUpdateResult *)self includedSeries];
  if (v4)
  {
    LOBYTE(v4) = [v6 includedSeries];
  }

  self->_includedSeries = v4;
  if ([(HDHeadphoneExposureStatisticUpdateResult *)self canTriggerNotification])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v6 canTriggerNotification];
  }

  self->_canTriggerNotification = v5;

  MEMORY[0x2821F96F8]();
}

- (id)_initWithIncludedSeries:(BOOL)a3 canTriggerNotification:(BOOL)a4
{
  v10.receiver = self;
  v10.super_class = HDHeadphoneExposureStatisticUpdateResult;
  v6 = [(HDHeadphoneExposureStatisticUpdateResult *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_includedSeries = a3;
    v6->_canTriggerNotification = a4;
    v8 = v6;
  }

  return v7;
}

@end