@interface NSMutableData(FIUIHeartRateData)
- (double)fiui_weightedAverageHeartRateWithStartDate:()FIUIHeartRateData endDate:;
- (uint64_t)fiui_appendHeartRate:()FIUIHeartRateData date:;
@end

@implementation NSMutableData(FIUIHeartRateData)

- (uint64_t)fiui_appendHeartRate:()FIUIHeartRateData date:
{
  [a4 timeIntervalSinceReferenceDate];
  v8[0] = v6;
  *&v8[1] = a2;
  return [a1 appendBytes:v8 length:16];
}

- (double)fiui_weightedAverageHeartRateWithStartDate:()FIUIHeartRateData endDate:
{
  v49 = *MEMORY[0x1E69E9840];
  v39 = a3;
  v6 = a4;
  v7 = [a1 length];
  if ((v7 & 0xF) != 0)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x1E696B928];
    v9 = 0.0;
    if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_ERROR))
    {
      [NSMutableData(FIUIHeartRateData) fiui_weightedAverageHeartRateWithStartDate:v8 endDate:?];
    }
  }

  else
  {
    v10 = v7;
    v38 = v6;
    v11 = [a1 bytes];
    v12 = [MEMORY[0x1E695DF90] dictionary];
    if (v10 >= 1)
    {
      v13 = v11 + v10;
      do
      {
        v14 = *(v11 + 8);
        v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{*v11, v38}];
        v16 = MEMORY[0x1E696AD98];
        [v15 timeIntervalSinceDate:v39];
        v18 = [v16 numberWithDouble:floor(v17 / 60.0)];
        v19 = [v12 objectForKey:v18];
        if (!v19)
        {
          v19 = [MEMORY[0x1E695DF90] dictionary];
        }

        [v19 fiui_incrementValueForKey:@"totalBeats" byValue:v14];
        [v19 fiui_incrementValueForKey:@"numberOfReadings" byValue:1.0];
        [v12 setObject:v19 forKey:v18];

        v11 += 16;
      }

      while (v11 < v13);
    }

    v6 = v38;
    [v38 timeIntervalSinceDate:{v39, v38}];
    v21 = v20;
    if ([v12 count])
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v22 = [v12 allValues];
      v23 = [v22 countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v41;
        v26 = 0.0;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v41 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v28 = *(*(&v40 + 1) + 8 * i);
            v29 = [v28 objectForKey:@"totalBeats"];
            [v29 doubleValue];
            v31 = v30;

            v32 = [v28 objectForKey:@"numberOfReadings"];
            [v32 doubleValue];
            v34 = v33;

            v26 = v26 + v31 / v34;
          }

          v24 = [v22 countByEnumeratingWithState:&v40 objects:v48 count:16];
        }

        while (v24);
      }

      else
      {
        v26 = 0.0;
      }

      v9 = v26 / [v12 count];
    }

    else
    {
      _HKInitializeLogging();
      v35 = *MEMORY[0x1E696B928];
      v9 = 0.0;
      if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_DEFAULT))
      {
        v36 = v35;
        *buf = 134218240;
        v45 = [v12 count];
        v46 = 2048;
        v47 = v21 / 60.0;
        _os_log_impl(&dword_1E5D0F000, v36, OS_LOG_TYPE_DEFAULT, "[WRKT] Not enough data to compute heart rate average. Received data for %lu out of %.2f minutes.", buf, 0x16u);
      }
    }
  }

  return v9;
}

@end