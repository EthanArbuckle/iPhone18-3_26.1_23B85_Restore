@interface NSDateInterval
@end

@implementation NSDateInterval

void __79__NSDateInterval_Schedule__dnds_dateIntervalForScheduleSettings_date_calendar___block_invoke(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v6 = *(a1 + 72);
  if ((DNDWeekdaysFromDay() & v6) == 0)
  {
    return;
  }

  v7 = [*(a1 + 32) startTime];
  v19 = [v7 dateComponents];

  v8 = [*(a1 + 32) endTime];
  v9 = [v8 dateComponents];

  if ([*(a1 + 40) date:*(a1 + 48) matchesComponents:v19])
  {
    v10 = *(a1 + 48);
  }

  else
  {
    v10 = [*(a1 + 40) nextDateAfterDate:*(a1 + 48) matchingComponents:v19 options:5124];
  }

  v11 = v10;
  v12 = [*(a1 + 40) nextDateAfterDate:v10 matchingComponents:v9 options:9216];
  v13 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v13 setWeekday:a2];
  while (DNDSGetLifetimePhase(*(a1 + 48), v11, v12) == 2 || [v11 compare:v12] != -1 || (objc_msgSend(*(a1 + 40), "date:matchesComponents:", v11, v13) & 1) == 0)
  {
    v14 = [*(a1 + 40) nextDateAfterDate:v11 matchingComponents:v19 options:5120];

    v15 = [*(a1 + 40) nextDateAfterDate:v12 matchingComponents:v9 options:9216];

    v12 = v15;
    v11 = v14;
  }

  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 40);
  v18 = v17 != 0;
  if (!v17)
  {
    goto LABEL_15;
  }

  if ([v11 compare:?] == -1)
  {
    v16 = *(*(a1 + 56) + 8);
LABEL_15:
    objc_storeStrong((v16 + 40), v11);
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v12);
    goto LABEL_16;
  }

  v18 = 0;
LABEL_16:
  *a3 = v18;
}

void __102__NSDateInterval_Schedule__dnds_dateIntervalUntilEndOfScheduleForScheduleSettings_startDate_calendar___block_invoke(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v6 = *(a1 + 64);
  if ((DNDWeekdaysFromDay() & v6) == 0)
  {
    return;
  }

  v7 = [*(a1 + 32) startTime];
  v19 = [v7 dateComponents];

  v8 = [*(a1 + 32) endTime];
  v9 = [v8 dateComponents];

  if ([*(a1 + 40) date:*(a1 + 48) matchesComponents:v19])
  {
    v10 = *(a1 + 48);
  }

  else
  {
    v10 = [*(a1 + 40) nextDateAfterDate:*(a1 + 48) matchingComponents:v19 options:5124];
  }

  v11 = v10;
  v12 = [*(a1 + 40) nextDateAfterDate:v10 matchingComponents:v9 options:9216];
  v13 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v13 setWeekday:a2];
  while (DNDSGetLifetimePhase(*(a1 + 48), *(a1 + 48), v12) == 2 || ([*(a1 + 40) date:v11 matchesComponents:v13] & 1) == 0)
  {
    v14 = [*(a1 + 40) nextDateAfterDate:v11 matchingComponents:v19 options:5120];

    v15 = [*(a1 + 40) nextDateAfterDate:v12 matchingComponents:v9 options:9216];

    v12 = v15;
    v11 = v14;
  }

  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 40);
  v18 = v17 != 0;
  if (!v17)
  {
    goto LABEL_14;
  }

  if ([v12 compare:?] == -1)
  {
    v16 = *(*(a1 + 56) + 8);
LABEL_14:
    objc_storeStrong((v16 + 40), v12);
    goto LABEL_15;
  }

  v18 = 0;
LABEL_15:
  *a3 = v18;
}

@end