@interface _HKInteractiveChartWeakObserverWrapper
- (HKInteractiveChartViewObserver)observer;
- (_HKInteractiveChartWeakObserverWrapper)initWithObserver:(id)a3;
@end

@implementation _HKInteractiveChartWeakObserverWrapper

- (_HKInteractiveChartWeakObserverWrapper)initWithObserver:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _HKInteractiveChartWeakObserverWrapper;
  v5 = [(_HKInteractiveChartWeakObserverWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_observer, v4);
  }

  return v6;
}

- (HKInteractiveChartViewObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end