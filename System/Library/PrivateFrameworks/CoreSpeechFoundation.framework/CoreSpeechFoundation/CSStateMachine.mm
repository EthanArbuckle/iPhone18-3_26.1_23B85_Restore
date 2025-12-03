@interface CSStateMachine
- (CSStateMachine)initWithInitialState:(int64_t)state;
- (CSStateMachineDelegate)delegate;
- (void)addTransitionFrom:(int64_t)from to:(int64_t)to for:(int64_t)for;
- (void)addTransitionFromAnyStateTo:(int64_t)to for:(int64_t)for;
- (void)performTransitionForEvent:(int64_t)event;
@end

@implementation CSStateMachine

- (CSStateMachineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)performTransitionForEvent:(int64_t)event
{
  transitions = self->_transitions;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_currentState];
  v21 = [(NSMutableDictionary *)transitions objectForKeyedSubscript:v6];

  if (v21)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:event];
    v8 = [(NSMutableDictionary *)v21 objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:event];
      v10 = v21;
LABEL_6:
      v15 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:v9];
      integerValue = [v15 integerValue];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (!WeakRetained)
      {
        goto LABEL_11;
      }

      currentState = self->_currentState;
      self->_currentState = integerValue;
      v19 = objc_loadWeakRetained(&self->_delegate);
      [v19 didTransitFrom:currentState to:self->_currentState by:event];
      goto LABEL_10;
    }
  }

  eventToStateTransitions = self->_eventToStateTransitions;
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:event];
  v13 = [(NSMutableDictionary *)eventToStateTransitions objectForKeyedSubscript:v12];

  if (v13)
  {
    v14 = self->_eventToStateTransitions;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:event];
    v10 = v14;
    goto LABEL_6;
  }

  v20 = objc_loadWeakRetained(&self->_delegate);

  if (!v20)
  {
    goto LABEL_11;
  }

  v19 = objc_loadWeakRetained(&self->_delegate);
  [v19 didIgnoreEvent:event from:self->_currentState];
LABEL_10:

LABEL_11:
}

- (void)addTransitionFromAnyStateTo:(int64_t)to for:(int64_t)for
{
  eventToStateTransitions = self->_eventToStateTransitions;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:to];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:for];
  [(NSMutableDictionary *)eventToStateTransitions setObject:v7 forKey:v6];
}

- (void)addTransitionFrom:(int64_t)from to:(int64_t)to for:(int64_t)for
{
  transitions = self->_transitions;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v18 = [(NSMutableDictionary *)transitions objectForKeyedSubscript:v10];

  if (!v18)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v12 = self->_transitions;
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:from];
    [(NSMutableDictionary *)v12 setObject:dictionary forKeyedSubscript:v13];

    v14 = self->_transitions;
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:from];
    v18 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:v15];
  }

  v16 = [MEMORY[0x1E696AD98] numberWithInteger:to];
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:for];
  [v18 setObject:v16 forKey:v17];
}

- (CSStateMachine)initWithInitialState:(int64_t)state
{
  v11.receiver = self;
  v11.super_class = CSStateMachine;
  v4 = [(CSStateMachine *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_currentState = state;
    v4->_initialState = state;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    transitions = v5->_transitions;
    v5->_transitions = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    eventToStateTransitions = v5->_eventToStateTransitions;
    v5->_eventToStateTransitions = dictionary2;
  }

  return v5;
}

@end