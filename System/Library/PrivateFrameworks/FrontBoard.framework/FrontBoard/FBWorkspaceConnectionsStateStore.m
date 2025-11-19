@interface FBWorkspaceConnectionsStateStore
+ (BOOL)_storeState:(id)a3 toPath:(id)a4 withGeneration:(BOOL)a5 injectedFailure:(int64_t *)a6;
+ (id)_loadStateFromPath:(id)a3 outGeneration:(BOOL *)a4 outExisted:(BOOL *)a5;
+ (id)identifierForName:(uint64_t)a1;
+ (uint64_t)hasSandboxAccessForIdentifier:(uint64_t)a1;
+ (void)_unlinkShmPath:(id)a3 graceful:(BOOL)a4;
- (FBWorkspaceConnectionsStateStore)init;
- (id)state;
- (void)_initWithIdentifier:(void *)a1;
- (void)setState:(uint64_t)a1;
@end

@implementation FBWorkspaceConnectionsStateStore

- (id)state
{
  if (a1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__6;
    v14 = __Block_byref_object_dispose__6;
    v15 = 0;
    v1 = OUTLINED_FUNCTION_6_2(a1);
    OUTLINED_FUNCTION_24(v1, v2, v5, 3221225472, v6, v7, v8, v9);
    v3 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)identifierForName:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = v2;
  if ([v3 length] < 0x1A)
  {
    v4 = v3;
  }

  else
  {
    v4 = [v3 substringToIndex:25];
  }

  v5 = v4;

  return v5;
}

+ (uint64_t)hasSandboxAccessForIdentifier:(uint64_t)a1
{
  v54[2] = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  v3 = v2;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  if (!v3)
  {
    v27 = NSStringFromClass(v5);
    v28 = [v4 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"identifier", v27];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[FBWorkspaceConnectionsStateStore hasSandboxAccessForIdentifier:];
    }

    [v28 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A8A3EB58);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(FBWorkspaceConnectionsStateStore *)v3 hasSandboxAccessForIdentifier:?];
  }

  v6 = _pathForIdentifierAndBuffer(v3, 0);
  v54[0] = v6;
  v7 = 1;
  v34 = v3;
  v8 = _pathForIdentifierAndBuffer(v3, 1);
  v54[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v31 = [&unk_1F1C10990 countByEnumeratingWithState:&v39 objects:v53 count:16];
  if (v31)
  {
    v10 = *v40;
    v11 = *MEMORY[0x1E69E9BD0];
    v33 = v9;
    v30 = *v40;
    do
    {
      v12 = 0;
      do
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(&unk_1F1C10990);
        }

        v32 = v12;
        v13 = *(*(&v39 + 1) + 8 * v12);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v14 = v9;
        v15 = [v14 countByEnumeratingWithState:&v35 objects:v52 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v36;
          while (2)
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v36 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v35 + 1) + 8 * i);
              *__error() = 0;
              getpid();
              [v13 UTF8String];
              v29 = [v19 UTF8String];
              v20 = sandbox_check();
              if (v20)
              {
                if (v20 == 1)
                {
                  v24 = FBLogCommon();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                  {
                    +[FBWorkspaceConnectionsStateStore hasSandboxAccessForIdentifier:];
                  }

                  v7 = 0;
                  v9 = v33;
                  goto LABEL_26;
                }

                v21 = __error();
                strerror_r(*v21, __strerrbuf, 0x100uLL);
                v22 = FBLogCommon();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  v23 = *__error();
                  *buf = 138413058;
                  v44 = v13;
                  v45 = 2112;
                  v46 = v19;
                  v47 = 1024;
                  v48 = v23;
                  v49 = 2080;
                  v50 = __strerrbuf;
                  _os_log_error_impl(&dword_1A89DD000, v22, OS_LOG_TYPE_ERROR, "FBWorkspaceConnectionsStateStore: error in sandbox_check %@ for %@ : errno=%i (%s)", buf, 0x26u);
                }
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v35 objects:v52 count:{16, v29}];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        v12 = v32 + 1;
        v9 = v33;
        v10 = v30;
      }

      while (v32 + 1 != v31);
      v7 = 1;
      v31 = [&unk_1F1C10990 countByEnumeratingWithState:&v39 objects:v53 count:16];
    }

    while (v31);
  }

LABEL_26:

  v25 = *MEMORY[0x1E69E9840];
  return v7;
}

- (FBWorkspaceConnectionsStateStore)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on FBWorkspaceConnectionsStateStore"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"FBWorkspaceConnectionsStateStore.m";
    v17 = 1024;
    v18 = 105;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)_initWithIdentifier:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(FBWorkspaceConnectionsStateStore *)v5 _initWithIdentifier:?];
      }
    }

    v8.receiver = a1;
    v8.super_class = FBWorkspaceConnectionsStateStore;
    a1 = objc_msgSendSuper2(&v8, sel_init);
    if (a1)
    {
      [(FBWorkspaceConnectionsStateStore *)v5 == 0 _initWithIdentifier:a1, &v7, v5];
    }
  }

  return a1;
}

void __56__FBWorkspaceConnectionsStateStore__initWithIdentifier___block_invoke(uint64_t a1)
{
  v26 = 0;
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v4 = [objc_opt_class() _loadStateFromPath:*(*v3 + 8) outGeneration:&v26 + 1 outExisted:&v26];
  v25 = 0;
  v5 = *v3;
  v6 = [objc_opt_class() _loadStateFromPath:*(*v3 + 16) outGeneration:&v25 + 1 outExisted:&v25];
  v7 = v6;
  if (v4 | v6)
  {
    if (v4)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (!v6)
      {
LABEL_23:
        v20 = FBLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *v23 = 0;
          _os_log_impl(&dword_1A89DD000, v20, OS_LOG_TYPE_INFO, "restored previous workspace connections state (1)", v23, 2u);
        }

        objc_storeStrong((*v3 + 32), v4);
        v10 = 3;
        if (!HIBYTE(v26))
        {
          v10 = 1;
        }

LABEL_27:
        *(*v3 + 40) = v10;
        v21 = FBLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          __56__FBWorkspaceConnectionsStateStore__initWithIdentifier___block_invoke_cold_3(v3);
        }

        goto LABEL_30;
      }
    }

    else
    {
      v14 = HIBYTE(v26);
      v15 = HIBYTE(v25);
      v16 = *v3;
      v17 = objc_opt_class();
      v18 = 16;
      if (v14 == v15)
      {
        v18 = 8;
      }

      [v17 _unlinkShmPath:*(*v3 + v18) graceful:0];
      v19 = FBLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __56__FBWorkspaceConnectionsStateStore__initWithIdentifier___block_invoke_cold_2(v14 == v15, v19);
      }

      if (v14 != v15)
      {
        goto LABEL_23;
      }
    }

    v9 = FBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A89DD000, v9, OS_LOG_TYPE_INFO, "restored previous workspace connections state (2)", buf, 2u);
    }

    objc_storeStrong((*v3 + 32), v7);
    v10 = 2;
    if (HIBYTE(v25))
    {
      v10 = 4;
    }

    goto LABEL_27;
  }

  if ((v26 & 1) != 0 || v25 == 1)
  {
    v11 = FBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      __56__FBWorkspaceConnectionsStateStore__initWithIdentifier___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v11 = FBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_1A89DD000, v11, OS_LOG_TYPE_DEFAULT, "no previous workspace connections state - initializing", v22, 2u);
    }
  }

  v12 = objc_opt_new();
  v13 = *(*v3 + 32);
  *(*v3 + 32) = v12;

  *(*v3 + 40) = 0;
LABEL_30:
}

- (void)setState:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    if (!v5)
    {
      [FBWorkspaceConnectionsStateStore setState:?];
    }

    v6 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(FBWorkspaceConnectionsStateStore *)v6 setState:?];
    }

    [(FBWorkspaceConnectionsStateStore *)v6 setState:a1, v7, sel_setState_];
  }
}

void __45__FBWorkspaceConnectionsStateStore_setState___block_invoke(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (*(v2 + 57) == 1)
  {
    __45__FBWorkspaceConnectionsStateStore_setState___block_invoke_cold_4(a1, (a1 + 32));
  }

  v4 = *(v2 + 32);
  v6 = *(a1 + 40);
  v5 = (a1 + 40);
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong((*v3 + 32), *v5);
    v7 = *(*v3 + 40);
    if (v7 <= 0)
    {
      v8 = -(-v7 & 3);
    }

    else
    {
      v8 = *(*v3 + 40) & 3;
    }

    v9 = objc_opt_class();
    v10 = 8;
    if (((v8 - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0)
    {
      v10 = 16;
    }

    if ([v9 _storeState:*v5 toPath:*(*v3 + v10) withGeneration:(v8 & 0xFFFFFFFFFFFFFFFELL) == 2 injectedFailure:*v3 + 48])
    {
      v11 = v8 + 1;
      v12 = FBLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __45__FBWorkspaceConnectionsStateStore_setState___block_invoke_cold_2(v5);
      }

      *(*v3 + 40) = v11;
      if (*(*v3 + 48) == 1)
      {
        *(*v3 + 48) = 0;
        v13 = FBLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __45__FBWorkspaceConnectionsStateStore_setState___block_invoke_cold_3(v7, v3);
        }
      }

      else if (v7)
      {
        v15 = objc_opt_class();
        v16 = 8;
        if (((v7 - 2) & 0xFFFFFFFFFFFFFFFDLL) == 0)
        {
          v16 = 16;
        }

        [v15 _unlinkShmPath:*(*v3 + v16) graceful:0];
      }
    }

    else if (v7)
    {
      v14 = FBLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        __45__FBWorkspaceConnectionsStateStore_setState___block_invoke_cold_1(v14);
      }
    }

    else
    {
      v17 = *v3;
      if (*(*v3 + 8) || *(v17 + 16))
      {
        if (*(v17 + 56))
        {
          v18 = OS_LOG_TYPE_DEBUG;
        }

        else
        {
          *(v17 + 56) = 1;
          v18 = OS_LOG_TYPE_ERROR;
        }

        v19 = FBLogCommon();
        if (os_log_type_enabled(v19, v18))
        {
          *v20 = 0;
          _os_log_impl(&dword_1A89DD000, v19, v18, "failed to write new workspace connections state to shm - are we sandboxed?", v20, 2u);
        }
      }
    }
  }
}

+ (id)_loadStateFromPath:(id)a3 outGeneration:(BOOL *)a4 outExisted:(BOOL *)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBWorkspaceConnectionsStateStore _loadStateFromPath:v9 outGeneration:a2 outExisted:?];
    }
  }

  if (!a4)
  {
    [FBWorkspaceConnectionsStateStore _loadStateFromPath:a2 outGeneration:? outExisted:?];
  }

  if (!a5)
  {
    [FBWorkspaceConnectionsStateStore _loadStateFromPath:a2 outGeneration:? outExisted:?];
  }

  if (!v9)
  {
LABEL_27:
    v18 = 0;
    *a5 = 0;
    goto LABEL_28;
  }

  *__error() = 0;
  v10 = shm_open([v9 UTF8String], 0);
  if (v10 < 0)
  {
    if (*__error() == 2)
    {
      v18 = 0;
      goto LABEL_28;
    }

    v22 = __error();
    strerror_r(*v22, __strerrbuf, 0x100uLL);
    v23 = FBLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      +[FBWorkspaceConnectionsStateStore _loadStateFromPath:outGeneration:outExisted:];
    }

    goto LABEL_27;
  }

  v11 = v10;
  *a5 = 1;
  v12 = +[FBWorkspaceConnectionsState minimumSerializedDataLength];
  if (v12 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    [FBWorkspaceConnectionsStateStore _loadStateFromPath:a2 outGeneration:? outExisted:?];
  }

  v13 = v12;
  memset(&v36, 0, sizeof(v36));
  if (fstat(v11, &v36) || v36.st_size <= v13)
  {
    v19 = FBLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [FBWorkspaceConnectionsStateStore _loadStateFromPath:v9 outGeneration:&v36 outExisted:?];
    }
  }

  else
  {
    *__error() = 0;
    v14 = mmap(0, v36.st_size, 1, 1, v11, 0);
    v15 = v14;
    if (v14 != -1)
    {
      v16 = *v14;
      if (*v14)
      {
        v34[3] = 0;
        v35 = -1;
        v34[0] = 0;
        v34[1] = v34;
        v34[2] = 0x2020000000;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v31 = v36;
        v30[2] = __80__FBWorkspaceConnectionsStateStore__loadStateFromPath_outGeneration_outExisted___block_invoke;
        v30[3] = &unk_1E783D760;
        v30[4] = v34;
        v32 = 1;
        v33 = v14;
        v18 = [FBWorkspaceConnectionsState deserializeLength:&v35 fromReader:v30];
        if (v18 && v35 >= v13 && v35 <= 0x7FFFFFFFFFFFFFFDLL)
        {
          *a4 = (v16 & 2) != 0;
        }

        else
        {
          v27 = FBLogCommon();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *__strerrbuf = 138413058;
            v38 = v9;
            v39 = 2048;
            v40 = v13;
            v41 = 2048;
            v42 = v35;
            v43 = 2048;
            v44 = v36.st_size - 1;
            _os_log_error_impl(&dword_1A89DD000, v27, OS_LOG_TYPE_ERROR, "data length inconsistent in %@ - unlinking : min=%zu actual=%zu expected=%llu", __strerrbuf, 0x2Au);
          }

          [a1 _unlinkShmPath:v9 graceful:0];
          v18 = 0;
        }

        _Block_object_dispose(v34, 8);
      }

      else
      {
        v17 = FBLogCommon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          +[FBWorkspaceConnectionsStateStore _loadStateFromPath:outGeneration:outExisted:];
        }

        [a1 _unlinkShmPath:v9 graceful:0];
        v18 = 0;
      }

      *__error() = 0;
      if (munmap(v15, v36.st_size) == -1)
      {
        v28 = __error();
        strerror_r(*v28, __strerrbuf, 0x100uLL);
        v29 = FBLogCommon();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          +[FBWorkspaceConnectionsStateStore _loadStateFromPath:outGeneration:outExisted:];
        }

        [a1 _unlinkShmPath:v9 graceful:0];
      }

      goto LABEL_18;
    }

    v26 = __error();
    strerror_r(*v26, __strerrbuf, 0x100uLL);
    v19 = FBLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      +[FBWorkspaceConnectionsStateStore _loadStateFromPath:outGeneration:outExisted:];
    }
  }

  [a1 _unlinkShmPath:v9 graceful:0];
  v18 = 0;
LABEL_18:
  *__error() = 0;
  if (close(v11))
  {
    v20 = __error();
    strerror_r(*v20, __strerrbuf, 0x100uLL);
    v21 = FBLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[FBWorkspaceConnectionsStateStore _loadStateFromPath:outGeneration:outExisted:];
    }
  }

LABEL_28:

  v24 = *MEMORY[0x1E69E9840];

  return v18;
}

size_t __80__FBWorkspaceConnectionsStateStore__loadStateFromPath_outGeneration_outExisted___block_invoke(void *a1, void *__dst, size_t a3)
{
  v3 = a1[23];
  v4 = a1[17] - v3;
  v5 = v4 - a3;
  if (v4 >= a3 && (v7 = *(*(a1[4] + 8) + 24), v7 <= v5))
  {
    v8 = a3;
    memcpy(__dst, (a1[24] + v3 + v7), a3);
    *(*(a1[4] + 8) + 24) += v8;
  }

  else
  {
    *__error() = 14;
    return -1;
  }

  return v8;
}

+ (void)_unlinkShmPath:(id)a3 graceful:(BOOL)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  if (!v6)
  {
    v12 = NSStringFromClass(v8);
    v13 = [v7 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"shmPath", v12];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[FBWorkspaceConnectionsStateStore _unlinkShmPath:graceful:];
    }

    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A8A3FAD0);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBWorkspaceConnectionsStateStore _unlinkShmPath:v6 graceful:a2];
  }

  *__error() = 0;
  if (shm_unlink([v6 UTF8String]) && !a4)
  {
    v9 = __error();
    strerror_r(*v9, __strerrbuf, 0x100uLL);
    v10 = FBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[FBWorkspaceConnectionsStateStore _unlinkShmPath:graceful:];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (BOOL)_storeState:(id)a3 toPath:(id)a4 withGeneration:(BOOL)a5 injectedFailure:(int64_t *)a6
{
  v7 = a5;
  v57 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = v11;
  if (!v13)
  {
    [FBWorkspaceConnectionsStateStore _storeState:a2 toPath:? withGeneration:? injectedFailure:?];
  }

  v14 = v13;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBWorkspaceConnectionsStateStore _storeState:v14 toPath:a2 withGeneration:? injectedFailure:?];
  }

  v15 = v12;
  if (!v15)
  {
    if (a6)
    {
LABEL_17:
      v22 = 0;
      goto LABEL_40;
    }

LABEL_13:
    [FBWorkspaceConnectionsStateStore _storeState:a2 toPath:? withGeneration:? injectedFailure:?];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBWorkspaceConnectionsStateStore _storeState:v15 toPath:a2 withGeneration:? injectedFailure:?];
  }

  if (!a6)
  {
    goto LABEL_13;
  }

  *__error() = 0;
  v16 = shm_open([v15 UTF8String], 2562, 384);
  if (v16 < 0)
  {
    v20 = __error();
    strerror_r(*v20, __strerrbuf, 0x100uLL);
    v21 = FBLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[FBWorkspaceConnectionsStateStore _storeState:toPath:withGeneration:injectedFailure:];
    }

    goto LABEL_17;
  }

  v17 = v16;
  v18 = [v14 serializedDataLength];
  if (v18 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    [FBWorkspaceConnectionsStateStore _storeState:a2 toPath:? withGeneration:? injectedFailure:?];
  }

  if (*a6 != 2)
  {
    v23 = v18;
    *__error() = 0;
    if (ftruncate(v17, v23 + 1))
    {
      v24 = __error();
      strerror_r(*v24, __strerrbuf, 0x100uLL);
      v25 = FBLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        +[FBWorkspaceConnectionsStateStore _storeState:toPath:withGeneration:injectedFailure:];
      }
    }

    else
    {
      if (*a6 == 3)
      {
        *a6 = 0;
        v19 = FBLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          +[FBWorkspaceConnectionsStateStore _storeState:toPath:withGeneration:injectedFailure:];
        }

        goto LABEL_11;
      }

      *__error() = 0;
      v26 = mmap(0, v23 + 1, 2, 1, v17, 0);
      if (v26 != -1)
      {
        v27 = v26;
        v44[0] = 0;
        v44[1] = v44;
        v44[2] = 0x2020000000;
        v44[3] = 0;
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __86__FBWorkspaceConnectionsStateStore__storeState_toPath_withGeneration_injectedFailure___block_invoke;
        v43[3] = &unk_1E783D788;
        v43[4] = v44;
        v43[5] = v23;
        v43[6] = v26;
        v43[7] = 1;
        v28 = [v14 serializeToWriter:v43];
        if (v28 == v23)
        {
          if (*a6 == 4)
          {
            *a6 = 0;
            v29 = FBLogCommon();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              +[FBWorkspaceConnectionsStateStore _storeState:toPath:withGeneration:injectedFailure:];
            }

            v22 = 0;
          }

          else
          {
            if (v7)
            {
              v36 = 3;
            }

            else
            {
              v36 = 1;
            }

            *v27 = v36;
            *__error() = 0;
            if (msync(v27, v23 + 1, 16) == -1)
            {
              v37 = __error();
              strerror_r(*v37, __strerrbuf, 0x100uLL);
              v38 = FBLogCommon();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                v42 = *__error();
                *buf = 138412802;
                v46 = v15;
                v47 = 1024;
                v48 = v42;
                v49 = 2080;
                v50 = __strerrbuf;
                _os_log_error_impl(&dword_1A89DD000, v38, OS_LOG_TYPE_ERROR, "failed to msync %@ : errno=%i (%s)", buf, 0x1Cu);
              }
            }

            v22 = 1;
          }
        }

        else
        {
          v35 = FBLogCommon();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *__strerrbuf = 138412802;
            v52 = v15;
            v53 = 2048;
            v54 = v28;
            v55 = 2048;
            v56 = v23;
            _os_log_error_impl(&dword_1A89DD000, v35, OS_LOG_TYPE_ERROR, "data length inconsistent in %@ - unlinking : actual=%zi expected=%zu", __strerrbuf, 0x20u);
          }

          [a1 _unlinkShmPath:v15 graceful:0];
          v22 = 0;
        }

        *__error() = 0;
        if (munmap(v27, v23 + 1) == -1)
        {
          v39 = __error();
          strerror_r(*v39, __strerrbuf, 0x100uLL);
          v40 = FBLogCommon();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = *__error();
            *buf = 138412802;
            v46 = v15;
            v47 = 1024;
            v48 = v41;
            v49 = 2080;
            v50 = __strerrbuf;
            _os_log_error_impl(&dword_1A89DD000, v40, OS_LOG_TYPE_ERROR, "failed to munmap %@ - unlinking : errno=%i (%s)", buf, 0x1Cu);
          }

          [a1 _unlinkShmPath:v15 graceful:0];
        }

        _Block_object_dispose(v44, 8);
        goto LABEL_36;
      }

      v30 = __error();
      strerror_r(*v30, __strerrbuf, 0x100uLL);
      v25 = FBLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        +[FBWorkspaceConnectionsStateStore _storeState:toPath:withGeneration:injectedFailure:];
      }
    }

    [a1 _unlinkShmPath:v15 graceful:0];
    goto LABEL_35;
  }

  *a6 = 0;
  v19 = FBLogCommon();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    +[FBWorkspaceConnectionsStateStore _storeState:toPath:withGeneration:injectedFailure:];
  }

LABEL_11:

LABEL_35:
  v22 = 0;
LABEL_36:
  *__error() = 0;
  if (close(v17))
  {
    v31 = __error();
    strerror_r(*v31, __strerrbuf, 0x100uLL);
    v32 = FBLogCommon();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      +[FBWorkspaceConnectionsStateStore _storeState:toPath:withGeneration:injectedFailure:];
    }
  }

LABEL_40:

  v33 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t __86__FBWorkspaceConnectionsStateStore__storeState_toPath_withGeneration_injectedFailure___block_invoke(void *a1, const void *a2, size_t a3)
{
  v3 = a1[5];
  v4 = v3 - a3;
  if (v3 >= a3 && (v6 = *(*(a1[4] + 8) + 24), v6 <= v4))
  {
    v7 = a3;
    memcpy((a1[6] + a1[7] + v6), a2, a3);
    *(*(a1[4] + 8) + 24) += v7;
  }

  else
  {
    *__error() = 14;
    return -1;
  }

  return v7;
}

+ (void)hasSandboxAccessForIdentifier:(void *)a1 .cold.1(void *a1, const char *a2)
{
  v5 = OUTLINED_FUNCTION_5(a1, a2);
  if (!v5)
  {
    v5 = objc_opt_class();
  }

  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = OUTLINED_FUNCTION_16_1();
  NSStringFromClass(v6);
  v16 = v15 = v4;
  v7 = [v2 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(v3);
    objc_claimAutoreleasedReturnValue();
    v8 = OUTLINED_FUNCTION_8();
    v9 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, @"identifier", v15, v16, v17, v18);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)hasSandboxAccessForIdentifier:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)hasSandboxAccessForIdentifier:.cold.3()
{
  OUTLINED_FUNCTION_8_0();
  v11 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(v0);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_initWithIdentifier:(void *)a1 .cold.1(void *a1, const char *a2)
{
  v5 = OUTLINED_FUNCTION_5(a1, a2);
  if (!v5)
  {
    v5 = objc_opt_class();
  }

  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = OUTLINED_FUNCTION_16_1();
  NSStringFromClass(v6);
  v16 = v15 = v4;
  v7 = [v2 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(v3);
    objc_claimAutoreleasedReturnValue();
    v8 = OUTLINED_FUNCTION_8();
    v9 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, @"identifier", v15, v16, v17, v18);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithIdentifier:(id *)a3 .cold.2(char a1, void *a2, id *a3, void *a4)
{
  if ((a1 & 1) == 0)
  {
    v7 = _pathForIdentifierAndBuffer(a4, 0);
    v8 = a2[1];
    a2[1] = v7;

    v9 = _pathForIdentifierAndBuffer(a4, 1);
    v10 = a2[2];
    a2[2] = v9;
  }

  v11 = [MEMORY[0x1E698E698] serial];
  v12 = [v11 serviceClass:25];
  v13 = BSDispatchQueueCreate();
  v14 = a2[3];
  a2[3] = v13;

  a2[6] = 0;
  v15 = a2[3];
  *a3 = MEMORY[0x1E69E9820];
  a3[1] = 3221225472;
  a3[2] = __56__FBWorkspaceConnectionsStateStore__initWithIdentifier___block_invoke;
  a3[3] = &unk_1E783B240;
  a3[4] = a2;
  a3[5] = a4;
  dispatch_async(v15, a3);
}

void __56__FBWorkspaceConnectionsStateStore__initWithIdentifier___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_5_1();
  _os_log_fault_impl(&dword_1A89DD000, v2, OS_LOG_TYPE_FAULT, "all previous workspace connections states are bad : %@", v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __56__FBWorkspaceConnectionsStateStore__initWithIdentifier___block_invoke_cold_2(char a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_1A89DD000, a2, OS_LOG_TYPE_ERROR, "previous workspace connections state wasn't clean - resolving latest (%i)", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

void __56__FBWorkspaceConnectionsStateStore__initWithIdentifier___block_invoke_cold_3(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(*a1 + 32);
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(&dword_1A89DD000, v2, OS_LOG_TYPE_DEBUG, "previous workspace connections = %@", v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)setState:(void *)a1 .cold.1(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  NSStringFromClass(v6);
  v16 = v15 = v5;
  v7 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v8 = OUTLINED_FUNCTION_8();
    v9 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, @"state", v15, v16, v17, v18);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setState:(const char *)a1 .cold.2(const char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v13 = NSStringFromClass(v3);
  v4 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, @"state", v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setState:(uint64_t)a3 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_8_0();
  v8 = v7;

  v9 = [v8 copy];
  v10 = v5[3];
  *v4 = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__FBWorkspaceConnectionsStateStore_setState___block_invoke;
  v4[3] = &unk_1E783C920;
  v4[5] = v9;
  v4[6] = a4;
  v4[4] = v5;
  v11 = v9;
  dispatch_async(v10, v4);
}

void __45__FBWorkspaceConnectionsStateStore_setState___block_invoke_cold_2(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(&dword_1A89DD000, v2, OS_LOG_TYPE_DEBUG, "stored new workspace connections = %@", v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __45__FBWorkspaceConnectionsStateStore_setState___block_invoke_cold_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = 8;
  if (((a1 - 2) & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v2 = 16;
  }

  v3 = *(*a2 + v2);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  v9 = *MEMORY[0x1E69E9840];
}

void __45__FBWorkspaceConnectionsStateStore_setState___block_invoke_cold_4(uint64_t a1, uint64_t *a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attemp to set state after invalidation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v6 = *a2;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = *a2;
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, v15);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)_loadStateFromPath:(void *)a1 outGeneration:(char *)a2 outExisted:.cold.1(void *a1, char *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [a1 classForCoder];
  if (!v5)
  {
    v5 = objc_opt_class();
  }

  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = OUTLINED_FUNCTION_16_1();
  NSStringFromClass(v6);
  v17 = v16 = a1;
  v7 = [v4 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v8 = OUTLINED_FUNCTION_8();
    v9 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, @"shmPath", v16, v17, v18, v19);
  }

  v15 = v7;
  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)_loadStateFromPath:outGeneration:outExisted:.cold.2()
{
  OUTLINED_FUNCTION_2_6();
  v9 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_4_3(&dword_1A89DD000, v1, v2, "failed to read %@ : errno=%i (%s)", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_loadStateFromPath:(uint64_t)a1 outGeneration:(uint64_t)a2 outExisted:.cold.3(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 96);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)_loadStateFromPath:outGeneration:outExisted:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_1(&dword_1A89DD000, v0, v1, "validity check failed for %@ - unlinking", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_loadStateFromPath:outGeneration:outExisted:.cold.5()
{
  OUTLINED_FUNCTION_2_6();
  v9 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_4_3(&dword_1A89DD000, v1, v2, "failed to munmap %@ - unlinking : errno=%i (%s)", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_loadStateFromPath:outGeneration:outExisted:.cold.6()
{
  OUTLINED_FUNCTION_2_6();
  v9 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_4_3(&dword_1A89DD000, v1, v2, "failed to mmap %@ - unlinking : errno=%i (%s)", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_loadStateFromPath:outGeneration:outExisted:.cold.7()
{
  OUTLINED_FUNCTION_2_6();
  v9 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_4_3(&dword_1A89DD000, v1, v2, "failed to close read of %@ : errno=%i (%s)", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_loadStateFromPath:(char *)a1 outGeneration:outExisted:.cold.8(char *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"shmLength cannot exceed SSIZE_MAX"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)_loadStateFromPath:(char *)a1 outGeneration:outExisted:.cold.9(char *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"outExisted", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)_loadStateFromPath:(char *)a1 outGeneration:outExisted:.cold.10(char *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"outGenerationTwiddle", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)_unlinkShmPath:(void *)a1 graceful:(const char *)a2 .cold.1(void *a1, const char *a2)
{
  v5 = OUTLINED_FUNCTION_5(a1, a2);
  if (!v5)
  {
    v5 = objc_opt_class();
  }

  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = OUTLINED_FUNCTION_16_1();
  NSStringFromClass(v6);
  v16 = v15 = v4;
  v7 = [v2 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(v3);
    objc_claimAutoreleasedReturnValue();
    v8 = OUTLINED_FUNCTION_8();
    v9 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, @"shmPath", v15, v16, v17, v18);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)_unlinkShmPath:graceful:.cold.2()
{
  OUTLINED_FUNCTION_2_6();
  v9 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_4_3(&dword_1A89DD000, v1, v2, "failed to unlink %@ : errno=%i (%s)", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_unlinkShmPath:graceful:.cold.3()
{
  OUTLINED_FUNCTION_8_0();
  v11 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(v0);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)_storeState:(void *)a1 toPath:(char *)a2 withGeneration:injectedFailure:.cold.1(void *a1, char *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  NSStringFromClass(v6);
  v17 = v16 = v5;
  v7 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v8 = OUTLINED_FUNCTION_8();
    v9 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, @"state", v16, v17, v18, v19);
  }

  v15 = v7;
  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)_storeState:(void *)a1 toPath:(char *)a2 withGeneration:injectedFailure:.cold.2(void *a1, char *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [a1 classForCoder];
  if (!v5)
  {
    v5 = objc_opt_class();
  }

  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = OUTLINED_FUNCTION_16_1();
  NSStringFromClass(v6);
  v17 = v16 = a1;
  v7 = [v4 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v8 = OUTLINED_FUNCTION_8();
    v9 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, @"shmPath", v16, v17, v18, v19);
  }

  v15 = v7;
  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)_storeState:toPath:withGeneration:injectedFailure:.cold.3()
{
  OUTLINED_FUNCTION_2_6();
  v9 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_4_3(&dword_1A89DD000, v1, v2, "failed to create %@ : errno=%i (%s)", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_storeState:toPath:withGeneration:injectedFailure:.cold.4()
{
  OUTLINED_FUNCTION_2_6();
  v9 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_4_3(&dword_1A89DD000, v1, v2, "failed to set the size of %@ - unlinking : errno=%i (%s)", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_storeState:toPath:withGeneration:injectedFailure:.cold.5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_1(&dword_1A89DD000, v0, v1, "simulating crash after writing data to new buffer : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_storeState:toPath:withGeneration:injectedFailure:.cold.6()
{
  OUTLINED_FUNCTION_2_6();
  v9 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_4_3(&dword_1A89DD000, v1, v2, "failed to mmap %@ - unlinking : errno=%i (%s)", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_storeState:toPath:withGeneration:injectedFailure:.cold.7()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_1(&dword_1A89DD000, v0, v1, "simulating crash after resizing new buffer : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_storeState:toPath:withGeneration:injectedFailure:.cold.8()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_1(&dword_1A89DD000, v0, v1, "simulating crash after opening new buffer : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_storeState:toPath:withGeneration:injectedFailure:.cold.9()
{
  OUTLINED_FUNCTION_2_6();
  v9 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_4_3(&dword_1A89DD000, v1, v2, "failed to close write of %@ : errno=%i (%s)", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_storeState:(char *)a1 toPath:withGeneration:injectedFailure:.cold.10(char *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"shmLength out of range"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)_storeState:(char *)a1 toPath:withGeneration:injectedFailure:.cold.11(char *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"failure", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)_storeState:(const char *)a1 toPath:withGeneration:injectedFailure:.cold.12(const char *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v14 = NSStringFromClass(v3);
  v4 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, @"state", v14, v15);
  }

  v13 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end