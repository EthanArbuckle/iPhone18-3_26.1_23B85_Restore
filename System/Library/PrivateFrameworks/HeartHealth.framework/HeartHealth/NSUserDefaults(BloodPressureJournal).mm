@interface NSUserDefaults(BloodPressureJournal)
+ (id)hkhr_bloodPressureJournalDefaults;
@end

@implementation NSUserDefaults(BloodPressureJournal)

+ (id)hkhr_bloodPressureJournalDefaults
{
  v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.private.health.bloodPressureJournal"];

  return v0;
}

@end