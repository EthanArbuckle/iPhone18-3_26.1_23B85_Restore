@interface CLRunLoopSiloThread
- (CLRunLoopSiloThread)init;
- (CLRunLoopSiloThread)initWithCurrentThread;
- (CLRunLoopSiloThread)initWithRunLoop:(__CFRunLoop *)loop;
- (void)dealloc;
@end

@implementation CLRunLoopSiloThread

- (CLRunLoopSiloThread)initWithCurrentThread
{
  v8.receiver = self;
  v8.super_class = CLRunLoopSiloThread;
  v2 = [(CLRunLoopSiloThread *)&v8 init];
  if (v2)
  {
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    underlyingThread = v2->_underlyingThread;
    v2->_underlyingThread = currentThread;

    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    underlyingRunLoop = v2->_underlyingRunLoop;
    v2->_underlyingRunLoop = currentRunLoop;

    v2->_threadId = pthread_self();
    v2->_shouldCancelThread = 0;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_shouldCancelThread)
  {
    CFRunLoopStop([(NSRunLoop *)self->_underlyingRunLoop getCFRunLoop]);
    [(NSThread *)self->_underlyingThread cancel];
  }

  v3.receiver = self;
  v3.super_class = CLRunLoopSiloThread;
  [(CLRunLoopSiloThread *)&v3 dealloc];
}

- (CLRunLoopSiloThread)init
{
  v20.receiver = self;
  v20.super_class = CLRunLoopSiloThread;
  v2 = [(CLRunLoopSiloThread *)&v20 init];
  if (!v2)
  {
    goto LABEL_11;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1DF8090CC;
  v18 = sub_1DF809104;
  v19 = dispatch_semaphore_create(0);
  v3 = objc_alloc(MEMORY[0x1E696AF00]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1DF80FD54;
  v11[3] = &unk_1E86C8320;
  v2 = v2;
  v12 = v2;
  v13 = &v14;
  v4 = [v3 initWithBlock:v11];
  underlyingThread = v2->_underlyingThread;
  v2->_underlyingThread = v4;

  [(NSThread *)v2->_underlyingThread start];
  v6 = dispatch_semaphore_wait(v15[5], 0xFFFFFFFFFFFFFFFFLL);
  if (v6)
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
    }

    v7 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_FAULT, "CLRunLoopSilo initialization timed out", v10, 2u);
    }

    v2 = 0;
  }

  else
  {
    v2->_shouldCancelThread = 1;
  }

  _Block_object_dispose(&v14, 8);
  if (v6)
  {
    v8 = 0;
  }

  else
  {
LABEL_11:
    v2 = v2;
    v8 = v2;
  }

  return v8;
}

- (CLRunLoopSiloThread)initWithRunLoop:(__CFRunLoop *)loop
{
  v20.receiver = self;
  v20.super_class = CLRunLoopSiloThread;
  v4 = [(CLRunLoopSiloThread *)&v20 init];
  if (!v4)
  {
    goto LABEL_11;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1DF8090CC;
  v18 = sub_1DF809104;
  v19 = dispatch_semaphore_create(0);
  v5 = *MEMORY[0x1E695E8D0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1DF810000;
  block[3] = &unk_1E86C8320;
  v4 = v4;
  v12 = v4;
  v13 = &v14;
  CFRunLoopPerformBlock(loop, v5, block);
  v6 = dispatch_semaphore_wait(v15[5], 0xFFFFFFFFFFFFFFFFLL);
  if (v6)
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
    }

    v7 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_FAULT, "CLRunLoopSilo initialization timed out", v10, 2u);
    }

    v4 = 0;
  }

  else
  {
    v4->_shouldCancelThread = 0;
  }

  _Block_object_dispose(&v14, 8);
  if (v6)
  {
    v8 = 0;
  }

  else
  {
LABEL_11:
    v4 = v4;
    v8 = v4;
  }

  return v8;
}

@end