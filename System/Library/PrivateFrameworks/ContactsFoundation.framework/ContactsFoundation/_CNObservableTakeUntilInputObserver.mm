@interface _CNObservableTakeUntilInputObserver
- (NSString)description;
- (_CNObservableTakeUntilInputObserver)initWithObserver:(id)observer delegate:(id)delegate;
- (_CNObservableTakeUntilInputObserverDelegate)delegate;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)error;
- (void)observerDidReceiveResult:(id)result;
@end

@implementation _CNObservableTakeUntilInputObserver

- (_CNObservableTakeUntilInputObserver)initWithObserver:(id)observer delegate:(id)delegate
{
  observerCopy = observer;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = _CNObservableTakeUntilInputObserver;
  v9 = [(_CNObservableTakeUntilInputObserver *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_observer, observer);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    v11 = v10;
  }

  return v10;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  observer = [(_CNObservableTakeUntilInputObserver *)self observer];
  v5 = [v3 appendName:@"observer" object:observer];

  delegate = [(_CNObservableTakeUntilInputObserver *)self delegate];
  v7 = [v3 appendName:@"delegate" object:delegate];

  build = [v3 build];

  return build;
}

- (void)observerDidReceiveResult:(id)result
{
  resultCopy = result;
  v4 = [CNObservableEvent eventWithResult:?];
  delegate = [(_CNObservableTakeUntilInputObserver *)self delegate];
  v6 = [delegate shouldMirrorEvent:v4];

  if (v6)
  {
    observer = [(_CNObservableTakeUntilInputObserver *)self observer];
    [observer observerDidReceiveResult:resultCopy];
  }
}

- (void)observerDidComplete
{
  v6 = +[CNObservableEvent completionEvent];
  delegate = [(_CNObservableTakeUntilInputObserver *)self delegate];
  v4 = [delegate shouldMirrorEvent:v6];

  if (v4)
  {
    observer = [(_CNObservableTakeUntilInputObserver *)self observer];
    [observer observerDidComplete];
  }
}

- (void)observerDidFailWithError:(id)error
{
  errorCopy = error;
  v4 = [CNObservableEvent failureEventWithError:?];
  delegate = [(_CNObservableTakeUntilInputObserver *)self delegate];
  v6 = [delegate shouldMirrorEvent:v4];

  if (v6)
  {
    observer = [(_CNObservableTakeUntilInputObserver *)self observer];
    [observer observerDidFailWithError:errorCopy];
  }
}

- (_CNObservableTakeUntilInputObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end