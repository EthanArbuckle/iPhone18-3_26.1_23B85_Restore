@interface HAMenstrualAlgorithmsAnalysis(UnitTesting)
+ (id)hdmc_demoAnalysisWithStartDayIndex:()UnitTesting;
@end

@implementation HAMenstrualAlgorithmsAnalysis(UnitTesting)

+ (id)hdmc_demoAnalysisWithStartDayIndex:()UnitTesting
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277D0FCD0]);
  [v4 setJulianDayOfWindowStart:(a3 + 5)];
  [v4 setStartProbabilityMean:1.0];
  [v4 setEndProbabilityMean:5.0];
  [v4 setStartProbabilityStdDev:1.0];
  [v4 setEndProbabilityStdDev:1.0];
  [v4 setLowRange:{0, 10}];
  v5 = objc_alloc_init(MEMORY[0x277D0FCD0]);
  [v5 setJulianDayOfWindowStart:(a3 + 15)];
  [v5 setStartProbabilityMean:1.0];
  [v5 setEndProbabilityMean:6.0];
  [v5 setStartProbabilityStdDev:2.0];
  [v5 setEndProbabilityStdDev:2.0];
  [v5 setLowRange:{0, 10}];
  v6 = objc_alloc_init(MEMORY[0x277D0FCD8]);
  [v6 setNumberOfCyclesFound:&unk_283CC32E8];
  [v6 setJulianDayOfFirstCycleStart:&unk_283CC3300];
  [v6 setJulianDayOfLastCycleStart:&unk_283CC3318];
  [v6 setMedianCycleLength:&unk_283CC3330];
  [v6 setLowerCycleLengthPercentile:&unk_283CC3348];
  [v6 setUpperCycleLengthPercentile:&unk_283CC3360];
  [v6 setMedianMenstruationLength:&unk_283CC3378];
  [v6 setLowerMenstruationLengthPercentile:&unk_283CC3448];
  [v6 setUpperMenstruationLengthPercentile:&unk_283CC3458];
  v7 = objc_alloc_init(MEMORY[0x277D0FCA0]);
  [v7 setJulianDayOfAnalysisWindowStart:(a3 - 179)];
  [v7 setJulianDayOfAnalysisWindowEnd:a3];
  [v7 setMetricsForCoreAnalytics:&unk_283CC3468];
  v8 = objc_alloc_init(MEMORY[0x277D0FCA8]);
  [v8 setIrregularBleeding:v7];
  [v8 setProlongedBleeding:v7];
  v9 = objc_alloc_init(MEMORY[0x277D0FC80]);
  v13[0] = v4;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [v9 setMenstruationPredictions:v10];

  [v9 setFertilityPredictions:MEMORY[0x277CBEBF8]];
  [v9 setStats:v6];
  [v9 setDeviationAnalysis:v8];

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

@end