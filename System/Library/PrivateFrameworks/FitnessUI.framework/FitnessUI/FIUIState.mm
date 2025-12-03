@interface FIUIState
+ (id)stateWithLabel:(id)label;
+ (id)transitionalStateFromState:(id)state toState:(id)toState entryEvent:(int64_t)event exitEvent:(int64_t)exitEvent;
- (FIUIState)entryState;
- (FIUIState)initWithLabel:(id)label;
- (FIUIState)parentState;
- (id)description;
- (id)transitionForEvent:(int64_t)event;
- (void)addChildStates:(id)states withEntryState:(id)state;
- (void)enumerateEvents:(id)events;
- (void)registerTransition:(int64_t)transition label:(id)label toState:(id)state handler:(id)handler gate:(id)gate;
@end

@implementation FIUIState

- (id)description
{
  v6.receiver = self;
  v6.super_class = FIUIState;
  v3 = [(FIUIState *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@"(%@)", self->_label];

  return v4;
}

+ (id)transitionalStateFromState:(id)state toState:(id)toState entryEvent:(int64_t)event exitEvent:(int64_t)exitEvent
{
  v9 = MEMORY[0x1E696AEC0];
  toStateCopy = toState;
  stateCopy = state;
  label = [stateCopy label];
  v13 = [v9 stringWithFormat:@"Entry.%@", label];

  v14 = MEMORY[0x1E696AEC0];
  label2 = [stateCopy label];
  v16 = [v14 stringWithFormat:@"Exit.%@", label2];

  v17 = [FIUIState alloc];
  v18 = MEMORY[0x1E696AEC0];
  label3 = [stateCopy label];
  label4 = [toStateCopy label];
  v21 = [v18 stringWithFormat:@"Transitional.%@.%@", label3, label4];
  v22 = [(FIUIState *)v17 initWithLabel:v21];

  [stateCopy registerTransition:event label:v13 toState:v22 handler:0 gate:0];
  [(FIUIState *)v22 registerTransition:exitEvent label:v16 toState:toStateCopy handler:0 gate:0];

  [(FIUIState *)v22 setTransitional:1];

  return v22;
}

- (FIUIState)initWithLabel:(id)label
{
  labelCopy = label;
  v13.receiver = self;
  v13.super_class = FIUIState;
  v6 = [(FIUIState *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_label, label);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    transitions = v7->_transitions;
    v7->_transitions = dictionary;

    objc_storeWeak(&v7->_parentState, 0);
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    childStates = v7->_childStates;
    v7->_childStates = v10;

    objc_storeWeak(&v7->_entryState, 0);
  }

  return v7;
}

+ (id)stateWithLabel:(id)label
{
  labelCopy = label;
  v4 = [objc_alloc(objc_opt_class()) initWithLabel:labelCopy];

  return v4;
}

- (void)registerTransition:(int64_t)transition label:(id)label toState:(id)state handler:(id)handler gate:(id)gate
{
  labelCopy = label;
  stateCopy = state;
  handlerCopy = handler;
  gateCopy = gate;
  v15 = self->_transitions;
  objc_sync_enter(v15);
  if (stateCopy)
  {
    v16 = objc_opt_new();
    [v16 setToState:stateCopy];
    [v16 setHandler:handlerCopy];
    [v16 setGate:gateCopy];
    [v16 setEvent:transition];
    [v16 setLabel:labelCopy];
    transitions = self->_transitions;
    v18 = [MEMORY[0x1E696AD98] numberWithLong:transition];
    [(NSMutableDictionary *)transitions setObject:v16 forKey:v18];
  }

  else
  {
    v19 = self->_transitions;
    v16 = [MEMORY[0x1E696AD98] numberWithLong:transition];
    [(NSMutableDictionary *)v19 removeObjectForKey:v16];
  }

  objc_sync_exit(v15);
}

- (void)enumerateEvents:(id)events
{
  v24 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  v5 = self->_transitions;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_transitions copy];
  objc_sync_exit(v5);

  v22 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = v6;
  allValues = [v6 allValues];
  v8 = [allValues countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v8)
  {
    v9 = *v19;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(allValues);
      }

      v11 = *(*(&v18 + 1) + 8 * v10);
      event = [v11 event];
      label = [v11 label];
      v14 = label;
      uTF8String = [label UTF8String];
      toState = [v11 toState];
      eventsCopy[2](eventsCopy, event, uTF8String, toState, &v22);

      if (v22)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [allValues countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)transitionForEvent:(int64_t)event
{
  v5 = self->_transitions;
  objc_sync_enter(v5);
  transitions = self->_transitions;
  v7 = [MEMORY[0x1E696AD98] numberWithLong:event];
  v8 = [(NSMutableDictionary *)transitions objectForKeyedSubscript:v7];

  objc_sync_exit(v5);

  return v8;
}

- (void)addChildStates:(id)states withEntryState:(id)state
{
  v19 = *MEMORY[0x1E69E9840];
  statesCopy = states;
  stateCopy = state;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [statesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(statesCopy);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        [v12 setParentState:self];
        childStates = [(FIUIState *)self childStates];
        [childStates addObject:v12];
      }

      v9 = [statesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(FIUIState *)self setEntryState:stateCopy];
}

- (FIUIState)parentState
{
  WeakRetained = objc_loadWeakRetained(&self->_parentState);

  return WeakRetained;
}

- (FIUIState)entryState
{
  WeakRetained = objc_loadWeakRetained(&self->_entryState);

  return WeakRetained;
}

@end