@interface HDNotificationManager(Medications)
- (void)removeDeliveredNotificationsForScheduleItemIdentifiers:()Medications;
@end

@implementation HDNotificationManager(Medications)

- (void)removeDeliveredNotificationsForScheduleItemIdentifiers:()Medications
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogMedication();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v11 = a1;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_25181C000, v5, OS_LOG_TYPE_DEFAULT, "[%public@] Removing delivered notifications for scheduleItems: %@", buf, 0x16u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __93__HDNotificationManager_Medications__removeDeliveredNotificationsForScheduleItemIdentifiers___block_invoke;
  v8[3] = &unk_2796CE828;
  v8[4] = a1;
  v9 = v4;
  v6 = v4;
  [a1 getDeliveredNotificationsWithCompletionHandler:v8];

  v7 = *MEMORY[0x277D85DE8];
}

@end