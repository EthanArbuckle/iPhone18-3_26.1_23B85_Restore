@interface _CNObservableSkipUntilSignalObserver
- (NSString)description;
- (_CNObservableSkipUntilSignalObserver)initWithDelegate:(id)a3;
- (_CNObservableSkipUntilSignalObserverDelegate)delegate;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)a3;
- (void)observerDidReceiveResult:(id)a3;
@end

@implementation _CNObservableSkipUntilSignalObserver

- (_CNObservableSkipUntilSignalObserver)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _CNObservableSkipUntilSignalObserver;
  v5 = [(_CNObservableSkipUntilSignalObserver *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = v6;
  }

  return v6;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [(_CNObservableSkipUntilSignalObserver *)self delegate];
  v5 = [v3 appendName:@"delegate" object:v4];

  v6 = [v3 build];

  return v6;
}

- (void)observerDidReceiveResult:(id)a3
{
  v3 = [(_CNObservableSkipUntilSignalObserver *)self delegate];
  [v3 signalDidGenerateEvent];
}

- (void)observerDidComplete
{
  v2 = [(_CNObservableSkipUntilSignalObserver *)self delegate];
  [v2 signalDidGenerateEvent];
}

- (void)observerDidFailWithError:(id)a3
{
  v3 = [(_CNObservableSkipUntilSignalObserver *)self delegate];
  [v3 signalDidGenerateEvent];
}

- (_CNObservableSkipUntilSignalObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end