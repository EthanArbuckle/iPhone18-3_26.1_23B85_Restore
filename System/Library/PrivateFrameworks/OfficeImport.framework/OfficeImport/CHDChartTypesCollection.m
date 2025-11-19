@interface CHDChartTypesCollection
- (CHDChartTypesCollection)initWithChart:(id)a3;
- (unint64_t)addObject:(id)a3;
- (void)resetSeriesOrder;
@end

@implementation CHDChartTypesCollection

- (CHDChartTypesCollection)initWithChart:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CHDChartTypesCollection;
  v5 = [(EDCollection *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mChart, v4);
  }

  return v6;
}

- (unint64_t)addObject:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CHDChartTypesCollection;
  v5 = [(EDCollection *)&v15 addObject:v4];
  if (v5 != -1)
  {
    WeakRetained = objc_loadWeakRetained(&self->mChart);
    v7 = [WeakRetained processors];
    [v7 markObject:v4 processor:objc_opt_class()];

    if ([(EDCollection *)self count]== 1)
    {
      v8 = objc_loadWeakRetained(&self->mChart);
      v9 = [v8 processors];
      [v9 markObject:v4 processor:objc_opt_class()];
    }

    v10 = objc_loadWeakRetained(&self->mChart);
    v11 = [v10 processors];
    [v11 markObject:v4 processor:objc_opt_class()];

    v12 = objc_loadWeakRetained(&self->mChart);
    v13 = [v12 processors];
    [v13 markObject:v4 processor:objc_opt_class()];
  }

  return v5;
}

- (void)resetSeriesOrder
{
  if ([(EDCollection *)self count]>= 2)
  {
    v3 = [(EDCollection *)self count];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      for (i = 0; i != v4; ++i)
      {
        v7 = [(EDCollection *)self objectAtIndex:i];
        v8 = v7;
        if (v7)
        {
          v9 = [v7 seriesCollection];
          v10 = [v9 count];
          if (v10)
          {
            v11 = 0;
            do
            {
              v12 = [v9 objectAtIndex:v11];
              v13 = v12;
              if (v12)
              {
                [v12 setOrder:v5++];
              }

              ++v11;
            }

            while (v10 != v11);
          }
        }
      }
    }
  }
}

@end