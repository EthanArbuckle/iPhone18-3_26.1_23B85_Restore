@interface _CNObservableSkipUntilOperator
- (BOOL)shouldMirrorEvents;
- (NSString)description;
- (_CNObservableSkipUntilOperator)initWithInput:(id)input signal:(id)signal;
- (id)subscribe:(id)subscribe;
- (void)cancel;
- (void)inputDidTerminate;
- (void)signalDidGenerateEvent;
@end

@implementation _CNObservableSkipUntilOperator

- (_CNObservableSkipUntilOperator)initWithInput:(id)input signal:(id)signal
{
  inputCopy = input;
  signalCopy = signal;
  v13.receiver = self;
  v13.super_class = _CNObservableSkipUntilOperator;
  v9 = [(_CNObservableSkipUntilOperator *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_input, input);
    objc_storeStrong(&v10->_signal, signal);
    v10->_active = 0;
    v11 = v10;
  }

  return v10;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  input = [(_CNObservableSkipUntilOperator *)self input];
  v5 = [v3 appendName:@"input" object:input];

  signal = [(_CNObservableSkipUntilOperator *)self signal];
  v7 = [v3 appendName:@"signal" object:signal];

  v8 = [v3 appendName:@"active" BOOLValue:{-[_CNObservableSkipUntilOperator isActive](self, "isActive")}];
  build = [v3 build];

  return build;
}

- (id)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v5 = [[_CNObservableSkipUntilSignalObserver alloc] initWithDelegate:self];
  signal = [(_CNObservableSkipUntilOperator *)self signal];
  v7 = [signal subscribe:v5];
  [(_CNObservableSkipUntilOperator *)self setSignalToken:v7];

  v8 = [[_CNObservableSkipUntilInputObserver alloc] initWithObserver:subscribeCopy delegate:self];
  input = [(_CNObservableSkipUntilOperator *)self input];
  v10 = [input subscribe:v8];
  [(_CNObservableSkipUntilOperator *)self setInputToken:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44___CNObservableSkipUntilOperator_subscribe___block_invoke;
  v13[3] = &unk_1E6ED5830;
  v13[4] = self;
  v11 = [CNCancelationToken tokenWithCancelationBlock:v13];

  return v11;
}

- (void)cancel
{
  inputToken = [(_CNObservableSkipUntilOperator *)self inputToken];
  [inputToken cancel];

  signalToken = [(_CNObservableSkipUntilOperator *)self signalToken];
  [signalToken cancel];
}

- (BOOL)shouldMirrorEvents
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isActive = [(_CNObservableSkipUntilOperator *)selfCopy isActive];
  objc_sync_exit(selfCopy);

  return isActive;
}

- (void)inputDidTerminate
{
  signalToken = [(_CNObservableSkipUntilOperator *)self signalToken];
  [signalToken cancel];
}

- (void)signalDidGenerateEvent
{
  obj = self;
  objc_sync_enter(obj);
  [(_CNObservableSkipUntilOperator *)obj setActive:1];
  objc_sync_exit(obj);
}

@end