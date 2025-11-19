@interface _EFGeneratorObservable
- (_EFGeneratorObservable)initWithInitialState:(id)a3 condition:(id)a4 nextState:(id)a5 resultSelector:(id)a6 delay:(id)a7 scheduler:(id)a8;
- (id)subscribe:(id)a3;
- (void)_scheduleNextResultForObserver:(id)a3;
- (void)_updateState;
@end

@implementation _EFGeneratorObservable

- (_EFGeneratorObservable)initWithInitialState:(id)a3 condition:(id)a4 nextState:(id)a5 resultSelector:(id)a6 delay:(id)a7 scheduler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v35.receiver = self;
  v35.super_class = _EFGeneratorObservable;
  v20 = [(_EFGeneratorObservable *)&v35 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_scheduler, a8);
    v22 = objc_alloc_init(EFManualCancelationToken);
    cancelable = v21->_cancelable;
    v21->_cancelable = v22;

    v24 = [v14 copyWithZone:0];
    state = v21->_state;
    v21->_state = v24;

    v26 = _Block_copy(v15);
    condition = v21->_condition;
    v21->_condition = v26;

    v28 = _Block_copy(v16);
    nextStateForState = v21->_nextStateForState;
    v21->_nextStateForState = v28;

    v30 = _Block_copy(v17);
    resultFromState = v21->_resultFromState;
    v21->_resultFromState = v30;

    v32 = _Block_copy(v18);
    delayForState = v21->_delayForState;
    v21->_delayForState = v32;
  }

  return v21;
}

- (id)subscribe:(id)a3
{
  [(_EFGeneratorObservable *)self _scheduleNextResultForObserver:a3];
  v4 = objc_alloc_init(EFManualCancelationToken);
  [(EFManualCancelationToken *)v4 addCancelable:self->_cancelable];

  return v4;
}

- (void)_scheduleNextResultForObserver:(id)a3
{
  v4 = a3;
  if ([(_EFGeneratorObservable *)self _isFinished])
  {
    [v4 observerDidComplete];
  }

  else
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __57___EFGeneratorObservable__scheduleNextResultForObserver___block_invoke;
    v12 = &unk_1E82485D0;
    v13 = self;
    v14 = v4;
    v5 = _Block_copy(&v9);
    delayForState = self->_delayForState;
    scheduler = self->_scheduler;
    if (delayForState)
    {
      delayForState[2](delayForState, self->_state);
      v8 = [(EFScheduler *)scheduler afterDelay:v5 performBlock:v9, v10, v11, v12, v13];
    }

    else
    {
      [(EFScheduler *)self->_scheduler performBlock:v5, v9, v10, v11, v12, v13];
    }
  }
}

- (void)_updateState
{
  state = self->_state;
  v4 = (*(self->_nextStateForState + 2))();
  v5 = self->_state;
  self->_state = v4;
}

@end