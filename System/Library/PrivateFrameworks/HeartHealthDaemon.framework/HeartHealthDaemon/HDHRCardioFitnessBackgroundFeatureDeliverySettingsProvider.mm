@interface HDHRCardioFitnessBackgroundFeatureDeliverySettingsProvider
- (HDHRCardioFitnessBackgroundFeatureDeliverySettingsProvider)initWithHeartRateSettingsDefaults:(id)defaults;
- (id)featureSettingsUponBackgroundDelivery;
@end

@implementation HDHRCardioFitnessBackgroundFeatureDeliverySettingsProvider

- (HDHRCardioFitnessBackgroundFeatureDeliverySettingsProvider)initWithHeartRateSettingsDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v9.receiver = self;
  v9.super_class = HDHRCardioFitnessBackgroundFeatureDeliverySettingsProvider;
  v6 = [(HDHRCardioFitnessBackgroundFeatureDeliverySettingsProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_heartRateSettingsDefaults, defaults);
  }

  return v7;
}

- (id)featureSettingsUponBackgroundDelivery
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  v9 = *MEMORY[0x277D12E40];
  v10[0] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v5 = [v3 initWithDictionary:v4];

  if ([(NSUserDefaults *)self->_heartRateSettingsDefaults BOOLForKey:*MEMORY[0x277CCE440]])
  {
    [v5 setValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D12E48]];
  }

  v6 = [objc_alloc(MEMORY[0x277CCD450]) initWithDictionary:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end