@interface MapsSuggestionsActionCircuit
- (MapsSuggestionsActionCircuit)initWithTriggers:(id)a3 conditions:(id)a4 type:(unint64_t)a5 action:(id)a6;
- (NSString)description;
- (Queue)dispatchQueue;
- (id).cxx_construct;
- (id)objectForJSON;
- (uint64_t)_q_passedAllConditions;
- (void)_q_passedAllConditions;
- (void)_q_sendStateForStep:(uint64_t)a1;
- (void)_q_startRunBecauseOfTrigger:(uint64_t)a1;
- (void)_q_triggerFired:(uint64_t)a1;
- (void)addCondition:(id)a3;
- (void)addTrigger:(id)a3;
- (void)dealloc;
- (void)removeCondition:(id)a3;
- (void)removeTrigger:(id)a3;
- (void)triggerFired:(id)a3;
@end

@implementation MapsSuggestionsActionCircuit

- (MapsSuggestionsActionCircuit)initWithTriggers:(id)a3 conditions:(id)a4 type:(unint64_t)a5 action:(id)a6
{
  v66 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!v12)
  {
    v48 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsActionCircuit.mm";
      *&location[12] = 1024;
      *&location[14] = 99;
      v62 = 2082;
      v63 = "[MapsSuggestionsActionCircuit initWithTriggers:conditions:type:action:]";
      v64 = 2082;
      v65 = "nil == (action)";
      _os_log_impl(&dword_1C5126000, v48, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an action", location, 0x26u);
    }

    goto LABEL_24;
  }

  if (!v10)
  {
    v48 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsActionCircuit.mm";
      *&location[12] = 1024;
      *&location[14] = 100;
      v62 = 2082;
      v63 = "[MapsSuggestionsActionCircuit initWithTriggers:conditions:type:action:]";
      v64 = 2082;
      v65 = "nil == (triggers)";
      _os_log_impl(&dword_1C5126000, v48, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one or more triggers", location, 0x26u);
    }

    goto LABEL_24;
  }

  if (!v11)
  {
    v48 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsActionCircuit.mm";
      *&location[12] = 1024;
      *&location[14] = 101;
      v62 = 2082;
      v63 = "[MapsSuggestionsActionCircuit initWithTriggers:conditions:type:action:]";
      v64 = 2082;
      v65 = "nil == (conditions)";
      _os_log_impl(&dword_1C5126000, v48, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one or more Conditions", location, 0x26u);
    }

LABEL_24:

    v47 = 0;
    goto LABEL_25;
  }

  v59.receiver = self;
  v59.super_class = MapsSuggestionsActionCircuit;
  v13 = [(MapsSuggestionsActionCircuit *)&v59 init];
  v14 = v13;
  if (v13)
  {
    *&v13->_anon_30[16] = a5;
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    v16 = [v12 uniqueName];
    v17 = [v15 initWithFormat:@"MapsSuggestionsActionCircuitQueue{%@}", v16];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    MSg::Queue::Queue(location, v17, v18);
    v19 = *location;
    *location = 0;
    innerQueue = v14->_queue._innerQueue;
    v14->_queue._innerQueue = v19;

    v21 = *&location[8];
    *&location[8] = 0;
    name = v14->_queue._name;
    v14->_queue._name = v21;

    v23 = objc_alloc(MEMORY[0x1E696AEC0]);
    v50 = [v12 uniqueName];
    v51 = [v23 initWithFormat:@"MapsSuggestionsActionCircuit{%@}", v50];
    v24 = [MapsSuggestionsObservers alloc];
    v52 = v14->_queue._innerQueue;
    v25 = objc_alloc(MEMORY[0x1E696AEC0]);
    v26 = [v12 uniqueName];
    v27 = [v25 initWithFormat:@"MapsSuggestionsActionCircuitObservers{%@}", v26];
    v28 = [(MapsSuggestionsObservers *)v24 initWithCallbackQueue:v52 name:v27];
    v29 = v12;
    v30 = [v10 copy];
    v31 = [v11 copy];
    circuits = v14->_config.circuits;
    v14->_config.circuits = v51;

    triggers = v14->_config.triggers;
    v14->_config.triggers = v28;

    conditions = v14->_config.conditions;
    v14->_config.conditions = v29;

    v35 = *v14->_anon_30;
    *v14->_anon_30 = v30;

    v36 = *&v14->_anon_30[8];
    *&v14->_anon_30[8] = v31;

    *&v14->_anon_30[16] = 0;
    firedTriggerName = v14->_state.firedTriggerName;
    v14->_state.firedTriggerName = 0;

    failedConditionName = v14->_state.failedConditionName;
    v14->_state.failedConditionName = 0;

    lastError = v14->_state.lastError;
    v14->_state.lastError = 0;

    v14->_state.active = 0;
    if (*&v14->_anon_30[16] == 2)
    {
      objc_initWeak(location, v14);
      v40 = v14->_queue._innerQueue;
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __72__MapsSuggestionsActionCircuit_initWithTriggers_conditions_type_action___block_invoke;
      v57[3] = &unk_1E81F74F8;
      objc_copyWeak(&v58, location);
      v41 = v40;
      v42 = [[MapsSuggestionsBlockCondition alloc] initWithName:@"MapsSuggestionsDroppingCircuit" queue:v41 block:v57];

      [(MapsSuggestionsActionCircuit *)v14 addCondition:v42];
      objc_destroyWeak(&v58);
      objc_destroyWeak(location);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v43 = *v14->_anon_30;
    v44 = [v43 countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v44)
    {
      v45 = *v54;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v54 != v45)
          {
            objc_enumerationMutation(v43);
          }

          [*(*(&v53 + 1) + 8 * i) registerObserver:v14];
        }

        v44 = [v43 countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v44);
    }
  }

  self = v14;
  v47 = self;
LABEL_25:

  return v47;
}

uint64_t __72__MapsSuggestionsActionCircuit_initWithTriggers_conditions_type_action___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 96) ^ 1;
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsActionCircuit.mm";
      v8 = 1026;
      v9 = 119;
      v10 = 2082;
      v11 = "[MapsSuggestionsActionCircuit initWithTriggers:conditions:type:action:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }

    v3 = 0;
  }

  return v3 & 1;
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *self->_anon_30;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v6++) unregisterObserver:self];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7.receiver = self;
  v7.super_class = MapsSuggestionsActionCircuit;
  [(MapsSuggestionsActionCircuit *)&v7 dealloc];
}

- (void)addTrigger:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(MapsSuggestionsActionCircuit *)self uniqueName];
    v7 = [v4 uniqueName];
    *buf = 138412802;
    v12 = v6;
    v13 = 2080;
    v14 = "[MapsSuggestionsActionCircuit addTrigger:]";
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{%@} %s %@", buf, 0x20u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__MapsSuggestionsActionCircuit_addTrigger___block_invoke;
  v9[3] = &unk_1E81F7520;
  v8 = v4;
  v10 = v8;
  MSg::Queue::async<MapsSuggestionsActionCircuit>(&self->_queue, self, v9);
}

void __43__MapsSuggestionsActionCircuit_addTrigger___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5[6] arrayByAddingObject:*(a1 + 32)];
  v4 = v5[6];
  v5[6] = v3;

  [*(a1 + 32) registerObserver:v5];
}

- (void)addCondition:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(MapsSuggestionsActionCircuit *)self uniqueName];
    v7 = [v4 uniqueName];
    *buf = 138412802;
    v12 = v6;
    v13 = 2080;
    v14 = "[MapsSuggestionsActionCircuit addCondition:]";
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{%@} %s %@", buf, 0x20u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__MapsSuggestionsActionCircuit_addCondition___block_invoke;
  v9[3] = &unk_1E81F7520;
  v8 = v4;
  v10 = v8;
  MSg::Queue::async<MapsSuggestionsActionCircuit>(&self->_queue, self, v9);
}

void __45__MapsSuggestionsActionCircuit_addCondition___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5[7] arrayByAddingObject:*(a1 + 32)];
  v4 = v5[7];
  v5[7] = v3;
}

- (void)removeTrigger:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(MapsSuggestionsActionCircuit *)self uniqueName];
    *buf = 138412802;
    v11 = v6;
    v12 = 2080;
    v13 = "[MapsSuggestionsActionCircuit removeTrigger:]";
    v14 = 2048;
    v15 = v4;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{%@} %s %p", buf, 0x20u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__MapsSuggestionsActionCircuit_removeTrigger___block_invoke;
  v8[3] = &unk_1E81F7520;
  v7 = v4;
  v9 = v7;
  MSg::Queue::async<MapsSuggestionsActionCircuit>(&self->_queue, self, v8);
}

void __46__MapsSuggestionsActionCircuit_removeTrigger___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) unregisterObserver:v3];
  v4 = v3[6];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__MapsSuggestionsActionCircuit_removeTrigger___block_invoke_2;
  v7[3] = &unk_1E81F7548;
  v8 = *(a1 + 32);
  v5 = [v4 MSg_copyIf:v7];
  v6 = v3[6];
  v3[6] = v5;
}

- (void)removeCondition:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(MapsSuggestionsActionCircuit *)self uniqueName];
    *buf = 138412802;
    v11 = v6;
    v12 = 2080;
    v13 = "[MapsSuggestionsActionCircuit removeCondition:]";
    v14 = 2048;
    v15 = v4;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{%@} %s %p", buf, 0x20u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__MapsSuggestionsActionCircuit_removeCondition___block_invoke;
  v8[3] = &unk_1E81F7520;
  v7 = v4;
  v9 = v7;
  MSg::Queue::async<MapsSuggestionsActionCircuit>(&self->_queue, self, v8);
}

void __48__MapsSuggestionsActionCircuit_removeCondition___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[6];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__MapsSuggestionsActionCircuit_removeCondition___block_invoke_2;
  v7[3] = &unk_1E81F7570;
  v8 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 MSg_copyIf:v7];
  v6 = v4[7];
  v4[7] = v5;
}

- (uint64_t)_q_passedAllConditions
{
  v26 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *MEMORY[0x1E69A1B08];
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = [v1 uniqueName];
      *buf = 138412546;
      v23 = v4;
      v24 = 2080;
      v25 = "[MapsSuggestionsActionCircuit _q_passedAllConditions]";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "{%@} %s", buf, 0x16u);
    }

    dispatch_assert_queue_V2(*(v1 + 8));
    v5 = *(v1 + 80);
    *(v1 + 80) = 0;

    [(MapsSuggestionsActionCircuit *)v1 _q_sendStateForStep:?];
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "Checking all Conditions...", buf, 2u);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = *(v1 + 56);
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if (([v11 isTrue] & 1) == 0)
          {
            v12 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              v13 = [v11 uniqueName];
              *buf = 138412290;
              v23 = v13;
              _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "RUNCONDITION{%@} failed", buf, 0xCu);
            }

            v14 = [v11 uniqueName];
            v15 = [v14 copy];
            v16 = *(v1 + 80);
            *(v1 + 80) = v15;

            [(MapsSuggestionsActionCircuit *)v1 _q_sendStateForStep:?];
            return 0;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    [(MapsSuggestionsActionCircuit *)v7 _q_passedAllConditions];
    return 1;
  }

  return result;
}

- (void)_q_sendStateForStep:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v4 = [a1 objectForJSON];
    objc_initWeak(&location, a1);
    v5 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__MapsSuggestionsActionCircuit__q_sendStateForStep___block_invoke;
    v11[3] = &unk_1E81F7598;
    objc_copyWeak(&v14, &location);
    v6 = v3;
    v12 = v6;
    v7 = v4;
    v13 = v7;
    [v5 callBlock:v11];
    if (v6 == @"didAct")
    {
      v8 = *(a1 + 32);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __52__MapsSuggestionsActionCircuit__q_sendStateForStep___block_invoke_44;
      v9[3] = &unk_1E81F75C0;
      objc_copyWeak(&v10, &location);
      [v8 callBlock:v9];
      objc_destroyWeak(&v10);
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (void)_q_startRunBecauseOfTrigger:(uint64_t)a1
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [a1 uniqueName];
      v6 = [v3 uniqueName];
      *buf = 138412802;
      v15 = v5;
      v16 = 2080;
      v17 = "[MapsSuggestionsActionCircuit _q_startRunBecauseOfTrigger:]";
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "{%@} %s %@", buf, 0x20u);
    }

    dispatch_assert_queue_V2(*(a1 + 8));
    v7 = [v3 uniqueName];
    v8 = [v7 copy];
    v9 = *(a1 + 72);
    *(a1 + 72) = v8;

    v10 = *(a1 + 88);
    *(a1 + 88) = 0;

    [(MapsSuggestionsActionCircuit *)a1 _q_sendStateForStep:?];
    objc_initWeak(buf, a1);
    v11 = *(a1 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__MapsSuggestionsActionCircuit__q_startRunBecauseOfTrigger___block_invoke;
    v12[3] = &unk_1E81F69A0;
    objc_copyWeak(&v13, buf);
    [v11 actWithHandler:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __60__MapsSuggestionsActionCircuit__q_startRunBecauseOfTrigger___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 1);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__MapsSuggestionsActionCircuit__q_startRunBecauseOfTrigger___block_invoke_40;
    v9[3] = &unk_1E81F5970;
    v7 = v6;
    objc_copyWeak(&v11, (a1 + 32));
    v10 = v3;
    dispatch_async(v7, v9);

    objc_destroyWeak(&v11);
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v13 = "MapsSuggestionsActionCircuit.mm";
      v14 = 1026;
      v15 = 241;
      v16 = 2082;
      v17 = "[MapsSuggestionsActionCircuit _q_startRunBecauseOfTrigger:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: outerStrongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __60__MapsSuggestionsActionCircuit__q_startRunBecauseOfTrigger___block_invoke_40(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) copy];
    v4 = WeakRetained[11];
    WeakRetained[11] = v3;

    [(MapsSuggestionsActionCircuit *)WeakRetained _q_sendStateForStep:?];
    *(WeakRetained + 96) = 0;
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsActionCircuit.mm";
      v8 = 1026;
      v9 = 243;
      v10 = 2082;
      v11 = "[MapsSuggestionsActionCircuit _q_startRunBecauseOfTrigger:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

- (void)_q_triggerFired:(uint64_t)a1
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v4 = [v3 uniqueName];
    v5 = [v4 copy];
    v6 = *(a1 + 72);
    *(a1 + 72) = v5;

    [(MapsSuggestionsActionCircuit *)a1 _q_sendStateForStep:?];
    if (([(MapsSuggestionsActionCircuit *)a1 _q_passedAllConditions]& 1) != 0)
    {
      *(a1 + 96) = 1;
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = [a1 uniqueName];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "{%@} is allowed to run!", &v11, 0xCu);
      }

      [(MapsSuggestionsActionCircuit *)a1 _q_startRunBecauseOfTrigger:v3];
    }

    else
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = [a1 uniqueName];
        [(MapsSuggestionsActionCircuit *)v10 _q_triggerFired:v9];
      }

      [(MapsSuggestionsActionCircuit *)v9 _q_triggerFired:a1];
    }
  }
}

- (void)triggerFired:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(MapsSuggestionsActionCircuit *)self uniqueName];
    v7 = [v4 uniqueName];
    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{%@} fired TRIGGER{%@}!", buf, 0x16u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__MapsSuggestionsActionCircuit_triggerFired___block_invoke;
  v9[3] = &unk_1E81F7520;
  v8 = v4;
  v10 = v8;
  MSg::Queue::async<MapsSuggestionsActionCircuit>(&self->_queue, self, v9);
}

void __52__MapsSuggestionsActionCircuit__q_sendStateForStep___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [v3 actionCircuit:WeakRetained step:*(a1 + 32) jsonDict:*(a1 + 40)];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsActionCircuit.mm";
      v8 = 1026;
      v9 = 318;
      v10 = 2082;
      v11 = "[MapsSuggestionsActionCircuit _q_sendStateForStep:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

void __52__MapsSuggestionsActionCircuit__q_sendStateForStep___block_invoke_44(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v3 actionCircuitDidAct:WeakRetained];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsActionCircuit.mm";
      v8 = 1026;
      v9 = 327;
      v10 = 2082;
      v11 = "[MapsSuggestionsActionCircuit _q_sendStateForStep:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

- (id)objectForJSON
{
  v50[1] = *MEMORY[0x1E69E9840];
  v31 = [(NSArray *)self->_config.circuits copy];
  v32 = self->_config.triggers;
  v33 = self->_config.conditions;
  v41 = [*self->_anon_30 copy];
  v36 = [*&self->_anon_30[8] copy];
  v39 = [(NSString *)self->_state.firedTriggerName copy];
  v38 = [(NSString *)self->_state.failedConditionName copy];
  v30 = [(NSError *)self->_state.lastError copy];
  v46[0] = @"now";
  v34 = MapsSuggestionsNow();
  v35 = MSg::jsonFor(v34, v3);
  v47[0] = v35;
  v46[1] = @"triggers";
  v40 = v41;
  if (v40)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v40, "count")}];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v5 = v40;
    v6 = [v5 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v6)
    {
      v7 = *v43;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v43 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v42 + 1) + 8 * i);
          v10 = v9;
          if (v9)
          {
            v11 = [v9 nameForJSON];
            v49 = v11;
            v12 = [v10 objectForJSON];
            v50[0] = v12;
            v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
          }

          else
          {
            v13 = [MEMORY[0x1E695DFB0] null];
          }

          [v4 addObject:v13];
        }

        v6 = [v5 countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v6);
    }

    v37 = [v4 copy];
    v14 = v40;
  }

  else
  {
    v14 = 0;
    v37 = [MEMORY[0x1E695DFB0] null];
  }

  v47[1] = v37;
  v46[2] = @"conditions";
  v15 = v36;
  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v18)
    {
      v19 = *v43;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v43 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v42 + 1) + 8 * j);
          v22 = v21;
          if (v21)
          {
            [v21 objectForJSON];
          }

          else
          {
            [MEMORY[0x1E695DFB0] null];
          }
          v23 = ;

          v24 = [v22 nameForJSON];
          [v16 setObject:v23 forKeyedSubscript:v24];
        }

        v18 = [v17 countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v18);
    }

    v25 = [v16 copy];
  }

  else
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v47[2] = v25;
  v46[3] = @"firedTriggerName";
  v26 = MSg::jsonFor(v39);
  v47[3] = v26;
  v46[4] = @"failedConditionName";
  v27 = MSg::jsonFor(v38);
  v47[4] = v27;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:5];

  return v28;
}

- (NSString)description
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (Queue)dispatchQueue
{
  v4 = v2;
  *v2 = self->_dispatchQueue._innerQueue;
  v5 = self->_dispatchQueue._name;
  v4[1] = v5;
  result._name = v6;
  result._innerQueue = v5;
  return result;
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 8) = 0u;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 81) = 0u;
  return self;
}

- (void)_q_passedAllConditions
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Passed all Conditions!", v5, 2u);
  }

  [(MapsSuggestionsActionCircuit *)a3 _q_sendStateForStep:?];
}

- (void)_q_triggerFired:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_impl(&dword_1C5126000, log, OS_LOG_TYPE_DEBUG, "{%@} failed at least one Condition. Continuing sleep.", buf, 0xCu);
}

- (void)_q_triggerFired:(uint64_t)a3 .cold.2(void *a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  *a2 = 0;

  v7 = *(a3 + 80);
  *(a3 + 80) = 0;

  v8 = *(a3 + 88);
  *(a3 + 88) = 0;
}

@end