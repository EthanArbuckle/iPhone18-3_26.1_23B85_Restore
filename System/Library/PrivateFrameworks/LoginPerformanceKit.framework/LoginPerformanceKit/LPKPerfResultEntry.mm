@interface LPKPerfResultEntry
- (LPKPerfResultEntry)init;
- (void)_reCalculateValuesIfNeeded;
- (void)addEntryValue:(double)value;
@end

@implementation LPKPerfResultEntry

- (LPKPerfResultEntry)init
{
  v6.receiver = self;
  v6.super_class = LPKPerfResultEntry;
  v2 = [(LPKPerfResultEntry *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    entryValues = v2->_entryValues;
    v2->_entryValues = v3;

    v2->_needsReCalculation = 1;
  }

  return v2;
}

- (void)addEntryValue:(double)value
{
  entryValues = self->_entryValues;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:value];
  [(NSMutableArray *)entryValues addObject:v5];

  [(LPKPerfResultEntry *)self setNeedsReCalculation:1];
}

- (void)_reCalculateValuesIfNeeded
{
  v25 = *MEMORY[0x277D85DE8];
  if ([(LPKPerfResultEntry *)self needsReCalculation])
  {
    [(NSMutableArray *)self->_entryValues sortUsingComparator:&__block_literal_global];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = self->_entryValues;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v21;
      v7 = 0.0;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v20 + 1) + 8 * i) doubleValue];
          v7 = v7 + v9;
        }

        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v5);
    }

    else
    {
      v7 = 0.0;
    }

    self->_meanValue = v7 / [(NSMutableArray *)self->_entryValues count];
    v10 = [(NSMutableArray *)self->_entryValues count];
    entryValues = self->_entryValues;
    v12 = [(NSMutableArray *)entryValues count];
    if (v10)
    {
      v13 = [(NSMutableArray *)entryValues objectAtIndexedSubscript:v12 >> 1];
      [v13 doubleValue];
      self->_medianValue = v18;
    }

    else
    {
      v13 = [(NSMutableArray *)entryValues objectAtIndexedSubscript:(v12 - 1) >> 1];
      [v13 doubleValue];
      v15 = v14;
      v16 = [(NSMutableArray *)self->_entryValues objectAtIndexedSubscript:(([(NSMutableArray *)self->_entryValues count]- 1) >> 1) + 1];
      [v16 doubleValue];
      self->_medianValue = (v15 + v17) * 0.5;
    }

    [(LPKPerfResultEntry *)self setNeedsReCalculation:0];
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end