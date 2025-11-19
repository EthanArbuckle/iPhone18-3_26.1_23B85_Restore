@interface HKMedicationsNotification
+ (id)allNotificationCategories;
+ (id)notificationBeforeFirstUnlockWithScheduleItemIdentifier:(id)a3 dueDate:(id)a4;
+ (id)notificationCategoryForString:(id)a3;
+ (id)notificationMissedWithScheduleItemIdentifier:(id)a3 dueDate:(id)a4;
- (HKMedicationsNotification)init;
- (id)_userInfoWithScheduleItemIdentifier:(void *)a3 extraUserInfo:;
- (id)initWithScheduleItemIdentifier:(void *)a3 dueDate:(void *)a4 category:(void *)a5 argument:(void *)a6 extraUserInfo:;
@end

@implementation HKMedicationsNotification

- (HKMedicationsNotification)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (id)notificationBeforeFirstUnlockWithScheduleItemIdentifier:(id)a3 dueDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HKMedicationsNotification alloc] initWithScheduleItemIdentifier:v6 dueDate:v5 category:@"MedicationsHealthAppPlugin.BeforeFirstUnlock" argument:0 extraUserInfo:0];

  return v7;
}

+ (id)allNotificationCategories
{
  v5[6] = *MEMORY[0x277D85DE8];
  v5[0] = @"MedicationsHealthAppPlugin.BeforeFirstUnlock";
  v5[1] = @"MedicationsHealthAppPlugin.NotMissed";
  v5[2] = @"MedicationsHealthAppPlugin.NotMissed.Singular";
  v5[3] = @"MedicationsHealthAppPlugin.NotMissedFollowUp";
  v5[4] = @"MedicationsHealthAppPlugin.NotMissedFollowUp.Singular";
  v5[5] = @"MedicationsHealthAppPlugin.Missed";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)notificationCategoryForString:(id)a3
{
  v3 = a3;
  v4 = @"MedicationsHealthAppPlugin.BeforeFirstUnlock";
  if (([v3 isEqualToString:@"MedicationsHealthAppPlugin.BeforeFirstUnlock"] & 1) == 0)
  {
    v4 = @"MedicationsHealthAppPlugin.NotMissed";
    if (([v3 isEqualToString:@"MedicationsHealthAppPlugin.NotMissed"] & 1) == 0)
    {
      v4 = @"MedicationsHealthAppPlugin.NotMissed.Singular";
      if (([v3 isEqualToString:@"MedicationsHealthAppPlugin.NotMissed.Singular"] & 1) == 0)
      {
        v4 = @"MedicationsHealthAppPlugin.NotMissedFollowUp";
        if (([v3 isEqualToString:@"MedicationsHealthAppPlugin.NotMissedFollowUp"] & 1) == 0)
        {
          v4 = @"MedicationsHealthAppPlugin.NotMissedFollowUp.Singular";
          if (([v3 isEqualToString:@"MedicationsHealthAppPlugin.NotMissedFollowUp.Singular"] & 1) == 0)
          {
            v4 = @"MedicationsHealthAppPlugin.Missed";
            if (![v3 isEqualToString:@"MedicationsHealthAppPlugin.Missed"])
            {
              v4 = 0;
            }
          }
        }
      }
    }
  }

  return v4;
}

- (id)initWithScheduleItemIdentifier:(void *)a3 dueDate:(void *)a4 category:(void *)a5 argument:(void *)a6 extraUserInfo:
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (a1)
  {
    v21.receiver = a1;
    v21.super_class = HKMedicationsNotification;
    v17 = objc_msgSendSuper2(&v21, sel_init);
    a1 = v17;
    if (v17)
    {
      objc_storeStrong(v17 + 1, a4);
      objc_storeStrong(a1 + 2, a5);
      v19 = [(HKMedicationsNotification *)a1 _userInfoWithScheduleItemIdentifier:v12 extraUserInfo:v16];
      v20 = a1[3];
      a1[3] = v19;

      objc_storeStrong(a1 + 4, a2);
      objc_storeStrong(a1 + 5, a3);
    }
  }

  return a1;
}

+ (id)notificationMissedWithScheduleItemIdentifier:(id)a3 dueDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HKMedicationsNotification alloc] initWithScheduleItemIdentifier:v6 dueDate:v5 category:@"MedicationsHealthAppPlugin.Missed" argument:0 extraUserInfo:0];

  return v7;
}

- (id)_userInfoWithScheduleItemIdentifier:(void *)a3 extraUserInfo:
{
  v5 = a3;
  if (a1)
  {
    v6 = MEMORY[0x277CBEB38];
    v7 = a2;
    v8 = [v6 dictionary];
    [v8 setObject:v7 forKeyedSubscript:@"MedicationsNotificationScheduleItemIdentifierKey"];

    if (v5)
    {
      [v8 addEntriesFromDictionary:v5];
    }

    a1 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v8];
  }

  return a1;
}

@end