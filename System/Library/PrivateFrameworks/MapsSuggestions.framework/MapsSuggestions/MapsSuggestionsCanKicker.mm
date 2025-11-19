@interface MapsSuggestionsCanKicker
- (MapsSuggestionsCanKicker)initWithName:(id)a3 time:(double)a4 leeway:(double)a5 queue:(id)a6 block:(id)a7;
- (void)_kickCan;
- (void)cancel;
- (void)dealloc;
- (void)kickCanBySameTime;
- (void)kickCanByTime:(double)a3;
- (void)kickCanByTime:(double)a3 leeway:;
@end

@implementation MapsSuggestionsCanKicker

- (void)kickCanBySameTime
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_time <= 0.0)
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = 136446978;
      v4 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCanKicker.m";
      v5 = 1024;
      v6 = 141;
      v7 = 2082;
      v8 = "[MapsSuggestionsCanKicker kickCanBySameTime]";
      v9 = 2082;
      v10 = "_time <= 0.0";
      _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Either use initialize with a time or call kicking method with a time.", &v3, 0x26u);
    }
  }

  else
  {

    [(MapsSuggestionsCanKicker *)self _kickCan];
  }
}

- (void)_kickCan
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v1[7] = v1[7] + 1;
    if (MapsSuggestionsLoggingIsVerbose())
    {
      v2 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = [v1 uniqueName];
        v4 = v1[4];
        v5 = v1[5];
        v6 = v1[7];
        v7 = 138413058;
        v8 = v3;
        v9 = 2048;
        v10 = v4;
        v11 = 2048;
        v12 = v5;
        v13 = 2048;
        v14 = v6;
        _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "CanKicker{%@} kicked with time=%.2f leeway=%.2f count=%lu", &v7, 0x2Au);
      }
    }

    [v1[6] scheduleWithTimeInterval:*(v1 + 4) leeway:*(v1 + 5)];
    objc_sync_exit(v1);
  }
}

- (void)cancel
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(MapsSuggestionsCanKicker *)v2 uniqueName];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "CanKicker{%@} cancels", &v5, 0xCu);
  }

  [(MapsSuggestionsGCDTimer *)v2->_timer unschedule];
  objc_sync_exit(v2);
}

- (void)dealloc
{
  [(MapsSuggestionsCanKicker *)self cancel];
  [(MapsSuggestionsGCDTimer *)self->_timer unschedule];
  timer = self->_timer;
  self->_timer = 0;

  v4.receiver = self;
  v4.super_class = MapsSuggestionsCanKicker;
  [(MapsSuggestionsCanKicker *)&v4 dealloc];
}

- (MapsSuggestionsCanKicker)initWithName:(id)a3 time:(double)a4 leeway:(double)a5 queue:(id)a6 block:(id)a7
{
  v40 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = v14;
  if (!v12)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v33 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCanKicker.m";
      v34 = 1024;
      v35 = 48;
      v36 = 2082;
      v37 = "[MapsSuggestionsCanKicker initWithName:time:leeway:queue:block:]";
      v38 = 2082;
      v39 = "nil == (name)";
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a name", buf, 0x26u);
    }

    goto LABEL_23;
  }

  if (a4 < 0.0)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v33 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCanKicker.m";
      v34 = 1024;
      v35 = 49;
      v36 = 2082;
      v37 = "[MapsSuggestionsCanKicker initWithName:time:leeway:queue:block:]";
      v38 = 2082;
      v39 = "time < 0.0";
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a time in the future", buf, 0x26u);
    }

LABEL_23:

    v26 = 0;
    goto LABEL_24;
  }

  if (a5 < 0.0)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v33 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCanKicker.m";
      v34 = 1024;
      v35 = 50;
      v36 = 2082;
      v37 = "[MapsSuggestionsCanKicker initWithName:time:leeway:queue:block:]";
      v38 = 2082;
      v39 = "leeway < 0.0";
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a positive leeway", buf, 0x26u);
    }

    goto LABEL_23;
  }

  if (!v13)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v33 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCanKicker.m";
      v34 = 1024;
      v35 = 51;
      v36 = 2082;
      v37 = "[MapsSuggestionsCanKicker initWithName:time:leeway:queue:block:]";
      v38 = 2082;
      v39 = "nil == (queue)";
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a target queue to run the block on", buf, 0x26u);
    }

    goto LABEL_23;
  }

  if (!v14)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v33 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCanKicker.m";
      v34 = 1024;
      v35 = 52;
      v36 = 2082;
      v37 = "[MapsSuggestionsCanKicker initWithName:time:leeway:queue:block:]";
      v38 = 2082;
      v39 = "nil == (block)";
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a block", buf, 0x26u);
    }

    goto LABEL_23;
  }

  v31.receiver = self;
  v31.super_class = MapsSuggestionsCanKicker;
  v17 = [(MapsSuggestionsCanKicker *)&v31 init];
  if (v17)
  {
    v18 = [v12 copy];
    name = v17->_name;
    v17->_name = v18;

    v17->_time = a4;
    v17->_leeway = a5;
    objc_storeStrong(&v17->_targetQueue, a6);
    v20 = [v15 copy];
    block = v17->_block;
    v17->_block = v20;

    v17->_count = 0;
    objc_initWeak(buf, v17);
    v22 = [MapsSuggestionsGCDTimer alloc];
    targetQueue = v17->_targetQueue;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __65__MapsSuggestionsCanKicker_initWithName_time_leeway_queue_block___block_invoke;
    v28[3] = &unk_1E81F5CB0;
    objc_copyWeak(&v30, buf);
    v29 = v15;
    v24 = [(MapsSuggestionsGCDTimer *)v22 initWithName:@"CanKickerTimer" queue:targetQueue block:v28];
    timer = v17->_timer;
    v17->_timer = v24;

    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

  self = v17;
  v26 = self;
LABEL_24:

  return v26;
}

void __65__MapsSuggestionsCanKicker_initWithName_time_leeway_queue_block___block_invoke(uint64_t a1)
{
  *&v12[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_sync_enter(v4);
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v4 uniqueName];
      v7 = v4[7];
      v9 = 138412546;
      v10 = v6;
      v11 = 2048;
      *v12 = v7;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "CanKicker{%@} executes block (after %lu kicks)!", &v9, 0x16u);
    }

    v4[7] = 0;
    objc_sync_exit(v4);

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446722;
      v10 = "MapsSuggestionsCanKicker.m";
      v11 = 1026;
      *v12 = 67;
      v12[2] = 2082;
      *&v12[3] = "[MapsSuggestionsCanKicker initWithName:time:leeway:queue:block:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v9, 0x1Cu);
    }
  }
}

- (void)kickCanByTime:(double)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3 <= 0.0)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446978;
      v6 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCanKicker.m";
      v7 = 1024;
      v8 = 130;
      v9 = 2082;
      v10 = "[MapsSuggestionsCanKicker kickCanByTime:]";
      v11 = 2082;
      v12 = "time <= 0.0";
      v4 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a time in the future.";
      goto LABEL_7;
    }
  }

  else
  {
    if (self->_leeway >= 0.0)
    {
      [(MapsSuggestionsCanKicker *)self kickCanByTime:a3];
      return;
    }

    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446978;
      v6 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCanKicker.m";
      v7 = 1024;
      v8 = 131;
      v9 = 2082;
      v10 = "[MapsSuggestionsCanKicker kickCanByTime:]";
      v11 = 2082;
      v12 = "_leeway < 0.0";
      v4 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a positive leeway.";
LABEL_7:
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, v4, &v5, 0x26u);
    }
  }
}

- (void)kickCanByTime:(double)a3 leeway:
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2 <= 0.0)
    {
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446978;
        v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCanKicker.m";
        v10 = 1024;
        v11 = 118;
        v12 = 2082;
        v13 = "[MapsSuggestionsCanKicker kickCanByTime:leeway:]";
        v14 = 2082;
        v15 = "time <= 0.0";
        v6 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a time in the future.";
        goto LABEL_8;
      }

LABEL_9:

      return;
    }

    if (a3 < 0.0)
    {
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446978;
        v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCanKicker.m";
        v10 = 1024;
        v11 = 119;
        v12 = 2082;
        v13 = "[MapsSuggestionsCanKicker kickCanByTime:leeway:]";
        v14 = 2082;
        v15 = "leeway < 0.0";
        v6 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a positive leeway.";
LABEL_8:
        _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, v6, &v8, 0x26u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    v7 = a1;
    objc_sync_enter(v7);
    v7[4] = a2;
    v7[5] = a3;
    objc_sync_exit(v7);

    [(MapsSuggestionsCanKicker *)v7 _kickCan];
  }
}

- (void)kickCanByTime:(double)a3 .cold.1(void *a1, double *a2, double a3)
{
  v5 = a1;
  objc_sync_enter(v5);
  v5[4] = a3;
  objc_sync_exit(v5);

  v6 = v5[4];
  v7 = *a2;

  [(MapsSuggestionsCanKicker *)v5 kickCanByTime:v6 leeway:v7];
}

@end