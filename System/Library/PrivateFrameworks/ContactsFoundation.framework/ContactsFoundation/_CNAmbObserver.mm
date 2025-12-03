@interface _CNAmbObserver
- (_CNAmbObserver)initWithObserver:(id)observer delegate:(id)delegate;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)error;
- (void)observerDidReceiveResult:(id)result;
@end

@implementation _CNAmbObserver

- (_CNAmbObserver)initWithObserver:(id)observer delegate:(id)delegate
{
  observerCopy = observer;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = _CNAmbObserver;
  v9 = [(_CNAmbObserver *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_observer, observer);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    v11 = v10;
  }

  return v10;
}

- (void)observerDidReceiveResult:(id)result
{
  resultCopy = result;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained observerWillRelayEvent:self];

  if (self->_isWinner)
  {
    [(CNObserver *)self->_observer observerDidReceiveResult:resultCopy];
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

- (void)observerDidFailWithError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained observerWillRelayEvent:self];

  if (self->_isWinner)
  {
    [(CNObserver *)self->_observer observerDidFailWithError:errorCopy];
  }
}

@end