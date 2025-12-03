@interface NSObject(LockingAdditions)
+ (uint64_t)mf_clearLocks;
- (BOOL)_mf_ntsIsLocked;
- (uint64_t)_mf_checkToAllowExclusiveLocksWithLock:()LockingAdditions;
- (uint64_t)_mf_checkToAllowLock:()LockingAdditions;
- (uint64_t)_mf_checkToAllowStrictProgressionWithLock:()LockingAdditions;
- (uint64_t)_mf_ntsCheckToAllowLock:()LockingAdditions;
- (uint64_t)mf_lock;
- (uint64_t)mf_lockWithPriority;
- (uint64_t)mf_tryLock;
- (uint64_t)mf_tryLockWithPriority;
- (uint64_t)mf_unlock;
- (unint64_t)_mf_checkToAllowOrderingWithLock:()LockingAdditions;
- (void)_mf_dumpLockCallStacks:()LockingAdditions ordering:;
- (void)_mf_lockOrderingForType:()LockingAdditions;
@end

@implementation NSObject(LockingAdditions)

- (uint64_t)mf_lock
{
  pthread_mutex_lock(&sMutex);
  [self _mf_ntsCheckToAllowLock:self];
  v2 = _MFFindObjectLock(self, 1);

  return _MFAcquireObjectLock(v2);
}

- (uint64_t)mf_unlock
{
  v28 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&sMutex);
  v2 = sFirstLock;
  if (!sFirstLock)
  {
    goto LABEL_14;
  }

  do
  {
    if (v2[1] == self)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v2 = *v2;
    if (v2)
    {
      v4 = v3 == 0;
    }

    else
    {
      v4 = 0;
    }
  }

  while (v4);
  if (v3)
  {
    if (pthread_self() == *(v3 + 16))
    {
      v14 = *(v3 + 72);
      if ((v14 & 0x7FFF) != 0)
      {
        v15 = (v14 + 0x7FFF) & 0x7FFF;
        if (v14 < 0)
        {
          *(v3 + 72) = (v14 + 0x7FFF) | 0x8000;
          if (v15)
          {
            goto LABEL_17;
          }

          v21 = *(v3 + 8);
          if (_mfCallStackLoggingEnabled())
          {
            v22 = objc_alloc_init(MEMORY[0x1E696AAC8]);
            objc_setAssociatedObject(v21, @"MFLock Call Stack Symbols", 0, 0x301);
            [v22 drain];
          }

          v23 = *(v3 + 80);
          if (v23 && CFArrayGetCount(v23))
          {
            *(v3 + 16) = 0;
            pthread_cond_broadcast((v3 + 24));
            goto LABEL_17;
          }
        }

        else
        {
          *(v3 + 72) = v15;
          --*(v3 + 80);
          if (v15)
          {
            goto LABEL_17;
          }

          v16 = *(v3 + 8);
          if (_mfCallStackLoggingEnabled())
          {
            v17 = objc_alloc_init(MEMORY[0x1E696AAC8]);
            objc_setAssociatedObject(v16, @"MFLock Call Stack Symbols", 0, 0x301);
            [v17 drain];
          }

          if (*(v3 + 80))
          {
            *(v3 + 16) = 0;
            pthread_cond_signal((v3 + 24));
            goto LABEL_17;
          }
        }

        _MFRecycleObjectLock(v3);
        goto LABEL_17;
      }

      v5 = MFLogGeneral();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      v18 = *(v3 + 8);
      v19 = objc_opt_class();
      v20 = *(v3 + 8);
      v24 = 138412546;
      v25 = v19;
      v26 = 2048;
      selfCopy = v20;
      v9 = "*** Can't unlock <%@:%p>: it's already been unlocked.";
      goto LABEL_13;
    }

    v5 = MFLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(v3 + 8);
      v7 = objc_opt_class();
      v8 = *(v3 + 8);
      v24 = 138412546;
      v25 = v7;
      v26 = 2048;
      selfCopy = v8;
      v9 = "*** Can't unlock <%@:%p>: it was locked by another thread.";
LABEL_13:
      v10 = v5;
LABEL_16:
      _os_log_impl(&dword_1D36B2000, v10, OS_LOG_TYPE_INFO, v9, &v24, 0x16u);
    }
  }

  else
  {
LABEL_14:
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v24 = 138412546;
      v25 = objc_opt_class();
      v26 = 2048;
      selfCopy = self;
      v9 = "*** Can't unlock <%@:%p>: it's not locked.";
      v10 = v11;
      goto LABEL_16;
    }
  }

LABEL_17:
  result = pthread_mutex_unlock(&sMutex);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

+ (uint64_t)mf_clearLocks
{
  v44 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&sMutex);
  if (sFirstLock)
  {
    v0 = pthread_self();
    v1 = sFirstLock;
    if (sFirstLock)
    {
      v2 = v0;
      do
      {
        if (*(v1 + 16) == v2)
        {
          v3 = MFLogGeneral();
          if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
          {
            v4 = *(v1 + 72) & 0x7FFF;
            v5 = *(v1 + 8);
            v6 = *(v1 + 16);
            *buf = 134218496;
            v39 = v5;
            v40 = 1024;
            v41 = v4;
            v42 = 2048;
            v43 = v6;
            _os_log_impl(&dword_1D36B2000, v3, OS_LOG_TYPE_INFO, "object %p still holds lock (count=%u) in thread %p", buf, 0x1Cu);
          }

          v7 = *(v1 + 8);
          if (_mfCallStackLoggingEnabled())
          {
            v8 = objc_alloc_init(MEMORY[0x1E696AAC8]);
            objc_setAssociatedObject(v7, @"MFLock Call Stack Symbols", 0, 0x301);
            [v8 drain];
          }

          v9 = *(v1 + 72);
          if (v9 < 0)
          {
            *(v1 + 72) = 0x8000;
            *(v1 + 16) = 0;
            v12 = *(v1 + 80);
            if (!v12 || !CFArrayGetCount(v12))
            {
              goto LABEL_18;
            }

            pthread_cond_broadcast((v1 + 24));
          }

          else
          {
            v10 = *(v1 + 80);
            if (*(v1 + 72))
            {
              do
              {
                v11 = v9 - 1;
                LOWORD(v9) = v9 & 0x8000 | (v9 - 1) & 0x7FFF;
                --v10;
              }

              while ((v11 & 0x7FFF) != 0);
              *(v1 + 72) = v9;
              *(v1 + 80) = v10;
            }

            *(v1 + 16) = 0;
            if (!v10)
            {
LABEL_18:
              _MFRecycleObjectLock(v1);
              goto LABEL_19;
            }

            pthread_cond_signal((v1 + 24));
          }
        }

LABEL_19:
        v1 = *v1;
      }

      while (v1);
    }
  }

  pthread_mutex_unlock(&sMutex);
  v13 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  pthread_mutex_lock(&__threadLockRelationsLock);
  v14 = &__threadLockRelationsLock;
  v15 = __threadLockRelations;
  v16 = pthread_self();
  Value = CFDictionaryGetValue(v15, v16);
  v18 = [Value copy];
  pthread_mutex_unlock(&__threadLockRelationsLock);
  if (Value)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v32 objects:buf count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v33;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v32 + 1) + 8 * i);
          v24 = [v18 countForObject:v23];
          if (v24)
          {
            v25 = v24;
            do
            {
              v26 = MFLogGeneral();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *v36 = 138412290;
                v37 = v23;
                _os_log_impl(&dword_1D36B2000, v26, OS_LOG_TYPE_DEFAULT, "#Warning Unlocking blown lock %@", v36, 0xCu);
              }

              --v25;
              [v23 unlock];
            }

            while (v25);
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v32 objects:buf count:16];
      }

      while (v20);
    }

    if ([Value count])
    {
      v27 = MFLogGeneral();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *v36 = 138412290;
        v37 = Value;
        _os_log_impl(&dword_1D36B2000, v27, OS_LOG_TYPE_DEFAULT, "#Warning ERROR: We released all locks tracked, but we still have %@", v36, 0xCu);
      }
    }

    [Value removeAllObjects];
    pthread_mutex_lock(&__threadLockRelationsLock);
    v14 = &__threadLockRelationsLock;
    if (CFArrayGetCount(__threadLockEmptySets) <= 19)
    {
      CFArrayAppendValue(__threadLockEmptySets, Value);
    }
  }

  else
  {
    pthread_mutex_lock(&__threadLockRelationsLock);
  }

  v28 = *&v14[1].__opaque[16];
  v29 = pthread_self();
  CFDictionaryRemoveValue(v28, v29);
  pthread_mutex_unlock(&__threadLockRelationsLock);
  result = [v13 drain];
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_mf_ntsIsLocked
{
  v1 = sFirstLock;
  if (!sFirstLock)
  {
    return 0;
  }

  do
  {
    if (v1[1] == self)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    v1 = *v1;
    if (v1)
    {
      v3 = v2 == 0;
    }

    else
    {
      v3 = 0;
    }
  }

  while (v3);
  return v2 && pthread_self() == v2[2];
}

- (void)_mf_lockOrderingForType:()LockingAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  switch(a3)
  {
    case 3:
      mf_exclusiveLocks = [self mf_exclusiveLocks];
      goto LABEL_7;
    case 2:
      mf_exclusiveLocks = [self mf_strictLockOrdering];
      goto LABEL_7;
    case 1:
      mf_exclusiveLocks = [self mf_lockOrdering];
LABEL_7:
      v5 = mf_exclusiveLocks;
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v12 + 1) + 8 * v9) == self)
        {
          [NSObject(LockingAdditions) _mf_lockOrderingForType:];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)_mf_dumpLockCallStacks:()LockingAdditions ordering:
{
  v4 = a4;
  v5 = a3;
  v36 = *MEMORY[0x1E69E9840];
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = @"<exclusive locks>";
  }

  else
  {
    v6 = [a4 objectAtIndex:a3];
  }

  if (_mfCallStackLoggingEnabled())
  {
    v30 = v6;
    v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v8 = [v4 count];
    v9 = v8 - v5;
    if (v8 > v5)
    {
      v10 = @"com.apple.Message.MFLockOrderingSelfReference";
      v11 = @"<no call stack recorded>";
      v12 = "\n";
      do
      {
        v13 = [v4 objectAtIndex:v5];
        if (v13 == v10)
        {
          selfCopy = self;
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<MFLockOrderingSelfReference: %@: %p>", objc_opt_class(), self];
        }

        else
        {
          selfCopy = v13;
          v15 = [-[__CFString description](v13 "description")];
        }

        v16 = v15;
        if (_mfCallStackLoggingEnabled())
        {
          v17 = v4;
          v18 = v7;
          v19 = v12;
          v20 = v11;
          v21 = v10;
          v22 = objc_alloc_init(MEMORY[0x1E696AAC8]);
          v23 = objc_getAssociatedObject(selfCopy, @"MFLock Call Stack Symbols");
          v24 = v22;
          v10 = v21;
          v11 = v20;
          v12 = v19;
          v7 = v18;
          v4 = v17;
          [v24 drain];
        }

        else
        {
          v23 = 0;
        }

        if (v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = v11;
        }

        ++v5;
        if (--v9)
        {
          v26 = v12;
        }

        else
        {
          v26 = "";
        }

        [v7 appendFormat:@"\t%@ callstack=%@%s", v16, v25, v26];
      }

      while (v9);
    }

    v27 = MFLogGeneral();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v33 = v30;
      v34 = 2112;
      v35 = v7;
      _os_log_impl(&dword_1D36B2000, v27, OS_LOG_TYPE_DEFAULT, "#Warning MFLock Ordering Violation while taking lock! --> %@\nDumping lock call stack symbols.\n%@", buf, 0x16u);
    }
  }

  else if ([objc_msgSend(MEMORY[0x1E699B7B0] "currentDevice")])
  {
    v28 = MFLogGeneral();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v6;
      _os_log_impl(&dword_1D36B2000, v28, OS_LOG_TYPE_DEFAULT, "#Warning MFLock Ordering Violation while taking lock! --> %@\nTurn on MFLockCallStackLoggingEnabled to dump call stack information.", buf, 0xCu);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_mf_checkToAllowOrderingWithLock:()LockingAdditions
{
  if (a3 == self)
  {
    v4 = @"com.apple.Message.MFLockOrderingSelfReference";
  }

  else
  {
    v4 = a3;
  }

  v5 = [(__CFString *)self _mf_lockOrderingForType:1];
  result = [v5 indexOfObject:v4];
  if (v5)
  {
    v7 = result;
    if (result != 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [v5 count];
      v8 = v7 + 1;
      if ((v7 + 1) < result)
      {
        v9 = result;
        do
        {
          v10 = [v5 objectAtIndex:v8];
          if (v10 == @"com.apple.Message.MFLockOrderingSelfReference")
          {
            selfCopy = self;
          }

          else
          {
            selfCopy = v10;
          }

          if ([(__CFString *)selfCopy conformsToProtocol:&unk_1F4F425E8])
          {
            result = [(__CFString *)selfCopy isLockedByMe];
            if (result)
            {
              [(NSObject(LockingAdditions) *)self _mf_checkToAllowOrderingWithLock:v7, v5];
            }
          }

          else
          {
            result = [(__CFString *)selfCopy _mf_ntsIsLocked];
            if (result)
            {
              [(NSObject(LockingAdditions) *)self _mf_checkToAllowOrderingWithLock:v7, v5];
            }
          }

          ++v8;
        }

        while (v9 != v8);
      }
    }
  }

  return result;
}

- (uint64_t)_mf_checkToAllowStrictProgressionWithLock:()LockingAdditions
{
  if (a3 == self)
  {
    v4 = @"com.apple.Message.MFLockOrderingSelfReference";
  }

  else
  {
    v4 = a3;
  }

  v5 = [(__CFString *)self _mf_lockOrderingForType:2];
  result = [v5 indexOfObject:v4];
  if (v5)
  {
    v7 = result;
    if (result != 0x7FFFFFFFFFFFFFFFLL && result != 0)
    {
      v9 = 0;
      do
      {
        v10 = [v5 objectAtIndex:v9];
        if (v10 == @"com.apple.Message.MFLockOrderingSelfReference")
        {
          selfCopy = self;
        }

        else
        {
          selfCopy = v10;
        }

        if ([(__CFString *)selfCopy conformsToProtocol:&unk_1F4F425E8])
        {
          result = [(__CFString *)selfCopy isLockedByMe];
          if (result)
          {
            [(NSObject(LockingAdditions) *)self _mf_checkToAllowStrictProgressionWithLock:v7, v5];
          }
        }

        else
        {
          result = [(__CFString *)selfCopy _mf_ntsIsLocked];
          if (result)
          {
            [(NSObject(LockingAdditions) *)self _mf_checkToAllowStrictProgressionWithLock:v7, v5];
          }
        }

        ++v9;
      }

      while (v7 != v9);
    }
  }

  return result;
}

- (uint64_t)_mf_checkToAllowExclusiveLocksWithLock:()LockingAdditions
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3 == self)
  {
    v4 = @"com.apple.Message.MFLockOrderingSelfReference";
  }

  else
  {
    v4 = a3;
  }

  v5 = [(__CFString *)self _mf_lockOrderingForType:3];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  result = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (v10 != v4)
        {
          if (v10 == @"com.apple.Message.MFLockOrderingSelfReference")
          {
            selfCopy = self;
          }

          else
          {
            selfCopy = *(*(&v13 + 1) + 8 * v9);
          }

          if ([(__CFString *)selfCopy conformsToProtocol:&unk_1F4F425E8])
          {
            if ([(__CFString *)selfCopy isLockedByMe])
            {
              [(NSObject(LockingAdditions) *)v5 _mf_checkToAllowExclusiveLocksWithLock:self];
            }
          }

          else if ([(__CFString *)selfCopy _mf_ntsIsLocked])
          {
            [(NSObject(LockingAdditions) *)v5 _mf_checkToAllowExclusiveLocksWithLock:self];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      result = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v7 = result;
    }

    while (result);
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_mf_checkToAllowLock:()LockingAdditions
{
  pthread_mutex_lock(&sMutex);
  [self _mf_ntsCheckToAllowLock:a3];

  return pthread_mutex_unlock(&sMutex);
}

- (uint64_t)_mf_ntsCheckToAllowLock:()LockingAdditions
{
  [self _mf_checkToAllowOrderingWithLock:?];
  [self _mf_checkToAllowStrictProgressionWithLock:a3];

  return [self _mf_checkToAllowExclusiveLocksWithLock:a3];
}

- (uint64_t)mf_tryLock
{
  pthread_mutex_lock(&sMutex);
  v2 = _MFFindObjectLock(self, 1);

  return _MFTryObjectLock(v2);
}

- (uint64_t)mf_lockWithPriority
{
  pthread_mutex_lock(&sMutex);
  v2 = _MFFindObjectLock(self, 2);

  return _MFAcquireObjectLock(v2);
}

- (uint64_t)mf_tryLockWithPriority
{
  pthread_mutex_lock(&sMutex);
  v2 = _MFFindObjectLock(self, 1);

  return _MFTryObjectLock(v2);
}

@end