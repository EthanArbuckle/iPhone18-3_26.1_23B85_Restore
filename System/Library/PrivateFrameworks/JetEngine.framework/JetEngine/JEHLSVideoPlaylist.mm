@interface JEHLSVideoPlaylist
- (JEHLSVideoPlaylist)initWithStartPosition:(unint64_t)position mainFeatureMetricsData:(id)data;
- (NSMutableArray)rollItems;
- (id)itemAtOverallPosition:(unint64_t)position rangeOptions:(int64_t)options;
- (id)itemsBetweenStartOverallPosition:(unint64_t)position endOverallPosition:(unint64_t)overallPosition;
- (id)mainFeatureItemWithStartOverallPosition:(unint64_t)position;
- (int64_t)indexOfLastRollItemWithStartBeforePosition:(unint64_t)position;
- (void)addItemStartAtMilliseconds:(unint64_t)milliseconds durationMilliseconds:(unint64_t)durationMilliseconds metricsData:(id)data;
- (void)addItemStartAtSeconds:(double)seconds durationSeconds:(double)durationSeconds metricsData:(id)data;
- (void)addRollInfoItem:(id)item;
- (void)addRollInfoItems:(id)items;
- (void)addRollItem:(id)item;
@end

@implementation JEHLSVideoPlaylist

- (JEHLSVideoPlaylist)initWithStartPosition:(unint64_t)position mainFeatureMetricsData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = JEHLSVideoPlaylist;
  v7 = [(JEHLSVideoPlaylist *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(JEHLSVideoPlaylist *)v7 setStartPosition:position];
    [(JEHLSVideoPlaylist *)v8 setMainFeatureMetricsData:dataCopy];
  }

  return v8;
}

- (void)addRollInfoItems:(id)items
{
  v14 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [itemsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(itemsCopy);
        }

        [(JEHLSVideoPlaylist *)self addRollInfoItem:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [itemsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)addRollInfoItem:(id)item
{
  itemCopy = item;
  if (objc_opt_respondsToSelector())
  {
    metricsData = [itemCopy metricsData];
  }

  else
  {
    metricsData = 0;
  }

  [itemCopy start];
  v6 = v5;
  [itemCopy duration];
  [(JEHLSVideoPlaylist *)self addItemStartAtSeconds:metricsData durationSeconds:v6 metricsData:v7];
}

- (void)addItemStartAtSeconds:(double)seconds durationSeconds:(double)durationSeconds metricsData:(id)data
{
  dataCopy = data;
  v9 = [[JEHLSRollItem alloc] initWithStartOverallPosition:(seconds * 1000.0) duration:(durationSeconds * 1000.0) metricsData:dataCopy];

  [(JEHLSVideoPlaylist *)self addRollItem:v9];
}

- (void)addItemStartAtMilliseconds:(unint64_t)milliseconds durationMilliseconds:(unint64_t)durationMilliseconds metricsData:(id)data
{
  dataCopy = data;
  v9 = [[JEHLSRollItem alloc] initWithStartOverallPosition:milliseconds duration:durationMilliseconds metricsData:dataCopy];

  [(JEHLSVideoPlaylist *)self addRollItem:v9];
}

- (id)itemAtOverallPosition:(unint64_t)position rangeOptions:(int64_t)options
{
  optionsCopy = options;
  v7 = [(JEHLSVideoPlaylist *)self indexOfLastRollItemWithStartBeforePosition:?];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(JEHLSVideoPlaylist *)self mainFeatureItemWithStartOverallPosition:0];
  }

  else
  {
    v9 = v7;
    if ((optionsCopy & 1) == 0)
    {
      do
      {
        rollItems = [(JEHLSVideoPlaylist *)self rollItems];
        v11 = [rollItems objectAtIndexedSubscript:v9];
        startOverallPosition = [v11 startOverallPosition];

        v13 = v9 - 1;
        if (startOverallPosition != position)
        {
          break;
        }
      }

      while (v9-- > 0);
      v9 = v13 + 1;
    }

    rollItems2 = [(JEHLSVideoPlaylist *)self rollItems];
    v16 = [rollItems2 objectAtIndexedSubscript:v9];

    if (([v16 containsOverallPosition:position] & 1) != 0 || (optionsCopy & 2) != 0 && objc_msgSend(v16, "endOverallPosition") == position)
    {
      v17 = v16;
    }

    else
    {
      v17 = -[JEHLSVideoPlaylist mainFeatureItemWithStartOverallPosition:](self, "mainFeatureItemWithStartOverallPosition:", [v16 endOverallPosition]);
    }

    v8 = v17;
  }

  return v8;
}

- (id)itemsBetweenStartOverallPosition:(unint64_t)position endOverallPosition:(unint64_t)overallPosition
{
  array = [MEMORY[0x1E695DF70] array];
  rollItems = [(JEHLSVideoPlaylist *)self rollItems];
  v9 = [rollItems count];

  if (v9)
  {
    v10 = [(JEHLSVideoPlaylist *)self indexOfLastRollItemWithStartBeforePosition:position];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [(JEHLSVideoPlaylist *)self mainFeatureItemWithStartOverallPosition:0];
      [array addObject:v11];

      v10 = 0;
    }

    while (1)
    {
      rollItems2 = [(JEHLSVideoPlaylist *)self rollItems];
      v21 = [rollItems2 count];

      if (v10 >= v21)
      {
        break;
      }

      rollItems3 = [(JEHLSVideoPlaylist *)self rollItems];
      v13 = [rollItems3 objectAtIndexedSubscript:v10];

      if ([v13 startOverallPosition] > overallPosition)
      {
        goto LABEL_17;
      }

      if ([v13 endOverallPosition] >= position)
      {
        [array addObject:v13];
      }

      ++v10;
      if ([v13 endOverallPosition] < overallPosition)
      {
        rollItems4 = [(JEHLSVideoPlaylist *)self rollItems];
        v15 = [rollItems4 count];

        if (v10 >= v15)
        {
          v17 = -[JEHLSVideoPlaylist mainFeatureItemWithStartOverallPosition:](self, "mainFeatureItemWithStartOverallPosition:", [v13 endOverallPosition]);
          [array addObject:v17];
        }

        else
        {
          rollItems5 = [(JEHLSVideoPlaylist *)self rollItems];
          v17 = [rollItems5 objectAtIndexedSubscript:v10];

          startOverallPosition = [v17 startOverallPosition];
          if (startOverallPosition > [v13 endOverallPosition])
          {
            v19 = -[JEHLSVideoPlaylist mainFeatureItemWithStartOverallPosition:](self, "mainFeatureItemWithStartOverallPosition:", [v13 endOverallPosition]);
            [array addObject:v19];
          }
        }
      }
    }
  }

  else
  {
    v13 = [(JEHLSVideoPlaylist *)self mainFeatureItemWithStartOverallPosition:0];
    [array addObject:v13];
LABEL_17:
  }

  return array;
}

- (NSMutableArray)rollItems
{
  rollItems = self->_rollItems;
  if (!rollItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = self->_rollItems;
    self->_rollItems = array;

    rollItems = self->_rollItems;
  }

  return rollItems;
}

- (void)addRollItem:(id)item
{
  itemCopy = item;
  rollItems = [(JEHLSVideoPlaylist *)self rollItems];
  v5 = [rollItems count];
  v6 = +[JEHLSItem comparator];
  v7 = [rollItems indexOfObject:itemCopy inSortedRange:0 options:v5 usingComparator:{1024, v6}];

  [rollItems insertObject:itemCopy atIndex:v7];
}

- (id)mainFeatureItemWithStartOverallPosition:(unint64_t)position
{
  v5 = [JEHLSItem alloc];
  mainFeatureMetricsData = [(JEHLSVideoPlaylist *)self mainFeatureMetricsData];
  v7 = [(JEHLSItem *)v5 initWithStartOverallPosition:position metricsData:mainFeatureMetricsData];

  startPosition = [(JEHLSVideoPlaylist *)self startPosition];
  v9 = [(JEHLSVideoPlaylist *)self indexOfLastRollItemWithStartBeforePosition:position];
  if (v9 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v10 = v9;
    rollItems = [(JEHLSVideoPlaylist *)self rollItems];
    v12 = [rollItems objectAtIndexedSubscript:v10];

    if (v10)
    {
      v13 = v10 - 1;
      do
      {
        rollItems2 = [(JEHLSVideoPlaylist *)self rollItems];
        v15 = [rollItems2 objectAtIndexedSubscript:v13];

        startOverallPosition = [v12 startOverallPosition];
        startOverallPosition2 = [v15 startOverallPosition];
        duration = [v15 duration];

        startPosition = startOverallPosition + startPosition - (startOverallPosition2 + duration);
        rollItems3 = [(JEHLSVideoPlaylist *)self rollItems];
        v12 = [rollItems3 objectAtIndexedSubscript:v13];

        --v13;
      }

      while (v13 != -1);
    }

    startPosition += [v12 startOverallPosition];
  }

  [(JEHLSItem *)v7 setStartPosition:startPosition];

  return v7;
}

- (int64_t)indexOfLastRollItemWithStartBeforePosition:(unint64_t)position
{
  rollItems = [(JEHLSVideoPlaylist *)self rollItems];
  firstObject = [rollItems firstObject];

  if (firstObject && [firstObject startOverallPosition] <= position)
  {
    rollItems2 = [(JEHLSVideoPlaylist *)self rollItems];
    v9 = [rollItems2 count] - 1;

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
        rollItems3 = [(JEHLSVideoPlaylist *)self rollItems];
        v12 = [rollItems3 objectAtIndexedSubscript:v10];

        if ([v12 startOverallPosition] > position)
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