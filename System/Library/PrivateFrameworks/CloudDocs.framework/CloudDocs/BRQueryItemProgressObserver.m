@interface BRQueryItemProgressObserver
- (BRQueryItemProgressObserver)initWithItem:(id)a3;
- (id)description;
- (void)_stopObserving;
- (void)_subscribe;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setQueue:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation BRQueryItemProgressObserver

- (BRQueryItemProgressObserver)initWithItem:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BRQueryItemProgressObserver;
  v5 = [(BRQueryItemProgressObserver *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    item = v5->_item;
    v5->_item = v6;
  }

  return v5;
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("[BRQueryItemProgressObserver dealloc]", 48);
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_6_0();
  v3 = brc_default_log(v1, v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v4, v5, "[CRIT] Assertion failed: _progress == nil%@", v6, v7, v8, v9, 2u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = self->_item;
  objc_sync_enter(v3);
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [(BRQueryItem *)self->_item fileObjectID];
  v7 = [v6 rawID];
  v8 = [(BRQueryItem *)self->_item logicalName];
  v9 = [v4 stringWithFormat:@"<%@:%p %lld %@>", v5, self, v7, v8];

  objc_sync_exit(v3);

  return v9;
}

- (void)setQueue:(id)a3
{
  v5 = a3;
  queue = self->_queue;
  p_queue = &self->_queue;
  if (queue != v5)
  {
    v8 = v5;
    objc_storeStrong(p_queue, a3);
    v5 = v8;
  }
}

- (void)_stopObserving
{
  [(NSProgress *)self->_progress removeObserver:self forKeyPath:@"fractionCompleted" context:self->_item];
  progress = self->_progress;
  self->_progress = 0;
}

- (void)_subscribe
{
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __41__BRQueryItemProgressObserver__subscribe__block_invoke;
  v15[3] = &unk_1E7A14798;
  v15[4] = self;
  v3 = MEMORY[0x1B26FEA90](v15, a2);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __41__BRQueryItemProgressObserver__subscribe__block_invoke_7;
  v13[3] = &unk_1E7A163C0;
  v13[4] = self;
  v14 = v3;
  v4 = v3;
  v5 = MEMORY[0x1B26FEA90](v13);
  v6 = [(BRQueryItem *)self->_item url];
  v7 = fileProgressSubscribeQueue();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__BRQueryItemProgressObserver__subscribe__block_invoke_10;
  v10[3] = &unk_1E7A14B68;
  v10[4] = self;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

void __41__BRQueryItemProgressObserver__subscribe__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__BRQueryItemProgressObserver__subscribe__block_invoke_2;
  block[3] = &unk_1E7A14798;
  block[4] = v1;
  dispatch_async(v2, block);
}

uint64_t __41__BRQueryItemProgressObserver__subscribe__block_invoke_2(uint64_t result)
{
  v1 = (result + 32);
  if (*(*(result + 32) + 40) == 1)
  {
    v2 = brc_bread_crumbs("[BRQueryItemProgressObserver _subscribe]_block_invoke_2", 84);
    v3 = brc_default_log(1, 0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __41__BRQueryItemProgressObserver__subscribe__block_invoke_2_cold_1(v1);
    }

    return [*v1 _stopObserving];
  }

  return result;
}

id __41__BRQueryItemProgressObserver__subscribe__block_invoke_7(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = brc_bread_crumbs("[BRQueryItemProgressObserver _subscribe]_block_invoke", 89);
  v5 = brc_default_log(1, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    *buf = 138412802;
    v16 = v12;
    v17 = 2112;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    _os_log_debug_impl(&dword_1AE2A9000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: received %@%@", buf, 0x20u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __41__BRQueryItemProgressObserver__subscribe__block_invoke_8;
  v13[3] = &unk_1E7A14A08;
  v13[4] = v6;
  v14 = v3;
  v8 = v3;
  dispatch_async(v7, v13);
  v9 = MEMORY[0x1B26FEA90](*(a1 + 40));

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void __41__BRQueryItemProgressObserver__subscribe__block_invoke_8(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (*(v1 + 40) == 1)
  {
    v4 = *(v1 + 32);
    if (v4)
    {
      if ([v4 isEqual:*(a1 + 40)])
      {
        goto LABEL_14;
      }

      v5 = brc_bread_crumbs("[BRQueryItemProgressObserver _subscribe]_block_invoke", 100);
      v6 = brc_default_log(1, 0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __41__BRQueryItemProgressObserver__subscribe__block_invoke_8_cold_1(v2);
      }

      [*v2 _stopObserving];
    }

    v7 = [*(a1 + 40) userInfo];
    objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
    [*(*(a1 + 32) + 32) addObserver:*(a1 + 32) forKeyPath:@"fractionCompleted" options:5 context:*(*(a1 + 32) + 8)];
    v8 = [v7 objectForKey:*MEMORY[0x1E696A858]];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(*v2 + 41) = [v8 isEqualToString:*MEMORY[0x1E696A870]];
      }

      else
      {
        v9 = brc_bread_crumbs("[BRQueryItemProgressObserver _subscribe]_block_invoke", 115);
        v10 = brc_default_log(1, 0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138412802;
          v14 = objc_opt_class();
          v15 = 2112;
          v16 = v8;
          v17 = 2112;
          v18 = v9;
          v11 = v14;
          _os_log_impl(&dword_1AE2A9000, v10, OS_LOG_TYPE_DEFAULT, "[WARNING] can't determine kind of operation (expected: NSString, actual: %@); %@%@", &v13, 0x20u);
        }
      }
    }
  }

LABEL_14:
  v12 = *MEMORY[0x1E69E9840];
}

void __41__BRQueryItemProgressObserver__subscribe__block_invoke_10(void *a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = a1[4];
  v3 = *(v2 + 16);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__BRQueryItemProgressObserver__subscribe__block_invoke_2_11;
  v9[3] = &unk_1E7A15518;
  v9[4] = v2;
  v9[5] = &v10;
  dispatch_sync(v3, v9);
  if (*(v11 + 24) == 1)
  {
    v4 = [MEMORY[0x1E696AE38] addSubscriberForFileURL:a1[5] usingBlock:a1[6]];
    v5 = a1[4];
    if (*(v5 + 24))
    {
      v7 = brc_bread_crumbs("[BRQueryItemProgressObserver _subscribe]_block_invoke", 133);
      v8 = brc_default_log(0, 0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        __41__BRQueryItemProgressObserver__subscribe__block_invoke_10_cold_1();
      }

      v5 = a1[4];
    }

    v6 = *(v5 + 24);
    *(v5 + 24) = v4;
  }

  _Block_object_dispose(&v10, 8);
}

- (void)stop
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] %@: stopping%@");
  v2 = *MEMORY[0x1E69E9840];
}

void __35__BRQueryItemProgressObserver_stop__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 24))
  {
    [MEMORY[0x1E696AE38] _removeSubscriber:?];
    v2 = *(a1 + 32);
    v3 = *(v2 + 24);
    *(v2 + 24) = 0;
  }
}

- (void)start
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_3(&dword_1AE2A9000, v0, v1, "[CRIT] UNREACHABLE: started twice%@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (self->_item == a6)
  {
    v13 = v11;
    if (self->_progress != v13)
    {
      [BRQueryItemProgressObserver observeValueForKeyPath:ofObject:change:context:];
    }

    [(NSProgress *)v13 fractionCompleted];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__BRQueryItemProgressObserver_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E7A163E8;
    v19 = v15;
    block[4] = self;
    v18 = v13;
    v16 = v13;
    dispatch_async(queue, block);
  }

  else
  {
    v20.receiver = self;
    v20.super_class = BRQueryItemProgressObserver;
    [(BRQueryItemProgressObserver *)&v20 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

uint64_t __78__BRQueryItemProgressObserver_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t result)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  if (*(v1 + 40) == 1)
  {
    v2 = result;
    v3 = *(v1 + 8);
    if (*(v1 + 41))
    {
      v4 = MEMORY[0x1E696A6D8];
    }

    else
    {
      v4 = MEMORY[0x1E696A6D0];
    }

    v5 = [v3 attributeForName:*v4];
    [v5 doubleValue];
    v7 = v6 / 100.0;

    v8 = *(v2 + 48);
    if (round(v8 * 1000.0) != round(v7 * 1000.0))
    {
      v9 = brc_bread_crumbs("[BRQueryItemProgressObserver observeValueForKeyPath:ofObject:change:context:]_block_invoke", 190);
      v10 = brc_default_log(1, 0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v17 = *(v2 + 32);
        v18 = [*(v2 + 40) localizedAdditionalDescription];
        *v19 = 138412802;
        *&v19[4] = v17;
        v20 = 2112;
        v21 = v18;
        v22 = 2112;
        v23 = v9;
        _os_log_debug_impl(&dword_1AE2A9000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: changed to %@%@", v19, 0x20u);
      }

      v8 = *(v2 + 48);
    }

    if (v8 > 1.0)
    {
      __78__BRQueryItemProgressObserver_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_1((v2 + 48), v19);
      v8 = *v19;
    }

    if (v8 < 0.0)
    {
      __78__BRQueryItemProgressObserver_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_2((v2 + 48), v19);
      v8 = *v19;
    }

    v11 = *(*(v2 + 32) + 8);
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:v8 * 100.0];
    if (*(*(v2 + 32) + 41))
    {
      v13 = kBRQueryItemULPercentKey;
    }

    else
    {
      v13 = kBRQueryItemDLPercentKey;
    }

    [v11 setAttribute:v12 forKey:*v13];

    v14 = *(v2 + 32);
    v15 = *(v14 + 8);
    result = (*(*(v14 + 48) + 16))();
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void __41__BRQueryItemProgressObserver__subscribe__block_invoke_2_cold_1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v1, v2, "[DEBUG] %@: remove observer from unpublished progress%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

void __41__BRQueryItemProgressObserver__subscribe__block_invoke_8_cold_1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v1, v2, "[DEBUG] %@: remove observer from stale progress%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

void __41__BRQueryItemProgressObserver__subscribe__block_invoke_10_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_3(&dword_1AE2A9000, v0, v1, "[CRIT] Assertion failed: self->_subscriber == nil%@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:ofObject:change:context:.cold.1()
{
  v11 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("[BRQueryItemProgressObserver observeValueForKeyPath:ofObject:change:context:]", 180);
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_6_0();
  v3 = brc_default_log(v1, v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v4, v5, "[CRIT] Assertion failed: progress == _progress%@", v6, v7, v8, v9, 2u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

double __78__BRQueryItemProgressObserver_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_1(double *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = brc_bread_crumbs("[BRQueryItemProgressObserver observeValueForKeyPath:ofObject:change:context:]_block_invoke", 192);
  v5 = brc_default_log(0, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v9 = 138412290;
    v10 = v4;
    OUTLINED_FUNCTION_4_3(&dword_1AE2A9000, v5, v6, "[CRIT] Assertion failed: fractionCompleted <= 1%@", &v9);
  }

  result = *a1;
  *a2 = *a1;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

double __78__BRQueryItemProgressObserver_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_2(double *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = brc_bread_crumbs("[BRQueryItemProgressObserver observeValueForKeyPath:ofObject:change:context:]_block_invoke", 193);
  v5 = brc_default_log(0, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v9 = 138412290;
    v10 = v4;
    OUTLINED_FUNCTION_4_3(&dword_1AE2A9000, v5, v6, "[CRIT] Assertion failed: fractionCompleted >= 0%@", &v9);
  }

  result = *a1;
  *a2 = *a1;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

@end