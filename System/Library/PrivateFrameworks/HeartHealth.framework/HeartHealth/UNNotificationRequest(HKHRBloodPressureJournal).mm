@interface UNNotificationRequest(HKHRBloodPressureJournal)
+ (id)_contentForNotification:()HKHRBloodPressureJournal;
+ (id)hkhrBPJ_requestForNotification:()HKHRBloodPressureJournal;
@end

@implementation UNNotificationRequest(HKHRBloodPressureJournal)

+ (id)hkhrBPJ_requestForNotification:()HKHRBloodPressureJournal
{
  v4 = a3;
  v5 = [self _requestIDForNotification:v4];
  v6 = [self _contentForNotification:v4];

  v7 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v5 content:v6 trigger:0];

  return v7;
}

+ (id)_contentForNotification:()HKHRBloodPressureJournal
{
  v3 = MEMORY[0x277CE1F60];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = HKHRBloodPressureJournalLocalizedString(@"BPJ_NOTIFICATION_TITLE");
  [v5 setTitle:v6];

  v7 = HKHRBloodPressureJournalLocalizedString(@"BPJ_NOTIFICATION_BODY");
  [v5 setBody:v7];

  v8 = [MEMORY[0x277CE1FE0] soundWithAlertType:25];
  [v5 setSound:v8];

  category = [v4 category];
  [v5 setCategoryIdentifier:category];

  userInfo = [v4 userInfo];
  v11 = [userInfo objectForKeyedSubscript:@"BloodPressureJournalNotificationJournalTypeKey"];

  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v12 setObject:@"x-apple-health://Heart.healthplugin/HKCorrelationTypeIdentifierBloodPressure" forKeyedSubscript:*MEMORY[0x277CCE4E0]];
  [v12 setObject:&unk_283BE0CC0 forKeyedSubscript:*MEMORY[0x277CCE4D0]];
  [v12 setObject:v11 forKeyedSubscript:@"BloodPressureJournalNotificationJournalTypeKey"];
  userInfo2 = [v4 userInfo];

  [v12 addEntriesFromDictionary:userInfo2];
  [v5 setUserInfo:v12];

  return v5;
}

@end