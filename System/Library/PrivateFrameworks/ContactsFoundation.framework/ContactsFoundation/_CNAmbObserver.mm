@interface _CNAmbObserver
- (_CNAmbObserver)initWithObserver:(id)a3 delegate:(id)a4;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)a3;
- (void)observerDidReceiveResult:(id)a3;
@end

@implementation _CNAmbObserver

- (_CNAmbObserver)initWithObserver:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _CNAmbObserver;
  v9 = [(_CNAmbObserver *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_observer, a3);
    objc_storeWeak(&v10->_delegate, v8);
    v11 = v10;
  }

  return v10;
}

- (void)observerDidReceiveResult:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained observerWillRelayEvent:self];

  if (self->_isWinner)
  {
    [(CNObserver *)self->_observer observerDidReceiveResult:v5];
  }
}

- (void)observerDidComplete
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained observerWillRelayEvent:self];

  if (self->_isWinner)
  {
    observer = self->_observer;

    [(CNObserver *)observer observerDidComplete];
  }
}

- (void)observerDidFailWithError:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained observerWillRelayEvent:self];

  if (self->_isWinner)
  {
    [(CNObserver *)self->_observer observerDidFailWithError:v5];
  }
}

@end