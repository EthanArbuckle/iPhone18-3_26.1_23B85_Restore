@interface JEHLSItem
- (JEHLSItem)initWithStartOverallPosition:(unint64_t)position metricsData:(id)data;
- (int64_t)compare:(id)compare;
@end

@implementation JEHLSItem

- (JEHLSItem)initWithStartOverallPosition:(unint64_t)position metricsData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = JEHLSItem;
  v7 = [(JEHLSItem *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(JEHLSItem *)v7 setStartOverallPosition:position];
    [(JEHLSItem *)v8 setEventData:dataCopy];
  }

  return v8;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  startOverallPosition = [(JEHLSItem *)self startOverallPosition];
  if (startOverallPosition == [compareCopy startOverallPosition])
  {
    v6 = 0;
  }

  else
  {
    startOverallPosition2 = [(JEHLSItem *)self startOverallPosition];
    if (startOverallPosition2 < [compareCopy startOverallPosition])
    {
      v6 = -1;
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

uint64_t __23__JEHLSItem_comparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 startOverallPosition];
  if (v6 == [v5 startOverallPosition])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 startOverallPosition];
    if (v8 < [v5 startOverallPosition])
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

@end