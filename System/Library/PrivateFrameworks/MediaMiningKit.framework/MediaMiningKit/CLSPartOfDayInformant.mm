@interface CLSPartOfDayInformant
- (id)gatherCluesForInvestigation:(id)a3 progressBlock:(id)a4;
@end

@implementation CLSPartOfDayInformant

- (id)gatherCluesForInvestigation:(id)a3 progressBlock:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [v4 clueCollection];
  v7 = [v6 localDates];
  v8 = [v7 count];

  if (v8)
  {
    v22 = v6;
    v9 = [v4 feeder];
    v10 = [CLSPartOfDayCalculation partsOfDayForFeeder:v9];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          v17 = [v11 objectForKeyedSubscript:v16];
          [v17 doubleValue];
          v19 = v18;

          v20 = [CLSOutputClue clueWithValue:v16 forKey:@"Time of Day" confidence:v19 relevance:0.0];
          [v5 addObject:v20];
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    v6 = v22;
  }

  return v5;
}

@end