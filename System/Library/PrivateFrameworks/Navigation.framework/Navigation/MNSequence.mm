@interface MNSequence
- (MNSequence)initWithQueue:(id)a3;
- (void)_endSequence;
- (void)_finalizeSequenceWithPreviousStepResult:(id)a3;
- (void)_runNextStepWithPreviousStepResult:(id)a3;
- (void)addStep:(id)a3;
- (void)dealloc;
- (void)setSequenceFinalizeHandler:(id)a3;
- (void)start;
@end

@implementation MNSequence

- (void)_endSequence
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MNGetMNSequenceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = self;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "%p Sequence ended.", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_finalizeSequenceWithPreviousStepResult:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  finalizeHandler = self->_finalizeHandler;
  v6 = MNGetMNSequenceLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (finalizeHandler)
  {
    if (v7)
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = self;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%p Sequence steps finished. Calling finalizeHandler.", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__1729;
    v23 = __Block_byref_object_dispose__1730;
    v24 = 0;
    stepsIsolater = self->_stepsIsolater;
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __54__MNSequence__finalizeSequenceWithPreviousStepResult___block_invoke;
    v17 = &unk_1E8430960;
    v18 = self;
    p_buf = &buf;
    geo_isolate_sync();
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__MNSequence__finalizeSequenceWithPreviousStepResult___block_invoke_2;
    block[3] = &unk_1E842FD80;
    block[4] = self;
    v13 = &buf;
    v12 = v4;
    dispatch_async(queue, block);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (v7)
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = self;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%p Sequence steps finished with no finalizeHandler.", &buf, 0xCu);
    }

    [(MNSequence *)self _endSequence];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __54__MNSequence__finalizeSequenceWithPreviousStepResult___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 24));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __54__MNSequence__finalizeSequenceWithPreviousStepResult___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MNGetMNSequenceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v9 = 134217984;
    v10 = v3;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_INFO, "%p Running finalizeHandler.", &v9, 0xCu);
  }

  v4 = *(a1 + 40);
  (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
  v5 = MNGetMNSequenceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v9 = 134217984;
    v10 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "%p Finished finalizeHandler.", &v9, 0xCu);
  }

  result = [*(a1 + 32) _endSequence];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_runNextStepWithPreviousStepResult:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1729;
  v29 = __Block_byref_object_dispose__1730;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0x7FFFFFFFFFFFFFFFLL;
  stepsIsolater = self->_stepsIsolater;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __49__MNSequence__runNextStepWithPreviousStepResult___block_invoke;
  v17 = &unk_1E842A548;
  v18 = self;
  v19 = &v25;
  v20 = &v21;
  geo_isolate_sync();
  if (v26[5])
  {
    v6 = MNGetMNSequenceLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = v22[3];
      *buf = 134218240;
      v32 = self;
      v33 = 1024;
      v34 = v7;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "%p Starting step %d.", buf, 0x12u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__MNSequence__runNextStepWithPreviousStepResult___block_invoke_20;
    block[3] = &unk_1E842A8F0;
    block[4] = self;
    v12 = &v21;
    v13 = &v25;
    v11 = v4;
    dispatch_async(queue, block);
  }

  else
  {
    [(MNSequence *)self _finalizeSequenceWithPreviousStepResult:v4];
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  v9 = *MEMORY[0x1E69E9840];
}

void __49__MNSequence__runNextStepWithPreviousStepResult___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) firstObject];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(a1[6] + 8) + 24) = *(a1[4] + 48);
  if (*(*(a1[5] + 8) + 40))
  {
    [*(a1[4] + 16) removeObjectAtIndex:0];
    ++*(a1[4] + 48);
  }
}

uint64_t __49__MNSequence__runNextStepWithPreviousStepResult___block_invoke_20(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = MNGetMNSequenceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v4 = *(*(a1[6] + 8) + 24);
    *buf = 134218240;
    v15 = v3;
    v16 = 1024;
    v17 = v4;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_INFO, "%p Running step %d.", buf, 0x12u);
  }

  v5 = *(*(a1[7] + 8) + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__MNSequence__runNextStepWithPreviousStepResult___block_invoke_21;
  v13[3] = &unk_1E842A570;
  v6 = a1[5];
  v7 = a1[6];
  v13[4] = a1[4];
  v13[5] = v7;
  result = (*(v5 + 16))(v5, v6, v13, v8, v9, v10);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void __49__MNSequence__runNextStepWithPreviousStepResult___block_invoke_21(uint64_t a1, void *a2, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = MNGetMNSequenceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = *(*(*(a1 + 40) + 8) + 24);
    v11 = 134218496;
    v12 = v7;
    v13 = 1024;
    v14 = v8;
    v15 = 1024;
    v16 = a3;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "%p Finished step %d. shouldContinue: %d", &v11, 0x18u);
  }

  v9 = *(a1 + 32);
  if (a3)
  {
    [v9 _runNextStepWithPreviousStepResult:v5];
  }

  else
  {
    [v9 _finalizeSequenceWithPreviousStepResult:v5];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)start
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_isStarted)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MNSequence has already been started."];
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v8 = 136316162;
      v9 = "[MNSequence start]";
      v10 = 2080;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/MNSequence.m";
      v12 = 1024;
      v13 = 74;
      v14 = 2080;
      v15 = "NO";
      v16 = 2112;
      v17 = v2;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v8, 0x30u);
    }
  }

  else
  {
    v5 = MNGetMNSequenceLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(NSMutableArray *)self->_steps count];
      v8 = 134218240;
      v9 = self;
      v10 = 1024;
      LODWORD(v11) = v6;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "%p Starting sequence with %d steps.", &v8, 0x12u);
    }

    self->_isStarted = 1;
    [(MNSequence *)self _runNextStepWithPreviousStepResult:0];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setSequenceFinalizeHandler:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_isStarted)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot modify MNSequence after it has already started."];
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v10 = 136316162;
      *&v10[4] = "[MNSequence setSequenceFinalizeHandler:]";
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/MNSequence.m";
      v13 = 1024;
      v14 = 63;
      v15 = 2080;
      v16 = "NO";
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", v10, 0x30u);
    }
  }

  else
  {
    *v10 = self->_stepsIsolater;
    _geo_isolate_lock();
    v7 = _Block_copy(v4);
    finalizeHandler = self->_finalizeHandler;
    self->_finalizeHandler = v7;

    _geo_isolate_unlock();
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)addStep:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_isStarted)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot add steps to MNSequence after it has already started."];
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v14 = 136316162;
      *&v14[4] = "[MNSequence addStep:]";
      v15 = 2080;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/MNSequence.m";
      v17 = 1024;
      v18 = 47;
      v19 = 2080;
      v20 = "NO";
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", v14, 0x30u);
    }
  }

  else if (v4)
  {
    *v14 = self->_stepsIsolater;
    _geo_isolate_lock();
    steps = self->_steps;
    if (!steps)
    {
      v9 = [MEMORY[0x1E695DF70] array];
      v10 = self->_steps;
      self->_steps = v9;

      steps = self->_steps;
    }

    v11 = [v5 copy];
    v12 = _Block_copy(v11);
    [(NSMutableArray *)steps addObject:v12];

    _geo_isolate_unlock();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  if (!self->_isStarted)
  {
    v3 = MNGetMNSequenceLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v8 = self;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_ERROR, "%p MNSequence was deallocated without ever being started. Did you forget to call start?", buf, 0xCu);
    }

    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v8 = "[MNSequence dealloc]";
      v9 = 2080;
      v10 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/MNSequence.m";
      v11 = 1024;
      v12 = 40;
      v13 = 2080;
      v14 = "NO";
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
    }
  }

  v6.receiver = self;
  v6.super_class = MNSequence;
  [(MNSequence *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (MNSequence)initWithQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MNSequence;
  v6 = [(MNSequence *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = geo_isolater_create();
    stepsIsolater = v7->_stepsIsolater;
    v7->_stepsIsolater = v8;
  }

  return v7;
}

@end