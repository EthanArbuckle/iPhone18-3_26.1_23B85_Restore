@interface IETestResults
- (int)getCount:(unint64_t)count;
@end

@implementation IETestResults

- (int)getCount:(unint64_t)count
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  results = [(IETestResults *)self results];
  v5 = 0;
  v6 = [results countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(results);
        }

        if ([*(*(&v11 + 1) + 8 * i) status] == count)
        {
          ++v5;
        }
      }

      v6 = [results countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

@end