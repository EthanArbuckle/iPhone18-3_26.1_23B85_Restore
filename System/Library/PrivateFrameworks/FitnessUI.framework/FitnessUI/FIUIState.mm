@interface FIUIState
+ (id)stateWithLabel:(id)a3;
+ (id)transitionalStateFromState:(id)a3 toState:(id)a4 entryEvent:(int64_t)a5 exitEvent:(int64_t)a6;
- (FIUIState)entryState;
- (FIUIState)initWithLabel:(id)a3;
- (FIUIState)parentState;
- (id)description;
- (id)transitionForEvent:(int64_t)a3;
- (void)addChildStates:(id)a3 withEntryState:(id)a4;
- (void)enumerateEvents:(id)a3;
- (void)registerTransition:(int64_t)a3 label:(id)a4 toState:(id)a5 handler:(id)a6 gate:(id)a7;
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

+ (id)transitionalStateFromState:(id)a3 toState:(id)a4 entryEvent:(int64_t)a5 exitEvent:(int64_t)a6
{
  v9 = MEMORY[0x1E696AEC0];
  v10 = a4;
  v11 = a3;
  v12 = [v11 label];
  v13 = [v9 stringWithFormat:@"Entry.%@", v12];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [v11 label];
  v16 = [v14 stringWithFormat:@"Exit.%@", v15];

  v17 = [FIUIState alloc];
  v18 = MEMORY[0x1E696AEC0];
  v19 = [v11 label];
  v20 = [v10 label];
  v21 = [v18 stringWithFormat:@"Transitional.%@.%@", v19, v20];
  v22 = [(FIUIState *)v17 initWithLabel:v21];

  [v11 registerTransition:a5 label:v13 toState:v22 handler:0 gate:0];
  [(FIUIState *)v22 registerTransition:a6 label:v16 toState:v10 handler:0 gate:0];

  [(FIUIState *)v22 setTransitional:1];

  return v22;
}

- (FIUIState)initWithLabel:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = FIUIState;
  v6 = [(FIUIState *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_label, a3);
    v8 = [MEMORY[0x1E695DF90] dictionary];
    transitions = v7->_transitions;
    v7->_transitions = v8;

    objc_storeWeak(&v7->_parentState, 0);
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    childStates = v7->_childStates;
    v7->_childStates = v10;

    objc_storeWeak(&v7->_entryState, 0);
  }

  return v7;
}

+ (id)stateWithLabel:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithLabel:v3];

  return v4;
}

- (void)registerTransition:(int64_t)a3 label:(id)a4 toState:(id)a5 handler:(id)a6 gate:(id)a7
{
  v20 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = self->_transitions;
  objc_sync_enter(v15);
  if (v12)
  {
    v16 = objc_opt_new();
    [v16 setToState:v12];
    [v16 setHandler:v13];
    [v16 setGate:v14];
    [v16 setEvent:a3];
    [v16 setLabel:v20];
    transitions = self->_transitions;
    v18 = [MEMORY[0x1E696AD98] numberWithLong:a3];
    [(NSMutableDictionary *)transitions setObject:v16 forKey:v18];
  }

  else
  {
    v19 = self->_transitions;
    v16 = [MEMORY[0x1E696AD98] numberWithLong:a3];
    [(NSMutableDictionary *)v19 removeObjectForKey:v16];
  }

  objc_sync_exit(v15);
}

- (void)enumerateEvents:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v7 = [v6 allValues];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v8)
  {
    v9 = *v19;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v18 + 1) + 8 * v10);
      v12 = [v11 event];
      v13 = [v11 label];
      v14 = v13;
      v15 = [v13 UTF8String];
      v16 = [v11 toState];
      v4[2](v4, v12, v15, v16, &v22);

      if (v22)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)transitionForEvent:(int64_t)a3
{
  v5 = self->_transitions;
  objc_sync_enter(v5);
  transitions = self->_transitions;
  v7 = [MEMORY[0x1E696AD98] numberWithLong:a3];
  v8 = [(NSMutableDictionary *)transitions objectForKeyedSubscript:v7];

  objc_sync_exit(v5);

  return v8;
}

- (void)addChildStates:(id)a3 withEntryState:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        [v12 setParentState:self];
        v13 = [(FIUIState *)self childStates];
        [v13 addObject:v12];
      }

      v9 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(FIUIState *)self setEntryState:v7];
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