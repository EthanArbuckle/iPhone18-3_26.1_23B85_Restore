@interface HKNotificationInstruction(Medications)
+ (id)scheduleItemIdentifierFromCategoryIdentifier:()Medications;
+ (id)scheduleItemIdentifiersFromCategoryIdentifiers:()Medications;
- (id)scheduleItemIdentifier;
- (uint64_t)initWithAction:()Medications scheduleItemIdentifier:;
- (uint64_t)initWithAction:()Medications scheduleItemIdentifier:expirationDate:;
@end

@implementation HKNotificationInstruction(Medications)

- (uint64_t)initWithAction:()Medications scheduleItemIdentifier:
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a4;
  v8 = [v6 dateWithTimeIntervalSinceNow:43200.0];
  v9 = [a1 initWithAction:a3 scheduleItemIdentifier:v7 expirationDate:v8];

  return v9;
}

- (uint64_t)initWithAction:()Medications scheduleItemIdentifier:expirationDate:
{
  v8 = MEMORY[0x277CCD6C0];
  v9 = a5;
  v10 = [v8 categoryIdentifierFromScheduleItemIdentifier:a4];
  v11 = [a1 initWithAction:a3 categoryIdentifier:v10 expirationDate:v9];

  return v11;
}

- (id)scheduleItemIdentifier
{
  v1 = MEMORY[0x277CCD6C0];
  v2 = [a1 categoryIdentifier];
  v3 = [v1 scheduleItemIdentifierFromCategoryIdentifier:v2];

  return v3;
}

+ (id)scheduleItemIdentifierFromCategoryIdentifier:()Medications
{
  v3 = a3;
  v4 = [v3 substringFromIndex:{objc_msgSend(@"MSIID-", "length")}];

  return v4;
}

+ (id)scheduleItemIdentifiersFromCategoryIdentifiers:()Medications
{
  v4 = [a3 allObjects];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__HKNotificationInstruction_Medications__scheduleItemIdentifiersFromCategoryIdentifiers___block_invoke;
  v7[3] = &__block_descriptor_40_e18__16__0__NSString_8l;
  v7[4] = a1;
  v5 = [v4 hk_map:v7];

  return v5;
}

@end