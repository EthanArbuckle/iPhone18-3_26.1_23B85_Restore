@interface NSDateInterval(FCAdditions)
+ (double)fc_durationOfDateIntervalsIgnoringOverlap:()FCAdditions;
+ (id)fc_safeDateIntervalWithStartDate:()FCAdditions endDate:;
- (id)fc_unionWithDateInterval:()FCAdditions;
@end

@implementation NSDateInterval(FCAdditions)

+ (id)fc_safeDateIntervalWithStartDate:()FCAdditions endDate:
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5 || !v6)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __72__NSDateInterval_FCAdditions__fc_safeDateIntervalWithStartDate_endDate___block_invoke;
    v14[3] = &unk_1E7C397D0;
    v15 = v5;
    v16 = v7;
    v8 = __72__NSDateInterval_FCAdditions__fc_safeDateIntervalWithStartDate_endDate___block_invoke(v14);

    v9 = v15;
    goto LABEL_6;
  }

  if ([v5 compare:v6] == 1)
  {
    v11 = MEMORY[0x1E69E9820];
    v12 = v7;
    v13 = v5;
    v8 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v12 endDate:{v13, v11, 3221225472, __72__NSDateInterval_FCAdditions__fc_safeDateIntervalWithStartDate_endDate___block_invoke_2, &unk_1E7C397D0}];

    v9 = v12;
LABEL_6:

    goto LABEL_8;
  }

  v8 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v5 endDate:v7];
LABEL_8:

  return v8;
}

+ (double)fc_durationOfDateIntervalsIgnoringOverlap:()FCAdditions
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 sortedArrayUsingSelector:sel_compare_];
    v5 = MEMORY[0x1E695DEC8];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __73__NSDateInterval_FCAdditions__fc_durationOfDateIntervalsIgnoringOverlap___block_invoke_2;
    v20[3] = &unk_1E7C36D40;
    v6 = v4;
    v21 = v6;
    v7 = [v5 fc_array:v20];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v16 + 1) + 8 * i) duration];
          v11 = v11 + v13;
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0.0;
    }
  }

  else
  {
    v11 = 0.0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)fc_unionWithDateInterval:()FCAdditions
{
  v4 = a3;
  startDate = [self startDate];
  startDate2 = [v4 startDate];
  v7 = [startDate earlierDate:startDate2];

  endDate = [self endDate];
  endDate2 = [v4 endDate];

  v10 = [endDate laterDate:endDate2];

  v11 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v7 endDate:v10];

  return v11;
}

@end