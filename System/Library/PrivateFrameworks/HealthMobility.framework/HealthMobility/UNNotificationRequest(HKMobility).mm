@interface UNNotificationRequest(HKMobility)
+ (id)_hkmobility_notificationRequestWithCategory:()HKMobility shouldHidePregnancyContent:expirationDate:;
+ (id)hkmobility_requestForCategory:()HKMobility shouldHidePregnancyContent:;
@end

@implementation UNNotificationRequest(HKMobility)

+ (id)hkmobility_requestForCategory:()HKMobility shouldHidePregnancyContent:
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a3;
  v8 = [v6 now];
  v9 = [self _hkmobility_requestForCategory:v7 shouldHidePregnancyContent:a4 startDate:v8];

  return v9;
}

+ (id)_hkmobility_notificationRequestWithCategory:()HKMobility shouldHidePregnancyContent:expirationDate:
{
  v0 = [MEMORY[0x277CE1F60] _hkmobility_contentWithCategory:? shouldHidePregnancyContent:? expirationDate:?];
  categoryIdentifier = [v0 categoryIdentifier];
  v2 = HKMobilityNotificationIdentifierForCategory(categoryIdentifier);

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [v2 stringByAppendingString:uUIDString];

  v6 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v5 content:v0 trigger:0];

  return v6;
}

@end