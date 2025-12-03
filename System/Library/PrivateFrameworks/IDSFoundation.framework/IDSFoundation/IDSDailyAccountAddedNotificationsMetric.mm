@interface IDSDailyAccountAddedNotificationsMetric
- (IDSDailyAccountAddedNotificationsMetric)initWithNotificationsPostedToday:(id)today duplicateNotificationPostedToday:(id)postedToday;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSDailyAccountAddedNotificationsMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  dailyNotificationsPosted = self->_dailyNotificationsPosted;
  if (dailyNotificationsPosted)
  {
    CFDictionarySetValue(v3, @"daily_notifications_posted", dailyNotificationsPosted);
  }

  dailyDuplicateNotificationsPosted = self->_dailyDuplicateNotificationsPosted;
  if (dailyDuplicateNotificationsPosted)
  {
    CFDictionarySetValue(v4, @"daily_duplicate_notifications_posted", dailyDuplicateNotificationsPosted);
  }

  return v4;
}

- (IDSDailyAccountAddedNotificationsMetric)initWithNotificationsPostedToday:(id)today duplicateNotificationPostedToday:(id)postedToday
{
  todayCopy = today;
  postedTodayCopy = postedToday;
  v12.receiver = self;
  v12.super_class = IDSDailyAccountAddedNotificationsMetric;
  v9 = [(IDSDailyAccountAddedNotificationsMetric *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dailyNotificationsPosted, today);
    objc_storeStrong(&v10->_dailyDuplicateNotificationsPosted, postedToday);
  }

  return v10;
}

@end