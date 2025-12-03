@interface CompassCalibration
- (void)showCalibrationAlert:(id)alert;
@end

@implementation CompassCalibration

- (void)showCalibrationAlert:(id)alert
{
  alertCopy = alert;
  v6[0] = SBSUIRemoteAlertOptionViewControllerClass;
  v6[1] = SBSUIRemoteAlertOptionDismissWithHomeButton;
  v7[0] = @"CalibrationViewServiceController";
  v7[1] = &__kCFBooleanTrue;
  [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  v5 = alertCopy;
  v4 = alertCopy;
  SBSUIActivateRemoteAlertWithLifecycleNotifications();
}

@end