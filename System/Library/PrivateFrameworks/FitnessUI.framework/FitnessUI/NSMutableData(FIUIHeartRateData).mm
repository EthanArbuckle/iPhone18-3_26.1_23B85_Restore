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
  return [self appendBytes:v8 length:16];
}

- (double)fiui_weightedAverageHeartRateWithStartDate:()FIUIHeartRateData endDate:
{
  v49 = *MEMORY[0x1E69E9840];
  v39 = a3;
  v6 = a4;
  v7 = [self length];
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
    bytes = [self bytes];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (v10 >= 1)
    {
      v13 = bytes + v10;
      do
      {
        v14 = *(bytes + 8);
        v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{*bytes, v38}];
        v16 = MEMORY[0x1E696AD98];
        [v15 timeIntervalSinceDate:v39];
        v18 = [v16 numberWithDouble:floor(v17 / 60.0)];
        dictionary2 = [dictionary objectForKey:v18];
        if (!dictionary2)
        {
          dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        }

        [dictionary2 fiui_incrementValueForKey:@"totalBeats" byValue:v14];
        [dictionary2 fiui_incrementValueForKey:@"numberOfReadings" byValue:1.0];
        [dictionary setObject:dictionary2 forKey:v18];

        bytes += 16;
      }

      while (bytes < v13);
    }

    v6 = v38;
    [v38 timeIntervalSinceDate:{v39, v38}];
    v21 = v20;
    if ([dictionary count])
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      allValues = [dictionary allValues];
      v23 = [allValues countByEnumeratingWithState:&v40 objects:v48 count:16];
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
              objc_enumerationMutation(allValues);
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

          v24 = [allValues countByEnumeratingWithState:&v40 objects:v48 count:16];
        }

        while (v24);
      }

      else
      {
        v26 = 0.0;
      }

      v9 = v26 / [dictionary count];
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
        v45 = [dictionary count];
        v46 = 2048;
        v47 = v21 / 60.0;
        _os_log_impl(&dword_1E5D0F000, v36, OS_LOG_TYPE_DEFAULT, "[WRKT] Not enough data to compute heart rate average. Received data for %lu out of %.2f minutes.", buf, 0x16u);
      }
    }
  }

  return v9;
}

@end