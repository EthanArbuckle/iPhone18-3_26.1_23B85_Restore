@interface MapsSuggestionsCircuitBoard
- (MapsSuggestionsCircuitBoard)init;
- (id).cxx_construct;
- (id)addAction:(id)a3;
- (id)addCircuit:(id)a3;
- (id)addCondition:(id)a3;
- (id)addTrigger:(id)a3;
- (id)objectForJSON;
- (id)uniqueName;
- (void)connectCondition:(id)a3 toCircuit:(id)a4;
- (void)connectTrigger:(id)a3 toCircuit:(id)a4;
- (void)disconnectCondition:(id)a3 fromCircuit:(id)a4;
- (void)disconnectTrigger:(id)a3 fromCircuit:(id)a4;
@end

@implementation MapsSuggestionsCircuitBoard

- (MapsSuggestionsCircuitBoard)init
{
  v17.receiver = self;
  v17.super_class = MapsSuggestionsCircuitBoard;
  v2 = [(MapsSuggestionsCircuitBoard *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    MSg::Queue::Queue(&v15, @"MapsSuggestionsCircuitBoardQueue", v3);
    v4 = v15;
    v15 = 0;
    innerQueue = v2->_queue._innerQueue;
    v2->_queue._innerQueue = v4;

    v6 = v16;
    v16 = 0;
    name = v2->_queue._name;
    v2->_queue._name = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    circuits = v2->_config.circuits;
    v2->_config.circuits = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    triggers = v2->_config.triggers;
    v2->_config.triggers = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    conditions = v2->_config.conditions;
    v2->_config.conditions = v12;
  }

  return v2;
}

- (id)addTrigger:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42__MapsSuggestionsCircuitBoard_addTrigger___block_invoke;
    v10[3] = &unk_1E81F6CA8;
    v6 = v4;
    v11 = v6;
    MSg::Queue::async<MapsSuggestionsCircuitBoard>(&self->_queue, self, v10);
    v7 = v6;
    v8 = v11;
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCircuitBoard.mm";
      v14 = 1024;
      v15 = 51;
      v16 = 2082;
      v17 = "[MapsSuggestionsCircuitBoard addTrigger:]";
      v18 = 2082;
      v19 = "nil == (trigger)";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a trigger", buf, 0x26u);
    }
  }

  return v5;
}

void __42__MapsSuggestionsCircuitBoard_addTrigger___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5[4] arrayByAddingObject:*(a1 + 32)];
  v4 = v5[4];
  v5[4] = v3;
}

- (id)addCondition:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__MapsSuggestionsCircuitBoard_addCondition___block_invoke;
    v10[3] = &unk_1E81F6CA8;
    v6 = v4;
    v11 = v6;
    MSg::Queue::async<MapsSuggestionsCircuitBoard>(&self->_queue, self, v10);
    v7 = v6;
    v8 = v11;
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCircuitBoard.mm";
      v14 = 1024;
      v15 = 60;
      v16 = 2082;
      v17 = "[MapsSuggestionsCircuitBoard addCondition:]";
      v18 = 2082;
      v19 = "nil == (condition)";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a condition", buf, 0x26u);
    }
  }

  return v5;
}

void __44__MapsSuggestionsCircuitBoard_addCondition___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5[5] arrayByAddingObject:*(a1 + 32)];
  v4 = v5[5];
  v5[5] = v3;
}

- (id)addCircuit:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42__MapsSuggestionsCircuitBoard_addCircuit___block_invoke;
    v10[3] = &unk_1E81F6CA8;
    v6 = v4;
    v11 = v6;
    MSg::Queue::async<MapsSuggestionsCircuitBoard>(&self->_queue, self, v10);
    v7 = v6;
    v8 = v11;
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCircuitBoard.mm";
      v14 = 1024;
      v15 = 69;
      v16 = 2082;
      v17 = "[MapsSuggestionsCircuitBoard addCircuit:]";
      v18 = 2082;
      v19 = "nil == (circuit)";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a circuit", buf, 0x26u);
    }
  }

  return v5;
}

void __42__MapsSuggestionsCircuitBoard_addCircuit___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5[3] arrayByAddingObject:*(a1 + 32)];
  v4 = v5[3];
  v5[3] = v3;
}

- (id)addAction:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [[MapsSuggestionsActionCircuit alloc] initWithAction:v4];
    v6 = [(MapsSuggestionsCircuitBoard *)self addCircuit:v5];
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446978;
      v10 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCircuitBoard.mm";
      v11 = 1024;
      v12 = 78;
      v13 = 2082;
      v14 = "[MapsSuggestionsCircuitBoard addAction:]";
      v15 = 2082;
      v16 = "nil == (action)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an action", &v9, 0x26u);
    }

    v6 = 0;
  }

  return v6;
}

- (void)connectTrigger:(id)a3 toCircuit:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v9 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 136446978;
    v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCircuitBoard.mm";
    v16 = 1024;
    v17 = 85;
    v18 = 2082;
    v19 = "[MapsSuggestionsCircuitBoard connectTrigger:toCircuit:]";
    v20 = 2082;
    v21 = "nil == (trigger)";
    v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a trigger";
LABEL_8:
    _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x26u);
    goto LABEL_9;
  }

  if (!v7)
  {
    v9 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 136446978;
    v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCircuitBoard.mm";
    v16 = 1024;
    v17 = 86;
    v18 = 2082;
    v19 = "[MapsSuggestionsCircuitBoard connectTrigger:toCircuit:]";
    v20 = 2082;
    v21 = "nil == (circuit)";
    v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a circuit";
    goto LABEL_8;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__MapsSuggestionsCircuitBoard_connectTrigger_toCircuit___block_invoke;
  v11[3] = &unk_1E81F6CD0;
  v12 = v7;
  v13 = v6;
  MSg::Queue::async<MapsSuggestionsCircuitBoard>(&self->_queue, self, v11);

  v9 = v12;
LABEL_9:
}

void __56__MapsSuggestionsCircuitBoard_connectTrigger_toCircuit___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([v3[3] containsObject:*(a1 + 32)] & 1) == 0)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446978;
      v7 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCircuitBoard.mm";
      v8 = 1024;
      v9 = 88;
      v10 = 2082;
      v11 = "[MapsSuggestionsCircuitBoard connectTrigger:toCircuit:]_block_invoke";
      v12 = 2082;
      v13 = "! [strongSelf->_config.circuits containsObject:circuit]";
      v5 = "At %{public}s:%d, %{public}s forbids: %{public}s. We don't have that circuit";
LABEL_8:
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, v5, &v6, 0x26u);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (([v3[4] containsObject:*(a1 + 40)] & 1) == 0)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446978;
      v7 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCircuitBoard.mm";
      v8 = 1024;
      v9 = 89;
      v10 = 2082;
      v11 = "[MapsSuggestionsCircuitBoard connectTrigger:toCircuit:]_block_invoke";
      v12 = 2082;
      v13 = "! [strongSelf->_config.triggers containsObject:trigger]";
      v5 = "At %{public}s:%d, %{public}s forbids: %{public}s. We don't have that trigger";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  [*(a1 + 32) addTrigger:*(a1 + 40)];
LABEL_10:
}

- (void)connectCondition:(id)a3 toCircuit:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v9 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 136446978;
    v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCircuitBoard.mm";
    v16 = 1024;
    v17 = 97;
    v18 = 2082;
    v19 = "[MapsSuggestionsCircuitBoard connectCondition:toCircuit:]";
    v20 = 2082;
    v21 = "nil == (condition)";
    v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a condition";
LABEL_8:
    _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x26u);
    goto LABEL_9;
  }

  if (!v7)
  {
    v9 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 136446978;
    v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCircuitBoard.mm";
    v16 = 1024;
    v17 = 98;
    v18 = 2082;
    v19 = "[MapsSuggestionsCircuitBoard connectCondition:toCircuit:]";
    v20 = 2082;
    v21 = "nil == (circuit)";
    v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a circuit";
    goto LABEL_8;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__MapsSuggestionsCircuitBoard_connectCondition_toCircuit___block_invoke;
  v11[3] = &unk_1E81F6CD0;
  v12 = v7;
  v13 = v6;
  MSg::Queue::async<MapsSuggestionsCircuitBoard>(&self->_queue, self, v11);

  v9 = v12;
LABEL_9:
}

void __58__MapsSuggestionsCircuitBoard_connectCondition_toCircuit___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([v3[3] containsObject:*(a1 + 32)] & 1) == 0)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446978;
      v7 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCircuitBoard.mm";
      v8 = 1024;
      v9 = 100;
      v10 = 2082;
      v11 = "[MapsSuggestionsCircuitBoard connectCondition:toCircuit:]_block_invoke";
      v12 = 2082;
      v13 = "! [strongSelf->_config.circuits containsObject:circuit]";
      v5 = "At %{public}s:%d, %{public}s forbids: %{public}s. We don't have that circuit";
LABEL_8:
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, v5, &v6, 0x26u);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (([v3[5] containsObject:*(a1 + 40)] & 1) == 0)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446978;
      v7 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCircuitBoard.mm";
      v8 = 1024;
      v9 = 101;
      v10 = 2082;
      v11 = "[MapsSuggestionsCircuitBoard connectCondition:toCircuit:]_block_invoke";
      v12 = 2082;
      v13 = "! [strongSelf->_config.conditions containsObject:condition]";
      v5 = "At %{public}s:%d, %{public}s forbids: %{public}s. We don't have that condition";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  [*(a1 + 32) addCondition:*(a1 + 40)];
LABEL_10:
}

- (void)disconnectTrigger:(id)a3 fromCircuit:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v9 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 136446978;
    v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCircuitBoard.mm";
    v16 = 1024;
    v17 = 109;
    v18 = 2082;
    v19 = "[MapsSuggestionsCircuitBoard disconnectTrigger:fromCircuit:]";
    v20 = 2082;
    v21 = "nil == (trigger)";
    v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a trigger";
LABEL_8:
    _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x26u);
    goto LABEL_9;
  }

  if (!v7)
  {
    v9 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 136446978;
    v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCircuitBoard.mm";
    v16 = 1024;
    v17 = 110;
    v18 = 2082;
    v19 = "[MapsSuggestionsCircuitBoard disconnectTrigger:fromCircuit:]";
    v20 = 2082;
    v21 = "nil == (circuit)";
    v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a circuit";
    goto LABEL_8;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__MapsSuggestionsCircuitBoard_disconnectTrigger_fromCircuit___block_invoke;
  v11[3] = &unk_1E81F6CD0;
  v12 = v7;
  v13 = v6;
  MSg::Queue::async<MapsSuggestionsCircuitBoard>(&self->_queue, self, v11);

  v9 = v12;
LABEL_9:
}

void __61__MapsSuggestionsCircuitBoard_disconnectTrigger_fromCircuit___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([v3[3] containsObject:*(a1 + 32)] & 1) == 0)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446978;
      v7 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCircuitBoard.mm";
      v8 = 1024;
      v9 = 112;
      v10 = 2082;
      v11 = "[MapsSuggestionsCircuitBoard disconnectTrigger:fromCircuit:]_block_invoke";
      v12 = 2082;
      v13 = "! [strongSelf->_config.circuits containsObject:circuit]";
      v5 = "At %{public}s:%d, %{public}s forbids: %{public}s. We don't have that circuit";
LABEL_8:
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, v5, &v6, 0x26u);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (([v3[4] containsObject:*(a1 + 40)] & 1) == 0)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446978;
      v7 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCircuitBoard.mm";
      v8 = 1024;
      v9 = 113;
      v10 = 2082;
      v11 = "[MapsSuggestionsCircuitBoard disconnectTrigger:fromCircuit:]_block_invoke";
      v12 = 2082;
      v13 = "! [strongSelf->_config.triggers containsObject:trigger]";
      v5 = "At %{public}s:%d, %{public}s forbids: %{public}s. We don't have that trigger";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  [*(a1 + 32) removeTrigger:*(a1 + 40)];
LABEL_10:
}

- (void)disconnectCondition:(id)a3 fromCircuit:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v9 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 136446978;
    v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCircuitBoard.mm";
    v16 = 1024;
    v17 = 121;
    v18 = 2082;
    v19 = "[MapsSuggestionsCircuitBoard disconnectCondition:fromCircuit:]";
    v20 = 2082;
    v21 = "nil == (condition)";
    v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a condition";
LABEL_8:
    _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x26u);
    goto LABEL_9;
  }

  if (!v7)
  {
    v9 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 136446978;
    v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCircuitBoard.mm";
    v16 = 1024;
    v17 = 122;
    v18 = 2082;
    v19 = "[MapsSuggestionsCircuitBoard disconnectCondition:fromCircuit:]";
    v20 = 2082;
    v21 = "nil == (circuit)";
    v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a circuit";
    goto LABEL_8;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__MapsSuggestionsCircuitBoard_disconnectCondition_fromCircuit___block_invoke;
  v11[3] = &unk_1E81F6CD0;
  v12 = v7;
  v13 = v6;
  MSg::Queue::async<MapsSuggestionsCircuitBoard>(&self->_queue, self, v11);

  v9 = v12;
LABEL_9:
}

void __63__MapsSuggestionsCircuitBoard_disconnectCondition_fromCircuit___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3[3] containsObject:*(a1 + 32)])
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446978;
      v7 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCircuitBoard.mm";
      v8 = 1024;
      v9 = 124;
      v10 = 2082;
      v11 = "[MapsSuggestionsCircuitBoard disconnectCondition:fromCircuit:]_block_invoke";
      v12 = 2082;
      v13 = "[strongSelf->_config.circuits containsObject:circuit]";
      v5 = "At %{public}s:%d, %{public}s forbids: %{public}s. We don't have that circuit";
LABEL_7:
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, v5, &v6, 0x26u);
    }
  }

  else
  {
    if (![v3[5] containsObject:*(a1 + 40)])
    {
      [*(a1 + 32) removeCondition:*(a1 + 40)];
      goto LABEL_10;
    }

    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446978;
      v7 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCircuitBoard.mm";
      v8 = 1024;
      v9 = 125;
      v10 = 2082;
      v11 = "[MapsSuggestionsCircuitBoard disconnectCondition:fromCircuit:]_block_invoke";
      v12 = 2082;
      v13 = "[strongSelf->_config.conditions containsObject:condition]";
      v5 = "At %{public}s:%d, %{public}s forbids: %{public}s. We don't have that condition";
      goto LABEL_7;
    }
  }

LABEL_10:
}

- (id)objectForJSON
{
  result = [(MapsSuggestionsCircuitBoard *)self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

- (id)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end