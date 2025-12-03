@interface MapsSuggestionsCarplayDisconnectedCondition
- (BOOL)isTrue;
- (MapsSuggestionsCarplayDisconnectedCondition)initWithDisconnectDelay:(double)delay;
- (void)sessionDidDisconnect:(id)disconnect;
@end

@implementation MapsSuggestionsCarplayDisconnectedCondition

- (MapsSuggestionsCarplayDisconnectedCondition)initWithDisconnectDelay:(double)delay
{
  v11.receiver = self;
  v11.super_class = MapsSuggestionsCarplayDisconnectedCondition;
  v4 = [(MapsSuggestionsBaseCondition *)&v11 initWithName:@"MapsSuggestionsCarplayDisconnectedCondition"];
  v5 = v4;
  if (v4)
  {
    v4->_disconnectDelay = delay;
    v4->_isInitialized = 0;
    objc_initWeak(&location, v4);
    v6 = dispatch_get_global_queue(21, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__MapsSuggestionsCarplayDisconnectedCondition_initWithDisconnectDelay___block_invoke;
    v8[3] = &unk_1E81F53E8;
    objc_copyWeak(&v9, &location);
    dispatch_async(v6, v8);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __71__MapsSuggestionsCarplayDisconnectedCondition_initWithDisconnectDelay___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2050000000;
    v2 = getCARSessionStatusClass_softClass;
    v11 = getCARSessionStatusClass_softClass;
    if (!getCARSessionStatusClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getCARSessionStatusClass_block_invoke;
      *&buf[24] = &unk_1E81F7490;
      v13 = &v8;
      __getCARSessionStatusClass_block_invoke(buf);
      v2 = v9[3];
    }

    v3 = v2;
    _Block_object_dispose(&v8, 8);
    v4 = [v2 alloc];
    v5 = [v4 initAndWaitUntilSessionUpdated];
    v6 = WeakRetained[2];
    WeakRetained[2] = v5;

    [WeakRetained[2] addSessionObserver:WeakRetained];
    v7 = WeakRetained;
    objc_sync_enter(v7);
    LOBYTE(v7[4].isa) = 1;
    objc_sync_exit(v7);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "MapsSuggestionsCarplayDisconnectedCondition.m";
      *&buf[12] = 1026;
      *&buf[14] = 41;
      *&buf[18] = 2082;
      *&buf[20] = "[MapsSuggestionsCarplayDisconnectedCondition initWithDisconnectDelay:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

- (BOOL)isTrue
{
  v12 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isInitialized)
  {
    objc_sync_exit(selfCopy);

    currentSession = [(CARSessionStatus *)selfCopy->_carSessionStatus currentSession];

    if (currentSession)
    {
      selfCopy = GEOFindOrCreateLog();
      if (os_log_type_enabled(&selfCopy->super.super, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_1C5126000, &selfCopy->super.super, OS_LOG_TYPE_DEBUG, "Failed because still connected to carplay", &v10, 2u);
      }

      v4 = 0;
    }

    else
    {
      selfCopy = selfCopy;
      objc_sync_enter(selfCopy);
      disconnectTime = selfCopy->_disconnectTime;
      if (disconnectTime && MapsSuggestionsSecondsSince(disconnectTime) <= selfCopy->_disconnectDelay)
      {
        v7 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v8 = selfCopy->_disconnectTime;
          v10 = 138412290;
          v11 = v8;
          _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "Failed because disconnected only at %@", &v10, 0xCu);
        }

        v4 = 0;
      }

      else
      {
        v4 = 1;
      }

      objc_sync_exit(selfCopy);
    }
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "Carplay session not yet initialized", &v10, 2u);
    }

    objc_sync_exit(selfCopy);
    v4 = 1;
  }

  return v4;
}

- (void)sessionDidDisconnect:(id)disconnect
{
  v11 = *MEMORY[0x1E69E9840];
  disconnectCopy = disconnect;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315138;
    v10 = "[MapsSuggestionsCarplayDisconnectedCondition sessionDidDisconnect:]";
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "%s", &v9, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = MapsSuggestionsNow();
  disconnectTime = selfCopy->_disconnectTime;
  selfCopy->_disconnectTime = v7;

  objc_sync_exit(selfCopy);
}

@end