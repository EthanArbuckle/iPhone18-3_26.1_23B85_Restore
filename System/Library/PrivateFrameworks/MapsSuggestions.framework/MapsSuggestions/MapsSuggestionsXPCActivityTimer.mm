@interface MapsSuggestionsXPCActivityTimer
- (MapsSuggestionsXPCActivityTimer)initWithName:(id)name estimatedDownload:(unint64_t)download estimatedUpload:(unint64_t)upload queue:(id)queue block:(id)block;
- (MapsSuggestionsXPCActivityTimer)initWithName:(id)name queue:(id)queue block:(id)block;
- (MapsSuggestionsXPCActivityTimer)initWithName:(id)name queue:(id)queue timerReturningBlock:(id)block;
- (NSString)description;
- (id)objectForJSON;
- (void)scheduleWithTimeInterval:(double)interval leeway:(double)leeway;
- (void)unschedule;
@end

@implementation MapsSuggestionsXPCActivityTimer

- (MapsSuggestionsXPCActivityTimer)initWithName:(id)name estimatedDownload:(unint64_t)download estimatedUpload:(unint64_t)upload queue:(id)queue block:(id)block
{
  v34 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  queueCopy = queue;
  blockCopy = block;
  v15 = blockCopy;
  if (!nameCopy)
  {
    v23 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v27 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsXPCActivityTimer.mm";
      v28 = 1024;
      v29 = 40;
      v30 = 2082;
      v31 = "[MapsSuggestionsXPCActivityTimer initWithName:estimatedDownload:estimatedUpload:queue:block:]";
      v32 = 2082;
      v33 = "nil == (name)";
      _os_log_impl(&dword_1C5126000, v23, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Name cannot be nil", buf, 0x26u);
    }

    goto LABEL_15;
  }

  if (!queueCopy)
  {
    v23 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v27 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsXPCActivityTimer.mm";
      v28 = 1024;
      v29 = 41;
      v30 = 2082;
      v31 = "[MapsSuggestionsXPCActivityTimer initWithName:estimatedDownload:estimatedUpload:queue:block:]";
      v32 = 2082;
      v33 = "nil == (queue)";
      _os_log_impl(&dword_1C5126000, v23, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Queue cannot be nil", buf, 0x26u);
    }

    goto LABEL_15;
  }

  if (!blockCopy)
  {
    v23 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v27 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsXPCActivityTimer.mm";
      v28 = 1024;
      v29 = 42;
      v30 = 2082;
      v31 = "[MapsSuggestionsXPCActivityTimer initWithName:estimatedDownload:estimatedUpload:queue:block:]";
      v32 = 2082;
      v33 = "nil == (block)";
      _os_log_impl(&dword_1C5126000, v23, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Block cannot be nil", buf, 0x26u);
    }

LABEL_15:

    selfCopy = 0;
    goto LABEL_16;
  }

  v25.receiver = self;
  v25.super_class = MapsSuggestionsXPCActivityTimer;
  v16 = [(MapsSuggestionsBaseTrigger *)&v25 initWithName:nameCopy queue:queueCopy];
  v17 = v16;
  if (v16)
  {
    v16->_estimatedDownloadInBytes = download;
    v16->_estimatedUploadInBytes = upload;
    v18 = _Block_copy(v15);
    block = v17->_block;
    v17->_block = v18;

    v20 = [@"com.apple." stringByAppendingString:nameCopy];
    activityIdentifier = v17->_activityIdentifier;
    v17->_activityIdentifier = v20;
  }

  self = v17;
  selfCopy = self;
LABEL_16:

  return selfCopy;
}

- (MapsSuggestionsXPCActivityTimer)initWithName:(id)name queue:(id)queue block:(id)block
{
  nameCopy = name;
  queueCopy = queue;
  blockCopy = block;
  Integer = GEOConfigGetInteger();
  v12 = [(MapsSuggestionsXPCActivityTimer *)self initWithName:nameCopy estimatedDownload:Integer estimatedUpload:GEOConfigGetInteger() queue:queueCopy block:blockCopy];

  return v12;
}

- (MapsSuggestionsXPCActivityTimer)initWithName:(id)name queue:(id)queue timerReturningBlock:(id)block
{
  v31 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  queueCopy = queue;
  blockCopy = block;
  v11 = blockCopy;
  if (!nameCopy)
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsXPCActivityTimer.mm";
      v25 = 1024;
      v26 = 71;
      v27 = 2082;
      v28 = "[MapsSuggestionsXPCActivityTimer initWithName:queue:timerReturningBlock:]";
      v29 = 2082;
      v30 = "nil == (name)";
      _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Name cannot be nil", location, 0x26u);
    }

    goto LABEL_15;
  }

  if (!queueCopy)
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsXPCActivityTimer.mm";
      v25 = 1024;
      v26 = 72;
      v27 = 2082;
      v28 = "[MapsSuggestionsXPCActivityTimer initWithName:queue:timerReturningBlock:]";
      v29 = 2082;
      v30 = "nil == (queue)";
      _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Queue cannot be nil", location, 0x26u);
    }

    goto LABEL_15;
  }

  if (!blockCopy)
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsXPCActivityTimer.mm";
      v25 = 1024;
      v26 = 73;
      v27 = 2082;
      v28 = "[MapsSuggestionsXPCActivityTimer initWithName:queue:timerReturningBlock:]";
      v29 = 2082;
      v30 = "nil == (timerReturningBlock)";
      _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Block cannot be nil", location, 0x26u);
    }

LABEL_15:

    selfCopy = 0;
    goto LABEL_16;
  }

  v23.receiver = self;
  v23.super_class = MapsSuggestionsXPCActivityTimer;
  v12 = [(MapsSuggestionsBaseTrigger *)&v23 initWithName:nameCopy queue:queueCopy];
  if (v12)
  {
    objc_initWeak(location, v12);
    v12->_estimatedDownloadInBytes = GEOConfigGetInteger();
    v12->_estimatedUploadInBytes = GEOConfigGetInteger();
    v13 = [@"com.apple." stringByAppendingString:nameCopy];
    activityIdentifier = v12->_activityIdentifier;
    v12->_activityIdentifier = v13;

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __74__MapsSuggestionsXPCActivityTimer_initWithName_queue_timerReturningBlock___block_invoke;
    v20[3] = &unk_1E81F5190;
    objc_copyWeak(&v22, location);
    v21 = v11;
    v15 = _Block_copy(v20);
    block = v12->_block;
    v12->_block = v15;

    objc_destroyWeak(&v22);
    objc_destroyWeak(location);
  }

  self = v12;
  selfCopy = self;
LABEL_16:

  return selfCopy;
}

void __74__MapsSuggestionsXPCActivityTimer_initWithName_queue_timerReturningBlock___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained triggerMyObservers];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsXPCActivityTimer.mm";
      v7 = 1026;
      v8 = 84;
      v9 = 2082;
      v10 = "[MapsSuggestionsXPCActivityTimer initWithName:queue:timerReturningBlock:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (void)scheduleWithTimeInterval:(double)interval leeway:(double)leeway
{
  dispatchQueue = [(MapsSuggestionsBaseTrigger *)self dispatchQueue];

  if (dispatchQueue)
  {
    dispatchQueue2 = [(MapsSuggestionsBaseTrigger *)self dispatchQueue];
    objc_initWeak(location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__MapsSuggestionsXPCActivityTimer_scheduleWithTimeInterval_leeway___block_invoke;
    v11[3] = &unk_1E81F51E0;
    objc_copyWeak(v13, location);
    v13[1] = *&interval;
    v13[2] = *&leeway;
    v12 = dispatchQueue2;
    v9 = dispatchQueue2;
    dispatch_async(v9, v11);

    objc_destroyWeak(v13);
    objc_destroyWeak(location);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "Looks like the dispatchQueue already went away. We are NOT setting a timer.", location, 2u);
    }
  }
}

void __67__MapsSuggestionsXPCActivityTimer_scheduleWithTimeInterval_leeway___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = MapsSuggestionsNowWithOffset(*(a1 + 48));
    v4 = *(WeakRetained + 6);
    *(WeakRetained + 6) = v3;

    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = WeakRetained;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "Scheduling Background Systems Task: %@", buf, 0xCu);
    }

    v6 = [MEMORY[0x1E698E4B8] sharedScheduler];
    [v6 deregisterTaskWithIdentifier:*(WeakRetained + 5)];

    v7 = [objc_alloc(MEMORY[0x1E698E478]) initWithIdentifier:*(WeakRetained + 5)];
    [v7 setScheduleAfter:*(a1 + 48)];
    [v7 setTrySchedulingBefore:*(a1 + 48) + *(a1 + 56)];
    [v7 setRequiresExternalPower:0];
    [v7 setPowerBudgeted:1];
    [v7 setShouldWakeDevice:1];
    [v7 setPriority:2];
    [v7 setRequiresNetworkConnectivity:1];
    [v7 setRequiresInexpensiveNetworkConnectivity:0];
    [v7 setNetworkDownloadSize:*(WeakRetained + 7)];
    [v7 setNetworkUploadSize:*(WeakRetained + 8)];
    v8 = [MEMORY[0x1E698E4B8] sharedScheduler];
    v9 = *(WeakRetained + 5);
    v10 = *(a1 + 32);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __67__MapsSuggestionsXPCActivityTimer_scheduleWithTimeInterval_leeway___block_invoke_132;
    v20[3] = &unk_1E81F51B8;
    objc_copyWeak(&v21, (a1 + 40));
    v11 = [v8 registerForTaskWithIdentifier:v9 usingQueue:v10 launchHandler:v20];

    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = @"No";
      if (v11)
      {
        v13 = @"Yes";
      }

      *buf = 138412290;
      v23 = v13;
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "Registered task? %@", buf, 0xCu);
    }

    v14 = [MEMORY[0x1E698E4B8] sharedScheduler];
    v19 = 0;
    v15 = [v14 submitTaskRequest:v7 error:&v19];
    v16 = v19;

    if ((v15 & 1) == 0)
    {
      v17 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = @"Unknown";
        if (v16)
        {
          v18 = v16;
        }

        *buf = 138412290;
        v23 = v18;
        _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_ERROR, "Failed to submit task with error: %@", buf, 0xCu);
      }
    }

    objc_destroyWeak(&v21);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v23 = "MapsSuggestionsXPCActivityTimer.mm";
      v24 = 1026;
      v25 = 107;
      v26 = 2082;
      v27 = "[MapsSuggestionsXPCActivityTimer scheduleWithTimeInterval:leeway:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __67__MapsSuggestionsXPCActivityTimer_scheduleWithTimeInterval_leeway___block_invoke_132(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 4);
    if (v6)
    {
      (*(v6 + 16))();
    }

    [v3 setTaskCompleted];
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsXPCActivityTimer.mm";
      v10 = 1026;
      v11 = 137;
      v12 = 2082;
      v13 = "[MapsSuggestionsXPCActivityTimer scheduleWithTimeInterval:leeway:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf1 went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

- (void)unschedule
{
  objc_initWeak(&location, self);
  dispatchQueue = [(MapsSuggestionsBaseTrigger *)self dispatchQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__MapsSuggestionsXPCActivityTimer_unschedule__block_invoke;
  v4[3] = &unk_1E81F5208;
  objc_copyWeak(&v5, &location);
  dispatch_async(dispatchQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __45__MapsSuggestionsXPCActivityTimer_unschedule__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = 138412290;
      v5 = WeakRetained;
      _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "Unscheduling XPC timer: %@", &v4, 0xCu);
    }

    v3 = [MEMORY[0x1E698E4B8] sharedScheduler];
    [v3 deregisterTaskWithIdentifier:*(WeakRetained + 5)];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsXPCActivityTimer.mm";
      v6 = 1026;
      v7 = 163;
      v8 = 2082;
      v9 = "[MapsSuggestionsXPCActivityTimer unschedule]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (NSString)description
{
  objectForJSON = [(MapsSuggestionsXPCActivityTimer *)self objectForJSON];
  v3 = NSStringFromMapsSuggestionsJSON(objectForJSON, 1u);

  return v3;
}

- (id)objectForJSON
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"name";
  uniqueName = [(MapsSuggestionsBaseTrigger *)self uniqueName];
  v4 = MSg::jsonFor(uniqueName);
  v13[0] = v4;
  v12[1] = @"activityIdentifier";
  v5 = MSg::jsonFor(self->_activityIdentifier);
  v13[1] = v5;
  v12[2] = @"firesInSec";
  firesAt = self->_firesAt;
  if (firesAt)
  {
    v7 = MapsSuggestionsSecondsTo(firesAt);
    v9 = MSg::jsonFor(v8, v7);
  }

  else
  {
    v9 = &unk_1F4470E28;
  }

  v13[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (firesAt)
  {
  }

  return v10;
}

@end