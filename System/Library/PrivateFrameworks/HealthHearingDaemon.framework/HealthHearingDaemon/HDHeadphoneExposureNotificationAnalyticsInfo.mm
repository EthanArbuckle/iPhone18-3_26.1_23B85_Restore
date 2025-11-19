@interface HDHeadphoneExposureNotificationAnalyticsInfo
- (HDHeadphoneExposureNotificationAnalyticsInfo)initWithLastLockDate:(id)a3 lastNotificationDate:(id)a4;
- (id)boundedIntegerForMinutesSinceLastUnlockWithNowDate:(id)a3;
- (id)boundedIntegerForTimeSinceLastNotificationWithNowDate:(id)a3;
@end

@implementation HDHeadphoneExposureNotificationAnalyticsInfo

- (HDHeadphoneExposureNotificationAnalyticsInfo)initWithLastLockDate:(id)a3 lastNotificationDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HDHeadphoneExposureNotificationAnalyticsInfo;
  v9 = [(HDHeadphoneExposureNotificationAnalyticsInfo *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lastLockDate, a3);
    objc_storeStrong(&v10->_lastNotificationDate, a4);
    v11 = v10;
  }

  return v10;
}

- (id)boundedIntegerForMinutesSinceLastUnlockWithNowDate:(id)a3
{
  lastLockDate = self->_lastLockDate;
  if (lastLockDate)
  {
    [a3 timeIntervalSinceDate:lastLockDate];
    v5 = [HDAudioAnalyticsUtilities boundedIntegerForLockedDuration:?];
  }

  else
  {
    v5 = &unk_2863A99B0;
  }

  return v5;
}

- (id)boundedIntegerForTimeSinceLastNotificationWithNowDate:(id)a3
{
  lastNotificationDate = self->_lastNotificationDate;
  if (lastNotificationDate)
  {
    [a3 timeIntervalSinceDate:lastNotificationDate];
    v5 = [HDAudioAnalyticsUtilities boundedIntegerForTimeSinceLastNotification:?];
  }

  else
  {
    v5 = &unk_2863A99B0;
  }

  return v5;
}

@end