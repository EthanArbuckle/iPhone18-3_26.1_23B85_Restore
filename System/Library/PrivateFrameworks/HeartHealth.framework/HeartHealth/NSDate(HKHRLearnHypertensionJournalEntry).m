@interface NSDate(HKHRLearnHypertensionJournalEntry)
+ (__CFString)hkhr_prettyStringForDateArray:()HKHRLearnHypertensionJournalEntry;
@end

@implementation NSDate(HKHRLearnHypertensionJournalEntry)

+ (__CFString)hkhr_prettyStringForDateArray:()HKHRLearnHypertensionJournalEntry
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = @"[";
    do
    {
      v8 = 0;
      v9 = v7;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [MEMORY[0x277CBEAA8] hkhr_ISO8601StringForDate:*(*(&v14 + 1) + 8 * v8)];
        v7 = [(__CFString *)v9 stringByAppendingFormat:@"%@, ", v10];

        ++v8;
        v9 = v7;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = @"[";
  }

  v11 = [(__CFString *)v7 stringByAppendingFormat:@"]"];

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

@end