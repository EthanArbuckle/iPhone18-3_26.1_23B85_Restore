@interface HKHRBloodPressureJournalNotification
+ (id)allBloodPressureJournalNotificationCategoryIdentifiers;
+ (id)notificationForLearnHypertensionRiskWithIdentifier:(id)a3 dueDate:(id)a4 isFollowUp:(BOOL)a5 measurementIndex:(int64_t)a6 measurementCount:(int64_t)a7 measurementWindowType:(int64_t)a8;
+ (id)notificationToMonitorHypertensionWithIdentifier:(id)a3 dueDate:(id)a4 isFollowUp:(BOOL)a5;
- (HKHRBloodPressureJournalNotification)initWithIdentifier:(id)a3 dueDate:(id)a4 category:(id)a5 userInfo:(id)a6;
@end

@implementation HKHRBloodPressureJournalNotification

+ (id)notificationForLearnHypertensionRiskWithIdentifier:(id)a3 dueDate:(id)a4 isFollowUp:(BOOL)a5 measurementIndex:(int64_t)a6 measurementCount:(int64_t)a7 measurementWindowType:(int64_t)a8
{
  v23[4] = *MEMORY[0x277D85DE8];
  v22[0] = @"BloodPressureJournalNotificationMeasurementIndexKey";
  v12 = MEMORY[0x277CCABB0];
  v13 = a4;
  v14 = a3;
  v15 = [v12 numberWithInteger:a6];
  v23[0] = v15;
  v22[1] = @"BloodPressureJournalNotificationMeasurementCountKey";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:a7];
  v23[1] = v16;
  v22[2] = @"BloodPressureJournalNotificationMeasurementWindowTypeKey";
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:a8];
  v22[3] = @"BloodPressureJournalNotificationJournalTypeKey";
  v23[2] = v17;
  v23[3] = &unk_283BE0DE0;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];

  v19 = [[HKHRBloodPressureJournalNotification alloc] initWithIdentifier:v14 dueDate:v13 category:@"BloodPressureJournalNotificationCategoryLearnHypertensionRisk" userInfo:v18];
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)notificationToMonitorHypertensionWithIdentifier:(id)a3 dueDate:(id)a4 isFollowUp:(BOOL)a5
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = @"BloodPressureJournalNotificationJournalTypeKey";
  v14[0] = &unk_283BE0DF8;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [[HKHRBloodPressureJournalNotification alloc] initWithIdentifier:v8 dueDate:v7 category:@"BloodPressureJournalNotificationCategoryMonitorHypertension" userInfo:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (HKHRBloodPressureJournalNotification)initWithIdentifier:(id)a3 dueDate:(id)a4 category:(id)a5 userInfo:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HKHRBloodPressureJournalNotification;
  v15 = [(HKHRBloodPressureJournalNotification *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, a3);
    objc_storeStrong(&v16->_dueDate, a4);
    objc_storeStrong(&v16->_category, a5);
    objc_storeStrong(&v16->_userInfo, a6);
  }

  return v16;
}

+ (id)allBloodPressureJournalNotificationCategoryIdentifiers
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"BloodPressureJournalNotificationCategoryLearnHypertensionRisk";
  v5[1] = @"BloodPressureJournalNotificationCategoryMonitorHypertension";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end