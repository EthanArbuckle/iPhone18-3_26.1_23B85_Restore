@interface LCFProactiveMetricsComputation
+ (id)mrr:(id)a3;
@end

@implementation LCFProactiveMetricsComputation

+ (id)mrr:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v13 + 1) + 8 * i) doubleValue];
        v7 = v7 + 1.0 / v9;
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:{v7 / objc_msgSend(v3, "count")}];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end