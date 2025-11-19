@interface NSMutableDictionary(DNDSModeAssertionStoreRecord)
- (void)dnds_setSafeLocalDateForTimestamp:()DNDSModeAssertionStoreRecord key:;
@end

@implementation NSMutableDictionary(DNDSModeAssertionStoreRecord)

- (void)dnds_setSafeLocalDateForTimestamp:()DNDSModeAssertionStoreRecord key:
{
  if (a3)
  {
    v6 = MEMORY[0x277CBEAA8];
    v7 = a4;
    [a3 doubleValue];
    v9 = [v6 dateWithTimeIntervalSinceReferenceDate:?];
    v8 = [MEMORY[0x277CCA968] localizedStringFromDate:v9 dateStyle:1 timeStyle:1];
    [a1 setObject:v8 forKey:v7];
  }
}

@end