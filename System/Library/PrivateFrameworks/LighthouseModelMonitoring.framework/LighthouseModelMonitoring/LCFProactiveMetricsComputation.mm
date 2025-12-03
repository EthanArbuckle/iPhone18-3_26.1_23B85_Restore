@interface LCFProactiveMetricsComputation
+ (id)mrr:(id)mrr;
@end

@implementation LCFProactiveMetricsComputation

+ (id)mrr:(id)mrr
{
  v18 = *MEMORY[0x277D85DE8];
  mrrCopy = mrr;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [mrrCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(mrrCopy);
        }

        [*(*(&v13 + 1) + 8 * i) doubleValue];
        v7 = v7 + 1.0 / v9;
      }

      v5 = [mrrCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:{v7 / objc_msgSend(mrrCopy, "count")}];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end