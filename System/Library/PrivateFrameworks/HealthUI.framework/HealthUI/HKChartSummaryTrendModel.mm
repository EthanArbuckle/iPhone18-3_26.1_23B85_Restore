@interface HKChartSummaryTrendModel
- (BOOL)isEqual:(id)a3;
- (HKChartSummaryTrendModel)initWithTimeScopeTrends:(id)a3 selectTrendInitially:(BOOL)a4;
- (void)_notifyObserversTrendModelChanged;
- (void)addObserver:(id)a3;
- (void)updateChartSummaryTrendModel:(id)a3;
@end

@implementation HKChartSummaryTrendModel

- (HKChartSummaryTrendModel)initWithTimeScopeTrends:(id)a3 selectTrendInitially:(BOOL)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = HKChartSummaryTrendModel;
  v8 = [(HKChartSummaryTrendModel *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_selectTrendInitially = a4;
    objc_storeStrong(&v8->_timeScopeTrends, a3);
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    observers = v9->_observers;
    v9->_observers = v10;
  }

  return v9;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v6 = objc_alloc_init(HKChartSummaryTrendModelObserverWrapper);
  [(HKChartSummaryTrendModelObserverWrapper *)v6 setWeakObserver:v4];

  v5 = [(HKChartSummaryTrendModel *)self observers];
  [v5 addObject:v6];
}

- (void)_notifyObserversTrendModelChanged
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(HKChartSummaryTrendModel *)self observers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) weakObserver];
        [v7 trendModelChanged];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)updateChartSummaryTrendModel:(id)a3
{
  v4 = a3;
  self->_selectTrendInitially = [v4 selectTrendInitially];
  v5 = [v4 timeScopeTrends];

  v6 = [v5 copy];
  timeScopeTrends = self->_timeScopeTrends;
  self->_timeScopeTrends = v6;

  [(HKChartSummaryTrendModel *)self _notifyObserversTrendModelChanged];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_selectTrendInitially == v4->_selectTrendInitially)
    {
      v5 = [(NSArray *)self->_timeScopeTrends isEqual:v4->_timeScopeTrends];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end