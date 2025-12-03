@interface PDTransitNotificationService
- (void)_checkForNotification;
@end

@implementation PDTransitNotificationService

- (void)_checkForNotification
{
  if (+[PKWalletVisibility isWalletVisible])
  {
    v3 = +[NSProcessInfo processInfo];
    isLowPowerModeEnabled = [v3 isLowPowerModeEnabled];

    if (isLowPowerModeEnabled)
    {
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PDTransitNotificationService: Skipping check because of low power mode", buf, 2u);
      }
    }

    else
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100013C68;
      v6[3] = &unk_100845C80;
      v7 = PDOSTransactionCreate("PDTransitNotificationService.check");
      selfCopy = self;
      v5 = v7;
      [(PDTransitNotificationService *)self _shouldScheduleNotificationActivity:v6];
    }
  }
}

@end