@interface TrimmedMean
- (TrimmedMean)initWithSize:(unint64_t)size withTrimAt:(float)at;
- (float)getTrimmedMean;
- (void)add:(id)add;
@end

@implementation TrimmedMean

- (TrimmedMean)initWithSize:(unint64_t)size withTrimAt:(float)at
{
  v11.receiver = self;
  v11.super_class = TrimmedMean;
  v6 = [(TrimmedMean *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_arraySize = size;
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    values = v7->_values;
    v7->_values = v8;

    v7->_currentAverage = 0.0;
    v7->_trimAt = at;
  }

  return v7;
}

- (void)add:(id)add
{
  addCopy = add;
  if ([(NSMutableArray *)self->_values count]== self->_arraySize)
  {
    [(NSMutableArray *)self->_values removeLastObject];
  }

  [(NSMutableArray *)self->_values insertObject:addCopy atIndex:0];
}

- (float)getTrimmedMean
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = self->_values;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObjectsFromArray:*(*(&v27 + 1) + 8 * i)];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }

  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  v10 = [MEMORY[0x277CBEA60] arrayWithObject:v9];
  [v3 sortUsingDescriptors:v10];

  v11 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{(self->_trimAt * objc_msgSend(v3, "count")), objc_msgSend(v3, "count") - (self->_trimAt * objc_msgSend(v3, "count"))}];
  [v3 removeObjectsAtIndexes:v11];

  if ([v3 count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = v3;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      v16 = 0.0;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v23 + 1) + 8 * j) doubleValue];
          v16 = v16 + v18;
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v14);
      v19 = v16;
    }

    else
    {
      v19 = 0.0;
    }

    v20 = v19 / [v12 count];
  }

  else
  {
    v20 = 0.0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

@end