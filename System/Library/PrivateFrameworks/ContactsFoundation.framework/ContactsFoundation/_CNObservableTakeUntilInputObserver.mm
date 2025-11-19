@interface _CNObservableTakeUntilInputObserver
- (NSString)description;
- (_CNObservableTakeUntilInputObserver)initWithObserver:(id)a3 delegate:(id)a4;
- (_CNObservableTakeUntilInputObserverDelegate)delegate;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)a3;
- (void)observerDidReceiveResult:(id)a3;
@end

@implementation _CNObservableTakeUntilInputObserver

- (_CNObservableTakeUntilInputObserver)initWithObserver:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _CNObservableTakeUntilInputObserver;
  v9 = [(_CNObservableTakeUntilInputObserver *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_observer, a3);
    objc_storeWeak(&v10->_delegate, v8);
    v11 = v10;
  }

  return v10;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [(_CNObservableTakeUntilInputObserver *)self observer];
  v5 = [v3 appendName:@"observer" object:v4];

  v6 = [(_CNObservableTakeUntilInputObserver *)self delegate];
  v7 = [v3 appendName:@"delegate" object:v6];

  v8 = [v3 build];

  return v8;
}

- (void)observerDidReceiveResult:(id)a3
{
  v8 = a3;
  v4 = [CNObservableEvent eventWithResult:?];
  v5 = [(_CNObservableTakeUntilInputObserver *)self delegate];
  v6 = [v5 shouldMirrorEvent:v4];

  if (v6)
  {
    v7 = [(_CNObservableTakeUntilInputObserver *)self observer];
    [v7 observerDidReceiveResult:v8];
  }
}

- (void)observerDidComplete
{
  v6 = +[CNObservableEvent completionEvent];
  v3 = [(_CNObservableTakeUntilInputObserver *)self delegate];
  v4 = [v3 shouldMirrorEvent:v6];

  if (v4)
  {
    v5 = [(_CNObservableTakeUntilInputObserver *)self observer];
    [v5 observerDidComplete];
  }
}

- (void)observerDidFailWithError:(id)a3
{
  v8 = a3;
  v4 = [CNObservableEvent failureEventWithError:?];
  v5 = [(_CNObservableTakeUntilInputObserver *)self delegate];
  v6 = [v5 shouldMirrorEvent:v4];

  if (v6)
  {
    v7 = [(_CNObservableTakeUntilInputObserver *)self observer];
    [v7 observerDidFailWithError:v8];
  }
}

- (_CNObservableTakeUntilInputObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end