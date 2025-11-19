@interface UNNotificationRequest(HKMedications)
+ (id)hkmd_requestForNotification:()HKMedications;
+ (id)hkmd_requestForTimeZoneNotification;
+ (uint64_t)isNotMissedCategory:()HKMedications;
@end

@implementation UNNotificationRequest(HKMedications)

+ (id)hkmd_requestForNotification:()HKMedications
{
  v4 = a3;
  v5 = [(UNNotificationRequest *)a1 _requestIDForNotification:v4];
  v6 = [(UNNotificationRequest *)a1 _contentForNotification:v4];

  v7 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v5 content:v6 trigger:0];

  return v7;
}

+ (id)hkmd_requestForTimeZoneNotification
{
  v0 = +[UNNotificationRequest _timeZoneContent];
  v1 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"MedicationTimeZoneNotificationIdentifier" content:v0 trigger:0];

  return v1;
}

+ (uint64_t)isNotMissedCategory:()HKMedications
{
  v3 = a3;
  if ([v3 isEqualToString:@"MedicationsHealthAppPlugin.NotMissed"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"MedicationsHealthAppPlugin.NotMissedFollowUp") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"MedicationsHealthAppPlugin.NotMissed.Singular"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"MedicationsHealthAppPlugin.NotMissedFollowUp.Singular"];
  }

  return v4;
}

@end