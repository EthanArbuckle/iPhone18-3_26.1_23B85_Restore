@interface _CNObservableTakeUntilOperator
- (BOOL)shouldMirrorEvent:(id)event;
- (NSString)description;
- (_CNObservableTakeUntilOperator)initWithInput:(id)input signal:(id)signal;
- (id)subscribe:(id)subscribe;
- (void)cancel;
- (void)signalDidGenerateEventWithObserver:(id)observer;
@end

@implementation _CNObservableTakeUntilOperator

- (_CNObservableTakeUntilOperator)initWithInput:(id)input signal:(id)signal
{
  inputCopy = input;
  signalCopy = signal;
  v13.receiver = self;
  v13.super_class = _CNObservableTakeUntilOperator;
  v9 = [(_CNObservableTakeUntilOperator *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_input, input);
    objc_storeStrong(&v10->_signal, signal);
    v10->_active = 1;
    v11 = v10;
  }

  return v10;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  input = [(_CNObservableTakeUntilOperator *)self input];
  v5 = [v3 appendName:@"input" object:input];

  signal = [(_CNObservableTakeUntilOperator *)self signal];
  v7 = [v3 appendName:@"signal" object:signal];

  v8 = [v3 appendName:@"active" BOOLValue:{-[_CNObservableTakeUntilOperator isActive](self, "isActive")}];
  build = [v3 build];

  return build;
}

- (id)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v5 = [[_CNObservableTakeUntilSignalObserver alloc] initWithObserver:subscribeCopy delegate:self];
  signal = [(_CNObservableTakeUntilOperator *)self signal];
  v7 = [signal subscribe:v5];
  [(_CNObservableTakeUntilOperator *)self setSignalToken:v7];

  v8 = [[_CNObservableTakeUntilInputObserver alloc] initWithObserver:subscribeCopy delegate:self];
  input = [(_CNObservableTakeUntilOperator *)self input];
  v10 = [input subscribe:v8];
  [(_CNObservableTakeUntilOperator *)self setInputToken:v10];

  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44___CNObservableTakeUntilOperator_subscribe___block_invoke;
  v13[3] = &unk_1E6ED6498;
  objc_copyWeak(&v14, &location);
  v11 = [CNCancelationToken tokenWithCancelationBlock:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v11;
}

- (void)cancel
{
  inputToken = [(_CNObservableTakeUntilOperator *)self inputToken];
  [inputToken cancel];

  signalToken = [(_CNObservableTakeUntilOperator *)self signalToken];
  [signalToken cancel];
}

- (BOOL)shouldMirrorEvent:(id)event
{
  eventCopy = event;
  v5 = [eventCopy eventType] == 1 || objc_msgSend(eventCopy, "eventType") == 2;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isActive = [(_CNObservableTakeUntilOperator *)selfCopy isActive];
  if (v5)
  {
    [(_CNObservableTakeUntilOperator *)selfCopy setActive:0];
  }

  objc_sync_exit(selfCopy);

  if (isActive && v5)
  {
    signalToken = [(_CNObservableTakeUntilOperator *)selfCopy signalToken];
    [signalToken cancel];
  }

  return isActive;
}

- (void)signalDidGenerateEventWithObserver:(id)observer
{
  observerCopy = observer;
  [(_CNObservableTakeUntilOperator *)self cancel];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isActive = [(_CNObservableTakeUntilOperator *)selfCopy isActive];
  [(_CNObservableTakeUntilOperator *)selfCopy setActive:0];
  objc_sync_exit(selfCopy);

  if (isActive)
  {
    [observerCopy observerDidComplete];
  }
}

@end