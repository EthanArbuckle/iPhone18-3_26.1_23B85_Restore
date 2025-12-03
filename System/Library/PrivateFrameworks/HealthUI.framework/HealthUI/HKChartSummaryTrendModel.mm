@interface HKChartSummaryTrendModel
- (BOOL)isEqual:(id)equal;
- (HKChartSummaryTrendModel)initWithTimeScopeTrends:(id)trends selectTrendInitially:(BOOL)initially;
- (void)_notifyObserversTrendModelChanged;
- (void)addObserver:(id)observer;
- (void)updateChartSummaryTrendModel:(id)model;
@end

@implementation HKChartSummaryTrendModel

- (HKChartSummaryTrendModel)initWithTimeScopeTrends:(id)trends selectTrendInitially:(BOOL)initially
{
  trendsCopy = trends;
  v13.receiver = self;
  v13.super_class = HKChartSummaryTrendModel;
  v8 = [(HKChartSummaryTrendModel *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_selectTrendInitially = initially;
    objc_storeStrong(&v8->_timeScopeTrends, trends);
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    observers = v9->_observers;
    v9->_observers = v10;
  }

  return v9;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v6 = objc_alloc_init(HKChartSummaryTrendModelObserverWrapper);
  [(HKChartSummaryTrendModelObserverWrapper *)v6 setWeakObserver:observerCopy];

  observers = [(HKChartSummaryTrendModel *)self observers];
  [observers addObject:v6];
}

- (void)_notifyObserversTrendModelChanged
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  observers = [(HKChartSummaryTrendModel *)self observers];
  v3 = [observers countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(observers);
        }

        weakObserver = [*(*(&v8 + 1) + 8 * v6) weakObserver];
        [weakObserver trendModelChanged];

        ++v6;
      }

      while (v4 != v6);
      v4 = [observers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)updateChartSummaryTrendModel:(id)model
{
  modelCopy = model;
  self->_selectTrendInitially = [modelCopy selectTrendInitially];
  timeScopeTrends = [modelCopy timeScopeTrends];

  v6 = [timeScopeTrends copy];
  timeScopeTrends = self->_timeScopeTrends;
  self->_timeScopeTrends = v6;

  [(HKChartSummaryTrendModel *)self _notifyObserversTrendModelChanged];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_selectTrendInitially == equalCopy->_selectTrendInitially)
    {
      v5 = [(NSArray *)self->_timeScopeTrends isEqual:equalCopy->_timeScopeTrends];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end