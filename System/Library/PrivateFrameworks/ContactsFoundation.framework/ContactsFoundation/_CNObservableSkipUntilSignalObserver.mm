@interface _CNObservableSkipUntilSignalObserver
- (NSString)description;
- (_CNObservableSkipUntilSignalObserver)initWithDelegate:(id)delegate;
- (_CNObservableSkipUntilSignalObserverDelegate)delegate;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)error;
- (void)observerDidReceiveResult:(id)result;
@end

@implementation _CNObservableSkipUntilSignalObserver

- (_CNObservableSkipUntilSignalObserver)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = _CNObservableSkipUntilSignalObserver;
  v5 = [(_CNObservableSkipUntilSignalObserver *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = v6;
  }

  return v6;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  delegate = [(_CNObservableSkipUntilSignalObserver *)self delegate];
  v5 = [v3 appendName:@"delegate" object:delegate];

  build = [v3 build];

  return build;
}

- (void)observerDidReceiveResult:(id)result
{
  delegate = [(_CNObservableSkipUntilSignalObserver *)self delegate];
  [delegate signalDidGenerateEvent];
}

- (void)observerDidComplete
{
  delegate = [(_CNObservableSkipUntilSignalObserver *)self delegate];
  [delegate signalDidGenerateEvent];
}

- (void)observerDidFailWithError:(id)error
{
  delegate = [(_CNObservableSkipUntilSignalObserver *)self delegate];
  [delegate signalDidGenerateEvent];
}

- (_CNObservableSkipUntilSignalObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end