@interface HDHeadphoneExposureNotificationAnalyticsInfo
- (HDHeadphoneExposureNotificationAnalyticsInfo)initWithLastLockDate:(id)date lastNotificationDate:(id)notificationDate;
- (id)boundedIntegerForMinutesSinceLastUnlockWithNowDate:(id)date;
- (id)boundedIntegerForTimeSinceLastNotificationWithNowDate:(id)date;
@end

@implementation HDHeadphoneExposureNotificationAnalyticsInfo

- (HDHeadphoneExposureNotificationAnalyticsInfo)initWithLastLockDate:(id)date lastNotificationDate:(id)notificationDate
{
  dateCopy = date;
  notificationDateCopy = notificationDate;
  v13.receiver = self;
  v13.super_class = HDHeadphoneExposureNotificationAnalyticsInfo;
  v9 = [(HDHeadphoneExposureNotificationAnalyticsInfo *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lastLockDate, date);
    objc_storeStrong(&v10->_lastNotificationDate, notificationDate);
    v11 = v10;
  }

  return v10;
}

- (id)boundedIntegerForMinutesSinceLastUnlockWithNowDate:(id)date
{
  lastLockDate = self->_lastLockDate;
  if (lastLockDate)
  {
    [date timeIntervalSinceDate:lastLockDate];
    v5 = [HDAudioAnalyticsUtilities boundedIntegerForLockedDuration:?];
  }

  else
  {
    v5 = &unk_2863A99B0;
  }

  return v5;
}

- (id)boundedIntegerForTimeSinceLastNotificationWithNowDate:(id)date
{
  lastNotificationDate = self->_lastNotificationDate;
  if (lastNotificationDate)
  {
    [date timeIntervalSinceDate:lastNotificationDate];
    v5 = [HDAudioAnalyticsUtilities boundedIntegerForTimeSinceLastNotification:?];
  }

  else
  {
    v5 = &unk_2863A99B0;
  }

  return v5;
}

@end