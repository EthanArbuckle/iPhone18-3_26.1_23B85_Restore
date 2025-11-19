@interface ULNumericUtilities
+ (double)magnitudeOfVector:(id)a3;
+ (double)sumOfVector:(id)a3;
+ (id)dotProduct:(id)a3 vectorB:(id)a4;
@end

@implementation ULNumericUtilities

+ (id)dotProduct:(id)a3 vectorB:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7 == [v6 count] && objc_msgSend(v5, "count"))
  {
    if ([v5 count])
    {
      v8 = 0;
      v9 = 0.0;
      do
      {
        v10 = [v5 objectAtIndexedSubscript:v8];
        [v10 doubleValue];
        v12 = v11;
        v13 = [v6 objectAtIndexedSubscript:v8];
        [v13 doubleValue];
        v9 = v9 + v12 * v14;

        ++v8;
      }

      while (v8 < [v5 count]);
    }

    else
    {
      v9 = 0.0;
    }

    v15 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (double)sumOfVector:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v12 + 1) + 8 * i) doubleValue];
        v7 = v7 + v9;
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (double)magnitudeOfVector:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v12 + 1) + 8 * i) doubleValue];
        v7 = v7 + v9 * v9;
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return sqrt(v7);
}

@end