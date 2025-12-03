@interface _OSInactivityPredictorBackupHourEntry
+ (id)descriptionWithHistoryEntries:(id)entries;
@end

@implementation _OSInactivityPredictorBackupHourEntry

+ (id)descriptionWithHistoryEntries:(id)entries
{
  v21 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  allKeys = [entriesCopy allKeys];
  v5 = [allKeys sortedArrayUsingSelector:sel_compare_];

  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"Backup: {\n"];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [entriesCopy objectForKeyedSubscript:v12];
        [string appendFormat:@"  Hour %@: %@\n", v12, v13, v16];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [string appendFormat:@"}"];
  v14 = *MEMORY[0x277D85DE8];

  return string;
}

@end