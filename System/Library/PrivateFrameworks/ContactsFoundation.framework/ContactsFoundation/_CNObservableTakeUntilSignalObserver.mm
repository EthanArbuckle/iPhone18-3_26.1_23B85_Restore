@interface _CNObservableTakeUntilSignalObserver
- (NSString)description;
- (_CNObservableTakeUntilSignalObserver)initWithObserver:(id)observer delegate:(id)delegate;
- (_CNObservableTakeUntilSignalObserverDelegate)delegate;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)error;
- (void)observerDidReceiveResult:(id)result;
@end

@implementation _CNObservableTakeUntilSignalObserver

- (_CNObservableTakeUntilSignalObserver)initWithObserver:(id)observer delegate:(id)delegate
{
  observerCopy = observer;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = _CNObservableTakeUntilSignalObserver;
  v9 = [(_CNObservableTakeUntilSignalObserver *)&v13 init];
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
  observer = [(_CNObservableTakeUntilSignalObserver *)self observer];
  v5 = [v3 appendName:@"observer" object:observer];

  delegate = [(_CNObservableTakeUntilSignalObserver *)self delegate];
  v7 = [v3 appendName:@"delegate" object:delegate];

  build = [v3 build];

  return build;
}

- (void)observerDidReceiveResult:(id)result
{
  delegate = [(_CNObservableTakeUntilSignalObserver *)self delegate];
  observer = [(_CNObservableTakeUntilSignalObserver *)self observer];
  [delegate signalDidGenerateEventWithObserver:observer];
}

- (void)observerDidComplete
{
  delegate = [(_CNObservableTakeUntilSignalObserver *)self delegate];
  observer = [(_CNObservableTakeUntilSignalObserver *)self observer];
  [delegate signalDidGenerateEventWithObserver:observer];
}

- (void)observerDidFailWithError:(id)error
{
  delegate = [(_CNObservableTakeUntilSignalObserver *)self delegate];
  observer = [(_CNObservableTakeUntilSignalObserver *)self observer];
  [delegate signalDidGenerateEventWithObserver:observer];
}

- (_CNObservableTakeUntilSignalObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end