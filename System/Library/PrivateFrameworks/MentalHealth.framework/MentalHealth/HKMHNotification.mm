@interface HKMHNotification
+ (id)allNotificationCategories;
+ (id)assessmentsNotificationCategories;
+ (id)notificationCategoryForString:(id)string;
+ (id)stateOfMindNotificationCategories;
- (HKMHNotification)init;
- (HKMHNotification)initWithCategory:(id)category;
@end

@implementation HKMHNotification

- (HKMHNotification)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKMHNotification)initWithCategory:(id)category
{
  categoryCopy = category;
  v9.receiver = self;
  v9.super_class = HKMHNotification;
  v6 = [(HKMHNotification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_category, category);
  }

  return v7;
}

+ (id)allNotificationCategories
{
  stateOfMindNotificationCategories = [self stateOfMindNotificationCategories];
  assessmentsNotificationCategories = [self assessmentsNotificationCategories];
  v5 = [stateOfMindNotificationCategories arrayByAddingObjectsFromArray:assessmentsNotificationCategories];

  return v5;
}

+ (id)stateOfMindNotificationCategories
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"MentalHealthAppPlugin.CustomReminder";
  v5[1] = @"MentalHealthAppPlugin.MiddayReminder";
  v5[2] = @"MentalHealthAppPlugin.EndOfDayReminder";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)assessmentsNotificationCategories
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"MentalHealthAppPlugin.PeriodicPromptedAssessmentReminder";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)notificationCategoryForString:(id)string
{
  stringCopy = string;
  v4 = +[HKMHNotification allNotificationCategories];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__HKMHNotification_notificationCategoryForString___block_invoke;
  v8[3] = &unk_2798A9930;
  v9 = stringCopy;
  v5 = stringCopy;
  v6 = [v4 hk_firstObjectPassingTest:v8];

  return v6;
}

@end