@interface MADStateHandler
+ (id)sharedStateHandler;
- (MADStateHandler)init;
- (unint64_t)currentTimeoutRiskAndStartTime:(id *)a3;
- (void)addBreadcrumb:(id)a3;
- (void)dumpBreadcrumps;
- (void)enterKnownTimeoutRisk:(unint64_t)a3;
- (void)exitKnownTimeoutRisk;
@end

@implementation MADStateHandler

- (MADStateHandler)init
{
  v9.receiver = self;
  v9.super_class = MADStateHandler;
  v2 = [(MADStateHandler *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.mediaanalysis.MADStateHandler", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    breadcrumbs = v2->_breadcrumbs;
    v2->_breadcrumbs = v5;

    timeoutRiskEntryTime = v2->_timeoutRiskEntryTime;
    v2->_knownRiskState = 0;
    v2->_timeoutRiskEntryTime = 0;
  }

  return v2;
}

+ (id)sharedStateHandler
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__MADStateHandler_sharedStateHandler__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedStateHandler_onceToken != -1)
  {
    dispatch_once(&sharedStateHandler_onceToken, block);
  }

  v2 = sharedStateHandler_instance;

  return v2;
}

void __37__MADStateHandler_sharedStateHandler__block_invoke()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = sharedStateHandler_instance;
  sharedStateHandler_instance = v0;
}

- (void)addBreadcrumb:(id)a3
{
  v18[1] = &v19;
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v19];

  v18[0] = 0;
  pthread_threadid_np(0, v18);
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E695DF00] now];
  if (stringFromDate_onceToken != -1)
  {
    [MADStateHandler addBreadcrumb:];
  }

  v9 = [stringFromDate_dateFormatter stringFromDate:v8];
  v10 = v18[0];
  v11 = qos_class_self();
  v12 = VCPMAQoSDescription(v11);
  v13 = [v7 stringWithFormat:@"%@: Thread 0x%-8llx QoS %@ %@", v9, v10, v12, v6];

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__MADStateHandler_addBreadcrumb___block_invoke;
  block[3] = &unk_1E834C3D0;
  block[4] = self;
  v17 = v13;
  v15 = v13;
  dispatch_sync(queue, block);
}

uint64_t __33__MADStateHandler_addBreadcrumb___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) count] >= 0x64)
  {
    [*(*(a1 + 32) + 16) removeObjectAtIndex:0];
  }

  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);

  return [v3 addObject:v2];
}

- (void)dumpBreadcrumps
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__MADStateHandler_dumpBreadcrumps__block_invoke;
  block[3] = &unk_1E834C010;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __34__MADStateHandler_dumpBreadcrumps__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2 = [*(*(a1 + 32) + 16) count];
    *buf = 67109120;
    LODWORD(v15) = v2;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADStateHandler] Dumping %u breadcrumbs...", buf, 8u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(*(a1 + 32) + 16);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    v7 = MEMORY[0x1E69E9C10];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v15 = v9;
          _os_log_impl(&dword_1C9B70000, v7, OS_LOG_TYPE_DEFAULT, "[MADStateHandler]\t%@", buf, 0xCu);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)enterKnownTimeoutRisk:(unint64_t)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__MADStateHandler_enterKnownTimeoutRisk___block_invoke;
  v4[3] = &unk_1E8350240;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(queue, v4);
}

void __41__MADStateHandler_enterKnownTimeoutRisk___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 24) = *(a1 + 40);
  v2 = [MEMORY[0x1E695DF00] now];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

- (void)exitKnownTimeoutRisk
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__MADStateHandler_exitKnownTimeoutRisk__block_invoke;
  block[3] = &unk_1E834C010;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __39__MADStateHandler_exitKnownTimeoutRisk__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 0;
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;
}

- (unint64_t)currentTimeoutRiskAndStartTime:(id *)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__MADStateHandler_currentTimeoutRiskAndStartTime___block_invoke;
  block[3] = &unk_1E8350110;
  block[5] = &v7;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void *__50__MADStateHandler_currentTimeoutRiskAndStartTime___block_invoke(void *result)
{
  v1 = result;
  if (result[6])
  {
    result = *(result[4] + 32);
    *v1[6] = result;
  }

  *(*(v1[5] + 8) + 24) = *(v1[4] + 24);
  return result;
}

@end