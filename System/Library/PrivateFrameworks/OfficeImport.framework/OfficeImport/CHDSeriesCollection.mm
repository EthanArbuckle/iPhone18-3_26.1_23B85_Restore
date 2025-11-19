@interface CHDSeriesCollection
+ (CHDSeriesCollection)seriesCollectionWithChart:(id)a3;
- (CHDSeriesCollection)initWithChart:(id)a3;
- (id)firstNonEmptySeries;
- (unint64_t)addObject:(id)a3;
- (unint64_t)nonEmptySeriesCount;
@end

@implementation CHDSeriesCollection

- (unint64_t)nonEmptySeriesCount
{
  v3 = [(EDCollection *)self count];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  for (i = 0; i != v4; ++i)
  {
    v7 = [(EDCollection *)self objectAtIndex:i];
    v8 = v7;
    if (v7)
    {
      v5 += [v7 isEmpty] ^ 1;
    }
  }

  return v5;
}

- (id)firstNonEmptySeries
{
  v3 = [(EDCollection *)self count];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    while (1)
    {
      v6 = [(EDCollection *)self objectAtIndex:v5];
      v7 = v6;
      if (v6)
      {
        if (([v6 isEmpty] & 1) == 0)
        {
          break;
        }
      }

      if (v4 == ++v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

  return v7;
}

- (CHDSeriesCollection)initWithChart:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CHDSeriesCollection;
  v5 = [(EDCollection *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mChart, v4);
  }

  return v6;
}

+ (CHDSeriesCollection)seriesCollectionWithChart:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithChart:v3];

  return v4;
}

- (unint64_t)addObject:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CHDSeriesCollection;
  v5 = [(EDSortedCollection *)&v16 addObject:v4];
  if (v5 != -1)
  {
    v6 = [v4 name];
    if (v6)
    {
    }

    else
    {
      v7 = [v4 lastCachedName];

      if (!v7)
      {
        WeakRetained = objc_loadWeakRetained(&self->mChart);
        v9 = [WeakRetained processors];
        [v9 markObject:v4 processor:objc_opt_class()];
      }
    }

    p_mChart = &self->mChart;
    v11 = objc_loadWeakRetained(&self->mChart);
    v12 = [v11 processors];
    [v12 markObject:v4 processor:objc_opt_class()];

    v13 = objc_loadWeakRetained(p_mChart);
    v14 = [v13 processors];
    [v14 markObject:v4 processor:objc_opt_class()];
  }

  return v5;
}

@end