@interface MTHLSItem
- (MTHLSItem)initWithStartOverallPosition:(unint64_t)a3 metricsData:(id)a4;
- (int64_t)compare:(id)a3;
@end

@implementation MTHLSItem

- (MTHLSItem)initWithStartOverallPosition:(unint64_t)a3 metricsData:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = MTHLSItem;
  v7 = [(MTHLSItem *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(MTHLSItem *)v7 setStartOverallPosition:a3];
    [(MTHLSItem *)v8 setEventData:v6];
  }

  return v8;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(MTHLSItem *)self startOverallPosition];
  if (v5 == [v4 startOverallPosition])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(MTHLSItem *)self startOverallPosition];
    if (v7 < [v4 startOverallPosition])
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

uint64_t __23__MTHLSItem_comparator__block_invoke(uint64_t a1, void *a2, void *a3)
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