@interface MFSearchResponseQueue
- (BOOL)addItem:(id)a3;
- (BOOL)flush;
- (MFSearchResponseQueue)init;
- (void)dealloc;
@end

@implementation MFSearchResponseQueue

- (MFSearchResponseQueue)init
{
  v5.receiver = self;
  v5.super_class = MFSearchResponseQueue;
  v2 = [(MFBaseSyncResponseQueue *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MFBufferedQueue *)v2 setMaximumLatency:60.0];
    v3->indexSet = objc_alloc_init(MEMORY[0x277CCAB58]);
  }

  return v3;
}

- (BOOL)addItem:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if ([a3 responseType] == 14)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [a3 searchResults];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v14 + 1) + 8 * i) unsignedIntValue];
          if ([(NSMutableIndexSet *)self->indexSet count]>= self->limit)
          {
            v11 = [(NSMutableIndexSet *)self->indexSet firstIndex];
            if (v11 >= v10)
            {
              continue;
            }

            [(NSMutableIndexSet *)self->indexSet removeIndex:v11];
          }

          [(NSMutableIndexSet *)self->indexSet addIndex:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)flush
{
  indexSet = self->indexSet;
  if (indexSet)
  {
    v4 = [(NSMutableIndexSet *)indexSet lastIndex];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v4; i != 0x7FFFFFFFFFFFFFFFLL; i = [(NSMutableIndexSet *)self->indexSet indexLessThanIndex:i])
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
        v9.receiver = self;
        v9.super_class = MFSearchResponseQueue;
        [(MFBufferedQueue *)&v9 addItem:v6];
      }
    }
  }

  v8.receiver = self;
  v8.super_class = MFSearchResponseQueue;
  return [(MFBufferedQueue *)&v8 flush];
}

- (void)dealloc
{
  self->indexSet = 0;
  v3.receiver = self;
  v3.super_class = MFSearchResponseQueue;
  [(MFBaseSyncResponseQueue *)&v3 dealloc];
}

@end