@interface COAlarmManager(Home)
+ (id)hf_AlarmManagerForAccessory:()Home;
@end

@implementation COAlarmManager(Home)

+ (id)hf_AlarmManagerForAccessory:()Home
{
  v3 = a3;
  v4 = objc_alloc_init(_HFAlarmConnectionProvider);
  v5 = [objc_alloc(MEMORY[0x277CFD070]) initForAccessory:v3 withConnectionProvider:v4];

  return v5;
}

@end