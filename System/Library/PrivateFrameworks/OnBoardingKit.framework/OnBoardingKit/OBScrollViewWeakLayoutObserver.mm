@interface OBScrollViewWeakLayoutObserver
- (OBScrollViewWeakLayoutObserver)initWithLayoutObserver:(id)a3;
- (void)_scrollViewDidLayoutSubviews:(id)a3;
@end

@implementation OBScrollViewWeakLayoutObserver

- (OBScrollViewWeakLayoutObserver)initWithLayoutObserver:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = OBScrollViewWeakLayoutObserver;
  v5 = [(OBScrollViewWeakLayoutObserver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_selfReference, v5);
    objc_storeWeak(&v6->_weakLayoutObserver, v4);
  }

  return v6;
}

- (void)_scrollViewDidLayoutSubviews:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_weakLayoutObserver);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _scrollViewDidLayoutSubviews:v6];
  }
}

@end