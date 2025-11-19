@interface _CNObservableTakeUntilSignalObserver
- (NSString)description;
- (_CNObservableTakeUntilSignalObserver)initWithObserver:(id)a3 delegate:(id)a4;
- (_CNObservableTakeUntilSignalObserverDelegate)delegate;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)a3;
- (void)observerDidReceiveResult:(id)a3;
@end

@implementation _CNObservableTakeUntilSignalObserver

- (_CNObservableTakeUntilSignalObserver)initWithObserver:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _CNObservableTakeUntilSignalObserver;
  v9 = [(_CNObservableTakeUntilSignalObserver *)&v13 init];
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
  v4 = [(_CNObservableTakeUntilSignalObserver *)self observer];
  v5 = [v3 appendName:@"observer" object:v4];

  v6 = [(_CNObservableTakeUntilSignalObserver *)self delegate];
  v7 = [v3 appendName:@"delegate" object:v6];

  v8 = [v3 build];

  return v8;
}

- (void)observerDidReceiveResult:(id)a3
{
  v5 = [(_CNObservableTakeUntilSignalObserver *)self delegate];
  v4 = [(_CNObservableTakeUntilSignalObserver *)self observer];
  [v5 signalDidGenerateEventWithObserver:v4];
}

- (void)observerDidComplete
{
  v4 = [(_CNObservableTakeUntilSignalObserver *)self delegate];
  v3 = [(_CNObservableTakeUntilSignalObserver *)self observer];
  [v4 signalDidGenerateEventWithObserver:v3];
}

- (void)observerDidFailWithError:(id)a3
{
  v5 = [(_CNObservableTakeUntilSignalObserver *)self delegate];
  v4 = [(_CNObservableTakeUntilSignalObserver *)self observer];
  [v5 signalDidGenerateEventWithObserver:v4];
}

- (_CNObservableTakeUntilSignalObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end