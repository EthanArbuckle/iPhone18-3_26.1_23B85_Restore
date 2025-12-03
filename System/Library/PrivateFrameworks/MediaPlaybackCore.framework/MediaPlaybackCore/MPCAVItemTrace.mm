@interface MPCAVItemTrace
+ (MPCAVItemTrace)traceWithName:(id)name item:(id)item event:(unsigned int)event;
+ (id)traceIntervalWithName:(id)name item:(id)item beginEvent:(unsigned int)event endEvent:(unsigned int)endEvent;
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
    item = [(MPCAVItemTrace *)self item];
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      name = [(MPCAVItemTrace *)self name];
      endEvent = [(MPCAVItemTrace *)self endEvent];
      [(MPCAVItemTrace *)self ended];
      v9 = v8;
      [(MPCAVItemTrace *)self started];
      v11 = 138413058;
      v12 = name;
      v13 = 1024;
      v14 = endEvent;
      v15 = 2048;
      v16 = v9 - v10;
      v17 = 2112;
      v18 = item;
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
    item = [(MPCAVItemTrace *)self item];
    [(MPCAVItemTrace *)self endEvent];
    [item type];
    mEMORY[0x1E69E4428] = [MEMORY[0x1E69E4428] sharedMonitor];
    [mEMORY[0x1E69E4428] networkType];
    kdebug_trace();

    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      name = [(MPCAVItemTrace *)self name];
      endEvent = [(MPCAVItemTrace *)self endEvent];
      [(MPCAVItemTrace *)self ended];
      v10 = v9;
      [(MPCAVItemTrace *)self started];
      v12 = 138413058;
      v13 = name;
      v14 = 1024;
      v15 = endEvent;
      v16 = 2048;
      v17 = v10 - v11;
      v18 = 2112;
      v19 = item;
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

+ (id)traceIntervalWithName:(id)name item:(id)item beginEvent:(unsigned int)event endEvent:(unsigned int)endEvent
{
  v6 = *&endEvent;
  v21 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  itemCopy = item;
  v11 = objc_alloc_init(MPCAVItemTrace);
  [(MPCAVItemTrace *)v11 setName:nameCopy];
  [(MPCAVItemTrace *)v11 setItem:itemCopy];
  [(MPCAVItemTrace *)v11 setEndEvent:v6];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [(MPCAVItemTrace *)v11 setStarted:?];
  [itemCopy type];
  mEMORY[0x1E69E4428] = [MEMORY[0x1E69E4428] sharedMonitor];

  [mEMORY[0x1E69E4428] networkType];
  kdebug_trace();

  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412802;
    v16 = nameCopy;
    v17 = 1024;
    eventCopy = event;
    v19 = 2112;
    v20 = itemCopy;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEBUG, "%@_BEGIN (%x): %@", &v15, 0x1Cu);
  }

  return v11;
}

+ (MPCAVItemTrace)traceWithName:(id)name item:(id)item event:(unsigned int)event
{
  v18 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  itemCopy = item;
  [itemCopy type];
  mEMORY[0x1E69E4428] = [MEMORY[0x1E69E4428] sharedMonitor];

  [mEMORY[0x1E69E4428] networkType];
  kdebug_trace();

  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412802;
    v13 = nameCopy;
    v14 = 1024;
    eventCopy = event;
    v16 = 2112;
    itemCopy2 = item;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEBUG, "%@ (%x): %@", &v12, 0x1Cu);
  }

  return result;
}

@end