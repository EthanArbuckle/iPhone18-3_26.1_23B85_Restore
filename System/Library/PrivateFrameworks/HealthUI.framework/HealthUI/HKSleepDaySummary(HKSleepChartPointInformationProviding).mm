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
  v3[0] = self;
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
  periods = [self periods];
  v3 = [periods countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (!v3)
  {
    v19 = 0;
    goto LABEL_20;
  }

  v4 = v3;
  selfCopy = self;
  obj = periods;
  periods = 0;
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
      segments = [v6 segments];
      v8 = [segments countByEnumeratingWithState:&v24 objects:v32 count:16];
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
              objc_enumerationMutation(segments);
            }

            v12 = *(*(&v24 + 1) + 8 * j);
            if (([v12 category] - 1) <= 4)
            {
              dateInterval = [v12 dateInterval];
              startDate = [dateInterval startDate];
              v15 = HKDateMin();

              periods = v15;
            }
          }

          v9 = [segments countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v9);
      }
    }

    v4 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  }

  while (v4);

  if (periods)
  {
    v16 = objc_alloc(MEMORY[0x1E696AD98]);
    dateInterval2 = [selfCopy dateInterval];
    startDate2 = [dateInterval2 startDate];
    [periods timeIntervalSinceDate:startDate2];
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
  periods = [self periods];
  reverseObjectEnumerator = [periods reverseObjectEnumerator];

  obj = reverseObjectEnumerator;
  v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (!v4)
  {
    v22 = 0;
    v6 = reverseObjectEnumerator;
    goto LABEL_20;
  }

  v5 = v4;
  selfCopy = self;
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
      segments = [v8 segments];
      reverseObjectEnumerator2 = [segments reverseObjectEnumerator];

      v11 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
              objc_enumerationMutation(reverseObjectEnumerator2);
            }

            v15 = *(*(&v27 + 1) + 8 * j);
            if (([v15 category] - 1) <= 4)
            {
              dateInterval = [v15 dateInterval];
              endDate = [dateInterval endDate];
              v18 = HKDateMax();

              v6 = v18;
            }
          }

          v12 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
    dateInterval2 = [selfCopy dateInterval];
    startDate = [dateInterval2 startDate];
    [v6 timeIntervalSinceDate:startDate];
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
  periods = [self periods];
  v3 = [periods countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (!v3)
  {
    v19 = 0;
    goto LABEL_20;
  }

  v4 = v3;
  selfCopy = self;
  obj = periods;
  periods = 0;
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
      segments = [v6 segments];
      v8 = [segments countByEnumeratingWithState:&v24 objects:v32 count:16];
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
              objc_enumerationMutation(segments);
            }

            v12 = *(*(&v24 + 1) + 8 * j);
            if (![v12 category])
            {
              dateInterval = [v12 dateInterval];
              startDate = [dateInterval startDate];
              v15 = HKDateMin();

              periods = v15;
            }
          }

          v9 = [segments countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v9);
      }
    }

    v4 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  }

  while (v4);

  if (periods)
  {
    v16 = objc_alloc(MEMORY[0x1E696AD98]);
    dateInterval2 = [selfCopy dateInterval];
    startDate2 = [dateInterval2 startDate];
    [periods timeIntervalSinceDate:startDate2];
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
  periods = [self periods];
  reverseObjectEnumerator = [periods reverseObjectEnumerator];

  obj = reverseObjectEnumerator;
  v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (!v4)
  {
    v22 = 0;
    v6 = reverseObjectEnumerator;
    goto LABEL_20;
  }

  v5 = v4;
  selfCopy = self;
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
      segments = [v8 segments];
      reverseObjectEnumerator2 = [segments reverseObjectEnumerator];

      v11 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
              objc_enumerationMutation(reverseObjectEnumerator2);
            }

            v15 = *(*(&v27 + 1) + 8 * j);
            if (![v15 category])
            {
              dateInterval = [v15 dateInterval];
              endDate = [dateInterval endDate];
              v18 = HKDateMax();

              v6 = v18;
            }
          }

          v12 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
    dateInterval2 = [selfCopy dateInterval];
    startDate = [dateInterval2 startDate];
    [v6 timeIntervalSinceDate:startDate];
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
  primarySchedule = [self primarySchedule];
  bedTimeComponents = [primarySchedule bedTimeComponents];
  v4 = [self _secondsFromSummaryStartDateForDateComponents:bedTimeComponents];

  return v4;
}

- (id)scheduledWakeTimeValue
{
  primarySchedule = [self primarySchedule];
  wakeTimeComponents = [primarySchedule wakeTimeComponents];
  v4 = [self _secondsFromSummaryStartDateForDateComponents:wakeTimeComponents];

  return v4;
}

- (id)sleepDurationGoalSeconds
{
  sleepDurationGoal = [self sleepDurationGoal];

  if (sleepDurationGoal)
  {
    v3 = objc_alloc(MEMORY[0x1E696AD98]);
    sleepDurationGoal2 = [self sleepDurationGoal];
    secondUnit = [MEMORY[0x1E696C510] secondUnit];
    [sleepDurationGoal2 doubleValueForUnit:secondUnit];
    v6 = [v3 initWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end