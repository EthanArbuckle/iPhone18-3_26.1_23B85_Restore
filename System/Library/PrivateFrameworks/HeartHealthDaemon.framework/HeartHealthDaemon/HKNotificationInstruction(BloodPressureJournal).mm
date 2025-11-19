@interface HKNotificationInstruction(BloodPressureJournal)
+ (id)notificationIdentifierFromCategoryIdentifier:()BloodPressureJournal;
+ (id)notificationIdentifiersFromCategoryIdentifiers:()BloodPressureJournal;
- (uint64_t)initWithAction:()BloodPressureJournal alarmEventIdentifier:;
- (uint64_t)initWithAction:()BloodPressureJournal journalIdentifier:;
@end

@implementation HKNotificationInstruction(BloodPressureJournal)

- (uint64_t)initWithAction:()BloodPressureJournal alarmEventIdentifier:
{
  v6 = [MEMORY[0x277CCD6C0] categoryIdentifierFromAlarmEventIdentifier:a4];
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:43200.0];
  v8 = [a1 initWithAction:a3 categoryIdentifier:v6 expirationDate:v7];

  return v8;
}

- (uint64_t)initWithAction:()BloodPressureJournal journalIdentifier:
{
  v6 = [MEMORY[0x277CCD6C0] categoryIdentifierFromJournalIdentifier:a4];
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:43200.0];
  v8 = [a1 initWithAction:a3 categoryIdentifier:v6 expirationDate:v7];

  return v8;
}

+ (id)notificationIdentifierFromCategoryIdentifier:()BloodPressureJournal
{
  v3 = a3;
  v4 = [v3 substringFromIndex:{objc_msgSend(@"BPJAlarmEventID-", "length")}];

  return v4;
}

+ (id)notificationIdentifiersFromCategoryIdentifiers:()BloodPressureJournal
{
  v4 = [a3 allObjects];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __98__HKNotificationInstruction_BloodPressureJournal__notificationIdentifiersFromCategoryIdentifiers___block_invoke;
  v7[3] = &__block_descriptor_40_e18__16__0__NSString_8l;
  v7[4] = a1;
  v5 = [v4 hk_map:v7];

  return v5;
}

@end