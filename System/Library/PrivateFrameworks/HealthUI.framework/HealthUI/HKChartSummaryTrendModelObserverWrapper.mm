@interface HKChartSummaryTrendModelObserverWrapper
- (HKChartSummaryTrendModelObserver)weakObserver;
@end

@implementation HKChartSummaryTrendModelObserverWrapper

- (HKChartSummaryTrendModelObserver)weakObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_weakObserver);

  return WeakRetained;
}

@end