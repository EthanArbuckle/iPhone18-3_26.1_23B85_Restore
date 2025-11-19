@interface UNNotificationRequest
+ (id)_bodyForCategory:(uint64_t)a3 argument:(void *)a4 identifier:;
+ (id)_contentByAddingCommonUserInfoTo:(uint64_t)a1;
+ (id)_contentForNotification:(uint64_t)a1;
+ (id)_requestIDForNotification:(uint64_t)a1;
+ (id)_timeZoneContent;
+ (id)_timeZoneUserInfo;
@end

@implementation UNNotificationRequest

+ (id)_requestIDForNotification:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 scheduleItemIdentifier];
  v4 = [v2 dueDate];
  v5 = [HKMedicationScheduleItem isScheduleItemIdentifier:v3 matchingDateTime:v4];

  v6 = [v2 scheduleItemIdentifier];
  if (!v5)
  {
    v7 = [v2 dueDate];
    [v7 timeIntervalSinceReferenceDate];
    v9 = [v6 stringByAppendingFormat:@"-%f", v8];

    v6 = v9;
  }

  return v6;
}

+ (id)_contentForNotification:(uint64_t)a1
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v5 = [v2 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"MedicationsNotificationIsFollowUpKey"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = @"MEDICATIONS_NOTIFICATION_TITLE_NOT_MISSED_FOLLOW_UP";
  }

  else
  {
    v8 = @"MEDICATIONS_NOTIFICATION_TITLE_NOT_MISSED";
  }

  v9 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:v8 arguments:0];
  [v4 setTitle:v9];

  v10 = [v2 category];
  v11 = [v2 argument];
  v12 = [v2 scheduleItemIdentifier];
  v14 = [(UNNotificationRequest *)v3 _bodyForCategory:v10 argument:v13 identifier:v12];
  [v4 setBody:v14];

  v15 = [v2 userInfo];
  v16 = [v15 objectForKeyedSubscript:@"MedicationsNotificationIsCriticalKey"];
  LOBYTE(v12) = [v16 BOOLValue];

  v17 = [v2 category];
  [v4 setCategoryIdentifier:v17];

  v18 = [v2 scheduleItemIdentifier];
  [v4 setThreadIdentifier:v18];

  if (v12)
  {
    v19 = [MEMORY[0x277CE1FE0] defaultCriticalSound];
    v20 = 3;
  }

  else
  {
    v19 = [MEMORY[0x277CE1FE0] soundWithAlertType:25];
    v20 = 2;
  }

  [v4 setSound:v19];

  v21 = [v2 userInfo];
  [v4 setUserInfo:v21];

  [v4 setInterruptionLevel:v20];
  v22 = [(UNNotificationRequest *)v3 _contentByAddingCommonUserInfoTo:v4];

  return v22;
}

+ (id)_timeZoneContent
{
  objc_opt_self();
  v0 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v1 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:@"MEDICATIONS_NOTIFICATION_TIMEZONE_TITLE" arguments:0];
  [v0 setTitle:v1];

  v2 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:@"MEDICATIONS_NOTIFICATION_TIMEZONE_BODY" arguments:0];
  [v0 setBody:v2];

  v3 = +[UNNotificationRequest _timeZoneUserInfo];
  [v0 setUserInfo:v3];

  [v0 setCategoryIdentifier:@"MedicationsHealthAppPlugin.TimeZone"];
  v4 = [MEMORY[0x277CE1FE0] soundWithAlertType:25];
  [v0 setSound:v4];

  [v0 setInterruptionLevel:2];

  return v0;
}

+ (id)_bodyForCategory:(uint64_t)a3 argument:(void *)a4 identifier:
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a4;
  objc_opt_self();
  if ([v5 isEqualToString:@"MedicationsHealthAppPlugin.BeforeFirstUnlock"])
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = @"MEDICATIONS_NOTIFICATION_BODY_BEFORE_FIRST_UNLOCK";
LABEL_3:
    v9 = [v7 localizedUserNotificationStringForKey:v8 arguments:0];
    goto LABEL_9;
  }

  if ([MEMORY[0x277CE1FC0] isNotMissedCategory:v5])
  {
    v10 = MEMORY[0x277CBEAA8];
    [v6 doubleValue];
    v11 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
    v12 = [MEMORY[0x277CCA968] localizedStringFromDate:v11 dateStyle:0 timeStyle:1];
    v13 = [MEMORY[0x277CCA968] hm_localizableTimeStringKeyWithPrefix:@"MEDICATIONS_NOTIFICATION_BODY_NOT_MISSED" date:v11];
    v14 = MEMORY[0x277CCACA8];
    v18[0] = v12;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v9 = [v14 localizedUserNotificationStringForKey:v13 arguments:v15];
  }

  else
  {
    if ([v5 isEqualToString:@"MedicationsHealthAppPlugin.Missed"])
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = @"MEDICATIONS_NOTIFICATION_BODY_MISSED";
      goto LABEL_3;
    }

    v9 = 0;
  }

LABEL_9:

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)_contentByAddingCommonUserInfoTo:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 mutableCopy];
  v4 = [v2 userInfo];

  v5 = [v4 mutableCopy];
  [v5 setObject:&unk_2863B6B98 forKeyedSubscript:*MEMORY[0x277CCE4D0]];
  v6 = [v5 copy];
  [v3 setUserInfo:v6];

  v7 = [v3 copy];

  return v7;
}

+ (id)_timeZoneUserInfo
{
  objc_opt_self();
  v0 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  [v0 setObject:@"x-apple-health://MedicationsHealthAppPlugin.healthplugin" forKeyedSubscript:*MEMORY[0x277CCE4E0]];
  [v0 setObject:&unk_2863B6B98 forKeyedSubscript:*MEMORY[0x277CCE4D0]];
  v1 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v0];

  return v1;
}

@end