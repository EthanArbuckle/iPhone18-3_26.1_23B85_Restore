void in_thread_handler()
{
  v0 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
  if (!v0)
  {
    v5 = __si_assert_copy_extra_332();
    v6 = v5;
    v7 = "";
    if (v5)
    {
      v7 = v5;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexExceptionHandler.c", 727, "loc", v7);
    free(v6);
    if (__valid_fs(-1))
    {
      v8 = 2989;
    }

    else
    {
      v8 = 3072;
    }

    *v8 = -559038737;
    abort();
  }

  v1 = &threadData[9 * v0];
  v2 = *(v1 - 14);
  v3 = (v2 & (v2 >> 31)) - 1;
  v4 = *(v1 - 8);
  do
  {
    if (v2 < 1)
    {
      goto LABEL_6;
    }

    --v2;
  }

  while ((*(v4 + 320 * v2 + 212) & 0x80000001) == 0);
  v3 = v2;
LABEL_6:
  _longjmp((v4 + 320 * v3), 1);
}

BOOL SIGetExceptionPort(_DWORD *a1, void *a2)
{
  v3 = _exceptionPort[0];
  if (!_exceptionPort[0])
  {
    if (gSILogLevels[0] >= 5)
    {
      v9 = *__error();
      v10 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v10, OS_LOG_TYPE_DEFAULT, "Allocating threads and such.", buf, 2u);
      }

      *__error() = v9;
    }

    v5 = MEMORY[0x1E69E9A60];
    v6 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, _exceptionPort);
    if (v6)
    {
      v11 = v6;
      v12 = __si_assert_copy_extra_332();
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = "";
      }

      v15 = mach_error_string(v11);
      __message_assert("%s:%u: failed assertion '%s' %s %s", "ContentIndexExceptionHandler.c", 1230, "krc==KERN_SUCCESS", v14, v15);
      free(v13);
      if (__valid_fs(-1))
      {
        v16 = 2989;
      }

      else
      {
        v16 = 3072;
      }

      *v16 = -559038737;
      abort();
    }

    inserted = mach_port_insert_right(*v5, _exceptionPort[0], _exceptionPort[0], 0x14u);
    if (inserted)
    {
      v17 = inserted;
      v18 = __si_assert_copy_extra_332();
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = "";
      }

      v21 = mach_error_string(v17);
      __message_assert("%s:%u: failed assertion '%s' %s %s", "ContentIndexExceptionHandler.c", 1235, "krc==KERN_SUCCESS", v20, v21);
      free(v19);
      if (__valid_fs(-1))
      {
        v22 = 2989;
      }

      else
      {
        v22 = 3072;
      }

      *v22 = -559038737;
      abort();
    }

    *a1 = _exceptionPort[0];
  }

  result = v3 == 0;
  *a2 = handleException;
  return result;
}

void __makeThreadId_block_invoke()
{
  v26 = *MEMORY[0x1E69E9840];
  if (!__THREAD_SLOT_KEY[0] && pthread_key_create(__THREAD_SLOT_KEY, freeThreadSlot))
  {
    v8 = __si_assert_copy_extra_332();
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexExceptionHandler.c", 1256, "result==0", v10);
LABEL_20:
    free(v9);
    if (__valid_fs(-1))
    {
      v13 = 2989;
    }

    else
    {
      v13 = 3072;
    }

    *v13 = -559038737;
    abort();
  }

  if (!__THREAD_STR_DATA_KEY[0] && pthread_key_create(__THREAD_STR_DATA_KEY, MEMORY[0x1E69E9B38]))
  {
    v11 = __si_assert_copy_extra_332();
    v9 = v11;
    v12 = "";
    if (v11)
    {
      v12 = v11;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexExceptionHandler.c", 1260, "result==0", v12);
    goto LABEL_20;
  }

  v0 = -2048;
  v1 = &unk_1EDD80ED8;
  do
  {
    v1[3] = -1;
    OSAtomicEnqueue(&sAvailabeThreadEntries, v1, 0);
    v1 -= 4;
  }

  while (!__CFADD__(v0++, 1));
  if (!_exceptionPort[0])
  {
    v24 = 0;
    SIGetExceptionPort(&v23, &v22);
    memset(&v25, 0, sizeof(v25));
    pthread_attr_init(&v25);
    v3 = *__error();
    v4 = _SILogForLogForCategory(0);
    v5 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v4, v5))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v4, v5, "Creating exception handler thread", buf, 2u);
    }

    *__error() = v3;
    v6 = pthread_create(&v24, &v25, _handleExceptions, _exceptionPort);
    pthread_attr_destroy(&v25);
    if (v6)
    {
      v14 = __si_assert_copy_extra_332();
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = "";
      }

      v17 = mach_error_string(v6);
      __message_assert("%s:%u: failed assertion '%s' %s %s", "ContentIndexExceptionHandler.c", 1289, "krc==KERN_SUCCESS", v16, v17);
      free(v15);
      if (__valid_fs(-1))
      {
        v18 = 2989;
      }

      else
      {
        v18 = 3072;
      }

      *v18 = -559038737;
      abort();
    }

    if (gSILogLevels[0] >= 5)
    {
      v19 = *__error();
      v20 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25.__sig) = 0;
        _os_log_impl(&dword_1C278D000, v20, OS_LOG_TYPE_DEFAULT, "Done allocating threads and such.", &v25, 2u);
      }

      *__error() = v19;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void _handleExceptions(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  if (gSILogLevels[0] >= 5)
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *MEMORY[0x1E69E9A60];
      v9[0].msgh_bits = 67109120;
      v9[0].msgh_size = v6;
      _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "starting exc_thread loop in task %d", v9, 8u);
    }

    *__error() = v4;
  }

  while (1)
  {
    do
    {
      bzero(v9, 0x1000uLL);
      v3 = *v2;
      v9[0].msgh_size = 4096;
      v9[0].msgh_local_port = v3;
    }

    while (mach_msg(v9, 2, 0, 0x1000u, v3, 1u, 0));
    bzero(&v7, 0x1000uLL);
    mach_exc_server(v9, &v7);
    mach_msg(&v7, 1, *(&msg.msgh_bits + 3), 0, 0, 0, 0);
  }
}

uint64_t setCrashStateTarget(int a1)
{
  v2 = __THREAD_SLOT_KEY;
  if (!__THREAD_SLOT_KEY)
  {
    makeThreadId();
    v2 = __THREAD_SLOT_KEY;
  }

  v3 = pthread_getspecific(v2);
  if (!v3 || v3 >= 0x801)
  {
    makeThreadId();
    v3 = pthread_getspecific(__THREAD_SLOT_KEY);
  }

  v4 = 0;
  if (v3 && v3 <= 0x800)
  {
    v5 = &threadData[9 * v3];
    v4 = *(v5 - 11);
    *(v5 - 11) = a1;
  }

  return v4;
}

BOOL CICleanUpThreadLocGet(void *a1)
{
  v2 = __THREAD_SLOT_KEY;
  if (!__THREAD_SLOT_KEY)
  {
    makeThreadId();
    v2 = __THREAD_SLOT_KEY;
  }

  v3 = pthread_getspecific(v2);
  *a1 = v3 - 1;
  return v3 != 0;
}

uint64_t CIOnThreadCleanUpReset(unsigned int a1)
{
  result = CICleanUpThreadLoc();
  v3 = &threadData[9 * result];
  v5 = *(v3 + 14);
  v4 = (v3 + 7);
  if (v5 > a1)
  {
    v6 = result;
    do
    {
      result = CIOnThreadCleanUpPop(v6);
    }

    while (*v4 > a1);
  }

  return result;
}

uint64_t _data_map64_wrlock(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4573))
  {
    v1 = 0;
  }

  else
  {
    v1 = _db_write_lock(a1);
    if (v1)
    {
      v4 = *__error();
      v5 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = v1;
        if (v1 == -1)
        {
          v6 = *__error();
        }

        v7 = 136315650;
        v8 = "_data_map64_wrlock";
        v9 = 1024;
        v10 = 261;
        v11 = 1024;
        v12 = v6;
        _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: _data_map64_wrlock error %d", &v7, 0x18u);
      }

      *__error() = v4;
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t _data_map64_rdlock(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4573))
  {
    lock = 0;
  }

  else
  {
    lock = db_read_lock(a1);
    if (lock)
    {
      v4 = *__error();
      v5 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = lock;
        if (lock == -1)
        {
          v6 = *__error();
        }

        v7 = 136315650;
        v8 = "_data_map64_rdlock";
        v9 = 1024;
        v10 = 271;
        v11 = 1024;
        v12 = v6;
        _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: _data_map64_rdlock error %d", &v7, 0x18u);
      }

      *__error() = v4;
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return lock;
}

uint64_t _data_map64_unlock(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4573))
  {
    v1 = 0;
  }

  else
  {
    v1 = db_rwlock_unlock_unknown(a1);
    if (v1)
    {
      v4 = *__error();
      v5 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = v1;
        if (v1 == -1)
        {
          v6 = *__error();
        }

        v7 = 136315650;
        v8 = "_data_map64_unlock";
        v9 = 1024;
        v10 = 281;
        v11 = 1024;
        v12 = v6;
        _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: _data_map64_unlock error %d", &v7, 0x18u);
      }

      *__error() = v4;
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t data_map64_init_with_ctx(uint64_t a1)
{
  v138 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 20);
  v106 = *(a1 + 16);
  bzero(__str, 0x400uLL);
  v5 = malloc_type_calloc(1uLL, 0x11E8uLL, 0x10A0040B9F7BED4uLL);
  v6 = v5;
  v7 = v5;
  v8 = v5 + 4096;
  v5[4573] = (v4 & 8) != 0;
  *(v5 + 54) = 1684300900;
  if ((v4 & 8) == 0)
  {
    *(v5 + 26) = 0;
    *(v5 + 11) = 0u;
    *(v5 + 12) = 0u;
    *(v5 + 9) = 0u;
    *(v5 + 10) = 0u;
    *(v5 + 7) = 0u;
    *(v5 + 8) = 0u;
    *(v5 + 5) = 0u;
    *(v5 + 6) = 0u;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    pthread_mutex_init(v5, 0);
  }

  *(v7 + 232) = -1;
  *(v7 + 4456) = -1;
  *(v7 + 4496) = -1;
  *(v7 + 312) = 0;
  *(v7 + 280) = 0;
  *(v7 + 288) = 0;
  *(v7 + 272) = 0;
  *(v7 + 4536) = *(a1 + 24);
  *(v7 + 4544) = *(a1 + 56);
  *(v7 + 4552) = 0;
  v8[476] = (v4 & 0xFFFFFF) != 0;
  v115 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v10 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, v7, 0, add_explicit + 1);
  v113 = HIDWORD(v10);
  v114 = v10;
  v112 = __PAIR64__(v11, v12);
  v13 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
  v14 = *(v13 + 312);
  v15 = *(v13 + 224);
  if (v15)
  {
    v15(*(v13 + 288));
  }

  v111 = v114;
  v110 = v113;
  v109 = v112;
  if (_setjmp(v13))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v122 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v122, 2u);
    }

    *(v13 + 312) = v14;
    CIOnThreadCleanUpReset(v109);
    dropThreadId(v111, 1, add_explicit + 1);
    CICleanUpReset(v111, HIDWORD(v109));
    if (v115)
    {
      goto LABEL_125;
    }

    goto LABEL_123;
  }

  if (v3)
  {
    v16 = strlen(v3);
    if (v2 != -1 && v16 - 241 > 0xFFFFFFFFFFFFFF0FLL)
    {
      v107 = v14;
      v17 = v2;
      if ((v4 & 2) != 0)
      {
        v18 = 0;
      }

      else
      {
        v18 = ((v4 & 1) << 10) | 0x20000202;
      }

      v105 = v18;
      snprintf(__str, 0x400uLL, "%s.header", v3);
      v19 = fd_create_protected(v17, __str, v18, 3u);
      *(v7 + 248) = v19;
      *(v7 + 264) = fd_lseek(v19, 0, 2);
      snprintf(__str, 0x400uLL, "%s.data", v3);
      v20 = fd_create_protected(v17, __str, v18, 0);
      v21 = v20;
      if ((v4 & 3) != 0 || (memset(&v136, 0, sizeof(v136)), fd_stat(v20, &v136)) || (v22 = v136.st_blocks << 9, v136.st_blocks << 9 <= v136.st_size + 0x400000))
      {
        v24 = v21;
      }

      else
      {
        bzero(v122, 0x400uLL);
        v104 = *__error();
        v23 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v117 = v22;
          v118 = 2048;
          st_size = v136.st_size;
          v120 = 2080;
          v121 = __str;
          _os_log_impl(&dword_1C278D000, v23, OS_LOG_TYPE_DEFAULT, "found allocated size %lld for %lld %s", buf, 0x20u);
        }

        *__error() = v104;
        snprintf(v122, 0x400uLL, "tmp.%s.data.1", v3);
        v24 = fd_create_protected(v17, v122, 1538, 0);
        if (fd_copyfile(v21, v24, 0) || (snprintf(v122, 0x400uLL, "tmp.%s.data.2", v3), fd_rename(v21, v122)) || fd_rename(v24, __str))
        {
          v25 = v24;
          v24 = v21;
        }

        else
        {
          _fd_unlink_with_origin(v21, 0);
          fd_release(v21);
          v25 = 0;
        }

        v26 = v25;
        _fd_unlink_with_origin(v25, 0);
        fd_release(v26);
      }

      v30 = fd_lseek(v24, 0, 2);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 0x40000000;
      aBlock[2] = __data_map64_init_with_ctx_block_invoke;
      aBlock[3] = &__block_descriptor_tmp_7069;
      aBlock[4] = v7;
      *(v7 + 316) = (v4 & 2) >> 1;
      *(v7 + 280) = v24;
      *(v7 + 288) = v30;
      *(v7 + 312) = 1;
      *(v7 + 317) = 1;
      *(v7 + 320) = _Block_copy(aBlock);
      *(v7 + 328) = 26;
      bzero(v6 + 336, 0x1000uLL);
      snprintf(__str, 0x400uLL, "%s.offsets", v3);
      v31 = fd_create_protected(v17, __str, v105, 3u);
      *(v7 + 4432) = v31;
      *(v7 + 4448) = fd_lseek(v31, 0, 2);
      snprintf(__str, 0x400uLL, "%s.buckets", v3);
      v32 = fd_create_protected(v17, __str, 514, 3u);
      *(v7 + 4472) = v32;
      *(v7 + 4480) = fd_lseek(v32, 0, 2);
      if (v4)
      {
        if (fd_truncate(*(v7 + 248), 92) == -1)
        {
          v27 = *__error();
          v55 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_114;
          }

          *v122 = 136315394;
          *&v122[4] = "data_map64_init_with_ctx";
          *&v122[12] = 1024;
          *&v122[14] = 1078;
          v35 = "%s:%d: fd_truncate error";
          goto LABEL_112;
        }

        v38 = malloc_type_calloc(1uLL, 0x5CuLL, 0x100004034A301B9uLL);
        *(v7 + 272) = v38;
        if (!v38)
        {
          v27 = *__error();
          v55 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_114;
          }

          *v122 = 136315394;
          *&v122[4] = "data_map64_init_with_ctx";
          *&v122[12] = 1024;
          *&v122[14] = 1086;
          v35 = "%s:%d: offset fd_mmap error";
          goto LABEL_112;
        }

        *(v7 + 264) = 92;
        *v38 = 0x446174615064;
        *(v38 + 3) = v106;
        *(v38 + 4) = 0;
        *(v38 + 2) = 14;
        *(v38 + 20) = 0;
        v39 = MEMORY[0x1E69E9AC8];
        if ((_storageWindowsSetFileSize(v6 + 35, *MEMORY[0x1E69E9AC8]) & 1) == 0)
        {
          v27 = *__error();
          v55 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_114;
          }

          *v122 = 136315394;
          *&v122[4] = "data_map64_init_with_ctx";
          *&v122[12] = 1024;
          *&v122[14] = 1099;
          v35 = "%s:%d: fd_truncate error";
          goto LABEL_112;
        }

        if (fd_truncate(*(v7 + 4432), *v39 & 0xFFFFFFFFFFFFFFF0) == -1)
        {
          v27 = *__error();
          v55 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_114;
          }

          *v122 = 136315394;
          *&v122[4] = "data_map64_init_with_ctx";
          *&v122[12] = 1024;
          *&v122[14] = 1105;
          v35 = "%s:%d: fd_truncate error";
          goto LABEL_112;
        }

        v40 = fd_mmap(*(v7 + 4432));
        *(v7 + 4456) = v40;
        if (v40 == -1)
        {
          v27 = *__error();
          v55 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_114;
          }

          *v122 = 136315394;
          *&v122[4] = "data_map64_init_with_ctx";
          *&v122[12] = 1024;
          *&v122[14] = 1110;
          v35 = "%s:%d: offsets fd_mmap error";
          goto LABEL_112;
        }

        *(v7 + 4440) = 0x100000;
        v41 = *v39;
        v42 = *v39 >> 4;
        *(v7 + 4448) = *v39 & 0xFFFFFFFFFFFFFFF0;
        *(v7 + 4464) = v42;
        v43 = v41 & 0xFFFFFFFFFFFFFFF8;
        if (fd_truncate(*(v7 + 4472), v41 & 0xFFFFFFFFFFFFFFF8) == -1)
        {
          v27 = *__error();
          v55 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_114;
          }

          *v122 = 136315394;
          *&v122[4] = "data_map64_init_with_ctx";
          *&v122[12] = 1024;
          *&v122[14] = 1120;
          v35 = "%s:%d: fd_truncate error";
          goto LABEL_112;
        }

        v44 = fd_mmap(*(v7 + 4472));
        *(v7 + 4496) = v44;
        if (v44 == -1)
        {
          v27 = *__error();
          v55 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_114;
          }

          *v122 = 136315394;
          *&v122[4] = "data_map64_init_with_ctx";
          *&v122[12] = 1024;
          *&v122[14] = 1126;
          v35 = "%s:%d: hash fd_mmap error";
          goto LABEL_112;
        }

        *(v7 + 4488) = 0x100000;
        *(v7 + 4480) = v43;
        v45 = *v39 >> 3;
        *(*(v7 + 272) + 28) = v45;
        *(v7 + 4504) = v45;
        data_entry_store<unsigned long long,false,true,false>((v6 + 280), dword_1E81997B0);
        v46 = *(v7 + 272);
        *(v46 + 20) = *(v7 + 296);
        v47 = *(v7 + 4456);
        *v47 = 0;
        v47[1] = 0;
        *(v46 + 36) = 1;
        v48 = (v6 + 224);
        v49 = 0;
        goto LABEL_102;
      }

      if (*(v7 + 264) <= 0x5BuLL)
      {
        v27 = *__error();
        v33 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = *(v7 + 264);
          *v122 = 136315650;
          *&v122[4] = "data_map64_init_with_ctx";
          *&v122[12] = 1024;
          *&v122[14] = 1150;
          *&v122[18] = 2048;
          *&v122[20] = v34;
          v35 = "%s:%d: invalid header size %ld";
          v36 = v33;
          v37 = 28;
LABEL_113:
          _os_log_error_impl(&dword_1C278D000, v36, OS_LOG_TYPE_ERROR, v35, v122, v37);
          goto LABEL_114;
        }

        goto LABEL_114;
      }

      v50 = malloc_type_calloc(1uLL, 0x5CuLL, 0x100004034A301B9uLL);
      *(v7 + 272) = v50;
      if (!v50)
      {
        v27 = *__error();
        v61 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          *v122 = 136315394;
          *&v122[4] = "data_map64_init_with_ctx";
          *&v122[12] = 1024;
          *&v122[14] = 1157;
          v35 = "%s:%d: header calloc error";
          v36 = v61;
          v37 = 18;
          goto LABEL_113;
        }

LABEL_114:
        v14 = v107;
        goto LABEL_115;
      }

      if ((v4 & 0x80) != 0 && (sibling_with_suffix_protected = fd_create_sibling_with_suffix_protected(*(v7 + 248), ".shadow", v105)) != 0)
      {
        v52 = sibling_with_suffix_protected;
        v53 = fd_copyfile(sibling_with_suffix_protected, *(v7 + 248), 0);
        v49 = v53 == 0;
        v54 = (v53 != 0) & (v4 >> 2);
        fd_release(v52);
      }

      else
      {
        v49 = 0;
        v54 = (v4 >> 2) & 1;
      }

      v56 = fd_pread(*(v7 + 248), *(v7 + 272), 0x5CuLL, 0);
      v27 = *__error();
      v57 = _SILogForLogForCategory(0);
      v55 = v57;
      if (v56 != 92)
      {
        if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_114;
        }

        *v122 = 136315394;
        *&v122[4] = "data_map64_init_with_ctx";
        *&v122[12] = 1024;
        *&v122[14] = 1175;
        v35 = "%s:%d: header pread error";
        goto LABEL_112;
      }

      v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
      if ((v4 & 0x80) != 0)
      {
        if (v58)
        {
          v62 = *(*(v7 + 272) + 36);
          *v122 = 134217984;
          *&v122[4] = v62;
          v60 = "recovered next_id: %llu";
          goto LABEL_63;
        }
      }

      else if (v58)
      {
        v59 = *(*(v7 + 272) + 36);
        *v122 = 134217984;
        *&v122[4] = v59;
        v60 = "opened next_id: %llu";
LABEL_63:
        _os_log_impl(&dword_1C278D000, v55, OS_LOG_TYPE_DEFAULT, v60, v122, 0xCu);
      }

      *__error() = v27;
      v63 = *(v7 + 272);
      *(v7 + 224) = *(v63 + 36);
      v48 = (v7 + 224);
      *(v7 + 296) = *(v63 + 20);
      *(v7 + 4464) = *(v7 + 4448) >> 4;
      *(v7 + 4504) = *(v63 + 28);
      *(v7 + 4512) = *(v63 + 68);
      *(v7 + 4528) = *(v63 + 84);
      if (v54)
      {
        v64 = *__error();
        v65 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          v66 = *(*(v7 + 272) + 60);
          *v122 = 134217984;
          *&v122[4] = v66;
          _os_log_impl(&dword_1C278D000, v65, OS_LOG_TYPE_DEFAULT, "use_shadow next_id: %llu", v122, 0xCu);
        }

        *__error() = v64;
        v67 = *(v7 + 272);
        v68 = *(v67 + 20);
        v69 = *(v67 + 44);
        if (v68 < v69)
        {
          goto LABEL_73;
        }

        v70 = *(v67 + 44);
        if (v69 != v68)
        {
          if ((v4 & 2) == 0)
          {
            *(v67 + 20) = v69;
          }

          *(v7 + 296) = v69;
        }

        v71 = *(v67 + 60);
        if (*v48 < v71)
        {
LABEL_73:
          v72 = 0;
LABEL_74:
          v14 = v107;
          goto LABEL_116;
        }

        if (*v48 != v71)
        {
          if ((v4 & 2) == 0)
          {
            *(v67 + 36) = v71;
            *(v67 + 20) = v70;
            *(v67 + 28) = 0;
          }

          *(v7 + 224) = v71;
          *(v7 + 4504) = 0;
        }
      }

      v73 = MEMORY[0x1E69E9AC8];
      if (((*(v7 + 4448) + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]) <= 0x100000)
      {
        v74 = 0x100000;
      }

      else
      {
        v74 = (*(v7 + 4448) + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
      }

      v75 = fd_mmap(*(v7 + 4432));
      *(v7 + 4456) = v75;
      if (v75 == -1)
      {
        v27 = *__error();
        v55 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_114;
        }

        *v122 = 136315394;
        *&v122[4] = "data_map64_init_with_ctx";
        *&v122[12] = 1024;
        *&v122[14] = 1230;
        v35 = "%s:%d: offset fd_mmap error";
        goto LABEL_112;
      }

      *(v7 + 4440) = v74;
      if (((*(v7 + 4480) + *v73 - 1) & -*v73) <= 0x100000)
      {
        v76 = 0x100000;
      }

      else
      {
        v76 = (*(v7 + 4480) + *v73 - 1) & -*v73;
      }

      v77 = fd_mmap(*(v7 + 4472));
      *(v7 + 4496) = v77;
      if (v77 == -1)
      {
        v27 = *__error();
        v55 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_114;
        }

        *v122 = 136315394;
        *&v122[4] = "data_map64_init_with_ctx";
        *&v122[12] = 1024;
        *&v122[14] = 1239;
        v35 = "%s:%d: offset fd_mmap error";
        goto LABEL_112;
      }

      *(v7 + 4488) = v76;
      v78 = *(v7 + 272);
      if (*(v78 + 36))
      {
        v79 = *v48;
        goto LABEL_103;
      }

      *(v78 + 36) = 1;
LABEL_102:
      v79 = 1;
      *v48 = 1;
LABEL_103:
      if (*(v7 + 4464) < v79)
      {
        v27 = *__error();
        v80 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          v81 = *(v7 + 4464);
          v82 = *(v7 + 224);
          *v122 = 136315906;
          *&v122[4] = "data_map64_init_with_ctx";
          *&v122[12] = 1024;
          *&v122[14] = 1260;
          *&v122[18] = 2048;
          *&v122[20] = v81;
          *&v122[28] = 2048;
          *&v122[30] = v82;
          v35 = "%s:%d: invalid offset size 1 - %lld %lld";
          v36 = v80;
          v37 = 38;
          goto LABEL_113;
        }

        goto LABEL_114;
      }

      v83 = *(v7 + 272);
      if (*v83 == 0x446174615064)
      {
        v84 = *(v83 + 8);
        if (v84 <= 0xD)
        {
          v27 = *__error();
          v85 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            *v122 = 136315650;
            *&v122[4] = "data_map64_init_with_ctx";
            *&v122[12] = 1024;
            *&v122[14] = 1270;
            *&v122[18] = 1024;
            *&v122[20] = v84;
            v35 = "%s:%d: invalid version %d";
            v36 = v85;
            v37 = 24;
            goto LABEL_113;
          }

          goto LABEL_114;
        }

        v99 = *(v83 + 12);
        if (v99 != v106 && v99)
        {
          v27 = *__error();
          v100 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_114;
          }

          v101 = *(*(v7 + 272) + 12);
          *v122 = 136315906;
          *&v122[4] = "data_map64_init_with_ctx";
          *&v122[12] = 1024;
          *&v122[14] = 1275;
          *&v122[18] = 1024;
          *&v122[20] = v101;
          *&v122[24] = 1024;
          *&v122[26] = v106;
          v35 = "%s:%d: invalid extra_size %d %d";
          v36 = v100;
          v37 = 30;
          goto LABEL_113;
        }

        *(v7 + 220) = v106;
        if (*(v7 + 264) <= 0x5BuLL)
        {
          v27 = *__error();
          v28 = _SILogForLogForCategory(0);
          v14 = v107;
          if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_115;
          }

          *v122 = 136315394;
          *&v122[4] = "data_map64_init_with_ctx";
          *&v122[12] = 1024;
          *&v122[14] = 1283;
          v29 = "%s:%d: invalid header size";
          goto LABEL_28;
        }

        if (*(v7 + 288) < *(v7 + 296))
        {
          v27 = *__error();
          v55 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_114;
          }

          *v122 = 136315394;
          *&v122[4] = "data_map64_init_with_ctx";
          *&v122[12] = 1024;
          *&v122[14] = 1288;
          v35 = "%s:%d: invalid storage size 1";
          goto LABEL_112;
        }

        if (v49 || !*(v83 + 16) || (v102 = *(v7 + 4504)) == 0 || (v103 = *(v7 + 4480), v103 < 8 * v102))
        {
          if (!_data_map64_rehash(v7))
          {
            v27 = *__error();
            v55 = _SILogForLogForCategory(0);
            if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_114;
            }

            *v122 = 136315394;
            *&v122[4] = "data_map64_init_with_ctx";
            *&v122[12] = 1024;
            *&v122[14] = 1295;
            v35 = "%s:%d: re-build hash error";
            goto LABEL_112;
          }

          v103 = *(v7 + 4480);
          v102 = *(v7 + 4504);
        }

        if (v103 >= 8 * v102)
        {
          v72 = 1;
          goto LABEL_74;
        }

        v27 = *__error();
        v55 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_114;
        }

        *v122 = 136315394;
        *&v122[4] = "data_map64_init_with_ctx";
        *&v122[12] = 1024;
        *&v122[14] = 1302;
        v35 = "%s:%d: invalid hash size 1";
      }

      else
      {
        v27 = *__error();
        v55 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_114;
        }

        *v122 = 136315394;
        *&v122[4] = "data_map64_init_with_ctx";
        *&v122[12] = 1024;
        *&v122[14] = 1264;
        v35 = "%s:%d: invalid offset signature";
      }

LABEL_112:
      v36 = v55;
      v37 = 18;
      goto LABEL_113;
    }
  }

  v27 = *__error();
  v28 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *v122 = 136315394;
    *&v122[4] = "data_map64_init_with_ctx";
    *&v122[12] = 1024;
    *&v122[14] = 943;
    v29 = "%s:%d: param error";
LABEL_28:
    _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, v29, v122, 0x12u);
  }

LABEL_115:
  *__error() = v27;
  v72 = 0;
LABEL_116:
  v115 = 1;
  v86 = threadData[9 * v111 + 1] + 320 * v110;
  *(v86 + 312) = v14;
  v87 = *(v86 + 232);
  if (v87)
  {
    v87(*(v86 + 288));
  }

  dropThreadId(v111, 0, add_explicit + 1);
  if ((v115 & 1) == 0)
  {
LABEL_123:
    v94 = *__error();
    v95 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      v97 = fd_realpath(*(v7 + 248), __str);
      *&v122[4] = "data_map64_init_with_ctx";
      v98 = "";
      *v122 = 136315650;
      if (v97)
      {
        v98 = v97;
      }

      *&v122[12] = 1024;
      *&v122[14] = 1316;
      *&v122[18] = 2080;
      *&v122[20] = v98;
      _os_log_error_impl(&dword_1C278D000, v95, OS_LOG_TYPE_ERROR, "%s:%d: exception processing %s", v122, 0x1Cu);
    }

    *__error() = v94;
    goto LABEL_125;
  }

  if ((v72 & 1) == 0)
  {
LABEL_125:
    data_map64_destroy(v7);
    result = 0;
    goto LABEL_126;
  }

  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v123 = 0u;
  memset(v122, 0, sizeof(v122));
  v88 = *__error();
  v89 = _SILogForLogForCategory(7);
  v90 = 2 * (dword_1EBF46AE8 < 4);
  if (os_log_type_enabled(v89, v90))
  {
    v91 = fd_name(*(v7 + 248), v122, 0x100uLL);
    v92 = *(v7 + 224) - 1;
    v136.st_dev = 136315394;
    *&v136.st_mode = v91;
    WORD2(v136.st_ino) = 2048;
    *(&v136.st_ino + 6) = v92;
    _os_log_impl(&dword_1C278D000, v89, v90, "Opened map %s with counts: %lld", &v136, 0x16u);
  }

  *__error() = v88;
  result = v7;
LABEL_126:
  v96 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _data_map64_rehash(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  *(a1 + 4520) = 0;
  v2 = *(a1 + 224) - *(a1 + 4512);
  v3 = *__error();
  v4 = _SILogForLogForCategory(0);
  v5 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 224);
    v7 = *(a1 + 4512);
    v8 = *(a1 + 4504);
    v27 = 134219008;
    v28 = a1;
    v29 = 2048;
    *v30 = v6;
    *&v30[8] = 2048;
    *&v30[10] = v7;
    v31 = 2048;
    v32 = v2;
    v33 = 2048;
    v34 = v8;
    _os_log_impl(&dword_1C278D000, v4, v5, "rehash %p max id: %lld deletes: %lld count: %lld hash_size: %lld", &v27, 0x34u);
  }

  *__error() = v3;
  v9 = *(a1 + 4496);
  v10 = 8 * *(a1 + 4504);
  fd_system_status_stall_if_busy();
  msync(v9, v10, 4);
  if (fd_truncate(*(a1 + 4472), 0) == -1)
  {
    goto LABEL_22;
  }

  v11 = 2 * v2;
  if ((2 * v2) <= *MEMORY[0x1E69E9AC8] >> 3)
  {
    v11 = *MEMORY[0x1E69E9AC8] >> 3;
  }

  *(a1 + 4504) = v11;
  v12 = 8 * v11;
  if (fd_truncate(*(a1 + 4472), 8 * v11) == -1)
  {
    goto LABEL_22;
  }

  if ((*(a1 + 4570) & 1) == 0)
  {
    _data_map64_dirty(a1);
    *(a1 + 4570) = 1;
  }

  *(a1 + 4480) = v12;
  v13 = *(a1 + 4488);
  if (v12 <= v13)
  {
    goto LABEL_14;
  }

  v14 = *(a1 + 4488);
  do
  {
    v15 = v14;
    v14 *= 2;
  }

  while (v15 < v12);
  munmap(*(a1 + 4496), v13);
  *(a1 + 4488) = 0;
  *(a1 + 4496) = -1;
  v16 = fd_mmap(*(a1 + 4472));
  *(a1 + 4496) = v16;
  if (v16 == -1)
  {
LABEL_22:
    v23 = *__error();
    v24 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v27 = 136315650;
      v28 = "_data_map64_rehash";
      v29 = 1024;
      *v30 = 556;
      *&v30[4] = 2048;
      *&v30[6] = a1;
      _os_log_error_impl(&dword_1C278D000, v24, OS_LOG_TYPE_ERROR, "%s:%d: re-build hash error %p", &v27, 0x1Cu);
    }

    v25 = __error();
    result = 0;
    *v25 = v23;
    goto LABEL_25;
  }

  *(a1 + 4488) = v15;
LABEL_14:
  v17 = *(a1 + 224);
  if (v17 >= 2)
  {
    v18 = 0;
    for (i = 1; i < v17; ++i)
    {
      v20 = *(a1 + 4456) + v18;
      if (*(v20 + 16) != 1)
      {
        bucket_entry = _data_map64_get_bucket_entry(a1, *(v20 + 24), i, 0, 0);
        if (!bucket_entry || *bucket_entry)
        {
          goto LABEL_22;
        }

        *bucket_entry = i;
        v17 = *(a1 + 224);
      }

      v18 += 16;
    }
  }

  result = 1;
LABEL_25:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

void data_map64_destroy(uint64_t a1)
{
  if (a1)
  {
    v2 = (a1 + 4096);
    makeThreadId();
    if ((*(a1 + 232) + 1) >= 2)
    {
      v44 = 0;
      add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1, 0, add_explicit + 1);
      v42 = HIDWORD(v11);
      v43 = v11;
      v40 = v13;
      v41 = v12;
      v14 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
      v15 = *(v14 + 312);
      v16 = *(v14 + 224);
      if (v16)
      {
        v16(*(v14 + 288));
      }

      v39 = v43;
      v38 = v42;
      v37 = __PAIR64__(v41, v40);
      if (_setjmp(v14))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v36 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v36, 2u);
        }

        *(v14 + 312) = v15;
        CIOnThreadCleanUpReset(v37);
        dropThreadId(v39, 1, add_explicit + 1);
        CICleanUpReset(v39, HIDWORD(v37));
        v17 = 0;
      }

      else
      {
        v29 = *(*(a1 + 232) + 96);
        v44 = 1;
        v30 = threadData[9 * v39 + 1] + 320 * v38;
        *(v30 + 312) = v15;
        v31 = *(v30 + 232);
        if (v31)
        {
          v31(*(v30 + 288));
        }

        dropThreadId(v39, 0, add_explicit + 1);
        v17 = v29;
      }

      v32 = v17;
      if ((v44 & 1) == 0)
      {
        v32 = *(a1 + 240);
      }

      munmap(*(a1 + 232), v32);
      *(a1 + 232) = -1;
      fd_release(*(a1 + 248));
      *(a1 + 248) = 0;
      v33 = *(a1 + 256);
      if (v33)
      {
        fd_release(v33);
        *(a1 + 256) = 0;
      }
    }

    else
    {
      v3 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v4 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1, 0, v3 + 1);
      v42 = HIDWORD(v4);
      v43 = v4;
      v40 = v6;
      v41 = v5;
      v7 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
      v8 = *(v7 + 312);
      v9 = *(v7 + 224);
      if (v9)
      {
        v9(*(v7 + 288));
      }

      v39 = v43;
      v38 = v42;
      v37 = __PAIR64__(v41, v40);
      if (_setjmp(v7))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v36 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v36, 2u);
        }

        *(v7 + 312) = v8;
        CIOnThreadCleanUpReset(v37);
        dropThreadId(v39, 1, v3 + 1);
        CICleanUpReset(v39, HIDWORD(v37));
      }

      else
      {
        v18 = *(a1 + 272);
        if (v18 && !*(v18 + 16))
        {
          if (v2[474] == 1)
          {
            v19 = *(a1 + 4496);
            v20 = 8 * *(a1 + 4504);
            fd_system_status_stall_if_busy();
            msync(v19, v20, 4);
            _fd_unlink_with_origin(*(a1 + 4472), 0);
            munmap(*(a1 + 4496), *(a1 + 4488));
            *(a1 + 4496) = -1;
          }

          if (v2[473] == 1)
          {
            storageWindowsKillPages(a1 + 280);
            storageWindowsUnmap(a1 + 280);
            storageWindowsClose(a1 + 280);
            fd_truncate(*(a1 + 280), *(*(a1 + 272) + 20));
          }

          if (v2[475] == 1)
          {
            v21 = *(a1 + 4456);
            v22 = 16 * *(a1 + 224);
            fd_system_status_stall_if_busy();
            msync(v21, v22, 4);
            munmap(*(a1 + 4456), *(a1 + 4440));
            *(a1 + 4456) = -1;
            fd_truncate(*(a1 + 4432), 16 * *(a1 + 224));
          }
        }

        v23 = threadData[9 * v39 + 1] + 320 * v38;
        *(v23 + 312) = v8;
        v24 = *(v23 + 232);
        if (v24)
        {
          v24(*(v23 + 288));
        }

        dropThreadId(v39, 0, v3 + 1);
      }

      v25 = *(a1 + 272);
      if (v25)
      {
        free(v25);
        *(a1 + 272) = 0;
      }

      fd_release(*(a1 + 248));
      *(a1 + 248) = 0;
      v26 = *(a1 + 256);
      if (v26)
      {
        fd_release(v26);
        *(a1 + 256) = 0;
      }

      storageWindowsUnmap(a1 + 280);
      storageWindowsClose(a1 + 280);
      v27 = *(a1 + 4456);
      if (v27 != -1)
      {
        munmap(v27, *(a1 + 4440));
        *(a1 + 4456) = -1;
        *(a1 + 4440) = 0;
      }

      fd_release(*(a1 + 4432));
      *(a1 + 4432) = 0;
      v28 = *(a1 + 4496);
      if (v28 != -1)
      {
        munmap(v28, *(a1 + 4488));
        *(a1 + 4496) = -1;
        *(a1 + 4488) = 0;
      }

      fd_release(*(a1 + 4472));
      *(a1 + 4472) = 0;
    }

    v34 = *(a1 + 4560);
    if (v34)
    {
      v35 = v34[2];
      if (v35)
      {
        CFRelease(v35);
      }

      free(v34);
      *(a1 + 4560) = 0;
    }

    if ((v2[477] & 1) == 0)
    {
      db_rwlock_destroy(a1);
    }

    free(a1);
  }
}

uint64_t _data_map64_dirty(uint64_t result)
{
  v1 = *(result + 272);
  if (*(v1 + 16))
  {
    v2 = result;
    *(v1 + 16) = 0;
    fd_pwrite(*(result + 248), v1, 0x5CuLL, 0);
    v3 = *(v2 + 248);

    return fd_sync(v3, 0);
  }

  return result;
}

uint64_t _data_map64_get_bucket_entry(void *a1, unint64_t a2, unint64_t a3, const void *a4, size_t a5)
{
  v76 = *MEMORY[0x1E69E9840];
  if (a1[28] > a3)
  {
    v7 = a5;
    v9 = 0;
    v10 = a1[563];
    v11 = a2 % v10;
    v43 = v10;
    while (1)
    {
      v44 = v9;
      if (v11 < v10)
      {
        break;
      }

      v21 = 0;
      v12 = v11;
LABEL_29:
      if (v21)
      {
        goto LABEL_36;
      }

      result = 0;
      v9 = 1;
      v10 = v11;
      v11 = 0;
      if (v44 & 1 | (v12 != v43))
      {
        goto LABEL_41;
      }
    }

    v12 = v11;
    while (1)
    {
      v13 = a1[562];
      v14 = *(v13 + 8 * v12);
      if (v14)
      {
        v15 = v14 == a3;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
LABEL_37:
        result = v13 + 8 * v12;
        goto LABEL_41;
      }

      if (!a3)
      {
        if (a1[28] <= v14)
        {
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v63 = 0u;
          v61 = 0u;
          v62 = 0u;
          v60 = 0u;
          v31 = *__error();
          v32 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v37 = a1[28];
            v38 = fd_name(a1[31], &v60, 0x100uLL);
            *buf = 136316418;
            v49 = "_data_map64_get_offset_entry";
            v50 = 1024;
            v51 = 359;
            v52 = 2048;
            v53 = v14;
            v54 = 2048;
            v55 = v37;
            v56 = 2048;
            v57 = a1;
            v58 = 2080;
            v59 = v38;
            _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p %s", buf, 0x3Au);
          }

          v33 = __error();
          result = 0;
          *v33 = v31;
          goto LABEL_41;
        }

        v16 = a1[557];
        if (!v16)
        {
          goto LABEL_36;
        }

        v17 = (v16 + 16 * v14);
        v18 = *v17;
        if (*v17 == 1)
        {
          goto LABEL_36;
        }

        if (v17[1] == a2)
        {
          v45 = 0;
          __s2 = 0;
          v47 = 0;
          v19 = a1[37];
          if (v19 <= v18)
          {
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v63 = 0u;
            v61 = 0u;
            v62 = 0u;
            v60 = 0u;
            v22 = *__error();
            v23 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v40 = a1[37];
              v24 = fd_name(a1[31], &v60, 0x100uLL);
              *buf = 136316418;
              v49 = "_data_map64_get_data_entry";
              v50 = 1024;
              v51 = 376;
              v52 = 2048;
              v53 = v18;
              v54 = 2048;
              v55 = v40;
              v56 = 2048;
              v57 = a1;
              v58 = 2080;
              v59 = v24;
              _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx 0x%lx %p %s", buf, 0x3Au);
            }

            *__error() = v22;
            v21 = 1;
            v7 = a5;
            goto LABEL_25;
          }

          data_entry_restore_64((a1 + 35), v18, v19, &v45, &v47);
          if (v47 == 1)
          {
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v63 = 0u;
            v61 = 0u;
            v62 = 0u;
            v60 = 0u;
            v39 = *__error();
            v20 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v25 = fd_name(a1[31], &v60, 0x100uLL);
              v26 = a1[37];
              *buf = 136316418;
              v49 = "_data_map64_get_data_entry";
              v50 = 1024;
              v51 = 372;
              v52 = 2080;
              v53 = v25;
              v54 = 2048;
              v55 = v18;
              v56 = 2048;
              v57 = v26;
              v58 = 2048;
              v59 = v45;
              _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: data_entry_restore_64 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx", buf, 0x3Au);
            }

            *__error() = v39;
            v21 = 1;
            goto LABEL_25;
          }

          if (v45 == v7 && !memcmp(a4, __s2, v7))
          {
            goto LABEL_37;
          }
        }
      }

      v21 = 0;
LABEL_25:
      ++v12;
      if ((v21 & 1) != 0 || v12 >= v10)
      {
        goto LABEL_29;
      }
    }
  }

  if (!a3)
  {
LABEL_36:
    result = 0;
    goto LABEL_41;
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v63 = 0u;
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  v28 = *__error();
  v29 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v35 = a1[28];
    v36 = fd_name(a1[31], &v60, 0x100uLL);
    *buf = 136316418;
    v49 = "_data_map64_get_bucket_entry";
    v50 = 1024;
    v51 = 446;
    v52 = 2048;
    v53 = a3;
    v54 = 2048;
    v55 = v35;
    v56 = 2048;
    v57 = a1;
    v58 = 2080;
    v59 = v36;
    _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p %s", buf, 0x3Au);
  }

  v30 = __error();
  result = 0;
  *v30 = v28;
LABEL_41:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t data_entry_restore_64(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int *a4, _BYTE *a5)
{
  v10 = _windowsResolvePtr(a1, a2, 8);
  v11 = *v10;
  if ((v11 & 0x80) == 0)
  {
    v12 = 1;
    goto LABEL_8;
  }

  if (a3 <= 1)
  {
    goto LABEL_7;
  }

  v13 = v10[1];
  if ((v10[1] & 0x80000000) == 0)
  {
    v11 = v11 & 0x7F | (v13 << 7);
    v12 = 2;
    goto LABEL_8;
  }

  if (a3 == 2)
  {
    goto LABEL_7;
  }

  v15 = v10[2];
  if ((v10[2] & 0x80000000) == 0)
  {
    v12 = 3;
    v11 = ((v13 & 0x7F) << 7) | (v15 << 14) | v11 & 0x7F;
    goto LABEL_8;
  }

  if (a3 <= 3)
  {
    goto LABEL_7;
  }

  v16 = v10[3];
  if ((v10[3] & 0x80000000) == 0)
  {
    v12 = 4;
    v11 = ((v15 & 0x7F) << 14) | (v16 << 21) | ((v13 & 0x7F) << 7) | v11 & 0x7F;
    goto LABEL_8;
  }

  if (a3 == 4)
  {
LABEL_7:
    v12 = 0;
    v11 = 0;
    *a5 = 1;
    goto LABEL_8;
  }

  v17 = v10[4];
  if (v17 < 0)
  {
    if (__valid_fs(-1))
    {
      v18 = __si_assert_copy_extra_332();
      si_analytics_log_7109(v18, v19, v20, v21, v22, v23, v24, v25, "VIntUtils.h");
      free(v18);
      v26 = 2816;
    }

    else
    {
      v26 = 3072;
    }

    *v26 = -559038737;
    abort();
  }

  v12 = 5;
  v11 = ((v16 & 0x7F) << 21) | (v17 << 28) | ((v15 & 0x7F) << 14) | ((v13 & 0x7F) << 7) | v11 & 0x7F;
LABEL_8:
  *a4 = v11;
  result = _windowsResolvePtr(a1, a2, v12 + v11);
  if (v12 + *a4 <= a3)
  {
    *(a4 + 1) = result + v12;
  }

  else
  {
    *a5 = 1;
  }

  return result;
}

void si_analytics_log_7109(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v13 = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v10[1] = &a9;
  vasprintf(v10, "%s:%u: failed assertion '%s' %s readVInt32_boundschecked: exceeds max size for uint32_t", &a9);
  SISetCrashCStr(v10[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v12 = v10[0];
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s", buf, 0xCu);
  }

  free(v10[0]);
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t _data_map64_match_address(uint64_t result, unint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 232);
    if (v4 != -1)
    {
      if (v4)
      {
        if (v4 <= a2)
        {
          v5 = *(result + 240);
          if (&v4[v5] > a2)
          {
            v6 = *(result + 248);
            v7 = "data ro header";
            v8 = a2;
            v9 = v3[30];
LABEL_21:
            log_map_access_error(v8, v4, v5, v9, v7, v6);
            return 1;
          }
        }
      }

      return 0;
    }

    if (storage_windows_contains_address(result + 280, a2))
    {
      return 1;
    }

    v4 = v3[557];
    v10 = (v4 + 1) < 2 || v4 > a2;
    if (v10 || (v5 = v3[555], &v4[v5] <= a2))
    {
      v4 = v3[562];
      if ((v4 + 1) < 2)
      {
        return 0;
      }

      if (v4 > a2)
      {
        return 0;
      }

      v5 = v3[561];
      if (&v4[v5] <= a2)
      {
        return 0;
      }

      v9 = v3[560];
      v6 = v3[559];
      v7 = "data buckets";
    }

    else
    {
      v9 = v3[556];
      v6 = v3[554];
      v7 = "data offsets";
    }

    v8 = a2;
    goto LABEL_21;
  }

  return result;
}

uint64_t _data_map64_sync_data(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v34 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1, 0, add_explicit + 1);
  v32 = HIDWORD(v3);
  v33 = v3;
  v30 = v5;
  v31 = v4;
  v6 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v7 = *(v6 + 312);
  v8 = *(v6 + 224);
  if (v8)
  {
    v8(*(v6 + 288));
  }

  if (_setjmp(v6))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v6 + 312) = v7;
    CIOnThreadCleanUpReset(v30);
    dropThreadId(v33, 1, add_explicit + 1);
    CICleanUpReset(v33, v31);
  }

  else
  {
    if (!*(a1 + 4576) && !*(*(a1 + 272) + 16))
    {
      if (*(a1 + 4569) == 1)
      {
        if (*(a1 + 312) >= 1)
        {
          v9 = 0;
          do
          {
            v10 = v9;
            storageWindowSync(*(a1 + 336 + 8 * v9), 0);
            v9 = v10 + 1;
          }

          while (v10 + 1 < *(a1 + 312));
        }

        *(a1 + 4569) = 0;
      }

      if (*(a1 + 4571) == 1)
      {
        v11 = *(*(a1 + 272) + 60);
        v12 = *(a1 + 4456) + 16 * v11;
        v13 = -*MEMORY[0x1E69E9AC8];
        v14 = 16 * (*(a1 + 224) - v11);
        fd_system_status_stall_if_busy();
        msync((v12 & v13), v14, 16);
        *(a1 + 4571) = 0;
      }

      if (*(a1 + 4570) == 1)
      {
        v15 = *(a1 + 4496);
        v16 = 8 * *(a1 + 4504);
        fd_system_status_stall_if_busy();
        msync(v15, v16, 16);
        *(a1 + 4570) = 0;
      }

      *(*(a1 + 272) + 20) = *(a1 + 296);
      v17 = *__error();
      v18 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 224);
        *buf = 134217984;
        *&buf[4] = v19;
        _os_log_impl(&dword_1C278D000, v18, OS_LOG_TYPE_DEFAULT, "sd update next_id = %lld", buf, 0xCu);
      }

      *__error() = v17;
      v20 = *(a1 + 272);
      *(v20 + 36) = *(a1 + 224);
      *(v20 + 28) = *(a1 + 4504);
      *(v20 + 68) = *(a1 + 4512);
      *(v20 + 84) = *(a1 + 4528);
      *(v20 + 16) = 0;
      fd_pwrite(*(a1 + 248), v20, 0x5CuLL, 0);
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      *buf = 0u;
      v42 = 0u;
      v21 = *__error();
      v22 = _SILogForLogForCategory(7);
      v23 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v22, v23))
      {
        v24 = fd_name(*(a1 + 248), buf, 0x100uLL);
        v25 = *(a1 + 224) - 1;
        *v35 = 136315650;
        v36 = v24;
        v37 = 2080;
        v38 = "sync";
        v39 = 2048;
        v40 = v25;
        _os_log_impl(&dword_1C278D000, v22, v23, "%s complete %s map with count: %lld", v35, 0x20u);
      }

      *__error() = v21;
    }

    v34 = 1;
    v26 = threadData[9 * v33 + 1] + 320 * v32;
    *(v26 + 312) = v7;
    v27 = *(v26 + 232);
    if (v27)
    {
      v27(*(v26 + 288));
    }

    dropThreadId(v33, 0, add_explicit + 1);
  }

  if (v34 == 1)
  {
    result = *(a1 + 4576);
  }

  else
  {
    *(a1 + 4576) = 22;
    result = 22;
  }

  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _data_map64_sync_header(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v34 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1, 0, add_explicit + 1);
  v32 = HIDWORD(v3);
  v33 = v3;
  v30 = v5;
  v31 = v4;
  v6 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v7 = *(v6 + 312);
  v8 = *(v6 + 224);
  if (v8)
  {
    v8(*(v6 + 288));
  }

  if (_setjmp(v6))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v6 + 312) = v7;
    CIOnThreadCleanUpReset(v30);
    dropThreadId(v33, 1, add_explicit + 1);
    CICleanUpReset(v33, v31);
    goto LABEL_15;
  }

  if (!*(a1 + 4576))
  {
    v9 = *(a1 + 272);
    if (*(v9 + 16) != 1)
    {
      *(v9 + 44) = *(v9 + 20);
      *(v9 + 60) = *(v9 + 36);
      *(v9 + 20) = *(a1 + 296);
      v22 = *__error();
      v23 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 224);
        *buf = 134217984;
        *&buf[4] = v24;
        _os_log_impl(&dword_1C278D000, v23, OS_LOG_TYPE_DEFAULT, "sh update next_id = %lld", buf, 0xCu);
      }

      *__error() = v22;
      v25 = *(a1 + 272);
      *(v25 + 36) = *(a1 + 224);
      *(v25 + 28) = *(a1 + 4504);
      *(v25 + 16) = 0;
      fd_pwrite(*(a1 + 248), v25, 0x5CuLL, 0);
      fd_sync(*(a1 + 248), 0);
      *(*(a1 + 272) + 16) = 2;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      *buf = 0u;
      v42 = 0u;
      v10 = *__error();
      v26 = _SILogForLogForCategory(7);
      v27 = 2 * (dword_1EBF46AE8 < 4);
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_12;
      }

      v28 = fd_name(*(a1 + 248), buf, 0x100uLL);
      v29 = *(a1 + 224) - 1;
      v35 = 136315650;
      v36 = v28;
      v37 = 2080;
      v38 = "sync";
      v39 = 2048;
      v40 = v29;
      v14 = "%s complete %s header with count: %llu";
      v15 = &v35;
      v16 = v26;
      v13 = v27;
      v17 = 32;
      goto LABEL_11;
    }
  }

  v10 = *__error();
  v11 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 224);
    *buf = 134217984;
    *&buf[4] = v12;
    v13 = OS_LOG_TYPE_DEFAULT;
    v14 = "Already clean; don't update next_id = %lld";
    v15 = buf;
    v16 = v11;
    v17 = 12;
LABEL_11:
    _os_log_impl(&dword_1C278D000, v16, v13, v14, v15, v17);
  }

LABEL_12:
  *__error() = v10;
  v34 = 1;
  v18 = threadData[9 * v33 + 1] + 320 * v32;
  *(v18 + 312) = v7;
  v19 = *(v18 + 232);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  dropThreadId(v33, 0, add_explicit + 1);
LABEL_15:
  if (v34 == 1)
  {
    result = *(a1 + 4576);
  }

  else
  {
    *(a1 + 4576) = 22;
    result = 22;
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t data_map64_shadow(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4576) || *(*(a1 + 272) + 16) != 2)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(a1 + 272) + 36);
      v11 = 134217984;
      v12 = v8;
      _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "Already shadowed; don't shadow next_id = %lld", &v11, 0xCu);
    }

    *__error() = v6;
  }

  else
  {
    v2 = *__error();
    v3 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 272) + 36);
      v11 = 134217984;
      v12 = v4;
      _os_log_impl(&dword_1C278D000, v3, OS_LOG_TYPE_DEFAULT, "shadow update next_id = %lld", &v11, 0xCu);
    }

    *__error() = v2;
    *(*(a1 + 272) + 16) = 2;
    sibling_with_suffix_protected = fd_create_sibling_with_suffix_protected(*(a1 + 248), ".shadow", 514);
    *(a1 + 256) = sibling_with_suffix_protected;
    fd_pwrite(sibling_with_suffix_protected, *(a1 + 272), 0x5CuLL, 0);
  }

  result = *(a1 + 4576);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t data_map64_commit_shadow(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4576) || *(*(a1 + 272) + 16) != 2)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 224);
      v10 = 134217984;
      v11 = v7;
      _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, "Already shadowed cs; don't shadow next_id = %lld", &v10, 0xCu);
    }

    *__error() = v5;
  }

  else
  {
    v2 = *__error();
    v3 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 224);
      v10 = 134217984;
      v11 = v4;
      _os_log_impl(&dword_1C278D000, v3, OS_LOG_TYPE_DEFAULT, "commit shadow update next_id = %lld", &v10, 0xCu);
    }

    *__error() = v2;
    fd_sync(*(a1 + 256), 0);
  }

  fd_release(*(a1 + 256));
  *(a1 + 256) = 0;
  result = *(a1 + 4576);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t data_map64_commit_shadow_complete(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4576) || *(*(a1 + 272) + 16) != 2)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 224);
      v11 = 134217984;
      v12 = v8;
      _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "Already shadowed csc; don't shadow next_id = %lld", &v11, 0xCu);
    }

    *__error() = v6;
  }

  else
  {
    v2 = *__error();
    v3 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 224);
      v11 = 134217984;
      v12 = v4;
      _os_log_impl(&dword_1C278D000, v3, OS_LOG_TYPE_DEFAULT, "commit shadow complete update next_id = %lld", &v11, 0xCu);
    }

    *__error() = v2;
    v5 = *(a1 + 272);
    *(v5 + 16) = 1;
    fd_pwrite(*(a1 + 248), v5, 0x5CuLL, 0);
    fd_sync(*(a1 + 248), 0);
  }

  result = *(a1 + 4576);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t data_map64_flush(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (_data_map64_rdlock(a1))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v21 = 0;
    makeThreadId();
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v4 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1, 0, add_explicit + 1);
    v19 = HIDWORD(v4);
    v20 = v4;
    v17 = v6;
    v18 = v5;
    v7 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
    v8 = *(v7 + 312);
    v9 = *(v7 + 224);
    if (v9)
    {
      v9(*(v7 + 288));
    }

    if (_setjmp(v7))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v7 + 312) = v8;
      CIOnThreadCleanUpReset(v17);
      dropThreadId(v20, 1, add_explicit + 1);
      CICleanUpReset(v20, v18);
      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      if (*(*(a1 + 272) + 16))
      {
        v11 = *__error();
        v12 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 224);
          *buf = 134217984;
          v23 = v13;
          _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "Not dirty; don't flush next_id = %lld", buf, 0xCu);
        }

        *__error() = v11;
        v10 = 0xFFFFFFFFLL;
      }

      else
      {
        v10 = _data_map64_sync_data(a1);
      }

      v21 = 1;
      v14 = threadData[9 * v20 + 1] + 320 * v19;
      *(v14 + 312) = v8;
      v15 = *(v14 + 232);
      if (v15)
      {
        v15(*(v14 + 288));
      }

      dropThreadId(v20, 0, add_explicit + 1);
    }

    if ((v21 & 1) == 0)
    {
      *(a1 + 4576) = 22;
    }

    _data_map64_unlock(a1);
    result = v10;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _data_map64_commit(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (_data_map64_rdlock(a1))
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  v27 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v4 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1, 0, add_explicit + 1);
  *buf = HIDWORD(v4);
  LODWORD(v34[0]) = v4;
  v26 = __PAIR64__(v5, v6);
  v7 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
  v8 = *(v7 + 312);
  v9 = *(v7 + 224);
  if (v9)
  {
    v9(*(v7 + 288));
  }

  v25 = v34[0];
  v24 = *buf;
  v23 = v26;
  if (!_setjmp(v7))
  {
    v11 = *(*(a1 + 272) + 16);
    if (v11 == 1)
    {
      goto LABEL_13;
    }

    if (v11)
    {
      v13 = 0xFFFFFFFFLL;
      goto LABEL_18;
    }

    v12 = _data_map64_sync_data(a1);
    if (!v12)
    {
      v12 = _data_map64_sync_header(a1);
      if (!v12)
      {
LABEL_13:
        v12 = data_map64_shadow(a1);
        if (!v12)
        {
          v12 = data_map64_commit_shadow(a1);
          if (!v12)
          {
            v12 = data_map64_commit_shadow_complete(a1);
          }
        }
      }
    }

    v13 = v12;
LABEL_18:
    v27 = 1;
    v14 = threadData[9 * v25 + 1] + 320 * v24;
    *(v14 + 312) = v8;
    v15 = *(v14 + 232);
    if (v15)
    {
      v15(*(v14 + 288));
    }

    dropThreadId(v25, 0, add_explicit + 1);
    v10 = v13;
    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v22 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v22, 2u);
  }

  *(v7 + 312) = v8;
  CIOnThreadCleanUpReset(v23);
  dropThreadId(v25, 1, add_explicit + 1);
  CICleanUpReset(v25, HIDWORD(v23));
  v10 = 0xFFFFFFFFLL;
LABEL_21:
  if ((v27 & 1) == 0)
  {
    *(a1 + 4576) = 22;
  }

  memset(v34, 0, sizeof(v34));
  v16 = *__error();
  v17 = _SILogForLogForCategory(7);
  v18 = 2 * (dword_1EBF46AE8 < 4);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = fd_name(*(a1 + 248), v34, 0x100uLL);
    v20 = *(a1 + 224) - 1;
    *buf = 136315650;
    v29 = v19;
    v30 = 2080;
    v31 = "commit";
    v32 = 2048;
    v33 = v20;
    _os_log_impl(&dword_1C278D000, v17, v18, "%s complete %s with count: %lld", buf, 0x20u);
  }

  *__error() = v16;
  _data_map64_unlock(a1);
  result = v10;
LABEL_26:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t data_map64_ids_get_locked_with_hash(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4, const void *a5, size_t a6)
{
  v94 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 220);
  v10 = *(a2 + 4504);
  v64 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v12 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a2, 0, add_explicit + 1);
  v62 = HIDWORD(v12);
  v63 = v12;
  v61 = __PAIR64__(v13, v14);
  v15 = threadData[9 * v12 + 1] + 320 * HIDWORD(v12);
  v51 = *(v15 + 312);
  v16 = *(v15 + 224);
  if (v16)
  {
    v16(*(v15 + 288));
  }

  v60 = v63;
  v59 = v62;
  v58 = v61;
  if (_setjmp(v15))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v78 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v78, 2u);
    }

    *(v15 + 312) = v51;
    CIOnThreadCleanUpReset(v58);
    dropThreadId(v60, 1, add_explicit + 1);
    CICleanUpReset(v60, HIDWORD(v58));
    v17 = 0;
    goto LABEL_36;
  }

  v55 = a6;
  v50 = v9;
  v49 = v9 + a6;
  v18 = a3 % v10;
  v19 = 0;
  do
  {
    v20 = v19;
    v21 = *(a2 + 4496);
    v22 = *(v21 + 8 * v18);
    if (!v22)
    {
      break;
    }

    if (*(a2 + 224) <= v22)
    {
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v79 = 0u;
      *v78 = 0u;
      v33 = *__error();
      v34 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        log = v34;
        v37 = add_explicit;
        v38 = *(a2 + 224);
        v39 = fd_name(*(a2 + 248), v78, 0x100uLL);
        *buf = 136316418;
        v67 = "_data_map64_get_offset_entry";
        v68 = 1024;
        v69 = 359;
        v70 = 2048;
        v71 = v22;
        v72 = 2048;
        v73 = v38;
        add_explicit = v37;
        v74 = 2048;
        v75 = a2;
        v76 = 2080;
        v77 = v39;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p %s", buf, 0x3Au);
      }

      *__error() = v33;
      goto LABEL_19;
    }

    v23 = (*(a2 + 4456) + 16 * v22);
    v24 = *v23;
    if (*v23 != 1 && v23[1] == a3)
    {
      v25 = *v23;
      v56 = 0;
      v57 = 0;
      v65 = 0;
      v26 = *(a2 + 296);
      if (v26 <= v24)
      {
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v79 = 0u;
        *v78 = 0u;
        v27 = *__error();
        v36 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v47 = v36;
          v40 = add_explicit;
          v41 = *(a2 + 296);
          v42 = fd_name(*(a2 + 248), v78, 0x100uLL);
          *buf = 136316418;
          v67 = "_data_map64_get_data_entry";
          v68 = 1024;
          v69 = 376;
          v70 = 2048;
          v71 = v25;
          v72 = 2048;
          v73 = v41;
          add_explicit = v40;
          v74 = 2048;
          v75 = a2;
          v76 = 2080;
          v77 = v42;
          v31 = v47;
          v32 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_32:
          _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, v32, buf, 0x3Au);
        }
      }

      else
      {
        data_entry_restore_64(a2 + 280, v24, v26, &v56, &v65);
        if (v65 != 1)
        {
          if (v49 == v56 && !memcmp(a5, (v57 + v50), v55))
          {
            if (v20 < a4)
            {
              *(a1 + 8 * v20) = *(v21 + 8 * v18);
            }

            v20 = (v20 + 1);
          }

          goto LABEL_19;
        }

        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v79 = 0u;
        *v78 = 0u;
        v27 = *__error();
        v28 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = fd_name(*(a2 + 248), v78, 0x100uLL);
          v30 = *(a2 + 296);
          *buf = 136316418;
          v67 = "_data_map64_get_data_entry";
          v68 = 1024;
          v69 = 372;
          v70 = 2080;
          v71 = v29;
          v72 = 2048;
          v73 = v25;
          v74 = 2048;
          v75 = v30;
          v76 = 2048;
          v77 = v56;
          v31 = v28;
          v32 = "%s:%d: data_entry_restore_64 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
          goto LABEL_32;
        }
      }

      *__error() = v27;
    }

LABEL_19:
    if (v18 + 1 == v10)
    {
      v35 = 0;
    }

    else
    {
      v35 = v18 + 1;
    }

    v18 = v35;
    v19 = v20;
  }

  while (v35 != a3 % v10);
  v64 = 1;
  v43 = threadData[9 * v60 + 1] + 320 * v59;
  *(v43 + 312) = v51;
  v44 = *(v43 + 232);
  if (v44)
  {
    v44(*(v43 + 288));
  }

  dropThreadId(v60, 0, add_explicit + 1);
  v17 = v20;
LABEL_36:
  result = v17;
  if ((v64 & 1) == 0)
  {
    result = 0;
    *(a2 + 4576) = 22;
  }

  v46 = *MEMORY[0x1E69E9840];
  return result;
}

void bit_vector_set_7166(void *a1, CFIndex idx)
{
  if (idx < 0)
  {
    v6 = __si_assert_copy_extra_332();
    v7 = v6;
    v8 = "";
    if (v6)
    {
      v8 = v6;
    }

    __message_assert(v6, "bit_vector.h", 142, "bitIndex >= 0", v8);
    free(v7);
    if (__valid_fs(-1))
    {
      v9 = 2989;
    }

    else
    {
      v9 = 3072;
    }

    *v9 = -559038737;
    abort();
  }

  v4 = a1[1];
  if (v4 <= idx)
  {
    if (v4)
    {
      v10 = a1[1];
    }

    else
    {
      v10 = 32;
    }

    while (1)
    {
      v10 *= 2;
      if (v10 > idx)
      {
        break;
      }

      if (v10 <= v4)
      {
        v11 = __si_assert_copy_extra_332();
        v12 = v11;
        v13 = "";
        if (v11)
        {
          v13 = v11;
        }

        __message_assert(v11, "bit_vector.h", 124, "newCapacity > bv->capacity", v13);
        goto LABEL_20;
      }
    }

    v15 = a1[2];
    v16 = *MEMORY[0x1E695E480];
    if (v15)
    {
      MutableCopy = CFBitVectorCreateMutableCopy(v16, v10, v15);
    }

    else
    {
      MutableCopy = CFBitVectorCreateMutable(v16, v10);
    }

    v18 = MutableCopy;
    if (!MutableCopy)
    {
      v20 = __si_assert_copy_extra_332();
      v12 = v20;
      v21 = "";
      if (v20)
      {
        v21 = v20;
      }

      __message_assert(v20, "bit_vector.h", 128, "newBV", v21);
LABEL_20:
      free(v12);
      if (__valid_fs(-1))
      {
        v14 = 2989;
      }

      else
      {
        v14 = 3072;
      }

      *v14 = -559038737;
      abort();
    }

    CFBitVectorSetCount(MutableCopy, v10);
    v19 = a1[2];
    if (v19)
    {
      CFRelease(v19);
    }

    a1[1] = v10;
    a1[2] = v18;
  }

  if (*a1 <= idx)
  {
    *a1 = idx + 1;
  }

  v5 = a1[2];

  CFBitVectorSetBitAtIndex(v5, idx, 1u);
}

CFIndex data_map64_id_get_with_key(uint64_t a1, const unsigned __int8 *a2, size_t a3, void *a4)
{
  v91 = *MEMORY[0x1E69E9840];
  v8 = commonHash(a3, a2);
  if (_data_map64_rdlock(a1))
  {
    v9 = 0;
    goto LABEL_40;
  }

  v61 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v11 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1, 0, add_explicit + 1);
  v59 = HIDWORD(v11);
  v60 = v11;
  v58 = __PAIR64__(v12, v13);
  v14 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
  v15 = *(v14 + 312);
  v16 = *(v14 + 224);
  if (v16)
  {
    v16(*(v14 + 288));
  }

  v57 = v60;
  v56 = v59;
  v55 = v58;
  if (_setjmp(v14))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v75 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v75, 2u);
    }

    *(v14 + 312) = v15;
    CIOnThreadCleanUpReset(v55);
    dropThreadId(v57, 1, add_explicit + 1);
    CICleanUpReset(v57, HIDWORD(v55));
    v9 = 0;
    goto LABEL_38;
  }

  __s2 = a4;
  v52 = add_explicit;
  v17 = v8;
  v18 = *(a1 + 4504);
  v19 = v17 % v18;
  v20 = v17 % v18;
  __n = *(a1 + 220);
  v50 = v17;
  while (1)
  {
    v21 = *(a1 + 4496);
    v22 = *(v21 + 8 * v20);
    if (!v22)
    {
      break;
    }

    if (*(a1 + 224) <= v22)
    {
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v76 = 0u;
      *v75 = 0u;
      v33 = *__error();
      v34 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        log = v34;
        v38 = *(a1 + 224);
        v39 = fd_name(*(a1 + 248), v75, 0x100uLL);
        *buf = 136316418;
        v64 = "_data_map64_get_offset_entry";
        v65 = 1024;
        v66 = 359;
        v67 = 2048;
        v68 = v22;
        v69 = 2048;
        v70 = v38;
        v71 = 2048;
        v72 = a1;
        v73 = 2080;
        v74 = v39;
        _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p %s", buf, 0x3Au);
      }

      *__error() = v33;
      goto LABEL_21;
    }

    v23 = (*(a1 + 4456) + 16 * v22);
    v24 = *v23;
    if (*v23 != 1 && v23[1] == v50)
    {
      v25 = *v23;
      v53 = 0;
      v54 = 0;
      v62 = 0;
      v26 = *(a1 + 296);
      if (v26 <= v24)
      {
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v76 = 0u;
        *v75 = 0u;
        v27 = *__error();
        v36 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v47 = v36;
          v40 = *(a1 + 296);
          v41 = fd_name(*(a1 + 248), v75, 0x100uLL);
          *buf = 136316418;
          v64 = "_data_map64_get_data_entry";
          v65 = 1024;
          v66 = 376;
          v67 = 2048;
          v68 = v25;
          v69 = 2048;
          v70 = v40;
          v71 = 2048;
          v72 = a1;
          v73 = 2080;
          v74 = v41;
          v31 = v47;
          v32 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
LABEL_33:
          _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, v32, buf, 0x3Au);
        }

LABEL_27:
        *__error() = v27;
        goto LABEL_21;
      }

      data_entry_restore_64(a1 + 280, v24, v26, &v53, &v62);
      if (v62 == 1)
      {
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v76 = 0u;
        *v75 = 0u;
        v27 = *__error();
        v28 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = fd_name(*(a1 + 248), v75, 0x100uLL);
          v30 = *(a1 + 296);
          *buf = 136316418;
          v64 = "_data_map64_get_data_entry";
          v65 = 1024;
          v66 = 372;
          v67 = 2080;
          v68 = v29;
          v69 = 2048;
          v70 = v25;
          v71 = 2048;
          v72 = v30;
          v73 = 2048;
          v74 = v53;
          v31 = v28;
          v32 = "%s:%d: data_entry_restore_64 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
          goto LABEL_33;
        }

        goto LABEL_27;
      }

      if (__n + a3 == v53)
      {
        v37 = v54;
        if (!memcmp(a2, &v54[__n], a3) && !memcmp(v37, __s2, __n))
        {
          v9 = *(v21 + 8 * v20);
          goto LABEL_35;
        }
      }
    }

LABEL_21:
    if (v20 + 1 == v18)
    {
      v35 = 0;
    }

    else
    {
      v35 = v20 + 1;
    }

    v20 = v35;
    if (v35 == v19)
    {
      v9 = 0;
      goto LABEL_35;
    }
  }

  v9 = 0;
LABEL_35:
  v61 = 1;
  v42 = threadData[9 * v57 + 1] + 320 * v56;
  *(v42 + 312) = v15;
  v43 = *(v42 + 232);
  if (v43)
  {
    v43(*(v42 + 288));
  }

  dropThreadId(v57, 0, v52 + 1);
LABEL_38:
  if ((v61 & 1) == 0)
  {
    v9 = 0;
    *(a1 + 4576) = 22;
  }

LABEL_40:
  if (*(a1 + 4560))
  {
    os_unfair_lock_lock((a1 + 4552));
    v46 = *(a1 + 4560);
    if (v46)
    {
      bit_vector_set_7166(v46, v9);
    }

    os_unfair_lock_unlock((a1 + 4552));
  }

  _data_map64_unlock(a1);
  v44 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t data_map64_get_extra_with_key(uint64_t a1, const unsigned __int8 *a2, size_t a3, _BYTE *a4)
{
  v4 = a4;
  v92 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  v62 = 0;
  v8 = commonHash(a3, a2);
  if (_data_map64_rdlock(a1))
  {
    goto LABEL_41;
  }

  v61 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v10 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1, 0, add_explicit + 1);
  v59 = HIDWORD(v10);
  v60 = v10;
  v58 = __PAIR64__(v11, v12);
  v13 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
  v14 = *(v13 + 312);
  v15 = *(v13 + 224);
  if (v15)
  {
    v15(*(v13 + 288));
  }

  v57 = v60;
  v56 = v59;
  v55 = v58;
  if (_setjmp(v13))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v76) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v76, 2u);
    }

    *(v13 + 312) = v14;
    CIOnThreadCleanUpReset(v55);
    dropThreadId(v57, 1, add_explicit + 1);
    CICleanUpReset(v57, HIDWORD(v55));
    goto LABEL_39;
  }

  v50 = v14;
  v51 = add_explicit;
  v52 = v4;
  v16 = *(a1 + 4504);
  v49 = v8;
  v17 = v8 % v16;
  v18 = v17;
  v48 = *(a1 + 220);
  do
  {
    v19 = *(a1 + 4496);
    v20 = *(v19 + 8 * v18);
    if (!v20)
    {
      break;
    }

    if (*(a1 + 4560))
    {
      os_unfair_lock_lock((a1 + 4552));
      v40 = *(a1 + 4560);
      if (v40)
      {
        bit_vector_set_7166(v40, v20);
      }

      os_unfair_lock_unlock((a1 + 4552));
      v21 = *(v19 + 8 * v18);
    }

    else
    {
      v21 = *(v19 + 8 * v18);
    }

    if (*(a1 + 224) <= v21)
    {
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v27 = *__error();
      v33 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        log = v33;
        v38 = *(a1 + 224);
        v39 = fd_name(*(a1 + 248), &v76, 0x100uLL);
        *buf = 136316418;
        v65 = "_data_map64_get_offset_entry";
        v66 = 1024;
        v67 = 359;
        v68 = 2048;
        v69 = v21;
        v70 = 2048;
        v71 = v38;
        v72 = 2048;
        v73 = a1;
        v74 = 2080;
        v75 = v39;
        v31 = log;
        v32 = "%s:%d: invalid data id %lld max %lld %p %s";
LABEL_29:
        _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, v32, buf, 0x3Au);
      }

LABEL_21:
      *__error() = v27;
      goto LABEL_22;
    }

    v22 = *(a1 + 4456);
    if (!v22)
    {
      goto LABEL_22;
    }

    v23 = (v22 + 16 * v21);
    v24 = *v23;
    if (*v23 == 1 || v23[1] != v49)
    {
      goto LABEL_22;
    }

    v25 = *v23;
    v53 = 0;
    v54 = 0;
    v63 = 0;
    v26 = *(a1 + 296);
    if (v26 <= v24)
    {
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v27 = *__error();
      v35 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v46 = v35;
        v36 = *(a1 + 296);
        v37 = fd_name(*(a1 + 248), &v76, 0x100uLL);
        *buf = 136316418;
        v65 = "_data_map64_get_data_entry";
        v66 = 1024;
        v67 = 376;
        v68 = 2048;
        v69 = v25;
        v70 = 2048;
        v71 = v36;
        v72 = 2048;
        v73 = a1;
        v74 = 2080;
        v75 = v37;
        v31 = v46;
        v32 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    data_entry_restore_64(a1 + 280, v24, v26, &v53, &v63);
    if (v63 == 1)
    {
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v27 = *__error();
      v28 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = fd_name(*(a1 + 248), &v76, 0x100uLL);
        v30 = *(a1 + 296);
        *buf = 136316418;
        v65 = "_data_map64_get_data_entry";
        v66 = 1024;
        v67 = 372;
        v68 = 2080;
        v69 = v29;
        v70 = 2048;
        v71 = v25;
        v72 = 2048;
        v73 = v30;
        v74 = 2048;
        v75 = v53;
        v31 = v28;
        v32 = "%s:%d: data_entry_restore_64 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    if (v48 + a3 == v53 && !memcmp(a2, (v54 + v48), a3))
    {
      v41 = *(a1 + 220);
      __memcpy_chk();
      HIDWORD(v62) = v41;
      *v52 = 1;
      break;
    }

LABEL_22:
    v34 = 0;
    if (v18 + 1 != v16)
    {
      v34 = v18 + 1;
    }

    v18 = v34;
  }

  while (v34 != v17);
  v61 = 1;
  v42 = threadData[9 * v57 + 1] + 320 * v56;
  *(v42 + 312) = v50;
  v43 = *(v42 + 232);
  if (v43)
  {
    v43(*(v42 + 288));
  }

  dropThreadId(v57, 0, v51 + 1);
  v4 = v52;
LABEL_39:
  if ((v61 & 1) == 0)
  {
    *v4 = 0;
    *(a1 + 4576) = 22;
  }

LABEL_41:
  _data_map64_unlock(a1);
  result = v62;
  v45 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t _data_map64_get_data_id(uint64_t a1, int a2, const unsigned __int8 *a3, size_t a4, int a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = commonHash(a4 - a2, &a3[a2]);
  if (!_data_map64_rdlock(a1))
  {
    makeThreadId();
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v13 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1, 0, add_explicit + 1);
    v42 = HIDWORD(v13);
    v43 = v13;
    v40 = v15;
    v41 = v14;
    v16 = threadData[9 * v13 + 1] + 320 * HIDWORD(v13);
    v17 = *(v16 + 312);
    v18 = *(v16 + 224);
    if (v18)
    {
      v18(*(v16 + 288));
    }

    v39 = v43;
    v38 = v42;
    v37 = __PAIR64__(v41, v40);
    if (_setjmp(v16))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v16 + 312) = v17;
      CIOnThreadCleanUpReset(v37);
      dropThreadId(v39, 1, add_explicit + 1);
      CICleanUpReset(v39, HIDWORD(v37));
      v19 = 0;
LABEL_31:
      _data_map64_unlock(a1);
      result = v19;
      goto LABEL_32;
    }

    bucket_entry = _data_map64_get_bucket_entry(a1, v10, 0, a3, a4);
    if (!bucket_entry)
    {
      v19 = 0;
LABEL_28:
      v25 = threadData[9 * v39 + 1] + 320 * v38;
      *(v25 + 312) = v17;
      v26 = *(v25 + 232);
      if (v26)
      {
        v26(*(v25 + 288));
      }

      dropThreadId(v39, 0, add_explicit + 1);
      goto LABEL_31;
    }

    if (*bucket_entry)
    {
      if (*bucket_entry >= *(a1 + 224))
      {
        v19 = 0;
      }

      else
      {
        v19 = *bucket_entry;
      }

      goto LABEL_28;
    }

    if (!a5)
    {
LABEL_27:
      v19 = 0;
      goto LABEL_28;
    }

    v21 = bucket_entry;
    v36[1] = a3;
    v36[0] = v9;
    if (v9 >> 28)
    {
      v23 = 5;
    }

    else if (v9 >> 21)
    {
      v23 = 4;
    }

    else
    {
      if (!(v9 >> 14))
      {
        if (v9 < 0x80)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

LABEL_26:
        v24 = *(a1 + 224);
        _data_map64_unlock(a1);
        if (_data_map64_wrlock(a1))
        {
          goto LABEL_27;
        }

        v28 = v24;
        if (v24 != *(a1 + 224))
        {
          v34 = _data_map64_get_bucket_entry(a1, v10, 0, a3, a4);
          if (!v34)
          {
            v19 = 0;
            goto LABEL_28;
          }

          v30 = *v34;
          v28 = *(a1 + 224);
          if (*v34 >= v28)
          {
            goto LABEL_27;
          }

          if (v30)
          {
            _data_map64_set_seen_id(a1, v30);
            goto LABEL_51;
          }

          v21 = v34;
        }

        v29 = v21;
        v30 = v28;
        v35 = 0;
        if (!_data_map64_grow(a1, (v22 + a4), &v35))
        {
          goto LABEL_27;
        }

        if ((*(a1 + 4571) & 1) == 0)
        {
          _data_map64_dirty(a1);
          *(a1 + 4571) = 1;
        }

        v31 = (*(a1 + 4456) + 16 * v30);
        v31[1] = v10;
        if ((*(a1 + 4569) & 1) == 0)
        {
          _data_map64_dirty(a1);
          *(a1 + 4569) = 1;
        }

        *v31 = data_entry_store<unsigned long long,false,true,false>(a1 + 280, v36);
        ++*(a1 + 224);
        if ((*(a1 + 4570) & 1) == 0)
        {
          _data_map64_dirty(a1);
          *(a1 + 4570) = 1;
        }

        if ((v35 & 4) != 0)
        {
          v29 = _data_map64_get_bucket_entry(a1, v10, v30, 0, 0);
        }

        *v29 = v30;
        if (gSILogLevels[0] >= 5)
        {
          v32 = *__error();
          v33 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            v45 = v30;
            v46 = 2048;
            v47 = a1;
            _os_log_impl(&dword_1C278D000, v33, OS_LOG_TYPE_DEFAULT, "added %lld to %p", buf, 0x16u);
          }

          *__error() = v32;
        }

LABEL_51:
        v19 = v30;
        goto LABEL_28;
      }

      v23 = 3;
    }

    v22 = v23;
    goto LABEL_26;
  }

  result = 0;
LABEL_32:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

void _data_map64_set_seen_id(uint64_t a1, CFIndex a2)
{
  if (*(a1 + 4560))
  {
    os_unfair_lock_lock((a1 + 4552));
    v5 = *(a1 + 4560);
    if (v5)
    {
      bit_vector_set_7166(v5, a2);
    }

    os_unfair_lock_unlock((a1 + 4552));
  }
}

uint64_t _data_map64_grow(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(a1 + 4576))
  {
    return 0;
  }

  v7 = *(a1 + 224);
  if (v7 >= *(a1 + 4464))
  {
    v8 = (*MEMORY[0x1E69E9AC8] + 16 * v7 + 15) & -*MEMORY[0x1E69E9AC8];
    if (fd_truncate(*(a1 + 4432), v8) == -1)
    {
      goto LABEL_17;
    }

    *(a1 + 4448) = v8;
    v9 = *(a1 + 4440);
    if (v8 > v9)
    {
      v10 = 2 * v9;
      munmap(*(a1 + 4456), v9);
      *(a1 + 4440) = 0;
      v11 = fd_mmap(*(a1 + 4432));
      *(a1 + 4456) = v11;
      if (v11 == -1)
      {
        goto LABEL_17;
      }

      *(a1 + 4440) = v10;
    }

    *(a1 + 4464) = v8 >> 4;
    *a3 |= 2u;
    v7 = *(a1 + 224);
  }

  v12 = v7 - *(a1 + 4512);
  if (v12 >= 2 * *(a1 + 4504) / 3uLL || v12 < 2 * *(a1 + 4520))
  {
    if (!_data_map64_rehash(a1))
    {
      goto LABEL_17;
    }

    *a3 |= 4u;
  }

  v13 = a2 + *(a1 + 296) + 8;
  if (v13 <= *(a1 + 288))
  {
    return 1;
  }

  if (_storageWindowsSetFileSize((a1 + 280), (v13 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]))
  {
    *a3 |= 1u;
    return 1;
  }

LABEL_17:
  result = 0;
  if (!*(a1 + 4576))
  {
    *(a1 + 4576) = 1;
  }

  return result;
}

uint64_t data_map64_get_data(uint64_t a1, unint64_t a2, void *a3)
{
  v71 = *MEMORY[0x1E69E9840];
  if (_data_map64_rdlock(a1))
  {
LABEL_2:
    if (a3)
    {
      *a3 = 0;
    }

    result = 0;
    goto LABEL_35;
  }

  v39 = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v8 = setThreadIdAndInfo(-1, sDataMapExceptionCallbacks, a1, 0, add_explicit + 1);
  v37 = HIDWORD(v8);
  v38 = v8;
  v35 = v10;
  v36 = v9;
  v11 = threadData[9 * v8 + 1] + 320 * HIDWORD(v8);
  v12 = *(v11 + 312);
  v13 = *(v11 + 224);
  if (v13)
  {
    v13(*(v11 + 288));
  }

  if (_setjmp(v11))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v11 + 312) = v12;
    CIOnThreadCleanUpReset(v35);
    dropThreadId(v38, 1, add_explicit + 1);
    CICleanUpReset(v38, v36);
    v14 = 0;
    goto LABEL_32;
  }

  if (*(a1 + 224) <= a2)
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    *buf = 0u;
    v24 = *__error();
    v25 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v30 = *(a1 + 224);
      v31 = fd_name(*(a1 + 248), buf, 0x100uLL);
      *v43 = 136316418;
      v44 = "_data_map64_get_offset_entry";
      v45 = 1024;
      v46 = 359;
      v47 = 2048;
      v48 = a2;
      v49 = 2048;
      v50 = v30;
      v51 = 2048;
      v52 = a1;
      v53 = 2080;
      v54 = v31;
      _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p %s", v43, 0x3Au);
    }

    *__error() = v24;
  }

  else
  {
    v15 = *(a1 + 4456);
    if (v15)
    {
      v16 = *(v15 + 16 * a2);
      if (v16 != 1)
      {
        v17 = v16;
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v18 = *(a1 + 296);
        if (v18 <= v16)
        {
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v56 = 0u;
          *buf = 0u;
          v19 = *__error();
          v20 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v32 = *(a1 + 296);
            v33 = fd_name(*(a1 + 248), buf, 0x100uLL);
            *v43 = 136316418;
            v44 = "_data_map64_get_data_entry";
            v45 = 1024;
            v46 = 376;
            v47 = 2048;
            v48 = v17;
            v49 = 2048;
            v50 = v32;
            v51 = 2048;
            v52 = a1;
            v53 = 2080;
            v54 = v33;
            v23 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
            goto LABEL_37;
          }
        }

        else
        {
          data_entry_restore_64(a1 + 280, v16, v18, &v40, &v42);
          if (v42 != 1)
          {
            if (a3)
            {
              *a3 = (v40 - *(a1 + 220));
            }

            if (*(a1 + 4560))
            {
              os_unfair_lock_lock((a1 + 4552));
              v34 = *(a1 + 4560);
              if (v34)
              {
                bit_vector_set_7166(v34, a2);
              }

              os_unfair_lock_unlock((a1 + 4552));
            }

            v26 = v41 + *(a1 + 220);
            goto LABEL_28;
          }

          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v56 = 0u;
          *buf = 0u;
          v19 = *__error();
          v20 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = fd_name(*(a1 + 248), buf, 0x100uLL);
            v22 = *(a1 + 296);
            *v43 = 136316418;
            v44 = "_data_map64_get_data_entry";
            v45 = 1024;
            v46 = 372;
            v47 = 2080;
            v48 = v21;
            v49 = 2048;
            v50 = v17;
            v51 = 2048;
            v52 = v22;
            v53 = 2048;
            v54 = v40;
            v23 = "%s:%d: data_entry_restore_64 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
LABEL_37:
            _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, v23, v43, 0x3Au);
          }
        }

        *__error() = v19;
        v26 = 0;
LABEL_28:
        v14 = v26;
        goto LABEL_29;
      }
    }
  }

  v14 = 0;
LABEL_29:
  v39 = 1;
  v27 = threadData[9 * v38 + 1] + 320 * v37;
  *(v27 + 312) = v12;
  v28 = *(v27 + 232);
  if (v28)
  {
    v28(*(v27 + 288));
  }

  dropThreadId(v38, 0, add_explicit + 1);
LABEL_32:
  if ((v39 & 1) == 0)
  {
    *(a1 + 4576) = 22;
  }

  _data_map64_unlock(a1);
  result = v14;
  if (!v14)
  {
    goto LABEL_2;
  }

LABEL_35:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _data_map64_garbage_compact_collect(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v73 = v3;
  v72 = v4;
  v6 = v5;
  v8 = v7;
  v119 = *MEMORY[0x1E69E9840];
  v9 = *(v7 + 224);
  bzero(v92, 0x400uLL);
  bzero(v91, 0x400uLL);
  v120.location = 0;
  *v2 = 1684300900;
  *(v2 + 8) = 0;
  *(v2 + 16) = v9;
  v120.length = v9 - 1;
  *(v2 + 24) = CFBitVectorGetCountOfBit(*(v6 + 16), v120, 1u);
  bzero(__src, 0x1058uLL);
  __src[520] = -1;
  v10 = fd_name(*(v8 + 280), v92, 0x400uLL);
  snprintf(v91, 0x400uLL, "tmp.%s", v10);
  sibling_protected = fd_create_sibling_protected(*(v8 + 280), v91, 1538, 0);
  if (fd_truncate(sibling_protected, *(v8 + 288)) == -1)
  {
    goto LABEL_13;
  }

  v12 = *(v8 + 288);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___data_map64_garbage_compact_collect_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_52_7198;
  aBlock[4] = v8;
  __src[0] = sibling_protected;
  WORD2(__src[4]) = 256;
  __src[1] = v12;
  LODWORD(__src[4]) = 1;
  __src[5] = _Block_copy(aBlock);
  LOBYTE(__src[6]) = 26;
  bzero(&__src[7], 0x1000uLL);
  v13 = fd_name(*(v8 + 4432), v92, 0x400uLL);
  snprintf(v91, 0x400uLL, "tmp.%s", v13);
  __src[519] = fd_create_sibling_protected(*(v8 + 4432), v91, 1538, 0);
  if (fd_truncate(__src[519], *(v8 + 4448)) == -1)
  {
LABEL_13:
    v24 = *__error();
    if (v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0xFFFFFFFFLL;
    }

    goto LABEL_16;
  }

  __src[522] = *(v8 + 4448);
  v14 = *(v8 + 4440);
  __src[520] = fd_mmap(__src[519]);
  if (__src[520] == -1)
  {
    v22 = *__error();
    v23 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v105[0]) = 136315394;
      *(v105 + 4) = "_data_map64_garbage_compact_collect";
      WORD2(v105[1]) = 1024;
      *(&v105[1] + 6) = 2758;
      _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: offsets fd_mmap error", v105, 0x12u);
    }

    *__error() = v22;
    goto LABEL_13;
  }

  __src[521] = *(v8 + 4440);
  data_entry_store<unsigned long long,false,true,false>(__src, dword_1E81997B0);
  v15 = __src[520];
  *__src[520] = 0;
  *(v15 + 1) = 0;
  v83 = 0;
  v88 = 0;
  v90 = 0u;
  v87 = 0u;
  v89 = v15;
  *&v90 = __src[521];
  v82[0] = 2;
  v82[1] = &v87;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v17 = setThreadIdAndInfo(-1, sMappingExceptionCallbacks, v82, 0x40000000, add_explicit + 1);
  v80 = HIDWORD(v17);
  v81 = v17;
  v79 = __PAIR64__(v18, v19);
  v20 = threadData[9 * v17 + 1] + 320 * HIDWORD(v17);
  *(v20 + 216) = 0;
  v70 = *(v20 + 312);
  v21 = *(v20 + 224);
  if (v21)
  {
    v21(*(v20 + 288));
  }

  v78 = v81;
  v77 = v80;
  v76 = v79;
  if (_setjmp(v20))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v105[0]) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v105, 2u);
    }

    *(v20 + 312) = v70;
    CIOnThreadCleanUpReset(v76);
    dropThreadId(v78, 1, add_explicit + 1);
    CICleanUpReset(v78, HIDWORD(v76));
    goto LABEL_80;
  }

  v71 = add_explicit;
  if (v9 != 1)
  {
    for (i = 1; i <= v9 - 1; ++i)
    {
      if (*(v8 + 224) <= i)
      {
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v106 = 0u;
        memset(v105, 0, sizeof(v105));
        v39 = *__error();
        v40 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v49 = *(v8 + 224);
          v50 = fd_name(*(v8 + 248), v105, 0x100uLL);
          v93 = 136316418;
          v94 = "_data_map64_get_offset_entry";
          v95 = 1024;
          v96 = 359;
          v97 = 2048;
          v98 = i;
          v99 = 2048;
          v100 = v49;
          v101 = 2048;
          v102 = v8;
          v103 = 2080;
          v104 = v50;
          _os_log_error_impl(&dword_1C278D000, v40, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %lld max %lld %p %s", &v93, 0x3Au);
        }

        *__error() = v39;
        goto LABEL_36;
      }

      v29 = *(v8 + 4456);
      if (v29)
      {
        v30 = *(v29 + 16 * i);
        if (v30 >= 2)
        {
          v31 = v30;
          v74 = 0;
          v75 = 0;
          v86 = 0;
          v32 = *(v8 + 296);
          if (v32 <= v30)
          {
            v117 = 0u;
            v118 = 0u;
            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            v111 = 0u;
            v112 = 0u;
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            v106 = 0u;
            memset(v105, 0, sizeof(v105));
            v33 = *__error();
            v41 = _SILogForLogForCategory(0);
            if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_40;
            }

            log = v41;
            v55 = *(v8 + 296);
            v56 = fd_name(*(v8 + 248), v105, 0x100uLL);
            v93 = 136316418;
            v94 = "_data_map64_get_data_entry";
            v95 = 1024;
            v96 = 376;
            v97 = 2048;
            v98 = v31;
            v99 = 2048;
            v100 = v55;
            v101 = 2048;
            v102 = v8;
            v103 = 2080;
            v104 = v56;
            v37 = log;
            v38 = "%s:%d: invalid data offset 0x%lx 0x%lx %p %s";
            goto LABEL_66;
          }

          data_entry_restore_64(v8 + 280, v30, v32, &v74, &v86);
          if (v86 == 1)
          {
            v117 = 0u;
            v118 = 0u;
            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            v111 = 0u;
            v112 = 0u;
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            v106 = 0u;
            memset(v105, 0, sizeof(v105));
            v33 = *__error();
            v34 = _SILogForLogForCategory(0);
            if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_40;
            }

            v35 = fd_name(*(v8 + 248), v105, 0x100uLL);
            v36 = *(v8 + 296);
            v93 = 136316418;
            v94 = "_data_map64_get_data_entry";
            v95 = 1024;
            v96 = 372;
            v97 = 2080;
            v98 = v35;
            v99 = 2048;
            v100 = v31;
            v101 = 2048;
            v102 = v36;
            v103 = 2048;
            v104 = v74;
            v37 = v34;
            v38 = "%s:%d: data_entry_restore_64 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx";
LABEL_66:
            _os_log_error_impl(&dword_1C278D000, v37, OS_LOG_TYPE_ERROR, v38, &v93, 0x3Au);
            goto LABEL_40;
          }

          if (i < v72)
          {
            goto LABEL_45;
          }

          if ((i & 0x8000000000000000) != 0)
          {
            v65 = __si_assert_copy_extra_332();
            v66 = v65;
            v67 = "";
            if (v65)
            {
              v67 = v65;
            }

            __message_assert(v65, "bit_vector.h", 109, "bitIndex >= 0", v67);
            free(v66);
            if (__valid_fs(-1))
            {
              v68 = 2989;
            }

            else
            {
              v68 = 3072;
            }

            *v68 = -559038737;
            abort();
          }

          if (*v6 > i && CFBitVectorGetBitAtIndex(*(v6 + 16), i))
          {
LABEL_45:
            *&__src[520][4 * i + 2] = *(*(v8 + 4456) + 16 * i + 8);
            if (v74 < 0x80)
            {
              v42 = 1;
            }

            else
            {
              v42 = 2;
            }

            if (v74 >> 14)
            {
              v43 = 3;
            }

            else
            {
              v43 = v42;
            }

            if (v74 >> 21)
            {
              v44 = 4;
            }

            else
            {
              v44 = v43;
            }

            if (v74 >> 28)
            {
              v45 = 5;
            }

            else
            {
              v45 = v44;
            }

            v46 = (v74 + v45 + 8);
            v47 = (__src[2] + v46);
            if ((__src[2] + v46) >= __src[1])
            {
              if (_storageWindowsExpandBacking(__src, v46))
              {
                v47 = (__src[2] + v46);
                goto LABEL_58;
              }
            }

            else
            {
LABEL_58:
              __src[2] = v47;
            }

            v48 = data_entry_store<unsigned long long,false,true,false>(__src, &v74);
            *&__src[520][4 * i] = v48;
            continue;
          }

          ++*(v2 + 8);
          if ((v73 & 2) != 0)
          {
            if ((v73 & 8) != 0)
            {
              if (gSILogLevels[0] < 5)
              {
                goto LABEL_36;
              }

              v33 = *__error();
              v57 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
              {
                v58 = v75 + *(v8 + 220);
                LODWORD(v105[0]) = 67109890;
                HIDWORD(v105[0]) = i;
                LOWORD(v105[1]) = 1024;
                *(&v105[1] + 2) = v74;
                HIWORD(v105[1]) = 2080;
                v105[2] = v58;
                LOWORD(v105[3]) = 2048;
                *(&v105[3] + 2) = v8;
                v52 = v57;
                v53 = "Deleting id: %d size: %d %s from %p";
                v54 = 34;
LABEL_70:
                _os_log_impl(&dword_1C278D000, v52, OS_LOG_TYPE_DEFAULT, v53, v105, v54);
              }
            }

            else
            {
              if (gSILogLevels[0] < 5)
              {
                goto LABEL_36;
              }

              v33 = *__error();
              v51 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v105[0]) = 67109632;
                HIDWORD(v105[0]) = i;
                LOWORD(v105[1]) = 1024;
                *(&v105[1] + 2) = v74;
                HIWORD(v105[1]) = 2048;
                v105[2] = v8;
                v52 = v51;
                v53 = "Deleting id: %d size: %d from %p";
                v54 = 24;
                goto LABEL_70;
              }
            }

LABEL_40:
            *__error() = v33;
          }
        }
      }

LABEL_36:
      *&__src[520][4 * i] = xmmword_1C2BFA340;
    }
  }

  if (*(v2 + 8))
  {
    if (SLODWORD(__src[4]) >= 1)
    {
      v59 = 0;
      do
      {
        v60 = v59;
        storageWindowSync(__src[v59 + 7], 1);
        v59 = v60 + 1;
      }

      while (v60 + 1 < SLODWORD(__src[4]));
    }

    v61 = __src[520];
    v62 = __src[522];
    fd_system_status_stall_if_busy();
    msync(v61, v62, 16);
    memcpy((v2 + 32), __src, 0x1058uLL);
    v83 = 1;
    v63 = threadData[9 * v78 + 1] + 320 * v77;
    *(v63 + 312) = v70;
    v64 = *(v63 + 232);
    if (v64)
    {
      v64(*(v63 + 288));
    }

    dropThreadId(v78, 0, v71 + 1);
LABEL_80:
    v25 = 0;
    result = 0;
    if (v83)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  v25 = 0;
LABEL_16:
  if (sibling_protected)
  {
    storageWindowsUnmap(__src);
    fd_release(sibling_protected);
    _fd_unlink_with_origin(sibling_protected, 0);
  }

  if (__src[520] + 1 >= 2)
  {
    munmap(__src[520], __src[521]);
  }

  if (__src[519])
  {
    fd_release(__src[519]);
    _fd_unlink_with_origin(__src[519], 0);
  }

  result = v25;
LABEL_23:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *peopleNameAlias(uint64_t a1)
{
  {
    PhCommonPeopleNameAlias(void)::_peopleNameAlias = 0u;
    *&qword_1EBF61EF8 = 0u;
    dword_1EBF61F08 = 1065353216;
  }

  if (PhCommonPeopleNameAlias(void)::onceToken != -1)
  {
    dispatch_once(&PhCommonPeopleNameAlias(void)::onceToken, &__block_literal_global_2);
  }

  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v2 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = *(a1 + 8);
  }

  v5 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v3, v4);
  v6 = *(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1);
  if (*(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1))
  {
    v7 = v5;
    v8 = vcnt_s8(*(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 8));
    v8.i16[0] = vaddlv_u8(v8);
    v9 = v8.u32[0];
    if (v8.u32[0] > 1uLL)
    {
      v10 = v5;
      if (v5 >= *(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1))
      {
        v10 = v5 % *(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1);
      }
    }

    else
    {
      v10 = (*(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1) - 1) & v5;
    }

    v11 = *(PhCommonPeopleNameAlias(void)::_peopleNameAlias + 8 * v10);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        do
        {
          v13 = v12[1];
          if (v7 == v13)
          {
            if (std::equal_to<std::string>::operator()[abi:nn200100](v12 + 2, a1))
            {
              return v12 + 5;
            }
          }

          else
          {
            if (v9 > 1)
            {
              if (v13 >= v6)
              {
                v13 %= v6;
              }
            }

            else
            {
              v13 &= v6 - 1;
            }

            if (v13 != v10)
            {
              break;
            }
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

  {
    peopleNameAlias(std::string const&)::sEmptyString = 0;
    *algn_1EBF61EC8 = 0;
    qword_1EBF61ED0 = 0;
  }

  if (peopleNameAlias(std::string const&)::onceToken != -1)
  {
    dispatch_once(&peopleNameAlias(std::string const&)::onceToken, &__block_literal_global_7209);
  }

  return &peopleNameAlias(std::string const&)::sEmptyString;
}

void ___ZL15peopleNameAliasRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_block_invoke()
{
  if (SHIBYTE(qword_1EBF61ED0) < 0)
  {
    operator delete(peopleNameAlias(std::string const&)::sEmptyString);
  }

  peopleNameAlias(std::string const&)::sEmptyString = 0;
  *algn_1EBF61EC8 = 0;
  qword_1EBF61ED0 = 0;
}

void ___ZL23PhCommonPeopleNameAliasv_block_invoke()
{
  v118 = *MEMORY[0x1E69E9840];
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[8],0>(v48, "will", "william");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[8],0>(v49, "bill", "william");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[8],0>(v50, "billy", "william");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[8],0>(v51, "liam", "william");
  std::string::basic_string[abi:nn200100]<0>(v52, "jack");
  std::string::basic_string[abi:nn200100]<0>(v53, "john");
  std::string::basic_string[abi:nn200100]<0>(v54, "johnny");
  std::string::basic_string[abi:nn200100]<0>(v55, "john");
  std::string::basic_string[abi:nn200100]<0>(v56, "jim");
  std::string::basic_string[abi:nn200100]<0>(v57, "james");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[6],0>(v58, "jimmy", "james");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[6],0>(v59, "jamie", "james");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[4],char const(&)[7],0>(v60, "rob", "robert");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[4],char const(&)[7],0>(v61, "bob", "robert");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[7],0>(v62, "bobby", "robert");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[8],0>(v63, "mike", "michael");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[8],0>(v64, "mikey", "michael");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[8],0>(v65, "rich", "richard");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[8],0>(v66, "rick", "richard");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[8],0>(v67, "ricky", "richard");
  std::string::basic_string[abi:nn200100]<0>(v68, "charlie");
  std::string::basic_string[abi:nn200100]<0>(v69, "charles");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[8],0>(v70, "chuck", "charles");
  std::string::basic_string[abi:nn200100]<0>(v71, "ed");
  std::string::basic_string[abi:nn200100]<0>(v72, "edward");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[7],0>(v73, "eddie", "edward");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[4],char const(&)[7],0>(v74, "ted", "edward");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[7],0>(v75, "teddy", "edward");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[4],char const(&)[7],0>(v76, "joe", "joseph");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[7],0>(v77, "joey", "joseph");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[4],char const(&)[7],0>(v78, "tom", "thomas");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[7],0>(v79, "tommy", "thomas");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[6],0>(v80, "harry", "henry");
  std::string::basic_string[abi:nn200100]<0>(v81, "hank");
  std::string::basic_string[abi:nn200100]<0>(v82, "henry");
  std::string::basic_string[abi:nn200100]<0>(v83, "chris");
  std::string::basic_string[abi:nn200100]<0>(v84, "christopher");
  std::string::basic_string[abi:nn200100]<0>(v85, "topher");
  std::string::basic_string[abi:nn200100]<0>(v86, "christopher");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[4],char const(&)[7],0>(v87, "dan", "daniel");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[7],0>(v88, "danny", "daniel");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[8],0>(v89, "matt", "matthew");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[8],0>(v90, "matty", "matthew");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[7],0>(v91, "andy", "andrew");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[7],0>(v92, "drew", "andrew");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[4],char const(&)[10],0>(v93, "liz", "elizabeth");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[10],0>(v94, "lizzy", "elizabeth");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[10],0>(v95, "beth", "elizabeth");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[10],0>(v96, "eliza", "elizabeth");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[10],0>(v97, "ellie", "elizabeth");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[5],0>(v98, "molly");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[5],0>(v99, "polly");
  std::string::basic_string[abi:nn200100]<0>(v100, "may");
  std::string::basic_string[abi:nn200100]<0>(v101, "mary");
  std::string::basic_string[abi:nn200100]<0>(v102, "maggie");
  std::string::basic_string[abi:nn200100]<0>(v103, "margaret");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[4],char const(&)[9],0>(v104, "meg", "margaret");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[9],0>(v105, "peggy");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[9],0>(v106, "marge");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[10],0>(v107, "kate", "katherine");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[10],0>(v108, "katie", "katherine");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[10],0>(v109, "kathy", "katherine");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[4],char const(&)[10],0>(v110, "kat", "katherine");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[6],0>(v111, "sally", "sarah");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[6],0>(v112, "sadie", "sarah");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[6],0>(v113, "sadie", "sarah");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[7],0>(v114, "robby", "robert");
  std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[4],char const(&)[9],0>(v115, "kim", "kimberly");
  std::string::basic_string[abi:nn200100]<0>(v116, "tim");
  std::string::basic_string[abi:nn200100]<0>(v117, "timothy");
  v0 = *(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1);
  v1 = &unk_1EBF61000;
  if (!*(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1))
  {
    goto LABEL_62;
  }

  v2 = 0;
  do
  {
    *(PhCommonPeopleNameAlias(void)::_peopleNameAlias + 8 * v2++) = 0;
  }

  while (v0 != v2);
  v3 = qword_1EBF61EF8;
  qword_1EBF61EF8 = 0;
  qword_1EBF61F00 = 0;
  if (!v3)
  {
LABEL_62:
    v4 = 0;
LABEL_63:
    v33 = *(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 8);
    while (1)
    {
      v34 = v48[v4 + 23];
      if (v34 >= 0)
      {
        v35 = &v48[v4];
      }

      else
      {
        v35 = *&v48[v4];
      }

      if (v34 >= 0)
      {
        v36 = v48[v4 + 23];
      }

      else
      {
        v36 = *&v48[v4 + 8];
      }

      v37 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v35, v36);
      v38 = v37;
      if (!*&v33)
      {
        goto LABEL_87;
      }

      v39 = vcnt_s8(v33);
      v39.i16[0] = vaddlv_u8(v39);
      v40 = v39.u32[0];
      if (v39.u32[0] > 1uLL)
      {
        v41 = v37;
        if (v37 >= *&v33)
        {
          v41 = v37 % *&v33;
        }
      }

      else
      {
        v41 = (*&v33 - 1) & v37;
      }

      v42 = *(v1[477] + 8 * v41);
      if (!v42 || (v43 = *v42) == 0)
      {
LABEL_87:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        operator new();
      }

      while (1)
      {
        v44 = v43[1];
        if (v44 == v38)
        {
          break;
        }

        if (v40 > 1)
        {
          if (v44 >= *&v33)
          {
            v44 %= *&v33;
          }
        }

        else
        {
          v44 &= *&v33 - 1;
        }

        if (v44 != v41)
        {
          goto LABEL_87;
        }

LABEL_86:
        v43 = *v43;
        if (!v43)
        {
          goto LABEL_87;
        }
      }

      if (!std::equal_to<std::string>::operator()[abi:nn200100](v43 + 2, &v48[v4]))
      {
        goto LABEL_86;
      }

      v1 = &unk_1EBF61000;
      v4 += 48;
      if (v4 == 2832)
      {
        goto LABEL_55;
      }
    }
  }

  v4 = 0;
  do
  {
    std::string::operator=((v3 + 16), &v48[v4]);
    std::string::operator=((v3 + 40), &v48[v4 + 24]);
    v5 = *v3;
    v6 = *(v3 + 39);
    if (v6 >= 0)
    {
      v7 = (v3 + 16);
    }

    else
    {
      v7 = *(v3 + 16);
    }

    if (v6 >= 0)
    {
      v8 = *(v3 + 39);
    }

    else
    {
      v8 = *(v3 + 24);
    }

    v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v7, v8);
    v10 = v9;
    *(v3 + 8) = v9;
    v11 = *(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1);
    if (*(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1))
    {
      v12 = vcnt_s8(*(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 8));
      v12.i16[0] = vaddlv_u8(v12);
      v13 = v12.u32[0];
      if (v12.u32[0] > 1uLL)
      {
        v14 = v9;
        v15 = &unk_1EBF61000;
        if (*(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1) <= v9)
        {
          v14 = v9 % *(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1);
        }
      }

      else
      {
        v14 = (*(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1) - 1) & v9;
        v15 = &unk_1EBF61000;
      }

      v16 = *(v15[477] + 8 * v14);
      if (v16)
      {
        v17 = *v16;
        if (*v16)
        {
          do
          {
            v18 = v17[1];
            if (v18 == v10)
            {
              if (std::equal_to<std::string>::operator()[abi:nn200100](v17 + 2, (v3 + 16)))
              {
                goto LABEL_50;
              }
            }

            else
            {
              if (v13 > 1)
              {
                if (v18 >= v11)
                {
                  v18 %= v11;
                }
              }

              else
              {
                v18 &= v11 - 1;
              }

              if (v18 != v14)
              {
                break;
              }
            }

            v17 = *v17;
          }

          while (v17);
        }
      }
    }

    v19 = (qword_1EBF61F00 + 1);
    if (!v11 || (*&dword_1EBF61F08 * v11) < v19)
    {
      v20 = (v11 & (v11 - 1)) != 0;
      if (v11 < 3)
      {
        v20 = 1;
      }

      v21 = v20 | (2 * v11);
      v22 = vcvtps_u32_f32(v19 / *&dword_1EBF61F08);
      if (v21 <= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = v21;
      }

      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__rehash<true>(v23);
      v11 = *(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1);
      v10 = *(v3 + 8);
    }

    v24 = vcnt_s8(v11);
    v24.i16[0] = vaddlv_u8(v24);
    if (v24.u32[0] > 1uLL)
    {
      v25 = &unk_1EBF61000;
      if (v10 >= v11)
      {
        v10 %= v11;
      }
    }

    else
    {
      v10 &= v11 - 1;
      v25 = &unk_1EBF61000;
    }

    v26 = v25[477];
    v27 = *(v26 + 8 * v10);
    if (v27)
    {
      *v3 = *v27;
LABEL_48:
      *v27 = v3;
      goto LABEL_49;
    }

    *v3 = qword_1EBF61EF8;
    qword_1EBF61EF8 = v3;
    *(v26 + 8 * v10) = &qword_1EBF61EF8;
    if (*v3)
    {
      v28 = *(*v3 + 8);
      if (v24.u32[0] > 1uLL)
      {
        if (v28 >= v11)
        {
          v28 %= v11;
        }
      }

      else
      {
        v28 &= v11 - 1;
      }

      v27 = (v25[477] + 8 * v28);
      goto LABEL_48;
    }

LABEL_49:
    ++qword_1EBF61F00;
LABEL_50:
    v4 += 48;
    if (!v5)
    {
      break;
    }

    v3 = v5;
  }

  while (v4 != 2832);
  if (v5)
  {
    do
    {
      v29 = *v5;
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::string>,0>((v5 + 2));
      operator delete(v5);
      v5 = v29;
    }

    while (v29);
  }

  v1 = &unk_1EBF61000;
  if (v4 != 2832)
  {
    goto LABEL_63;
  }

LABEL_55:
  v30 = 2832;
  do
  {
    v31 = &v48[v30];
    if (v48[v30 - 1] < 0)
    {
      operator delete(*(v31 - 3));
    }

    if (*(v31 - 25) < 0)
    {
      operator delete(*(v31 - 6));
    }

    v30 -= 48;
  }

  while (v30);
  v32 = *MEMORY[0x1E69E9840];
}

void sub_1C2A233BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (SLOBYTE(STACK[0xB17]) < 0)
  {
    operator delete(STACK[0xB00]);
  }

  do
  {
    v13 -= 48;
    std::pair<std::string const,std::string>::~pair(v13);
  }

  while (v13 != &a13);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[8],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1C2A23554(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[8],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1C2A235A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[6],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1C2A235FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[4],char const(&)[7],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1C2A23650(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[7],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1C2A236A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[7],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1C2A236F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[4],char const(&)[10],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1C2A2374C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[10],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1C2A237A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[5],char const(&)[10],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1C2A237F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[5],0>(_BYTE *a1, char *a2)
{
  v3 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(v3 + 24, "mary");
  return a1;
}

void sub_1C2A23848(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[4],char const(&)[9],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1C2A2389C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:nn200100]<char const(&)[6],char const(&)[9],0>(_BYTE *a1, char *a2)
{
  v3 = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(v3 + 24, "margaret");
  return a1;
}

void sub_1C2A238F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__rehash<true>(size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v2 = *(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1);
  if (prime > *(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1))
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  if (prime < *(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1))
  {
    v3 = vcvtps_u32_f32(qword_1EBF61F00 / *&dword_1EBF61F08);
    if (*(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1) < 3uLL || (v4 = vcnt_s8(*(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 8)), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] > 1uLL))
    {
      v3 = std::__next_prime(v3);
    }

    else
    {
      v5 = 1 << -__clz(v3 - 1);
      if (v3 >= 2)
      {
        v3 = v5;
      }
    }

    if (prime <= v3)
    {
      prime = v3;
    }

    if (prime < v2)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v6 = PhCommonPeopleNameAlias(void)::_peopleNameAlias;
      *&PhCommonPeopleNameAlias(void)::_peopleNameAlias = 0;
      if (v6)
      {
        operator delete(v6);
      }

      *(&PhCommonPeopleNameAlias(void)::_peopleNameAlias + 1) = 0;
    }
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::string>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void PhPopulateFiltersFromQuery(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v27 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v16 = *__error();
  if (a6)
  {
    v17 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v17 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:
      *buf = 138412546;
      v24 = a7;
      v25 = 2112;
      v26 = redactString([a1 string], a8);
      _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "%@ Processing attributed query: %@", buf, 0x16u);
    }
  }

  *__error() = v16;
  v18 = [a1 length];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = ___ZL26PhPopulateFiltersFromQueryPK20__CFAttributedStringPP10query_nodeS4_P14NSMutableArrayIP7NSValueES9_bP8NSStringb_block_invoke;
  v21[3] = &unk_1E81949B0;
  v21[4] = a4;
  v21[5] = a5;
  v22 = a6;
  v21[6] = a7;
  v21[7] = a2;
  v21[8] = a3;
  [a1 enumerateAttributesInRange:0 options:v18 usingBlock:{0, v21}];
  objc_autoreleasePoolPop(context);
  v19 = *MEMORY[0x1E69E9840];
}

query_node *PhRankingTreeFromLLMParse(const __CFDictionary *a1, void *a2, NSCharacterSet *a3, uint64_t a4)
{
  v674 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  v7 = _SILogForLogForCategory(20);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = a4;
    _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "%@ Processing LLM QU output to create ranking tree", buf, 0xCu);
  }

  *__error() = v6;
  TokensInfoFromQueryUnderstanding = getTokensInfoFromQueryUnderstanding(a1);
  Value = CFDictionaryGetValue(a1, @"attributedParse");
  range = [MEMORY[0x1E695DF70] array];
  v595 = [MEMORY[0x1E695DF70] array];
  v9 = [(NSAttributedString *)Value length];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZL29PhPopulateDateFilterFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueE_block_invoke;
  v672 = &unk_1E8199718;
  *&v673 = range;
  *(&v673 + 1) = v595;
  [(NSAttributedString *)Value enumerateAttributesInRange:0 options:v9 usingBlock:0, buf];
  if ([v595 count])
  {
    v10 = *__error();
    v11 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v595 count];
      *buf = 138412546;
      *&buf[4] = a4;
      *&buf[12] = 2048;
      *&buf[14] = v12;
      _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, "%@ Populated %lu date filters from U2 parse", buf, 0x16u);
    }

    *__error() = v10;
  }

  if (![range count])
  {
    if (CFDictionaryContainsKey(a1, @"attributedParses"))
    {
      v106 = CFDictionaryGetValue(a1, @"attributedParses");
      if ([v106 count] >= 2)
      {
        v107 = [v106 objectAtIndexedSubscript:1];
        v108 = [v107 length];
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___ZL29PhPopulateDateFilterFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueE_block_invoke;
        v672 = &unk_1E8199718;
        *&v673 = range;
        *(&v673 + 1) = v595;
        [v107 enumerateAttributesInRange:0 options:v108 usingBlock:{0, buf}];
        if ([v595 count])
        {
          v109 = *__error();
          v110 = _SILogForLogForCategory(20);
          if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
          {
            v111 = [v595 count];
            *buf = 138412546;
            *&buf[4] = a4;
            *&buf[12] = 2048;
            *&buf[14] = v111;
            _os_log_impl(&dword_1C278D000, v110, OS_LOG_TYPE_DEFAULT, "%@ Populated %lu date filters from QP parse", buf, 0x16u);
          }

          *__error() = v109;
        }
      }
    }
  }

  v591 = [MEMORY[0x1E695DFA8] set];
  v560 = [MEMORY[0x1E695DF70] array];
  v637 = [MEMORY[0x1E695DF70] array];
  v636 = [MEMORY[0x1E695DF70] array];
  v635 = [MEMORY[0x1E695DF70] array];
  v634 = [MEMORY[0x1E695DF70] array];
  v633 = [MEMORY[0x1E695DFA8] set];
  v632 = [MEMORY[0x1E695DF70] array];
  v631 = [MEMORY[0x1E695DF70] array];
  v630 = [MEMORY[0x1E695DF70] array];
  v629 = [MEMORY[0x1E695DF70] array];
  v628 = [MEMORY[0x1E695DF70] array];
  v627 = [MEMORY[0x1E695DFA8] set];
  v626 = [MEMORY[0x1E695DF70] array];
  v625 = [MEMORY[0x1E695DF70] array];
  v624 = [MEMORY[0x1E695DF70] array];
  v623 = [MEMORY[0x1E695DF70] array];
  v622 = [MEMORY[0x1E695DF70] array];
  v621 = [MEMORY[0x1E695DF70] array];
  v620 = [MEMORY[0x1E695DF70] array];
  v619 = [MEMORY[0x1E695DF70] array];
  v618 = [MEMORY[0x1E695DF70] array];
  v617 = [MEMORY[0x1E695DF70] array];
  v616 = [MEMORY[0x1E695DF70] array];
  v615 = [MEMORY[0x1E695DF70] array];
  v614 = [MEMORY[0x1E695DF70] array];
  v613 = [MEMORY[0x1E695DF70] array];
  v612 = [MEMORY[0x1E695DF70] array];
  Count = CFArrayGetCount(TokensInfoFromQueryUnderstanding);
  if (Count < 1)
  {
    v582 = 0;
    v549 = 0;
    goto LABEL_208;
  }

  v582 = 0;
  v578 = 0;
  v568 = 0;
  v573 = 0;
  v13 = 0;
  v548 = TokensInfoFromQueryUnderstanding;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(TokensInfoFromQueryUnderstanding, v13);
    if (isValidTokenInfo(ValueAtIndex))
    {
      TopTokenIDFromTokenInfo = getTopTokenIDFromTokenInfo(ValueAtIndex);
      v16 = TopTokenIDFromTokenInfo;
      __p[1] = 0;
      __p[0] = 0;
      v17 = "Unknown";
      *&v661 = 0;
      if (TopTokenIDFromTokenInfo <= 0xD2)
      {
        v17 = off_1E8196D10[TopTokenIDFromTokenInfo];
      }

      std::string::basic_string[abi:nn200100]<0>(__p, v17);
      TokenRangeFromTokenInfo = getTokenRangeFromTokenInfo(ValueAtIndex);
      v20 = v19;
      if (TokenRangeFromTokenInfo == 0x7FFFFFFFFFFFFFFFLL)
      {
        v21 = *__error();
        v22 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = SBYTE7(v661);
          v24 = __p[0];
          v675.location = 0x7FFFFFFFFFFFFFFFLL;
          v675.length = v20;
          v25 = NSStringFromRange(v675);
          *buf = 138413058;
          v26 = __p;
          if (v23 < 0)
          {
            v26 = v24;
          }

          *&buf[4] = a4;
          *&buf[12] = 2080;
          *&buf[14] = v26;
          *&buf[22] = 2048;
          v672 = v13;
          LOWORD(v673) = 2112;
          *(&v673 + 2) = v25;
          _os_log_impl(&dword_1C278D000, v22, OS_LOG_TYPE_DEFAULT, "%@[%s] Skipping token: %lu (ERROR: invalid range: %@)", buf, 0x2Au);
        }

        *__error() = v21;
        goto LABEL_72;
      }

      if ([a2 count])
      {
        v29 = 0;
        while (1)
        {
          v705.location = [objc_msgSend(a2 objectAtIndexedSubscript:{v29), "rangeValue"}];
          v705.length = v30;
          v676.location = TokenRangeFromTokenInfo;
          v676.length = v20;
          if (NSIntersectionRange(v676, v705).length)
          {
            break;
          }

          if (++v29 >= [a2 count])
          {
            goto LABEL_26;
          }
        }

        v34 = *__error();
        v35 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = __p;
          if (SBYTE7(v661) < 0)
          {
            v36 = __p[0];
          }

          *buf = 138412802;
          *&buf[4] = a4;
          *&buf[12] = 2080;
          *&buf[14] = v36;
          *&buf[22] = 2048;
          v672 = v13;
          _os_log_impl(&dword_1C278D000, v35, OS_LOG_TYPE_DEFAULT, "%@[%s] Skipping token: %lu (Reason: It is a suggestion token)", buf, 0x20u);
        }

        *__error() = v34;
        goto LABEL_73;
      }

LABEL_26:
      if ([v595 count])
      {
        v31 = 0;
        while (1)
        {
          v706.location = [objc_msgSend(v595 objectAtIndexedSubscript:{v31), "rangeValue"}];
          v706.length = v32;
          v677.location = TokenRangeFromTokenInfo;
          v677.length = v20;
          if (NSIntersectionRange(v677, v706).length)
          {
            break;
          }

          if (++v31 >= [v595 count])
          {
            goto LABEL_30;
          }
        }

        v37 = *__error();
        v38 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = __p;
          if (SBYTE7(v661) < 0)
          {
            v39 = __p[0];
          }

          *buf = 138413058;
          *&buf[4] = a4;
          *&buf[12] = 2080;
          *&buf[14] = v39;
          *&buf[22] = 2048;
          v672 = v13;
          LOWORD(v673) = 2048;
          *(&v673 + 2) = v31;
          _os_log_impl(&dword_1C278D000, v38, OS_LOG_TYPE_DEFAULT, "%@[%s] Token: %lu has a date parse (Date parse idx: %lu)", buf, 0x2Au);
        }

        *__error() = v37;
        [v560 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", TokenRangeFromTokenInfo, v20)}];
        v40 = *__error();
        v41 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = SBYTE7(v661);
          v43 = __p[0];
          v678.location = TokenRangeFromTokenInfo;
          v678.length = v20;
          v44 = NSStringFromRange(v678);
          *buf = 138413058;
          v45 = __p;
          if (v42 < 0)
          {
            v45 = v43;
          }

          *&buf[4] = a4;
          *&buf[12] = 2080;
          *&buf[14] = v45;
          *&buf[22] = 2048;
          v672 = v13;
          LOWORD(v673) = 2112;
          *(&v673 + 2) = v44;
          _os_log_impl(&dword_1C278D000, v41, OS_LOG_TYPE_DEFAULT, "%@[%s] Token: %lu is a new time span (added range: %@)", buf, 0x2Au);
        }

        *__error() = v40;
        goto LABEL_73;
      }

LABEL_30:
      if (v16 == -1)
      {
        v46 = *__error();
        v47 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = __p;
          if (SBYTE7(v661) < 0)
          {
            v48 = __p[0];
          }

          *buf = 138413058;
          *&buf[4] = a4;
          *&buf[12] = 2080;
          *&buf[14] = v48;
          *&buf[22] = 2048;
          v672 = v13;
          LOWORD(v673) = 1024;
          *(&v673 + 2) = 64;
          _os_log_impl(&dword_1C278D000, v47, OS_LOG_TYPE_DEFAULT, "%@[%s] Token: %lu is using default label: %d (ERROR: no LLM labels found)", buf, 0x26u);
        }

        *__error() = v46;
        v33 = 64;
      }

      else if ((v16 & 0xFFFFFFFE) == 6)
      {
        v33 = 5;
      }

      else
      {
        v33 = v16;
      }

      v49 = v33;
      v578 |= v33 == 74;
      v568 |= v33 == 105;
      v573 |= v33 == 1;
      if (isLLMPhotosIgnoredArgId(v33))
      {
        TokensInfoFromQueryUnderstanding = v548;
        v50 = *__error();
        v51 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = __p;
          if (SBYTE7(v661) < 0)
          {
            v52 = __p[0];
          }

          *buf = 138412802;
          *&buf[4] = a4;
          *&buf[12] = 2080;
          *&buf[14] = v52;
          *&buf[22] = 2048;
          v672 = v13;
          _os_log_impl(&dword_1C278D000, v51, OS_LOG_TYPE_DEFAULT, "%@[%s] Token: %lu is skipped (Reason: It's a photos optional token)", buf, 0x20u);
        }

LABEL_71:
        *__error() = v50;
LABEL_72:
        v582 = 1;
        goto LABEL_73;
      }

      TokensInfoFromQueryUnderstanding = v548;
      if (isLLMInferredAppEntityTypeArgId(v49))
      {
        v50 = *__error();
        v53 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v54 = __p;
          if (SBYTE7(v661) < 0)
          {
            v54 = __p[0];
          }

          *buf = 138412802;
          *&buf[4] = a4;
          *&buf[12] = 2080;
          *&buf[14] = v54;
          *&buf[22] = 2048;
          v672 = v13;
          _os_log_impl(&dword_1C278D000, v53, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu skipped (Reason: It's an inferred app entity type token)", buf, 0x20u);
        }

        goto LABEL_71;
      }

      TokensInfoFromQueryUnderstanding = v548;
      if (isIgnoredAppEntityStatusArgId(v49) || (TokensInfoFromQueryUnderstanding = v548, isBundleSpecificFilterAppEntityStatusArgId(v16)))
      {
        v50 = *__error();
        v55 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v56 = __p;
          if (SBYTE7(v661) < 0)
          {
            v56 = __p[0];
          }

          *buf = 138412802;
          *&buf[4] = a4;
          *&buf[12] = 2080;
          *&buf[14] = v56;
          *&buf[22] = 2048;
          v672 = v13;
          _os_log_impl(&dword_1C278D000, v55, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu skipped (Reason: It's an ignored or bundle specific app entity status token)", buf, 0x20u);
        }

        goto LABEL_71;
      }

      TokensInfoFromQueryUnderstanding = v548;
      if (isLLMSourceTypeArgId(v49))
      {
        v50 = *__error();
        v57 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v58 = __p;
          if (SBYTE7(v661) < 0)
          {
            v58 = __p[0];
          }

          *buf = 138412802;
          *&buf[4] = a4;
          *&buf[12] = 2080;
          *&buf[14] = v58;
          *&buf[22] = 2048;
          v672 = v13;
          _os_log_impl(&dword_1C278D000, v57, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu skipped (Reason: It's a source entity type token)", buf, 0x20u);
        }

        goto LABEL_71;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3052000000;
      v672 = __Block_byref_object_copy__7499;
      *&v673 = __Block_byref_object_dispose__7500;
      *(&v673 + 1) = 0;
      v59 = v49;
      if (v49 == 70)
      {
        v611[0] = MEMORY[0x1E69E9820];
        v611[1] = 3221225472;
        v611[2] = ___ZL25PhRankingTreeFromLLMParsePK14__CFDictionaryP7NSArrayIP7NSValueEP14NSCharacterSetP8NSString_block_invoke;
        v611[3] = &unk_1E8197768;
        v611[4] = buf;
        [(NSAttributedString *)Value enumerateAttributesInRange:TokenRangeFromTokenInfo options:v20 usingBlock:0, v611];
      }

      else if (isLLMPhotosAppEntityTypeArgId(v49))
      {
        v704.location = TokenRangeFromTokenInfo;
        v704.length = v20;
        LLMTokenDescription = getLLMTokenDescription(v49, v704, Value, 0);
        *(*&buf[8] + 40) = LLMTokenDescription;
      }

      RawTextFromTokenInfo = getRawTextFromTokenInfo(ValueAtIndex);
      TokenFromTokenInfo = getTokenFromTokenInfo(ValueAtIndex);
      RawTextTokensFromTokenInfo = getRawTextTokensFromTokenInfo(ValueAtIndex);
      if (_containsOnlyCharsInCharset(TokenFromTokenInfo, a3))
      {
        v63 = *__error();
        v64 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v65 = __p;
          if (SBYTE7(v661) < 0)
          {
            v65 = __p[0];
          }

          *v664 = 138412802;
          *&v664[4] = a4;
          v665 = 2080;
          v666 = v65;
          v667 = 2048;
          v668 = v13;
          _os_log_impl(&dword_1C278D000, v64, OS_LOG_TYPE_DEFAULT, "%@[%s] Token: %lu is skipped (Reason: It has only trimmable chars)", v664, 0x20u);
        }

LABEL_106:
        *__error() = v63;
        v582 = 1;
LABEL_107:
        _Block_object_dispose(buf, 8);
LABEL_73:
        if (SBYTE7(v661) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_75;
      }

      v66 = [(NSString *)TokenFromTokenInfo UTF8String];
      if (!v66)
      {
        v63 = *__error();
        v70 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          v71 = __p;
          if (SBYTE7(v661) < 0)
          {
            v71 = __p[0];
          }

          *v664 = 138412802;
          *&v664[4] = a4;
          v665 = 2080;
          v666 = v71;
          v667 = 2048;
          v668 = v13;
          _os_log_impl(&dword_1C278D000, v70, OS_LOG_TYPE_DEFAULT, "%@[%s] Token: %lu is skipped (ERROR: UTF8 encoding of token failed)", v664, 0x20u);
        }

        goto LABEL_106;
      }

      std::string::basic_string[abi:nn200100]<0>(v664, v66);
      v67 = isOptionalWord(v664);
      if (SHIBYTE(v667) < 0)
      {
        operator delete(*v664);
      }

      if (v67)
      {
        v63 = *__error();
        v68 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          v69 = __p;
          if (SBYTE7(v661) < 0)
          {
            v69 = __p[0];
          }

          *v664 = 138412802;
          *&v664[4] = a4;
          v665 = 2080;
          v666 = v69;
          v667 = 2048;
          v668 = v13;
          _os_log_impl(&dword_1C278D000, v68, OS_LOG_TYPE_DEFAULT, "%@[%s] Token: %lu is skipped (Reason: It is optional as per optional dictionary)", v664, 0x20u);
        }

        goto LABEL_106;
      }

      if (v578)
      {
        std::string::basic_string[abi:nn200100]<0>(v664, v66);
        v72 = isOptionalSearchTerm(v59, v664, v548, v13, 0, 1, 0);
        if (SHIBYTE(v667) < 0)
        {
          operator delete(*v664);
        }

        if (v72)
        {
          v63 = *__error();
          v73 = _SILogForLogForCategory(20);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            v74 = __p;
            if (SBYTE7(v661) < 0)
            {
              v74 = __p[0];
            }

            *v664 = 138412802;
            *&v664[4] = a4;
            v665 = 2080;
            v666 = v74;
            v667 = 2048;
            v668 = v13;
            _os_log_impl(&dword_1C278D000, v73, OS_LOG_TYPE_DEFAULT, "%@[%s] Token: %lu is skipped (Reason: It's a trailing optional search token)", v664, 0x20u);
          }

          goto LABEL_106;
        }
      }

      GroundedNamesFromTokenInfo = getGroundedNamesFromTokenInfo(ValueAtIndex);
      v521 = RawTextFromTokenInfo;
      obj = getGroundedNamesTokenFromTokenInfo(ValueAtIndex);
      v75 = [MEMORY[0x1E695DF70] array];
      v517 = v59;
      if (((v59 != 104) & ~isLLMPersonArgId(v59)) != 0)
      {
        goto LABEL_143;
      }

      if (![obj count])
      {
        std::string::basic_string[abi:nn200100]<0>(v664, v66);
        v80 = peopleNameAlias(v664);
        if (SHIBYTE(v667) < 0)
        {
          operator delete(*v664);
        }

        if (*(v80 + 23) < 0)
        {
          if (!v80[1])
          {
            goto LABEL_143;
          }

          v80 = *v80;
LABEL_142:
          [v75 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v80)}];
          goto LABEL_143;
        }

        if (*(v80 + 23))
        {
          goto LABEL_142;
        }

LABEL_143:
        v81 = isLLMPhotosEventArgId(v517);
        if (v81)
        {
          v82 = 14;
        }

        else
        {
          v82 = v517;
        }

        v542 = v82;
        v83 = &v625;
        if (v81)
        {
          v83 = &v618;
        }

        v518 = v83;
        v84 = &v624;
        if (v81)
        {
          v84 = &v617;
        }

        v515 = v84;
        v85 = &v619;
        if (v81)
        {
          v85 = &v612;
        }

        v501 = v85;
        if (v81)
        {
          v86 = &v614;
        }

        else
        {
          v86 = &v621;
        }

        v87 = &v620;
        if (v81)
        {
          v87 = &v613;
        }

        v508 = v86;
        v510 = v87;
        if (v81)
        {
          v88 = &v616;
        }

        else
        {
          v88 = &v623;
        }

        v89 = &v622;
        if (v81)
        {
          v89 = &v615;
        }

        v511 = v88;
        v513 = v89;
        if (v81)
        {
          v90 = &v631;
        }

        else
        {
          v90 = &v637;
        }

        if (v81)
        {
          v91 = &v630;
        }

        else
        {
          v91 = &v636;
        }

        v92 = &v634;
        if (v81)
        {
          v92 = &v628;
        }

        __s = v92;
        if (v81)
        {
          v93 = &v627;
        }

        else
        {
          v93 = &v633;
        }

        v94 = &v632;
        if (v81)
        {
          v94 = &v626;
        }

        v502 = v94;
        v95 = &v635;
        if (v81)
        {
          v95 = &v629;
        }

        v503 = v95;
        if (([*v93 containsObject:v521] & 1) == 0)
        {
          [*v90 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", TokenRangeFromTokenInfo, v20)}];
          [*v91 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v542)}];
          [*__s addObject:v521];
          [*v93 addObject:v521];
          if (*(*&buf[8] + 40))
          {
            v96 = *(*&buf[8] + 40);
          }

          else
          {
            v96 = &stru_1F4284FD0;
          }

          [*v503 addObject:v96];
          v97 = [(__CFDictionary *)GroundedNamesFromTokenInfo count];
          v98 = *v502;
          if (v97)
          {
            [v98 addObject:GroundedNamesFromTokenInfo];
          }

          else
          {
            [v98 addObject:MEMORY[0x1E695E0F0]];
          }
        }

        [*v518 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", TokenRangeFromTokenInfo, v20)}];
        [*v515 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v542)}];
        v99 = [obj count];
        v100 = *v513;
        if (v99)
        {
          [v100 addObject:obj];
        }

        else
        {
          [v100 addObject:MEMORY[0x1E695E0F0]];
        }

        if (*(*&buf[8] + 40))
        {
          v101 = *(*&buf[8] + 40);
        }

        else
        {
          v101 = &stru_1F4284FD0;
        }

        [*v511 addObject:v101];
        v102 = [v75 count];
        v103 = *v510;
        if (v102)
        {
          [v103 addObject:v75];
        }

        else
        {
          [v103 addObject:MEMORY[0x1E695E0F0]];
        }

        if (v542 == 8)
        {
          [*v501 addObjectsFromArray:RawTextTokensFromTokenInfo];
        }

        LemmaFromTokenInfo = getLemmaFromTokenInfo(ValueAtIndex);
        v105 = LemmaFromTokenInfo;
        if (!LemmaFromTokenInfo || ![(__CFDictionary *)LemmaFromTokenInfo length])
        {
          v105 = &stru_1F4284FD0;
        }

        [*v508 addObject:v105];
        goto LABEL_107;
      }

      v609 = 0u;
      v610 = 0u;
      v607 = 0u;
      v608 = 0u;
      v76 = [obj countByEnumeratingWithState:&v607 objects:v653 count:16];
      if (!v76)
      {
        goto LABEL_143;
      }

      v541 = *v608;
LABEL_121:
      v77 = v76;
      v78 = 0;
      while (1)
      {
        if (*v608 != v541)
        {
          objc_enumerationMutation(obj);
        }

        std::string::basic_string[abi:nn200100]<0>(v664, [objc_msgSend(objc_msgSend(*(*(&v607 + 1) + 8 * v78) objectAtIndexedSubscript:{0), "lowercaseString"), "UTF8String"}]);
        v79 = peopleNameAlias(v664);
        if (SHIBYTE(v667) < 0)
        {
          operator delete(*v664);
        }

        if ((*(v79 + 23) & 0x80000000) == 0)
        {
          break;
        }

        if (v79[1])
        {
          v79 = *v79;
LABEL_131:
          [v75 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v79)}];
        }

LABEL_132:
        if (v77 == ++v78)
        {
          v76 = [obj countByEnumeratingWithState:&v607 objects:v653 count:16];
          if (!v76)
          {
            goto LABEL_143;
          }

          goto LABEL_121;
        }
      }

      if (!*(v79 + 23))
      {
        goto LABEL_132;
      }

      goto LABEL_131;
    }

    v27 = *__error();
    v28 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = a4;
      *&buf[12] = 2048;
      *&buf[14] = v13;
      _os_log_impl(&dword_1C278D000, v28, OS_LOG_TYPE_DEFAULT, "%@ Skipping token: %lu (ERROR: token info is missing essential keys)", buf, 0x16u);
    }

    *__error() = v27;
    v582 = 1;
LABEL_75:
    ++v13;
  }

  while (v13 != Count);
  v549 = v578 | v568;
  if (v573)
  {
    v587 = v637;
    v556 = v636;
    v544 = v635;
    v582 = 1;
    v532 = v632;
    obja = v634;
    goto LABEL_211;
  }

LABEL_208:
  v112 = *__error();
  v113 = _SILogForLogForCategory(20);
  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = a4;
    _os_log_impl(&dword_1C278D000, v113, OS_LOG_TYPE_DEFAULT, "%@ No search terms found, adding event tokens to ranking tree", buf, 0xCu);
  }

  *__error() = v112;
  [v625 addObjectsFromArray:v618];
  [(query_node *)v624 addObjectsFromArray:v617];
  [v623 addObjectsFromArray:v616];
  [v622 addObjectsFromArray:v615];
  [(NSAttributedString *)v621 addObjectsFromArray:v614];
  [v620 addObjectsFromArray:v613];
  v587 = v637;
  [v637 addObjectsFromArray:v631];
  v556 = v636;
  [v636 addObjectsFromArray:v630];
  v544 = v635;
  [v635 addObjectsFromArray:v629];
  obja = v634;
  [v634 addObjectsFromArray:v628];
  [v633 unionSet:v627];
  v532 = v632;
  [v632 addObjectsFromArray:v626];
LABEL_211:
  v543 = [(NSAttributedString *)Value string];
  if (![(NSString *)v543 length])
  {
    v143 = *__error();
    v144 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = a4;
      _os_log_impl(&dword_1C278D000, v144, OS_LOG_TYPE_DEFAULT, "%@ {Span Match} Skipping query (Reason: empty query)", buf, 0xCu);
    }

    goto LABEL_240;
  }

  if (![v587 count] && !objc_msgSend(v591, "count"))
  {
    v143 = *__error();
    v146 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = a4;
      _os_log_impl(&dword_1C278D000, v146, OS_LOG_TYPE_DEFAULT, "%@ {Span Match} Skipping query (Reason: no spans and no time parses in the query)", buf, 0xCu);
    }

LABEL_240:
    v145 = __error();
    v116 = 0;
LABEL_351:
    *v145 = v143;
    goto LABEL_352;
  }

  v114 = [v587 count];
  if (v114 == [v556 count])
  {
    v115 = [v587 count];
    if (v115 == [v544 count])
    {
      v565 = [(NSString *)v543 length];
      LODWORD(v650) = 0;
      if ([v587 count] && objc_msgSend(v560, "count"))
      {
        v116 = 0;
        v117 = 0;
        while (1)
        {
          v118 = [objc_msgSend(v560 objectAtIndexedSubscript:{v117), "rangeValue"}];
          v120 = v118;
          v121 = v119;
          if (v118 == 0x7FFFFFFFFFFFFFFFLL || v118 + v119 > v565)
          {
            v131 = *__error();
            v132 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
            {
              v679.location = v120;
              v679.length = v121;
              v133 = NSStringFromRange(v679);
              *buf = 138412802;
              *&buf[4] = a4;
              *&buf[12] = 2048;
              *&buf[14] = v117;
              *&buf[22] = 2112;
              v672 = v133;
              _os_log_impl(&dword_1C278D000, v132, OS_LOG_TYPE_DEFAULT, "%@ {Span Match} Skipping time span: %lu (ERROR: out of bounds range %@)", buf, 0x20u);
            }

            goto LABEL_232;
          }

          v122 = [(NSString *)v543 substringWithRange:v118, v119];
          if (![(NSString *)v122 length])
          {
            break;
          }

          v123 = [(NSString *)v122 UTF8String];
          if (!v123)
          {
            v131 = *__error();
            v136 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
            {
              v681.location = v120;
              v681.length = v121;
              v137 = NSStringFromRange(v681);
              *buf = 138412802;
              *&buf[4] = a4;
              *&buf[12] = 2048;
              *&buf[14] = v117;
              *&buf[22] = 2112;
              v672 = v137;
              _os_log_impl(&dword_1C278D000, v136, OS_LOG_TYPE_DEFAULT, "%@ {Span Match} Skipping time span: %lu (ERROR: UTF8 encoding failed for range %@)", buf, 0x20u);
            }

LABEL_232:
            *__error() = v131;
            goto LABEL_233;
          }

          QueryNode = createQueryNode("kMDItemPhotosHolidays", v123, 48, 1, 0, 10.0, 0.0);
          v125 = createQueryNode("kMDItemPhotosSeasons", v123, 48, 1, 0, 10.0, 0.0);
          v126 = createQueryNode("kMDItemPhotosContentCreationDateMonth", v123, 48, 1, 0, 10.0, 0.0);
          v127 = createQueryNode("kMDItemPhotosContentCreationDateYear", v123, 48, 1, 0, 10.0, 0.0);
          LODWORD(v650) = v650 + 4;
          v128 = makeOrNode(QueryNode, v125);
          v129 = makeOrNode(v126, v127);
          v130 = makeOrNode(v128, v129);
          v116 = makeOrNode(v116, v130);
LABEL_233:
          if (++v117 >= [v560 count])
          {
            goto LABEL_245;
          }
        }

        v131 = *__error();
        v134 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
        {
          v680.location = v120;
          v680.length = v121;
          v135 = NSStringFromRange(v680);
          *buf = 138412802;
          *&buf[4] = a4;
          *&buf[12] = 2048;
          *&buf[14] = v117;
          *&buf[22] = 2112;
          v672 = v135;
          _os_log_impl(&dword_1C278D000, v134, OS_LOG_TYPE_DEFAULT, "%@ {Span Match} Skipping time span: %lu (ERROR: Empty sub-query for range %@)", buf, 0x20u);
        }

        goto LABEL_232;
      }

      v116 = 0;
LABEL_245:
      v663 = 0u;
      v662 = 0u;
      v661 = 0u;
      *__p = 0u;
      v147 = [v591 countByEnumeratingWithState:__p objects:buf count:16];
      if (v147)
      {
        v148 = *v661;
        do
        {
          for (i = 0; i != v147; ++i)
          {
            if (*v661 != v148)
            {
              objc_enumerationMutation(v591);
            }

            v150 = *(__p[1] + i);
            v151 = [range objectAtIndexedSubscript:{objc_msgSend(v150, "unsignedIntValue")}];
            if ([v151 length])
            {
              v152 = [v151 UTF8String];
              if (v152)
              {
                v153 = PhRankingTreeFromStr(v152, 10.0, &v650);
                v116 = makeOrNode(v116, v153);
                continue;
              }

              v154 = *__error();
              v157 = _SILogForLogForCategory(20);
              if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
              {
                v158 = [v150 unsignedIntValue];
                *v664 = 138412546;
                *&v664[4] = a4;
                v665 = 1024;
                LODWORD(v666) = v158;
                _os_log_impl(&dword_1C278D000, v157, OS_LOG_TYPE_DEFAULT, "%@ {Span Match} Skipping time parse: %u (ERROR: UTF8 encoding failed)", v664, 0x12u);
              }
            }

            else
            {
              v154 = *__error();
              v155 = _SILogForLogForCategory(20);
              if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
              {
                v156 = [v150 unsignedIntValue];
                *v664 = 138412546;
                *&v664[4] = a4;
                v665 = 1024;
                LODWORD(v666) = v156;
                _os_log_impl(&dword_1C278D000, v155, OS_LOG_TYPE_DEFAULT, "%@ {Span Match} Skipping time parse: %u (ERROR: its zero length)", v664, 0x12u);
              }
            }

            *__error() = v154;
          }

          v147 = [v591 countByEnumeratingWithState:__p objects:buf count:16];
        }

        while (v147);
      }

      if ([v587 count] && (objc_msgSend(v587, "count") != 1 || v582 & 1 | (objc_msgSend(v591, "count") != 0)))
      {
        v159 = v116 == 0;
        {
          PhSpanMatchLLMRankingAttribs(void)::_phSpanMatchAttribs = 0u;
          unk_1EBF61FD8 = 0u;
          dword_1EBF61FE8 = 1065353216;
        }

        if (PhSpanMatchLLMRankingAttribs(void)::onceToken[0] != -1)
        {
          dispatch_once(PhSpanMatchLLMRankingAttribs(void)::onceToken, &__block_literal_global_155);
        }

        if ([v587 count])
        {
          for (j = 0; j < [v587 count]; ++j)
          {
            v161 = [objc_msgSend(v587 objectAtIndexedSubscript:{j), "rangeValue"}];
            rangea = v162;
            v163 = v161;
            if (v161 == 0x7FFFFFFFFFFFFFFFLL || v161 + v162 > v565)
            {
              v175 = *__error();
              v176 = _SILogForLogForCategory(20);
              if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
              {
                v683.location = v163;
                v683.length = rangea;
                v177 = NSStringFromRange(v683);
                *v669 = 138412802;
                *&v669[4] = a4;
                *&v669[12] = 2048;
                *&v669[14] = j;
                *&v669[22] = 2112;
                *&v669[24] = v177;
                _os_log_impl(&dword_1C278D000, v176, OS_LOG_TYPE_DEFAULT, "%@  {Span Match} Skipping span: %lu, range: %@ (ERROR: range is out of bounds)", v669, 0x20u);
              }
            }

            else
            {
              v579 = [objc_msgSend(obja objectAtIndexedSubscript:{j), "UTF8String"}];
              if (v579)
              {
                v583 = [objc_msgSend(v556 objectAtIndexedSubscript:{j), "intValue"}];
                v642[1] = 0;
                v642[0] = 0;
                v164 = "Unknown";
                *&v643 = 0;
                if (v583 <= 0xD2)
                {
                  v164 = off_1E8196D10[v583];
                }

                std::string::basic_string[abi:nn200100]<0>(v642, v164);
                v165 = [v544 objectAtIndexedSubscript:j];
                v596 = j;
                v166 = [v532 objectAtIndexedSubscript:j];
                v167 = std::__hash_table<std::__hash_value_type<int,std::unordered_set<std::string>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<std::string>>>>::find<int>(PhSpanMatchLLMRankingAttribs(void)::_phSpanMatchAttribs, *(&PhSpanMatchLLMRankingAttribs(void)::_phSpanMatchAttribs + 1), v583);
                v168 = *__error();
                v169 = _SILogForLogForCategory(20);
                v569 = v116;
                if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
                {
                  v170 = SBYTE7(v643);
                  v171 = v642[0];
                  v682.location = v163;
                  v682.length = rangea;
                  v172 = NSStringFromRange(v682);
                  *v669 = 138413314;
                  v173 = v642;
                  if (v170 < 0)
                  {
                    v173 = v171;
                  }

                  *&v669[4] = a4;
                  *&v669[12] = 2080;
                  *&v669[14] = v173;
                  *&v669[22] = 2048;
                  *&v669[24] = v596;
                  LOWORD(v670[0]) = 2112;
                  *(v670 + 2) = v165;
                  WORD5(v670[0]) = 2112;
                  *(v670 + 12) = v172;
                  _os_log_impl(&dword_1C278D000, v169, OS_LOG_TYPE_DEFAULT, "%@[%s] {Span Match} Adding span: %lu, desc: %@, range:%@", v669, 0x34u);
                  v116 = v569;
                }

                *__error() = v168;
                memset(v654, 0, sizeof(v654));
                std::string::basic_string[abi:nn200100]<0>(v669, v579);
                getSynonym(v654, v669);
                if (v669[23] < 0)
                {
                  operator delete(*v669);
                }

                v529 = v159;
                if ([v165 length])
                {
                  v174 = PhRankingTreeFromStr([v165 UTF8String], 10.0, &v650);
LABEL_282:
                  v116 = makeAndNode(v116, v174);
                  if (v654[23] < 0)
                  {
                    operator delete(*v654);
                  }

                  j = v596;
                  if (SBYTE7(v643) < 0)
                  {
                    operator delete(v642[0]);
                  }

                  v159 = (v174 == 0) & v529;
                  continue;
                }

                if (v167)
                {
                  p_var3 = v167[4];
                  v561 = v167[5];
                  if (p_var3 != v561)
                  {
                    v552 = v167;
                    v174 = 0;
                    if (v159)
                    {
                      v181 = 10.0;
                    }

                    else
                    {
                      v181 = 0.0;
                    }

                    while (1)
                    {
                      var0 = p_var3;
                      if (SHIBYTE(p_var3[2].var1) < 0)
                      {
                        var0 = p_var3->var0;
                      }

                      v183 = v181 + *&v552[3].super.isa;
                      v574 = p_var3;
                      if (v583 == 104 || v583 == 64 && [v166 count])
                      {
                        v648 = 0u;
                        v649 = 0u;
                        v646 = 0u;
                        v647 = 0u;
                        v184 = [v166 countByEnumeratingWithState:&v646 objects:v664 count:16];
                        if (v184)
                        {
                          v185 = *v647;
                          do
                          {
                            for (k = 0; k != v184; ++k)
                            {
                              if (*v647 != v185)
                              {
                                objc_enumerationMutation(v166);
                              }

                              v187 = *(*(&v646 + 1) + 8 * k);
                              v188 = createQueryNode(var0, [v187 UTF8String], 48, 1, 0, v183, 0.0);
                              v174 = makeOrNode(v174, v188);
                              LODWORD(v650) = v650 + 1;
                              v189 = *__error();
                              v190 = _SILogForLogForCategory(20);
                              if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
                              {
                                v685.location = v163;
                                v685.length = rangea;
                                v191 = NSStringFromRange(v685);
                                *v669 = 138413058;
                                *&v669[4] = a4;
                                *&v669[12] = 2048;
                                *&v669[14] = v596;
                                *&v669[22] = 2112;
                                *&v669[24] = v191;
                                LOWORD(v670[0]) = 2112;
                                *(v670 + 2) = v187;
                                _os_log_impl(&dword_1C278D000, v190, OS_LOG_TYPE_DEFAULT, "%@ {Span Match} Adding span: %lu, range:%@, self name: %@", v669, 0x2Au);
                              }

                              *__error() = v189;
                            }

                            v184 = [v166 countByEnumeratingWithState:&v646 objects:v664 count:16];
                          }

                          while (v184);
                        }

                        goto LABEL_324;
                      }

                      v192 = createQueryNode(var0, v579, 48, 1, 0, v183, 0.0);
                      v174 = makeOrNode(v174, v192);
                      if (v654[23] < 0)
                      {
                        if (*&v654[8])
                        {
                          v193 = *v654;
                          goto LABEL_320;
                        }
                      }

                      else if (v654[23])
                      {
                        v193 = v654;
LABEL_320:
                        v194 = createQueryNode(var0, v193, 48, 1, 0, v183, 0.0);
                        v174 = makeOrNode(v174, v194);
                        v195 = *__error();
                        v196 = _SILogForLogForCategory(19);
                        if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
                        {
                          *v669 = 138412546;
                          *&v669[4] = a4;
                          *&v669[12] = 2048;
                          *&v669[14] = v596;
                          _os_log_impl(&dword_1C278D000, v196, OS_LOG_TYPE_DEFAULT, "%@ {Span Match} Adding synonym for token %lu", v669, 0x16u);
                        }

                        *__error() = v195;
                        LODWORD(v650) = v650 + 1;
                      }

                      LODWORD(v650) = v650 + 1;
LABEL_324:
                      v116 = v569;
                      p_var3 = &v574->var3;
                      if (&v574->var3 == v561)
                      {
                        goto LABEL_282;
                      }
                    }
                  }

LABEL_342:
                  v174 = 0;
                  goto LABEL_282;
                }

                PhExactMatchRankingAttribs();
                v197 = qword_1EBF483C0;
                if (!qword_1EBF483C0)
                {
                  goto LABEL_342;
                }

                v174 = 0;
                if (v159)
                {
                  v198 = 10.0;
                }

                else
                {
                  v198 = 0.0;
                }

                while (2)
                {
                  v199 = (v197 + 16);
                  if (*(v197 + 39) < 0)
                  {
                    v199 = *v199;
                  }

                  v200 = v198 + *(v197 + 40);
                  v201 = createQueryNode(v199, v579, 48, 1, 0, v200, 0.0);
                  v174 = makeOrNode(v174, v201);
                  if (v654[23] < 0)
                  {
                    if (*&v654[8])
                    {
                      v202 = *v654;
LABEL_337:
                      v203 = createQueryNode(v199, v202, 48, 1, 0, v200, 0.0);
                      v174 = makeOrNode(v174, v203);
                      v204 = *__error();
                      v205 = _SILogForLogForCategory(19);
                      if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
                      {
                        *v669 = 138412546;
                        *&v669[4] = a4;
                        *&v669[12] = 2048;
                        *&v669[14] = v596;
                        _os_log_impl(&dword_1C278D000, v205, OS_LOG_TYPE_DEFAULT, "%@ {Span Match} Adding synonym for token %lu", v669, 0x16u);
                      }

                      *__error() = v204;
                      LODWORD(v650) = v650 + 1;
                    }
                  }

                  else if (v654[23])
                  {
                    v202 = v654;
                    goto LABEL_337;
                  }

                  LODWORD(v650) = v650 + 1;
                  v197 = *v197;
                  if (!v197)
                  {
                    goto LABEL_282;
                  }

                  continue;
                }
              }

              v175 = *__error();
              v178 = _SILogForLogForCategory(20);
              if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
              {
                v684.location = v163;
                v684.length = rangea;
                v179 = NSStringFromRange(v684);
                *v669 = 138412802;
                *&v669[4] = a4;
                *&v669[12] = 2048;
                *&v669[14] = j;
                *&v669[22] = 2112;
                *&v669[24] = v179;
                _os_log_impl(&dword_1C278D000, v178, OS_LOG_TYPE_DEFAULT, "%@ {Span Match} Skipping span: %lu, range: %@ (ERROR: UTF8 encoding failed)", v669, 0x20u);
              }
            }

            *__error() = v175;
          }
        }

        v143 = *__error();
        v208 = _SILogForLogForCategory(20);
        if (!os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_350;
        }

        *v669 = 138412546;
        *&v669[4] = a4;
        *&v669[12] = 1024;
        *&v669[14] = v650;
        v209 = v669;
      }

      else
      {
        v206 = *__error();
        v207 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
        {
          *v664 = 138412290;
          *&v664[4] = a4;
          _os_log_impl(&dword_1C278D000, v207, OS_LOG_TYPE_DEFAULT, "%@ {Span Match} Skipping rest of span match nodes (Reason: exact match nodes should be sufficient)", v664, 0xCu);
        }

        *__error() = v206;
        v143 = *__error();
        v208 = _SILogForLogForCategory(20);
        if (!os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_350;
        }

        *v664 = 138412546;
        *&v664[4] = a4;
        v665 = 1024;
        LODWORD(v666) = v650;
        v209 = v664;
      }

      _os_log_impl(&dword_1C278D000, v208, OS_LOG_TYPE_DEFAULT, "%@ {Span Match} Added %d nodes", v209, 0x12u);
LABEL_350:
      v145 = __error();
      goto LABEL_351;
    }
  }

  v138 = *__error();
  v139 = _SILogForLogForCategory(20);
  if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
  {
    v140 = [v587 count];
    v141 = [v556 count];
    v142 = [v544 count];
    *buf = 138413058;
    *&buf[4] = a4;
    *&buf[12] = 2048;
    *&buf[14] = v140;
    *&buf[22] = 2048;
    v672 = v141;
    LOWORD(v673) = 2048;
    *(&v673 + 2) = v142;
    _os_log_impl(&dword_1C278D000, v139, OS_LOG_TYPE_DEFAULT, "%@  {Span Match} Skipping query (ERROR: span count mismatch <#range=%lu, #types=%lu, #descriptions=%lu>)", buf, 0x2Au);
  }

  v116 = 0;
  *__error() = v138;
LABEL_352:
  v210 = v625;
  v211 = v624;
  v212 = v622;
  v553 = v621;
  v557 = v623;
  v562 = v619;
  if (![(NSString *)v543 length])
  {
    v294 = *__error();
    v295 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v295, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = a4;
      _os_log_impl(&dword_1C278D000, v295, OS_LOG_TYPE_DEFAULT, "%@ {Token Match} Skipping query (Reason: empty query)", buf, 0xCu);
    }

    goto LABEL_476;
  }

  if (![v210 count])
  {
    v294 = *__error();
    v296 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v296, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = a4;
      _os_log_impl(&dword_1C278D000, v296, OS_LOG_TYPE_DEFAULT, "%@ {Token Match} Skipping query (Reason: no useful tokens)", buf, 0xCu);
    }

LABEL_476:
    v297 = __error();
    v298 = 0;
    *v297 = v294;
    goto LABEL_484;
  }

  v213 = [v210 count];
  if (v213 == [(query_node *)v211 count])
  {
    {
      PhPrefixMatchLLMRankingAttribs(void)::_phPrefixMatchLLMAttribs = 0u;
      unk_1EBF62018 = 0u;
      dword_1EBF62028 = 1065353216;
    }

    if (PhPrefixMatchLLMRankingAttribs(void)::onceToken != -1)
    {
      dispatch_once(&PhPrefixMatchLLMRankingAttribs(void)::onceToken, &__block_literal_global_171);
    }

    v638 = 0;
    v584 = [(NSString *)v543 length];
    if ([v210 count])
    {
      rangeb = 0;
      v214 = 0;
      v570 = v116;
      v530 = v211;
      v527 = v210;
      v525 = v212;
      while (1)
      {
        v588 = [-[query_node objectAtIndexedSubscript:](v211 objectAtIndexedSubscript:{v214), "intValue"}];
        v651 = 0;
        v650 = 0;
        v215 = "Unknown";
        v652 = 0;
        if (v588 <= 0xD2)
        {
          v215 = off_1E8196D10[v588];
        }

        std::string::basic_string[abi:nn200100]<0>(&v650, v215);
        v216 = [objc_msgSend(v210 objectAtIndexedSubscript:{v214), "rangeValue"}];
        v218 = v216;
        v219 = v217;
        if (v216 == 0x7FFFFFFFFFFFFFFFLL || v216 + v217 > v584)
        {
          v221 = *__error();
          v227 = _SILogForLogForCategory(20);
          if (os_log_type_enabled(v227, OS_LOG_TYPE_DEFAULT))
          {
            v687.length = v219;
            v228 = SHIBYTE(v652);
            v229 = v650;
            v687.location = v218;
            v230 = NSStringFromRange(v687);
            *v654 = 138413058;
            v231 = &v650;
            if (v228 < 0)
            {
              v231 = v229;
            }

            *&v654[4] = a4;
            *&v654[12] = 2080;
            *&v654[14] = v231;
            *&v654[22] = 2048;
            v655 = v214;
            v656 = 2112;
            *v657 = v230;
            _os_log_impl(&dword_1C278D000, v227, OS_LOG_TYPE_DEFAULT, "%@[%s] {Token Match} Skipping token: %lu, range: :%@ (ERROR: range is out of bounds)", v654, 0x2Au);
          }
        }

        else
        {
          v580 = v216;
          v220 = [(NSString *)v543 substringWithRange:v216, v217];
          if ([(NSString *)v220 length])
          {
            v220 = [(NSString *)v220 stringByTrimmingCharactersInSet:a3];
          }

          if ([(NSString *)v220 length]> 1)
          {
            v575 = v214;
            v232 = [(NSString *)v220 UTF8String];
            if (v232)
            {
              v545 = v232;
              v233 = std::__hash_table<std::__hash_value_type<int,std::unordered_set<std::string>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<std::string>>>>::find<int>(PhPrefixMatchLLMRankingAttribs(void)::_phPrefixMatchLLMAttribs, *(&PhPrefixMatchLLMRankingAttribs(void)::_phPrefixMatchLLMAttribs + 1), v588);
              if (v233)
              {
                v234 = v233;
                v235 = *(v233 + 6);
                if (v235 > 0.0)
                {
                  v236 = rangeb;
                  v237 = [v557 objectAtIndexedSubscript:v575];
                  v592 = [v212 objectAtIndexedSubscript:v575];
                  v533 = [(NSAttributedString *)v553 objectAtIndexedSubscript:v575];
                  v522 = v219;
                  v238 = *__error();
                  v239 = _SILogForLogForCategory(20);
                  if (os_log_type_enabled(v239, OS_LOG_TYPE_DEFAULT))
                  {
                    v240 = SHIBYTE(v652);
                    v241 = v650;
                    v688.location = v218;
                    v688.length = v522;
                    v242 = NSStringFromRange(v688);
                    *v654 = 138413314;
                    v243 = &v650;
                    if (v240 < 0)
                    {
                      v243 = v241;
                    }

                    *&v654[4] = a4;
                    *&v654[12] = 2080;
                    *&v654[14] = v243;
                    *&v654[22] = 2048;
                    v655 = v575;
                    v656 = 2112;
                    *v657 = v242;
                    *&v657[8] = 1024;
                    *&v657[10] = v588;
                    _os_log_impl(&dword_1C278D000, v239, OS_LOG_TYPE_DEFAULT, "%@[%s] {Token Match} Adding token: %lu, range:%@, type: %d", v654, 0x30u);
                    v116 = v570;
                    v236 = rangeb;
                  }

                  *__error() = v238;
                  if ([v237 length])
                  {
                    v244 = PhRankingTreeFromStr([v237 UTF8String], 0.1, &v638);
                    goto LABEL_390;
                  }

                  v260 = v234[4];
                  *v519 = v234[5];
                  if (v260 == *v519)
                  {
                    v244 = 0;
LABEL_390:
                    v214 = v575;
LABEL_391:
                    rangeb = makeAndNode(v236, v244);
                    v211 = v530;
                    v210 = v527;
                    v212 = v525;
                    goto LABEL_377;
                  }

                  v244 = 0;
                  v214 = v575;
                  while (2)
                  {
                    switch(v588)
                    {
                      case 0x68u:
LABEL_412:
                        v648 = 0u;
                        v649 = 0u;
                        v646 = 0u;
                        v647 = 0u;
                        v261 = [v592 countByEnumeratingWithState:&v646 objects:buf count:16];
                        if (v261)
                        {
                          v597 = *v647;
                          do
                          {
                            for (m = 0; m != v261; ++m)
                            {
                              if (*v647 != v597)
                              {
                                objc_enumerationMutation(v592);
                              }

                              v263 = *(*(&v646 + 1) + 8 * m);
                              memset(v669, 0, sizeof(v669));
                              memset(v670, 0, sizeof(v670));
                              v264 = 0;
                              v265 = [v263 countByEnumeratingWithState:v669 objects:v664 count:16];
                              if (v265)
                              {
                                v266 = **&v669[16];
                                do
                                {
                                  for (n = 0; n != v265; ++n)
                                  {
                                    if (**&v669[16] != v266)
                                    {
                                      objc_enumerationMutation(v263);
                                    }

                                    v268 = v260;
                                    if (*(v260 + 23) < 0)
                                    {
                                      v268 = *v260;
                                    }

                                    v269 = createQueryNode(v268, [*(*&v669[8] + 8 * n) UTF8String], 112, 1, 0, v235, 0.0);
                                    v264 = makeAndNode(v264, v269);
                                    ++v638;
                                  }

                                  v265 = [v263 countByEnumeratingWithState:v669 objects:v664 count:16];
                                }

                                while (v265);
                              }

                              v244 = makeOrNode(v244, v264);
                              v236 = rangeb;
                            }

                            v261 = [v592 countByEnumeratingWithState:&v646 objects:buf count:16];
                          }

                          while (v261);
                        }

                        break;
                      case 0x40u:
                        if ([v592 count])
                        {
                          goto LABEL_412;
                        }

LABEL_440:
                        v276 = v260;
                        if (*(v260 + 23) < 0)
                        {
                          v276 = *v260;
                        }

                        v277 = createQueryNode(v276, v545, 112, 1, 0, v235, 0.0);
                        v244 = makeOrNode(v244, v277);
                        v640 = 0;
                        v639 = 0;
                        v641 = 0;
                        std::string::basic_string[abi:nn200100]<0>(v654, v545);
                        getSynonym(&v639, v654);
                        if (v654[23] < 0)
                        {
                          operator delete(*v654);
                        }

                        v278 = HIBYTE(v641);
                        if (v641 < 0)
                        {
                          v278 = v640;
                        }

                        if (v278)
                        {
                          v279 = v260;
                          if (*(v260 + 23) < 0)
                          {
                            v279 = *v260;
                          }

                          if (v641 >= 0)
                          {
                            v280 = &v639;
                          }

                          else
                          {
                            v280 = v639;
                          }

                          v281 = createQueryNode(v279, v280, 112, 1, 0, v235, 0.0);
                          v244 = makeOrNode(v244, v281);
                          v282 = ++v638;
                          v283 = *__error();
                          v284 = _SILogForLogForCategory(19);
                          if (os_log_type_enabled(v284, OS_LOG_TYPE_DEFAULT))
                          {
                            v285 = &v650;
                            if (v652 < 0)
                            {
                              v285 = v650;
                            }

                            *v654 = 138412802;
                            *&v654[4] = a4;
                            *&v654[12] = 2080;
                            *&v654[14] = v285;
                            *&v654[22] = 2048;
                            v655 = v214;
                            _os_log_impl(&dword_1C278D000, v284, OS_LOG_TYPE_DEFAULT, "%@[%s] {Token Match} Adding synonym for token %lu", v654, 0x20u);
                          }

                          *__error() = v283;
                          v236 = rangeb;
                        }

                        else
                        {
                          v282 = v638;
                        }

                        v638 = v282 + 1;
                        if ([(query_node *)v533 length])
                        {
                          v286 = v260;
                          if (*(v260 + 23) < 0)
                          {
                            v286 = *v260;
                          }

                          v287 = createQueryNode(v286, [(query_node *)v533 UTF8String], 112, 1, 0, v235, 0.0);
                          v244 = makeOrNode(v244, v287);
                          v638 = v282 + 2;
                          v288 = *__error();
                          v289 = _SILogForLogForCategory(20);
                          if (os_log_type_enabled(v289, OS_LOG_TYPE_DEFAULT))
                          {
                            v290 = SHIBYTE(v652);
                            v291 = v650;
                            v692.location = v580;
                            v692.length = v522;
                            v292 = NSStringFromRange(v692);
                            *v654 = 138413570;
                            v293 = &v650;
                            if (v290 < 0)
                            {
                              v293 = v291;
                            }

                            *&v654[4] = a4;
                            *&v654[12] = 2080;
                            *&v654[14] = v293;
                            *&v654[22] = 2112;
                            v655 = v533;
                            v656 = 2048;
                            *v657 = v214;
                            *&v657[8] = 2112;
                            *&v657[10] = v292;
                            v658 = 1024;
                            v659 = v588;
                            _os_log_impl(&dword_1C278D000, v289, OS_LOG_TYPE_DEFAULT, "%@[%s] {Token Match} Added lemma node: %@, for token: %lu, range:%@, type: %d", v654, 0x3Au);
                          }

                          *__error() = v288;
                          v236 = rangeb;
                        }

                        if (SHIBYTE(v641) < 0)
                        {
                          operator delete(v639);
                        }

                        break;
                      case 8u:
                        v644 = 0u;
                        v645 = 0u;
                        *v642 = 0u;
                        v643 = 0u;
                        v270 = 0;
                        v271 = [v562 countByEnumeratingWithState:v642 objects:__p count:16];
                        if (v271)
                        {
                          v272 = *v643;
                          do
                          {
                            for (ii = 0; ii != v271; ++ii)
                            {
                              if (*v643 != v272)
                              {
                                objc_enumerationMutation(v562);
                              }

                              v274 = v260;
                              if (*(v260 + 23) < 0)
                              {
                                v274 = *v260;
                              }

                              v275 = createQueryNode(v274, [*(v642[1] + ii) UTF8String], 112, 1, 0, v235, 0.0);
                              v270 = makeAndNode(v270, v275);
                            }

                            v271 = [v562 countByEnumeratingWithState:v642 objects:__p count:16];
                          }

                          while (v271);
                        }

                        v244 = makeOrNode(v244, v270);
                        v236 = rangeb;
                        break;
                      default:
                        goto LABEL_440;
                    }

                    v260 += 24;
                    v116 = v570;
                    v214 = v575;
                    if (v260 == *v519)
                    {
                      goto LABEL_391;
                    }

                    continue;
                  }
                }

                v214 = v575;
                v221 = *__error();
                v255 = _SILogForLogForCategory(20);
                if (os_log_type_enabled(v255, OS_LOG_TYPE_DEFAULT))
                {
                  v691.length = v219;
                  v256 = SHIBYTE(v652);
                  v257 = v650;
                  v691.location = v218;
                  v258 = NSStringFromRange(v691);
                  *v654 = 138413314;
                  v259 = &v650;
                  if (v256 < 0)
                  {
                    v259 = v257;
                  }

                  *&v654[4] = a4;
                  *&v654[12] = 2080;
                  *&v654[14] = v259;
                  *&v654[22] = 2048;
                  v655 = v575;
                  v656 = 2112;
                  *v657 = v258;
                  *&v657[8] = 1024;
                  *&v657[10] = v588;
                  _os_log_impl(&dword_1C278D000, v255, OS_LOG_TYPE_DEFAULT, "%@[%s] {Token Match} Skipping token: %lu, range:%@ (ERROR: attribute score is 0 for type: %d)", v654, 0x30u);
                }
              }

              else
              {
                v221 = *__error();
                v250 = _SILogForLogForCategory(20);
                if (os_log_type_enabled(v250, OS_LOG_TYPE_DEFAULT))
                {
                  v690.length = v219;
                  v251 = SHIBYTE(v652);
                  v252 = v650;
                  v690.location = v218;
                  v253 = NSStringFromRange(v690);
                  *v654 = 138413314;
                  v254 = &v650;
                  if (v251 < 0)
                  {
                    v254 = v252;
                  }

                  *&v654[4] = a4;
                  *&v654[12] = 2080;
                  *&v654[14] = v254;
                  *&v654[22] = 2048;
                  v655 = v214;
                  v656 = 2112;
                  *v657 = v253;
                  *&v657[8] = 1024;
                  *&v657[10] = v588;
                  _os_log_impl(&dword_1C278D000, v250, OS_LOG_TYPE_DEFAULT, "%@[%s] {Token Match} Skipping token: %lu, range:%@ (Reason: not an important attribute type: %d)", v654, 0x30u);
                }
              }
            }

            else
            {
              v221 = *__error();
              v245 = _SILogForLogForCategory(20);
              if (os_log_type_enabled(v245, OS_LOG_TYPE_DEFAULT))
              {
                v689.length = v219;
                v246 = SHIBYTE(v652);
                v247 = v650;
                v689.location = v218;
                v248 = NSStringFromRange(v689);
                *v654 = 138413058;
                v249 = &v650;
                if (v246 < 0)
                {
                  v249 = v247;
                }

                *&v654[4] = a4;
                *&v654[12] = 2080;
                *&v654[14] = v249;
                *&v654[22] = 2048;
                v655 = v214;
                v656 = 2112;
                *v657 = v248;
                _os_log_impl(&dword_1C278D000, v245, OS_LOG_TYPE_DEFAULT, "%@[%s] {Token Match} Skipping token: %lu, range: %@ (ERROR: UTF8 encoding failed)", v654, 0x2Au);
              }
            }
          }

          else
          {
            v221 = *__error();
            v222 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
            {
              v686.length = v219;
              v223 = SHIBYTE(v652);
              v224 = v650;
              v686.location = v218;
              v225 = NSStringFromRange(v686);
              *v654 = 138413058;
              v226 = &v650;
              if (v223 < 0)
              {
                v226 = v224;
              }

              *&v654[4] = a4;
              *&v654[12] = 2080;
              *&v654[14] = v226;
              *&v654[22] = 2048;
              v655 = v214;
              v656 = 2112;
              *v657 = v225;
              _os_log_impl(&dword_1C278D000, v222, OS_LOG_TYPE_DEFAULT, "%@[%s] {Token Match} Skipping token: %lu, range: %@ (ERROR: empty sub-query after trimming)", v654, 0x2Au);
            }
          }
        }

        *__error() = v221;
LABEL_377:
        if (SHIBYTE(v652) < 0)
        {
          operator delete(v650);
        }

        v214 = (v214 + 1);
        if (v214 >= [v210 count])
        {
          goto LABEL_481;
        }
      }
    }

    rangeb = 0;
LABEL_481:
    v304 = *__error();
    v305 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v305, OS_LOG_TYPE_DEFAULT))
    {
      *v654 = 138412546;
      *&v654[4] = a4;
      *&v654[12] = 1024;
      *&v654[14] = v638;
      _os_log_impl(&dword_1C278D000, v305, OS_LOG_TYPE_DEFAULT, "%@ {Token Match} Added %d nodes", v654, 0x12u);
    }

    *__error() = v304;
    v298 = rangeb;
  }

  else
  {
    v299 = *__error();
    v300 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v300, OS_LOG_TYPE_DEFAULT))
    {
      v301 = [v210 count];
      v302 = [(query_node *)v211 count];
      *buf = 138412802;
      *&buf[4] = a4;
      *&buf[12] = 2048;
      *&buf[14] = v301;
      *&buf[22] = 2048;
      v672 = v302;
      _os_log_impl(&dword_1C278D000, v300, OS_LOG_TYPE_DEFAULT, "%@ {Token Match} Skipping query (ERROR: token count mismatch <%lu,%lu>)", buf, 0x20u);
    }

    v303 = __error();
    v298 = 0;
    *v303 = v299;
  }

LABEL_484:
  result = makeOrNode(v116, v298);
  if ((v549 & 1) == 0)
  {
    goto LABEL_733;
  }

  v526 = result;
  v307 = v625;
  v563 = v624;
  v546 = v622;
  v534 = v621;
  objb = v620;
  v308 = v619;
  if (![(NSString *)v543 length])
  {
    v395 = *__error();
    v396 = _SILogForLogForCategory(20);
    if (!os_log_type_enabled(v396, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_605;
    }

    *buf = 138412290;
    *&buf[4] = a4;
    v397 = "%@ {OCR Match} Skipping query (Reason: empty query)";
LABEL_601:
    v398 = v396;
    v399 = 12;
LABEL_604:
    _os_log_impl(&dword_1C278D000, v398, OS_LOG_TYPE_DEFAULT, v397, buf, v399);
    goto LABEL_605;
  }

  if (![v307 count])
  {
    v395 = *__error();
    v396 = _SILogForLogForCategory(20);
    if (!os_log_type_enabled(v396, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_605;
    }

    *buf = 138412290;
    *&buf[4] = a4;
    v397 = "%@ {OCR Match} Skipping query (Reason: no useful tokens)";
    goto LABEL_601;
  }

  v309 = [v307 count];
  if (v309 != [(query_node *)v563 count])
  {
    v395 = *__error();
    v400 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v400, OS_LOG_TYPE_DEFAULT))
    {
      v401 = [v307 count];
      v402 = [(query_node *)v563 count];
      *buf = 138412802;
      *&buf[4] = a4;
      *&buf[12] = 2048;
      *&buf[14] = v401;
      *&buf[22] = 2048;
      v672 = v402;
      v397 = "%@ {OCR Match} Skipping query (ERROR: token count mismatch <%lu,%lu>)";
      v398 = v400;
      v399 = 32;
      goto LABEL_604;
    }

LABEL_605:
    v531 = 0;
    goto LABEL_606;
  }

  {
    PhOCRRankingAttribs(void)::_OCRRankingAttribs = 0u;
    *algn_1EBF62050 = 0u;
    dword_1EBF62060 = 1065353216;
  }

  if (PhOCRRankingAttribs(void)::onceToken != -1)
  {
    dispatch_once(&PhOCRRankingAttribs(void)::onceToken, &__block_literal_global_178);
  }

  v554 = [(NSString *)v543 length];
  if ([v307 count])
  {
    v531 = 0;
    v310 = 0;
    v311 = 0;
    v312 = 1;
    v558 = v307;
    v566 = v308;
    while (1)
    {
      v581 = v311;
      v313 = [-[query_node objectAtIndexedSubscript:](v563 "objectAtIndexedSubscript:"intValue"")];
      v314 = v313;
      v642[1] = 0;
      v642[0] = 0;
      v315 = "Unknown";
      *&v643 = 0;
      if (v313 <= 0xD2)
      {
        v315 = off_1E8196D10[v313];
      }

      std::string::basic_string[abi:nn200100]<0>(v642, v315);
      v316 = [objc_msgSend(v307 objectAtIndexedSubscript:{v581), "rangeValue"}];
      v589.length = v317;
      v318 = v316;
      if (v316 == 0x7FFFFFFFFFFFFFFFLL || v316 + v317 > v554)
      {
        v320 = *__error();
        v326 = _SILogForLogForCategory(20);
        if (os_log_type_enabled(v326, OS_LOG_TYPE_DEFAULT))
        {
          v327 = SBYTE7(v643);
          v328 = v642[0];
          v694.location = v318;
          v694.length = v589.length;
          v329 = NSStringFromRange(v694);
          *v669 = 138413058;
          v330 = v642;
          if (v327 < 0)
          {
            v330 = v328;
          }

          *&v669[4] = a4;
          *&v669[12] = 2080;
          *&v669[14] = v330;
          *&v669[22] = 2048;
          *&v669[24] = v581;
          LOWORD(v670[0]) = 2112;
          *(v670 + 2) = v329;
          _os_log_impl(&dword_1C278D000, v326, OS_LOG_TYPE_DEFAULT, "%@[%s] {OCR Match} Skipping token: %lu, range: :%@ (ERROR: range is out of bounds)", v669, 0x2Au);
        }
      }

      else
      {
        v589.location = v316;
        v319 = [(NSString *)v543 substringWithRange:v316, v317];
        if ([(NSString *)v319 length])
        {
          v319 = [(NSString *)v319 stringByTrimmingCharactersInSet:a3];
        }

        if ([(NSString *)v319 length]> 1)
        {
          v332 = [(NSString *)v319 UTF8String];
          if (v332)
          {
            if (std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&PhOCRRankingAttribs(void)::_OCRRankingAttribs, v314))
            {
              v333 = [v546 objectAtIndexedSubscript:v581];
              rangec = [objb objectAtIndexedSubscript:v581];
              v334 = [(NSAttributedString *)v534 objectAtIndexedSubscript:v581];
              v598 = *__error();
              v335 = _SILogForLogForCategory(20);
              if (os_log_type_enabled(v335, OS_LOG_TYPE_DEFAULT))
              {
                v336 = v334;
                v337 = v333;
                v338 = v312;
                v339 = SBYTE7(v643);
                v340 = v642[0];
                v341 = NSStringFromRange(v589);
                *v669 = 138413314;
                v342 = v642;
                if (v339 < 0)
                {
                  v342 = v340;
                }

                *&v669[4] = a4;
                *&v669[12] = 2080;
                *&v669[14] = v342;
                *&v669[22] = 2048;
                *&v669[24] = v581;
                LOWORD(v670[0]) = 2112;
                *(v670 + 2) = v341;
                WORD5(v670[0]) = 1024;
                HIDWORD(v670[0]) = v314;
                _os_log_impl(&dword_1C278D000, v335, OS_LOG_TYPE_DEFAULT, "%@[%s] {OCR Match} Adding token: %lu, range:%@, type: %d", v669, 0x30u);
                v312 = v338;
                v333 = v337;
                v334 = v336;
                v307 = v558;
              }

              *__error() = v598;
              if (v312)
              {
                v343 = 50.19;
              }

              else
              {
                v343 = 0.19;
              }

              switch(v314)
              {
                case 104:
LABEL_526:
                  v344 = 0;
                  v345 = 0;
                  v571 = v333;
                  while (v344 < [(query_node *)v333 count])
                  {
                    v599 = v344;
                    v346 = [(query_node *)v333 objectAtIndexedSubscript:v344];
                    v663 = 0u;
                    v662 = 0u;
                    v661 = 0u;
                    *__p = 0u;
                    v347 = [v346 countByEnumeratingWithState:__p objects:buf count:16];
                    if (v347)
                    {
                      v576 = v345;
                      v348 = 0;
                      v349 = *v661;
                      do
                      {
                        for (jj = 0; jj != v347; ++jj)
                        {
                          if (*v661 != v349)
                          {
                            objc_enumerationMutation(v346);
                          }

                          v351 = *(__p[1] + jj);
                          if (v348 || ![rangec count])
                          {
                            v352 = createQueryNode("kMDItemTextContent", [v351 UTF8String], 112, 1, 0, v343, 0.0);
                            v348 = makeAndNode(v348, v352);
                          }

                          else
                          {
                            v353 = createQueryNode("kMDItemTextContent", [v351 UTF8String], 112, 1, 0, v343, 0.0);
                            v354 = createQueryNode("kMDItemTextContent", [objc_msgSend(rangec objectAtIndexedSubscript:{0), "UTF8String"}], 112, 1, 0, v343, 0.0);
                            v348 = makeOrNode(v353, v354);
                            v355 = *__error();
                            v356 = _SILogForLogForCategory(20);
                            if (os_log_type_enabled(v356, OS_LOG_TYPE_DEFAULT))
                            {
                              if ((SBYTE7(v643) & 0x80u) == 0)
                              {
                                v357 = v642;
                              }

                              else
                              {
                                v357 = v642[0];
                              }

                              v358 = NSStringFromRange(v589);
                              v359 = [rangec objectAtIndexedSubscript:0];
                              *v669 = 138413314;
                              *&v669[4] = a4;
                              *&v669[12] = 2080;
                              *&v669[14] = v357;
                              *&v669[22] = 2048;
                              *&v669[24] = v599;
                              LOWORD(v670[0]) = 2112;
                              *(v670 + 2) = v358;
                              WORD5(v670[0]) = 2112;
                              *(v670 + 12) = v359;
                              _os_log_impl(&dword_1C278D000, v356, OS_LOG_TYPE_DEFAULT, "%@[%s] {OCR Match} Adding token: %lu, range:%@, alias name: %@", v669, 0x34u);
                            }

                            ++v310;
                            *__error() = v355;
                          }

                          ++v310;
                          v343 = 0.19;
                        }

                        v347 = [v346 countByEnumeratingWithState:__p objects:buf count:16];
                        v343 = 0.19;
                      }

                      while (v347);
                      v312 = 0;
                      v343 = 0.19;
                      v307 = v558;
                      v345 = v576;
                    }

                    else
                    {
                      v348 = 0;
                    }

                    v345 = makeOrNode(v345, v348);
                    v308 = v566;
                    v360 = *__error();
                    v361 = _SILogForLogForCategory(20);
                    if (os_log_type_enabled(v361, OS_LOG_TYPE_DEFAULT))
                    {
                      if ((SBYTE7(v643) & 0x80u) == 0)
                      {
                        v362 = v642;
                      }

                      else
                      {
                        v362 = v642[0];
                      }

                      v363 = NSStringFromRange(v589);
                      v364 = [v346 componentsJoinedByString:@" "];
                      *v669 = 138413314;
                      *&v669[4] = a4;
                      *&v669[12] = 2080;
                      *&v669[14] = v362;
                      *&v669[22] = 2048;
                      *&v669[24] = v599;
                      LOWORD(v670[0]) = 2112;
                      *(v670 + 2) = v363;
                      WORD5(v670[0]) = 2112;
                      *(v670 + 12) = v364;
                      _os_log_impl(&dword_1C278D000, v361, OS_LOG_TYPE_DEFAULT, "%@[%s] {OCR Match} Adding token: %lu, range:%@, tokenized self name: %@", v669, 0x34u);
                    }

                    *__error() = v360;
                    v344 = v599 + 1;
                    v333 = v571;
                  }

                  break;
                case 64:
                  if ([(query_node *)v333 count])
                  {
                    goto LABEL_526;
                  }

LABEL_571:
                  v379 = createQueryNode("kMDItemTextContent", v332, 112, 1, 0, v343, 0.0);
                  memset(v654, 0, sizeof(v654));
                  std::string::basic_string[abi:nn200100]<0>(v669, v332);
                  getSynonym(v654, v669);
                  if (v669[23] < 0)
                  {
                    operator delete(*v669);
                  }

                  if (v654[23] < 0)
                  {
                    if (*&v654[8])
                    {
                      v380 = *v654;
LABEL_578:
                      v381 = createQueryNode("kMDItemTextContent", v380, 112, 1, 0, v343, 0.0);
                      v379 = makeOrNode(v379, v381);
                      v382 = *__error();
                      v383 = _SILogForLogForCategory(19);
                      if (os_log_type_enabled(v383, OS_LOG_TYPE_DEFAULT))
                      {
                        v384 = v642;
                        if (SBYTE7(v643) < 0)
                        {
                          v384 = v642[0];
                        }

                        *v669 = 138412802;
                        *&v669[4] = a4;
                        *&v669[12] = 2080;
                        *&v669[14] = v384;
                        *&v669[22] = 2048;
                        *&v669[24] = v581;
                        _os_log_impl(&dword_1C278D000, v383, OS_LOG_TYPE_DEFAULT, "%@[%s] {OCR Match} Adding synonym for token %lu", v669, 0x20u);
                      }

                      ++v310;
                      *__error() = v382;
                    }
                  }

                  else if (v654[23])
                  {
                    v380 = v654;
                    goto LABEL_578;
                  }

                  if ([v334 length])
                  {
                    v385 = createQueryNode("kMDItemTextContent", [v334 UTF8String], 112, 1, 0, v343, 0.0);
                    v379 = makeOrNode(v379, v385);
                    v386 = *__error();
                    v387 = _SILogForLogForCategory(20);
                    if (os_log_type_enabled(v387, OS_LOG_TYPE_DEFAULT))
                    {
                      v600 = v386;
                      v388 = v307;
                      v389 = v334;
                      v390 = SBYTE7(v643);
                      v391 = v642[0];
                      v392 = NSStringFromRange(v589);
                      *v669 = 138413570;
                      v393 = v642;
                      if (v390 < 0)
                      {
                        v393 = v391;
                      }

                      *&v669[4] = a4;
                      *&v669[12] = 2080;
                      *&v669[14] = v393;
                      *&v669[22] = 2112;
                      *&v669[24] = v389;
                      LOWORD(v670[0]) = 2048;
                      *(v670 + 2) = v581;
                      WORD5(v670[0]) = 2112;
                      *(v670 + 12) = v392;
                      WORD2(v670[1]) = 1024;
                      *(&v670[1] + 6) = v314;
                      _os_log_impl(&dword_1C278D000, v387, OS_LOG_TYPE_DEFAULT, "%@[%s] {OCR Match} Added lemma node: %@, for token: %lu, range:%@, type: %d", v669, 0x3Au);
                      v307 = v388;
                      v386 = v600;
                    }

                    v310 += 2;
                    *__error() = v386;
                  }

                  else
                  {
                    ++v310;
                  }

                  if (isLLMPersonArgId(v314) && [rangec count])
                  {
                    v394 = createQueryNode("kMDItemTextContent", [objc_msgSend(rangec objectAtIndexedSubscript:{0), "UTF8String"}], 112, 1, 0, v343, 0.0);
                    v345 = makeOrNode(v379, v394);
                  }

                  else
                  {
                    v345 = v379;
                  }

                  if (v654[23] < 0)
                  {
                    operator delete(*v654);
                  }

                  break;
                case 8:
                  v648 = 0u;
                  v649 = 0u;
                  v646 = 0u;
                  v647 = 0u;
                  v345 = 0;
                  v375 = [v308 countByEnumeratingWithState:&v646 objects:v664 count:16];
                  if (v375)
                  {
                    v376 = *v647;
                    do
                    {
                      for (kk = 0; kk != v375; ++kk)
                      {
                        if (*v647 != v376)
                        {
                          objc_enumerationMutation(v308);
                        }

                        v378 = createQueryNode("kMDItemTextContent", [*(*(&v646 + 1) + 8 * kk) UTF8String], 112, 1, 0, v343, 0.0);
                        v345 = makeAndNode(v345, v378);
                      }

                      v375 = [v308 countByEnumeratingWithState:&v646 objects:v664 count:16];
                    }

                    while (v375);
                  }

                  break;
                default:
                  goto LABEL_571;
              }

              v312 &= v345 == 0;
              v531 = makeAndNode(v531, v345);
              goto LABEL_510;
            }

            v320 = *__error();
            v370 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v370, OS_LOG_TYPE_DEFAULT))
            {
              v371 = SBYTE7(v643);
              v372 = v642[0];
              v696.location = v318;
              v696.length = v589.length;
              v373 = NSStringFromRange(v696);
              *v669 = 138413314;
              v374 = v642;
              if (v371 < 0)
              {
                v374 = v372;
              }

              *&v669[4] = a4;
              *&v669[12] = 2080;
              *&v669[14] = v374;
              *&v669[22] = 2048;
              *&v669[24] = v581;
              LOWORD(v670[0]) = 2112;
              *(v670 + 2) = v373;
              WORD5(v670[0]) = 1024;
              HIDWORD(v670[0]) = v314;
              _os_log_impl(&dword_1C278D000, v370, OS_LOG_TYPE_DEFAULT, "%@[%s] {OCR Match} Skipping token: %lu, range:%@ (Reason: not an important attribute type: %d)", v669, 0x30u);
            }
          }

          else
          {
            v320 = *__error();
            v365 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v365, OS_LOG_TYPE_DEFAULT))
            {
              v366 = SBYTE7(v643);
              v367 = v642[0];
              v695.location = v318;
              v695.length = v589.length;
              v368 = NSStringFromRange(v695);
              *v669 = 138413058;
              v369 = v642;
              if (v366 < 0)
              {
                v369 = v367;
              }

              *&v669[4] = a4;
              *&v669[12] = 2080;
              *&v669[14] = v369;
              *&v669[22] = 2048;
              *&v669[24] = v581;
              LOWORD(v670[0]) = 2112;
              *(v670 + 2) = v368;
              _os_log_impl(&dword_1C278D000, v365, OS_LOG_TYPE_DEFAULT, "%@[%s] {OCR Match} Skipping token: %lu, range: %@ (ERROR: UTF8 encoding failed)", v669, 0x2Au);
            }
          }
        }

        else
        {
          v320 = *__error();
          v321 = _SILogForLogForCategory(20);
          if (os_log_type_enabled(v321, OS_LOG_TYPE_DEFAULT))
          {
            v322 = SBYTE7(v643);
            v323 = v642[0];
            v693.location = v318;
            v693.length = v589.length;
            v324 = NSStringFromRange(v693);
            *v669 = 138413058;
            v325 = v642;
            if (v322 < 0)
            {
              v325 = v323;
            }

            *&v669[4] = a4;
            *&v669[12] = 2080;
            *&v669[14] = v325;
            *&v669[22] = 2048;
            *&v669[24] = v581;
            LOWORD(v670[0]) = 2112;
            *(v670 + 2) = v324;
            _os_log_impl(&dword_1C278D000, v321, OS_LOG_TYPE_DEFAULT, "%@[%s] {OCR Match} Skipping token: %lu, range: %@ (ERROR: empty sub-query after trimming)", v669, 0x2Au);
          }
        }
      }

      *__error() = v320;
LABEL_510:
      if (SBYTE7(v643) < 0)
      {
        operator delete(v642[0]);
      }

      v331 = [v307 count];
      v311 = v581 + 1;
      if (v581 + 1 >= v331)
      {
        goto LABEL_737;
      }
    }
  }

  v310 = 0;
  v531 = 0;
LABEL_737:
  v395 = *__error();
  v499 = _SILogForLogForCategory(20);
  if (os_log_type_enabled(v499, OS_LOG_TYPE_DEFAULT))
  {
    *v669 = 138412546;
    *&v669[4] = a4;
    *&v669[12] = 1024;
    *&v669[14] = v310;
    _os_log_impl(&dword_1C278D000, v499, OS_LOG_TYPE_DEFAULT, "%@ {OCR Match} Added %d nodes", v669, 0x12u);
  }

LABEL_606:
  *__error() = v395;
  v403 = v625;
  v535 = v624;
  v516 = v622;
  v512 = v620;
  v514 = v621;
  v547 = v619;
  if (![(NSString *)v543 length])
  {
    v487 = *__error();
    v488 = _SILogForLogForCategory(20);
    if (!os_log_type_enabled(v488, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_731;
    }

    *buf = 138412290;
    *&buf[4] = a4;
    v489 = "%@ {Pre-extraction Match} Skipping query (Reason: empty query)";
LABEL_727:
    v490 = v488;
    v491 = 12;
LABEL_730:
    _os_log_impl(&dword_1C278D000, v490, OS_LOG_TYPE_DEFAULT, v489, buf, v491);
    goto LABEL_731;
  }

  if (![v403 count])
  {
    v487 = *__error();
    v488 = _SILogForLogForCategory(20);
    if (!os_log_type_enabled(v488, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_731;
    }

    *buf = 138412290;
    *&buf[4] = a4;
    v489 = "%@ {Pre-extraction Match} Skipping query (Reason: no useful tokens)";
    goto LABEL_727;
  }

  v404 = [v403 count];
  v523 = v403;
  if (v404 == [(query_node *)v535 count])
  {
    {
      PhPreExtractionMatchLLMRankingAttribs(void)::_phPreExtractionMatchAttribs = 0u;
      unk_1EBF62088 = 0u;
      dword_1EBF62098 = 1065353216;
    }

    if (PhPreExtractionMatchLLMRankingAttribs(void)::onceToken[0] != -1)
    {
      dispatch_once(PhPreExtractionMatchLLMRankingAttribs(void)::onceToken, &__block_literal_global_181);
    }

    *v520 = [(NSString *)v543 length];
    if ([v403 count])
    {
      v528 = 0;
      v405 = 0;
      v406 = 0;
      v407 = 1;
      while (1)
      {
        objc = [-[query_node objectAtIndexedSubscript:](v535 objectAtIndexedSubscript:{v406), "intValue"}];
        v651 = 0;
        v650 = 0;
        v408 = "Unknown";
        v652 = 0;
        if (objc <= 0xD2)
        {
          v408 = off_1E8196D10[objc];
        }

        std::string::basic_string[abi:nn200100]<0>(&v650, v408);
        v409 = [objc_msgSend(v403 objectAtIndexedSubscript:{v406), "rangeValue"}];
        v590 = v410;
        v411 = v409;
        if (v409 == 0x7FFFFFFFFFFFFFFFLL || v409 + v410 > *v520)
        {
          v413 = *__error();
          v419 = _SILogForLogForCategory(20);
          if (os_log_type_enabled(v419, OS_LOG_TYPE_DEFAULT))
          {
            v420 = SHIBYTE(v652);
            v421 = v650;
            v698.location = v411;
            v698.length = v590;
            v422 = NSStringFromRange(v698);
            *v654 = 138413058;
            v423 = &v650;
            if (v420 < 0)
            {
              v423 = v421;
            }

            *&v654[4] = a4;
            *&v654[12] = 2080;
            *&v654[14] = v423;
            *&v654[22] = 2048;
            v655 = v406;
            v656 = 2112;
            *v657 = v422;
            _os_log_impl(&dword_1C278D000, v419, OS_LOG_TYPE_DEFAULT, "%@[%s] {Pre-extraction Match} Skipping token: %lu, range: :%@ (ERROR: range is out of bounds)", v654, 0x2Au);
            v403 = v523;
          }
        }

        else
        {
          v585 = v409;
          v412 = [(NSString *)v543 substringWithRange:v409, v410];
          if ([(NSString *)v412 length])
          {
            v412 = [(NSString *)v412 stringByTrimmingCharactersInSet:a3];
          }

          if ([(NSString *)v412 length]> 1)
          {
            v424 = [(NSString *)v412 UTF8String];
            if (v424)
            {
              __sa = v424;
              v425 = std::__hash_table<std::__hash_value_type<int,std::unordered_set<std::string>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<std::string>>>>::find<int>(PhPreExtractionMatchLLMRankingAttribs(void)::_phPreExtractionMatchAttribs, *(&PhPreExtractionMatchLLMRankingAttribs(void)::_phPreExtractionMatchAttribs + 1), objc);
              v550 = [v516 objectAtIndexedSubscript:v406];
              v509 = [(NSAttributedString *)v514 objectAtIndexedSubscript:v406];
              ranged = [v512 objectAtIndexedSubscript:v406];
              v559 = v425;
              v426 = *__error();
              v427 = _SILogForLogForCategory(20);
              if (os_log_type_enabled(v427, OS_LOG_TYPE_DEFAULT))
              {
                v428 = SHIBYTE(v652);
                v429 = v650;
                v699.location = v411;
                v699.length = v590;
                v430 = NSStringFromRange(v699);
                *v654 = 138413314;
                v431 = &v650;
                if (v428 < 0)
                {
                  v431 = v429;
                }

                *&v654[4] = a4;
                *&v654[12] = 2080;
                *&v654[14] = v431;
                *&v654[22] = 2048;
                v655 = v406;
                v656 = 1024;
                *v657 = objc;
                *&v657[4] = 2112;
                *&v657[6] = v430;
                _os_log_impl(&dword_1C278D000, v427, OS_LOG_TYPE_DEFAULT, "%@[%s] {Pre-extraction Match} Adding token: %lu, type: %d, range:%@", v654, 0x30u);
                v403 = v523;
              }

              *__error() = v426;
              v432 = v559;
              if (!v559 || (v433 = v559[4], v507 = v559[5], v433 == v507))
              {
                v572 = 0;
LABEL_717:
                v407 &= v572 == 0;
                v528 = makeAndNode(v528, v572);
                goto LABEL_631;
              }

              v572 = 0;
              while (2)
              {
                v434 = 60.0;
                if ((v407 & 1) == 0)
                {
                  v434 = 0.0;
                }

                v435 = v433;
                if (*(v433 + 23) < 0)
                {
                  v435 = *v433;
                }

                v593 = v435;
                v436 = v434 + *(v432 + 6);
                v437 = objc;
                v567 = v433;
                switch(objc)
                {
                  case 0x68u:
LABEL_650:
                    v648 = 0u;
                    v649 = 0u;
                    v646 = 0u;
                    v647 = 0u;
                    v438 = [v550 countByEnumeratingWithState:&v646 objects:buf count:16];
                    v439 = v593;
                    if (v438)
                    {
                      v555 = *v647;
                      do
                      {
                        v440 = 0;
                        v564 = v438;
                        do
                        {
                          if (*v647 != v555)
                          {
                            objc_enumerationMutation(v550);
                          }

                          v577 = v440;
                          v441 = *(*(&v646 + 1) + 8 * v440);
                          memset(v669, 0, sizeof(v669));
                          memset(v670, 0, sizeof(v670));
                          v601 = v441;
                          v442 = 0;
                          v443 = [v441 countByEnumeratingWithState:v669 objects:v664 count:16];
                          if (v443)
                          {
                            v444 = **&v669[16];
                            do
                            {
                              for (mm = 0; mm != v443; ++mm)
                              {
                                if (**&v669[16] != v444)
                                {
                                  objc_enumerationMutation(v601);
                                }

                                v446 = *(*&v669[8] + 8 * mm);
                                if (v442 || ![ranged count])
                                {
                                  v447 = createQueryNode(v439, [v446 UTF8String], 112, 1, 0, v436, 0.0);
                                  v442 = makeAndNode(v442, v447);
                                }

                                else
                                {
                                  v448 = createQueryNode(v439, [v446 UTF8String], 112, 1, 0, v436, 0.0);
                                  v449 = createQueryNode(v439, [objc_msgSend(ranged objectAtIndexedSubscript:{0), "UTF8String"}], 112, 1, 0, v436, 0.0);
                                  v442 = makeOrNode(v448, v449);
                                  v450 = *__error();
                                  v451 = _SILogForLogForCategory(20);
                                  if (os_log_type_enabled(v451, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v452 = v406;
                                    if (v652 >= 0)
                                    {
                                      v453 = &v650;
                                    }

                                    else
                                    {
                                      v453 = v650;
                                    }

                                    v700.location = v585;
                                    v700.length = v590;
                                    v454 = NSStringFromRange(v700);
                                    v455 = [ranged objectAtIndexedSubscript:0];
                                    *v654 = 138413314;
                                    *&v654[4] = a4;
                                    *&v654[12] = 2080;
                                    *&v654[14] = v453;
                                    *&v654[22] = 2048;
                                    v406 = v452;
                                    v655 = v452;
                                    v656 = 2112;
                                    *v657 = v454;
                                    *&v657[8] = 2112;
                                    *&v657[10] = v455;
                                    _os_log_impl(&dword_1C278D000, v451, OS_LOG_TYPE_DEFAULT, "%@[%s] {Pre-extraction Match} Adding token: %lu, range:%@, alias name: %@", v654, 0x34u);
                                    v439 = v593;
                                  }

                                  ++v405;
                                  *__error() = v450;
                                }

                                ++v405;
                                v436 = 0.19;
                              }

                              v443 = [v601 countByEnumeratingWithState:v669 objects:v664 count:16];
                              v436 = 0.19;
                            }

                            while (v443);
                            v407 = 0;
                            v436 = 0.19;
                            v433 = v567;
                          }

                          v572 = makeOrNode(v572, v442);
                          v456 = v577;
                          v457 = *__error();
                          v458 = _SILogForLogForCategory(20);
                          if (os_log_type_enabled(v458, OS_LOG_TYPE_DEFAULT))
                          {
                            if (v652 >= 0)
                            {
                              v459 = &v650;
                            }

                            else
                            {
                              v459 = v650;
                            }

                            v701.location = v585;
                            v701.length = v590;
                            v460 = NSStringFromRange(v701);
                            v461 = [v601 componentsJoinedByString:@" "];
                            *v654 = 138413314;
                            *&v654[4] = a4;
                            *&v654[12] = 2080;
                            *&v654[14] = v459;
                            *&v654[22] = 2048;
                            v655 = v406;
                            v656 = 2112;
                            *v657 = v460;
                            *&v657[8] = 2112;
                            *&v657[10] = v461;
                            _os_log_impl(&dword_1C278D000, v458, OS_LOG_TYPE_DEFAULT, "%@[%s] {Pre-extraction Match} Adding token: %lu, range:%@, tokenized self name: %@", v654, 0x34u);
                            v433 = v567;
                            v456 = v577;
                          }

                          *__error() = v457;
                          v440 = (&v456->var0 + 1);
                          v432 = v559;
                        }

                        while (v440 != v564);
                        v438 = [v550 countByEnumeratingWithState:&v646 objects:buf count:16];
                      }

                      while (v438);
                    }

                    break;
                  case 0x40u:
                    if ([v550 count])
                    {
                      goto LABEL_650;
                    }

LABEL_689:
                    v467 = createQueryNode(v593, __sa, 112, 1, 0, v436, 0.0);
                    v572 = makeOrNode(v572, v467);
                    v640 = 0;
                    v639 = 0;
                    v641 = 0;
                    std::string::basic_string[abi:nn200100]<0>(v654, __sa);
                    getSynonym(&v639, v654);
                    v432 = v559;
                    if (v654[23] < 0)
                    {
                      operator delete(*v654);
                    }

                    v468 = HIBYTE(v641);
                    if (v641 < 0)
                    {
                      v468 = v640;
                    }

                    if (v468)
                    {
                      v469 = *__error();
                      v470 = _SILogForLogForCategory(19);
                      if (os_log_type_enabled(v470, OS_LOG_TYPE_DEFAULT))
                      {
                        v471 = &v650;
                        if (v652 < 0)
                        {
                          v471 = v650;
                        }

                        *v654 = 138412802;
                        *&v654[4] = a4;
                        *&v654[12] = 2080;
                        *&v654[14] = v471;
                        *&v654[22] = 2048;
                        v655 = v406;
                        _os_log_impl(&dword_1C278D000, v470, OS_LOG_TYPE_DEFAULT, "%@[%s] {Pre-extraction Match} Added a synonym for token %ld", v654, 0x20u);
                      }

                      *__error() = v469;
                      if (v641 >= 0)
                      {
                        v472 = &v639;
                      }

                      else
                      {
                        v472 = v639;
                      }

                      v473 = createQueryNode(v593, v472, 112, 1, 0, v436, 0.0);
                      v572 = makeOrNode(v572, v473);
                      v432 = v559;
                    }

                    if ([(query_node *)v509 length])
                    {
                      v474 = createQueryNode(v593, [(query_node *)v509 UTF8String], 112, 1, 0, v436, 0.0);
                      v572 = makeOrNode(v572, v474);
                      v475 = *__error();
                      v476 = _SILogForLogForCategory(20);
                      if (os_log_type_enabled(v476, OS_LOG_TYPE_DEFAULT))
                      {
                        v477 = SHIBYTE(v652);
                        v478 = v650;
                        v702.location = v585;
                        v702.length = v590;
                        v479 = NSStringFromRange(v702);
                        *v654 = 138413570;
                        v480 = &v650;
                        if (v477 < 0)
                        {
                          v480 = v478;
                        }

                        *&v654[4] = a4;
                        *&v654[12] = 2080;
                        *&v654[14] = v480;
                        *&v654[22] = 2112;
                        v655 = v509;
                        v656 = 2048;
                        *v657 = v406;
                        *&v657[8] = 2112;
                        *&v657[10] = v479;
                        v658 = 1024;
                        v437 = objc;
                        v659 = objc;
                        _os_log_impl(&dword_1C278D000, v476, OS_LOG_TYPE_DEFAULT, "%@[%s] {Pre-extraction Match} Added lemma node: %@, for token: %lu, range:%@, type: %d", v654, 0x3Au);
                        v433 = v567;
                      }

                      v405 += 2;
                      *__error() = v475;
                      v432 = v559;
                    }

                    else
                    {
                      ++v405;
                    }

                    if (isLLMPersonArgId(v437) && [ranged count])
                    {
                      v481 = createQueryNode(v593, [objc_msgSend(ranged objectAtIndexedSubscript:{0), "UTF8String"}], 112, 1, 0, v436, 0.0);
                      v572 = makeOrNode(v572, v481);
                    }

                    if (SHIBYTE(v641) < 0)
                    {
                      operator delete(v639);
                    }

                    break;
                  case 8u:
                    v644 = 0u;
                    v645 = 0u;
                    *v642 = 0u;
                    v643 = 0u;
                    v462 = 0;
                    v463 = [v547 countByEnumeratingWithState:v642 objects:__p count:16];
                    if (v463)
                    {
                      v464 = *v643;
                      do
                      {
                        for (nn = 0; nn != v463; ++nn)
                        {
                          if (*v643 != v464)
                          {
                            objc_enumerationMutation(v547);
                          }

                          v466 = createQueryNode(v593, [*(v642[1] + nn) UTF8String], 112, 1, 0, v436, 0.0);
                          v462 = makeAndNode(v462, v466);
                        }

                        v463 = [v547 countByEnumeratingWithState:v642 objects:__p count:16];
                      }

                      while (v463);
                    }

                    v572 = makeOrNode(v572, v462);
                    v432 = v559;
                    v433 = v567;
                    break;
                  default:
                    goto LABEL_689;
                }

                v433 += 24;
                v403 = v523;
                if (v433 == v507)
                {
                  goto LABEL_717;
                }

                continue;
              }
            }

            v413 = *__error();
            v482 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v482, OS_LOG_TYPE_DEFAULT))
            {
              v483 = SHIBYTE(v652);
              v484 = v650;
              v703.location = v411;
              v703.length = v590;
              v485 = NSStringFromRange(v703);
              *v654 = 138413058;
              v486 = &v650;
              if (v483 < 0)
              {
                v486 = v484;
              }

              *&v654[4] = a4;
              *&v654[12] = 2080;
              *&v654[14] = v486;
              *&v654[22] = 2048;
              v655 = v406;
              v656 = 2112;
              *v657 = v485;
              _os_log_impl(&dword_1C278D000, v482, OS_LOG_TYPE_DEFAULT, "%@[%s] {Pre-extraction Match} Skipping token: %lu, range: %@ (ERROR: UTF8 encoding failed)", v654, 0x2Au);
              v403 = v523;
            }
          }

          else
          {
            v413 = *__error();
            v414 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v414, OS_LOG_TYPE_DEFAULT))
            {
              v415 = SHIBYTE(v652);
              v416 = v650;
              v697.location = v411;
              v697.length = v590;
              v417 = NSStringFromRange(v697);
              *v654 = 138413058;
              v418 = &v650;
              if (v415 < 0)
              {
                v418 = v416;
              }

              *&v654[4] = a4;
              *&v654[12] = 2080;
              *&v654[14] = v418;
              *&v654[22] = 2048;
              v655 = v406;
              v656 = 2112;
              *v657 = v417;
              _os_log_impl(&dword_1C278D000, v414, OS_LOG_TYPE_DEFAULT, "%@[%s] {Pre-extraction Match} Skipping token: %lu, range: %@ (ERROR: empty sub-query after trimming)", v654, 0x2Au);
              v403 = v523;
            }
          }
        }

        *__error() = v413;
LABEL_631:
        if (SHIBYTE(v652) < 0)
        {
          operator delete(v650);
        }

        v406 = (v406 + 1);
        if (v406 >= [v403 count])
        {
          goto LABEL_740;
        }
      }
    }

    v405 = 0;
    v528 = 0;
LABEL_740:
    v487 = *__error();
    v500 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v500, OS_LOG_TYPE_DEFAULT))
    {
      *v654 = 138412546;
      *&v654[4] = a4;
      *&v654[12] = 1024;
      *&v654[14] = v405;
      _os_log_impl(&dword_1C278D000, v500, OS_LOG_TYPE_DEFAULT, "%@ {Pre-extraction Match} Added %d nodes", v654, 0x12u);
    }

    goto LABEL_732;
  }

  v487 = *__error();
  v492 = _SILogForLogForCategory(20);
  if (os_log_type_enabled(v492, OS_LOG_TYPE_DEFAULT))
  {
    v493 = [v523 count];
    v494 = [(query_node *)v535 count];
    *buf = 138412802;
    *&buf[4] = a4;
    *&buf[12] = 2048;
    *&buf[14] = v493;
    *&buf[22] = 2048;
    v672 = v494;
    v489 = "%@ {Pre-extraction Match} Skipping query (ERROR: token count mismatch <%lu,%lu>)";
    v490 = v492;
    v491 = 32;
    goto LABEL_730;
  }

LABEL_731:
  v528 = 0;
LABEL_732:
  *__error() = v487;
  v495 = makeOrNode(v531, v528);
  result = makeOrNode(v526, v495);
LABEL_733:
  if (result)
  {
    v496 = result;
    v497 = PhRankingBoostTree();
    result = makeAndNode(v496, v497);
  }

  v498 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C2A29184(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x5E0], 8);
  if (SLOBYTE(STACK[0x4B7]) < 0)
  {
    operator delete(STACK[0x4A0]);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZL28PhPopulateAllFilterFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueES9_S9_S9__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 count];
  if (result)
  {
    if ([a2 objectForKeyedSubscript:@"kQPFavoritedAction"])
    {
      v9 = 32;
    }

    else if ([a2 objectForKeyedSubscript:@"kQPMedia"] || objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPKind"))
    {
      v9 = 40;
    }

    else if ([a2 objectForKeyedSubscript:@"kQPTaggedPerson"] || objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPGroundedPerson"))
    {
      v9 = 48;
    }

    else
    {
      result = [a2 objectForKeyedSubscript:@"kQPDate"];
      if (!result)
      {
        return result;
      }

      result = [a2 objectForKeyedSubscript:@"kQPDescription"];
      if (!result)
      {
        return result;
      }

      [*(a1 + 56) addObject:{objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPDescription"}];
      v9 = 64;
    }

    v10 = *(a1 + v9);
    v11 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];

    return [v10 addObject:v11];
  }

  return result;
}

void PhExactMatchRankingAttribs(void)
{
  {
    PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs = 0u;
    *&qword_1EBF483C0 = 0u;
    dword_1EBF483D0 = 1065353216;
  }

  if (PhExactMatchRankingAttribs(void)::onceToken != -1)
  {

    dispatch_once(&PhExactMatchRankingAttribs(void)::onceToken, &__block_literal_global_165);
  }
}

void *PhRankingTreeFromStr(char *a1, float a2, int *a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  query_node_with_ann = db_make_query_node_with_ann(a1, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZL20PhRankingTreeFromStrPKcfPi_block_invoke;
  v7[3] = &unk_1E8199740;
  v8 = a2;
  v7[4] = &v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = __db_query_tree_apply_block_block_invoke;
  v13[3] = &unk_1E8198ED0;
  v13[4] = v7;
  db_query_tree_apply_block_with_meta(query_node_with_ann, v13, 0);
  *a3 += *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return query_node_with_ann;
}

BOOL _containsOnlyCharsInCharset(NSString *a1, NSCharacterSet *a2)
{
  if (![(NSString *)a1 length])
  {
    return 1;
  }

  v4 = 0;
  do
  {
    v5 = [(NSCharacterSet *)a2 characterIsMember:[(NSString *)a1 characterAtIndex:v4]];
    if (!v5)
    {
      break;
    }

    ++v4;
  }

  while (v4 < [(NSString *)a1 length]);
  return v5;
}

_BYTE *getSynonym(_BYTE *a1, uint64_t *a2)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v2 = *(a2 + 23);
    if (v2 != 3)
    {
      if (v2 != 7)
      {
        if (v2 != 8)
        {
          goto LABEL_35;
        }

        goto LABEL_10;
      }

      if (*a2 != 1684301175 || *(a2 + 3) != 1735289188)
      {
        goto LABEL_35;
      }

LABEL_30:
      v4 = "marriage";
      return std::string::basic_string[abi:nn200100]<0>(a1, v4);
    }

    if (*a2 != 29555 || *(a2 + 2) != 110)
    {
      goto LABEL_35;
    }

LABEL_36:
    v4 = "social security";
    return std::string::basic_string[abi:nn200100]<0>(a1, v4);
  }

  v3 = a2[1];
  if (v3 == 3)
  {
    if (**a2 != 29555 || *(*a2 + 2) != 110)
    {
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v3 == 7)
  {
    if (**a2 != 1684301175 || *(*a2 + 3) != 1735289188)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  if (v3 != 8)
  {
LABEL_35:
    v4 = "";
    return std::string::basic_string[abi:nn200100]<0>(a1, v4);
  }

  a2 = *a2;
LABEL_10:
  if (*a2 != 0x656761697272616DLL)
  {
    goto LABEL_35;
  }

  v4 = "wedding";
  return std::string::basic_string[abi:nn200100]<0>(a1, v4);
}

query_node *PhImpAttributesPrefixRankingNode(char *__s)
{
  QueryNode = createQueryNode("kMDItemPhotosPeopleNames", __s, 112, 1, -1, 0.17, 0.0);
  v3 = createQueryNode("kMDItemPhotosPeopleNamesAlternatives", __s, 112, 1, -1, 0.17, 0.0);
  v4 = createQueryNode("kMDItemPhotosSceneClassificationLabels", __s, 112, 1, -1, 0.16, 0.0);
  v5 = createQueryNode("kMDItemPhotosSceneClassificationSynonyms", __s, 112, 1, -1, 0.16, 0.0);
  v6 = createQueryNode("kMDItemPhotosLocationKeywords", __s, 112, 1, -1, 0.14, 0.0);
  v7 = makeOrNode(QueryNode, v3);
  v8 = makeOrNode(v4, v5);
  v9 = makeOrNode(v7, v8);

  return makeOrNode(v6, v9);
}

query_node *PhImpAttributesRankingNode(char *__s)
{
  QueryNode = createQueryNode("kMDItemPhotosPeopleNames", __s, 112, 1, 0, 0.17, 0.0);
  v3 = createQueryNode("kMDItemPhotosPeopleNamesAlternatives", __s, 112, 1, 0, 0.17, 0.0);
  v4 = makeOrNode(QueryNode, v3);
  v5 = createQueryNode("kMDItemPhotosSceneClassificationLabels", __s, 112, 1, 0, 0.16, 0.0);
  v6 = createQueryNode("kMDItemPhotosSceneClassificationSynonyms", __s, 112, 1, 0, 0.16, 0.0);
  v7 = makeOrNode(v5, v6);
  v8 = createQueryNode("kMDItemPhotosLocationKeywords", __s, 112, 1, 0, 0.14, 0.0);
  v9 = makeOrNode(v7, v8);

  return makeOrNode(v4, v9);
}

query_node *PhRankingBoostTree(void)
{
  QueryNode = createQueryNode("kMDItemPhotosFavorited", "1", 0, 4, 0, 1.13, 1.0);
  if (CurrentYear(void)::onceToken != -1)
  {
    dispatch_once(&CurrentYear(void)::onceToken, &__block_literal_global_218);
  }

  v1 = createQueryNode("_kMDItemContentCreationDateYear", CurrentYear(void)::currYear, 0, 4, 0, 1.1, 1.0);
  if (PhThreeYearAgo(void)::onceToken != -1)
  {
    dispatch_once(&PhThreeYearAgo(void)::onceToken, &__block_literal_global_223);
  }

  v2 = createQueryNode("_kMDItemContentCreationDateYear", PhThreeYearAgo(void)::oldYear, 0, 4, 0, 1.05, 1.0);
  v3 = makeOrNode(v1, v2);
  v4 = createQueryNode("kMDItemAestheticScore", "0.5", 0, 4, 0, 1.05, 1.0);
  v5 = createQueryNode("kMDItemAestheticScore", "0.2", 0, 4, 0, 1.02, 1.0);
  v6 = makeOrNode(v4, v5);
  v7 = createQueryNode("kMDItemCurationScore", "0.7", 0, 4, 0, 1.07, 1.0);
  v8 = createQueryNode("kMDItemCurationScore", "0.4", 0, 4, 0, 1.04, 1.0);
  v9 = makeOrNode(v7, v8);
  v10 = makeAndNode(QueryNode, v3);
  v11 = makeAndNode(v6, v9);

  return makeAndNode(v10, v11);
}

uint64_t ___ZL20PhotosLLMRankingTreePK10__CFStringPK20__CFAttributedStringPK14__CFDictionaryP9PRContext_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      *(v2 + 52) = *(a1 + 32);
    }
  }

  return a2;
}

void *PhotosLLMRetrievalTree(const __CFString *a1, const __CFAttributedString *a2, const __CFDictionary *a3, PRContext *a4)
{
  v232 = *MEMORY[0x1E69E9840];
  v199 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[qid=%llu][%s][POMMES][LLM][Ph]", a4->var0, a4->var1];
  var23 = a4->var23;
  if (var23)
  {
    Value = CFDictionaryGetValue(a4->var23, @"disableMetadataSearch");
    valuePtr[0] = 0;
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt8Type, valuePtr);
      HIDWORD(v198) = valuePtr[0];
    }

    else
    {
      HIDWORD(v198) = 0;
    }

    v11 = CFDictionaryGetValue(var23, @"disableSemanticSearch");
    valuePtr[0] = 0;
    if (v11)
    {
      CFNumberGetValue(v11, kCFNumberSInt8Type, valuePtr);
      v196 = valuePtr[0];
    }

    else
    {
      v196 = 0;
    }

    v12 = CFDictionaryGetValue(var23, @"disableU2");
    valuePtr[0] = 0;
    if (v12)
    {
      CFNumberGetValue(v12, kCFNumberSInt8Type, valuePtr);
      LODWORD(v198) = valuePtr[0];
    }

    else
    {
      LODWORD(v198) = 0;
    }

    v13 = CFDictionaryGetValue(var23, @"maxANNResultCount");
    v10 = 1000;
    *valuePtr = 1000;
    if (v13)
    {
      CFNumberGetValue(v13, kCFNumberIntType, valuePtr);
      v10 = *valuePtr;
    }
  }

  else
  {
    v198 = 0;
    v196 = 0;
    v10 = 1000;
  }

  v192 = v10;
  v214 = 0;
  v215 = 0;
  v14 = [MEMORY[0x1E695DF70] array];
  v15 = [MEMORY[0x1E695DF70] array];
  theDict = a3;
  if (a2 && CFAttributedStringGetLength(a2) >= 1)
  {
    PhPopulateFiltersFromQuery(a2, &v215, &v214, v14, v15, 0, v199, (*(a4 + 7) >> 9) & 1);
  }

  v212 = 0;
  v213 = 0;
  v211 = 0;
  v210 = 0;
  if (v198 & HIDWORD(v198))
  {
    v16 = *__error();
    v17 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 138412290;
      *&valuePtr[4] = v199;
      _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "%@ Skipping aNN filters and metadata nodes (Reason: U2 and metadata search are disabled)", valuePtr, 0xCu);
    }

    *__error() = v16;
    goto LABEL_148;
  }

  if (isValidQueryUnderstanding(a3))
  {
    PhPopulateNodesFromLLMParse(a3, v14, v15, v196 & 1, &v212, &v213, &v211, &v210, v199);
    goto LABEL_144;
  }

  if (a3 && CFDictionaryContainsKey(a3, @"attributedParses") && (v18 = CFDictionaryGetValue(a3, @"attributedParses"), [v18 count]))
  {
    v19 = [v18 objectAtIndexedSubscript:0];
  }

  else
  {
    v19 = 0;
  }

  v20 = *__error();
  v21 = _SILogForLogForCategory(19);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *valuePtr = 138412290;
    *&valuePtr[4] = v199;
    _os_log_impl(&dword_1C278D000, v21, OS_LOG_TYPE_DEFAULT, "%@ {QP} Using rule-based parse for creating ann filter and unigram node (U2 parse missing)", valuePtr, 0xCu);
  }

  *__error() = v20;
  v205 = [MEMORY[0x1E695DF70] array];
  v208 = [MEMORY[0x1E695DF70] array];
  v191 = [MEMORY[0x1E695DF70] array];
  v202 = [MEMORY[0x1E695DF70] array];
  v206 = [MEMORY[0x1E695DF70] array];
  v22 = [v19 length];
  *valuePtr = MEMORY[0x1E69E9820];
  *&valuePtr[8] = 3221225472;
  *&valuePtr[16] = ___ZL28PhPopulateAllFilterFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueES9_S9_S9__block_invoke;
  *&valuePtr[24] = &unk_1E8199768;
  *&valuePtr[32] = v191;
  *&valuePtr[40] = v202;
  *&valuePtr[48] = v206;
  *&valuePtr[56] = v205;
  v231 = v208;
  [v19 enumerateAttributesInRange:0 options:v22 usingBlock:{0, valuePtr}];
  if ([v208 count] || objc_msgSend(v191, "count") || objc_msgSend(v206, "count") || objc_msgSend(v202, "count"))
  {
    v23 = *__error();
    v24 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v208 count];
      v26 = [v191 count];
      v27 = [v206 count];
      v28 = [v202 count];
      *valuePtr = 138413314;
      *&valuePtr[4] = v199;
      *&valuePtr[12] = 2048;
      *&valuePtr[14] = v25;
      *&valuePtr[22] = 2048;
      *&valuePtr[24] = v26;
      *&valuePtr[32] = 2048;
      *&valuePtr[34] = v27;
      *&valuePtr[42] = 2048;
      *&valuePtr[44] = v28;
      _os_log_impl(&dword_1C278D000, v24, OS_LOG_TYPE_DEFAULT, "%@ {QP} Populated filters: time = %lu, fav = %lu, person = %lu, mediatype = %lu", valuePtr, 0x34u);
    }

    *__error() = v23;
  }

  v204 = [MEMORY[0x1E695DF90] dictionary];
  PhRetrievalAttribs();
  QueryTokens = CreateQueryTokens(a1, 1);
  if (QueryTokens)
  {
    v189 = QueryTokens;
    v30 = *QueryTokens;
    if (v30)
    {
      Count = CFArrayGetCount(v30);
      obj = Count;
      if (Count)
      {
        theArray = *v189;
        v194 = v189[2];
        v195 = v189[1];
        v211 = Count;
        v188 = Count - 1;
        if (Count >= 1)
        {
          v32 = 0;
          while (1)
          {
            RangeAtIndex = getRangeAtIndex(v195, v194, v32);
            v35 = v34;
            if (RangeAtIndex == -1)
            {
              break;
            }

            v36 = RangeAtIndex;
            if ([v14 count])
            {
              v37 = 0;
              while (1)
              {
                v239.location = [objc_msgSend(v14 objectAtIndexedSubscript:{v37), "rangeValue"}];
                v239.length = v38;
                v233.location = v36;
                v233.length = v35;
                if (NSIntersectionRange(v233, v239).length)
                {
                  break;
                }

                if (++v37 >= [v14 count])
                {
                  goto LABEL_47;
                }
              }

              v44 = *__error();
              v45 = _SILogForLogForCategory(19);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                *valuePtr = 138412546;
                *&valuePtr[4] = v199;
                *&valuePtr[12] = 2048;
                *&valuePtr[14] = v32;
                _os_log_impl(&dword_1C278D000, v45, OS_LOG_TYPE_DEFAULT, "%@ {QP} Skipping token %lu (REASON: Its a filter token)", valuePtr, 0x16u);
              }

              *__error() = v44;
              if ([v15 count])
              {
                v46 = 0;
                do
                {
                  v240.location = [objc_msgSend(v15 objectAtIndexedSubscript:{v46), "rangeValue"}];
                  v240.length = v47;
                  v234.location = v36;
                  v234.length = v35;
                  if (NSIntersectionRange(v234, v240).length)
                  {
                    goto LABEL_65;
                  }
                }

                while (++v46 < [v15 count]);
              }
            }

            else
            {
LABEL_47:
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, v32);
              if (!CFStringGetLength(ValueAtIndex))
              {
                v42 = *__error();
                v48 = _SILogForLogForCategory(19);
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                {
                  *valuePtr = 138412546;
                  *&valuePtr[4] = v199;
                  *&valuePtr[12] = 2048;
                  *&valuePtr[14] = v32;
                  _os_log_impl(&dword_1C278D000, v48, OS_LOG_TYPE_DEFAULT, "%@ {QP} Skipping token %lu (Reason: Its zero-length)", valuePtr, 0x16u);
                }

LABEL_64:
                *__error() = v42;
                goto LABEL_65;
              }

              if (!hasOnlySpecialChar(ValueAtIndex))
              {
                if (isOptionalToken(ValueAtIndex, v32 == v188) && (--v211, v32 != v188))
                {
                  v42 = *__error();
                  v56 = _SILogForLogForCategory(19);
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                  {
                    *valuePtr = 138412546;
                    *&valuePtr[4] = v199;
                    *&valuePtr[12] = 2048;
                    *&valuePtr[14] = v32;
                    _os_log_impl(&dword_1C278D000, v56, OS_LOG_TYPE_DEFAULT, "%@ {QP} Skipping token %lu (Reason: It is optional)", valuePtr, 0x16u);
                  }
                }

                else
                {
                  if ([v208 count])
                  {
                    v49 = 0;
                    while (1)
                    {
                      v241.location = [objc_msgSend(v208 objectAtIndexedSubscript:{v49), "rangeValue"}];
                      v241.length = v50;
                      v235.location = v36;
                      v235.length = v35;
                      if (NSIntersectionRange(v235, v241).length)
                      {
                        break;
                      }

                      if (++v49 >= [v208 count])
                      {
                        goto LABEL_73;
                      }
                    }

                    v57 = *__error();
                    v58 = _SILogForLogForCategory(19);
                    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                    {
                      *valuePtr = 138412546;
                      *&valuePtr[4] = v199;
                      *&valuePtr[12] = 2048;
                      *&valuePtr[14] = v32;
                      _os_log_impl(&dword_1C278D000, v58, OS_LOG_TYPE_DEFAULT, "%@ {QP} Token %lu has a date parse, will process it after all tokens are processed", valuePtr, 0x16u);
                    }

                    *__error() = v57;
                    if ([v204 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLong:", v49)}])
                    {
                      [objc_msgSend(v204 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLong:", v49)), "addObject:", ValueAtIndex}];
                    }

                    else
                    {
                      v69 = [MEMORY[0x1E695DF70] arrayWithObject:ValueAtIndex];
                      [v204 setObject:v69 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLong:", v49)}];
                    }

                    goto LABEL_65;
                  }

LABEL_73:
                  v51 = [(__CFString *)ValueAtIndex UTF8String];
                  if (v51)
                  {
                    __s = v51;
                    v52 = qword_1EBF484B0;
                    if (qword_1EBF484B0)
                    {
                      v53 = 0;
                      do
                      {
                        v54 = (v52 + 16);
                        if (*(v52 + 39) < 0)
                        {
                          v54 = *v54;
                        }

                        QueryNode = createQueryNode(v54, __s, 112, 1, 0, 0.0, 0.0);
                        v53 = makeOrNode(v53, QueryNode);
                        v52 = *v52;
                      }

                      while (v52);
                    }

                    else
                    {
                      v53 = 0;
                    }

                    memset(valuePtr, 0, 24);
                    std::string::basic_string[abi:nn200100]<0>(buf, __s);
                    getSynonym(valuePtr, buf);
                    v60 = v191;
                    if (v229 < 0)
                    {
                      operator delete(*buf);
                    }

                    v61 = valuePtr[23];
                    if (valuePtr[23] < 0)
                    {
                      v61 = *&valuePtr[8];
                    }

                    if (v61)
                    {
                      v62 = *__error();
                      v63 = _SILogForLogForCategory(19);
                      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412546;
                        *&buf[4] = v199;
                        v227 = 2048;
                        v228 = v32;
                        _os_log_impl(&dword_1C278D000, v63, OS_LOG_TYPE_DEFAULT, "%@ {QP} Adding synonym for token %lu", buf, 0x16u);
                      }

                      *__error() = v62;
                      if (valuePtr[23] >= 0)
                      {
                        v64 = valuePtr;
                      }

                      else
                      {
                        v64 = *valuePtr;
                      }

                      v65 = qword_1EBF484B0;
                      if (qword_1EBF484B0)
                      {
                        v66 = 0;
                        do
                        {
                          v67 = (v65 + 16);
                          if (*(v65 + 39) < 0)
                          {
                            v67 = *v67;
                          }

                          v68 = createQueryNode(v67, v64, 112, 1, 0, 0.0, 0.0);
                          v66 = makeOrNode(v66, v68);
                          v65 = *v65;
                        }

                        while (v65);
                      }

                      else
                      {
                        v66 = 0;
                      }

                      v53 = makeOrNode(v53, v66);
                      v60 = v191;
                    }

                    if ([v60 count])
                    {
                      v70 = 0;
                      while (1)
                      {
                        v242.location = [objc_msgSend(v60 objectAtIndexedSubscript:{v70), "rangeValue"}];
                        v242.length = v71;
                        v236.location = v36;
                        v236.length = v35;
                        if (NSIntersectionRange(v236, v242).length)
                        {
                          break;
                        }

                        if (++v70 >= [v60 count])
                        {
                          goto LABEL_114;
                        }
                      }

                      v72 = createQueryNode("kMDItemPhotosFavorited", "1", 0, 1, 0, 0.0, 0.0);
                      v73 = createQueryNode("kMDItemPhotosFavorited", "1", 0, 1, 0, 0.0, 0.0);
                      v53 = makeOrNode(v53, v73);
                    }

                    else
                    {
LABEL_114:
                      v72 = 0;
                    }

                    if ([v202 count])
                    {
                      v74 = v72;
                      v75 = 0;
                      do
                      {
                        v243.location = [objc_msgSend(v202 objectAtIndexedSubscript:{v75), "rangeValue"}];
                        v243.length = v76;
                        v237.location = v36;
                        v237.length = v35;
                        if (NSIntersectionRange(v237, v243).length)
                        {
                          goto LABEL_121;
                        }

                        ++v75;
                      }

                      while (v75 < [v202 count]);
                      v75 = -1;
LABEL_121:
                      v77 = v75 == -1;
                      v72 = v74;
                    }

                    else
                    {
                      v77 = 1;
                    }

                    if ([v206 count])
                    {
                      v187 = v72;
                      v78 = 0;
                      do
                      {
                        v244.location = [objc_msgSend(v206 objectAtIndexedSubscript:{v78), "rangeValue"}];
                        v244.length = v79;
                        v238.location = v36;
                        v238.length = v35;
                        if (NSIntersectionRange(v238, v244).length)
                        {
                          goto LABEL_128;
                        }

                        ++v78;
                      }

                      while (v78 < [v206 count]);
                      v78 = -1;
LABEL_128:
                      v80 = v78 == -1;
                      v72 = v187;
                      if (v77)
                      {
LABEL_129:
                        v81 = __s;
LABEL_132:
                        if (!v80)
                        {
                          v83 = createQueryNode("kMDItemPhotosPeopleNames", v81, 112, 1, -1, 0.0, 0.0);
                          v72 = makeOrNode(v72, v83);
                        }

                        if (v72)
                        {
                          --v211;
                        }

                        v212 = makeAndNode(v212, v72);
                        v213 = makeAndNode(v213, v53);
                        if ((valuePtr[23] & 0x80000000) != 0)
                        {
                          operator delete(*valuePtr);
                        }

                        goto LABEL_65;
                      }
                    }

                    else
                    {
                      v80 = 1;
                      if (v77)
                      {
                        goto LABEL_129;
                      }
                    }

                    v81 = __s;
                    v82 = createQueryNode("kMDItemPhotosMediaTypes", __s, 112, 1, -1, 0.0, 0.0);
                    v72 = makeOrNode(v72, v82);
                    goto LABEL_132;
                  }

                  v42 = *__error();
                  v59 = _SILogForLogForCategory(19);
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                  {
                    *valuePtr = 138412546;
                    *&valuePtr[4] = v199;
                    *&valuePtr[12] = 2048;
                    *&valuePtr[14] = v32;
                    _os_log_impl(&dword_1C278D000, v59, OS_LOG_TYPE_DEFAULT, "%@ {QP} Skipping token %lu (ERROR: UTF8 encoding of token failed)", valuePtr, 0x16u);
                  }
                }

                goto LABEL_64;
              }

              v40 = *__error();
              v41 = _SILogForLogForCategory(19);
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                *valuePtr = 138412546;
                *&valuePtr[4] = v199;
                *&valuePtr[12] = 2048;
                *&valuePtr[14] = v32;
                _os_log_impl(&dword_1C278D000, v41, OS_LOG_TYPE_DEFAULT, "%@ {QP} Skipping token %lu (Reason: It has only special characters)", valuePtr, 0x16u);
              }

              *__error() = v40;
            }

            --v211;
LABEL_65:
            if (++v32 == obj)
            {
              goto LABEL_194;
            }
          }

          v42 = *__error();
          v43 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *valuePtr = 138413058;
            *&valuePtr[4] = v199;
            *&valuePtr[12] = 2048;
            *&valuePtr[14] = v32;
            *&valuePtr[22] = 2048;
            *&valuePtr[24] = -1;
            *&valuePtr[32] = 2048;
            *&valuePtr[34] = v35;
            _os_log_impl(&dword_1C278D000, v43, OS_LOG_TYPE_DEFAULT, "%@ {QP} Skipping token %lu (ERROR: invalid range: (%ld, %ld))", valuePtr, 0x2Au);
          }

          goto LABEL_64;
        }

LABEL_194:
        freeQueryTokensContext(v189);
        if (![v204 count])
        {
          goto LABEL_144;
        }

        v224 = 0u;
        v225 = 0u;
        v222 = 0u;
        v223 = 0u;
        obja = [v204 allKeys];
        v207 = [obja countByEnumeratingWithState:&v222 objects:valuePtr count:16];
        if (!v207)
        {
          goto LABEL_144;
        }

        v203 = *v223;
LABEL_197:
        v130 = 0;
        while (1)
        {
          if (*v223 != v203)
          {
            objc_enumerationMutation(obja);
          }

          v131 = *(*(&v222 + 1) + 8 * v130);
          v218 = 0u;
          v219 = 0u;
          v220 = 0u;
          v221 = 0u;
          v209 = v131;
          v132 = [v204 objectForKeyedSubscript:?];
          v133 = 0;
          v134 = [v132 countByEnumeratingWithState:&v218 objects:buf count:16];
          if (v134)
          {
            break;
          }

LABEL_220:
          v144 = [objc_msgSend(v205 objectAtIndexedSubscript:{objc_msgSend(v209, "intValue")), "UTF8String"}];
          v145 = v144;
          if (v144)
          {
            query_node_with_ann = db_make_query_node_with_ann(v144, 0);
            v212 = makeAndNode(v212, query_node_with_ann);
            v147 = db_make_query_node_with_ann(v145, 0);
          }

          else
          {
            v147 = 0;
          }

          v148 = makeOrNode(v133, v147);
          v213 = makeAndNode(v213, v148);
          if (++v130 == v207)
          {
            v207 = [obja countByEnumeratingWithState:&v222 objects:valuePtr count:16];
            if (!v207)
            {
              goto LABEL_144;
            }

            goto LABEL_197;
          }
        }

        v135 = *v219;
LABEL_202:
        v136 = 0;
        while (1)
        {
          if (*v219 != v135)
          {
            objc_enumerationMutation(v132);
          }

          v137 = [*(*(&v218 + 1) + 8 * v136) UTF8String];
          if (!v137)
          {
            goto LABEL_218;
          }

          std::string::basic_string[abi:nn200100]<0>(__p, v137);
          v138 = isOptionalWord(__p);
          v139 = v138;
          if (v217 < 0)
          {
            operator delete(__p[0]);
            if (!v139)
            {
LABEL_210:
              v140 = qword_1EBF484B0;
              if (qword_1EBF484B0)
              {
                v141 = 0;
                do
                {
                  v142 = (v140 + 16);
                  if (*(v140 + 39) < 0)
                  {
                    v142 = *v142;
                  }

                  v143 = createQueryNode(v142, v137, 112, 1, 0, 0.0, 0.0);
                  v141 = makeOrNode(v141, v143);
                  v140 = *v140;
                }

                while (v140);
              }

              else
              {
                v141 = 0;
              }

              v133 = makeAndNode(v133, v141);
            }
          }

          else if (!v138)
          {
            goto LABEL_210;
          }

LABEL_218:
          if (++v136 == v134)
          {
            v134 = [v132 countByEnumeratingWithState:&v218 objects:buf count:16];
            if (!v134)
            {
              goto LABEL_220;
            }

            goto LABEL_202;
          }
        }
      }
    }

    freeQueryTokensContext(v189);
    v84 = *__error();
    v85 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 138412290;
      *&valuePtr[4] = v199;
      _os_log_impl(&dword_1C278D000, v85, OS_LOG_TYPE_DEFAULT, "%@ {QP} Return no results (ERROR: zero tokens found from the userQuery)", valuePtr, 0xCu);
    }
  }

  else
  {
    v84 = *__error();
    v86 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 138412290;
      *&valuePtr[4] = v199;
      _os_log_impl(&dword_1C278D000, v86, OS_LOG_TYPE_DEFAULT, "%@ {QP} Return no results (ERROR: missing tokenization context on userQuery)", valuePtr, 0xCu);
    }
  }

  *__error() = v84;
LABEL_144:
  if (v198)
  {
    v87 = *__error();
    v88 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 138412290;
      *&valuePtr[4] = v199;
      _os_log_impl(&dword_1C278D000, v88, OS_LOG_TYPE_DEFAULT, "%@ Skipping aNN filters (U2 is disabled by client)", valuePtr, 0xCu);
    }

    *__error() = v87;
    db_free_query_node(v212);
    v212 = 0;
  }

LABEL_148:
  v89 = makeAndNode(v213, v214);
  v90 = v89;
  if ((v198 & 0x100000000) != 0)
  {
    v91 = *__error();
    v92 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 138412290;
      *&valuePtr[4] = v199;
      _os_log_impl(&dword_1C278D000, v92, OS_LOG_TYPE_DEFAULT, "%@ Skipping metadata node (metadata search is disabled)", valuePtr, 0xCu);
    }

    *__error() = v91;
    db_free_query_node(v90);
    v90 = 0;
  }

  else if (!v89)
  {
    v93 = *__error();
    v94 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 138412290;
      *&valuePtr[4] = v199;
      _os_log_impl(&dword_1C278D000, v94, OS_LOG_TYPE_DEFAULT, "%@ Skipping metadata node (query has no free tokens)", valuePtr, 0xCu);
    }

    v90 = 0;
    *__error() = v93;
  }

  if ((v196 & 1) == 0)
  {
    if (!(BYTE4(v198) & 1 | (v90 != 0)))
    {
      v95 = *__error();
      v120 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 138412290;
        *&valuePtr[4] = v199;
        _os_log_impl(&dword_1C278D000, v120, OS_LOG_TYPE_DEFAULT, "%@ Skipping ANN node (query has only suggestions)", valuePtr, 0xCu);
      }

      goto LABEL_185;
    }

    v97 = v211;
    if (v211 <= 0)
    {
      v95 = *__error();
      v122 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 138412290;
        *&valuePtr[4] = v199;
        _os_log_impl(&dword_1C278D000, v122, OS_LOG_TYPE_DEFAULT, "%@ Skipping ANN node (no visual token in the query)", valuePtr, 0xCu);
      }

      goto LABEL_185;
    }

    if (!theDict || !CFDictionaryContainsKey(theDict, @"kQPQueryPhotoEmbeddingEncodedData"))
    {
      v95 = *__error();
      v121 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 138412290;
        *&valuePtr[4] = v199;
        _os_log_impl(&dword_1C278D000, v121, OS_LOG_TYPE_DEFAULT, "%@ Skipping ANN node (ERROR: missing query embedding)", valuePtr, 0xCu);
      }

      goto LABEL_185;
    }

    v98 = CFDictionaryGetValue(theDict, @"kQPQueryPhotoEmbeddingEncodedData");
    if (!v98)
    {
      v95 = *__error();
      v149 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 138412290;
        *&valuePtr[4] = v199;
        _os_log_impl(&dword_1C278D000, v149, OS_LOG_TYPE_DEFAULT, "%@ Skipping ANN node (ERROR: encoded query embedding in null)", valuePtr, 0xCu);
      }

      goto LABEL_185;
    }

    v99 = decodeEmbeddingData(v98);
    if (!v99)
    {
      v95 = *__error();
      v150 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 138412290;
        *&valuePtr[4] = v199;
        _os_log_impl(&dword_1C278D000, v150, OS_LOG_TYPE_DEFAULT, "%@ Skipping ANN node (ERROR: decoded query embedding in null)", valuePtr, 0xCu);
      }

      goto LABEL_185;
    }

    v100 = v99;
    v101 = [CFDictionaryGetValue(theDict @"embeddingVersion")];
    v102 = CFDictionaryGetValue(theDict, @"embeddingRelevanceThreshold");
    if (v102 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v102 floatValue], v103 >= 0.0))
    {
      [v102 floatValue];
      v107 = (1.0 - v163) + (1.0 - v163);
      v115 = *__error();
      v164 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
      {
        [v102 floatValue];
        *valuePtr = 138412802;
        *&valuePtr[4] = v199;
        *&valuePtr[12] = 2048;
        *&valuePtr[14] = v107;
        *&valuePtr[22] = 2048;
        *&valuePtr[24] = v165;
        v117 = "%@ Threshold based on client supplied values: %f, rel: %f";
        v118 = v164;
        v119 = 32;
        goto LABEL_262;
      }
    }

    else
    {
      v104 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
      if (v104)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v104 floatValue];
          v106 = v105;
          v107 = (1.0 - v106) + (1.0 - v106);
          v108 = *__error();
          v109 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
          {
            *valuePtr = 138412802;
            *&valuePtr[4] = v199;
            *&valuePtr[12] = 2048;
            *&valuePtr[14] = v106;
            *&valuePtr[22] = 2048;
            *&valuePtr[24] = v107;
            _os_log_impl(&dword_1C278D000, v109, OS_LOG_TYPE_DEFAULT, "%@ Using user default threshold: %f, distance: %f", valuePtr, 0x20u);
          }

          *__error() = v108;
          if (v107 != -1.0)
          {
LABEL_264:
            v171 = [(__CFDictionary *)v100 length];
            if (v171 > 1)
            {
              v174 = [(__CFDictionary *)v100 bytes];
              if (v174)
              {
                v175 = MEMORY[0x1E69E9AC8];
                if (*MEMORY[0x1E69E9AC8] <= 0x12FuLL)
                {
                  ++sTotal;
                }

                v176 = malloc_type_zone_calloc(queryZone, 1uLL, 0x130uLL, 0x5BAF1CEAuLL);
                v177 = v171 >> 1;
                if (!v176)
                {
                  _log_fault_for_malloc_failure();
                }

                *v176 = strdup("_kMDItemPhotoEmbedding");
                *(v176 + 6) = 15;
                if (v177 == 512)
                {
                  v178 = 5;
                }

                else
                {
                  v178 = 6;
                }

                v176[16] = v107;
                *(v176 + 15) = v178 | (16 * (v192 & 0xFFFFF)) | (v101 << 25);
                *(v176 + 10) = 5;
                *(v176 + 40) |= 0x10000u;
                v179 = malloc_type_zone_malloc(queryZone, v171 & 0xFFFFFFFFFFFFFFFELL, 0xA4971684uLL);
                if (!v179)
                {
                  _log_fault_for_malloc_failure();
                }

                v180 = 0;
                *(v176 + 37) = v179;
                if (v177 <= 1)
                {
                  v181 = 1;
                }

                else
                {
                  v181 = v171 >> 1;
                }

                do
                {
                  *(*(v176 + 37) + 2 * v180) = *(v174 + 2 * v180);
                  ++v180;
                }

                while (v181 != v180);
                if (*v175 <= 0x4FuLL)
                {
                  ++sTotal;
                }

                v182 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
                if (v182)
                {
                  v182->var6 = 4;
                  v182->var2 = v176;
                  v123 = makeAndNode(v182, v212);
                  v183 = [(__CFDictionary *)v100 length];
                  v184 = *__error();
                  v185 = _SILogForLogForCategory(19);
                  if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
                  {
                    *valuePtr = 138413314;
                    *&valuePtr[4] = v199;
                    *&valuePtr[12] = 2048;
                    *&valuePtr[14] = v183 >> 1;
                    *&valuePtr[22] = 2048;
                    *&valuePtr[24] = v107;
                    *&valuePtr[32] = 1024;
                    *&valuePtr[34] = v192;
                    *&valuePtr[38] = 2048;
                    *&valuePtr[40] = v97;
                    _os_log_impl(&dword_1C278D000, v185, OS_LOG_TYPE_DEFAULT, "%@ Adding ANN node (dim: %lu, thresh: %f, num results: %d, visual tokens: %ld)", valuePtr, 0x30u);
                  }

                  *__error() = v184;
                }

                else
                {
                  _log_fault_for_malloc_failure();
                  v123 = 0;
                  MEMORY[0x30] = 4;
                  MEMORY[0x10] = v176;
                }

                goto LABEL_291;
              }

              v172 = *__error();
              v186 = _SILogForLogForCategory(19);
              if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
              {
                *valuePtr = 138412290;
                *&valuePtr[4] = v199;
                _os_log_impl(&dword_1C278D000, v186, OS_LOG_TYPE_DEFAULT, "%@ Skipping ANN node (ERROR: Failed to get byte from embedding)", valuePtr, 0xCu);
              }
            }

            else
            {
              v172 = *__error();
              v173 = _SILogForLogForCategory(19);
              if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
              {
                *valuePtr = 138412290;
                *&valuePtr[4] = v199;
                _os_log_impl(&dword_1C278D000, v173, OS_LOG_TYPE_DEFAULT, "%@ Skipping ANN node (ERROR: embedding has 0 dimensionality)", valuePtr, 0xCu);
              }
            }

            v123 = 0;
            *__error() = v172;
LABEL_291:
            CFRelease(v100);
            goto LABEL_186;
          }
        }
      }

      v110 = CFDictionaryGetValue(theDict, @"embeddingScale");
      v111 = CFDictionaryGetValue(theDict, @"embeddingBias");
      [v110 floatValue];
      v113 = v112;
      [v111 floatValue];
      if (v113 != 0.0)
      {
        v151 = v114;
        v152 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
        if (!v152)
        {
          goto LABEL_237;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        [v152 floatValue];
        v154 = v153;
        v155 = *__error();
        v156 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 138412546;
          *&valuePtr[4] = v199;
          *&valuePtr[12] = 2048;
          *&valuePtr[14] = v154;
          _os_log_impl(&dword_1C278D000, v156, OS_LOG_TYPE_DEFAULT, "%@ Using user default cutoff: %f", valuePtr, 0x16u);
        }

        *__error() = v155;
        v157 = logf(v154);
        v158 = v157 - logf(1.0 - v154);
        if (v158 == -1.0)
        {
LABEL_237:
          if (v101 == 5)
          {
            v159 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
            v158 = -0.9445;
            if (v159)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v160 = [v159 intValue];
                v161 = *__error();
                v162 = _SILogForLogForCategory(19);
                if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
                {
                  *valuePtr = 138412546;
                  *&valuePtr[4] = v199;
                  *&valuePtr[12] = 1024;
                  *&valuePtr[14] = v160;
                  _os_log_impl(&dword_1C278D000, v162, OS_LOG_TYPE_DEFAULT, "%@ Using user default precision: %d", valuePtr, 0x12u);
                }

                *__error() = v161;
                if (v160 > 84)
                {
                  switch(v160)
                  {
                    case 'U':
                      v158 = -0.4055;
                      break;
                    case 'Z':
                      v158 = 0.0;
                      break;
                    case '_':
                      v158 = 0.7082;
                      break;
                  }
                }

                else
                {
                  switch(v160)
                  {
                    case 'F':
                      v158 = -1.3863;
                      break;
                    case 'K':
                      v158 = -1.046;
                      break;
                    case 'P':
                      v158 = -0.7538;
                      break;
                  }
                }
              }
            }
          }

          else if ((v101 & 0xFFFFFFFE) == 6)
          {
            v166 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
            v158 = -0.8473;
            if (v166)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v167 = [v166 intValue];
                v168 = *__error();
                v169 = _SILogForLogForCategory(19);
                if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
                {
                  *valuePtr = 138412546;
                  *&valuePtr[4] = v199;
                  *&valuePtr[12] = 1024;
                  *&valuePtr[14] = v167;
                  _os_log_impl(&dword_1C278D000, v169, OS_LOG_TYPE_DEFAULT, "%@ Using user default precision for MD6: %d", valuePtr, 0x12u);
                }

                *__error() = v168;
                if (v167 > 84)
                {
                  switch(v167)
                  {
                    case 'U':
                      v158 = -0.3228;
                      break;
                    case 'Z':
                      v158 = 0.1201;
                      break;
                    case '_':
                      v158 = 1.046;
                      break;
                  }
                }

                else
                {
                  switch(v167)
                  {
                    case 'F':
                      v158 = -1.2657;
                      break;
                    case 'K':
                      v158 = -0.9946;
                      break;
                    case 'P':
                      v158 = -0.6633;
                      break;
                  }
                }
              }
            }
          }

          else
          {
            v158 = -1.0986;
          }
        }

        v107 = (1.0 - ((v158 - v151) / v113)) + (1.0 - ((v158 - v151) / v113));
        v115 = *__error();
        v170 = _SILogForLogForCategory(19);
        if (!os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_263;
        }

        *valuePtr = 138413570;
        *&valuePtr[4] = v199;
        *&valuePtr[12] = 1024;
        *&valuePtr[14] = v101;
        *&valuePtr[18] = 2048;
        *&valuePtr[20] = v107;
        *&valuePtr[28] = 2048;
        *&valuePtr[30] = v158;
        *&valuePtr[38] = 2048;
        *&valuePtr[40] = v113;
        *&valuePtr[48] = 2048;
        *&valuePtr[50] = v151;
        v117 = "%@ MD%d calibrated threshold: %f, cutoffOffset: %f, scale: %f, bias: %f";
        v118 = v170;
        v119 = 58;
        goto LABEL_262;
      }

      v115 = *__error();
      v116 = _SILogForLogForCategory(19);
      v107 = 1.7;
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 138412802;
        *&valuePtr[4] = v199;
        *&valuePtr[12] = 1024;
        *&valuePtr[14] = v101;
        *&valuePtr[18] = 2048;
        *&valuePtr[20] = 0x3FFB333340000000;
        v117 = "%@ MD%d: Using default similarity of 0.15 to get threshold = %f (ERROR: scale is 0)";
        v118 = v116;
        v119 = 28;
LABEL_262:
        _os_log_impl(&dword_1C278D000, v118, OS_LOG_TYPE_DEFAULT, v117, valuePtr, v119);
      }
    }

LABEL_263:
    *__error() = v115;
    goto LABEL_264;
  }

  v95 = *__error();
  v96 = _SILogForLogForCategory(19);
  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
  {
    *valuePtr = 138412290;
    *&valuePtr[4] = v199;
    _os_log_impl(&dword_1C278D000, v96, OS_LOG_TYPE_DEFAULT, "%@ Skipping ANN node (semantic search is disabled)", valuePtr, 0xCu);
  }

LABEL_185:
  v123 = 0;
  *__error() = v95;
LABEL_186:
  if (!v123 && v212)
  {
    *valuePtr = MEMORY[0x1E69E9820];
    *&valuePtr[8] = 0x40000000;
    *&valuePtr[16] = __db_query_tree_apply_block_block_invoke;
    *&valuePtr[24] = &unk_1E8198ED0;
    *&valuePtr[32] = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(v212, valuePtr, 0);
  }

  v124 = makeOrNode(v123, v90);
  FalseNode = makeAndNode(v124, v215);
  if (!FalseNode)
  {
    FalseNode = makeFalseNode();
    v126 = *__error();
    v127 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 138412290;
      *&valuePtr[4] = v199;
      _os_log_impl(&dword_1C278D000, v127, OS_LOG_TYPE_DEFAULT, "%@ Return no results (missing all nodes)", valuePtr, 0xCu);
    }

    *__error() = v126;
  }

  v128 = *MEMORY[0x1E69E9840];
  return FalseNode;
}