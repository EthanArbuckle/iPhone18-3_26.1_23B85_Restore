@interface MapsSuggestionsObservers
- (BOOL)callBlock:(id)a3;
- (BOOL)synchronouslyCallBlock:(id)a3;
- (MapsSuggestionsObservers)init;
- (MapsSuggestionsObservers)initWithCallbackQueue:(id)a3 name:(id)a4 strong:(BOOL)a5;
- (MapsSuggestionsObservers)initWithName:(id)a3;
- (NSString)description;
- (id).cxx_construct;
- (id)_synchronizedSnapshot;
- (unint64_t)count;
- (void)registerObserver:(id)a3 handler:(id)a4;
- (void)unregisterObserver:(id)a3 handler:(id)a4;
@end

@implementation MapsSuggestionsObservers

- (id)_synchronizedSnapshot
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = v1[4];
    objc_sync_enter(v3);
    v4 = [v1[4] allObjects];
    v1 = [v4 copy];

    objc_sync_exit(v3);
    objc_autoreleasePoolPop(v2);
  }

  return v1;
}

- (unint64_t)count
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(MapsSuggestionsObservers *)&self->super.isa _synchronizedSnapshot];
  v5 = [v4 count];

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (MapsSuggestionsObservers)initWithCallbackQueue:(id)a3 name:(id)a4 strong:(BOOL)a5
{
  v5 = a5;
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v23 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsObservers.mm";
      *&buf[12] = 1024;
      *&buf[14] = 30;
      v27 = 2082;
      v28 = "[MapsSuggestionsObservers initWithCallbackQueue:name:strong:]";
      v29 = 2082;
      v30 = "nil == (callbackQueue)";
      _os_log_impl(&dword_1C5126000, v23, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a queue!", buf, 0x26u);
    }

    goto LABEL_14;
  }

  if (!v9)
  {
    v23 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsObservers.mm";
      *&buf[12] = 1024;
      *&buf[14] = 31;
      v27 = 2082;
      v28 = "[MapsSuggestionsObservers initWithCallbackQueue:name:strong:]";
      v29 = 2082;
      v30 = "nil == (name)";
      _os_log_impl(&dword_1C5126000, v23, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a name!", buf, 0x26u);
    }

LABEL_14:

    v22 = 0;
    goto LABEL_15;
  }

  v25.receiver = self;
  v25.super_class = MapsSuggestionsObservers;
  v11 = [(MapsSuggestionsObservers *)&v25 init];
  if (v11)
  {
    v12 = [v10 copy];
    name = v11->_name;
    v11->_name = v12;

    MSg::Queue::Queue(buf, v8);
    v14 = *buf;
    *buf = 0;
    innerQueue = v11->_callbackQueue._innerQueue;
    v11->_callbackQueue._innerQueue = v14;

    v16 = *&buf[8];
    *&buf[8] = 0;
    v17 = v11->_callbackQueue._name;
    v11->_callbackQueue._name = v16;

    v18 = objc_alloc(MEMORY[0x1E696AC70]);
    if (v5)
    {
      v19 = 512;
    }

    else
    {
      v19 = 517;
    }

    v20 = [v18 initWithOptions:v19 capacity:1];
    innerObservers = v11->_innerObservers;
    v11->_innerObservers = v20;
  }

  self = v11;
  v22 = self;
LABEL_15:

  return v22;
}

- (MapsSuggestionsObservers)initWithName:(id)a3
{
  v4 = a3;
  v5 = [v4 stringByAppendingString:@"Queue"];
  v6 = [v5 UTF8String];
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create(v6, v7);

  v9 = [(MapsSuggestionsObservers *)self initWithCallbackQueue:v8 name:v4];
  return v9;
}

- (MapsSuggestionsObservers)init
{
  v3 = [objc_opt_class() description];
  v4 = [(MapsSuggestionsObservers *)self initWithName:v3];

  return v4;
}

- (void)registerObserver:(id)a3 handler:(id)a4
{
  *&v27[13] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, a3);
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = objc_loadWeakRetained(&location);
  if (v8)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      name = self->_name;
      *buf = 138412546;
      v25 = name;
      v26 = 2112;
      *v27 = v8;
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "{%@}registerObserver:%@", buf, 0x16u);
    }

    v11 = self->_innerObservers;
    objc_sync_enter(v11);
    v12 = [(MapsSuggestionsObservers *)self count];
    [(NSHashTable *)self->_innerObservers addObject:v8];
    v13 = [(MapsSuggestionsObservers *)self count];
    if (v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13 == 0;
    }

    v15 = !v14;
    objc_sync_exit(v11);

    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = self->_name;
      if (v15)
      {
        v18 = 89;
      }

      else
      {
        v18 = 78;
      }

      *buf = 138412546;
      v25 = v17;
      v26 = 1024;
      *v27 = v18;
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_DEBUG, "{%@}isFirstObserver=%c", buf, 0x12u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__MapsSuggestionsObservers_registerObserver_handler___block_invoke;
    block[3] = &unk_1E81F5B50;
    v21 = v6;
    v22 = v15;
    dispatch_async(self->_callbackQueue._innerQueue, block);
    v19 = v21;
  }

  else
  {
    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v25 = "MapsSuggestionsObservers.mm";
      v26 = 1026;
      *v27 = 80;
      v27[2] = 2082;
      *&v27[3] = "[MapsSuggestionsObservers registerObserver:handler:]";
      _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongObserver went away in %{public}s", buf, 0x1Cu);
    }
  }

  objc_autoreleasePoolPop(v7);
  objc_destroyWeak(&location);
}

uint64_t __53__MapsSuggestionsObservers_registerObserver_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)unregisterObserver:(id)a3 handler:(id)a4
{
  *&v27[13] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = v6;
  if (v9)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      name = self->_name;
      *buf = 138412546;
      v25 = name;
      v26 = 2112;
      *v27 = v9;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "{%@}unregisterObserver:%@", buf, 0x16u);
    }

    v12 = self->_innerObservers;
    objc_sync_enter(v12);
    v13 = [(MapsSuggestionsObservers *)self count];
    [(NSHashTable *)self->_innerObservers removeObject:v9];
    v14 = [(MapsSuggestionsObservers *)self count];
    if (v13)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    objc_sync_exit(v12);

    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = self->_name;
      if (v16)
      {
        v19 = 89;
      }

      else
      {
        v19 = 78;
      }

      *buf = 138412546;
      v25 = v18;
      v26 = 1024;
      *v27 = v19;
      _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_DEBUG, "{%@}wasLastObserver=%c", buf, 0x12u);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __55__MapsSuggestionsObservers_unregisterObserver_handler___block_invoke;
    v21[3] = &unk_1E81F5B50;
    v22 = v7;
    v23 = v16;
    dispatch_async(self->_callbackQueue._innerQueue, v21);
    v20 = v22;
  }

  else
  {
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v25 = "MapsSuggestionsObservers.mm";
      v26 = 1026;
      *v27 = 102;
      v27[2] = 2082;
      *&v27[3] = "[MapsSuggestionsObservers unregisterObserver:handler:]";
      _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongObserver went away in %{public}s", buf, 0x1Cu);
    }
  }

  objc_autoreleasePoolPop(v8);
}

uint64_t __55__MapsSuggestionsObservers_unregisterObserver_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (BOOL)callBlock:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    if (MapsSuggestionsLoggingIsVerbose())
    {
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        name = self->_name;
        *buf = 138412290;
        v16 = name;
        _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{%@}enumerateWithBlock", buf, 0xCu);
      }
    }

    v7 = objc_autoreleasePoolPush();
    v8 = [(MapsSuggestionsObservers *)&self->super.isa _synchronizedSnapshot];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __38__MapsSuggestionsObservers_callBlock___block_invoke;
    v12[3] = &unk_1E81F74D0;
    v13 = v8;
    v14 = v4;
    v9 = v8;
    MSg::Queue::async<MapsSuggestionsObservers>(&self->_callbackQueue, self, v12);

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsObservers.mm";
      v17 = 1024;
      v18 = 132;
      v19 = 2082;
      v20 = "[MapsSuggestionsObservers callBlock:]";
      v21 = 2082;
      v22 = "nil == (block)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a block", buf, 0x26u);
    }
  }

  return v4 != 0;
}

void __38__MapsSuggestionsObservers_callBlock___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (MapsSuggestionsLoggingIsVerbose())
        {
          v9 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v10 = v3[1];
            *buf = 138412546;
            v16 = v10;
            v17 = 2112;
            v18 = v8;
            _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "{%@}enumerateWithBlock[%@]", buf, 0x16u);
          }
        }

        (*(*(a1 + 40) + 16))();
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v19 count:16];
    }

    while (v5);
  }
}

- (BOOL)synchronouslyCallBlock:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    if (MapsSuggestionsLoggingIsVerbose())
    {
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        name = self->_name;
        *buf = 138412290;
        v12 = name;
        _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{%@}synchronouslyEnumerateWithBlock", buf, 0xCu);
      }
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__MapsSuggestionsObservers_synchronouslyCallBlock___block_invoke;
    v9[3] = &unk_1E81F5528;
    v9[4] = self;
    v10 = v4;
    dispatch_sync(self->_callbackQueue._innerQueue, v9);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsObservers.mm";
      v13 = 1024;
      v14 = 150;
      v15 = 2082;
      v16 = "[MapsSuggestionsObservers synchronouslyCallBlock:]";
      v17 = 2082;
      v18 = "nil == (block)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a block", buf, 0x26u);
    }
  }

  return v4 != 0;
}

void __51__MapsSuggestionsObservers_synchronouslyCallBlock___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  [(MapsSuggestionsObservers *)*(a1 + 32) _synchronizedSnapshot];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v2 = v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v18 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if (MapsSuggestionsLoggingIsVerbose())
        {
          v7 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            v8 = *(*(a1 + 32) + 8);
            *buf = 138412546;
            v15 = v8;
            v16 = 2112;
            v17 = v6;
            _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "{%@}synchronouslyEnumerateWithBlock[%@]", buf, 0x16u);
          }
        }

        (*(*(a1 + 40) + 16))();
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v18 count:16];
    }

    while (v3);
  }

  objc_autoreleasePoolPop(context);
}

- (NSString)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(MapsSuggestionsObservers *)&self->super.isa _synchronizedSnapshot];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9.receiver = self;
  v9.super_class = MapsSuggestionsObservers;
  v6 = [(MapsSuggestionsObservers *)&v9 description];
  v7 = [v5 initWithFormat:@"%@ %u observers", v6, objc_msgSend(v4, "count")];

  objc_autoreleasePoolPop(v3);

  return v7;
}

@end