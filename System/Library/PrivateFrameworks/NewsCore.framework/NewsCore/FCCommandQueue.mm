@interface FCCommandQueue
- (BOOL)_isEmpty;
- (FCCommandQueue)initWithContext:(id)context storeDirectory:(id)directory storeFilename:(id)filename urgency:(int64_t)urgency suspended:(BOOL)suspended delegate:(id)delegate;
- (NSArray)enqueuedCommands;
- (id)initWithContext:(void *)context persistentStorePath:(void *)path urgency:(int)urgency suspended:(void *)suspended delegate:;
- (uint64_t)_qualityOfServiceForNextCommand;
- (void)_addCommand:(void *)command saveCompletion:;
- (void)_executeNextCommand;
- (void)_savePendingCommands;
- (void)_scheduleCommandExecution;
- (void)activityObservingApplicationDidEnterBackground;
- (void)addCommand:(id)command;
- (void)addCommand:(id)command saveCompletion:(id)completion;
- (void)clear;
- (void)command:(id)command didFinishWithStatus:(unint64_t)status;
- (void)dealloc;
- (void)flushWithCompletionHandler:(id)handler;
- (void)networkReachabilityDidChange:(id)change;
- (void)resume;
@end

@implementation FCCommandQueue

void __31__FCCommandQueue__loadFromDisk__block_invoke(uint64_t a1)
{
  v32[8] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[2];
  }

  v3 = v2;
  v4 = [v3 appActivityMonitor];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 16);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 backgroundTaskable];
  v8 = [FCKeyValueStoreSavePolicy appBackgroundPolicyWithActivityMonitor:v4 backgroundTaskable:v7];

  v9 = [FCKeyValueStore alloc];
  v10 = *(a1 + 32);
  if (v10)
  {
    v10 = v10[3];
  }

  v11 = v10;
  v12 = [v11 lastPathComponent];
  v13 = *(a1 + 32);
  if (v13)
  {
    v13 = v13[3];
  }

  v14 = v13;
  v15 = [v14 stringByDeletingLastPathComponent];
  v16 = [(FCKeyValueStore *)v9 initWithName:v12 directory:v15 version:3 options:0 classRegistry:0 migrator:0 savePolicy:v8];
  v17 = *(a1 + 32);
  if (v17)
  {
    objc_storeStrong((v17 + 40), v16);
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    v19 = v18[5];
    v20 = [v19 objectForKey:@"pendingCommands"];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __48__FCCommandQueue__deserializeCommandsFromStore___block_invoke;
    v32[3] = &unk_1E7C40270;
    v32[4] = v18;
    v18 = [v20 fc_arrayByTransformingWithBlock:v32];
  }

  else
  {
    v19 = 0;
  }

  v21 = *(a1 + 32);
  if (v21)
  {
    v22 = *(v21 + 88);
  }

  else
  {
    v22 = 0;
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __31__FCCommandQueue__loadFromDisk__block_invoke_2;
  v30[3] = &unk_1E7C36C58;
  v30[4] = v21;
  v23 = v18;
  v31 = v23;
  [v22 performWithLockSync:v30];
  for (i = [v23 count]; i; --i)
  {
    v26 = *(a1 + 32);
    if (v26)
    {
      v25 = *(v26 + 96);
    }

    else
    {
      v25 = 0;
    }

    dispatch_group_enter(v25);
  }

  v27 = *(a1 + 32);
  if (v27)
  {
    v28 = *(v27 + 96);
  }

  else
  {
    v28 = 0;
  }

  dispatch_group_leave(v28);
  [(FCCommandQueue *)*(a1 + 32) _scheduleCommandExecution];

  v29 = *MEMORY[0x1E69E9840];
}

void __33__FCCommandQueue_sharedWorkQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v1 = dispatch_queue_create("FCCommandQueue.workQueue", v0);
  v2 = _MergedGlobals_166;
  _MergedGlobals_166 = v1;

  v3 = _MergedGlobals_166;
  v4 = FCCommandQueueWorkQueueUnique;
  v5 = FCCommandQueueWorkQueueUnique;

  dispatch_queue_set_specific(v3, v4, v5, 0);
}

- (void)clear
{
  [MEMORY[0x1E696AF00] isMainThread];
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__FCCommandQueue_clear__block_invoke;
  block[3] = &unk_1E7C36EA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (uint64_t)_qualityOfServiceForNextCommand
{
  if (result)
  {
    v1 = result;
    WeakRetained = objc_loadWeakRetained((result + 56));
    if (WeakRetained && (v3 = WeakRetained, v4 = objc_loadWeakRetained((v1 + 56)), v5 = objc_opt_respondsToSelector(), v4, v3, (v5 & 1) != 0))
    {
      v6 = objc_loadWeakRetained((v1 + 56));
      v7 = [v6 qualityOfServiceForNextCommandInCommandQueue:v1];

      return v7;
    }

    else
    {
      return 9;
    }
  }

  return result;
}

- (void)_executeNextCommand
{
  v26 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = FCCommandQueueWorkQueueUnique;
    if (dispatch_get_specific(FCCommandQueueWorkQueueUnique) != v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"accessing private structures outside the work queue"];
      v20 = 136315906;
      v21 = "[FCCommandQueue _executeNextCommand]";
      v22 = 2080;
      v23 = "FCCommandQueue.m";
      v24 = 1024;
      *v25 = 319;
      *&v25[4] = 2114;
      *&v25[6] = v19;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v20, 0x26u);
    }

    if ((*(self + 8) & 1) == 0 && (*(self + 9) & 1) == 0 && [*(self + 80) count])
    {
      *(self + 9) = 1;
      dispatch_group_enter(*(self + 104));
      v3 = *(self + 80);
      firstObject = [v3 firstObject];

      v5 = FCCommandQueueLog;
      if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(self + 32);
        v7 = v6;
        v8 = v5;
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v20 = 138543874;
        v21 = v6;
        v22 = 2114;
        v23 = v10;
        v24 = 2048;
        *v25 = firstObject;
        _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@> will execute next command: <%{public}@ %p>", &v20, 0x20u);
      }

      v11 = *(self + 16);
      [firstObject executeWithContext:v11 delegate:self qualityOfService:[(FCCommandQueue *)self _qualityOfServiceForNextCommand]];
      goto LABEL_19;
    }

    v12 = FCCommandQueueLog;
    if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(self + 32);
      if (*(self + 8))
      {
        v14 = @"true";
      }

      else
      {
        v14 = @"false";
      }

      if (*(self + 9))
      {
        v15 = @"true";
      }

      else
      {
        v15 = @"false";
      }

      v16 = *(self + 80);
      v11 = v13;
      firstObject = v12;
      v17 = [v16 count];
      v20 = 138544130;
      v21 = v13;
      v22 = 2114;
      v23 = v14;
      v24 = 2114;
      *v25 = v15;
      *&v25[8] = 2048;
      *&v25[10] = v17;
      _os_log_impl(&dword_1B63EF000, firstObject, OS_LOG_TYPE_DEFAULT, "<%{public}@> not executing next command because suspended=%{public}@, executing=%{public}@, commandCount=%lu", &v20, 0x2Au);

LABEL_19:
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_scheduleCommandExecution
{
  v26 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = FCCommandQueueWorkQueueUnique;
    if (dispatch_get_specific(FCCommandQueueWorkQueueUnique) != v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"accessing private structures outside the work queue"];
      *buf = 136315906;
      v19 = "[FCCommandQueue _scheduleCommandExecution]";
      v20 = 2080;
      v21 = "FCCommandQueue.m";
      v22 = 1024;
      v23 = 286;
      v24 = 2114;
      v25 = v16;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v3 = *(self + 48);
    if (v3 == 2)
    {
      [(FCCommandQueue *)self _executeNextCommand];
    }

    else
    {
      v4 = *(self + 72);
      if (!v4)
      {
        v5 = *(self + 64);
        v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v5);
        v7 = *(self + 72);
        *(self + 72) = v6;

        v8 = *(self + 72);
        _qualityOfServiceForNextCommand = [(FCCommandQueue *)self _qualityOfServiceForNextCommand];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __43__FCCommandQueue__scheduleCommandExecution__block_invoke;
        block[3] = &unk_1E7C36EA0;
        block[4] = self;
        v10 = FCBlockWithQualityOfService(_qualityOfServiceForNextCommand, block);
        dispatch_source_set_event_handler(v8, v10);

        dispatch_resume(*(self + 72));
        v3 = *(self + 48);
        v4 = *(self + 72);
      }

      v11 = v4;
      if (v3 == 1)
      {
        v12 = 5000000000;
      }

      else
      {
        v12 = 60000000000;
      }

      if (v3 == 1)
      {
        v13 = 2000000000;
      }

      else
      {
        v13 = 15000000000;
      }

      v14 = dispatch_time(0, v12);
      dispatch_source_set_timer(v11, v14, 0xFFFFFFFFFFFFFFFFLL, v13);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __31__FCCommandQueue__loadFromDisk__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[10];
  }

  return [v1 fc_safelyAddObjectsFromArray:*(a1 + 40)];
}

void __23__FCCommandQueue_clear__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((!v2 || (*(v2 + 8) & 1) == 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"should only clear the command queue when it's suspended"];
    *buf = 136315906;
    v13 = "[FCCommandQueue clear]_block_invoke";
    v14 = 2080;
    v15 = "FCCommandQueue.m";
    v16 = 1024;
    v17 = 250;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  while (1)
  {
    v3 = *(a1 + 32);
    v4 = v3 ? *(v3 + 80) : 0;
    v5 = [v4 count];
    isa = *(a1 + 32);
    if (!v5)
    {
      break;
    }

    if (isa)
    {
      isa = isa[12].isa;
    }

    dispatch_group_leave(isa);
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 88);
    }

    else
    {
      v8 = 0;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __23__FCCommandQueue_clear__block_invoke_33;
    v11[3] = &unk_1E7C36EA0;
    v11[4] = v7;
    [v8 performWithLockSync:v11];
  }

  [(FCCommandQueue *)isa _savePendingCommands];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_savePendingCommands
{
  v11 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = FCCommandQueueWorkQueueUnique;
    if (dispatch_get_specific(FCCommandQueueWorkQueueUnique) != v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"accessing private structures outside the work queue"];
      *v9 = 136315906;
      *&v9[4] = "[FCCommandQueue _savePendingCommands]";
      *&v9[12] = 2080;
      *&v9[14] = "FCCommandQueue.m";
      *&v9[22] = 1024;
      LODWORD(v10) = 394;
      WORD2(v10) = 2114;
      *(&v10 + 6) = v8;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v9, 0x26u);
    }

    v3 = *(self + 40);
    if (v3)
    {
      v4 = *(self + 80);
      *v9 = MEMORY[0x1E69E9820];
      *&v9[8] = 3221225472;
      *&v9[16] = __45__FCCommandQueue__serializeCommands_toStore___block_invoke;
      *&v10 = &unk_1E7C40C08;
      *(&v10 + 1) = self;
      v5 = v3;
      v6 = [v4 fc_arrayByTransformingWithBlock:v9];
      [v5 setObject:v6 forKey:@"pendingCommands"];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)initWithContext:(void *)context persistentStorePath:(void *)path urgency:(int)urgency suspended:(void *)suspended delegate:
{
  v42 = *MEMORY[0x1E69E9840];
  v12 = a2;
  contextCopy = context;
  suspendedCopy = suspended;
  if (self)
  {
    if (!v12 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "context != nil"];
      *buf = 136315906;
      *&buf[4] = "[FCCommandQueue initWithContext:persistentStorePath:urgency:suspended:delegate:]";
      *&buf[12] = 2080;
      *&buf[14] = "FCCommandQueue.m";
      *&buf[22] = 1024;
      LODWORD(v41) = 89;
      WORD2(v41) = 2114;
      *(&v41 + 6) = v38;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v39.receiver = self;
    v39.super_class = FCCommandQueue;
    v15 = objc_msgSendSuper2(&v39, sel_init);
    self = v15;
    if (v15)
    {
      if (v12)
      {
        objc_storeStrong(v15 + 2, a2);
        v16 = [contextCopy copy];
        v17 = self[3];
        self[3] = v16;

        lastPathComponent = [contextCopy lastPathComponent];
        stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
        v20 = self[4];
        self[4] = stringByDeletingPathExtension;

        array = [MEMORY[0x1E695DF70] array];
        v22 = self[10];
        self[10] = array;

        v23 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
        v24 = self[11];
        self[11] = v23;

        v25 = dispatch_group_create();
        v26 = self[12];
        self[12] = v25;

        v27 = dispatch_group_create();
        v28 = self[13];
        self[13] = v27;

        self[6] = path;
        *(self + 8) = urgency;
        objc_storeWeak(self + 7, suspendedCopy);
        v29 = FCCommandQueueLog;
        if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
        {
          v30 = @"resumed";
          v31 = self[4];
          if (urgency)
          {
            v30 = @"suspended";
          }

          *buf = 138543618;
          *&buf[4] = v31;
          *&buf[12] = 2114;
          *&buf[14] = v30;
          v32 = v29;
          _os_log_impl(&dword_1B63EF000, v32, OS_LOG_TYPE_DEFAULT, "<%{public}@> command queue created in %{public}@ state", buf, 0x16u);
        }

        objc_opt_self();
        if (qword_1EDB274A0 != -1)
        {
          dispatch_once(&qword_1EDB274A0, &__block_literal_global_80);
        }

        objc_storeStrong(self + 8, _MergedGlobals_166);
        networkReachability = [v12 networkReachability];
        [networkReachability addObserver:self];

        appActivityMonitor = [v12 appActivityMonitor];
        [appActivityMonitor addObserver:self];

        [MEMORY[0x1E696AF00] isMainThread];
        if (self[3])
        {
          dispatch_group_enter(self[12]);
          v35 = self[8];
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __31__FCCommandQueue__loadFromDisk__block_invoke;
          *&v41 = &unk_1E7C36EA0;
          *(&v41 + 1) = self;
          dispatch_async(v35, buf);
        }
      }

      else
      {

        self = 0;
      }
    }
  }

  v36 = *MEMORY[0x1E69E9840];
  return self;
}

- (FCCommandQueue)initWithContext:(id)context storeDirectory:(id)directory storeFilename:(id)filename urgency:(int64_t)urgency suspended:(BOOL)suspended delegate:(id)delegate
{
  suspendedCopy = suspended;
  v31 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  filenameCopy = filename;
  delegateCopy = delegate;
  contextCopy = context;
  if (![filenameCopy length] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"expecting a valid storeFilename"];
    v23 = 136315906;
    v24 = "[FCCommandQueue initWithContext:storeDirectory:storeFilename:urgency:suspended:delegate:]";
    v25 = 2080;
    v26 = "FCCommandQueue.m";
    v27 = 1024;
    v28 = 137;
    v29 = 2114;
    v30 = v22;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v23, 0x26u);
  }

  v18 = [directoryCopy stringByAppendingPathComponent:filenameCopy];
  v19 = [(FCCommandQueue *)&self->super.isa initWithContext:contextCopy persistentStorePath:v18 urgency:urgency suspended:suspendedCopy delegate:delegateCopy];

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)dealloc
{
  if (self)
  {
    context = self->_context;
  }

  else
  {
    context = 0;
  }

  v4 = context;
  networkReachability = [(FCCloudContext *)v4 networkReachability];
  [networkReachability removeObserver:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v7.receiver = self;
  v7.super_class = FCCommandQueue;
  [(FCCommandQueue *)&v7 dealloc];
}

- (void)resume
{
  v11 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  v3 = FCCommandQueueLog;
  if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      name = self->_name;
    }

    else
    {
      name = 0;
    }

    *buf = 138543362;
    v10 = name;
    v5 = v3;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@> will resume", buf, 0xCu);
  }

  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__FCCommandQueue_resume__block_invoke;
  block[3] = &unk_1E7C36EA0;
  block[4] = self;
  dispatch_async(workQueue, block);
  v7 = *MEMORY[0x1E69E9840];
}

void __24__FCCommandQueue_resume__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 && (*(v2 + 8) & 1) != 0)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't resume the command queue unless it's suspended"];
    v6 = 136315906;
    v7 = "[FCCommandQueue resume]_block_invoke";
    v8 = 2080;
    v9 = "FCCommandQueue.m";
    v10 = 1024;
    v11 = 160;
    v12 = 2114;
    v13 = v5;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v6, 0x26u);

    v2 = *(a1 + 32);
    if (v2)
    {
      goto LABEL_5;
    }

LABEL_8:
    v3 = 0;
    goto LABEL_6;
  }

  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_5:
  *(v2 + 8) = 0;
  v3 = *(a1 + 32);
LABEL_6:
  [(FCCommandQueue *)v3 _scheduleCommandExecution];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)addCommand:(id)command
{
  v4 = MEMORY[0x1E696AF00];
  commandCopy = command;
  [v4 isMainThread];
  [(FCCommandQueue *)self _addCommand:commandCopy saveCompletion:0];
}

- (void)_addCommand:(void *)command saveCompletion:
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  commandCopy = command;
  if (self && v5)
  {
    v7 = FCCommandQueueLog;
    if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(self + 32);
      v9 = v8;
      v10 = v7;
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138543874;
      v20 = v8;
      v21 = 2114;
      v22 = v12;
      v23 = 2048;
      v24 = v5;
      _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@> will add command <%{public}@ %p>", buf, 0x20u);
    }

    dispatch_group_enter(*(self + 96));
    v13 = *(self + 64);
    _qualityOfServiceForNextCommand = [(FCCommandQueue *)self _qualityOfServiceForNextCommand];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __45__FCCommandQueue__addCommand_saveCompletion___block_invoke;
    v16[3] = &unk_1E7C38FF0;
    v16[4] = self;
    v17 = v5;
    v18 = commandCopy;
    FCDispatchAsyncWithQualityOfService(v13, _qualityOfServiceForNextCommand, v16);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)addCommand:(id)command saveCompletion:(id)completion
{
  v6 = MEMORY[0x1E696AF00];
  completionCopy = completion;
  commandCopy = command;
  [v6 isMainThread];
  [(FCCommandQueue *)self _addCommand:commandCopy saveCompletion:completionCopy];
}

void __45__FCCommandQueue__addCommand_saveCompletion___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[10];
  }

  v3 = v2;
  v4 = [v3 lastObject];

  v5 = *(a1 + 32);
  if (!v5)
  {
LABEL_6:
    if (!v4)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  if (*(v5 + 9) == 1)
  {
    LOBYTE(v5) = [*(v5 + 80) count] == 1;
    goto LABEL_6;
  }

  LOBYTE(v5) = 0;
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v5 & 1) != 0 || ![v4 canCoalesceWithCommand:*(a1 + 40)])
  {
LABEL_18:
    v19 = *(a1 + 32);
    if (v19)
    {
      v20 = *(v19 + 88);
    }

    else
    {
      v20 = 0;
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __45__FCCommandQueue__addCommand_saveCompletion___block_invoke_27;
    v27[3] = &unk_1E7C36C58;
    v27[4] = v19;
    v28 = *(a1 + 40);
    [v20 performWithLockSync:v27];

    goto LABEL_21;
  }

  v6 = FCCommandQueueLog;
  if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 32);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(a1 + 40);
    v10 = v8;
    v11 = v6;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = *(a1 + 40);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    *buf = 138544386;
    v30 = v8;
    v31 = 2114;
    v32 = v13;
    v33 = 2048;
    v34 = v14;
    v35 = 2114;
    v36 = v16;
    v37 = 2048;
    v38 = v4;
    _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "<%{public}@> will coalesce command <%{public}@ %p> with <%{public}@ %p>", buf, 0x34u);
  }

  [v4 coalesceWithCommand:*(a1 + 40)];
  v17 = *(a1 + 32);
  if (v17)
  {
    v18 = *(v17 + 96);
  }

  else
  {
    v18 = 0;
  }

  dispatch_group_leave(v18);
LABEL_21:
  [(FCCommandQueue *)*(a1 + 32) _savePendingCommands];
  [(FCCommandQueue *)*(a1 + 32) _scheduleCommandExecution];
  v25 = *(a1 + 48);
  if (v25)
  {
    (*(v25 + 16))(v25, v21, v22, v23, v24);
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t __45__FCCommandQueue__addCommand_saveCompletion___block_invoke_27(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[10];
  }

  return [v1 addObject:*(a1 + 40)];
}

- (void)flushWithCompletionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  [MEMORY[0x1E696AF00] isMainThread];
  if (handlerCopy)
  {
    if ([(FCCommandQueue *)self _isEmpty])
    {
      v5 = FCCommandQueueLog;
      if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
      {
        if (self)
        {
          name = self->_name;
        }

        else
        {
          name = 0;
        }

        *buf = 138543362;
        v16 = name;
        v7 = v5;
        _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@> no need to flush command queue because it's empty", buf, 0xCu);
      }

      handlerCopy[2](handlerCopy, 1);
    }

    else
    {
      if (self)
      {
        workQueue = self->_workQueue;
      }

      else
      {
        workQueue = 0;
      }

      v10 = workQueue;
      _qualityOfServiceForNextCommand = [(FCCommandQueue *)self _qualityOfServiceForNextCommand];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __45__FCCommandQueue_flushWithCompletionHandler___block_invoke;
      v13[3] = &unk_1E7C37BC0;
      v13[4] = self;
      v14 = handlerCopy;
      FCDispatchAsyncWithQualityOfService(v10, _qualityOfServiceForNextCommand, v13);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completionHandler != nil"];
    *buf = 136315906;
    v16 = "[FCCommandQueue flushWithCompletionHandler:]";
    v17 = 2080;
    v18 = "FCCommandQueue.m";
    v19 = 1024;
    v20 = 217;
    v21 = 2114;
    v22 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isEmpty
{
  if (result)
  {
    v1 = result;
    [MEMORY[0x1E696AF00] isMainThread];
    v2 = *(v1 + 96);

    return FCDispatchGroupIsEmpty(v2);
  }

  return result;
}

void __45__FCCommandQueue_flushWithCompletionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = FCCommandQueueLog;
  if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3[4];
      v3 = v3[10];
      v5 = v4;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    v6 = v3;
    v7 = v5;
    v8 = v2;
    *buf = 138543618;
    v16 = v4;
    v17 = 2048;
    v18 = [v6 count];
    _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@> need to flush %lu commands from the command queue", buf, 0x16u);
  }

  [(FCCommandQueue *)*(a1 + 32) _executeNextCommand];
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 104);
  }

  else
  {
    v10 = 0;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45__FCCommandQueue_flushWithCompletionHandler___block_invoke_29;
  v13[3] = &unk_1E7C37778;
  v11 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v11;
  dispatch_group_notify(v10, MEMORY[0x1E69E96A0], v13);

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __45__FCCommandQueue_flushWithCompletionHandler___block_invoke_29(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [(FCCommandQueue *)*(a1 + 32) _isEmpty];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

uint64_t __23__FCCommandQueue_clear__block_invoke_33(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 80);
  }

  else
  {
    v2 = 0;
  }

  return [v2 removeObjectAtIndex:0];
}

- (NSArray)enqueuedCommands
{
  [MEMORY[0x1E696AF00] isMainThread];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__38;
  v12 = __Block_byref_object_dispose__38;
  v13 = 0;
  if (self)
  {
    pendingCommandsLock = self->_pendingCommandsLock;
  }

  else
  {
    pendingCommandsLock = 0;
  }

  v4 = pendingCommandsLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__FCCommandQueue_enqueuedCommands__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(NFUnfairLock *)v4 performWithLockSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __34__FCCommandQueue_enqueuedCommands__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[10];
  }

  v6 = v2;
  v3 = [v6 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __43__FCCommandQueue__scheduleCommandExecution__block_invoke(uint64_t a1)
{
  [(FCCommandQueue *)*(a1 + 32) _executeNextCommand];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 72);
  }

  else
  {
    v3 = 0;
  }

  dispatch_source_cancel(v3);
  v4 = *(a1 + 32);
  if (v4)
  {

    objc_storeStrong((v4 + 72), 0);
  }
}

void __48__FCCommandQueue__applicationDidEnterBackground__block_invoke_2(uint64_t a1)
{
  [(FCCommandQueue *)*(a1 + 32) _executeNextCommand];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 104);
  }

  else
  {
    v3 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__FCCommandQueue__applicationDidEnterBackground__block_invoke_3;
  block[3] = &unk_1E7C37408;
  block[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = v4;
  v8 = v5;
  dispatch_group_notify(v3, MEMORY[0x1E69E96A0], block);
}

void __48__FCCommandQueue__applicationDidEnterBackground__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 40);
  }

  else
  {
    v3 = 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__FCCommandQueue__applicationDidEnterBackground__block_invoke_4;
  v6[3] = &unk_1E7C3A3A0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = v4;
  v8 = v5;
  [v3 saveWithCompletionHandler:v6];
}

void __48__FCCommandQueue__applicationDidEnterBackground__block_invoke_4(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__FCCommandQueue__applicationDidEnterBackground__block_invoke_5;
  v4[3] = &unk_1E7C3A3A0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  FCPerformBlockOnMainThread(v4);
}

- (void)command:(id)command didFinishWithStatus:(unint64_t)status
{
  v27 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  v7 = FCCommandQueueLog;
  if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      name = self->_name;
    }

    else
    {
      name = 0;
    }

    v9 = name;
    v10 = v7;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = FCCommandStatusDescription(status);
    *buf = 138544130;
    v20 = name;
    v21 = 2114;
    v22 = v12;
    v23 = 2048;
    v24 = commandCopy;
    v25 = 2114;
    v26 = v13;
    _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@> finished executing command: <%{public}@ %p> with status: %{public}@", buf, 0x2Au);
  }

  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  v15 = workQueue;
  _qualityOfServiceForNextCommand = [(FCCommandQueue *)self _qualityOfServiceForNextCommand];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __46__FCCommandQueue_command_didFinishWithStatus___block_invoke;
  v18[3] = &unk_1E7C3C970;
  v18[4] = self;
  v18[5] = status;
  FCDispatchAsyncWithQualityOfService(v15, _qualityOfServiceForNextCommand, v18);

  v17 = *MEMORY[0x1E69E9840];
}

void __46__FCCommandQueue_command_didFinishWithStatus___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    *(v2 + 9) = 0;
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v4 = FCCommandQueueLog;
        if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
        {
          v5 = *(a1 + 32);
          if (v5)
          {
            v5 = *(v5 + 32);
          }

          *buf = 138543362;
          v29 = v5;
          v6 = v4;
          _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@> will try to execute the next command when the network is available", buf, 0xCu);
        }
      }

      goto LABEL_28;
    }

    goto LABEL_19;
  }

  if (v3 == 3)
  {
LABEL_19:
    v16 = FCCommandQueueLog;
    v17 = os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT);
    v18 = *(a1 + 32);
    if (v17)
    {
      if (v18)
      {
        v18 = *(v18 + 32);
      }

      *buf = 138543362;
      v29 = v18;
      v19 = v16;
      _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "<%{public}@> will move on to the next command", buf, 0xCu);

      v18 = *(a1 + 32);
    }

    if (v18)
    {
      v20 = *(v18 + 96);
    }

    else
    {
      v20 = 0;
    }

    dispatch_group_leave(v20);
    v21 = *(a1 + 32);
    if (v21)
    {
      v22 = *(v21 + 88);
    }

    else
    {
      v22 = 0;
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __46__FCCommandQueue_command_didFinishWithStatus___block_invoke_51;
    v26[3] = &unk_1E7C36EA0;
    v26[4] = v21;
    [v22 performWithLockSync:v26];
    [(FCCommandQueue *)*(a1 + 32) _savePendingCommands];
    [(FCCommandQueue *)*(a1 + 32) _executeNextCommand];
    goto LABEL_28;
  }

  if (v3 == 2)
  {
    v7 = FCCommandQueueLog;
    if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      if (v8)
      {
        v8 = *(v8 + 32);
      }

      *buf = 138543362;
      v29 = v8;
      v9 = v7;
      _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "<%{public}@> will try to execute the next command in 60s since we got a retry-later error", buf, 0xCu);
    }

    v10 = dispatch_time(0, 60000000000);
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 64);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = [(FCCommandQueue *)v11 _qualityOfServiceForNextCommand];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__FCCommandQueue_command_didFinishWithStatus___block_invoke_50;
    block[3] = &unk_1E7C36EA0;
    block[4] = *(a1 + 32);
    v15 = FCBlockWithQualityOfService(v14, block);
    dispatch_after(v10, v13, v15);
  }

LABEL_28:
  v23 = *(a1 + 32);
  if (v23)
  {
    v24 = *(v23 + 104);
  }

  else
  {
    v24 = 0;
  }

  dispatch_group_leave(v24);
  v25 = *MEMORY[0x1E69E9840];
}

uint64_t __46__FCCommandQueue_command_didFinishWithStatus___block_invoke_51(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 80);
  }

  else
  {
    v2 = 0;
  }

  return [v2 removeObjectAtIndex:0];
}

id __45__FCCommandQueue__serializeCommands_toStore___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __48__FCCommandQueue__deserializeCommandsFromStore___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = MEMORY[0x1E696ACD0];
    v3 = a2;
    v4 = [v2 nf_securelyUnarchiveObjectOfClass:objc_opt_class() withData:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)networkReachabilityDidChange:(id)change
{
  if ([change isNetworkReachable])
  {
    if (self)
    {
      workQueue = self->_workQueue;
    }

    else
    {
      workQueue = 0;
    }

    v5 = workQueue;
    _qualityOfServiceForNextCommand = [(FCCommandQueue *)self _qualityOfServiceForNextCommand];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__FCCommandQueue_networkReachabilityDidChange___block_invoke;
    v7[3] = &unk_1E7C36EA0;
    v7[4] = self;
    FCDispatchAsyncWithQualityOfService(v5, _qualityOfServiceForNextCommand, v7);
  }
}

- (void)activityObservingApplicationDidEnterBackground
{
  if (self)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    networkReachability = [(FCCloudContext *)self->_context networkReachability];
    isNetworkReachable = [networkReachability isNetworkReachable];

    if (isNetworkReachable)
    {
      v5 = self->_context;
      backgroundTaskable = [(FCCloudContext *)v5 backgroundTaskable];

      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __48__FCCommandQueue__applicationDidEnterBackground__block_invoke;
      v15[3] = &unk_1E7C3A3A0;
      v7 = backgroundTaskable;
      v16 = v7;
      v17 = &v18;
      v8 = [v7 fc_beginBackgroundTaskWithName:@"Command Queue Flush" expirationHandler:v15];
      v19[3] = v8;
      v9 = self->_workQueue;
      _qualityOfServiceForNextCommand = [(FCCommandQueue *)self _qualityOfServiceForNextCommand];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __48__FCCommandQueue__applicationDidEnterBackground__block_invoke_2;
      v12[3] = &unk_1E7C37408;
      v12[4] = self;
      v11 = v7;
      v13 = v11;
      v14 = &v18;
      FCDispatchAsyncWithQualityOfService(v9, _qualityOfServiceForNextCommand, v12);

      _Block_object_dispose(&v18, 8);
    }
  }
}

@end