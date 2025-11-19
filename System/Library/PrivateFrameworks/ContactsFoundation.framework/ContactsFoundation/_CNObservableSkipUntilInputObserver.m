@interface _CNObservableSkipUntilInputObserver
- (NSString)description;
- (_CNObservableSkipUntilInputObserver)initWithObserver:(id)a3 delegate:(id)a4;
- (_CNObservableSkipUntilInputObserverDelegate)delegate;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)a3;
- (void)observerDidReceiveResult:(id)a3;
@end

@implementation _CNObservableSkipUntilInputObserver

- (_CNObservableSkipUntilInputObserver)initWithObserver:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _CNObservableSkipUntilInputObserver;
  v9 = [(_CNObservableSkipUntilInputObserver *)&v13 init];
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
  v4 = [(_CNObservableSkipUntilInputObserver *)self observer];
  v5 = [v3 appendName:@"observer" object:v4];

  v6 = [(_CNObservableSkipUntilInputObserver *)self delegate];
  v7 = [v3 appendName:@"delegate" object:v6];

  v8 = [v3 build];

  return v8;
}

- (void)observerDidReceiveResult:(id)a3
{
  v7 = a3;
  v4 = [(_CNObservableSkipUntilInputObserver *)self delegate];
  v5 = [v4 shouldMirrorEvents];

  if (v5)
  {
    v6 = [(_CNObservableSkipUntilInputObserver *)self observer];
    [v6 observerDidReceiveResult:v7];
  }
}

- (void)observerDidComplete
{
  v3 = [(_CNObservableSkipUntilInputObserver *)self delegate];
  v4 = [v3 shouldMirrorEvents];

  if (v4)
  {
    v5 = [(_CNObservableSkipUntilInputObserver *)self observer];
    [v5 observerDidComplete];
  }

  else
  {
    v5 = [(_CNObservableSkipUntilInputObserver *)self delegate];
    [v5 inputDidTerminate];
  }
}

- (void)observerDidFailWithError:(id)a3
{
  v7 = a3;
  v4 = [(_CNObservableSkipUntilInputObserver *)self delegate];
  v5 = [v4 shouldMirrorEvents];

  if (v5)
  {
    v6 = [(_CNObservableSkipUntilInputObserver *)self observer];
    [v6 observerDidFailWithError:v7];
  }

  else
  {
    v6 = [(_CNObservableSkipUntilInputObserver *)self delegate];
    [v6 inputDidTerminate];
  }
}

- (_CNObservableSkipUntilInputObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end