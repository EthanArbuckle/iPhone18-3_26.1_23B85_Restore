@interface CHDChartTypesCollection
- (CHDChartTypesCollection)initWithChart:(id)chart;
- (unint64_t)addObject:(id)object;
- (void)resetSeriesOrder;
@end

@implementation CHDChartTypesCollection

- (CHDChartTypesCollection)initWithChart:(id)chart
{
  chartCopy = chart;
  v8.receiver = self;
  v8.super_class = CHDChartTypesCollection;
  v5 = [(EDCollection *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mChart, chartCopy);
  }

  return v6;
}

- (unint64_t)addObject:(id)object
{
  objectCopy = object;
  v15.receiver = self;
  v15.super_class = CHDChartTypesCollection;
  v5 = [(EDCollection *)&v15 addObject:objectCopy];
  if (v5 != -1)
  {
    WeakRetained = objc_loadWeakRetained(&self->mChart);
    processors = [WeakRetained processors];
    [processors markObject:objectCopy processor:objc_opt_class()];

    if ([(EDCollection *)self count]== 1)
    {
      v8 = objc_loadWeakRetained(&self->mChart);
      processors2 = [v8 processors];
      [processors2 markObject:objectCopy processor:objc_opt_class()];
    }

    v10 = objc_loadWeakRetained(&self->mChart);
    processors3 = [v10 processors];
    [processors3 markObject:objectCopy processor:objc_opt_class()];

    v12 = objc_loadWeakRetained(&self->mChart);
    processors4 = [v12 processors];
    [processors4 markObject:objectCopy processor:objc_opt_class()];
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
          seriesCollection = [v7 seriesCollection];
          v10 = [seriesCollection count];
          if (v10)
          {
            v11 = 0;
            do
            {
              v12 = [seriesCollection objectAtIndex:v11];
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