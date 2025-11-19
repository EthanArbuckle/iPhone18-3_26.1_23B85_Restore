@interface UNMutableNotificationContent(HKMenstrualCycles)
+ (id)_hkmc_contentWithCategory:()HKMenstrualCycles body:title:expirationDate:fertileWindowEndDayIndex:daysShiftedFromCalendarMethod:;
@end

@implementation UNMutableNotificationContent(HKMenstrualCycles)

+ (id)_hkmc_contentWithCategory:()HKMenstrualCycles body:title:expirationDate:fertileWindowEndDayIndex:daysShiftedFromCalendarMethod:
{
  v12 = a5;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(a1);
  [v16 setBody:v14];

  [v16 setCategoryIdentifier:v15];
  [v16 setExpirationDate:v13];

  [v16 setThreadIdentifier:@"com.apple.health.MenstrualCycles"];
  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v17 setObject:&unk_2863D3008 forKeyedSubscript:*MEMORY[0x277CCE4D0]];
  if (a7)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:a7];
    [v17 setObject:v18 forKeyedSubscript:HKMCNotificationAssociatedDayIndexKey];
  }

  [v16 setUserInfo:v17];
  if (v12)
  {
    [v16 setTitle:v12];
  }

  return v16;
}

@end