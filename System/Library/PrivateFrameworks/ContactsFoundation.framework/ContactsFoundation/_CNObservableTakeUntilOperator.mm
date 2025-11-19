@interface _CNObservableTakeUntilOperator
- (BOOL)shouldMirrorEvent:(id)a3;
- (NSString)description;
- (_CNObservableTakeUntilOperator)initWithInput:(id)a3 signal:(id)a4;
- (id)subscribe:(id)a3;
- (void)cancel;
- (void)signalDidGenerateEventWithObserver:(id)a3;
@end

@implementation _CNObservableTakeUntilOperator

- (_CNObservableTakeUntilOperator)initWithInput:(id)a3 signal:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _CNObservableTakeUntilOperator;
  v9 = [(_CNObservableTakeUntilOperator *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_input, a3);
    objc_storeStrong(&v10->_signal, a4);
    v10->_active = 1;
    v11 = v10;
  }

  return v10;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [(_CNObservableTakeUntilOperator *)self input];
  v5 = [v3 appendName:@"input" object:v4];

  v6 = [(_CNObservableTakeUntilOperator *)self signal];
  v7 = [v3 appendName:@"signal" object:v6];

  v8 = [v3 appendName:@"active" BOOLValue:{-[_CNObservableTakeUntilOperator isActive](self, "isActive")}];
  v9 = [v3 build];

  return v9;
}

- (id)subscribe:(id)a3
{
  v4 = a3;
  v5 = [[_CNObservableTakeUntilSignalObserver alloc] initWithObserver:v4 delegate:self];
  v6 = [(_CNObservableTakeUntilOperator *)self signal];
  v7 = [v6 subscribe:v5];
  [(_CNObservableTakeUntilOperator *)self setSignalToken:v7];

  v8 = [[_CNObservableTakeUntilInputObserver alloc] initWithObserver:v4 delegate:self];
  v9 = [(_CNObservableTakeUntilOperator *)self input];
  v10 = [v9 subscribe:v8];
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
  v3 = [(_CNObservableTakeUntilOperator *)self inputToken];
  [v3 cancel];

  v4 = [(_CNObservableTakeUntilOperator *)self signalToken];
  [v4 cancel];
}

- (BOOL)shouldMirrorEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 eventType] == 1 || objc_msgSend(v4, "eventType") == 2;
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(_CNObservableTakeUntilOperator *)v6 isActive];
  if (v5)
  {
    [(_CNObservableTakeUntilOperator *)v6 setActive:0];
  }

  objc_sync_exit(v6);

  if (v7 && v5)
  {
    v8 = [(_CNObservableTakeUntilOperator *)v6 signalToken];
    [v8 cancel];
  }

  return v7;
}

- (void)signalDidGenerateEventWithObserver:(id)a3
{
  v6 = a3;
  [(_CNObservableTakeUntilOperator *)self cancel];
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(_CNObservableTakeUntilOperator *)v4 isActive];
  [(_CNObservableTakeUntilOperator *)v4 setActive:0];
  objc_sync_exit(v4);

  if (v5)
  {
    [v6 observerDidComplete];
  }
}

@end