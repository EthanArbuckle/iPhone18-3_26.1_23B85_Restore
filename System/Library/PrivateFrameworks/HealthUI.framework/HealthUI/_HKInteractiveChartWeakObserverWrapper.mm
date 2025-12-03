@interface _HKInteractiveChartWeakObserverWrapper
- (HKInteractiveChartViewObserver)observer;
- (_HKInteractiveChartWeakObserverWrapper)initWithObserver:(id)observer;
@end

@implementation _HKInteractiveChartWeakObserverWrapper

- (_HKInteractiveChartWeakObserverWrapper)initWithObserver:(id)observer
{
  observerCopy = observer;
  v8.receiver = self;
  v8.super_class = _HKInteractiveChartWeakObserverWrapper;
  v5 = [(_HKInteractiveChartWeakObserverWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_observer, observerCopy);
  }

  return v6;
}

- (HKInteractiveChartViewObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end