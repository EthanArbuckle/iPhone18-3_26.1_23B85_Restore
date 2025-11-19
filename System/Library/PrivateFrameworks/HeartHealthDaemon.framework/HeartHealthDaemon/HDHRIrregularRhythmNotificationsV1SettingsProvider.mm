@interface HDHRIrregularRhythmNotificationsV1SettingsProvider
- (id)featureSettingsUponBackgroundDelivery;
@end

@implementation HDHRIrregularRhythmNotificationsV1SettingsProvider

- (id)featureSettingsUponBackgroundDelivery
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CCE458]];
  v4 = [MEMORY[0x277CCD450] hdhr_irregularRhythmNotificationsV1SettingsFromDefaults:v3];
  v5 = *MEMORY[0x277CCC120];
  v6 = [v4 numberForKey:*MEMORY[0x277CCC120]];

  if (!v6)
  {
    v7 = objc_alloc(MEMORY[0x277CCD450]);
    v12 = v5;
    v13[0] = MEMORY[0x277CBEC28];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [v7 initWithDictionary:v8];

    v4 = v9;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

@end