@interface _EFBackgroundProcessingAssertion
- (BOOL)_iterateFilesPerformingAction:(id)a3 error:(id *)a4;
- (BOOL)_takeAssertionForDuration:(double)a3 error:(id *)a4;
- (BOOL)isActive;
- (_DWORD)initWithProtectedFiles:(_DWORD *)a1;
- (uint64_t)incrementAssertionForDuration:(void *)a3 outResetCount:(double)a4 error:;
- (void)_checkIfExpired;
- (void)decrementAssertionWithResetCount:(uint64_t)a1;
@end

@implementation _EFBackgroundProcessingAssertion

- (_DWORD)initWithProtectedFiles:(_DWORD *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = _EFBackgroundProcessingAssertion;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 5, a2);
      a1[8] = 0;
    }
  }

  return a1;
}

- (BOOL)isActive
{
  if (!a1)
  {
    return 0;
  }

  os_unfair_lock_lock((a1 + 32));
  [a1 _checkIfExpired];
  v2 = *(a1 + 16) != 0;
  os_unfair_lock_unlock((a1 + 32));
  return v2;
}

- (uint64_t)incrementAssertionForDuration:(void *)a3 outResetCount:(double)a4 error:
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v17 = 0;
    goto LABEL_16;
  }

  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:?];
  os_unfair_lock_lock((a1 + 32));
  [a1 _checkIfExpired];
  v9 = *(a1 + 16);
  *(a1 + 16) = v9 + 1;
  if (v9 && ([v8 timeIntervalSinceDate:*(a1 + 8)], v10 <= 10.0))
  {
    v12 = 0;
  }

  else
  {
    v23 = 0;
    v11 = [a1 _takeAssertionForDuration:&v23 error:a4];
    v12 = v23;
    v13 = _ef_log_EFProtectedFile();
    v14 = v13;
    if (!v11)
    {
      v16 = v13;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 40);
        v22 = [v12 ef_publicDescription];
        *buf = 134218498;
        v25 = a4;
        v26 = 2114;
        v27 = v21;
        v28 = 2114;
        v29 = v22;
        _os_log_error_impl(&dword_1C6152000, v16, OS_LOG_TYPE_ERROR, "Failed to take assertion of duration %f on files %{public}@ due to error: %{public}@", buf, 0x20u);
      }

      v17 = 0;
      --*(a1 + 16);
      goto LABEL_13;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      *buf = 134218242;
      v25 = a4;
      v26 = 2114;
      v27 = v15;
      _os_log_impl(&dword_1C6152000, v14, OS_LOG_TYPE_DEFAULT, "Took assertion of duration %f on files %{public}@", buf, 0x16u);
    }

    objc_storeStrong((a1 + 8), v8);
  }

  v17 = 1;
LABEL_13:
  *a2 = *(a1 + 24);
  os_unfair_lock_unlock((a1 + 32));
  if (a3)
  {
    v18 = v12;
    *a3 = v12;
  }

LABEL_16:
  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)decrementAssertionWithResetCount:(uint64_t)a1
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 32));
    if (*(a1 + 24) == a2)
    {
      v4 = *(a1 + 16);
      if (!v4)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        [v14 handleFailureInMethod:sel_decrementAssertionWithResetCount_ object:a1 file:@"EFProtectedFile.m" lineNumber:312 description:@"Decrementing assertion when count is already 0"];

        v4 = *(a1 + 16);
      }

      v5 = v4 - 1;
      *(a1 + 16) = v5;
      if (!v5)
      {
        v15 = 0;
        v6 = [a1 _releaseAssertionWithError:&v15];
        v7 = v15;
        v8 = _ef_log_EFProtectedFile();
        v9 = v8;
        if (v6)
        {
          [(_EFBackgroundProcessingAssertion *)v8 decrementAssertionWithResetCount:a1];
        }

        else
        {
          v10 = v8;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v11 = *(a1 + 40);
            v12 = [v7 ef_publicDescription];
            [(_EFBackgroundProcessingAssertion *)v11 decrementAssertionWithResetCount:v12, buf, v10];
          }
        }
      }
    }

    os_unfair_lock_unlock((a1 + 32));
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)_takeAssertionForDuration:(double)a3 error:(id *)a4
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68___EFBackgroundProcessingAssertion__takeAssertionForDuration_error___block_invoke;
  v5[3] = &__block_descriptor_48_e8_i12__0i8l;
  v5[4] = 0;
  v5[5] = (a3 * 1000000000.0);
  return [(_EFBackgroundProcessingAssertion *)self _iterateFilesPerformingAction:v5 error:a4];
}

- (void)_checkIfExpired
{
  if ([(NSDate *)self->_currentExpiry ef_isEarlierThanNow])
  {
    v3 = self->_resetCount + 1;
    self->_count = 0;
    self->_resetCount = v3;
  }
}

- (BOOL)_iterateFilesPerformingAction:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  if (self)
  {
    protectedFiles = self->_protectedFiles;
  }

  else
  {
    protectedFiles = 0;
  }

  v7 = protectedFiles;
  v8 = 0;
  v9 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v9)
  {
    v11 = 1;
    goto LABEL_18;
  }

  v10 = *v24;
  v21 = *MEMORY[0x1E696A798];
  v11 = 1;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v24 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v23 + 1) + 8 * i);
      v22 = 0;
      v14 = [(_EFProtectedFile *)v13 fileDescriptorWithError:?];
      v15 = v22;
      if (v14)
      {
        if (v5[2](v5, v14) != -1)
        {
          goto LABEL_14;
        }

        v16 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:v21 code:*__error() userInfo:0];

        v15 = v16;
      }

      if (v8)
      {
        v11 = 0;
      }

      else
      {
        v15 = v15;
        v11 = 0;
        v8 = v15;
      }

LABEL_14:
    }

    v9 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v9);
LABEL_18:

  if (a4)
  {
    v17 = v8;
    *a4 = v8;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v11 & 1;
}

- (void)decrementAssertionWithResetCount:(uint8_t *)buf .cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C6152000, log, OS_LOG_TYPE_ERROR, "Failed to release assertion on files %{public}@ due to error: %{public}@", buf, 0x16u);
}

- (void)decrementAssertionWithResetCount:(NSObject *)a1 .cold.2(NSObject *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a2 + 40);
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1C6152000, a1, OS_LOG_TYPE_DEFAULT, "Released assertion on files %{public}@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end