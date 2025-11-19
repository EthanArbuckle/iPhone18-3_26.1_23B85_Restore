@interface CSStateMachine
- (CSStateMachine)initWithInitialState:(int64_t)a3;
- (CSStateMachineDelegate)delegate;
- (void)addTransitionFrom:(int64_t)a3 to:(int64_t)a4 for:(int64_t)a5;
- (void)addTransitionFromAnyStateTo:(int64_t)a3 for:(int64_t)a4;
- (void)performTransitionForEvent:(int64_t)a3;
@end

@implementation CSStateMachine

- (CSStateMachineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)performTransitionForEvent:(int64_t)a3
{
  transitions = self->_transitions;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_currentState];
  v21 = [(NSMutableDictionary *)transitions objectForKeyedSubscript:v6];

  if (v21)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v8 = [(NSMutableDictionary *)v21 objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v10 = v21;
LABEL_6:
      v15 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:v9];
      v16 = [v15 integerValue];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (!WeakRetained)
      {
        goto LABEL_11;
      }

      currentState = self->_currentState;
      self->_currentState = v16;
      v19 = objc_loadWeakRetained(&self->_delegate);
      [v19 didTransitFrom:currentState to:self->_currentState by:a3];
      goto LABEL_10;
    }
  }

  eventToStateTransitions = self->_eventToStateTransitions;
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v13 = [(NSMutableDictionary *)eventToStateTransitions objectForKeyedSubscript:v12];

  if (v13)
  {
    v14 = self->_eventToStateTransitions;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v10 = v14;
    goto LABEL_6;
  }

  v20 = objc_loadWeakRetained(&self->_delegate);

  if (!v20)
  {
    goto LABEL_11;
  }

  v19 = objc_loadWeakRetained(&self->_delegate);
  [v19 didIgnoreEvent:a3 from:self->_currentState];
LABEL_10:

LABEL_11:
}

- (void)addTransitionFromAnyStateTo:(int64_t)a3 for:(int64_t)a4
{
  eventToStateTransitions = self->_eventToStateTransitions;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableDictionary *)eventToStateTransitions setObject:v7 forKey:v6];
}

- (void)addTransitionFrom:(int64_t)a3 to:(int64_t)a4 for:(int64_t)a5
{
  transitions = self->_transitions;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v18 = [(NSMutableDictionary *)transitions objectForKeyedSubscript:v10];

  if (!v18)
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
    v12 = self->_transitions;
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:v13];

    v14 = self->_transitions;
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v18 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:v15];
  }

  v16 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  [v18 setObject:v16 forKey:v17];
}

- (CSStateMachine)initWithInitialState:(int64_t)a3
{
  v11.receiver = self;
  v11.super_class = CSStateMachine;
  v4 = [(CSStateMachine *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_currentState = a3;
    v4->_initialState = a3;
    v6 = [MEMORY[0x1E695DF90] dictionary];
    transitions = v5->_transitions;
    v5->_transitions = v6;

    v8 = [MEMORY[0x1E695DF90] dictionary];
    eventToStateTransitions = v5->_eventToStateTransitions;
    v5->_eventToStateTransitions = v8;
  }

  return v5;
}

@end