@interface NSDictionary(BW_AVAudioRouteDataSourceUtilities)
- (uint64_t)bw_optimalMicPolarPatternForAudioCaptureMode:()BW_AVAudioRouteDataSourceUtilities;
@end

@implementation NSDictionary(BW_AVAudioRouteDataSourceUtilities)

- (uint64_t)bw_optimalMicPolarPatternForAudioCaptureMode:()BW_AVAudioRouteDataSourceUtilities
{
  if (a3 == 7)
  {
    v4 = 1935827812;
  }

  else
  {
    v4 = 1869442665;
  }

  if (a3 == 7)
  {
    v5 = 1869442665;
  }

  else
  {
    v5 = 1935827812;
  }

  v22[0] = v4;
  v22[1] = 1668441188;
  v22[2] = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v6 = [self objectForKeyedSubscript:*MEMORY[0x1E69B0570]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v19;
  v11 = -1;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v18 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        intValue = [v13 intValue];
        v15 = 0;
        while (intValue != v22[v15])
        {
          if (++v15 == 3)
          {
            v15 = 0;
            break;
          }
        }

        if (v15 <= v11)
        {
          v9 = v9;
        }

        else
        {
          v11 = v15;
          v9 = intValue;
        }
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v18 objects:v17 count:16];
  }

  while (v8);
  return v9;
}

@end