@interface _SYCountedSemaphore
- (BOOL)_waitSemaphoreWithTimeout:(double)timeout;
- (_SYCountedSemaphore)initWithCount:(int64_t)count;
- (void)_ensureSemaphore;
- (void)_signalSemaphore;
- (void)invalidate;
- (void)signal;
@end

@implementation _SYCountedSemaphore

- (_SYCountedSemaphore)initWithCount:(int64_t)count
{
  countCopy = count;
  v8.receiver = self;
  v8.super_class = _SYCountedSemaphore;
  v4 = [(_SYCountedSemaphore *)&v8 init];
  v5 = v4;
  if (v4)
  {
    atomic_store(countCopy, &v4->_count);
    v6 = v4;
  }

  return v5;
}

- (void)invalidate
{
  v11 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_1(&dword_1DF835000, v3, v4, "Error destroying Mach semaphore: %d (%{public}s)", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_ensureSemaphore
{
  v11 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_1(&dword_1DF835000, v3, v4, "Failed to create semaphore! %d (%{public}s)", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)signal
{
  if ((atomic_fetch_add_explicit(&self->_count, 1u, memory_order_release) & 0x80000000) != 0)
  {
    [(_SYCountedSemaphore *)self _signalSemaphore];
  }
}

- (BOOL)_waitSemaphoreWithTimeout:(double)timeout
{
  atomic_load(&self->_signals);
  v3 = atomic_load(&self->_invalidated);
  if (v3)
  {
LABEL_2:
    LOBYTE(v4) = 0;
    return v4;
  }

  v7 = (timeout * 1000000000.0);
  while (1)
  {
    v8 = atomic_load(&self->_signals);
    while (v8)
    {
      v9 = v8;
      atomic_compare_exchange_strong_explicit(&self->_signals, &v9, v8 - 1, memory_order_relaxed, memory_order_relaxed);
      v10 = v9 == v8;
      v8 = v9;
      if (v10)
      {
        LOBYTE(v4) = 1;
        return v4;
      }
    }

    [(_SYCountedSemaphore *)self _ensureSemaphore];
    if (timeout >= 0.0)
    {
      if (timeout != 0.0)
      {
        if (v7 == -1)
        {
          goto LABEL_10;
        }

        if (v7)
        {
          do
          {
            v16 = atomic_load(&self->_sem_port);
            v21.tv_sec = v7 / 0x3B9ACA00;
            v21.tv_nsec = v7 % 0x3B9ACA00;
            v17 = semaphore_timedwait(v16, v21);
          }

          while (v17 == 14);
          if (!v17)
          {
            goto LABEL_12;
          }

          if (v17 != 49)
          {
            if (_sync_log_facilities_pred != -1)
            {
              [SYIncomingSyncAllObjectsSession _continueProcessing];
            }

            v18 = _sync_log_facilities;
            v4 = os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_FAULT);
            if (v4)
            {
              [_SYCountedSemaphore _waitSemaphoreWithTimeout:v18];
              goto LABEL_2;
            }

            return v4;
          }
        }
      }

      v14 = atomic_load(&self->_count);
      while ((v14 & 0x80000000) != 0)
      {
        v15 = v14;
        atomic_compare_exchange_strong_explicit(&self->_count, &v15, v14 + 1, memory_order_relaxed, memory_order_relaxed);
        v10 = v15 == v14;
        v14 = v15;
        if (v10)
        {
          goto LABEL_2;
        }
      }
    }

    do
    {
LABEL_10:
      v11 = atomic_load(&self->_sem_port);
      v12 = MEMORY[0x1E12E1490](v11);
    }

    while (v12 == 14);
    if (v12)
    {
      break;
    }

LABEL_12:
    LOBYTE(v4) = 0;
    v13 = atomic_load(&self->_invalidated);
    if (v13)
    {
      return v4;
    }
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v19 = _sync_log_facilities;
  v4 = os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_FAULT);
  if (v4)
  {
    [_SYCountedSemaphore _waitSemaphoreWithTimeout:v19];
    goto LABEL_2;
  }

  return v4;
}

- (void)_signalSemaphore
{
  atomic_fetch_add_explicit(&self->_signals, 1u, memory_order_relaxed);
  [(_SYCountedSemaphore *)self _ensureSemaphore];
  v3 = atomic_load(&self->_sem_port);
  if (MEMORY[0x1E12E1460](v3))
  {
    _os_assumes_log();
  }
}

- (void)_waitSemaphoreWithTimeout:(void *)a1 .cold.2(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1;
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_1(&dword_1DF835000, v3, v4, "Failed to wait on semaphore, but it didn't time out or abort: %d (%{public}s)", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_waitSemaphoreWithTimeout:(void *)a1 .cold.4(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1;
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_1(&dword_1DF835000, v3, v4, "Error draining semaphore: %d (%{public}s)", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

@end