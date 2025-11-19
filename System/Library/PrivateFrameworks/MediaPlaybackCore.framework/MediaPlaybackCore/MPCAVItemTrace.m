@interface MPCAVItemTrace
+ (MPCAVItemTrace)traceWithName:(id)a3 item:(id)a4 event:(unsigned int)a5;
+ (id)traceIntervalWithName:(id)a3 item:(id)a4 beginEvent:(unsigned int)a5 endEvent:(unsigned int)a6;
- (MPAVItem)item;
- (void)cancel;
- (void)dealloc;
- (void)endInterval;
@end

@implementation MPCAVItemTrace

- (MPAVItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

- (void)cancel
{
  v19 = *MEMORY[0x1E69E9840];
  [(MPCAVItemTrace *)self ended];
  if (v3 == 0.0)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [(MPCAVItemTrace *)self setEnded:?];
    v4 = [(MPCAVItemTrace *)self item];
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(MPCAVItemTrace *)self name];
      v7 = [(MPCAVItemTrace *)self endEvent];
      [(MPCAVItemTrace *)self ended];
      v9 = v8;
      [(MPCAVItemTrace *)self started];
      v11 = 138413058;
      v12 = v6;
      v13 = 1024;
      v14 = v7;
      v15 = 2048;
      v16 = v9 - v10;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEBUG, "%@_END (%x) CANCELLED: %.3fs %@", &v11, 0x26u);
    }
  }
}

- (void)endInterval
{
  v20 = *MEMORY[0x1E69E9840];
  [(MPCAVItemTrace *)self ended];
  if (v3 == 0.0)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [(MPCAVItemTrace *)self setEnded:?];
    v4 = [(MPCAVItemTrace *)self item];
    [(MPCAVItemTrace *)self endEvent];
    [v4 type];
    v5 = [MEMORY[0x1E69E4428] sharedMonitor];
    [v5 networkType];
    kdebug_trace();

    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [(MPCAVItemTrace *)self name];
      v8 = [(MPCAVItemTrace *)self endEvent];
      [(MPCAVItemTrace *)self ended];
      v10 = v9;
      [(MPCAVItemTrace *)self started];
      v12 = 138413058;
      v13 = v7;
      v14 = 1024;
      v15 = v8;
      v16 = 2048;
      v17 = v10 - v11;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEBUG, "%@_END (%x): %.3fs %@", &v12, 0x26u);
    }
  }
}

- (void)dealloc
{
  [(MPCAVItemTrace *)self cancel];
  v3.receiver = self;
  v3.super_class = MPCAVItemTrace;
  [(MPCAVItemTrace *)&v3 dealloc];
}

+ (id)traceIntervalWithName:(id)a3 item:(id)a4 beginEvent:(unsigned int)a5 endEvent:(unsigned int)a6
{
  v6 = *&a6;
  v21 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc_init(MPCAVItemTrace);
  [(MPCAVItemTrace *)v11 setName:v9];
  [(MPCAVItemTrace *)v11 setItem:v10];
  [(MPCAVItemTrace *)v11 setEndEvent:v6];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [(MPCAVItemTrace *)v11 setStarted:?];
  [v10 type];
  v12 = [MEMORY[0x1E69E4428] sharedMonitor];

  [v12 networkType];
  kdebug_trace();

  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412802;
    v16 = v9;
    v17 = 1024;
    v18 = a5;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEBUG, "%@_BEGIN (%x): %@", &v15, 0x1Cu);
  }

  return v11;
}

+ (MPCAVItemTrace)traceWithName:(id)a3 item:(id)a4 event:(unsigned int)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  [v8 type];
  v9 = [MEMORY[0x1E69E4428] sharedMonitor];

  [v9 networkType];
  kdebug_trace();

  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412802;
    v13 = v7;
    v14 = 1024;
    v15 = a5;
    v16 = 2112;
    v17 = a4;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEBUG, "%@ (%x): %@", &v12, 0x1Cu);
  }

  return result;
}

@end