@interface CDSleepPredictor
@end

@implementation CDSleepPredictor

uint64_t __51___CDSleepPredictor_array_reduce_withInitialValue___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = (*(*(a1 + 32) + 16))();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

id __41___CDSleepPredictor_indexSetFromUnionOf___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 addIndexes:a2];

  return v4;
}

void __31___CDSleepPredictor_array_map___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 addObject:v2];
}

void __78___CDSleepPredictor_mutableArray_replaceObjectsAtIndexes_withObjectFromBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = [v3 objectAtIndexedSubscript:a2];
  v5 = (*(v4 + 16))(v4, v6);
  [v3 replaceObjectAtIndex:a2 withObject:v5];
}

unint64_t __89___CDSleepPredictor_generateActivityBitmapFor_unlockedIntervals_eventsAvailableInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 cd_dateWithFloorForAlignment:900.0];
  v4 = [*(a1 + 32) startDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  v7 = *(a1 + 40) - 1;
  v8 = v6 / 900.0;
  if (v6 / 900.0 > v7)
  {
    v8 = v7;
  }

  return fmax(v8, 0.0);
}

uint64_t __89___CDSleepPredictor_generateActivityBitmapFor_unlockedIntervals_eventsAvailableInterval___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v4 startDate];
  v6 = [*(a1 + 32) startDate];
  v7 = [v5 laterDate:v6];
  v8 = (*(v3 + 16))(v3, v7);

  v9 = *(a1 + 40);
  v10 = [v4 endDate];

  v11 = [*(a1 + 32) endDate];
  v12 = [v10 earlierDate:v11];
  v13 = (*(v9 + 16))(v9, v12);

  v14 = MEMORY[0x1E696AC90];
  if (*(a1 + 48) - v8 >= (v13 - v8 + 1))
  {
    v15 = v13 - v8 + 1;
  }

  else
  {
    v15 = *(a1 + 48) - v8;
  }

  return [v14 indexSetWithIndexesInRange:{v8, v15}];
}

uint64_t __80___CDSleepPredictor_findAllSleepPeriodsInDayStarting_FromActivityProbabilities___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  [a2 doubleValue];

  return [v2 numberWithInt:v3 > 0.5];
}

void __80___CDSleepPredictor_findAllSleepPeriodsInDayStarting_FromActivityProbabilities___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696B098] valueWithRange:{a2, a3}];
  [v3 addObject:v4];
}

uint64_t __80___CDSleepPredictor_findAllSleepPeriodsInDayStarting_FromActivityProbabilities___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 rangeValue];
  v6 = v5;
  [v4 rangeValue];
  v8 = v7;

  if (v6 > v8)
  {
    return -1;
  }

  else
  {
    return v6 != v8;
  }
}

id __80___CDSleepPredictor_findAllSleepPeriodsInDayStarting_FromActivityProbabilities___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 rangeValue];
  v5 = v4;
  v6 = objc_alloc(MEMORY[0x1E696AB80]);
  v7 = [*(a1 + 32) dateByAddingTimeInterval:(900 * v3)];
  v8 = [v6 initWithStartDate:v7 duration:(900 * v5)];

  return v8;
}

@end