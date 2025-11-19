@interface _CNObservableSkipUntilOperator
- (BOOL)shouldMirrorEvents;
- (NSString)description;
- (_CNObservableSkipUntilOperator)initWithInput:(id)a3 signal:(id)a4;
- (id)subscribe:(id)a3;
- (void)cancel;
- (void)inputDidTerminate;
- (void)signalDidGenerateEvent;
@end

@implementation _CNObservableSkipUntilOperator

- (_CNObservableSkipUntilOperator)initWithInput:(id)a3 signal:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _CNObservableSkipUntilOperator;
  v9 = [(_CNObservableSkipUntilOperator *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_input, a3);
    objc_storeStrong(&v10->_signal, a4);
    v10->_active = 0;
    v11 = v10;
  }

  return v10;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [(_CNObservableSkipUntilOperator *)self input];
  v5 = [v3 appendName:@"input" object:v4];

  v6 = [(_CNObservableSkipUntilOperator *)self signal];
  v7 = [v3 appendName:@"signal" object:v6];

  v8 = [v3 appendName:@"active" BOOLValue:{-[_CNObservableSkipUntilOperator isActive](self, "isActive")}];
  v9 = [v3 build];

  return v9;
}

- (id)subscribe:(id)a3
{
  v4 = a3;
  v5 = [[_CNObservableSkipUntilSignalObserver alloc] initWithDelegate:self];
  v6 = [(_CNObservableSkipUntilOperator *)self signal];
  v7 = [v6 subscribe:v5];
  [(_CNObservableSkipUntilOperator *)self setSignalToken:v7];

  v8 = [[_CNObservableSkipUntilInputObserver alloc] initWithObserver:v4 delegate:self];
  v9 = [(_CNObservableSkipUntilOperator *)self input];
  v10 = [v9 subscribe:v8];
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
  v3 = [(_CNObservableSkipUntilOperator *)self inputToken];
  [v3 cancel];

  v4 = [(_CNObservableSkipUntilOperator *)self signalToken];
  [v4 cancel];
}

- (BOOL)shouldMirrorEvents
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(_CNObservableSkipUntilOperator *)v2 isActive];
  objc_sync_exit(v2);

  return v3;
}

- (void)inputDidTerminate
{
  v2 = [(_CNObservableSkipUntilOperator *)self signalToken];
  [v2 cancel];
}

- (void)signalDidGenerateEvent
{
  obj = self;
  objc_sync_enter(obj);
  [(_CNObservableSkipUntilOperator *)obj setActive:1];
  objc_sync_exit(obj);
}

@end