@interface MNTraceBookmarkRecorder
- (MNTraceBookmarkRecorder)initWithTrace:(id)trace;
- (void)recordBookmarkAtTime:(double)time withScreenshotData:(id)data completionHandler:(id)handler;
@end

@implementation MNTraceBookmarkRecorder

- (void)recordBookmarkAtTime:(double)time withScreenshotData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  writeGroup = [(MNTrace *)self->_trace writeGroup];
  writeQueue = [(MNTrace *)self->_trace writeQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__MNTraceBookmarkRecorder_recordBookmarkAtTime_withScreenshotData_completionHandler___block_invoke;
  v14[3] = &unk_1E842EF28;
  v15 = dataCopy;
  selfCopy = self;
  timeCopy = time;
  v17 = handlerCopy;
  v12 = handlerCopy;
  v13 = dataCopy;
  dispatch_group_async(writeGroup, writeQueue, v14);
}

void __85__MNTraceBookmarkRecorder_recordBookmarkAtTime_withScreenshotData_completionHandler___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (*(a1 + 32))
  {
    v2 = "INSERT INTO bookmarks (timestamp, screenshot_data) VALUES (?, ?)";
  }

  else
  {
    v2 = "INSERT INTO bookmarks (timestamp) VALUES (?)";
  }

  if (sqlite3_prepare_v2([*(*(a1 + 40) + 8) db], v2, -1, &ppStmt, 0))
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
LABEL_12:
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_ERROR, "Error recording trace bookmark", buf, 2u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  sqlite3_bind_double(ppStmt, 1, *(a1 + 56));
  v4 = *(a1 + 32);
  if (v4)
  {
    sqlite3_bind_blob(ppStmt, 2, [v4 bytes], objc_msgSend(*(a1 + 32), "length"), 0);
  }

  sqlite3_step(ppStmt);
  if (sqlite3_finalize(ppStmt))
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      goto LABEL_12;
    }

LABEL_13:
  }

  v5 = *(a1 + 48);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_22;
  }

  *buf = 0;
  if (sqlite3_prepare_v2([*(*(a1 + 40) + 8) db], "SELECT Count(*) FROM bookmarks", -1, buf, 0))
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "Error counting trace bookmarks", v11, 2u);
    }

    v7 = 0;
  }

  else
  {
    sqlite3_step(*buf);
    v7 = sqlite3_column_int(*buf, 0);
    if (!sqlite3_finalize(*buf))
    {
      goto LABEL_20;
    }

    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "Error counting trace bookmarks", v11, 2u);
    }
  }

LABEL_20:
  v5 = *(a1 + 48);
LABEL_22:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__MNTraceBookmarkRecorder_recordBookmarkAtTime_withScreenshotData_completionHandler___block_invoke_10;
  block[3] = &unk_1E842F5A8;
  block[4] = *(a1 + 40);
  v9 = v5;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __85__MNTraceBookmarkRecorder_recordBookmarkAtTime_withScreenshotData_completionHandler___block_invoke_10(void *a1)
{
  [*(a1[4] + 8) setBookmarks:0];
  [*(a1[4] + 8) setBookmarkImages:0];
  result = a1[5];
  if (result)
  {
    v3 = a1[6];
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (MNTraceBookmarkRecorder)initWithTrace:(id)trace
{
  traceCopy = trace;
  v10.receiver = self;
  v10.super_class = MNTraceBookmarkRecorder;
  v6 = [(MNTraceBookmarkRecorder *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_trace, trace);
    v8 = v7;
  }

  return v7;
}

@end