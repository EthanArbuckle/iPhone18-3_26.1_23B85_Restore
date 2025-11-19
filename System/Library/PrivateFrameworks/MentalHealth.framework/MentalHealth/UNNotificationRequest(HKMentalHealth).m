@interface UNNotificationRequest(HKMentalHealth)
+ (id)_contentForCategoryIdentifier:()HKMentalHealth;
+ (id)_notificationRequestIdentifierForCategoryIdentifier:()HKMentalHealth date:;
+ (id)_stringForEventDate:()HKMentalHealth;
+ (id)hkmh_requestForCategoryIdentifier:()HKMentalHealth date:;
@end

@implementation UNNotificationRequest(HKMentalHealth)

+ (id)hkmh_requestForCategoryIdentifier:()HKMentalHealth date:
{
  v6 = a3;
  v7 = [a1 _notificationRequestIdentifierForCategoryIdentifier:v6 date:a4];
  v8 = [a1 _contentForCategoryIdentifier:v6];

  v9 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v7 content:v8 trigger:0];

  return v9;
}

+ (id)_notificationRequestIdentifierForCategoryIdentifier:()HKMentalHealth date:
{
  v6 = a3;
  v7 = [a1 _stringForEventDate:a4];
  v8 = [v6 stringByAppendingFormat:@"_%@", v7];

  return v8;
}

+ (id)_stringForEventDate:()HKMentalHealth
{
  v3 = MEMORY[0x277CCA968];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v5 setLocale:v6];

  v7 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v5 setTimeZone:v7];

  [v5 setDateFormat:@"yyyy-MM-dd_HH:mm"];
  v8 = [v5 stringFromDate:v4];

  return v8;
}

+ (id)_contentForCategoryIdentifier:()HKMentalHealth
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v5 = v3;
  if ([v5 isEqualToString:@"MentalHealthAppPlugin.CustomReminder"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"MentalHealthAppPlugin.MiddayReminder"))
  {
    v6 = @"NOTIFICATION_STATE_OF_MIND_MOMENTARY_TITLE";
  }

  else if ([v5 isEqualToString:@"MentalHealthAppPlugin.EndOfDayReminder"])
  {
    v6 = @"NOTIFICATION_STATE_OF_MIND_DAILY_TITLE";
  }

  else
  {
    if (![v5 isEqualToString:@"MentalHealthAppPlugin.PeriodicPromptedAssessmentReminder"])
    {
      v7 = 0;
      goto LABEL_5;
    }

    v6 = @"NOTIFICATION_MENTAL_HEALTH_PERIODIC_PROMPTED_ASSESSMENTS_TITLE";
  }

  v7 = HKMHLocalizedNotificationString(v6);
LABEL_5:

  [v4 setTitle:v7];
  v8 = v5;
  if ([v8 isEqualToString:@"MentalHealthAppPlugin.CustomReminder"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"MentalHealthAppPlugin.MiddayReminder"))
  {
    v9 = @"NOTIFICATION_STATE_OF_MIND_MOMENTARY_BODY";
LABEL_8:
    v10 = HKMHLocalizedNotificationString(v9);
    goto LABEL_9;
  }

  if ([v8 isEqualToString:@"MentalHealthAppPlugin.EndOfDayReminder"])
  {
    v9 = @"NOTIFICATION_STATE_OF_MIND_DAILY_BODY";
    goto LABEL_8;
  }

  if ([v8 isEqualToString:@"MentalHealthAppPlugin.PeriodicPromptedAssessmentReminder"])
  {
    v9 = @"NOTIFICATION_MENTAL_HEALTH_PERIODIC_PROMPTED_ASSESSMENTS_BODY_IOS";
    goto LABEL_8;
  }

  v10 = 0;
LABEL_9:

  [v4 setBody:v10];
  [v4 setCategoryIdentifier:v8];
  v11 = [MEMORY[0x277CE1FE0] defaultSound];
  [v4 setSound:v11];

  v12 = [v4 userInfo];
  v13 = [v12 mutableCopy];

  [v13 setObject:&unk_2869CD0C0 forKeyedSubscript:*MEMORY[0x277CCE4D0]];
  v14 = [v13 copy];
  [v4 setUserInfo:v14];

  return v4;
}

@end