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
  v1 = [a1 menstruationPredictions];
  v2 = [v1 hk_map:&__block_literal_global_0];

  return v2;
}

- (id)hkmc_fertileWindowProjectionsWithOverridePredictionPrimarySource:()HKMenstrualCycles currentDayIndex:
{
  v6 = a3;
  v7 = [a1 fertilityPredictions];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __133__HAMenstrualAlgorithmsAnalysis_HKMenstrualCycles__hkmc_fertileWindowProjectionsWithOverridePredictionPrimarySource_currentDayIndex___block_invoke;
  v11[3] = &unk_2796D4D30;
  v12 = v6;
  v13 = a4;
  v8 = v6;
  v9 = [v7 hk_map:v11];

  return v9;
}

- (id)hkmc_statistics
{
  v1 = [a1 stats];
  v2 = [v1 hkmc_statistics];

  return v2;
}

- (id)hkmc_deviations
{
  v2 = [a1 deviationAnalysis];

  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = [a1 deviationAnalysis];
    v5 = [v4 prolongedBleeding];
    v6 = [v5 hkmc_deviationOfType:0];
    [v3 hk_addNonNilObject:v6];

    v7 = [a1 deviationAnalysis];
    v8 = [v7 spotting];
    v9 = [v8 hkmc_deviationOfType:1];
    [v3 hk_addNonNilObject:v9];

    v10 = [a1 deviationAnalysis];
    v11 = [v10 irregularBleeding];
    v12 = [v11 hkmc_deviationOfType:2];
    [v3 hk_addNonNilObject:v12];

    v13 = [a1 deviationAnalysis];
    v14 = [v13 infrequentBleeding];
    v15 = [v14 hkmc_deviationOfType:3];
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
  v5 = [a1 menstruationPredictions];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [a1 fertilityPredictions];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
  v10 = [a1 stats];
  v11 = [v10 hkmc_description];
  v12 = [a1 hkmc_deviations];
  v13 = [v2 stringWithFormat:@"<%@:%p %@ menstruation predictions, %@ fertility predictions, stats: %@, deviations: %@>", v3, a1, v6, v9, v11, v12];

  return v13;
}

@end