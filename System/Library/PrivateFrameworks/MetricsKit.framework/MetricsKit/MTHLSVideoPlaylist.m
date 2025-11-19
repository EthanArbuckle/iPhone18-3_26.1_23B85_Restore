@interface MTHLSVideoPlaylist
- (MTHLSVideoPlaylist)initWithStartPosition:(unint64_t)a3 mainFeatureMetricsData:(id)a4;
- (NSMutableArray)rollItems;
- (id)itemAtOverallPosition:(unint64_t)a3 rangeOptions:(int64_t)a4;
- (id)itemsBetweenStartOverallPosition:(unint64_t)a3 endOverallPosition:(unint64_t)a4;
- (id)mainFeatureItemWithStartOverallPosition:(unint64_t)a3;
- (int64_t)indexOfLastRollItemWithStartBeforePosition:(unint64_t)a3;
- (void)addItemStartAtMilliseconds:(unint64_t)a3 durationMilliseconds:(unint64_t)a4 metricsData:(id)a5;
- (void)addItemStartAtSeconds:(double)a3 durationSeconds:(double)a4 metricsData:(id)a5;
- (void)addRollInfoItem:(id)a3;
- (void)addRollInfoItems:(id)a3;
- (void)addRollItem:(id)a3;
@end

@implementation MTHLSVideoPlaylist

- (MTHLSVideoPlaylist)initWithStartPosition:(unint64_t)a3 mainFeatureMetricsData:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = MTHLSVideoPlaylist;
  v7 = [(MTHLSVideoPlaylist *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(MTHLSVideoPlaylist *)v7 setStartPosition:a3];
    [(MTHLSVideoPlaylist *)v8 setMainFeatureMetricsData:v6];
  }

  return v8;
}

- (void)addRollInfoItems:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(MTHLSVideoPlaylist *)self addRollInfoItem:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addRollInfoItem:(id)a3
{
  v8 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v8 metricsData];
  }

  else
  {
    v4 = 0;
  }

  [v8 start];
  v6 = v5;
  [v8 duration];
  [(MTHLSVideoPlaylist *)self addItemStartAtSeconds:v4 durationSeconds:v6 metricsData:v7];
}

- (void)addItemStartAtSeconds:(double)a3 durationSeconds:(double)a4 metricsData:(id)a5
{
  v8 = a5;
  v9 = [[MTHLSRollItem alloc] initWithStartOverallPosition:(a3 * 1000.0) duration:(a4 * 1000.0) metricsData:v8];

  [(MTHLSVideoPlaylist *)self addRollItem:v9];
}

- (void)addItemStartAtMilliseconds:(unint64_t)a3 durationMilliseconds:(unint64_t)a4 metricsData:(id)a5
{
  v8 = a5;
  v9 = [[MTHLSRollItem alloc] initWithStartOverallPosition:a3 duration:a4 metricsData:v8];

  [(MTHLSVideoPlaylist *)self addRollItem:v9];
}

- (id)itemAtOverallPosition:(unint64_t)a3 rangeOptions:(int64_t)a4
{
  v4 = a4;
  v7 = [(MTHLSVideoPlaylist *)self indexOfLastRollItemWithStartBeforePosition:?];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(MTHLSVideoPlaylist *)self mainFeatureItemWithStartOverallPosition:0];
  }

  else
  {
    v9 = v7;
    if ((v4 & 1) == 0)
    {
      do
      {
        v10 = [(MTHLSVideoPlaylist *)self rollItems];
        v11 = [v10 objectAtIndexedSubscript:v9];
        v12 = [v11 startOverallPosition];

        v13 = v9 - 1;
        if (v12 != a3)
        {
          break;
        }
      }

      while (v9-- > 0);
      v9 = v13 + 1;
    }

    v15 = [(MTHLSVideoPlaylist *)self rollItems];
    v16 = [v15 objectAtIndexedSubscript:v9];

    if (([v16 containsOverallPosition:a3] & 1) != 0 || (v4 & 2) != 0 && objc_msgSend(v16, "endOverallPosition") == a3)
    {
      v17 = v16;
    }

    else
    {
      v17 = -[MTHLSVideoPlaylist mainFeatureItemWithStartOverallPosition:](self, "mainFeatureItemWithStartOverallPosition:", [v16 endOverallPosition]);
    }

    v8 = v17;
  }

  return v8;
}

- (id)itemsBetweenStartOverallPosition:(unint64_t)a3 endOverallPosition:(unint64_t)a4
{
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [(MTHLSVideoPlaylist *)self rollItems];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(MTHLSVideoPlaylist *)self indexOfLastRollItemWithStartBeforePosition:a3];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [(MTHLSVideoPlaylist *)self mainFeatureItemWithStartOverallPosition:0];
      [v7 addObject:v11];

      v10 = 0;
    }

    while (1)
    {
      v20 = [(MTHLSVideoPlaylist *)self rollItems];
      v21 = [v20 count];

      if (v10 >= v21)
      {
        break;
      }

      v12 = [(MTHLSVideoPlaylist *)self rollItems];
      v13 = [v12 objectAtIndexedSubscript:v10];

      if ([v13 startOverallPosition] > a4)
      {
        goto LABEL_17;
      }

      if ([v13 endOverallPosition] >= a3)
      {
        [v7 addObject:v13];
      }

      ++v10;
      if ([v13 endOverallPosition] < a4)
      {
        v14 = [(MTHLSVideoPlaylist *)self rollItems];
        v15 = [v14 count];

        if (v10 >= v15)
        {
          v17 = -[MTHLSVideoPlaylist mainFeatureItemWithStartOverallPosition:](self, "mainFeatureItemWithStartOverallPosition:", [v13 endOverallPosition]);
          [v7 addObject:v17];
        }

        else
        {
          v16 = [(MTHLSVideoPlaylist *)self rollItems];
          v17 = [v16 objectAtIndexedSubscript:v10];

          v18 = [v17 startOverallPosition];
          if (v18 > [v13 endOverallPosition])
          {
            v19 = -[MTHLSVideoPlaylist mainFeatureItemWithStartOverallPosition:](self, "mainFeatureItemWithStartOverallPosition:", [v13 endOverallPosition]);
            [v7 addObject:v19];
          }
        }
      }
    }
  }

  else
  {
    v13 = [(MTHLSVideoPlaylist *)self mainFeatureItemWithStartOverallPosition:0];
    [v7 addObject:v13];
LABEL_17:
  }

  return v7;
}

- (NSMutableArray)rollItems
{
  rollItems = self->_rollItems;
  if (!rollItems)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = self->_rollItems;
    self->_rollItems = v4;

    rollItems = self->_rollItems;
  }

  return rollItems;
}

- (void)addRollItem:(id)a3
{
  v4 = a3;
  v8 = [(MTHLSVideoPlaylist *)self rollItems];
  v5 = [v8 count];
  v6 = +[MTHLSItem comparator];
  v7 = [v8 indexOfObject:v4 inSortedRange:0 options:v5 usingComparator:{1024, v6}];

  [v8 insertObject:v4 atIndex:v7];
}

- (id)mainFeatureItemWithStartOverallPosition:(unint64_t)a3
{
  v5 = [MTHLSItem alloc];
  v6 = [(MTHLSVideoPlaylist *)self mainFeatureMetricsData];
  v7 = [(MTHLSItem *)v5 initWithStartOverallPosition:a3 metricsData:v6];

  v8 = [(MTHLSVideoPlaylist *)self startPosition];
  v9 = [(MTHLSVideoPlaylist *)self indexOfLastRollItemWithStartBeforePosition:a3];
  if (v9 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v10 = v9;
    v11 = [(MTHLSVideoPlaylist *)self rollItems];
    v12 = [v11 objectAtIndexedSubscript:v10];

    if (v10)
    {
      v13 = v10 - 1;
      do
      {
        v14 = [(MTHLSVideoPlaylist *)self rollItems];
        v15 = [v14 objectAtIndexedSubscript:v13];

        v16 = [v12 startOverallPosition];
        v17 = [v15 startOverallPosition];
        v18 = [v15 duration];

        v8 = v16 + v8 - (v17 + v18);
        v19 = [(MTHLSVideoPlaylist *)self rollItems];
        v12 = [v19 objectAtIndexedSubscript:v13];

        --v13;
      }

      while (v13 != -1);
    }

    v8 += [v12 startOverallPosition];
  }

  [(MTHLSItem *)v7 setStartPosition:v8];

  return v7;
}

- (int64_t)indexOfLastRollItemWithStartBeforePosition:(unint64_t)a3
{
  v5 = [(MTHLSVideoPlaylist *)self rollItems];
  v6 = [v5 firstObject];

  if (v6 && [v6 startOverallPosition] <= a3)
  {
    v8 = [(MTHLSVideoPlaylist *)self rollItems];
    v9 = [v8 count] - 1;

    if (v9 < 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      do
      {
        v10 = (v7 + v9 + 1) >> 1;
        v11 = [(MTHLSVideoPlaylist *)self rollItems];
        v12 = [v11 objectAtIndexedSubscript:v10];

        if ([v12 startOverallPosition] > a3)
        {
          v9 = v10 - 1;
        }

        else
        {
          v7 = (v7 + v9 + 1) >> 1;
        }
      }

      while (v7 < v9);
    }
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

@end