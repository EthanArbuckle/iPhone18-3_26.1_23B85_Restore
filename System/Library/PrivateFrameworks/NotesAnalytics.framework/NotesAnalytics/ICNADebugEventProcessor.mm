@interface ICNADebugEventProcessor
- (ICNADebugEventProcessor)init;
- (NSDictionary)sessionDataPerSessionID;
- (NSString)storagePath;
- (void)cleanupExistingFiles;
- (void)processEvent:(id)a3;
- (void)storeSession:(id)a3;
- (void)storeToLocalFile:(id)a3;
@end

@implementation ICNADebugEventProcessor

- (ICNADebugEventProcessor)init
{
  v14 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = ICNADebugEventProcessor;
  v2 = [(ICNADebugEventProcessor *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_get_global_queue(0, 0);
    v5 = dispatch_queue_create_with_target_V2("ICNADebugEventProcessor.sessionsQueue", v3, v4);
    sessionsQueue = v2->_sessionsQueue;
    v2->_sessionsQueue = v5;

    v7 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [(ICNADebugEventProcessor *)v2 storagePath];
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&dword_25C6BF000, v7, OS_LOG_TYPE_INFO, "ICNADebugEventProcessor file path: %@", buf, 0xCu);
    }

    [(ICNADebugEventProcessor *)v2 cleanupExistingFiles];
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)cleanupExistingFiles
{
  v3 = [(ICNADebugEventProcessor *)self storagePath];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v2 fileExistsAtPath:v3])
  {
    [v2 removeItemAtPath:v3 error:0];
  }
}

- (NSString)storagePath
{
  storagePath = self->_storagePath;
  if (!storagePath)
  {
    v4 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    v5 = [v4 lastObject];
    v6 = [v5 stringByAppendingPathComponent:@"AppAnalyticsDebug.json"];
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    if (([v7 fileExistsAtPath:v6] & 1) == 0)
    {
      [v7 createFileAtPath:v6 contents:0 attributes:0];
    }

    [(ICNADebugEventProcessor *)self setStoragePath:v6];

    storagePath = self->_storagePath;
  }

  return storagePath;
}

- (void)storeToLocalFile:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 aa_jsonData];
  v6 = [(ICNADebugEventProcessor *)self storagePath];
  v7 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v6];
  if (v7 || ([MEMORY[0x277CCAA00] defaultManager], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "createFileAtPath:contents:attributes:", v6, 0, 0), v8, objc_msgSend(MEMORY[0x277CCA9F8], "fileHandleForWritingAtPath:", v6), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    [v7 seekToEndOfFile];
    [v7 writeData:v5];
    [v7 closeFile];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)sessionDataPerSessionID
{
  sessionDataPerSessionID = self->_sessionDataPerSessionID;
  if (!sessionDataPerSessionID)
  {
    self->_sessionDataPerSessionID = MEMORY[0x277CBEC10];

    sessionDataPerSessionID = self->_sessionDataPerSessionID;
  }

  return sessionDataPerSessionID;
}

- (void)storeSession:(id)a3
{
  v4 = a3;
  sessionsQueue = self->_sessionsQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__ICNADebugEventProcessor_storeSession___block_invoke;
  v7[3] = &unk_2799AF050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(sessionsQueue, v7);
}

void __40__ICNADebugEventProcessor_storeSession___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionDataPerSessionID];
  v5 = [v2 mutableCopy];

  v3 = [*(a1 + 40) sessionData];
  v4 = [*(a1 + 40) identifier];
  [v5 setObject:v3 forKeyedSubscript:v4];

  [*(a1 + 32) setSessionDataPerSessionID:v5];
}

- (void)processEvent:(id)a3
{
  v30[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 json];
  v6 = [v5 toDataWithOptions:8 :0];

  v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:0];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = MEMORY[0x277CBEC10];
  v9 = [v8 objectForKeyedSubscript:@"eventData"];
  v10 = [v9 objectForKeyedSubscript:@"sessionID"];

  if (v10)
  {
    sessionsQueue = self->_sessionsQueue;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __40__ICNADebugEventProcessor_processEvent___block_invoke;
    v19 = &unk_2799AF078;
    v22 = &v23;
    v20 = self;
    v21 = v10;
    dispatch_sync(sessionsQueue, &v16);
  }

  v12 = [v4 name];
  v13 = v12;
  if (v12)
  {
    v29[0] = @"name";
    v29[1] = @"type";
    v30[0] = v12;
    v30[1] = @"event";
    v29[2] = @"sessionData";
    v29[3] = @"data";
    v30[2] = v24[5];
    v30[3] = v8;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];
    [(ICNADebugEventProcessor *)self storeToLocalFile:v14];
  }

  _Block_object_dispose(&v23, 8);
  v15 = *MEMORY[0x277D85DE8];
}

void __40__ICNADebugEventProcessor_processEvent___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) sessionDataPerSessionID];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)storeToLocalFile:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_25C6BF000, log, OS_LOG_TYPE_ERROR, "exception while writing to disk: %@", buf, 0xCu);
}

@end