@interface _EFGeneratorObservable
- (_EFGeneratorObservable)initWithInitialState:(id)state condition:(id)condition nextState:(id)nextState resultSelector:(id)selector delay:(id)delay scheduler:(id)scheduler;
- (id)subscribe:(id)subscribe;
- (void)_scheduleNextResultForObserver:(id)observer;
- (void)_updateState;
@end

@implementation _EFGeneratorObservable

- (_EFGeneratorObservable)initWithInitialState:(id)state condition:(id)condition nextState:(id)nextState resultSelector:(id)selector delay:(id)delay scheduler:(id)scheduler
{
  stateCopy = state;
  conditionCopy = condition;
  nextStateCopy = nextState;
  selectorCopy = selector;
  delayCopy = delay;
  schedulerCopy = scheduler;
  v35.receiver = self;
  v35.super_class = _EFGeneratorObservable;
  v20 = [(_EFGeneratorObservable *)&v35 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_scheduler, scheduler);
    v22 = objc_alloc_init(EFManualCancelationToken);
    cancelable = v21->_cancelable;
    v21->_cancelable = v22;

    v24 = [stateCopy copyWithZone:0];
    state = v21->_state;
    v21->_state = v24;

    v26 = _Block_copy(conditionCopy);
    condition = v21->_condition;
    v21->_condition = v26;

    v28 = _Block_copy(nextStateCopy);
    nextStateForState = v21->_nextStateForState;
    v21->_nextStateForState = v28;

    v30 = _Block_copy(selectorCopy);
    resultFromState = v21->_resultFromState;
    v21->_resultFromState = v30;

    v32 = _Block_copy(delayCopy);
    delayForState = v21->_delayForState;
    v21->_delayForState = v32;
  }

  return v21;
}

- (id)subscribe:(id)subscribe
{
  [(_EFGeneratorObservable *)self _scheduleNextResultForObserver:subscribe];
  v4 = objc_alloc_init(EFManualCancelationToken);
  [(EFManualCancelationToken *)v4 addCancelable:self->_cancelable];

  return v4;
}

- (void)_scheduleNextResultForObserver:(id)observer
{
  observerCopy = observer;
  if ([(_EFGeneratorObservable *)self _isFinished])
  {
    [observerCopy observerDidComplete];
  }

  else
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __57___EFGeneratorObservable__scheduleNextResultForObserver___block_invoke;
    v12 = &unk_1E82485D0;
    selfCopy = self;
    v14 = observerCopy;
    v5 = _Block_copy(&v9);
    delayForState = self->_delayForState;
    scheduler = self->_scheduler;
    if (delayForState)
    {
      delayForState[2](delayForState, self->_state);
      selfCopy = [(EFScheduler *)scheduler afterDelay:v5 performBlock:v9, v10, v11, v12, selfCopy];
    }

    else
    {
      [(EFScheduler *)self->_scheduler performBlock:v5, v9, v10, v11, v12, selfCopy];
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