@interface HKFeatureSettings(HDHRIrregularRhythmNotificationsV1Settings)
+ (id)hdhr_irregularRhythmNotificationsV1SettingsFromDefaults:()HDHRIrregularRhythmNotificationsV1Settings;
@end

@implementation HKFeatureSettings(HDHRIrregularRhythmNotificationsV1Settings)

+ (id)hdhr_irregularRhythmNotificationsV1SettingsFromDefaults:()HDHRIrregularRhythmNotificationsV1Settings
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277CCE430];
  v5 = [v3 objectForKey:*MEMORY[0x277CCE430]];

  if (v5)
  {
    v6 = [v3 hk_BOOLForKey:v4 defaultValue:0];
    v7 = objc_alloc(MEMORY[0x277CCD450]);
    v14 = *MEMORY[0x277CCC120];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    v15[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [v7 initWithDictionary:v9];
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CCD450]);
    v10 = [v11 initWithDictionary:MEMORY[0x277CBEC10]];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

@end