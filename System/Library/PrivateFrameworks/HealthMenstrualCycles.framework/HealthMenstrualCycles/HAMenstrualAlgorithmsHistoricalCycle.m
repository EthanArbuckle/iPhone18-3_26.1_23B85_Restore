@interface HAMenstrualAlgorithmsHistoricalCycle
@end

@implementation HAMenstrualAlgorithmsHistoricalCycle

uint64_t __244__HAMenstrualAlgorithmsHistoricalCycle_HKMenstrualCycles__hkmc_cycleWithLastDayIndex_includeFertileWindow_overridePredictionPrimarySource_overrideOvulationConfirmationFailure_overrideDailyEligibleWristTemperatureCount_useWristTemperatureInput___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = HKMCCycleFactorFromHAMenstrualAlgorithmsCycleFactor([a2 intValue]);

  return [v2 numberWithInteger:v3];
}

@end