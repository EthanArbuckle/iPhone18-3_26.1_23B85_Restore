@interface MedicationDataScanningCoordinator
- (void)pulseTimerFiredWithTimer:(id)timer;
@end

@implementation MedicationDataScanningCoordinator

- (void)pulseTimerFiredWithTimer:(id)timer
{
  timerCopy = timer;

  sub_2518EECC4();
}

@end