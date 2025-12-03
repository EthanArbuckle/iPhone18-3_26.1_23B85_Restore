@interface _CNObservableSkipUntilInputObserver
- (NSString)description;
- (_CNObservableSkipUntilInputObserver)initWithObserver:(id)observer delegate:(id)delegate;
- (_CNObservableSkipUntilInputObserverDelegate)delegate;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)error;
- (void)observerDidReceiveResult:(id)result;
@end

@implementation _CNObservableSkipUntilInputObserver

- (_CNObservableSkipUntilInputObserver)initWithObserver:(id)observer delegate:(id)delegate
{
  observerCopy = observer;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = _CNObservableSkipUntilInputObserver;
  v9 = [(_CNObservableSkipUntilInputObserver *)&v13 init];
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
  observer = [(_CNObservableSkipUntilInputObserver *)self observer];
  v5 = [v3 appendName:@"observer" object:observer];

  delegate = [(_CNObservableSkipUntilInputObserver *)self delegate];
  v7 = [v3 appendName:@"delegate" object:delegate];

  build = [v3 build];

  return build;
}

- (void)observerDidReceiveResult:(id)result
{
  resultCopy = result;
  delegate = [(_CNObservableSkipUntilInputObserver *)self delegate];
  shouldMirrorEvents = [delegate shouldMirrorEvents];

  if (shouldMirrorEvents)
  {
    observer = [(_CNObservableSkipUntilInputObserver *)self observer];
    [observer observerDidReceiveResult:resultCopy];
  }
}

- (void)observerDidComplete
{
  delegate = [(_CNObservableSkipUntilInputObserver *)self delegate];
  shouldMirrorEvents = [delegate shouldMirrorEvents];

  if (shouldMirrorEvents)
  {
    observer = [(_CNObservableSkipUntilInputObserver *)self observer];
    [observer observerDidComplete];
  }

  else
  {
    observer = [(_CNObservableSkipUntilInputObserver *)self delegate];
    [observer inputDidTerminate];
  }
}

- (void)observerDidFailWithError:(id)error
{
  errorCopy = error;
  delegate = [(_CNObservableSkipUntilInputObserver *)self delegate];
  shouldMirrorEvents = [delegate shouldMirrorEvents];

  if (shouldMirrorEvents)
  {
    observer = [(_CNObservableSkipUntilInputObserver *)self observer];
    [observer observerDidFailWithError:errorCopy];
  }

  else
  {
    observer = [(_CNObservableSkipUntilInputObserver *)self delegate];
    [observer inputDidTerminate];
  }
}

- (_CNObservableSkipUntilInputObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end