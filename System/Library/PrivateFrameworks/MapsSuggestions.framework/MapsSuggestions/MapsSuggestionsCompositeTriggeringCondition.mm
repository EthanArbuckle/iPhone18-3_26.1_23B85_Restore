@interface MapsSuggestionsCompositeTriggeringCondition
- (BOOL)isTrue;
- (MapsSuggestionsCompositeTriggeringCondition)initWithName:(id)a3 startState:(BOOL)a4 behavior:(unint64_t)a5 triggers:(id)a6 conditions:(id)a7;
- (id).cxx_construct;
- (id)objectForJSON;
- (void)_q_unsubscribeAll;
- (void)addCondition:(id)a3;
- (void)addConditions:(id)a3;
- (void)addTrigger:(id)a3;
- (void)addTriggers:(id)a3;
- (void)dealloc;
- (void)didAddFirstObserver;
- (void)didRemoveLastObserver;
- (void)triggerFired:(id)a3;
@end

@implementation MapsSuggestionsCompositeTriggeringCondition

- (MapsSuggestionsCompositeTriggeringCondition)initWithName:(id)a3 startState:(BOOL)a4 behavior:(unint64_t)a5 triggers:(id)a6 conditions:(id)a7
{
  v10 = a4;
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v29.receiver = self;
  v29.super_class = MapsSuggestionsCompositeTriggeringCondition;
  v15 = [(MapsSuggestionsTriggeringToggle *)&v29 initWithName:v12 startState:v10 behavior:a5];
  v16 = v15;
  if (v15)
  {
    v17 = [(MapsSuggestionsBaseTrigger *)v15 dispatchQueue];
    MSg::Queue::Queue(&v27, v17);
    v18 = v27;
    v27 = 0;
    innerQueue = v16->_queue._innerQueue;
    v16->_queue._innerQueue = v18;

    v20 = v28;
    v28 = 0;
    name = v16->_queue._name;
    v16->_queue._name = v20;

    v22 = [v13 copy];
    triggers = v16->_triggers;
    v16->_triggers = v22;

    v24 = [v14 copy];
    conditions = v16->_conditions;
    v16->_conditions = v24;
  }

  return v16;
}

- (void)addConditions:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__MapsSuggestionsCompositeTriggeringCondition_addConditions___block_invoke;
    v7[3] = &unk_1E81F69F0;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(self->_queue._innerQueue, v7);
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v10 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCompositeTriggeringCondition.mm";
      v11 = 1024;
      v12 = 78;
      v13 = 2082;
      v14 = "[MapsSuggestionsCompositeTriggeringCondition addConditions:]";
      v15 = 2082;
      v16 = "nil == (conditions)";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires conditions", buf, 0x26u);
    }
  }
}

void __61__MapsSuggestionsCompositeTriggeringCondition_addConditions___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) arrayByAddingObjectsFromArray:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;
}

- (void)addCondition:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v6[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [(MapsSuggestionsCompositeTriggeringCondition *)self addConditions:v5];
}

- (void)addTriggers:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__MapsSuggestionsCompositeTriggeringCondition_addTriggers___block_invoke;
    v7[3] = &unk_1E81F6A18;
    v7[4] = self;
    v8 = v4;
    MSg::Queue::async<MapsSuggestionsCompositeTriggeringCondition>(&self->_queue, self, v7);
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v10 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCompositeTriggeringCondition.mm";
      v11 = 1024;
      v12 = 92;
      v13 = 2082;
      v14 = "[MapsSuggestionsCompositeTriggeringCondition addTriggers:]";
      v15 = 2082;
      v16 = "nil == (triggers)";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires triggers", buf, 0x26u);
    }
  }
}

void __59__MapsSuggestionsCompositeTriggeringCondition_addTriggers___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 64) arrayByAddingObjectsFromArray:*(a1 + 40)];
  v5 = v3[8];
  v3[8] = v4;

  if ([v3 hasObservers])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = *(a1 + 40);
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v27 count:16];
    if (v7)
    {
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if (([v10 conformsToProtocol:{&unk_1F4472C28, v13}] & 1) == 0)
          {
            v11 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v12 = [v10 uniqueName];
              *buf = 136447234;
              v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCompositeTriggeringCondition.mm";
              v19 = 1024;
              v20 = 99;
              v21 = 2082;
              v22 = "[MapsSuggestionsCompositeTriggeringCondition addTriggers:]_block_invoke";
              v23 = 2082;
              v24 = "! [trigger conformsToProtocol:@protocol(MapsSuggestionsTrigger)]";
              v25 = 2112;
              v26 = v12;
              _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. %@ is not a Trigger", buf, 0x30u);
            }

            goto LABEL_14;
          }

          [v10 registerObserver:v3];
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v27 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }
}

- (void)addTrigger:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v6[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [(MapsSuggestionsCompositeTriggeringCondition *)self addTriggers:v5];
}

- (void)didAddFirstObserver
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v14 = "[MapsSuggestionsCompositeTriggeringCondition didAddFirstObserver]";
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue._innerQueue);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4 = self->_triggers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v8 + 1) + 8 * v7++) registerObserver:{self, v8}];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)didRemoveLastObserver
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[MapsSuggestionsCompositeTriggeringCondition didRemoveLastObserver]";
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "%s", &v4, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue._innerQueue);
  [(MapsSuggestionsCompositeTriggeringCondition *)self _q_unsubscribeAll];
}

- (void)_q_unsubscribeAll
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v2 = *(a1 + 64);
    v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    if (v3)
    {
      v4 = *v7;
      do
      {
        v5 = 0;
        do
        {
          if (*v7 != v4)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v6 + 1) + 8 * v5++) unregisterObserver:{a1, v6}];
        }

        while (v3 != v5);
        v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
      }

      while (v3);
    }
  }
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v6 = "[MapsSuggestionsCompositeTriggeringCondition dealloc]";
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  [(MapsSuggestionsCompositeTriggeringCondition *)self _q_unsubscribeAll];
  v4.receiver = self;
  v4.super_class = MapsSuggestionsCompositeTriggeringCondition;
  [(MapsSuggestionsCompositeTriggeringCondition *)&v4 dealloc];
}

- (void)triggerFired:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 uniqueName];
    *buf = 136315394;
    v9 = "[MapsSuggestionsCompositeTriggeringCondition triggerFired:]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "%s: Trigger{%@}", buf, 0x16u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__MapsSuggestionsCompositeTriggeringCondition_triggerFired___block_invoke;
  v7[3] = &unk_1E81F6A40;
  v7[4] = self;
  MSg::Queue::async<MapsSuggestionsCompositeTriggeringCondition>(&self->_queue, self, v7);
}

void __60__MapsSuggestionsCompositeTriggeringCondition_triggerFired___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 72);
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v24 = "BOOL _passedConditions(NSArray<id<MapsSuggestionsCondition>> *__strong)";
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:buf count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        if (([v10 isTrue] & 1) == 0)
        {
          v13 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v14 = [v10 nameForJSON];
            *v21 = 138412290;
            v22 = v14;
            _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "Condition{%@} said NO", v21, 0xCu);
          }

          v12 = 0;
          v11 = v6;
          goto LABEL_17;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v17 objects:buf count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *v21 = 0;
    _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_DEBUG, "All Conditions passed", v21, 2u);
  }

  v12 = 1;
LABEL_17:

  [v3 setState:v12];
  v15 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = NSStringFromMapsSuggestionsJSON(v3, 0);
    *buf = 138412290;
    v24 = v16;
    _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_DEBUG, "Internal state: %@", buf, 0xCu);
  }
}

- (BOOL)isTrue
{
  v32 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__8;
  v22 = __Block_byref_object_dispose__8;
  v23 = 0;
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(MapsSuggestionsBaseTrigger *)self dispatchQueue];
    *buf = 138412290;
    v31 = v4;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "MapsSuggestionsCondition isTrue called, going to dispatch to queue %@", buf, 0xCu);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __53__MapsSuggestionsCompositeTriggeringCondition_isTrue__block_invoke;
  v17[3] = &unk_1E81F5BC8;
  v17[4] = self;
  v17[5] = &v18;
  dispatch_sync(self->_queue._innerQueue, v17);
  v5 = v19[5];
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v31 = "BOOL _passedConditions(NSArray<id<MapsSuggestionsCondition>> *__strong)";
    _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:buf count:16];
  if (v8)
  {
    v9 = *v25;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        if (([v11 isTrue] & 1) == 0)
        {
          v14 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = [v11 nameForJSON];
            *v28 = 138412290;
            v29 = v15;
            _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "Condition{%@} said NO", v28, 0xCu);
          }

          v13 = 0;
          v12 = v7;
          goto LABEL_19;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v24 objects:buf count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *v28 = 0;
    _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "All Conditions passed", v28, 2u);
  }

  v13 = 1;
LABEL_19:

  _Block_object_dispose(&v18, 8);
  return v13;
}

- (id)objectForJSON
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = self->_conditions;
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSArray count](v2, "count")}];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v2;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = *v15;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v14 + 1) + 8 * i);
          v9 = v8;
          if (v8)
          {
            [v8 objectForJSON];
          }

          else
          {
            [MEMORY[0x1E695DFB0] null];
          }
          v10 = ;

          v11 = [v9 nameForJSON];
          [v3 setObject:v10 forKeyedSubscript:v11];
        }

        v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
    }

    v12 = [v3 copy];
  }

  else
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  return v12;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

@end