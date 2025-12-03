@interface HMAccessoryCollectionSettingItem(COMeshAlarmAddOn)
+ (id)co_accessoryCollectionSettingItemWithAlarm:()COMeshAlarmAddOn;
@end

@implementation HMAccessoryCollectionSettingItem(COMeshAlarmAddOn)

+ (id)co_accessoryCollectionSettingItemWithAlarm:()COMeshAlarmAddOn
{
  v11[1] = *MEMORY[0x277D85DE8];
  co_sanitizedHomeKitAlarm = [a3 co_sanitizedHomeKitAlarm];
  v5 = objc_alloc_init(MEMORY[0x277D29728]);
  v11[0] = co_sanitizedHomeKitAlarm;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v5 encodeObject:v6 forKey:@"MTAlarms"];

  encodedDictionary = [v5 encodedDictionary];
  v8 = [[self alloc] initWithValue:encodedDictionary];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end