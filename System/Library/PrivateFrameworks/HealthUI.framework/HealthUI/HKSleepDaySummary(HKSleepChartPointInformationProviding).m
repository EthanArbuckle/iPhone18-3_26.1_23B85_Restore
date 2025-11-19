@interface HKSleepDaySummary(HKSleepChartPointInformationProviding)
- (id)inBedEndOffset;
- (id)inBedStartOffset;
- (id)scheduledBedtimeValue;
- (id)scheduledWakeTimeValue;
- (id)sleepDaySummaries;
- (id)sleepDurationGoalSeconds;
- (id)sleepEndOffset;
- (id)sleepStartOffset;
@end

@implementation HKSleepDaySummary(HKSleepChartPointInformationProviding)

- (id)sleepDaySummaries
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a1;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];

  return v1;
}

- (id)sleepStartOffset
{
  v34 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = [a1 periods];
  v3 = [v2 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (!v3)
  {
    v19 = 0;
    goto LABEL_20;
  }

  v4 = v3;
  v21 = a1;
  obj = v2;
  v2 = 0;
  v23 = *v29;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v29 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v28 + 1) + 8 * i);
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v7 = [v6 segments];
      v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v25;
        do
        {
          for (j = 0; j != v9; ++j)
          {
            if (*v25 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v24 + 1) + 8 * j);
            if (([v12 category] - 1) <= 4)
            {
              v13 = [v12 dateInterval];
              v14 = [v13 startDate];
              v15 = HKDateMin();

              v2 = v15;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v9);
      }
    }

    v4 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  }

  while (v4);

  if (v2)
  {
    v16 = objc_alloc(MEMORY[0x1E696AD98]);
    v17 = [v21 dateInterval];
    v18 = [v17 startDate];
    [v2 timeIntervalSinceDate:v18];
    v19 = [v16 initWithDouble:?];

LABEL_20:
    goto LABEL_22;
  }

  v19 = 0;
LABEL_22:

  return v19;
}

- (id)sleepEndOffset
{
  v37 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v2 = [a1 periods];
  v3 = [v2 reverseObjectEnumerator];

  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (!v4)
  {
    v22 = 0;
    v6 = v3;
    goto LABEL_20;
  }

  v5 = v4;
  v24 = a1;
  v6 = 0;
  v26 = *v32;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v32 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v31 + 1) + 8 * i);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v9 = [v8 segments];
      v10 = [v9 reverseObjectEnumerator];

      v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v28;
        do
        {
          for (j = 0; j != v12; ++j)
          {
            if (*v28 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v27 + 1) + 8 * j);
            if (([v15 category] - 1) <= 4)
            {
              v16 = [v15 dateInterval];
              v17 = [v16 endDate];
              v18 = HKDateMax();

              v6 = v18;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v12);
      }
    }

    v5 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  }

  while (v5);

  if (v6)
  {
    v19 = objc_alloc(MEMORY[0x1E696AD98]);
    v20 = [v24 dateInterval];
    v21 = [v20 startDate];
    [v6 timeIntervalSinceDate:v21];
    v22 = [v19 initWithDouble:?];

LABEL_20:
    goto LABEL_22;
  }

  v22 = 0;
LABEL_22:

  return v22;
}

- (id)inBedStartOffset
{
  v34 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = [a1 periods];
  v3 = [v2 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (!v3)
  {
    v19 = 0;
    goto LABEL_20;
  }

  v4 = v3;
  v21 = a1;
  obj = v2;
  v2 = 0;
  v23 = *v29;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v29 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v28 + 1) + 8 * i);
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v7 = [v6 segments];
      v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v25;
        do
        {
          for (j = 0; j != v9; ++j)
          {
            if (*v25 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v24 + 1) + 8 * j);
            if (![v12 category])
            {
              v13 = [v12 dateInterval];
              v14 = [v13 startDate];
              v15 = HKDateMin();

              v2 = v15;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v9);
      }
    }

    v4 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  }

  while (v4);

  if (v2)
  {
    v16 = objc_alloc(MEMORY[0x1E696AD98]);
    v17 = [v21 dateInterval];
    v18 = [v17 startDate];
    [v2 timeIntervalSinceDate:v18];
    v19 = [v16 initWithDouble:?];

LABEL_20:
    goto LABEL_22;
  }

  v19 = 0;
LABEL_22:

  return v19;
}

- (id)inBedEndOffset
{
  v37 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v2 = [a1 periods];
  v3 = [v2 reverseObjectEnumerator];

  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (!v4)
  {
    v22 = 0;
    v6 = v3;
    goto LABEL_20;
  }

  v5 = v4;
  v24 = a1;
  v6 = 0;
  v26 = *v32;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v32 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v31 + 1) + 8 * i);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v9 = [v8 segments];
      v10 = [v9 reverseObjectEnumerator];

      v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v28;
        do
        {
          for (j = 0; j != v12; ++j)
          {
            if (*v28 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v27 + 1) + 8 * j);
            if (![v15 category])
            {
              v16 = [v15 dateInterval];
              v17 = [v16 endDate];
              v18 = HKDateMax();

              v6 = v18;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v12);
      }
    }

    v5 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  }

  while (v5);

  if (v6)
  {
    v19 = objc_alloc(MEMORY[0x1E696AD98]);
    v20 = [v24 dateInterval];
    v21 = [v20 startDate];
    [v6 timeIntervalSinceDate:v21];
    v22 = [v19 initWithDouble:?];

LABEL_20:
    goto LABEL_22;
  }

  v22 = 0;
LABEL_22:

  return v22;
}

- (id)scheduledBedtimeValue
{
  v2 = [a1 primarySchedule];
  v3 = [v2 bedTimeComponents];
  v4 = [a1 _secondsFromSummaryStartDateForDateComponents:v3];

  return v4;
}

- (id)scheduledWakeTimeValue
{
  v2 = [a1 primarySchedule];
  v3 = [v2 wakeTimeComponents];
  v4 = [a1 _secondsFromSummaryStartDateForDateComponents:v3];

  return v4;
}

- (id)sleepDurationGoalSeconds
{
  v2 = [a1 sleepDurationGoal];

  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E696AD98]);
    v4 = [a1 sleepDurationGoal];
    v5 = [MEMORY[0x1E696C510] secondUnit];
    [v4 doubleValueForUnit:v5];
    v6 = [v3 initWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end