@interface HAMenstrualAlgorithmsDeviationInput
@end

@implementation HAMenstrualAlgorithmsDeviationInput

uint64_t __119__HAMenstrualAlgorithmsDeviationInput_HKMenstrualCycles__hdmc_deviationInputWithProfile_enabledSetExplicitly_calendar___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 completionDate];
  v6 = [v4 completionDate];

  v7 = [v5 compare:v6];
  return v7;
}

@end