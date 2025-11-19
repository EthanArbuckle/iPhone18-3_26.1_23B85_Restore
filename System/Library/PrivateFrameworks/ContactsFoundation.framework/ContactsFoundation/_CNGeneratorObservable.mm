@interface _CNGeneratorObservable
- (_CNGeneratorObservable)initWithInitialState:(id)a3 condition:(id)a4 nextState:(id)a5 resultSelector:(id)a6 delay:(id)a7 scheduler:(id)a8;
- (id)subscribe:(id)a3;
- (void)scheduleNextResultForObserver:(id)a3;
- (void)sendCurrentStateToObserver:(id)a3;
- (void)sendResultsToObserver:(id)a3;
- (void)updateState;
@end

@implementation _CNGeneratorObservable

- (void)updateState
{
  state = self->_state;
  v4 = (*(self->_nextState + 2))();
  v5 = self->_state;
  self->_state = v4;

  MEMORY[0x1EEE66BB8]();
}

- (_CNGeneratorObservable)initWithInitialState:(id)a3 condition:(id)a4 nextState:(id)a5 resultSelector:(id)a6 delay:(id)a7 scheduler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v35.receiver = self;
  v35.super_class = _CNGeneratorObservable;
  v20 = [(_CNGeneratorObservable *)&v35 init];
  if (v20)
  {
    v21 = [v14 copy];
    state = v20->_state;
    v20->_state = v21;

    v23 = [v15 copy];
    condition = v20->_condition;
    v20->_condition = v23;

    v25 = [v16 copy];
    nextState = v20->_nextState;
    v20->_nextState = v25;

    v27 = [v17 copy];
    resultSelector = v20->_resultSelector;
    v20->_resultSelector = v27;

    v29 = [v18 copy];
    delay = v20->_delay;
    v20->_delay = v29;

    objc_storeStrong(&v20->_scheduler, a8);
    v31 = objc_alloc_init(_CNGeneratorObservableCancelationToken);
    cancelable = v20->_cancelable;
    v20->_cancelable = &v31->super;

    v33 = v20;
  }

  return v20;
}

- (id)subscribe:(id)a3
{
  if (self->_delay)
  {
    [(_CNGeneratorObservable *)self scheduleNextResultForObserver:a3];
  }

  else
  {
    [(_CNGeneratorObservable *)self sendResultsToObserver:a3];
  }

  cancelable = self->_cancelable;

  return [CNCancelationToken tokenWrappingCancelable:cancelable];
}

- (void)sendResultsToObserver:(id)a3
{
  v4 = a3;
  scheduler = self->_scheduler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48___CNGeneratorObservable_sendResultsToObserver___block_invoke;
  v7[3] = &unk_1E6ED5168;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(CNScheduler *)scheduler performBlock:v7];
}

- (void)scheduleNextResultForObserver:(id)a3
{
  v4 = a3;
  if (![(_CNGeneratorObservable *)self isCanceled])
  {
    if ([(_CNGeneratorObservable *)self isFinished])
    {
      [v4 observerDidComplete];
    }

    else
    {
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __56___CNGeneratorObservable_scheduleNextResultForObserver___block_invoke;
      v14 = &unk_1E6ED5168;
      v15 = self;
      v16 = v4;
      v5 = _Block_copy(&v11);
      scheduler = self->_scheduler;
      (*(self->_delay + 2))(self->_delay, self->_state, v7, v8, v9);
      v10 = [(CNScheduler *)scheduler afterDelay:v5 performBlock:v11, v12, v13, v14, v15];
    }
  }
}

- (void)sendCurrentStateToObserver:(id)a3
{
  resultSelector = self->_resultSelector;
  state = self->_state;
  v5 = resultSelector[2];
  v6 = a3;
  v7 = v5(resultSelector, state);
  [v6 observerDidReceiveResult:v7];
}

@end