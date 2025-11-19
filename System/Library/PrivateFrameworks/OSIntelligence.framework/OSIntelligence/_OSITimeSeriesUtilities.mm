@interface _OSITimeSeriesUtilities
+ (id)resampleTimeSeries:(id)a3 withMaxDays:(int64_t)a4 withFrequency:(double)a5;
@end

@implementation _OSITimeSeriesUtilities

+ (id)resampleTimeSeries:(id)a3 withMaxDays:(int64_t)a4 withFrequency:(double)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 count];
    v10 = 0;
    if (a4 >= 1 && v9 >= 2)
    {
      v11 = [MEMORY[0x277CBEB38] dictionary];
      context = objc_autoreleasePoolPush();
      v12 = [v8 allKeys];
      v13 = [v12 sortedArrayUsingSelector:sel_compare_];

      v14 = [v13 firstObject];
      v15 = [v13 lastObject];
      v16 = [v15 dateByAddingTimeInterval:(-86400 * a4)];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v17 = v13;
      v18 = [v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = 0;
        v21 = *v41;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v41 != v21)
            {
              objc_enumerationMutation(v17);
            }

            [*(*(&v40 + 1) + 8 * i) timeIntervalSinceDate:v16];
            if (v23 < 0.0)
            {
              ++v20;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v19);
      }

      else
      {
        v20 = 0;
      }

      v24 = [v17 subarrayWithRange:{v20, objc_msgSend(v17, "count") - v20}];

      if (v24 && [v24 count] >= 2)
      {
        v25 = [v24 firstObject];

        v26 = v25;
        v27 = [v8 objectForKeyedSubscript:v26];
        v37 = 1;
        v28 = [v24 objectAtIndexedSubscript:1];
        v29 = 0;
        v38 = v26;
LABEL_20:
        v30 = v26;
        while (1)
        {
          [v30 timeIntervalSinceDate:{v15, v36}];
          if (v31 > 0.0 || [v24 count] <= v29)
          {
            break;
          }

          [v11 setObject:v27 forKeyedSubscript:v30];
          v26 = [v30 dateByAddingTimeInterval:a5];

          [v26 timeIntervalSinceDate:v28];
          v30 = v26;
          if (v32 >= 0.0)
          {
            v36 = [v8 objectForKeyedSubscript:v28];

            ++v29;
            v27 = v36;
            if ([v24 count] > ++v37)
            {
              v33 = [v24 objectAtIndexedSubscript:v37];

              v28 = v33;
              v27 = v36;
            }

            goto LABEL_20;
          }
        }

        objc_autoreleasePoolPop(context);
        v10 = v11;
      }

      else
      {

        objc_autoreleasePoolPop(context);
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v10;
}

@end