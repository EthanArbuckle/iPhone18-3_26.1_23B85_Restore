@interface MMCSBoundedQueue
- (MMCSBoundedQueue)initWithUpperBound:(unint64_t)a3;
- (unint64_t)_sync_aggregateByteCount;
- (void)addData:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)removeNextDataWithBlock:(id)a3;
@end

@implementation MMCSBoundedQueue

- (MMCSBoundedQueue)initWithUpperBound:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = MMCSBoundedQueue;
  v4 = [(MMCSBoundedQueue *)&v8 init];
  if (v4)
  {
    v5 = objc_opt_new();
    entries = v4->_entries;
    v4->_entries = v5;

    v4->_boundsExceeded = dispatch_semaphore_create(0);
    v4->_bytesUpperBound = a3;
    v4->_isValid = 1;
  }

  return v4;
}

- (void)dealloc
{
  [(MMCSBoundedQueue *)self invalidate];
  dispatch_release(self->_boundsExceeded);
  v3.receiver = self;
  v3.super_class = MMCSBoundedQueue;
  [(MMCSBoundedQueue *)&v3 dealloc];
}

- (unint64_t)_sync_aggregateByteCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  entries = self->_entries;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__MMCSBoundedQueue__sync_aggregateByteCount__block_invoke;
  v5[3] = &unk_279844D58;
  v5[4] = &v6;
  [(NSMutableArray *)entries enumerateObjectsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __44__MMCSBoundedQueue__sync_aggregateByteCount__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 length];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (void)addData:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_isValid)
  {
    while (1)
    {
      v5 = self->_entries;
      objc_sync_enter(v5);
      v6 = [(MMCSBoundedQueue *)self _sync_aggregateByteCount];
      objc_sync_exit(v5);

      bytesUpperBound = self->_bytesUpperBound;
      v8 = [v4 length];
      bytesErrorLevel = self->_bytesErrorLevel;
      if (bytesErrorLevel)
      {
        v10 = v8 + v6;
        if (v8 + v6 > bytesErrorLevel)
        {
          v11 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = self->_bytesErrorLevel;
            *buf = 134218240;
            v16 = v10;
            v17 = 2048;
            v18 = v12;
            _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_DEFAULT, "data size %llu exceeded error level %llu", buf, 0x16u);
          }
        }
      }

      if (v6 <= bytesUpperBound)
      {
        break;
      }

      dispatch_semaphore_wait(self->_boundsExceeded, 0xFFFFFFFFFFFFFFFFLL);
      if (!self->_isValid)
      {
        goto LABEL_11;
      }
    }

    if (self->_isValid)
    {
      v13 = self->_entries;
      objc_sync_enter(v13);
      [(NSMutableArray *)self->_entries addObject:v4];
      objc_sync_exit(v13);
    }
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeNextDataWithBlock:(id)a3
{
  v10 = a3;
  if (!v10)
  {
    [MMCSBoundedQueue removeNextDataWithBlock:];
  }

  v4 = self->_entries;
  objc_sync_enter(v4);
  v5 = [(NSMutableArray *)self->_entries firstObject];
  objc_sync_exit(v4);

  if (v5)
  {
    v10[2](v10, v5);
    v6 = self->_entries;
    objc_sync_enter(v6);
    v7 = [(NSMutableArray *)self->_entries firstObject];
    if (v7 != v5)
    {
      __assert_rtn("[MMCSBoundedQueue removeNextDataWithBlock:]", "MMCSBoundedQueue.m", 91, "[_entries firstObject] == firstData");
    }

    v8 = [(MMCSBoundedQueue *)self _sync_isFull];
    [(NSMutableArray *)self->_entries removeObjectAtIndex:0];
    if (v8)
    {
      v9 = [(MMCSBoundedQueue *)self _sync_isFull];
      objc_sync_exit(v6);

      if (!v9)
      {
        dispatch_semaphore_signal(self->_boundsExceeded);
      }
    }

    else
    {
      objc_sync_exit(v6);
    }
  }
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_isValid)
  {
    obj->_isValid = 0;
    objc_sync_exit(obj);

    boundsExceeded = obj->_boundsExceeded;

    dispatch_semaphore_signal(boundsExceeded);
  }

  else
  {
    objc_sync_exit(obj);
  }
}

@end