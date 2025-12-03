@interface CLSPartOfDayInformant
- (id)gatherCluesForInvestigation:(id)investigation progressBlock:(id)block;
@end

@implementation CLSPartOfDayInformant

- (id)gatherCluesForInvestigation:(id)investigation progressBlock:(id)block
{
  v28 = *MEMORY[0x277D85DE8];
  investigationCopy = investigation;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  clueCollection = [investigationCopy clueCollection];
  localDates = [clueCollection localDates];
  v8 = [localDates count];

  if (v8)
  {
    v22 = clueCollection;
    feeder = [investigationCopy feeder];
    v10 = [CLSPartOfDayCalculation partsOfDayForFeeder:feeder];

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

    clueCollection = v22;
  }

  return v5;
}

@end