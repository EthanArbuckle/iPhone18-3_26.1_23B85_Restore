@interface HDNotificationManager(BloodPressureJournal)
- (void)getBloodPressureJournalDeliveredNotificationIdentifiersWithCompletionHandler:()BloodPressureJournal;
@end

@implementation HDNotificationManager(BloodPressureJournal)

- (void)getBloodPressureJournalDeliveredNotificationIdentifiersWithCompletionHandler:()BloodPressureJournal
{
  v4 = a3;
  allBloodPressureJournalNotificationCategoryIdentifiers = [MEMORY[0x277D12F80] allBloodPressureJournalNotificationCategoryIdentifiers];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __124__HDNotificationManager_BloodPressureJournal__getBloodPressureJournalDeliveredNotificationIdentifiersWithCompletionHandler___block_invoke;
  v8[3] = &unk_278660AB8;
  v8[4] = self;
  v9 = allBloodPressureJournalNotificationCategoryIdentifiers;
  v10 = v4;
  v6 = v4;
  v7 = allBloodPressureJournalNotificationCategoryIdentifiers;
  [self getDeliveredNotificationsWithCompletionHandler:v8];
}

@end