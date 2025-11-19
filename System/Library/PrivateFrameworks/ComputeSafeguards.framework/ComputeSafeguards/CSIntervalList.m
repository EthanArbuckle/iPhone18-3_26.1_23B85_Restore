@interface CSIntervalList
- (CSIntervalList)initWithIntervals:(id)a3;
- (double)durationInSeconds;
- (double)sum;
- (double)timeWeightedSum;
- (id)firstInterval;
- (id)intersectWithIntervalList:(id)a3;
- (id)lastInterval;
@end

@implementation CSIntervalList

- (CSIntervalList)initWithIntervals:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CSIntervalList;
  v5 = [(CSIntervalList *)&v19 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    intervalArray = v5->_intervalArray;
    v5->_intervalArray = v6;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(NSMutableArray *)v5->_intervalArray addObject:*(*(&v15 + 1) + 8 * v12++), v15];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v10);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)lastInterval
{
  v3 = [(NSMutableArray *)self->_intervalArray count];
  if (v3)
  {
    v3 = [(NSMutableArray *)self->_intervalArray lastObject];
  }

  return v3;
}

- (id)firstInterval
{
  v3 = [(NSMutableArray *)self->_intervalArray count];
  if (v3)
  {
    v3 = [(NSMutableArray *)self->_intervalArray firstObject];
  }

  return v3;
}

- (id)intersectWithIntervalList:(id)a3
{
  v4 = a3;
  v5 = [CSIntervalList alloc];
  v25 = [(CSIntervalList *)v5 initWithIntervals:MEMORY[0x277CBEBF8]];
  if ([(CSIntervalList *)self count])
  {
    v6 = 0;
    v7 = 0;
    v26 = v4;
    do
    {
      if (v7 >= [v4 count])
      {
        break;
      }

      v8 = [(NSMutableArray *)self->_intervalArray objectAtIndexedSubscript:v6];
      v9 = [v4 intervalArray];
      v10 = [v9 objectAtIndexedSubscript:v7];

      v11 = [v8 startTime];
      v12 = [v10 startTime];
      v13 = [v11 laterDate:v12];

      v14 = [v8 endTime];
      v15 = [v10 endTime];
      v16 = [v14 earlierDate:v15];

      v17 = self;
      if ([v13 compare:v16] == -1)
      {
        [v8 value];
        v19 = [[CSInterval alloc] initWithStartTime:v13 endTime:v16 value:v18];
        [(CSIntervalList *)v25 addInterval:v19];
      }

      v20 = [v8 endTime];
      v21 = [v10 endTime];
      v22 = [v20 compare:v21];

      if (v22 == -1)
      {
        ++v6;
      }

      else
      {
        ++v7;
      }

      v23 = [(CSIntervalList *)v17 count];
      self = v17;
      v4 = v26;
    }

    while (v6 < v23);
  }

  return v25;
}

- (double)sum
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_intervalArray;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v11 + 1) + 8 * i) value];
        v6 = v6 + v8;
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (double)timeWeightedSum
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = self->_intervalArray;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 endTime];
        v10 = [v8 startTime];
        [v9 timeIntervalSinceDate:v10];
        v12 = v11;

        if (v12 > 0.0)
        {
          [v8 value];
          v6 = v6 + v13 * v12;
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

- (double)durationInSeconds
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = self->_intervalArray;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 endTime];
        v10 = [v8 startTime];
        [v9 timeIntervalSinceDate:v10];
        v12 = v11;

        v6 = v6 + v12;
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

@end