@interface OBScrollViewWeakLayoutObserver
- (OBScrollViewWeakLayoutObserver)initWithLayoutObserver:(id)observer;
- (void)_scrollViewDidLayoutSubviews:(id)subviews;
@end

@implementation OBScrollViewWeakLayoutObserver

- (OBScrollViewWeakLayoutObserver)initWithLayoutObserver:(id)observer
{
  observerCopy = observer;
  v8.receiver = self;
  v8.super_class = OBScrollViewWeakLayoutObserver;
  v5 = [(OBScrollViewWeakLayoutObserver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_selfReference, v5);
    objc_storeWeak(&v6->_weakLayoutObserver, observerCopy);
  }

  return v6;
}

- (void)_scrollViewDidLayoutSubviews:(id)subviews
{
  subviewsCopy = subviews;
  WeakRetained = objc_loadWeakRetained(&self->_weakLayoutObserver);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _scrollViewDidLayoutSubviews:subviewsCopy];
  }
}

@end