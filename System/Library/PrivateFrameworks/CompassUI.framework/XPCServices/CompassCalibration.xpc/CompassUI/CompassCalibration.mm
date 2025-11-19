@interface CompassCalibration
- (void)showCalibrationAlert:(id)a3;
@end

@implementation CompassCalibration

- (void)showCalibrationAlert:(id)a3
{
  v3 = a3;
  v6[0] = SBSUIRemoteAlertOptionViewControllerClass;
  v6[1] = SBSUIRemoteAlertOptionDismissWithHomeButton;
  v7[0] = @"CalibrationViewServiceController";
  v7[1] = &__kCFBooleanTrue;
  [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  v5 = v3;
  v4 = v3;
  SBSUIActivateRemoteAlertWithLifecycleNotifications();
}

@end