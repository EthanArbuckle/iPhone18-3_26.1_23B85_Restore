@interface HAMenstrualAlgorithmsAnalysis(HKMenstrualCycles)
- (id)hkmc_description;
- (id)hkmc_deviations;
- (id)hkmc_fertileWindowProjectionsWithOverridePredictionPrimarySource:()HKMenstrualCycles currentDayIndex:;
- (id)hkmc_menstruationProjections;
- (id)hkmc_statistics;
@end

@implementation HAMenstrualAlgorithmsAnalysis(HKMenstrualCycles)

- (id)hkmc_menstruationProjections
{
  menstruationPredictions = [self menstruationPredictions];
  v2 = [menstruationPredictions hk_map:&__block_literal_global_0];

  return v2;
}

- (id)hkmc_fertileWindowProjectionsWithOverridePredictionPrimarySource:()HKMenstrualCycles currentDayIndex:
{
  v6 = a3;
  fertilityPredictions = [self fertilityPredictions];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __133__HAMenstrualAlgorithmsAnalysis_HKMenstrualCycles__hkmc_fertileWindowProjectionsWithOverridePredictionPrimarySource_currentDayIndex___block_invoke;
  v11[3] = &unk_2796D4D30;
  v12 = v6;
  v13 = a4;
  v8 = v6;
  v9 = [fertilityPredictions hk_map:v11];

  return v9;
}

- (id)hkmc_statistics
{
  stats = [self stats];
  hkmc_statistics = [stats hkmc_statistics];

  return hkmc_statistics;
}

- (id)hkmc_deviations
{
  deviationAnalysis = [self deviationAnalysis];

  if (deviationAnalysis)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    deviationAnalysis2 = [self deviationAnalysis];
    prolongedBleeding = [deviationAnalysis2 prolongedBleeding];
    v6 = [prolongedBleeding hkmc_deviationOfType:0];
    [v3 hk_addNonNilObject:v6];

    deviationAnalysis3 = [self deviationAnalysis];
    spotting = [deviationAnalysis3 spotting];
    v9 = [spotting hkmc_deviationOfType:1];
    [v3 hk_addNonNilObject:v9];

    deviationAnalysis4 = [self deviationAnalysis];
    irregularBleeding = [deviationAnalysis4 irregularBleeding];
    v12 = [irregularBleeding hkmc_deviationOfType:2];
    [v3 hk_addNonNilObject:v12];

    deviationAnalysis5 = [self deviationAnalysis];
    infrequentBleeding = [deviationAnalysis5 infrequentBleeding];
    v15 = [infrequentBleeding hkmc_deviationOfType:3];
    [v3 hk_addNonNilObject:v15];

    v16 = [v3 copy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)hkmc_description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = MEMORY[0x277CCABB0];
  menstruationPredictions = [self menstruationPredictions];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(menstruationPredictions, "count")}];
  v7 = MEMORY[0x277CCABB0];
  fertilityPredictions = [self fertilityPredictions];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(fertilityPredictions, "count")}];
  stats = [self stats];
  hkmc_description = [stats hkmc_description];
  hkmc_deviations = [self hkmc_deviations];
  v13 = [v2 stringWithFormat:@"<%@:%p %@ menstruation predictions, %@ fertility predictions, stats: %@, deviations: %@>", v3, self, v6, v9, hkmc_description, hkmc_deviations];

  return v13;
}

@end