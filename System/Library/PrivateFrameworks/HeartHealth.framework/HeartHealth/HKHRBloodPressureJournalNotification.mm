@interface HKHRBloodPressureJournalNotification
+ (id)allBloodPressureJournalNotificationCategoryIdentifiers;
+ (id)notificationForLearnHypertensionRiskWithIdentifier:(id)identifier dueDate:(id)date isFollowUp:(BOOL)up measurementIndex:(int64_t)index measurementCount:(int64_t)count measurementWindowType:(int64_t)type;
+ (id)notificationToMonitorHypertensionWithIdentifier:(id)identifier dueDate:(id)date isFollowUp:(BOOL)up;
- (HKHRBloodPressureJournalNotification)initWithIdentifier:(id)identifier dueDate:(id)date category:(id)category userInfo:(id)info;
@end

@implementation HKHRBloodPressureJournalNotification

+ (id)notificationForLearnHypertensionRiskWithIdentifier:(id)identifier dueDate:(id)date isFollowUp:(BOOL)up measurementIndex:(int64_t)index measurementCount:(int64_t)count measurementWindowType:(int64_t)type
{
  v23[4] = *MEMORY[0x277D85DE8];
  v22[0] = @"BloodPressureJournalNotificationMeasurementIndexKey";
  v12 = MEMORY[0x277CCABB0];
  dateCopy = date;
  identifierCopy = identifier;
  v15 = [v12 numberWithInteger:index];
  v23[0] = v15;
  v22[1] = @"BloodPressureJournalNotificationMeasurementCountKey";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  v23[1] = v16;
  v22[2] = @"BloodPressureJournalNotificationMeasurementWindowTypeKey";
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v22[3] = @"BloodPressureJournalNotificationJournalTypeKey";
  v23[2] = v17;
  v23[3] = &unk_283BE0DE0;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];

  v19 = [[HKHRBloodPressureJournalNotification alloc] initWithIdentifier:identifierCopy dueDate:dateCopy category:@"BloodPressureJournalNotificationCategoryLearnHypertensionRisk" userInfo:v18];
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)notificationToMonitorHypertensionWithIdentifier:(id)identifier dueDate:(id)date isFollowUp:(BOOL)up
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = @"BloodPressureJournalNotificationJournalTypeKey";
  v14[0] = &unk_283BE0DF8;
  v6 = MEMORY[0x277CBEAC0];
  dateCopy = date;
  identifierCopy = identifier;
  v9 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [[HKHRBloodPressureJournalNotification alloc] initWithIdentifier:identifierCopy dueDate:dateCopy category:@"BloodPressureJournalNotificationCategoryMonitorHypertension" userInfo:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (HKHRBloodPressureJournalNotification)initWithIdentifier:(id)identifier dueDate:(id)date category:(id)category userInfo:(id)info
{
  identifierCopy = identifier;
  dateCopy = date;
  categoryCopy = category;
  infoCopy = info;
  v18.receiver = self;
  v18.super_class = HKHRBloodPressureJournalNotification;
  v15 = [(HKHRBloodPressureJournalNotification *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, identifier);
    objc_storeStrong(&v16->_dueDate, date);
    objc_storeStrong(&v16->_category, category);
    objc_storeStrong(&v16->_userInfo, info);
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