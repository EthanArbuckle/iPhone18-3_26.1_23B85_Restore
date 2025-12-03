@interface _CNGeneratorObservable
- (_CNGeneratorObservable)initWithInitialState:(id)state condition:(id)condition nextState:(id)nextState resultSelector:(id)selector delay:(id)delay scheduler:(id)scheduler;
- (id)subscribe:(id)subscribe;
- (void)scheduleNextResultForObserver:(id)observer;
- (void)sendCurrentStateToObserver:(id)observer;
- (void)sendResultsToObserver:(id)observer;
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

- (_CNGeneratorObservable)initWithInitialState:(id)state condition:(id)condition nextState:(id)nextState resultSelector:(id)selector delay:(id)delay scheduler:(id)scheduler
{
  stateCopy = state;
  conditionCopy = condition;
  nextStateCopy = nextState;
  selectorCopy = selector;
  delayCopy = delay;
  schedulerCopy = scheduler;
  v35.receiver = self;
  v35.super_class = _CNGeneratorObservable;
  v20 = [(_CNGeneratorObservable *)&v35 init];
  if (v20)
  {
    v21 = [stateCopy copy];
    state = v20->_state;
    v20->_state = v21;

    v23 = [conditionCopy copy];
    condition = v20->_condition;
    v20->_condition = v23;

    v25 = [nextStateCopy copy];
    nextState = v20->_nextState;
    v20->_nextState = v25;

    v27 = [selectorCopy copy];
    resultSelector = v20->_resultSelector;
    v20->_resultSelector = v27;

    v29 = [delayCopy copy];
    delay = v20->_delay;
    v20->_delay = v29;

    objc_storeStrong(&v20->_scheduler, scheduler);
    v31 = objc_alloc_init(_CNGeneratorObservableCancelationToken);
    cancelable = v20->_cancelable;
    v20->_cancelable = &v31->super;

    v33 = v20;
  }

  return v20;
}

- (id)subscribe:(id)subscribe
{
  if (self->_delay)
  {
    [(_CNGeneratorObservable *)self scheduleNextResultForObserver:subscribe];
  }

  else
  {
    [(_CNGeneratorObservable *)self sendResultsToObserver:subscribe];
  }

  cancelable = self->_cancelable;

  return [CNCancelationToken tokenWrappingCancelable:cancelable];
}

- (void)sendResultsToObserver:(id)observer
{
  observerCopy = observer;
  scheduler = self->_scheduler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48___CNGeneratorObservable_sendResultsToObserver___block_invoke;
  v7[3] = &unk_1E6ED5168;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  [(CNScheduler *)scheduler performBlock:v7];
}

- (void)scheduleNextResultForObserver:(id)observer
{
  observerCopy = observer;
  if (![(_CNGeneratorObservable *)self isCanceled])
  {
    if ([(_CNGeneratorObservable *)self isFinished])
    {
      [observerCopy observerDidComplete];
    }

    else
    {
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __56___CNGeneratorObservable_scheduleNextResultForObserver___block_invoke;
      v14 = &unk_1E6ED5168;
      selfCopy = self;
      v16 = observerCopy;
      v5 = _Block_copy(&v11);
      scheduler = self->_scheduler;
      (*(self->_delay + 2))(self->_delay, self->_state, v7, v8, v9);
      selfCopy = [(CNScheduler *)scheduler afterDelay:v5 performBlock:v11, v12, v13, v14, selfCopy];
    }
  }
}

- (void)sendCurrentStateToObserver:(id)observer
{
  resultSelector = self->_resultSelector;
  state = self->_state;
  v5 = resultSelector[2];
  observerCopy = observer;
  v7 = v5(resultSelector, state);
  [observerCopy observerDidReceiveResult:v7];
}

@end