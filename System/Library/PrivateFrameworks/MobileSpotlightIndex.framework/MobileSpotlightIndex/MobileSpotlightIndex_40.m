BOOL _CIGetGroupForDocId(uint64_t a1, uint64_t a2)
{
  v2 = a2 - *(a1 + 80);
  if (v2 >= *(a1 + 68))
  {
    return 0;
  }

  if (*(a1 + 8) != 1)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    return 0;
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v5 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
  *buf = v5;
  v6 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
  v23 = HIDWORD(v5);
  v22 = __PAIR64__(v7, v8);
  *(v6 + 216) = 0;
  v9 = *(v6 + 312);
  v10 = *(v6 + 224);
  if (v10)
  {
    v10(*(v6 + 288));
  }

  v21 = *buf;
  v20 = v23;
  v19 = v22;
  if (_setjmp(v6))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v18, 2u);
    }

    *(v6 + 312) = v9;
    if ((~*(v6 + 212) & 0xA0000000) == 0)
    {
      v11 = *(v6 + 288);
      if (v11)
      {
        _CIMakeInvalid(v11);
      }
    }

    CIOnThreadCleanUpReset(v19);
    dropThreadId(v21, 1, add_explicit + 1);
    CICleanUpReset(v21, HIDWORD(v19));
    return 0;
  }

  v13 = CICleanUpThreadLoc();
  db_read_lock(a1 + 14504);
  CIOnThreadCleanUpPush(v13, si_rwlock_rdunlock, a1 + 14504);
  if (*(a1 + 45) == 1)
  {
    v14 = *(*(a1 + 14432) + v2);
  }

  else
  {
    v14 = (*(*(a1 + 14432) + 4 * (v2 / 5uLL)) >> (6 * (v2 % 5))) & 0x3F;
  }

  v15 = v14 & 0xFFFFFFDF;
  CIOnThreadCleanUpPop(v13);
  v16 = threadData[9 * v21 + 1] + 320 * v20;
  *(v16 + 312) = v9;
  v17 = *(v16 + 232);
  if (v17)
  {
    v17(*(v16 + 288));
  }

  dropThreadId(v21, 0, add_explicit + 1);
  return v15;
}

void _CIAddOids(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    goto LABEL_13;
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v5 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
  *buf = v5;
  v6 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
  v33 = HIDWORD(v5);
  v32 = __PAIR64__(v7, v8);
  *(v6 + 216) = 0;
  v9 = *(v6 + 312);
  v10 = *(v6 + 224);
  if (v10)
  {
    v10(*(v6 + 288));
  }

  v31 = *buf;
  v30 = v33;
  v29 = v32;
  if (_setjmp(v6))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v28 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v28, 2u);
    }

    *(v6 + 312) = v9;
    if ((~*(v6 + 212) & 0xA0000000) == 0)
    {
      v11 = *(v6 + 288);
      if (v11)
      {
        _CIMakeInvalid(v11);
      }
    }

    CIOnThreadCleanUpReset(v29);
    dropThreadId(v31, 1, add_explicit + 1);
    CICleanUpReset(v31, HIDWORD(v29));
LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  v13 = CICleanUpThreadLoc();
  db_read_lock(a1 + 14504);
  CIOnThreadCleanUpPush(v13, si_rwlock_rdunlock, a1 + 14504);
  v14 = *(a1 + 68);
  if (v14)
  {
    v15 = *(a1 + 68);
    v16 = malloc_type_malloc(8 * v14, 0x100004000313F17uLL);
    if (v14 < 2)
    {
      v24 = 0;
    }

    else
    {
      v17 = *(a1 + 14408);
      v18 = 6;
      v19 = 1;
      v20 = 0;
      do
      {
        v21 = *(v17 + 8 * v19);
        v16[v20] = v21;
        if (v21)
        {
          if (*(a1 + 45) == 1)
          {
            LOBYTE(v22) = *(*(a1 + 14432) + v19);
          }

          else
          {
            v22 = (*(*(a1 + 14432) + (((3435973837u * v19) >> 32) & 0xFFFFFFFC)) >> (v18 - 30 * (v19 / 5))) & 0x3F;
          }

          if ((v22 & 0xDF) != 0)
          {
            v23 = (v20 + 1);
          }

          else
          {
            v23 = v20;
          }
        }

        else
        {
          v23 = v20;
        }

        ++v19;
        v18 += 6;
        v20 = v23;
      }

      while (v14 != v19);
      v24 = v23;
    }

    v25 = v16;
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  CIOnThreadCleanUpPop(v13);
  v26 = threadData[9 * v31 + 1] + 320 * v30;
  *(v26 + 312) = v9;
  v27 = *(v26 + 232);
  if (v27)
  {
    v27(*(v26 + 288));
  }

  dropThreadId(v31, 0, add_explicit + 1);
  if (v14)
  {
    qsort_oids(v25, v24);
    RLEOIDArrayAddSortedOids(a2, v25, v24);
  }

  v12 = v25;
LABEL_14:
  free(v12);
}

void _CIDeleteByOidsBulk(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v5 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
    *buf = v5;
    v6 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
    v54 = HIDWORD(v5);
    v53 = __PAIR64__(v7, v8);
    *(v6 + 216) = 0;
    v9 = *(v6 + 312);
    v10 = *(v6 + 224);
    if (v10)
    {
      v10(*(v6 + 288));
    }

    v52 = *buf;
    v51 = v54;
    v50 = v53;
    if (_setjmp(v6))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v49 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v49, 2u);
      }

      *(v6 + 312) = v9;
      if ((~*(v6 + 212) & 0xA0000000) == 0)
      {
        v11 = *(v6 + 288);
        if (v11)
        {
          _CIMakeInvalid(v11);
        }
      }

      CIOnThreadCleanUpReset(v50);
      dropThreadId(v52, 1, add_explicit + 1);
      CICleanUpReset(v52, HIDWORD(v50));
      return;
    }

    v12 = CICleanUpThreadLoc();
    _db_write_lock(a1 + 14504);
    v48 = v12;
    CIOnThreadCleanUpPush(v12, si_rwlock_wrunlock, a1 + 14504);
    v13 = *(a1 + 68);
    if (v13 >= 2)
    {
      v14 = 6;
      v15 = 1;
      v16 = MEMORY[0x1E69E9AC8];
      do
      {
        if (RLEOIDArrayContainsOid_locked(a2, *(*(a1 + 14408) + 8 * v15)))
        {
          if (*(a1 + 45) != 1)
          {
            v18 = v15 / 5uLL;
            v19 = *(a1 + 14432);
            v20 = v18;
            v21 = *(v19 + 4 * v18) & ~(63 << (v14 - 30 * (v15 / 5)));
            if (*(a1 + 14440))
            {
              v22 = v18 / (8 * *v16);
              v23 = (v18 / *v16) & 7;
              *(*(a1 + 14440) + v22) |= 1 << v23;
              if (!*(*(a1 + 14440) + v22) || (v24 = v23 | (8 * v22), *v16 * v24 > v18))
              {
LABEL_33:
                v30 = __si_assert_copy_extra_332();
                __message_assert_336(v30, v31, v32, v33, v34, v35, v36, v37, "ContentIndex.c");
                free(v30);
                if (__valid_fs(-1))
                {
                  v38 = 2989;
                }

                else
                {
                  v38 = 3072;
                }

                *v38 = -559038737;
                abort();
              }

              if (*v16 * (v24 + 1) <= v18)
              {
                v39 = __si_assert_copy_extra_332();
                __message_assert_336(v39, v40, v41, v42, v43, v44, v45, v46, "ContentIndex.c");
                free(v39);
                if (__valid_fs(-1))
                {
                  v47 = 2989;
                }

                else
                {
                  v47 = 3072;
                }

                *v47 = -559038737;
                abort();
              }

              v25 = *(a1 + 14432);
              v26 = *(a1 + 45);
              *(v25 + 4 * v20) = v21;
              if (v26)
              {
                v27 = *(v25 + v15);
                goto LABEL_27;
              }
            }

            else
            {
              *(v19 + 4 * v18) = v21;
            }

            v27 = (v21 >> (v14 - 30 * (v15 / 5))) & 0x3F;
LABEL_27:
            if (v27)
            {
              goto LABEL_33;
            }

            goto LABEL_28;
          }

          *(*(a1 + 14432) + v15) = 0;
          v17 = *(a1 + 14440);
          if (v17)
          {
            *(v17 + v15 / (32 * *v16)) |= 1 << ((v15 / (4 * *v16)) & 7);
          }
        }

LABEL_28:
        ++v15;
        v14 += 6;
      }

      while (v13 != v15);
    }

    CIOnThreadCleanUpPop(v48);
    v28 = threadData[9 * v52 + 1] + 320 * v51;
    *(v28 + 312) = v9;
    v29 = *(v28 + 232);
    if (v29)
    {
      v29(*(v28 + 288));
    }

    dropThreadId(v52, 0, add_explicit + 1);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }
}

uint64_t _CIMoveDirectory(uint64_t a1, int a2, uint64_t *a3, int a4, uint64_t a5)
{
  v10 = *(a1 + 15203);
  indexMarkDirty(a1);
  _db_write_lock(a1 + 4696);
  if ((v10 & 1) == 0)
  {
    _db_write_lock(a1 + 14720);
    v11 = *(a1 + 14392);
    if (v11)
    {
      _TermUpdateSetLock(v11, 1);
    }

    v12 = *(a1 + 14400);
    if (v12)
    {
      _TermUpdateSetLock(v12, 1);
    }
  }

  if (*(a1 + 8) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v14 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
    *buf = v14;
    v15 = threadData[9 * v14 + 1] + 320 * HIDWORD(v14);
    v33 = HIDWORD(v14);
    v32 = __PAIR64__(v16, v17);
    *(v15 + 216) = 0;
    v18 = *(v15 + 312);
    v19 = *(v15 + 224);
    if (v19)
    {
      v19(*(v15 + 288));
    }

    v31 = *buf;
    v30 = v33;
    v29 = v32;
    if (_setjmp(v15))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v28 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v28, 2u);
      }

      *(v15 + 312) = v18;
      if ((~*(v15 + 212) & 0xA0000000) == 0)
      {
        v20 = *(v15 + 288);
        if (v20)
        {
          _CIMakeInvalid(v20);
        }
      }

      CIOnThreadCleanUpReset(v29);
      dropThreadId(v31, 1, add_explicit + 1);
      CICleanUpReset(v31, HIDWORD(v29));
    }

    else
    {
      if ((v10 & 1) == 0)
      {
        v21 = *(a1 + 14392);
        if (v21)
        {
          moveDirectory((v21 + 48), a2, a3, a4, a5);
        }

        v22 = *(a1 + 14400);
        if (v22)
        {
          moveDirectory((v22 + 48), a2, a3, a4, a5);
        }
      }

      directoryStoreMoveDirectory(*(a1 + 4928), a2, a3, a4, a5);
      v23 = threadData[9 * v31 + 1] + 320 * v30;
      *(v23 + 312) = v18;
      v24 = *(v23 + 232);
      if (v24)
      {
        v24(*(v23 + 288));
      }

      dropThreadId(v31, 0, add_explicit + 1);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }

  result = db_write_unlock(a1 + 4696);
  if ((v10 & 1) == 0)
  {
    v26 = *(a1 + 14392);
    if (v26)
    {
      _TermUpdateSetUnlock(v26);
    }

    v27 = *(a1 + 14400);
    if (v27)
    {
      _TermUpdateSetUnlock(v27);
    }

    return db_write_unlock(a1 + 14720);
  }

  return result;
}

BOOL _CICreateFdAndHoldAssertion(uint64_t a1, uint64_t a2, const char *a3, double a4)
{
  v35 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  v8 = a1 + 15208;
  snprintf(__str, 0x400uLL, "%s%s", (a1 + 15208), a3);
  v9 = fd_create_protected(*(a1 + 64), __str, 514, 0);
  if (v9)
  {
    v10 = v9;
    v25 = 0;
    v11 = _fd_acquire_fd(v9, &v25);
    if (v11 < 0)
    {
      v15 = *__error();
      v16 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v22 = *__error();
        v23 = __error();
        v24 = strerror(*v23);
        *buf = 136316674;
        v27 = "_CICreateFdAndHoldAssertion";
        v28 = 1024;
        v29 = 3401;
        v30 = 1024;
        *v31 = v11;
        *&v31[4] = 2080;
        *&v31[6] = v8;
        *&v31[14] = 2080;
        *&v31[16] = a3;
        v32 = 1024;
        LODWORD(v33[0]) = v22;
        WORD2(v33[0]) = 2080;
        *(v33 + 6) = v24;
        _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: fd = %d for %s%s file: %d(%s)", buf, 0x3Cu);
      }

      v12 = 0;
      *__error() = v15;
    }

    else
    {
      v12 = fd_hold_assertion(v10, a2, a4) >= 0;
      _fd_release_fd(v10, v11, 0, v25);
    }

    fd_release(v10);
  }

  else
  {
    v13 = *__error();
    v14 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v19 = *__error();
      v20 = __error();
      v21 = strerror(*v20);
      *buf = 136316418;
      v27 = "_CICreateFdAndHoldAssertion";
      v28 = 1024;
      v29 = 3388;
      v30 = 2080;
      *v31 = v8;
      *&v31[8] = 2080;
      *&v31[10] = a3;
      *&v31[18] = 1024;
      *&v31[20] = v19;
      v32 = 2080;
      v33[0] = v21;
      _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: Unable to get fdptr for %s%s file: %d(%s)", buf, 0x36u);
    }

    v12 = 0;
    *__error() = v13;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

BOOL _CICreateFdAndDropAssertion(uint64_t a1, const char *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  v4 = a1 + 15208;
  snprintf(__str, 0x400uLL, "%s%s", (a1 + 15208), a2);
  v5 = fd_create_protected(*(a1 + 64), __str, 2, 0);
  if (v5)
  {
    v6 = v5;
    v21 = 0;
    v7 = _fd_acquire_fd(v5, &v21);
    if (v7 < 0)
    {
      v11 = *__error();
      v12 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v18 = *__error();
        v19 = __error();
        v20 = strerror(*v19);
        *buf = 136316674;
        v23 = "_CICreateFdAndDropAssertion";
        v24 = 1024;
        v25 = 3429;
        v26 = 1024;
        *v27 = v7;
        *&v27[4] = 2080;
        *&v27[6] = v4;
        *&v27[14] = 2080;
        *&v27[16] = a2;
        v28 = 1024;
        LODWORD(v29[0]) = v18;
        WORD2(v29[0]) = 2080;
        *(v29 + 6) = v20;
        _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: fd = %d for %s%s file: %d(%s)", buf, 0x3Cu);
      }

      v8 = 0;
      *__error() = v11;
    }

    else
    {
      v8 = fd_drop_assertion(v6) >= 0;
      _fd_release_fd(v6, v7, 0, v21);
    }

    fd_release(v6);
  }

  else
  {
    v9 = *__error();
    v10 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = *__error();
      v16 = __error();
      v17 = strerror(*v16);
      *buf = 136316418;
      v23 = "_CICreateFdAndDropAssertion";
      v24 = 1024;
      v25 = 3416;
      v26 = 2080;
      *v27 = v4;
      *&v27[8] = 2080;
      *&v27[10] = a2;
      *&v27[18] = 1024;
      *&v27[20] = v15;
      v28 = 2080;
      v29[0] = v17;
      _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: Unable to get fdptr for %s%s file: %d(%s)", buf, 0x36u);
    }

    v8 = 0;
    *__error() = v9;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t expandMap(uint64_t a1, size_t a2, void **a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = fd_mmap(a1);
  *a3 = v10;
  if (v10 == -1)
  {
    v14 = *__error();
    v15 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = *__error();
      v19 = 136315650;
      v20 = "expandMap";
      v21 = 1024;
      v22 = 29;
      v23 = 1024;
      v24 = v18;
      _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: mmap err: %d", &v19, 0x18u);
    }

    *__error() = v14;
  }

  else
  {
    while (1)
    {
      if (fd_truncate(a1, a2) != -1)
      {
        result = 0;
        goto LABEL_15;
      }

      v11 = *__error();
      if (!a4 || v11 != 28)
      {
        break;
      }

      if ((a4(a5) & 1) == 0)
      {
        v11 = 28;
        break;
      }
    }

    v12 = *__error();
    v13 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315650;
      v20 = "expandMap";
      v21 = 1024;
      v22 = 38;
      v23 = 1024;
      v24 = v11;
      _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: ftruncate err: %d", &v19, 0x18u);
    }

    *__error() = v12;
    munmap(*a3, a2);
    *a3 = -1;
  }

  result = 0xFFFFFFFFLL;
LABEL_15:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t expandUnsafeMapNew(void **a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a3 <= 8)
  {
    v14 = 8;
  }

  else
  {
    v14 = a3;
  }

  v15 = *a1;
  v16 = a4 * a3;
  fd_system_status_stall_if_busy();
  msync(v15, v16, 16);
  munmap(*a1, v16);
  *a1 = 0;
  v27 = a5;
  *a5 = 0;
  if ((a3 & (a3 - 1)) == 0)
  {
    goto LABEL_8;
  }

  v17 = 2;
  do
  {
    v18 = v17;
    v17 *= 2;
  }

  while (v18 < a3);
  if (!expandMap(a2, v18 * a4, a1, a6, a7))
  {
    v21 = 0;
    *v27 = v18;
  }

  else
  {
LABEL_8:
    v19 = v14 + a3;
    while (1)
    {
      if (v19 > 0xFFFFFFFF / a4)
      {
        *__error() = 7;
        v21 = 0xFFFFFFFFLL;
        goto LABEL_19;
      }

      v20 = v19 * a4;
      v21 = expandMap(a2, v19 * a4, a1, a6, a7);
      if (!v21)
      {
        *v27 = v20 / a4;
        goto LABEL_19;
      }

      if (v14 <= 8)
      {
        break;
      }

      v19 = a3 + (v14 >> 1);
      v14 >>= 1;
    }

    v22 = *__error();
    v23 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v26 = *__error();
      *buf = 136315906;
      v29 = "expandUnsafeMapNew";
      v30 = 1024;
      v31 = 82;
      v32 = 1024;
      v33 = v26;
      v34 = 1024;
      v35 = -1;
      _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: expandUnsafeMap errno: %d err: %d", buf, 0x1Eu);
    }

    *__error() = v22;
  }

LABEL_19:
  v24 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t flatStoreNewBlockForCompact(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v2 = HIDWORD(a2) ? 0 : a2 << 6;
    if (v2 < *(a1 + 232))
    {
      v3 = a1;
      v4 = storageResolvePtr(a1, v2, 8, 1);
      v5 = storageResolvePtr(v3, v2, 64 << *(v4 + 2), 1);
      a1 = v3;
      *(v3 + 232) = v2 + ((*v5 + 71) & 0x1FFC0);
      if ((*(v3 + 4374) & 1) == 0)
      {
        *(v3 + 184) = 0u;
        *(v3 + 168) = 0u;
        *(v3 + 152) = 0u;
        *(v3 + 136) = 0u;
        *(v3 + 120) = 0u;
        *(v3 + 104) = 0u;
        *(v3 + 88) = 0u;
        *(v3 + 72) = 0u;
        *(v3 + 56) = 0u;
        *(v3 + 40) = 0u;
        *(v3 + 24) = 0u;
        *(v3 + 8) = 0u;
        *(v3 + 4374) = 1;
      }
    }
  }

  v6 = *(a1 + 4);
  if (WORD1(v6) || (v7 = (((0x10000 - v6) ^ (0xFFFF - v6)) <= 0xFFFF - v6) - __clz(0x10000 - v6), v7 <= -29))
  {
    v8 = 0;
  }

  else
  {
    v8 = v7 + 28;
  }

  v9 = 8 << v8;
  v10 = (16 << v8);
  v11 = *(a1 + 224);
  v12 = *(a1 + 232);
  if (v6 + v12 + v10 + 8 >= v11)
  {
    v16 = a1;
    if (!_storageExpand(a1, v9))
    {
      return 0;
    }

    a1 = v16;
    v12 = *(v16 + 232);
    v11 = *(a1 + 224);
  }

  v13 = (v9 + v6);
  if (v12 + v13 >= v11)
  {
    v17 = a1;
    if (_storageWindowsExpandBacking((a1 + 216), v13))
    {
      a1 = v17;
      v12 = *(v17 + 232);
      *(a1 + 232) = v12 + v13;
      if (v12)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    *(a1 + 232) = v12 + v13;
    if (v12)
    {
LABEL_15:
      v14 = storageResolvePtr(a1, v12, 0x10000, 1);
      *v14 = 0;
      *(v14 + 2) = 10;
      return (v12 >> 6);
    }
  }

  return 0;
}

uint64_t mergeEntryFlat(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v288 = v3;
  LODWORD(v5) = v4;
  v6 = v2;
  v292 = v7;
  v9 = v8;
  __s2 = v10;
  v12 = v11;
  v13 = v1;
  v313 = *MEMORY[0x1E69E9840];
  v14 = v2 << 6;
  v294 = HIDWORD(v2);
  if (HIDWORD(v2))
  {
    v15 = 0;
  }

  else
  {
    v15 = v2 << 6;
  }

  v16 = storageResolvePtr(v1 + 160, v15, 8, 1);
  v17 = storageResolvePtr(v13 + 160, v15, 64 << *(v16 + 2), 1);
  bzero(v312, 0x1000uLL);
  v18 = *v17;
  v300 = v17;
  v19 = (64 << *(v17 + 2)) - 8;
  v308 = 0;
  v309 = 0uLL;
  v302 = v9;
  v306 = v9;
  v307 = 0;
  if (v19 < v18)
  {
    v20 = (v18 + 7) | ((v18 + 7) >> 1) | (((v18 + 7) | ((v18 + 7) >> 1)) >> 2);
    v21 = v20 | (v20 >> 4) | ((v20 | (v20 >> 4)) >> 8);
    v22 = v21 | (v21 >> 16);
    bzero(__n, 0x4148uLL);
    checkTrieFatData(v13, 0, v15, v22 + 1 + v15, __n);
    v23 = *(v13 + 392);
    if (v23 < v18 + 8)
    {
      v24 = 0;
    }

    else
    {
      v24 = -1;
    }

    if (v15 == v24)
    {
      v232 = __si_assert_copy_extra_2708(*(v13 + 376));
      v233 = v232;
      v234 = "";
      if (v232)
      {
        v234 = v232;
      }

      __message_assert("%s:%u: failed assertion '%s' %s offset: %lld, freeRegion: %lld, kind:%d", "FlatStore.c", 179, "flatStoreGetOffset(ptr)+roundup2(pageEnd+int_sizeof(*page) <= freeRegion)", v234, 0, v23, v294);
      free(v233);
      if (__valid_fsp(*(v13 + 376)))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v25 = __clz(__rbit32((v22 + 9) >> 6));
    if (v22 < 0x37)
    {
      v25 = -1;
    }

    *(v300 + 2) = v25;
    v19 = (64 << v25) - 8;
  }

  if (v19 < v18)
  {
    if (!isExFat(*(v13 + 152)))
    {
LABEL_491:
      v221 = __si_assert_copy_extra_2708(*(v13 + 376));
      v277 = *(v13 + 384);
      v278 = *(v13 + 392);
      __message_assert("%s:%u: failed assertion '%s' %s ps:%d, pe:%d, pk:%d, po:%llx, ss:%llx se:%llx", "FlatStore.c", 194, "pageSize >= pageEnd && pageSize && (__builtin_popcount(pageSize+int_sizeof(*page)) == 1)");
LABEL_496:
      v46 = v221;
LABEL_497:
      free(v46);
      v226 = *(v13 + 376);
      goto LABEL_498;
    }

LABEL_486:
    v218 = __si_assert_copy_extra_2708(*(v13 + 376));
    v219 = v218;
    v220 = "";
    if (v218)
    {
      v220 = v218;
    }

    si_analytics_log_3138("%s:%u: failure log '%s' %s ps:%d, pe:%d, pk:%d, po:%llx, ss:%llx se:%llx", "FlatStore.c", 188, "pageSize >= pageEnd && pageSize && (__builtin_popcount(pageSize+int_sizeof(*page)) == 1)", v220, v19, v18, v294, v15, *(v13 + 384), *(v13 + 392));
    free(v219);
    goto LABEL_489;
  }

  if (((v19 + 8) ^ (v19 + 7)) <= v19 + 7)
  {
    if (!isExFat(*(v13 + 152)))
    {
      goto LABEL_491;
    }

    goto LABEL_486;
  }

  v26 = v12[275];
  if (v26 > 0x1000)
  {
    v222 = __si_assert_copy_extra_2708(*(v13 + 376));
    v223 = v222;
    v224 = "";
    if (v222)
    {
      v224 = v222;
    }

    __message_assert("%s:%u: failed assertion '%s' %s %ld, ps:%d, pe:%d, pk:%d, po:%llx, ss:%llx se:%llx", "FlatStore.c", 198, "ms->currentStringLen <= CMPBUFFER_SIZE", v224, v12[275], v19, v18, v294, v15, *(v13 + 384), *(v13 + 392));
    v225 = v223;
    goto LABEL_503;
  }

  if (!v5)
  {
    v12[7] = v6;
    v12[8] = v294;
    if (!v294)
    {
      goto LABEL_19;
    }

LABEL_44:
    v43 = __si_assert_copy_extra_2708(*(v13 + 376));
    v44 = v43;
    v45 = "";
    if (v43)
    {
      v45 = v43;
    }

    __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 212, "ptr.kind==FLAT", v45);
    v46 = v44;
    goto LABEL_497;
  }

  v27 = v12[275];
  __memcpy_chk();
  if (v12[7] != v6)
  {
    v228 = __si_assert_copy_extra_2708(*(v13 + 376));
    v229 = v228;
    v230 = "";
    if (v228)
    {
      v230 = v228;
    }

    __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 205, "ms->pageOffset.next==_ptr.next", v230);
    v225 = v229;
LABEL_503:
    free(v225);
    v231 = *(v13 + 376);
    goto LABEL_571;
  }

  if (v294)
  {
    goto LABEL_44;
  }

LABEL_19:
  if (v14 >= *(v13 + 392))
  {
    v221 = __si_assert_copy_extra_2708(*(v13 + 376));
    __message_assert("%s:%u: failed assertion '%s' %s offset: %lld, freeRegion: %lld, kind:%d");
    goto LABEL_496;
  }

  v28 = 0uLL;
  *__n = 0u;
  v311 = 0u;
  v29 = *v12;
  if (*v12)
  {
    if (v18 && v5 == 0)
    {
      v31 = v12 + 271;
      *(v12 + 3) = 0;
      *(v12 + 4) = 0;
      *(v12 + 40) = 0;
      goto LABEL_27;
    }
  }

  v291 = v13;
  v298 = v18;
  v287 = v5;
  if (v18 <= v5)
  {
    v41 = __s2;
    if (v5)
    {
      if (v26 >= v9)
      {
        LODWORD(v5) = v9;
      }

      else
      {
        LODWORD(v5) = v26;
      }

      v42 = v300;
      if (v5)
      {
        goto LABEL_52;
      }

LABEL_55:
      v48 = v14;
LABEL_74:
      v49 = v302 - v5;
      v307 = v5;
      v306 = v302 - v5;
      if (v302 == v5)
      {
        v50 = v291;
        v237 = __si_assert_copy_extra_2708(*(v291 + 376));
        v92 = v237;
        v238 = "";
        if (v237)
        {
          v238 = v237;
        }

        __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 440, "newEntry.len", v238);
        goto LABEL_570;
      }

      v29 = *v12;
    }

    else
    {
      v48 = v14;
      v49 = v302;
      v42 = v300;
    }

    v56 = v5;
    v308 = &v41[v5];
    v309 = *(v12 + 2);
    if (v29)
    {
      if (v49 >= 0x80)
      {
        if (v49 >= 0x4000)
        {
          if (v49 >= 0x200000)
          {
            if (v49 >> 28)
            {
              v57 = 5;
            }

            else
            {
              v57 = 4;
            }
          }

          else
          {
            v57 = 3;
          }
        }

        else
        {
          v57 = 2;
        }
      }

      else
      {
        v57 = 1;
      }

      if (v5 >= 0x80)
      {
        if (v5 >= 0x4000)
        {
          if (v5 >= 0x200000)
          {
            if (v5 >> 28)
            {
              v60 = 5;
            }

            else
            {
              v60 = 4;
            }
          }

          else
          {
            v60 = 3;
          }
        }

        else
        {
          v60 = 2;
        }
      }

      else
      {
        v60 = 1;
      }

      v61 = v309;
      v62 = v309 - *(v12 + 271);
      if (v62 >= 0x80)
      {
        if (v62 >= 0x4000)
        {
          if (v62 >= 0x200000)
          {
            if (v62 >> 28)
            {
              if (v62 >> 35)
              {
                if (v62 >> 42)
                {
                  if (v62 >> 49)
                  {
                    if (HIBYTE(v62))
                    {
                      v63 = 9;
                    }

                    else
                    {
                      v63 = 8;
                    }
                  }

                  else
                  {
                    v63 = 7;
                  }
                }

                else
                {
                  v63 = 6;
                }
              }

              else
              {
                v63 = 5;
              }
            }

            else
            {
              v63 = 4;
            }
          }

          else
          {
            v63 = 3;
          }
        }

        else
        {
          v63 = 2;
        }
      }

      else
      {
        v63 = 1;
      }

      v164 = *(v12 + 273);
      if (!*(&v309 + 1))
      {
        v164 = 0;
      }

      v165 = *(&v309 + 1) - v164;
      if (v165 >= 0x80)
      {
        if (v165 >= 0x4000)
        {
          if (v165 >= 0x200000)
          {
            if (v165 >> 28)
            {
              if (v165 >> 35)
              {
                if (v165 >> 42)
                {
                  if (v165 >> 49)
                  {
                    if (HIBYTE(v165))
                    {
                      v166 = 9;
                    }

                    else
                    {
                      v166 = 8;
                    }
                  }

                  else
                  {
                    v166 = 7;
                  }
                }

                else
                {
                  v166 = 6;
                }
              }

              else
              {
                v166 = 5;
              }
            }

            else
            {
              v166 = 4;
            }
          }

          else
          {
            v166 = 3;
          }
        }

        else
        {
          v166 = 2;
        }
      }

      else
      {
        v166 = 1;
      }

      v67 = v57 + v49 + v60 + v63 + v166;
    }

    else
    {
      if (v49 >= 0x80)
      {
        if (v49 >= 0x4000)
        {
          if (v49 >= 0x200000)
          {
            if (v49 >> 28)
            {
              v58 = 5;
            }

            else
            {
              v58 = 4;
            }
          }

          else
          {
            v58 = 3;
          }
        }

        else
        {
          v58 = 2;
        }
      }

      else
      {
        v58 = 1;
      }

      if (v5 >= 0x80)
      {
        if (v5 >= 0x4000)
        {
          if (v5 >= 0x200000)
          {
            if (v5 >> 28)
            {
              v65 = 5;
            }

            else
            {
              v65 = 4;
            }
          }

          else
          {
            v65 = 3;
          }
        }

        else
        {
          v65 = 2;
        }
      }

      else
      {
        v65 = 1;
      }

      v61 = v309;
      if (v309 >= 0x80)
      {
        if (v309 >= 0x4000)
        {
          if (v309 >= 0x200000)
          {
            if (v309 >> 28)
            {
              v66 = 5;
            }

            else
            {
              v66 = 4;
            }
          }

          else
          {
            v66 = 3;
          }
        }

        else
        {
          v66 = 2;
        }
      }

      else
      {
        v66 = 1;
      }

      v67 = v58 + v49 + v65 + v66;
    }

    v167 = v67 + v298;
    if (v67 + v298 <= v19)
    {
LABEL_416:
      if (v167 > v19)
      {
        v235 = __si_assert_copy_extra_2708(0);
        v210 = v235;
        v236 = "";
        if (v235)
        {
          v236 = v235;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "FlatStore.c", 488, "pageEnd + newEntrySize <= pageSize", v236);
        goto LABEL_479;
      }

      if (*v12)
      {
        *v292 = v309;
        v175 = FlatStorePageEntryWrite2_3163(v42, &v306, (v12 + 271), v298);
LABEL_458:
        *v42 = v175;
        v200 = 64 << *(v42 + 2);
        v201 = *(v291 + 408);
        if (v201 >= 1)
        {
          v202 = (v291 + 432);
          v203 = 1;
          while (1)
          {
            v204 = *v202;
            if (*v202 && (v205 = v204[1], v205 + 1 >= 2) && v205 <= v42 && (v207 = v204[2], v205 - v207 + v204[3] > v42))
            {
              v206 = v42 - v205 + v207;
              if (v203 >= v201)
              {
                goto LABEL_470;
              }
            }

            else
            {
              v206 = -1;
              if (v203 >= v201)
              {
                goto LABEL_470;
              }
            }

            ++v203;
            ++v202;
            if (v206 != -1)
            {
              goto LABEL_470;
            }
          }
        }

        v206 = -1;
LABEL_470:
        bit_vector_set_4242((v291 + 4536), (v206 >> 17));
        if ((v206 >> 17) != (v206 + v200) >> 17)
        {
          bit_vector_set_4242((v291 + 4536), (v206 >> 17) + 1);
        }

        v12[6] = v175;
        if (!v287)
        {
          v12[9] = v5 + v49;
        }

        memcpy(v12 + 276, __s2, v302);
        result = 0;
        v12[275] = v302;
        goto LABEL_475;
      }

      v176 = v12[2];
      v12[2] = v176 + 1;
      *v292 = v309;
      if (v176 != v61)
      {
        v77 = v291;
        v239 = __si_assert_copy_extra_2708(*(v291 + 376));
        v79 = v239;
        v240 = "";
        if (v239)
        {
          v240 = v239;
        }

        __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 511, "termID == getNum(newEntry.termInfo.termInfo.termId.ptr)", v240);
        goto LABEL_548;
      }

      v177 = v42 + 8;
      if (v49 > 0x7F)
      {
        if (v49 >> 14)
        {
          if (v49 >> 21)
          {
            if (v49 >> 28)
            {
              v182 = v177 + v298;
              *v182 = -16;
              *(v182 + 1) = v49;
              v178 = v298 + 5;
            }

            else
            {
              v181 = (v177 + v298);
              *v181 = HIBYTE(v49) | 0xE0;
              v181[1] = BYTE2(v49);
              v181[2] = BYTE1(v49);
              v178 = v298 + 4;
              v181[3] = v49;
            }
          }

          else
          {
            v180 = (v177 + v298);
            *v180 = BYTE2(v49) | 0xC0;
            v180[1] = BYTE1(v49);
            v178 = v298 + 3;
            v180[2] = v49;
          }
        }

        else
        {
          v179 = (v177 + v298);
          *v179 = BYTE1(v49) | 0x80;
          v178 = v298 + 2;
          v179[1] = v49;
        }
      }

      else
      {
        v178 = v298 + 1;
        *(v177 + v298) = v49;
      }

      if (v5 > 0x7F)
      {
        if (v5 >> 14)
        {
          if (v5 >> 21)
          {
            if (v5 >> 28)
            {
              v187 = v177 + v178;
              *v187 = -16;
              *(v187 + 1) = v5;
              v183 = v178 + 5;
            }

            else
            {
              v186 = (v177 + v178);
              *v186 = BYTE3(v5) | 0xE0;
              v186[1] = BYTE2(v5);
              v186[2] = BYTE1(v5);
              v183 = v178 + 4;
              v186[3] = v5;
            }
          }

          else
          {
            v185 = (v177 + v178);
            *v185 = BYTE2(v5) | 0xC0;
            v185[1] = BYTE1(v5);
            v183 = v178 + 3;
            v185[2] = v5;
          }
        }

        else
        {
          v184 = (v177 + v178);
          *v184 = BYTE1(v5) | 0x80;
          v183 = v178 + 2;
          v184[1] = v5;
        }
      }

      else
      {
        v183 = v178 + 1;
        *(v177 + v178) = v5;
      }

      if (v49)
      {
        if (v49 >= 0x20 && v183 + v42 - &v41[v56] + 8 >= 0x20)
        {
          v188 = v49 & 0xFFFFFFE0;
          v195 = (v183 + v42 + 24);
          v196 = &v41[v56 + 16];
          v197 = v188;
          do
          {
            v198 = *v196;
            *(v195 - 1) = *(v196 - 1);
            *v195 = v198;
            v195 += 2;
            v196 += 32;
            v197 -= 32;
          }

          while (v197);
          v183 += v188;
          if (v188 == v49)
          {
            goto LABEL_445;
          }
        }

        else
        {
          v188 = 0;
        }

        v189 = v49 - v188;
        v190 = &v41[v188 + v56];
        v191 = v183;
        do
        {
          v192 = *v190++;
          v183 = v191 + 1;
          *(v177 + v191++) = v192;
          --v189;
        }

        while (v189);
      }

LABEL_445:
      if (v61 > 0x7F)
      {
        if (v61 >> 14)
        {
          if (v61 >> 21)
          {
            v199 = v177 + v183;
            if (v61 >> 28)
            {
              *v199 = -16;
              *(v199 + 1) = v61;
              v175 = v183 + 5;
            }

            else
            {
              *v199 = HIBYTE(v61) | 0xE0;
              *(v199 + 1) = BYTE2(v61);
              *(v199 + 2) = BYTE1(v61);
              v175 = v183 + 4;
              *(v199 + 3) = v61;
            }
          }

          else
          {
            v194 = (v177 + v183);
            *v194 = BYTE2(v61) | 0xC0;
            v194[1] = BYTE1(v61);
            v175 = v183 + 3;
            v194[2] = v61;
          }
        }

        else
        {
          v193 = (v177 + v183);
          *v193 = BYTE1(v61) | 0x80;
          v175 = v183 + 2;
          v193[1] = v61;
        }
      }

      else
      {
        v175 = v183 + 1;
        *(v177 + v183) = v61;
      }

      goto LABEL_458;
    }

    if (v288 && v19 <= 0xFFF7)
    {
      v168 = reallocBlock(v291, v6, v67 + v298, v288);
      if (v168)
      {
        if (v12[7])
        {
          *(v12 + 7) = v168;
        }

        if (HIDWORD(v168))
        {
          v169 = 0;
        }

        else
        {
          v169 = v168 << 6;
        }

        v170 = storageResolvePtr(v291 + 160, v169, 8, 1);
        v171 = storageResolvePtr(v291 + 160, v169, 64 << *(v170 + 2), 1);
        v19 = (64 << *(v171 + 2)) - 8;
        v298 = *v171;
        v167 = v67 + v298;
        if (v67 + v298 > v19)
        {
          v77 = v291;
          v172 = __si_assert_copy_extra_2708(*(v291 + 376));
          v79 = v172;
          v173 = "";
          if (v172)
          {
            v173 = v172;
          }

          __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 469, "pageEnd + newEntrySize <= pageSize", v173);
          goto LABEL_548;
        }

LABEL_415:
        v42 = v171;
        v41 = __s2;
        v56 = v5;
        goto LABEL_416;
      }

LABEL_489:
      v12[1] = -1;
      result = 1;
      goto LABEL_475;
    }

    if (v19 <= 0xFFF7 && extendBlock(v291, v6, v67 + v298))
    {
      v174 = storageResolvePtr(v291 + 160, v48, 8, 1);
      v171 = storageResolvePtr(v291 + 160, v48, 64 << *(v174 + 2), 1);
      v19 = (64 << *(v171 + 2)) - 8;
      if (v167 > v19)
      {
        v50 = v291;
        v268 = __si_assert_copy_extra_2708(*(v291 + 376));
        v92 = v268;
        v269 = "";
        if (v268)
        {
          v269 = v268;
        }

        __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 473, "pageEnd + newEntrySize <= pageSize", v269);
        goto LABEL_570;
      }

      goto LABEL_415;
    }

    v31 = v12 + 271;
    *(v12 + 3) = 0;
    *(v12 + 4) = 0;
    *(v12 + 40) = 0;
    v28 = 0uLL;
LABEL_27:
    *v31 = v28;
    result = 1;
    goto LABEL_475;
  }

  v283 = v14;
  v285 = v19;
  v296 = v12;
  v297 = (v12 + 276);
  v33 = v5;
  while (1)
  {
    if (*v12)
    {
      v209 = __si_assert_copy_extra_2708(0);
      v210 = v209;
      v211 = "";
      if (v209)
      {
        v211 = v209;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FlatStore.c", 232, "ms->type == kTermInfoTypeId", v211);
      goto LABEL_479;
    }

    v34 = FlatStorePageEntryRead(v300, v18, __n, v33, 0);
    v35 = LODWORD(__n[0]);
    v36 = HIDWORD(__n[0]);
    v37 = HIDWORD(__n[0]) + LODWORD(__n[0]);
    if ((HIDWORD(__n[0]) + LODWORD(__n[0])) > 0x1000)
    {
      v212 = isExFat(*(v13 + 152));
      v213 = __si_assert_copy_extra_2708(*(v13 + 376));
      v214 = v213;
      v215 = "";
      if (v213)
      {
        v215 = v213;
      }

      v216 = *(v13 + 384);
      v217 = *(v13 + 392);
      if (!v212)
      {
        __message_assert("%s:%u: failed assertion '%s' %s %ld, ps:%d, pe:%d, pk:%d, po:%llx, ss:%llx se:%llx", "FlatStore.c", 248, "oldEntry.pfxLen + oldEntry.len <= CMPBUFFER_SIZE", v215, v36 + v35, v285, v18, v294, v283, *(v13 + 384), v217);
        free(v214);
        if (__valid_fsp(*(v13 + 376)))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      si_analytics_log_3138("%s:%u: failure log '%s' %s %ld, ps:%d, pe:%d, pk:%d, po:%llx, ss:%llx se:%llx", "FlatStore.c", 242, "oldEntry.pfxLen + oldEntry.len <= CMPBUFFER_SIZE", v215, v36 + v35, v285, v18, v294, v283, *(v13 + 384), v217);
      free(v214);
      v296[1] = -1;
      result = 1;
      goto LABEL_475;
    }

    v38 = v34;
    v18 = __n[1];
    memcpy(&v312[HIDWORD(__n[0])], __n[1], LODWORD(__n[0]));
    v5 = v37 >= v302 ? v302 : v37;
    v39 = memcmp(v312, __s2, v5);
    v40 = v39 ? v39 : v37 - v302;
    if (v40 >= 1)
    {
      break;
    }

    if (!v40)
    {
      if (*v296)
      {
        v77 = v13;
        v243 = __si_assert_copy_extra_2708(*(v13 + 376));
        v79 = v243;
        v244 = "";
        if (v243)
        {
          v244 = v243;
        }

        __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 392, "ms->type == kTermInfoTypeId", v244);
        goto LABEL_548;
      }

      *v292 = v311;
      v296[6] = v38;
      if (!v287)
      {
        v296[9] = v302;
      }

      memcpy(&v297[v36], v18, v35);
      result = 0;
      v296[275] = v302;
      goto LABEL_475;
    }

    memcpy(&v297[v36], v18, v35);
    v12 = v296;
    v296[275] = v37;
    v33 = v38;
    LODWORD(v18) = v298;
    if (v38 >= v298)
    {
      v41 = __s2;
      v42 = v300;
      v14 = v283;
      if (!v5)
      {
        goto LABEL_55;
      }

LABEL_52:
      v47 = 0;
      while (*(v12 + v47 + 1104) == v41[v47])
      {
        if (v5 == ++v47)
        {
          goto LABEL_55;
        }
      }

      v48 = v14;
      LODWORD(v5) = v47;
      goto LABEL_74;
    }
  }

  v306 = v302;
  v307 = 0;
  if (!v287)
  {
    v296[9] = v302;
  }

  v50 = v13;
  v51 = __s2;
  v52 = v300;
  if (*v296)
  {
    v241 = __si_assert_copy_extra_2708(0);
    v210 = v241;
    v242 = "";
    if (v241)
    {
      v242 = v241;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FlatStore.c", 268, "ms->type == kTermInfoTypeId", v242);
    goto LABEL_479;
  }

  if (!v33)
  {
    LODWORD(v54) = 0;
    v59 = v302;
    goto LABEL_112;
  }

  v53 = v296[275];
  if (v53 >= v302)
  {
    v54 = v302;
  }

  else
  {
    v54 = v53;
  }

  if (v54)
  {
    v55 = 0;
    while (v297[v55] == __s2[v55])
    {
      if (v54 == ++v55)
      {
        goto LABEL_111;
      }
    }

    LODWORD(v54) = v55;
  }

LABEL_111:
  v59 = v302 - v54;
  v307 = v54;
  v306 = v302 - v54;
  if (v302 == v54)
  {
    v253 = __si_assert_copy_extra_2708(*(v13 + 376));
    v92 = v253;
    v254 = "";
    if (v253)
    {
      v254 = v253;
    }

    __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 277, "newEntry.len", v254);
    goto LABEL_570;
  }

LABEL_112:
  v308 = &__s2[v54];
  v309 = *(v296 + 2);
  if (v59 >= 0x80)
  {
    if (v59 >= 0x4000)
    {
      if (v59 >= 0x200000)
      {
        if (v59 >> 28)
        {
          v64 = 5;
        }

        else
        {
          v64 = 4;
        }
      }

      else
      {
        v64 = 3;
      }
    }

    else
    {
      v64 = 2;
    }
  }

  else
  {
    v64 = 1;
  }

  if (v54 >= 0x80)
  {
    if (v54 >= 0x4000)
    {
      if (v54 >= 0x200000)
      {
        if (v54 >> 28)
        {
          v68 = 5;
        }

        else
        {
          v68 = 4;
        }
      }

      else
      {
        v68 = 3;
      }
    }

    else
    {
      v68 = 2;
    }
  }

  else
  {
    v68 = 1;
  }

  v69 = v309;
  if (v309 >= 0x80)
  {
    if (v309 >= 0x4000)
    {
      if (v309 >= 0x200000)
      {
        if (v309 >> 28)
        {
          v70 = 5;
        }

        else
        {
          v70 = 4;
        }
      }

      else
      {
        v70 = 3;
      }
    }

    else
    {
      v70 = 2;
    }
  }

  else
  {
    v70 = 1;
  }

  v282 = v64 + v59 + v68 + v70;
  v71 = v282 + v298;
  v295 = v282 + v298;
  if (v282 + v298 <= v285)
  {
    goto LABEL_180;
  }

  if (v288 && v285 <= 0xFFF7)
  {
    if (v298 != *v300)
    {
      v264 = __si_assert_copy_extra_2708(*(v291 + 376));
      v265 = v264;
      v266 = "";
      if (v264)
      {
        v266 = v264;
      }

      __message_assert("%s:%u: failed assertion '%s' %s flat store %d != %d", "FlatStore.c", 289, "(int)pageEnd==storePageEnd(page)", v266, v298, *v300);
      v267 = v265;
      goto LABEL_563;
    }

    v72 = reallocBlock(v291, v6, v282 + v298, v288);
    if (v72)
    {
      v280 = v309;
      v73 = v59;
      *(v296 + 7) = v72;
      v289 = v72;
      if (HIDWORD(v72))
      {
        v74 = 0;
      }

      else
      {
        v74 = v72 << 6;
      }

      v75 = storageResolvePtr(v291 + 160, v74, 8, 1);
      v76 = storageResolvePtr(v291 + 160, v74, 64 << *(v75 + 2), 1);
      v52 = v76;
      if (v298 == *v76)
      {
        v285 = (64 << *(v76 + 2)) - 8;
        v51 = __s2;
        v59 = v73;
        v71 = v282 + v298;
        v69 = v280;
        if (v285 <= v298)
        {
          v77 = v291;
          v78 = __si_assert_copy_extra_2708(*(v291 + 376));
          v79 = v78;
          v80 = "";
          if (v78)
          {
            v80 = v78;
          }

          __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 302, "pageEnd<pageSize", v80);
          goto LABEL_548;
        }

LABEL_180:
        if (v285 <= v298)
        {
          v77 = v291;
          v245 = __si_assert_copy_extra_2708(*(v291 + 376));
          v79 = v245;
          v246 = "";
          if (v245)
          {
            v246 = v245;
          }

          __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 318, "pageEnd < pageSize", v246);
          goto LABEL_548;
        }

        if (v71 <= v285)
        {
          v83 = v296[2];
          if (!*v296)
          {
            v296[2] = v83 + 1;
          }

          *v292 = v309;
          if (v83 == v69)
          {
            v304 = 0u;
            v305 = 0u;
            FlatStorePageEntryRead(v52, v298, &v304, v33, 0);
            v84 = &__s2[v54];
            if (v54 == DWORD1(v304))
            {
              if (v304 >= v59)
              {
                v85 = v59;
              }

              else
              {
                v85 = v304;
              }

              if (v85)
              {
                v86 = 0;
                while (*(*(&v304 + 1) + v86) == __s2[v54 + v86])
                {
                  if (v85 == ++v86)
                  {
                    goto LABEL_195;
                  }
                }

                LODWORD(v85) = v86;
                v87 = (v304 - v86);
                if (v304 <= v86)
                {
LABEL_205:
                  v50 = v291;
                  v91 = __si_assert_copy_extra_2708(*(v291 + 376));
                  v92 = v91;
                  v93 = "";
                  if (v91)
                  {
                    v93 = v91;
                  }

                  __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 341, "i < entry.len", v93);
                  goto LABEL_570;
                }

LABEL_196:
                if (v85 > v59)
                {
                  v50 = v291;
                  v251 = __si_assert_copy_extra_2708(*(v291 + 376));
                  v92 = v251;
                  v252 = "";
                  if (v251)
                  {
                    v252 = v251;
                  }

                  __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 342, "i<=newEntry.len", v252);
                  goto LABEL_570;
                }

                if (!v85)
                {
                  v89 = v33;
                  memmove(v52 + v282 + v33 + 8, v52 + v33 + 8, v298 - v33);
                  v90 = 0;
                  goto LABEL_322;
                }

                if (v304 >= 0x80)
                {
                  if (v304 >= 0x4000)
                  {
                    if (v304 >= 0x200000)
                    {
                      if (v304 >> 28)
                      {
                        v88 = 5;
                      }

                      else
                      {
                        v88 = 4;
                      }
                    }

                    else
                    {
                      v88 = 3;
                    }
                  }

                  else
                  {
                    v88 = 2;
                  }
                }

                else
                {
                  v88 = 1;
                }

                v279 = v59;
                v281 = v69;
                if (DWORD1(v304) >= 0x80)
                {
                  if (DWORD1(v304) >= 0x4000)
                  {
                    if (DWORD1(v304) >= 0x200000)
                    {
                      if (DWORD1(v304) >> 28)
                      {
                        v94 = 5;
                      }

                      else
                      {
                        v94 = 4;
                      }
                    }

                    else
                    {
                      v94 = 3;
                    }
                  }

                  else
                  {
                    v94 = 2;
                  }
                }

                else
                {
                  v94 = 1;
                }

                v95 = v305;
                if (v305 >> 28)
                {
                  v96 = 5;
                }

                else
                {
                  v96 = 4;
                }

                if (v305 >= 0x200000)
                {
                  v97 = v96;
                }

                else
                {
                  v97 = 3;
                }

                if (v305 >= 0x4000)
                {
                  v98 = v97;
                }

                else
                {
                  v98 = 2;
                }

                if (v305 >= 0x80)
                {
                  v99 = v98;
                }

                else
                {
                  v99 = 1;
                }

                v100 = v88 + v304 + v94 + v99;
                v101 = (*(&v304 + 1) + v85);
                *(&v304 + 1) = v101;
                v102 = v85 + DWORD1(v304);
                DWORD1(v304) += v85;
                LODWORD(v304) = v87;
                v286 = v87 >> 28;
                if (v87 >> 28)
                {
                  v103 = 5;
                }

                else
                {
                  v103 = 4;
                }

                if (v87 >= 0x200000)
                {
                  v104 = v103;
                }

                else
                {
                  v104 = 3;
                }

                if (v87 >= 0x4000)
                {
                  v105 = v104;
                }

                else
                {
                  v105 = 2;
                }

                if (v87 >= 0x80)
                {
                  v106 = v105;
                }

                else
                {
                  v106 = 1;
                }

                v290 = v102 >> 28;
                if (v102 >> 28)
                {
                  v107 = 5;
                }

                else
                {
                  v107 = 4;
                }

                if (v102 >= 0x200000)
                {
                  v108 = v107;
                }

                else
                {
                  v108 = 3;
                }

                if (v102 >= 0x4000)
                {
                  v109 = v108;
                }

                else
                {
                  v109 = 2;
                }

                if (v102 >= 0x80)
                {
                  v110 = v109;
                }

                else
                {
                  v110 = 1;
                }

                v284 = v305 >> 28;
                if (v305 >> 28)
                {
                  v111 = 5;
                }

                else
                {
                  v111 = 4;
                }

                if (v305 >= 0x200000)
                {
                  v112 = v111;
                }

                else
                {
                  v112 = 3;
                }

                if (v305 >= 0x4000)
                {
                  v113 = v112;
                }

                else
                {
                  v113 = 2;
                }

                if (v305 >= 0x80)
                {
                  v114 = v113;
                }

                else
                {
                  v114 = 1;
                }

                v115 = v52 + 4;
                v116 = v282 + v33;
                v293 = v106 + v87 + v110 + v114;
                v301 = v100;
                memmove(v52 + v293 + v116 + 8, v52 + v100 + v33 + 8, v298 - (v100 + v33));
                v117 = v52 + v116 + 8;
                if (v87 >= 0x80)
                {
                  v119 = v101;
                  if (v87 >= 0x4000)
                  {
                    v51 = __s2;
                    if (v87 >= 0x200000)
                    {
                      v118 = 4;
                      if (v286)
                      {
                        v118 = 5;
                      }
                    }

                    else
                    {
                      v118 = 3;
                    }
                  }

                  else
                  {
                    v118 = 2;
                    v51 = __s2;
                  }
                }

                else
                {
                  v118 = 1;
                  v119 = v101;
                  v51 = __s2;
                }

                v120 = &v117[v118];
                if (v102 >= 0x80)
                {
                  if (v102 >= 0x4000)
                  {
                    if (v102 >= 0x200000)
                    {
                      v121 = 4;
                      if (v290)
                      {
                        v121 = 5;
                      }
                    }

                    else
                    {
                      v121 = 3;
                    }
                  }

                  else
                  {
                    v121 = 2;
                  }
                }

                else
                {
                  v121 = 1;
                }

                memmove(&v120[v121], v119, v87);
                if (v87 > 0x7F)
                {
                  if (v87 >> 14)
                  {
                    if (v87 >> 21)
                    {
                      if (v286)
                      {
                        *v117 = -16;
                        *(v117 + 1) = v87;
                        v122 = v116 + 5;
                      }

                      else
                      {
                        *v117 = BYTE3(v87) | 0xE0;
                        v117[1] = BYTE2(v87);
                        v117[2] = BYTE1(v87);
                        v122 = v116 + 4;
                        v117[3] = v87;
                      }
                    }

                    else
                    {
                      *v117 = BYTE2(v87) | 0xC0;
                      v117[1] = BYTE1(v87);
                      v122 = v116 + 3;
                      v117[2] = v87;
                    }
                  }

                  else
                  {
                    *v117 = BYTE1(v87) | 0x80;
                    v122 = v116 + 2;
                    v117[1] = v87;
                  }
                }

                else
                {
                  v122 = v116 + 1;
                  *v117 = v87;
                }

                v69 = v281;
                if (v102 > 0x7F)
                {
                  if (v102 >> 14)
                  {
                    if (v102 >> 21)
                    {
                      if (v290)
                      {
                        v127 = v115 + v122;
                        *v127 = -16;
                        *(v127 + 1) = v102;
                        v123 = v122 + 5;
                      }

                      else
                      {
                        v126 = v115 + v122;
                        *v126 = HIBYTE(v102) | 0xE0;
                        v126[1] = BYTE2(v102);
                        v126[2] = BYTE1(v102);
                        v123 = v122 + 4;
                        v126[3] = v102;
                      }
                    }

                    else
                    {
                      v125 = v115 + v122;
                      *v125 = BYTE2(v102) | 0xC0;
                      v125[1] = BYTE1(v102);
                      v123 = v122 + 3;
                      v125[2] = v102;
                    }
                  }

                  else
                  {
                    v124 = v115 + v122;
                    *v124 = BYTE1(v102) | 0x80;
                    v123 = v122 + 2;
                    v124[1] = v102;
                  }
                }

                else
                {
                  v123 = v122 + 1;
                  *(v115 + v122) = v102;
                }

                v128 = v123 + v87;
                if (v95 > 0x7F)
                {
                  if (v95 >> 14)
                  {
                    if (v95 >> 21)
                    {
                      v131 = v115 + v128;
                      if (v284)
                      {
                        *v131 = -16;
                        *(v131 + 1) = v95;
                      }

                      else
                      {
                        *v131 = HIBYTE(v95) | 0xE0;
                        v131[1] = BYTE2(v95);
                        v131[2] = BYTE1(v95);
                        v131[3] = v95;
                      }
                    }

                    else
                    {
                      v130 = v115 + v128;
                      *v130 = BYTE2(v95) | 0xC0;
                      v130[1] = BYTE1(v95);
                      v130[2] = v95;
                    }
                  }

                  else
                  {
                    v129 = v115 + v128;
                    *v129 = BYTE1(v95) | 0x80;
                    v129[1] = v95;
                  }
                }

                else
                {
                  *(v115 + v128) = v95;
                }

                memset(v303, 0, sizeof(v303));
                FlatStorePageEntryRead(v52, v295, v303, v33, v282);
                v84 = &__s2[v54];
                if (v87 != LODWORD(v303[0]))
                {
                  v50 = v291;
                  v255 = __si_assert_copy_extra_2708(*(v291 + 376));
                  v92 = v255;
                  v256 = "";
                  if (v255)
                  {
                    v256 = v255;
                  }

                  __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 357, "entry.len==entryCopy.len", v256);
                  goto LABEL_570;
                }

                if (v102 == DWORD1(v303[0]))
                {
                  v90 = v293 - v301;
                  v59 = v279;
                  if (v293 <= v301)
                  {
                    v89 = v33;
LABEL_322:
                    v132 = v52 + 4;
                    if (v59 > 0x7F)
                    {
                      if (v59 >> 14)
                      {
                        if (v59 >> 21)
                        {
                          if (v59 >> 28)
                          {
                            v137 = v132 + v89;
                            *v137 = -16;
                            *(v137 + 1) = v59;
                            v133 = v89 + 5;
                          }

                          else
                          {
                            v136 = v132 + v89;
                            *v136 = HIBYTE(v59) | 0xE0;
                            v136[1] = BYTE2(v59);
                            v136[2] = BYTE1(v59);
                            v133 = v89 + 4;
                            v136[3] = v59;
                          }
                        }

                        else
                        {
                          v135 = v132 + v89;
                          *v135 = BYTE2(v59) | 0xC0;
                          v135[1] = BYTE1(v59);
                          v133 = v89 + 3;
                          v135[2] = v59;
                        }
                      }

                      else
                      {
                        v134 = v132 + v89;
                        *v134 = BYTE1(v59) | 0x80;
                        v133 = v89 + 2;
                        v134[1] = v59;
                      }
                    }

                    else
                    {
                      v133 = v89 + 1;
                      *(v132 + v89) = v59;
                    }

                    if (v54 > 0x7F)
                    {
                      if (v54 >> 14)
                      {
                        if (v54 >> 21)
                        {
                          if (v54 >> 28)
                          {
                            v142 = v132 + v133;
                            *v142 = -16;
                            *(v142 + 1) = v54;
                            v138 = v133 + 5;
                          }

                          else
                          {
                            v141 = v132 + v133;
                            *v141 = BYTE3(v54) | 0xE0;
                            v141[1] = BYTE2(v54);
                            v141[2] = BYTE1(v54);
                            v138 = v133 + 4;
                            v141[3] = v54;
                          }
                        }

                        else
                        {
                          v140 = v132 + v133;
                          *v140 = BYTE2(v54) | 0xC0;
                          v140[1] = BYTE1(v54);
                          v138 = v133 + 3;
                          v140[2] = v54;
                        }
                      }

                      else
                      {
                        v139 = v132 + v133;
                        *v139 = BYTE1(v54) | 0x80;
                        v138 = v133 + 2;
                        v139[1] = v54;
                      }
                    }

                    else
                    {
                      v138 = v133 + 1;
                      *(v132 + v133) = v54;
                    }

                    if (v59)
                    {
                      if (v59 < 0x20 || (v52 + v138 - v84 + 8) < 0x20)
                      {
                        v143 = 0;
                        goto LABEL_344;
                      }

                      v143 = v59 & 0xFFFFFFE0;
                      v151 = (v52 + v138 + 24);
                      v152 = &v51[v54 + 16];
                      v153 = v143;
                      do
                      {
                        v154 = *v152;
                        *(v151 - 1) = *(v152 - 1);
                        *v151 = v154;
                        v151 += 2;
                        v152 += 32;
                        v153 -= 32;
                      }

                      while (v153);
                      v138 += v143;
                      if (v143 != v59)
                      {
LABEL_344:
                        v144 = v59 - v143;
                        v145 = &v51[v143 + v54];
                        v146 = v138;
                        do
                        {
                          v147 = *v145++;
                          v138 = v146 + 1;
                          *(v132 + v146++) = v147;
                          --v144;
                        }

                        while (v144);
                      }
                    }

                    if (v69 > 0x7F)
                    {
                      if (v69 >> 14)
                      {
                        if (v69 >> 21)
                        {
                          v155 = v132 + v138;
                          if (v69 >> 28)
                          {
                            *v155 = -16;
                            *(v155 + 1) = v69;
                            v148 = v138 + 5;
                          }

                          else
                          {
                            *v155 = HIBYTE(v69) | 0xE0;
                            v155[1] = BYTE2(v69);
                            v155[2] = BYTE1(v69);
                            v148 = v138 + 4;
                            v155[3] = v69;
                          }
                        }

                        else
                        {
                          v150 = v132 + v138;
                          *v150 = BYTE2(v69) | 0xC0;
                          v150[1] = BYTE1(v69);
                          v148 = v138 + 3;
                          v150[2] = v69;
                        }
                      }

                      else
                      {
                        v149 = v132 + v138;
                        *v149 = BYTE1(v69) | 0x80;
                        v148 = v138 + 2;
                        v149[1] = v69;
                      }
                    }

                    else
                    {
                      v148 = v138 + 1;
                      *(v132 + v138) = v69;
                    }

                    v156 = 64 << *(v52 + 2);
                    v157 = *(v291 + 408);
                    if (v157 >= 1)
                    {
                      v158 = (v291 + 432);
                      v159 = 1;
                      while (1)
                      {
                        v160 = *v158;
                        if (*v158 && (v161 = v160[1], v161 + 1 >= 2) && v161 <= v52 && (v163 = v160[2], v161 - v163 + v160[3] > v52))
                        {
                          v162 = v52 + v163 - v161;
                          if (v159 >= v157)
                          {
                            goto LABEL_371;
                          }
                        }

                        else
                        {
                          v162 = -1;
                          if (v159 >= v157)
                          {
                            goto LABEL_371;
                          }
                        }

                        ++v159;
                        ++v158;
                        if (v162 != -1)
                        {
                          goto LABEL_371;
                        }
                      }
                    }

                    v162 = -1;
LABEL_371:
                    bit_vector_set_4242((v291 + 4536), (v162 >> 17));
                    if ((v162 >> 17) != (v162 + v156) >> 17)
                    {
                      bit_vector_set_4242((v291 + 4536), (v162 >> 17) + 1);
                    }

                    *v52 = v90 + v295;
                    if (!v54 || v59)
                    {
                      v296[6] = v148;
                      memcpy(v297, __s2, v302);
                      result = 0;
                      v296[275] = v302;
                      goto LABEL_475;
                    }

                    v261 = __si_assert_copy_extra_2708(0);
                    v262 = v261;
                    v263 = "";
                    if (v261)
                    {
                      v263 = v261;
                    }

                    __message_assert("%s:%u: failed assertion '%s' %s ", "FlatStore.c", 371, "newEntry.len", v263);
                    free(v262);
                    if (!__valid_fs(-1))
                    {
LABEL_552:
                      v227 = 3072;
LABEL_553:
                      *v227 = -559038737;
                      abort();
                    }

LABEL_499:
                    v227 = 2989;
                    goto LABEL_553;
                  }

                  v77 = v291;
                  v259 = __si_assert_copy_extra_2708(*(v291 + 376));
                  v79 = v259;
                  v260 = "";
                  if (v259)
                  {
                    v260 = v259;
                  }

                  __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 359, "len2 <= len1", v260);
                }

                else
                {
                  v77 = v291;
                  v257 = __si_assert_copy_extra_2708(*(v291 + 376));
                  v79 = v257;
                  v258 = "";
                  if (v257)
                  {
                    v258 = v257;
                  }

                  __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 358, "entry.pfxLen==entryCopy.pfxLen", v258);
                }

LABEL_548:
                free(v79);
                v226 = *(v77 + 376);
LABEL_498:
                if (!__valid_fsp(v226))
                {
                  goto LABEL_552;
                }

                goto LABEL_499;
              }
            }

            else
            {
              LODWORD(v85) = 0;
            }

LABEL_195:
            v87 = (v304 - v85);
            if (v304 <= v85)
            {
              goto LABEL_205;
            }

            goto LABEL_196;
          }

          v249 = __si_assert_copy_extra_2708(0);
          v210 = v249;
          v250 = "";
          if (v249)
          {
            v250 = v249;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "FlatStore.c", 325, "termID == getNum(newEntry.termInfo.termInfo.termId.ptr)", v250);
LABEL_479:
          free(v210);
          if (__valid_fs(-1))
          {
LABEL_480:
            MEMORY[0xBAD] = -559038737;
            abort();
          }

LABEL_572:
          MEMORY[0xC00] = -559038737;
          abort();
        }

        v50 = v291;
        v247 = __si_assert_copy_extra_2708(*(v291 + 376));
        v92 = v247;
        v248 = "";
        if (v247)
        {
          v248 = v247;
        }

        __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 319, "pageEnd + newEntrySize <= pageSize", v248);
LABEL_570:
        free(v92);
        v231 = *(v50 + 376);
LABEL_571:
        if (__valid_fsp(v231))
        {
          goto LABEL_480;
        }

        goto LABEL_572;
      }

      v50 = v291;
      v270 = __si_assert_copy_extra_2708(*(v291 + 376));
      v271 = v270;
      v272 = "";
      if (v270)
      {
        v272 = v270;
      }

      __message_assert("%s:%u: failed assertion '%s' %s flat store %d != %d, ptr %d oldPtr %d page %p oldPage %p", "FlatStore.c", 300, "(int)pageEnd==storePageEnd(page)", v272, v298, *v52, v289, v6, v52, v300);
      v267 = v271;
LABEL_563:
      free(v267);
      v226 = *(v50 + 376);
      goto LABEL_498;
    }

    v296[1] = -1;
    result = 1;
  }

  else
  {
    if (v285 <= 0xFFF7 && extendBlock(v291, v6, v282 + v298))
    {
      v81 = storageResolvePtr(v291 + 160, v283, 8, 1);
      v82 = storageResolvePtr(v291 + 160, v283, 64 << *(v81 + 2), 1);
      v285 = (64 << *(v82 + 2)) - 8;
      if (v285 <= v298)
      {
        v77 = v291;
        v273 = __si_assert_copy_extra_2708(*(v291 + 376));
        v79 = v273;
        v274 = "";
        if (v273)
        {
          v274 = v273;
        }

        __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 306, "pageEnd<pageSize", v274);
        goto LABEL_548;
      }

      v52 = v82;
      if (v298 == *v82)
      {
        goto LABEL_180;
      }

      v50 = v291;
      v275 = __si_assert_copy_extra_2708(*(v291 + 376));
      v92 = v275;
      v276 = "";
      if (v275)
      {
        v276 = v275;
      }

      __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 307, "(int)pageEnd==storePageEnd(page)", v276);
      goto LABEL_570;
    }

    *(v296 + 3) = 0;
    *(v296 + 4) = 0;
    result = 1;
    *(v296 + 40) = 0;
  }

LABEL_475:
  v208 = *MEMORY[0x1E69E9840];
  return result;
}

void si_analytics_log_3138(char *a1, ...)
{
  va_start(va, a1);
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  va_copy(&v2[1], va);
  vasprintf(v2, a1, va);
  SISetCrashCStr(v2[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v4 = v2[0];
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s", buf, 0xCu);
  }

  free(v2[0]);
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t FlatStorePageEntryRead(unsigned __int16 *a1, unsigned int a2, int *a3, unsigned int a4, int a5)
{
  v6 = a5 + a4;
  v7 = a1 + 4;
  v8 = v6 + 1;
  v9 = a1 + v6 + 8;
  v10 = *v9;
  if (*v9 < 0)
  {
    if (v10 > 0xBF)
    {
      if (v10 > 0xDF)
      {
        if (v10 > 0xEF)
        {
          v10 = *(v7 + v8);
          LODWORD(v8) = v6 + 5;
        }

        else
        {
          v10 = ((v10 & 0xF) << 24) | (*(v7 + v8) << 16) | (v9[2] << 8) | v9[3];
          LODWORD(v8) = v6 + 4;
        }
      }

      else
      {
        v10 = ((v10 & 0x1F) << 16) | (*(v7 + v8) << 8) | v9[2];
        LODWORD(v8) = v6 + 3;
      }
    }

    else
    {
      v11 = *(v7 + v8) | ((v10 & 0x3F) << 8);
      LODWORD(v8) = v6 + 2;
      v10 = v11;
    }
  }

  *a3 = v10;
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = v8 == 1;
  }

  if (!v12)
  {
    v32 = __si_assert_copy_extra_2708(0);
    v33 = v32;
    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = "";
    }

    v35 = *a1;
    v36 = (64 << *(a1 + 2)) - 8;
    v37 = *a3;
    v38 = _checkFlatPage(a1, a4, a5);
    v39 = "false";
    if (v38)
    {
      v39 = "true";
    }

    __message_assert("%s:%u: failed assertion '%s' %s len:%d cursor:%d, pe:%d, ps:%d, valid cursor:%s", "FlatStore.h", 234, "entry->len > 0 || pageCursor == v2_vInt32Size(0)", v34, v37, v8, v35, v36, v39);
    free(v33);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v13 = v8 + 1;
  v14 = v7 + v8;
  v15 = *v14;
  if (*v14 < 0)
  {
    if (v15 > 0xBF)
    {
      if (v15 > 0xDF)
      {
        if (v15 > 0xEF)
        {
          v15 = *(v7 + v13);
          LODWORD(v13) = v8 + 5;
        }

        else
        {
          v15 = ((v15 & 0xF) << 24) | (*(v7 + v13) << 16) | (v14[2] << 8) | v14[3];
          LODWORD(v13) = v8 + 4;
        }
      }

      else
      {
        v15 = ((v15 & 0x1F) << 16) | (*(v7 + v13) << 8) | v14[2];
        LODWORD(v13) = v8 + 3;
      }
    }

    else
    {
      v16 = *(v7 + v13) | ((v15 & 0x3F) << 8);
      LODWORD(v13) = v8 + 2;
      v15 = v16;
    }
  }

  a3[1] = v15;
  *(a3 + 1) = v7 + v13;
  v17 = v10 + v13;
  v18 = v17 + 1;
  v19 = v7 + v17;
  v20 = *(v7 + v17);
  if (*(v7 + v17) < 0)
  {
    if (v20 > 0xBF)
    {
      if (v20 > 0xDF)
      {
        if (v20 > 0xEF)
        {
          v20 = *(v7 + v18);
          v18 = v17 + 5;
        }

        else
        {
          v20 = ((v20 & 0xF) << 24) | (*(v7 + v18) << 16) | (v19[2] << 8) | v19[3];
          v18 = v17 + 4;
        }
      }

      else
      {
        v20 = ((v20 & 0x1F) << 16) | (*(v7 + v18) << 8) | v19[2];
        v18 = v17 + 3;
      }
    }

    else
    {
      v21 = *(v7 + v18) | ((v20 & 0x3F) << 8);
      v18 = v17 + 2;
      v20 = v21;
    }
  }

  a3[4] = v20;
  if (v18 > a2)
  {
    if (__valid_fs(-1))
    {
      v25 = __si_assert_copy_extra_2708(0);
      v26 = v25;
      v27 = "";
      if (v25)
      {
        v27 = v25;
      }

      si_analytics_log_3138("%s:%u: failed assertion '%s' %s cursor %d should have been <= end %d. len:%d pe:%d ps:%d", "FlatStore.h", 252, "pageCursor <= pageEnd", v27, v18, a2, *a3, *a1, (64 << *(a1 + 2)) - 8);
      free(v26);
      MEMORY[0xB00] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return v18;
}

unint64_t reallocBlock(uint64_t a1, unint64_t a2, unsigned int a3, unint64_t *a4)
{
  v6 = a2;
  v53 = *MEMORY[0x1E69E9840];
  v8 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    v9 = 0;
  }

  else
  {
    v9 = a2 << 6;
  }

  v10 = storageResolvePtr(a1 + 160, v9, 8, 1);
  v11 = storageResolvePtr(a1 + 160, v9, 64 << *(v10 + 2), 1);
  v12 = 64 << *(v11 + 2);
  v13 = a3 + 8;
  LODWORD(v14) = v12;
  do
  {
    v14 = (2 * v14);
  }

  while (v13 > v14);
  if (v12 - 8 < *v11)
  {
    v44 = __si_assert_copy_extra_2708(0);
    v45 = v44;
    v46 = "";
    if (v44)
    {
      v46 = v44;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FlatStore.c", 672, "storePageEnd(page) <= storePageDataSize(page)", v46);
LABEL_67:
    free(v45);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v15 = *(a1 + 408);
  if (v15 >= 1)
  {
    v16 = (a1 + 432);
    v17 = 1;
    while (1)
    {
      v18 = *v16;
      if (*v16 && (v19 = v18[1], v19 + 1 >= 2) && v19 <= v11 && (v21 = v18[2], v19 - v21 + v18[3] > v11))
      {
        v20 = v11 + v21 - v19;
        if (v17 >= v15)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v20 = -1;
        if (v17 >= v15)
        {
          goto LABEL_19;
        }
      }

      ++v17;
      ++v16;
      if (v20 != -1)
      {
        goto LABEL_19;
      }
    }
  }

  v20 = -1;
LABEL_19:
  bit_vector_set_4242((a1 + 4536), (v20 >> 17));
  if ((v20 >> 17) != (v20 + v12) >> 17)
  {
    bit_vector_set_4242((a1 + 4536), (v20 >> 17) + 1);
  }

  if (storageExtendOffset(a1 + 160, v9, v12, v14))
  {
    v22 = storageResolvePtr(a1 + 160, v9, 8, 1);
    *(storageResolvePtr(a1 + 160, v9, 64 << *(v22 + 2), 1) + 2) = __clz(__rbit32(v14 >> 6));
    if (v9 >= *(a1 + 392))
    {
      v23 = __si_assert_copy_extra_2708(*(a1 + 376));
      v24 = v23;
      v25 = "";
      if (v23)
      {
        v25 = v23;
      }

      __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 677, "flatStoreGetOffset(info) < storageGetCount(store)", v25);
      goto LABEL_73;
    }

    goto LABEL_60;
  }

  if (!a4)
  {
    v6 = 0;
    goto LABEL_60;
  }

  memset(v52, 0, sizeof(v52));
  v51 = 0;
  if (v14 > 0x10000)
  {
    v47 = __si_assert_copy_extra_2708(0);
    v45 = v47;
    v48 = "";
    if (v47)
    {
      v48 = v47;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FlatStore.c", 684, "reSize<=4096*16", v48);
    goto LABEL_67;
  }

  v6 = storageGrowOffset(a1 + 160, v9, v12, v14, v52, &v51);
  if (v6)
  {
    storageResolvePtr(a1 + 160, v6, v14, 1);
    if (v8)
    {
      v6 = 0;
    }

    else
    {
      v6 = (v6 >> 6);
    }
  }

  *a4 = v6;
  v26 = v51;
  if (v51 < 1)
  {
    if (!v6)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v27 = v52;
    do
    {
      v29 = *v27++;
      v28 = v29;
      bit_vector_set_4242((a1 + 4536), (v29 >> 17));
      if ((v29 >> 17) != (v29 + 8) >> 17)
      {
        bit_vector_set_4242((a1 + 4536), (v28 >> 17) + 1);
      }

      --v26;
    }

    while (v26);
    v6 = *a4;
    if (!*a4)
    {
      goto LABEL_60;
    }
  }

  if (HIDWORD(v6))
  {
    v30 = 0;
  }

  else
  {
    v30 = v6 << 6;
  }

  if (v30 >= *(a1 + 392))
  {
    v49 = __si_assert_copy_extra_2708(*(a1 + 376));
    v24 = v49;
    v50 = "";
    if (v49)
    {
      v50 = v49;
    }

    __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 689, "flatStoreGetOffset(*newOffset) < storageGetCount(store)", v50);
LABEL_73:
    free(v24);
    if (__valid_fsp(*(a1 + 376)))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v31 = storageResolvePtr(a1 + 160, v30, 8, 1);
  v32 = storageResolvePtr(a1 + 160, v30, 64 << *(v31 + 2), 1);
  v33 = v32;
  v34 = 64 << *(v32 + 2);
  v35 = *(a1 + 408);
  if (v35 >= 1)
  {
    v36 = (a1 + 432);
    v37 = 1;
    while (1)
    {
      v38 = *v36;
      if (*v36 && (v39 = v38[1], v39 + 1 >= 2) && v39 <= v32 && (v41 = v38[2], v39 - v41 + v38[3] > v32))
      {
        v40 = v32 - v39 + v41;
        if (v37 >= v35)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v40 = -1;
        if (v37 >= v35)
        {
          goto LABEL_57;
        }
      }

      ++v37;
      ++v36;
      if (v40 != -1)
      {
        goto LABEL_57;
      }
    }
  }

  v40 = -1;
LABEL_57:
  bit_vector_set_4242((a1 + 4536), (v40 >> 17));
  if ((v40 >> 17) != (v40 + v34) >> 17)
  {
    bit_vector_set_4242((a1 + 4536), (v40 >> 17) + 1);
  }

  *(v33 + 2) = __clz(__rbit32(v14 >> 6));
  v6 = *a4;
LABEL_60:
  v42 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t extendBlock(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a2 << 6;
  v6 = storageResolvePtr(a1 + 160, a2 << 6, 8, 1);
  v7 = storageResolvePtr(a1 + 160, v5, 64 << *(v6 + 2), 1);
  v8 = 64 << *(v7 + 2);
  if ((v8 - 8) < *v7)
  {
    v15 = __si_assert_copy_extra_2708(*(a1 + 376));
    v16 = v15;
    v17 = "";
    if (v15)
    {
      v17 = v15;
    }

    __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 648, "storePageEnd(page) <= storePageDataSize(page)", v17);
    free(v16);
    if (__valid_fsp(*(a1 + 376)))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v9 = a3 + 8;
  LODWORD(v10) = 64 << *(v7 + 2);
  do
  {
    v10 = (2 * v10);
  }

  while (v9 > v10);
  result = storageExtendOffset(a1 + 160, v5, v8, v10);
  if (result)
  {
    v12 = result;
    v13 = storageResolvePtr(a1 + 160, v5, 8, 1);
    v14 = storageResolvePtr(a1 + 160, v5, 64 << *(v13 + 2), 1);
    result = v12;
    *(v14 + 2) = __clz(__rbit32(v10 >> 6));
  }

  return result;
}

uint64_t FlatStorePageEntryWrite2_3163(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t a4)
{
  v6 = a1 + 8;
  v7 = *a2;
  if (*a2 > 0x7F)
  {
    if (v7 >> 14)
    {
      if (v7 >> 21)
      {
        if (v7 >> 28)
        {
          v12 = v6 + a4;
          *v12 = -16;
          *(v12 + 1) = v7;
          v8 = a4 + 5;
        }

        else
        {
          v11 = (v6 + a4);
          *v11 = HIBYTE(v7) | 0xE0;
          v11[1] = BYTE2(v7);
          v11[2] = BYTE1(v7);
          v8 = a4 + 4;
          v11[3] = v7;
        }
      }

      else
      {
        v10 = (v6 + a4);
        *v10 = BYTE2(v7) | 0xC0;
        v10[1] = BYTE1(v7);
        v8 = a4 + 3;
        v10[2] = v7;
      }
    }

    else
    {
      v9 = (v6 + a4);
      *v9 = BYTE1(v7) | 0x80;
      v8 = a4 + 2;
      v9[1] = v7;
    }
  }

  else
  {
    v8 = a4 + 1;
    *(v6 + a4) = v7;
  }

  v13 = a2[1];
  if (v13 <= 0x7F)
  {
    v14 = v8 + 1;
    *(v6 + v8) = v13;
    if (!*a2)
    {
      goto LABEL_26;
    }

LABEL_23:
    v19 = 0;
    do
    {
      *(v14 + a1 + 8 + v19) = *(*(a2 + 1) + v19);
      ++v19;
    }

    while (v19 < *a2);
    v14 += v19;
    goto LABEL_26;
  }

  if (v13 >> 14)
  {
    if (v13 >> 21)
    {
      if (v13 >> 28)
      {
        v18 = v6 + v8;
        *v18 = -16;
        *(v18 + 1) = v13;
        v14 = v8 + 5;
        if (!*a2)
        {
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      v17 = (v6 + v8);
      *v17 = HIBYTE(v13) | 0xE0;
      v17[1] = BYTE2(v13);
      v17[2] = BYTE1(v13);
      v14 = v8 + 4;
      v17[3] = v13;
      if (*a2)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v16 = (v6 + v8);
      *v16 = BYTE2(v13) | 0xC0;
      v16[1] = BYTE1(v13);
      v14 = v8 + 3;
      v16[2] = v13;
      if (*a2)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    v15 = (v6 + v8);
    *v15 = BYTE1(v13) | 0x80;
    v14 = v8 + 2;
    v15[1] = v13;
    if (*a2)
    {
      goto LABEL_23;
    }
  }

LABEL_26:
  v20 = *(a2 + 2);
  v21 = *a3;
  *a3 = v20;
  v22 = ldb_writeSmallVInt64(a1 + 8, v14, v20 - v21);
  v23 = *(a2 + 3);
  if (v23)
  {
    v24 = a3[1];
    a3[1] = v23;
    v25 = v23 - v24;
  }

  else
  {
    v25 = 0;
  }

  return ldb_writeSmallVInt64(v6, v22, v25);
}

BOOL _checkFlatPage(unsigned __int16 *a1, unsigned int a2, int a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (a3)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 < a2)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v34 = 136316162;
      v35 = "_checkFlatPage";
      v36 = 1024;
      v37 = 181;
      v38 = 1024;
      v39 = a2;
      v40 = 2048;
      v41 = a1 + 4;
      v42 = 1024;
      v43 = v4;
      _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: invalid offset %d, %p (%d)", &v34, 0x28u);
    }

    v9 = __error();
    result = 0;
    *v9 = v7;
    goto LABEL_50;
  }

  v11 = a1 + 4;
  v12 = a2;
  while (1)
  {
    if (v12 >= v5)
    {
      result = v12 == v5;
      goto LABEL_50;
    }

    v13 = v12;
    v14 = v12;
    v15 = v12 + 1;
    v16 = v11 + v14;
    v17 = *(v11 + v14);
    if (*(v11 + v14) < 0)
    {
      if (v17 > 0xBF)
      {
        if (v17 > 0xDF)
        {
          if (v17 > 0xEF)
          {
            v17 = *(v11 + v15);
            LODWORD(v15) = v14 + 5;
          }

          else
          {
            v17 = ((v17 & 0xF) << 24) | (*(v11 + v15) << 16) | (v16[2] << 8) | v16[3];
            LODWORD(v15) = v14 + 4;
          }
        }

        else
        {
          v17 = ((v17 & 0x1F) << 16) | (*(v11 + v15) << 8) | v16[2];
          LODWORD(v15) = v14 + 3;
        }
      }

      else
      {
        v18 = *(v11 + v15) | ((v17 & 0x3F) << 8);
        LODWORD(v15) = v14 + 2;
        v17 = v18;
      }
    }

    v19 = v15;
    v20 = v15 + 1;
    v21 = v11 + v19;
    v22 = *(v11 + v19);
    if ((*(v11 + v19) & 0x80000000) == 0)
    {
      break;
    }

    if (v22 > 0xBF)
    {
      if (v22 > 0xDF)
      {
        if (v22 <= 0xEF)
        {
          v22 = ((v22 & 0xF) << 24) | (*(v11 + v20) << 16) | (v21[2] << 8) | v21[3];
          LODWORD(v20) = v19 + 4;
          break;
        }

        v22 = *(v11 + v20);
        LODWORD(v20) = v19 + 5;
        if (v13)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v22 = ((v22 & 0x1F) << 16) | (*(v11 + v20) << 8) | v21[2];
        LODWORD(v20) = v19 + 3;
        if (v13)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      v23 = *(v11 + v20) | ((v22 & 0x3F) << 8);
      LODWORD(v20) = v19 + 2;
      v22 = v23;
      if (v13)
      {
        goto LABEL_30;
      }
    }

LABEL_31:
    v24 = v17 + v20;
    if (v24 >= v4)
    {
      v30 = *__error();
      v31 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
LABEL_49:
        v32 = __error();
        result = 0;
        *v32 = v30;
        goto LABEL_50;
      }

      v34 = 136316930;
      v35 = "_checkFlatPage";
      v36 = 1024;
      v37 = 204;
      v38 = 1024;
      v39 = a2;
      v40 = 2048;
      v41 = v11;
      v42 = 1024;
      v43 = v4;
      v44 = 1024;
      v45 = v13;
      v46 = 1024;
      v47 = v17;
      v48 = 1024;
      v49 = v22;
LABEL_52:
      _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: invalid offset %d, %p (%d) s:%d l1:%d l2:%d", &v34, 0x3Au);
      goto LABEL_49;
    }

    if (*(v11 + v24) < 0)
    {
      v25 = *(v11 + v24);
      if (v25 > 0xBF)
      {
        v26 = v24 + 5;
        if (v25 <= 0xEF)
        {
          v26 = v24 + 4;
        }

        v12 = v24 + 3;
        if (v25 > 0xDF)
        {
          v12 = v26;
        }
      }

      else
      {
        v12 = v24 + 2;
      }
    }

    else
    {
      v12 = v24 + 1;
    }

    if (v12 > v4)
    {
      v30 = *__error();
      v31 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      v34 = 136316930;
      v35 = "_checkFlatPage";
      v36 = 1024;
      v37 = 213;
      v38 = 1024;
      v39 = a2;
      v40 = 2048;
      v41 = v11;
      v42 = 1024;
      v43 = v4;
      v44 = 1024;
      v45 = v13;
      v46 = 1024;
      v47 = v17;
      v48 = 1024;
      v49 = v22;
      goto LABEL_52;
    }
  }

  if (!v13)
  {
    goto LABEL_31;
  }

LABEL_30:
  if (v17)
  {
    goto LABEL_31;
  }

  v27 = *__error();
  v28 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v34 = 136316930;
    v35 = "_checkFlatPage";
    v36 = 1024;
    v37 = 198;
    v38 = 1024;
    v39 = a2;
    v40 = 2048;
    v41 = v11;
    v42 = 1024;
    v43 = v4;
    v44 = 1024;
    v45 = v13;
    v46 = 1024;
    v47 = 0;
    v48 = 1024;
    v49 = v22;
    _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, "%s:%d: invalid offset %d, %p (%d) s:%d l1:%d l2:%d", &v34, 0x3Au);
  }

  v29 = __error();
  result = 0;
  *v29 = v27;
LABEL_50:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t appendStringFlat(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, unint64_t *a8)
{
  v109 = *MEMORY[0x1E69E9840];
  if (HIDWORD(a3))
  {
    v15 = 0;
  }

  else
  {
    v15 = a3 << 6;
  }

  v16 = storageResolvePtr(a1 + 160, v15, 8, 1);
  v17 = storageResolvePtr(a1 + 160, v15, 64 << *(v16 + 2), 1);
  if (v15 >= *(a1 + 392))
  {
    v87 = __si_assert_copy_extra_2708(*(a1 + 376));
    v88 = v87;
    v89 = "";
    if (v87)
    {
      v89 = v87;
    }

    __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 561, "flatStoreGetOffset(info) < storageGetCount(store)", v89);
    free(v88);
    if (!__valid_fsp(*(a1 + 376)))
    {
LABEL_199:
      v90 = 3072;
LABEL_200:
      *v90 = -559038737;
      abort();
    }

LABEL_190:
    v90 = 2989;
    goto LABEL_200;
  }

  v18 = v17;
  v99 = a3;
  v19 = *v17;
  v20 = *(v17 + 2);
  __n_4 = a4;
  v103 = 0;
  v105 = a6;
  v106 = a7;
  __n = a4;
  if (v19)
  {
    v21 = *(a2 + 1100);
    if (v21 >= a4)
    {
      v22 = a4;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      v23 = 0;
      while (*(a2 + 1104 + v23) == a5[v23])
      {
        if (v22 == ++v23)
        {
          goto LABEL_16;
        }
      }

      LODWORD(v22) = v23;
    }

LABEL_16:
    a4 -= v22;
    __n_4 = a4;
    v103 = v22;
    if (!a4)
    {
      v91 = __si_assert_copy_extra_2708(0);
      v92 = v91;
      v93 = "";
      if (v91)
      {
        v93 = v91;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FlatStore.c", 572, "entry.len", v93);
      free(v92);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }
  }

  else
  {
    LODWORD(v22) = 0;
    *(a2 + 1084) = 0u;
  }

  v24 = (64 << v20) - 8;
  v25 = v22;
  v104 = &a5[v22];
  if (!*a2)
  {
    if (a4 < 0x80)
    {
      v27 = 1;
      if (v22 < 0x80)
      {
        goto LABEL_22;
      }

LABEL_28:
      if (v22 >= 0x4000)
      {
        if (v22 >= 0x200000)
        {
          if (v22 >> 28)
          {
            v28 = 5;
          }

          else
          {
            v28 = 4;
          }

          if (a6 < 0x80)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v28 = 3;
          if (a6 < 0x80)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        v28 = 2;
        if (a6 < 0x80)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_30;
    }

    if (a4 >= 0x4000)
    {
      if (a4 >= 0x200000)
      {
        if (a4 >> 28)
        {
          v27 = 5;
        }

        else
        {
          v27 = 4;
        }

        if (v22 >= 0x80)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v27 = 3;
        if (v22 >= 0x80)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v27 = 2;
      if (v22 >= 0x80)
      {
        goto LABEL_28;
      }
    }

LABEL_22:
    v28 = 1;
    if (a6 < 0x80)
    {
LABEL_23:
      v29 = 1;
LABEL_75:
      v33 = v27 + a4 + v28 + v29;
      goto LABEL_105;
    }

LABEL_30:
    if (a6 >= 0x4000)
    {
      if (a6 >= 0x200000)
      {
        if (a6 >> 28)
        {
          v29 = 5;
        }

        else
        {
          v29 = 4;
        }
      }

      else
      {
        v29 = 3;
      }
    }

    else
    {
      v29 = 2;
    }

    goto LABEL_75;
  }

  if (a4 >= 0x80)
  {
    if (a4 >= 0x4000)
    {
      if (a4 >= 0x200000)
      {
        if (a4 >> 28)
        {
          v26 = 5;
        }

        else
        {
          v26 = 4;
        }
      }

      else
      {
        v26 = 3;
      }
    }

    else
    {
      v26 = 2;
    }
  }

  else
  {
    v26 = 1;
  }

  if (v22 >= 0x80)
  {
    if (v22 >= 0x4000)
    {
      if (v22 >= 0x200000)
      {
        if (v22 >> 28)
        {
          v30 = 5;
        }

        else
        {
          v30 = 4;
        }
      }

      else
      {
        v30 = 3;
      }
    }

    else
    {
      v30 = 2;
    }
  }

  else
  {
    v30 = 1;
  }

  v31 = a6 - *(a2 + 1084);
  if (v31 >= 0x80)
  {
    if (v31 >= 0x4000)
    {
      if (v31 >= 0x200000)
      {
        if (v31 >> 28)
        {
          if (v31 >> 35)
          {
            if (v31 >> 42)
            {
              if (v31 >> 49)
              {
                if (HIBYTE(v31))
                {
                  v32 = 9;
                }

                else
                {
                  v32 = 8;
                }
              }

              else
              {
                v32 = 7;
              }
            }

            else
            {
              v32 = 6;
            }
          }

          else
          {
            v32 = 5;
          }
        }

        else
        {
          v32 = 4;
        }
      }

      else
      {
        v32 = 3;
      }
    }

    else
    {
      v32 = 2;
    }
  }

  else
  {
    v32 = 1;
  }

  v34 = *(a2 + 1092);
  if (!a7)
  {
    v34 = 0;
  }

  v35 = a7 - v34;
  if (v35 >= 0x80)
  {
    if (v35 >= 0x4000)
    {
      if (v35 >= 0x200000)
      {
        if (v35 >> 28)
        {
          if (v35 >> 35)
          {
            if (v35 >> 42)
            {
              if (v35 >> 49)
              {
                if (HIBYTE(v35))
                {
                  v36 = 9;
                }

                else
                {
                  v36 = 8;
                }
              }

              else
              {
                v36 = 7;
              }
            }

            else
            {
              v36 = 6;
            }
          }

          else
          {
            v36 = 5;
          }
        }

        else
        {
          v36 = 4;
        }
      }

      else
      {
        v36 = 3;
      }
    }

    else
    {
      v36 = 2;
    }
  }

  else
  {
    v36 = 1;
  }

  v33 = v26 + a4 + v30 + v32 + v36;
LABEL_105:
  v37 = v33 + v19;
  if (v33 + v19 <= v24)
  {
    goto LABEL_129;
  }

  if (v24 <= 0xFFF7)
  {
    v98 = 64 << *(v17 + 2);
    v39 = *(a1 + 408);
    if (v39 >= 1)
    {
      v40 = (a1 + 432);
      v41 = 1;
      while (1)
      {
        v42 = *v40;
        if (*v40 && (v43 = v42[1], v43 + 1 >= 2) && v43 <= v17 && (v45 = v42[2], v43 - v45 + v42[3] > v17))
        {
          v44 = v17 + v45 - v43;
          if (v41 >= v39)
          {
            goto LABEL_120;
          }
        }

        else
        {
          v44 = -1;
          if (v41 >= v39)
          {
            goto LABEL_120;
          }
        }

        ++v41;
        ++v40;
        if (v44 != -1)
        {
          goto LABEL_120;
        }
      }
    }

    v44 = -1;
LABEL_120:
    v97 = a6;
    bit_vector_set_4242((a1 + 4536), (v44 >> 17));
    if ((v44 >> 17) != (v44 + v98) >> 17)
    {
      bit_vector_set_4242((a1 + 4536), (v44 >> 17) + 1);
    }

    if (!reallocBlock(a1, v99, v37, a8))
    {
      result = 1;
      v56 = -1;
      v57 = 4;
LABEL_185:
      *(a2 + v57) = v56;
      goto LABEL_186;
    }

    if (HIDWORD(*a8))
    {
      v46 = 0;
    }

    else
    {
      v46 = *a8 << 6;
    }

    v47 = storageResolvePtr(a1 + 160, v46, 8, 1);
    v18 = storageResolvePtr(a1 + 160, v46, 64 << *(v47 + 2), 1);
    if (v19 == *v18 || (v48 = *(a1 + 4576), v107 = 0, v49 = _fd_acquire_fd(v48, &v107), v49 == -1))
    {
      v25 = v22;
      if (*a2)
      {
        goto LABEL_130;
      }

      goto LABEL_132;
    }

    v50 = v49;
    bzero(&v108, 0x878uLL);
    v51 = fstatfs(v50, &v108);
    _fd_release_fd(v48, v50, 0, v107);
    v25 = v22;
    LODWORD(a6) = v97;
    if (v51)
    {
LABEL_129:
      if (*a2)
      {
LABEL_130:
        v52 = FlatStorePageEntryWrite2_3163(v18, &__n_4, (a2 + 1084), v19);
LABEL_170:
        v78 = 64 << *(v18 + 2);
        v79 = *(a1 + 408);
        if (v79 >= 1)
        {
          v80 = (a1 + 432);
          v81 = 1;
          while (1)
          {
            v82 = *v80;
            if (*v80 && (v83 = v82[1], v83 + 1 >= 2) && v83 <= v18 && (v85 = v82[2], v83 - v85 + v82[3] > v18))
            {
              v84 = v18 + v85 - v83;
              if (v81 >= v79)
              {
                goto LABEL_182;
              }
            }

            else
            {
              v84 = -1;
              if (v81 >= v79)
              {
                goto LABEL_182;
              }
            }

            ++v81;
            ++v80;
            if (v84 != -1)
            {
              goto LABEL_182;
            }
          }
        }

        v84 = -1;
LABEL_182:
        bit_vector_set_4242((a1 + 4536), (v84 >> 17));
        if ((v84 >> 17) != (v84 + v78) >> 17)
        {
          bit_vector_set_4242((a1 + 4536), (v84 >> 17) + 1);
        }

        *v18 = v52;
        v56 = __n;
        memcpy((a2 + 1104), a5, __n);
        result = 0;
        v57 = 1100;
        goto LABEL_185;
      }

LABEL_132:
      v53 = v18 + 4;
      if (a4 > 0x7F)
      {
        if (a4 >> 14)
        {
          if (a4 >> 21)
          {
            if (a4 >> 28)
            {
              v60 = v53 + v19;
              *v60 = -16;
              *(v60 + 1) = a4;
              v54 = v19 + 5;
            }

            else
            {
              v59 = v53 + v19;
              *v59 = HIBYTE(a4) | 0xE0;
              v59[1] = BYTE2(a4);
              v59[2] = BYTE1(a4);
              v54 = v19 + 4;
              v59[3] = a4;
            }
          }

          else
          {
            v58 = v53 + v19;
            *v58 = BYTE2(a4) | 0xC0;
            v58[1] = BYTE1(a4);
            v54 = v19 + 3;
            v58[2] = a4;
          }
        }

        else
        {
          v55 = v53 + v19;
          *v55 = BYTE1(a4) | 0x80;
          v54 = v19 + 2;
          v55[1] = a4;
        }
      }

      else
      {
        v54 = v19 + 1;
        *(v53 + v19) = a4;
      }

      if (v22 > 0x7F)
      {
        if (v22 >> 14)
        {
          if (v22 >> 21)
          {
            if (v22 >> 28)
            {
              v65 = v53 + v54;
              *v65 = -16;
              *(v65 + 1) = v22;
              v61 = v54 + 5;
            }

            else
            {
              v64 = v53 + v54;
              *v64 = BYTE3(v22) | 0xE0;
              v64[1] = BYTE2(v22);
              v64[2] = BYTE1(v22);
              v61 = v54 + 4;
              v64[3] = v22;
            }
          }

          else
          {
            v63 = v53 + v54;
            *v63 = BYTE2(v22) | 0xC0;
            v63[1] = BYTE1(v22);
            v61 = v54 + 3;
            v63[2] = v22;
          }
        }

        else
        {
          v62 = v53 + v54;
          *v62 = BYTE1(v22) | 0x80;
          v61 = v54 + 2;
          v62[1] = v22;
        }
      }

      else
      {
        v61 = v54 + 1;
        *(v53 + v54) = v22;
      }

      if (!a4)
      {
        goto LABEL_157;
      }

      if (a4 >= 0x20 && (v18 + v61 - &a5[v25] + 8) >= 0x20)
      {
        v66 = a4 & 0xFFFFFFE0;
        v73 = (v18 + v61 + 24);
        v74 = &a5[v25 + 16];
        v75 = v66;
        do
        {
          v76 = *v74;
          *(v73 - 1) = *(v74 - 1);
          *v73 = v76;
          v73 += 2;
          v74 += 32;
          v75 -= 32;
        }

        while (v75);
        v61 += v66;
        if (v66 == a4)
        {
          goto LABEL_157;
        }
      }

      else
      {
        v66 = 0;
      }

      v67 = a4 - v66;
      v68 = &a5[v66 + v25];
      v69 = v61;
      do
      {
        v70 = *v68++;
        v61 = v69 + 1;
        *(v53 + v69++) = v70;
        --v67;
      }

      while (v67);
LABEL_157:
      if (a6 > 0x7F)
      {
        if (a6 >> 14)
        {
          if (a6 >> 21)
          {
            v77 = v53 + v61;
            if (a6 >> 28)
            {
              *v77 = -16;
              *(v77 + 1) = a6;
              v52 = v61 + 5;
            }

            else
            {
              *v77 = BYTE3(a6) | 0xE0;
              v77[1] = BYTE2(a6);
              v77[2] = BYTE1(a6);
              v52 = v61 + 4;
              v77[3] = a6;
            }
          }

          else
          {
            v72 = v53 + v61;
            *v72 = BYTE2(a6) | 0xC0;
            v72[1] = BYTE1(a6);
            v52 = v61 + 3;
            v72[2] = a6;
          }
        }

        else
        {
          v71 = v53 + v61;
          *v71 = BYTE1(a6) | 0x80;
          v52 = v61 + 2;
          v71[1] = a6;
        }
      }

      else
      {
        v52 = v61 + 1;
        *(v53 + v61) = a6;
      }

      goto LABEL_170;
    }

    v94 = __si_assert_copy_extra_2708(0);
    v95 = v94;
    v96 = "";
    if (v94)
    {
      v96 = v94;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FlatStore.c", 601, "(int)pageEnd==storePageEnd(page) || trie_unavailable(t)", v96);
    free(v95);
    if (!__valid_fs(-1))
    {
      goto LABEL_199;
    }

    goto LABEL_190;
  }

  result = 1;
LABEL_186:
  v86 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t burstFlat(uint64_t a1, int *a2, uint64_t a3, unint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3 << 6;
  v8 = storageResolvePtr(a1 + 160, a3 << 6, 8, 1);
  v9 = storageResolvePtr(a1 + 160, v7, 64 << *(v8 + 2), 1);
  v10 = *v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v29 - v11);
  bzero(v40, 0x414uLL);
  memcpy(v12, v9, v10 + 8);
  v13 = *(a1 + 408);
  v29 = 64 << v9[2];
  v30 = v10;
  if (v13 >= 1)
  {
    v14 = (a1 + 432);
    v15 = 1;
    while (1)
    {
      v16 = *v14;
      if (*v14 && (v17 = v16[1], v17 + 1 >= 2) && v17 <= v9 && (v19 = v16[2], v17 - v19 + v16[3] > v9))
      {
        v18 = &v9[v19 - v17];
        if (v15 >= v13)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v18 = -1;
        if (v15 >= v13)
        {
          goto LABEL_13;
        }
      }

      ++v15;
      ++v14;
      if (v18 != -1)
      {
        goto LABEL_13;
      }
    }
  }

  v18 = -1;
LABEL_13:
  bit_vector_set_4242((a1 + 4536), (v18 >> 17));
  if ((v18 >> 17) != (v18 + v29) >> 17)
  {
    bit_vector_set_4242((a1 + 4536), (v18 >> 17) + 1);
  }

  storageFreeOffset(a1 + 160, v7, 64 << v9[2]);
  v31 = *a2;
  v32 = 0;
  v20 = *v12;
  v34 = 0;
  v35 = v12 + 4;
  v33 = 0;
  v36 = 0;
  v37 = v20;
  if (v20 != v30)
  {
    v24 = __si_assert_copy_extra_2708(*(a1 + 376));
    v25 = v24;
    v26 = "";
    if (v24)
    {
      v26 = v24;
    }

    __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 730, "oldPageEnd == iter.pageEnd", v26);
LABEL_28:
    free(v25);
    if (__valid_fsp(*(a1 + 376)))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v38 = 0u;
  for (i = 0u; FlatStorePageIteratorGetNext(&v31, &v38); a4 = insertFromBurst(a1, a2, v40, v21, i, *(&i + 1), a4))
  {
    v21 = (v38 + DWORD1(v38));
    if (v21 > 0x413)
    {
      break;
    }

    memcpy(&v40[DWORD1(v38)], *(&v38 + 1), v38);
  }

  if (v36 != v37)
  {
    v27 = __si_assert_copy_extra_2708(*(a1 + 376));
    v25 = v27;
    v28 = "";
    if (v27)
    {
      v28 = v27;
    }

    __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 739, "iter.pageCursor==iter.pageEnd", v28);
    goto LABEL_28;
  }

  v22 = *MEMORY[0x1E69E9840];
  return a4;
}

uint64_t FlatStorePageIteratorGetNext(uint64_t *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = (a1 + 4);
  if (v3 >= v2)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = v3 + 1;
  v7 = v5 + v3;
  v8 = *(v5 + v3);
  if (*(v5 + v3) < 0)
  {
    if (v8 > 0xBF)
    {
      if (v8 > 0xDF)
      {
        if (v8 > 0xEF)
        {
          v8 = *(v5 + v6);
          v6 = v3 + 5;
        }

        else
        {
          v8 = ((v8 & 0xF) << 24) | (*(v5 + v6) << 16) | (*(v7 + 2) << 8) | *(v7 + 3);
          v6 = v3 + 4;
        }
      }

      else
      {
        v8 = ((v8 & 0x1F) << 16) | (*(v5 + v6) << 8) | *(v7 + 2);
        v6 = v3 + 3;
      }
    }

    else
    {
      v9 = *(v5 + v6) | ((v8 & 0x3F) << 8);
      v6 = v3 + 2;
      v8 = v9;
    }
  }

  *v4 = v6;
  *a2 = v8;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v6 == 1;
  }

  if (!v10)
  {
    v29 = __si_assert_copy_extra_2708(0);
    v30 = v29;
    v31 = "";
    if (v29)
    {
      v31 = v29;
    }

    __message_assert("%s:%u: failed assertion '%s' %s %d, %ld", "FlatStore.h", 424, "entry->len > 0 || iter->pageCursor == v2_vInt32Size(0)", v31, *a2, *v4);
    free(v30);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v11 = v6 + 1;
  v12 = v5 + v6;
  v13 = *(v5 + v6);
  if (*(v5 + v6) < 0)
  {
    if (v13 > 0xBF)
    {
      if (v13 > 0xDF)
      {
        if (v13 > 0xEF)
        {
          v13 = *(v5 + v11);
          v11 = v6 + 5;
        }

        else
        {
          v13 = ((v13 & 0xF) << 24) | (*(v5 + v11) << 16) | (*(v12 + 2) << 8) | *(v12 + 3);
          v11 = v6 + 4;
        }
      }

      else
      {
        v13 = ((v13 & 0x1F) << 16) | (*(v5 + v11) << 8) | *(v12 + 2);
        v11 = v6 + 3;
      }
    }

    else
    {
      v14 = *(v5 + v11) | ((v13 & 0x3F) << 8);
      v11 = v6 + 2;
      v13 = v14;
    }
  }

  *(a2 + 4) = v13;
  *(a2 + 8) = v5 + v11;
  v15 = v11 + v8;
  *v4 = v15;
  if (v15 > v2)
  {
    return 0;
  }

  if (*a1)
  {
    v17 = *(a1 + 4);
    v18 = a1;
    v20 = v2_readVInt64_2873(v5, v4) + v17;
    *(v18 + 4) = v20;
    *(a2 + 16) = v20;
    VInt64_2873 = v2_readVInt64_2873(v18[3], v4);
    if (VInt64_2873)
    {
      v22 = VInt64_2873;
      a1 = v18;
      v23 = *(v18 + 12) + v22;
      *(v18 + 12) = v23;
      *(a2 + 24) = v23;
    }

    else
    {
      *(a2 + 24) = 0;
      a1 = v18;
    }
  }

  else
  {
    v24 = v15 + 1;
    v25 = v5 + v15;
    v26 = *(v5 + v15);
    if (*(v5 + v15) < 0)
    {
      if (v26 > 0xBF)
      {
        if (v26 > 0xDF)
        {
          if (v26 > 0xEF)
          {
            v26 = *(v5 + v24);
            v24 = v15 + 5;
          }

          else
          {
            v26 = ((v26 & 0xF) << 24) | (*(v5 + v24) << 16) | (*(v25 + 2) << 8) | *(v25 + 3);
            v24 = v15 + 4;
          }
        }

        else
        {
          v26 = ((v26 & 0x1F) << 16) | (*(v5 + v24) << 8) | *(v25 + 2);
          v24 = v15 + 3;
        }
      }

      else
      {
        v27 = *(v5 + v24) | ((v26 & 0x3F) << 8);
        v24 = v15 + 2;
        v26 = v27;
      }
    }

    *v4 = v24;
    *(a2 + 16) = v26;
  }

  if (a1[4] > a1[5])
  {
    v32 = __si_assert_copy_extra_2708(0);
    v33 = v32;
    v34 = "";
    if (v32)
    {
      v34 = v32;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FlatStore.h", 463, "iter->pageCursor <= iter->pageEnd", v34);
    free(v33);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return 1;
}

unint64_t dumpFlatData(uint64_t a1, char a2, uint64_t *a3, unint64_t a4, int a5, __n128 a6, __n128 a7, uint64_t a8, _DWORD *a9, void (*a10)(uint64_t, _BYTE *, void, void, uint64_t), uint64_t a11)
{
  v54 = *MEMORY[0x1E69E9840];
  if (HIDWORD(a4))
  {
    v17 = 0;
  }

  else
  {
    v17 = a4 << 6;
  }

  ptr = storage_reader_get_ptr(*a3, a3[1], v17, 8, a6, a7);
  if (ptr == -1)
  {
    goto LABEL_40;
  }

  v21 = *ptr;
  v22 = *(ptr + 2);
  v23 = ((64 << v22) - 8);
  if (v23 < v21)
  {
    if (isExFat(*(a1 + 152)) || isMsDos(*(a1 + 152)) || isFat32(*(a1 + 152)))
    {
      v35 = __si_assert_copy_extra_2708(*(a1 + 376));
      si_analytics_log_3138("%s:%u: failure log '%s' %s flat store, pageSize = %u, pageEnd = %u");
LABEL_39:
      free(v35);
      goto LABEL_40;
    }

    v41 = __si_assert_copy_extra_2708(*(a1 + 376));
    __message_assert("%s:%u: failed assertion '%s' %s flat store");
LABEL_46:
    free(v41);
    if (__valid_fsp(*(a1 + 376)))
    {
      v42 = 2989;
    }

    else
    {
      v42 = 3072;
    }

    *v42 = -559038737;
    abort();
  }

  if (v22 >= 0x1A && (a2 & 1) == 0)
  {
    v39 = ptr;
    if (isExFat(*(a1 + 152)) || isMsDos(*(a1 + 152)) || isFat32(*(a1 + 152)))
    {
      v35 = __si_assert_copy_extra_2708(*(a1 + 376));
      v43 = *(v39 + 2);
      si_analytics_log_3138("%s:%u: failure log '%s' %s flat store, pageSize = %u, sizeShift = %d");
      goto LABEL_39;
    }

    v41 = __si_assert_copy_extra_2708(*(a1 + 376));
    v44 = *(v39 + 2);
    __message_assert("%s:%u: failed assertion '%s' %s flat store, pageSize = %u, sizeShift = %d");
    goto LABEL_46;
  }

  v24 = storage_reader_get_ptr(*a3, a3[1], v17, v23 + 8, v19, v20);
  if (v24 == -1)
  {
LABEL_40:
    result = 0;
    *a9 = 1;
    goto LABEL_41;
  }

  v25 = v24;
  bzero(v53, 0x414uLL);
  __memcpy_chk();
  *__src = 0u;
  v52 = 0u;
  *&v47[4] = 0;
  v26 = *(a1 + 4584);
  if ((a2 & 1) == 0)
  {
    if (!v26)
    {
      goto LABEL_11;
    }

LABEL_23:
    v32 = __si_assert_copy_extra_2708(0);
    v33 = v32;
    v34 = "";
    if (v32)
    {
      v34 = v32;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FlatStore.c", 803, "(!compacted && t->type==kTermInfoTypeId) || (compacted && t->type!=kTermInfoTypeId)", v34);
    free(v33);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (!v26)
  {
    goto LABEL_23;
  }

LABEL_11:
  v27 = 0;
  v45 = *(a1 + 4584);
  *v47 = 0;
  v46 = 0;
  v28 = *v25;
  v48 = v25 + 4;
  v49 = 0;
  v50 = v28;
  if (!*a9)
  {
    do
    {
      if (!FlatStorePageIteratorGetNext(&v45, __src))
      {
        break;
      }

      v29 = (HIDWORD(__src[0]) + a5 + LODWORD(__src[0]));
      if (v29 > 0x413)
      {
        break;
      }

      memcpy(&v53[a5 + HIDWORD(__src[0])], __src[1], LODWORD(__src[0]));
      v53[v29] = 0;
      a10(v29, v53, v52, *(&v52 + 1), a11);
    }

    while (!*a9);
    v27 = v49;
    v28 = v50;
  }

  if (*a9)
  {
    v30 = 1;
  }

  else
  {
    v30 = v27 == v28;
  }

  if (!v30)
  {
    v36 = __si_assert_copy_extra_2708(*(a1 + 376));
    v37 = v36;
    v38 = "";
    if (v36)
    {
      v38 = v36;
    }

    __message_assert("%s:%u: failed assertion '%s' %s flat store", "FlatStore.c", 815, "*canceled || iter.pageCursor==iter.pageEnd", v38);
    free(v37);
    if (__valid_fsp(*(a1 + 376)))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  result = v17 + v21;
LABEL_41:
  v40 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t flatLastCompactTermOffset(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  if (!HIDWORD(a2) && a2)
  {
    if (*(a1 + 4584) == 1 && (v3 = a2 << 6, v5 = storageResolvePtr(a1 + 160, a2 << 6, 8, 1), v5 + 1 >= 2) && (v6 = *v5, v7 = ((64 << *(v5 + 2)) - 8), v8 = storageResolvePtr(a1 + 160, v3, v7 + 8, 1), v8 + 1 >= 2) && v7 >= v6)
    {
      v2 = 0;
      v18 = 0u;
      v19 = 0u;
      v11 = *(a1 + 4584);
      v10 = *v8;
      v12 = 0;
      v14 = 0;
      v15 = v8 + 4;
      v13 = 0;
      v16 = 0;
      v17 = v10;
      while (FlatStorePageIteratorGetNext(&v11, &v18))
      {
        v2 = v19;
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t _indexMarkInvalid(uint64_t result)
{
  if (result)
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t _indexMatchAddress(uint64_t result, unint64_t a2)
{
  v65 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_98;
  }

  v2 = result;
  v3 = *(result + 14408);
  if (v3 + 1 >= 2 && v3 <= a2)
  {
    v33 = *(result + 72);
    if (v3 + 8 * v33 > a2)
    {
      v34 = *(result + 14448);
      v35 = "index docId array";
      goto LABEL_81;
    }
  }

  v3 = *(result + 14416);
  if (v3 + 1 >= 2 && v3 <= a2)
  {
    v33 = *(result + 72);
    if (v3 + 4 * v33 > a2)
    {
      v34 = *(result + 14456);
      v35 = "index date array";
      goto LABEL_81;
    }
  }

  v3 = *(result + 14424);
  if (v3 + 1 >= 2 && v3 <= a2)
  {
    v33 = *(result + 72);
    if (v3 + 8 * v33 > a2)
    {
      v34 = *(result + 14464);
      v35 = "index score array";
      goto LABEL_81;
    }
  }

  v3 = *(result + 14432);
  if (v3 + 1 >= 2 && v3 <= a2)
  {
    v33 = *(result + 72);
    if (*(result + 45) != 1)
    {
      v33 = (4 * v33 + 4) / 5uLL;
    }

    if (v3 + v33 > a2)
    {
      v34 = *(result + 14472);
      v35 = "index group array";
      goto LABEL_81;
    }
  }

  v3 = *(result + 112);
  if (v3 + 1 >= 2 && v3 <= a2)
  {
    v33 = *(result + 136);
    if (v3 + v33 > a2)
    {
      v34 = *(result + 208);
      v35 = "bases";
LABEL_81:
      log_map_access_error(a2, v3, v33, v35, v34);
      goto LABEL_97;
    }
  }

  v3 = *(result + 104);
  if (v3 + 1 >= 2 && v3 <= a2)
  {
    v33 = *(result + 244);
    if (v3 + 1028 * v33 > a2)
    {
      v34 = *(result + 4672);
      v35 = "fat bases";
      goto LABEL_81;
    }
  }

  v8 = *(result + 504);
  if (v8 < 1)
  {
    goto LABEL_35;
  }

  v9 = 1;
  v10 = (result + 528);
  do
  {
    v11 = *v10;
    if (!*v10 || (v12 = v11[1], v12 + 1 < 2) || v12 > a2 || (v14 = v11[2], v12 - v14 + v11[3] <= a2))
    {
      v13 = 1;
      if (v9 >= v8)
      {
        break;
      }

      goto LABEL_29;
    }

    v13 = a2 - v12 + v14 == -1;
    if (v9 >= v8)
    {
      break;
    }

LABEL_29:
    ++v9;
    ++v10;
  }

  while (v13);
  if (!v13)
  {
    v29 = a2;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    *__str = 0u;
    v50 = 0u;
    v36 = snprintf(__str, 0xFFuLL, "c:%d s:%lld", v8, *(result + 480));
    if (*(v2 + 504) >= 1 && v36 <= 0xFE)
    {
      v37 = 0;
      v38 = v36;
      v39 = 255 - v36;
      do
      {
        snprintf(&__str[v38], v39, "%d:(mem:%p so:%lld eo:%lld)", v37, *(*(v2 + 528 + 8 * v37) + 8), *(*(v2 + 528 + 8 * v37) + 16), *(*(v2 + 528 + 8 * v37) + 24));
        ++v37;
      }

      while (v37 < *(v2 + 504));
    }

    v31 = *(v2 + 472);
    goto LABEL_95;
  }

LABEL_35:
  v15 = *(result + 5232);
  if (v15 < 1)
  {
    goto LABEL_46;
  }

  v16 = 1;
  v17 = (result + 5256);
  while (2)
  {
    v18 = *v17;
    if (!*v17 || (v19 = v18[1], v19 + 1 < 2) || v19 > a2 || (v21 = v18[2], v19 - v21 + v18[3] <= a2))
    {
      v20 = 1;
      if (v16 >= v15)
      {
        goto LABEL_45;
      }

LABEL_40:
      ++v16;
      ++v17;
      if (!v20)
      {
        goto LABEL_45;
      }

      continue;
    }

    break;
  }

  v20 = a2 - v19 + v21 == -1;
  if (v16 < v15)
  {
    goto LABEL_40;
  }

LABEL_45:
  if (!v20)
  {
    v29 = a2;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    *__str = 0u;
    v50 = 0u;
    v40 = snprintf(__str, 0xFFuLL, "c:%d s:%lld", v15, *(result + 5208));
    if (*(v2 + 5232) >= 1 && v40 <= 0xFE)
    {
      v41 = 0;
      v42 = v40;
      v43 = 255 - v40;
      do
      {
        snprintf(&__str[v42], v43, "%d:(mem:%p so:%lld eo:%lld)", v41, *(*(v2 + 5256 + 8 * v41) + 8), *(*(v2 + 5256 + 8 * v41) + 16), *(*(v2 + 5256 + 8 * v41) + 24));
        ++v41;
      }

      while (v41 < *(v2 + 5232));
    }

    v31 = *(v2 + 5200);
    goto LABEL_95;
  }

LABEL_46:
  v22 = *(result + 9952);
  if (v22 < 1)
  {
LABEL_57:
    v29 = a2;
    v30 = *(result + 4928);
    if (v30 && _windowsAddressOffset(v30 + 224, a2) != -1)
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      *__str = 0u;
      v50 = 0u;
      storage_describe_windows(v30 + 8, __str);
      v31 = *(*(v2 + 4928) + 224);
      v32 = v2 + 15208;
      goto LABEL_96;
    }

    result = *(v2 + 4912);
    if (result)
    {
      result = vectorIndexValidAddress(result, v29);
      if (result)
      {
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        *__str = 0u;
        v50 = 0u;
        v31 = *(*(v2 + 4928) + 224);
        v32 = v2 + 15208;
        goto LABEL_96;
      }
    }

    goto LABEL_98;
  }

  v23 = 1;
  v24 = (result + 9976);
  while (2)
  {
    v25 = *v24;
    if (!*v24 || (v26 = v25[1], v26 + 1 < 2) || v26 > a2 || (v28 = v25[2], v26 - v28 + v25[3] <= a2))
    {
      v27 = 1;
      if (v23 >= v22)
      {
        goto LABEL_56;
      }

LABEL_51:
      ++v23;
      ++v24;
      if (!v27)
      {
        goto LABEL_56;
      }

      continue;
    }

    break;
  }

  v27 = a2 - v26 + v28 == -1;
  if (v23 < v22)
  {
    goto LABEL_51;
  }

LABEL_56:
  if (v27)
  {
    goto LABEL_57;
  }

  v29 = a2;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  *__str = 0u;
  v50 = 0u;
  v44 = snprintf(__str, 0xFFuLL, "c:%d s:%lld", v22, *(result + 9928));
  if (*(v2 + 9952) >= 1 && v44 <= 0xFE)
  {
    v45 = 0;
    v46 = v44;
    v47 = 255 - v44;
    do
    {
      snprintf(&__str[v46], v47, "%d:(mem:%p so:%lld eo:%lld)", v45, *(*(v2 + 9976 + 8 * v45) + 8), *(*(v2 + 9976 + 8 * v45) + 16), *(*(v2 + 9976 + 8 * v45) + 24));
      ++v45;
    }

    while (v45 < *(v2 + 9952));
  }

  v31 = *(v2 + 9920);
LABEL_95:
  v32 = v2 + 15208;
LABEL_96:
  log_map_access_error_mini(v32, v29, __str, v31);
LABEL_97:
  result = 1;
LABEL_98:
  v48 = *MEMORY[0x1E69E9840];
  return result;
}

int *log_map_access_error(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v9 = *(a5 + 44);
  }

  else
  {
    v9 = -1;
  }

  memset(&v16, 0, sizeof(v16));
  memset(v39, 0, sizeof(v39));
  v10 = fd_name(a5, v39, 0x100uLL);
  v11 = fstatat(v9, v10, &v16, 32);
  v12 = *__error();
  v13 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136317698;
    v18 = "log_map_access_error";
    v19 = 1024;
    v20 = 5038;
    v21 = 2080;
    v22 = a4;
    v23 = 2080;
    v24 = v10;
    v25 = 2048;
    v26 = a1;
    v27 = 2048;
    v28 = a2;
    v29 = 2048;
    v30 = a2 + a3;
    v31 = 1024;
    v32 = v11;
    v33 = 2048;
    st_size = v16.st_size;
    v35 = 1024;
    st_dev = v16.st_dev;
    v37 = 2048;
    st_ino = v16.st_ino;
    _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: Got exception on %s %s addr:%p start:%p map end:%p sres:%d file_size:%lld dev:%d ino:%lld", buf, 0x64u);
  }

  result = __error();
  *result = v12;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

int *log_map_access_error_mini(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v7 = *(a4 + 44);
  }

  else
  {
    v7 = -1;
  }

  memset(&v14, 0, sizeof(v14));
  memset(v35, 0, sizeof(v35));
  v8 = fd_name(a4, v35, 0x100uLL);
  v9 = fstatat(v7, v8, &v14, 32);
  v10 = *__error();
  v11 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136317442;
    v16 = "log_map_access_error_mini";
    v17 = 1024;
    v18 = 5048;
    v19 = 2080;
    v20 = a1;
    v21 = 2080;
    v22 = v8;
    v23 = 2048;
    v24 = a2;
    v25 = 2080;
    v26 = a3;
    v27 = 1024;
    v28 = v9;
    v29 = 2048;
    st_size = v14.st_size;
    v31 = 1024;
    st_dev = v14.st_dev;
    v33 = 2048;
    st_ino = v14.st_ino;
    _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: Got exception on %s %s addr:%p %s sres:%d file_size:%lld dev:%d ino:%lld", buf, 0x5Au);
  }

  result = __error();
  *result = v10;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t indexCopyDeleteDocIds(uint64_t a1, int a2, CFIndex **a3)
{
  if (a2)
  {
    db_read_lock(a1 + 14504);
  }

  LODWORD(v6) = *(a1 + 68);
  v7 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
  if (!v7)
  {
    v20 = __si_assert_copy_extra_3233(0, -1);
    v21 = v20;
    v22 = "";
    if (v20)
    {
      v22 = v20;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 41, "bv", v22);
LABEL_34:
    free(v21);
    if (__valid_fs(-1))
    {
      v25 = 2989;
    }

    else
    {
      v25 = 3072;
    }

    *v25 = -559038737;
    abort();
  }

  v8 = v7;
  v9 = *MEMORY[0x1E695E480];
  if (v6 <= 0x80)
  {
    v6 = 128;
  }

  else
  {
    v6 = v6;
  }

  *v8 = 0;
  v8[1] = v6;
  Mutable = CFBitVectorCreateMutable(v9, v6);
  v8[2] = Mutable;
  CFBitVectorSetCount(Mutable, v6);
  if (!v8[2])
  {
    v23 = __si_assert_copy_extra_3233(0, -1);
    v21 = v23;
    v24 = "";
    if (v23)
    {
      v24 = v23;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 47, "bv->_cfbv", v24);
    goto LABEL_34;
  }

  v11 = *(a1 + 68);
  if (v11 < 2)
  {
    v12 = 0;
    goto LABEL_23;
  }

  v12 = 0;
  v13 = -1;
  v14 = 1;
  v15 = 6;
  v16 = 1;
  v17 = -1;
  do
  {
    if (*(a1 + 45) == 1)
    {
      if ((*(*(a1 + 14432) + v14) & 0xDF) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (((*(*(a1 + 14432) + (((3435973837u * v14) >> 32) & 0xFFFFFFFC)) >> (v15 - 30 * (v14 / 5))) & 0x1F) == 0)
    {
LABEL_10:
      if (v13 == -1)
      {
        v13 = v14;
      }

      v12 = (v12 + 1);
      v17 = v14;
      goto LABEL_13;
    }

    if (v13 != -1)
    {
      bit_vector_set_bits(v8, v13, (v17 + v16 + 1));
      v11 = *(a1 + 68);
      v17 = -1;
      v13 = -1;
    }

LABEL_13:
    ++v14;
    v16 = -v13;
    v15 += 6;
  }

  while (v14 < v11);
  if (v13 != -1)
  {
    bit_vector_set_bits(v8, v13, v17 - v13 + 1);
  }

LABEL_23:
  if (a2)
  {
    pthread_mutex_lock((a1 + 14504));
    v18 = *(a1 + 14700) - 1;
    *(a1 + 14700) = v18;
    if (!v18)
    {
      db_rwlock_wakeup(a1 + 14504, 0, 0);
    }

    pthread_mutex_unlock((a1 + 14504));
  }

  *a3 = v8;
  return v12;
}

char *__si_assert_copy_extra_3233(_DWORD *a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  bzero(v15, 0x400uLL);
  if (a1)
  {
    v14 = 0;
    v4 = _fd_acquire_fd(a1, &v14);
    if (v4 != -1)
    {
      v5 = v15;
      v6 = v4;
      v7 = fcntl(v4, 50, v15);
      v8 = v15[0];
      _fd_release_fd(a1, v6, 0, v14);
      if ((v7 & 0x80000000) == 0)
      {
        if (v8)
        {
          goto LABEL_12;
        }
      }
    }
  }

  else if (a2 != -1)
  {
    v5 = v15;
    if ((fcntl(a2, 50, v15) & 0x80000000) == 0)
    {
      if (v15[0])
      {
        goto LABEL_12;
      }
    }
  }

  v9 = getcwd(v15, 0x400uLL);
  if (v9)
  {
    v5 = v9;
  }

  else
  {
    v5 = "";
  }

LABEL_12:
  v14 = 0;
  v10 = pthread_getspecific(__THREAD_STR_DATA_KEY);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = "";
  }

  asprintf(&v14, "%s %s", v5, v11);
  result = v14;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void bit_vector_set_bits(CFIndex *a1, CFIndex a2, CFIndex a3)
{
  if (a2 < 0)
  {
    v8 = __si_assert_copy_extra_3233(0, -1);
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 164, "range.location >= 0", v10);
    free(v9);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (a3 >= 1)
  {
    bit_vector_internal_touch_for_set(a1, a3 + a2 - 1);
    v6 = a1[2];
    v7.location = a2;
    v7.length = a3;

    CFBitVectorSetBits(v6, v7, 1u);
  }
}

CFIndex *bit_vector_internal_touch_for_set(CFIndex *result, CFIndex a2)
{
  v2 = result[1];
  if (v2 <= a2)
  {
    if (v2)
    {
      v3 = result[1];
    }

    else
    {
      v3 = 32;
    }

    while (1)
    {
      v3 *= 2;
      if (v3 > a2)
      {
        break;
      }

      if (v3 <= v2)
      {
        v4 = __si_assert_copy_extra_3233(0, -1);
        v5 = v4;
        v6 = "";
        if (v4)
        {
          v6 = v4;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 124, "newCapacity > bv->capacity", v6);
        free(v5);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }
    }

    v7 = a2;
    v8 = result;
    v9 = result[2];
    v10 = *MEMORY[0x1E695E480];
    if (v9)
    {
      MutableCopy = CFBitVectorCreateMutableCopy(v10, v3, v9);
    }

    else
    {
      MutableCopy = CFBitVectorCreateMutable(v10, v3);
    }

    v12 = MutableCopy;
    if (!MutableCopy)
    {
      v13 = __si_assert_copy_extra_3233(0, -1);
      v14 = v13;
      v15 = "";
      if (v13)
      {
        v15 = v13;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 128, "newBV", v15);
      free(v14);
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

    CFBitVectorSetCount(MutableCopy, v3);
    result = v8;
    if (v8[2])
    {
      CFRelease(v8[2]);
      result = v8;
    }

    result[1] = v3;
    result[2] = v12;
    a2 = v7;
  }

  if (*result <= a2)
  {
    *result = a2 + 1;
  }

  return result;
}

{
  v2 = result[1];
  if (v2 <= a2)
  {
    if (v2)
    {
      v3 = result[1];
    }

    else
    {
      v3 = 32;
    }

    while (1)
    {
      v3 *= 2;
      if (v3 > a2)
      {
        break;
      }

      if (v3 <= v2)
      {
        v4 = __si_assert_copy_extra_332();
        v5 = v4;
        v6 = "";
        if (v4)
        {
          v6 = v4;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 124, "newCapacity > bv->capacity", v6);
        free(v5);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }
    }

    v7 = a2;
    v8 = result;
    v9 = result[2];
    v10 = *MEMORY[0x1E695E480];
    if (v9)
    {
      MutableCopy = CFBitVectorCreateMutableCopy(v10, v3, v9);
    }

    else
    {
      MutableCopy = CFBitVectorCreateMutable(v10, v3);
    }

    v12 = MutableCopy;
    if (!MutableCopy)
    {
      v13 = __si_assert_copy_extra_332();
      v14 = v13;
      v15 = "";
      if (v13)
      {
        v15 = v13;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 128, "newBV", v15);
      free(v14);
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

    CFBitVectorSetCount(MutableCopy, v3);
    result = v8;
    if (v8[2])
    {
      CFRelease(v8[2]);
      result = v8;
    }

    result[1] = v3;
    result[2] = v12;
    a2 = v7;
  }

  if (*result <= a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t index_FlushCache(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v317 = *MEMORY[0x1E69E9840];
  v10 = a1 + 12288;
  v11 = index_FlushCache_physMem;
  if (!index_FlushCache_physMem)
  {
    memset(host_info_out, 0, sizeof(host_info_out));
    *host_info_outCnt = 12;
    v12 = MEMORY[0x1C6920B70]();
    v13 = host_info(v12, 1, host_info_out, host_info_outCnt);
    v14 = *&host_info_out[10];
    if (*&host_info_out[10] >= 0x80000000uLL)
    {
      v14 = 0x80000000;
    }

    if (v13)
    {
      v11 = 0x40000000;
    }

    else
    {
      v11 = v14;
    }

    index_FlushCache_physMem = v11;
  }

  if (*(v10 + 2915) == 1)
  {
    if ((index_FlushCache__COUNT_ & 1) == 0)
    {
      index_FlushCache__COUNT_ = 1;
      v15 = *__error();
      v16 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        host_info_out[0] = 136315650;
        *&host_info_out[1] = "index_FlushCache";
        LOWORD(host_info_out[3]) = 1024;
        *(&host_info_out[3] + 2) = 312;
        HIWORD(host_info_out[4]) = 2080;
        *&host_info_out[5] = a1 + 15208;
        _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: trying to modify read only index %s", host_info_out, 0x1Cu);
      }

      *__error() = v15;
    }

    (*(a5 + 16))(a5);
    v17 = 1;
    goto LABEL_354;
  }

  if (!*(a1 + 14392))
  {
    (*(a5 + 16))(a5);
    v17 = 0;
    goto LABEL_354;
  }

  v293 = a3;
  v291 = *MEMORY[0x1E69E9AC8];
  v18 = v11 >> 3;
  v19 = (v11 >> 3) - 0x800000;
  if (v11 <= 0x40000007)
  {
    v19 = v11 >> 3;
  }

  v297 = v19;
  HIDWORD(v21) = qos_class_self() - 9;
  LODWORD(v21) = HIDWORD(v21);
  v20 = v21 >> 2;
  if (v20 > 6)
  {
    v22 = 0;
  }

  else
  {
    v22 = dword_1C2BFF8F0[v20];
  }

  pthread_mutex_lock((a1 + 14720));
  if (*(a1 + 14904) || *(a1 + 14916) || (*(v10 + 2644) & 1) != 0)
  {
LABEL_24:
    db_rwlock_wait(a1 + 14720, v22, 2);
    goto LABEL_25;
  }

  if (v22 <= 5)
  {
    v86 = v22 - 6;
    v87 = (a1 + 16 * v22 + 14784);
    while (!*v87)
    {
      v87 += 2;
      v88 = __CFADD__(v86++, 1);
      if (v88)
      {
        goto LABEL_109;
      }
    }

    goto LABEL_24;
  }

LABEL_109:
  *(a1 + 14904) = pthread_self();
LABEL_25:
  pthread_mutex_unlock((a1 + 14720));
  if (*(a1 + 14400))
  {
    v243 = __si_assert_copy_extra_3233(0, *(a1 + 64));
    v244 = v243;
    v245 = "";
    if (v243)
    {
      v245 = v243;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Expected cindex->_oldSet==0, got %p", "JHContentIndex.c", 410, "cindex->_oldSet==0", v245, *(a1 + 14400));
    free(v244);
    if (!__valid_fs(*(a1 + 64)))
    {
      goto LABEL_397;
    }

    goto LABEL_369;
  }

  v290 = v11;
  v23 = *(a1 + 14392);
  *(a1 + 14400) = v23;
  TermUpdateSetRemoveFromAccounting(v23);
  v24 = *(a1 + 68);
  if (*(a1 + 46))
  {
    v25 = 32;
  }

  else
  {
    v25 = 0;
  }

  *(v10 + 3376) = 0;
  *(a1 + 14392) = TermUpdateSetCreate(_indexProgress, a1, *(a1 + 80), v24, v25, *(a1 + 14384), *(a1 + 56), *(a1 + 4936));
  (*(a5 + 16))(a5);
  v26 = *(a1 + 14392);
  if (v26)
  {
    if (*(v10 + 2914) == 1)
    {
      *(v26 + 608) = getPropertyStringCallback;
    }

    *(v26 + 280) = a1 + 14184;
  }

  pthread_mutex_lock((a1 + 14720));
  *(a1 + 14924) = 0;
  v27 = *(a1 + 14896);
  *(a1 + 14896) = 0u;
  v28 = *(a1 + 14916) != 0;
  *(v10 + 2644) = 0;
  db_rwlock_wakeup(a1 + 14720, v28, 0);
  pthread_mutex_unlock((a1 + 14720));
  if (v27)
  {
    pthread_override_qos_class_end_np(v27);
  }

  v29 = *(a1 + 14400);
  v292 = v24;
  if (a2)
  {
    if (!v29)
    {
      HIDWORD(v31) = qos_class_self() - 9;
      LODWORD(v31) = HIDWORD(v31);
      v30 = v31 >> 2;
      if (v30 > 6)
      {
        v32 = 0;
      }

      else
      {
        v32 = dword_1C2BFF8F0[v30];
      }

      pthread_mutex_lock((a1 + 14720));
      if (!*(a1 + 14904) && !*(a1 + 14916) && (*(v10 + 2644) & 1) == 0)
      {
        if (v32 > 5)
        {
LABEL_168:
          *(a1 + 14904) = pthread_self();
          goto LABEL_101;
        }

        v115 = v32 - 6;
        v116 = (a1 + 16 * v32 + 14784);
        while (!*v116)
        {
          v116 += 2;
          v88 = __CFADD__(v115++, 1);
          if (v88)
          {
            goto LABEL_168;
          }
        }
      }

      db_rwlock_wait(a1 + 14720, v32, 2);
LABEL_101:
      pthread_mutex_unlock((a1 + 14720));
      goto LABEL_331;
    }
  }

  else
  {
    *(v29 + 592) = _termUpdateSetProgress;
    *(v29 + 600) = 0;
  }

  v33 = *(a1 + 15576);
  **(a1 + 104) = v33;
  **(a1 + 112) = v33;
  v34 = storageResolvePtr(a1 + 256, 0, 8, 1);
  if (!v34)
  {
    v50 = *__error();
    v51 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v114 = *__error();
      host_info_out[0] = 136315650;
      *&host_info_out[1] = "index_FlushCache";
      LOWORD(host_info_out[3]) = 1024;
      *(&host_info_out[3] + 2) = 484;
      HIWORD(host_info_out[4]) = 1024;
      host_info_out[5] = v114;
      _os_log_error_impl(&dword_1C278D000, v51, OS_LOG_TYPE_ERROR, "%s:%d: error %d updating sync count", host_info_out, 0x18u);
    }

    *__error() = v50;
    v17 = *__error();
    goto LABEL_323;
  }

  v287 = v18;
  v288 = a4;
  *v34 = *(a1 + 15576);
  v299 = 0;
  v35 = atomic_load((a1 + 36));
  if ((v35 & 0xC) == 8)
  {
    indexCopyDeleteDocIds(a1, a2 ^ 1, &v299);
  }

  v282 = *(a1 + 4928);
  Current = CFAbsoluteTimeGetCurrent();
  v37 = v299;
  v294 = *(a1 + 4912);
  v298 = *(a1 + 14400);
  v38 = atomic_load((a1 + 36));
  v280 = v38;
  bzero(v313, 0x848uLL);
  v39 = *(a1 + 9400);
  v314 = v293;
  v315 = a4;
  *&v313[1044] = 0u;
  *host_info_out = a1 + 96;
  *&host_info_out[2] = 0;
  memset(&host_info_out[6], 0, 24);
  *&host_info_out[4] = v39;
  ++generation;
  v40 = CFAbsoluteTimeGetCurrent();
  v41 = *__error();
  v42 = _SILogForLogForCategory(10);
  v43 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v42, v43))
  {
    *host_info_outCnt = 0;
    _os_log_impl(&dword_1C278D000, v42, v43, "Merge update set ... ", host_info_outCnt, 2u);
  }

  *__error() = v41;
  currentSet = v298;
  currentCount = 0;
  if (__THREAD_SLOT_KEY)
  {
    v44 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (v44)
    {
      goto LABEL_47;
    }
  }

  else
  {
    makeThreadId();
    v44 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (v44)
    {
LABEL_47:
      if (v44 < 0x801)
      {
        goto LABEL_48;
      }
    }
  }

  makeThreadId();
  v44 = pthread_getspecific(__THREAD_SLOT_KEY);
LABEL_48:
  v45 = v44 - 1;
  v46 = malloc_type_zone_calloc(indexingZone, 1uLL, 0x38uLL, 0x10A0040FEFBC11AuLL);
  *v46 = a1 + 96;
  v46[1] = v298;
  v295 = v46;
  CIOnThreadCleanUpPush(v45, TrieMergeCleanup, v46);
  HIDWORD(v48) = qos_class_self() - 9;
  LODWORD(v48) = HIDWORD(v48);
  v47 = v48 >> 2;
  if (v47 > 6)
  {
    v49 = 0;
  }

  else
  {
    v49 = dword_1C2BFF8F0[v47];
  }

  pthread_mutex_lock((a1 + 4696));
  v286 = v45;
  if (!*(a1 + 4880) && !*(a1 + 4892) && (*(a1 + 4908) & 1) == 0)
  {
    if (v49 > 5)
    {
LABEL_117:
      *(a1 + 4880) = pthread_self();
      *(a1 + 4908) = 1;
      goto LABEL_58;
    }

    v89 = v49 - 6;
    v90 = (a1 + 16 * v49 + 4760);
    while (!*v90)
    {
      v90 += 2;
      v88 = __CFADD__(v89++, 1);
      if (v88)
      {
        goto LABEL_117;
      }
    }
  }

  db_rwlock_wait(a1 + 4696, v49, 3);
LABEL_58:
  pthread_mutex_unlock((a1 + 4696));
  *(v295 + 49) = 1;
  db_read_lock(v298 + 304);
  *(v295 + 48) = 1;
  v284 = *(v298 + 592);
  v285 = *(v298 + 600);
  v52 = atomic_load((*(v298 + 24) + 16));
  if (!v52 && !*(v298 + 80) && !*(v298 + 48))
  {
    v17 = 0;
    v60 = 1;
    goto LABEL_70;
  }

  v279 = v37;
  v283 = v10;
  v53 = atomic_load((*(v298 + 24) + 16));
  v54 = malloc_type_zone_malloc(indexingZone, 8 * (v53 + 1), 0x2004093837F09uLL);
  v295[2] = v54;
  v55 = malloc_type_zone_malloc(indexingZone, 16 * (v53 + 1), 0x1000040451B5BE8uLL);
  v295[3] = v55;
  v56 = malloc_type_zone_malloc(indexingZone, 16 * (v53 + 1), 0x1000040451B5BE8uLL);
  v295[5] = v56;
  v57 = malloc_type_zone_calloc(indexingZone, v53 + 1, 0x18uLL, 0x10200409F4E64B8uLL);
  v295[4] = v57;
  if (v54)
  {
    v58 = v55 == 0;
  }

  else
  {
    v58 = 1;
  }

  if (v58 || v57 == 0)
  {
    v17 = 0xFFFFFFFFLL;
    v60 = 1;
    v10 = v283;
LABEL_70:
    v61 = v45;
    goto LABEL_302;
  }

  v281 = v57;
  __base = v55;
  v62 = *__error();
  v63 = _SILogForLogForCategory(10);
  v64 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v63, v64))
  {
    *host_info_outCnt = 134217984;
    *&host_info_outCnt[4] = v53;
    _os_log_impl(&dword_1C278D000, v63, v64, "Merge %lu terms", host_info_outCnt, 0xCu);
  }

  *__error() = v62;
  if (v284(v285) == -1)
  {
    v83 = *__error();
    v84 = _SILogForLogForCategory(10);
    v85 = 2 * (dword_1EBF46AF4 < 4);
    if (!os_log_type_enabled(v84, v85))
    {
      goto LABEL_160;
    }

    *host_info_outCnt = 0;
LABEL_159:
    _os_log_impl(&dword_1C278D000, v84, v85, "Merge Canceled", host_info_outCnt, 2u);
    goto LABEL_160;
  }

  v66 = CFAbsoluteTimeGetCurrent();
  v67 = *(v298 + 24);
  *&__n[1] = 0;
  v301 = &__n[1];
  LODWORD(v303) = 0;
  v302 = 0x2000000000;
  *host_info_outCnt = MEMORY[0x1E69E9820];
  *&host_info_outCnt[8] = 0x40000000;
  *&host_info_outCnt[16] = ___hashTableIterate_block_invoke;
  *&host_info_outCnt[24] = &unk_1E81939A0;
  *&host_info_outCnt[32] = &__n[1];
  *&host_info_outCnt[40] = v54;
  _TermTrieWalkFatWithOptions(v67 + 32, 0, 1, 0, host_info_outCnt, 0, 0);
  _Block_object_dispose(&__n[1], 8);
  v68 = *__error();
  v69 = _SILogForLogForCategory(10);
  v70 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v69, v70))
  {
    v71 = CFAbsoluteTimeGetCurrent();
    *host_info_outCnt = 134217984;
    *&host_info_outCnt[4] = v71 - v66;
    _os_log_impl(&dword_1C278D000, v69, v70, "Copied term data: %f seconds", host_info_outCnt, 0xCu);
  }

  *__error() = v68;
  if (v284(v285) == -1)
  {
    v83 = *__error();
    v84 = _SILogForLogForCategory(10);
    v85 = 2 * (dword_1EBF46AF4 < 4);
    if (!os_log_type_enabled(v84, v85))
    {
      goto LABEL_160;
    }

    *host_info_outCnt = 0;
    goto LABEL_159;
  }

  v273 = *(a1 + 4944);
  v274 = *(a1 + 4952);
  v72 = CFAbsoluteTimeGetCurrent();
  __n[0] = 0;
  if (v53)
  {
    v73 = 0;
    v74 = 0;
    LODWORD(v75) = 0;
    v76 = __base;
    do
    {
      while (1)
      {
        v77 = &v76[16 * v73];
        *v77 = v75;
        Offset = bt_getOffset(a1 + 96, *(v54[v75] + 16), v54[v75] + 18, __n);
        *(v77 + 1) = Offset;
        v75 = (v75 + 1);
        if (!Offset)
        {
          break;
        }

        if (v75 < v53)
        {
          v79 = __n[0];
          while (1)
          {
            v80 = v54[v75];
            if (v79 >= *(v80 + 16) || memcmp((v54[*v77] + 18), (v80 + 18), v79))
            {
              break;
            }

            if (v53 == ++v75)
            {
              LODWORD(v75) = v53;
              break;
            }
          }

          v76 = __base;
        }

        *(v77 + 1) = v75;
        ++v73;
        if (v75 >= v53)
        {
          goto LABEL_93;
        }
      }

      v81 = &v56[v74];
      *v81 = *v77;
      *(v81 + 2) = 0;
      if (v75 < v53)
      {
        while (!bt_getOffset(a1 + 96, *(v54[v75] + 16), v54[v75] + 18, __n))
        {
          if (v53 == ++v75)
          {
            LODWORD(v75) = v53;
            break;
          }
        }
      }

      *(v81 + 1) = v75;
      ++v74;
      v76 = __base;
    }

    while (v75 < v53);
LABEL_93:
    if (v73 > v53)
    {
      v259 = __si_assert_copy_extra_2708(0);
      v260 = v259;
      v261 = "";
      if (v259)
      {
        v261 = v259;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 2351, "j<=count", v261);
    }

    else
    {
      if (v74 <= v53)
      {
        v82 = v73;
        goto LABEL_119;
      }

      v262 = __si_assert_copy_extra_2708(0);
      v260 = v262;
      v263 = "";
      if (v262)
      {
        v263 = v262;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 2352, "z<=count", v263);
    }

    free(v260);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v74 = 0;
  v73 = 0;
  v82 = 0;
  v76 = __base;
LABEL_119:
  if (v73 + v74 > v53)
  {
    v264 = __si_assert_copy_extra_2708(0);
    v265 = v264;
    v266 = "";
    if (v264)
    {
      v266 = v264;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 2353, "j+z<=count", v266);
LABEL_396:
    free(v265);
    if (!__valid_fs(-1))
    {
LABEL_397:
      v246 = 3072;
LABEL_398:
      *v246 = -559038737;
      abort();
    }

LABEL_369:
    v246 = 2989;
    goto LABEL_398;
  }

  qsort(v76, v82, 0x10uLL, mergeRangeCompare);
  if (v74)
  {
    v91 = v74;
    v92 = v56;
    do
    {
      v93 = v73 + 1;
      v94 = *v92++;
      *&v76[16 * v73++] = v94;
      --v91;
    }

    while (v91);
  }

  else
  {
    v93 = v73;
  }

  v295[5] = 0;
  free(v56);
  v95 = *__error();
  v96 = _SILogForLogForCategory(10);
  v97 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v96, v97))
  {
    v98 = CFAbsoluteTimeGetCurrent();
    *host_info_outCnt = 134217984;
    *&host_info_outCnt[4] = v98 - v72;
    _os_log_impl(&dword_1C278D000, v96, v97, "Computed ranges: %f seconds", host_info_outCnt, 0xCu);
  }

  *__error() = v95;
  if (v284(v285) == -1)
  {
    v83 = *__error();
    v84 = _SILogForLogForCategory(10);
    v85 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v84, v85))
    {
      *host_info_outCnt = 0;
      goto LABEL_159;
    }

LABEL_160:
    *__error() = v83;
    v17 = 89;
    v60 = 1;
    v10 = v283;
    goto LABEL_301;
  }

  v99 = CFAbsoluteTimeGetCurrent();
  db_upgrade_lock(a1 + 4696);
  v275 = v93;
  if (!v93)
  {
    v276 = 0;
    v101 = 0;
    v289 = 0;
    goto LABEL_171;
  }

  v100 = 0;
  v289 = 0;
  v101 = 0;
  v102 = 1;
  v277 = v93;
  while (1)
  {
    v276 = v102;
    pthread_mutex_lock((a1 + 4696));
    *(a1 + 4908) = 1;
    db_rwlock_wakeup(a1 + 4696, 1, 1);
    pthread_mutex_unlock((a1 + 4696));
    v103 = &__base[16 * v100];
    if (v100)
    {
      v104 = *(v103 + 1);
      v105 = v104 << 6;
      if (HIDWORD(v104))
      {
        v105 = 0;
      }

      v106 = *(v103 - 1);
      v107 = v106 << 6 > v105 && HIDWORD(v106) == 0;
      v108 = v107 || v106 == 0;
      if (v108 && v104 != 0)
      {
        v267 = __si_assert_copy_extra_2708(0);
        v265 = v267;
        v268 = "";
        if (v267)
        {
          v268 = v267;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 2458, "(flatStoreGetOffset(range[k].info) >= flatStoreGetOffset(range[k-1].info) && range[k-1].info.next !=0) || range[k].info.next==0", v268);
        goto LABEL_396;
      }
    }

    db_upgrade_lock(a1 + 4696);
    v110 = *v103;
    if (v110 < *(v103 + 1))
    {
      break;
    }

LABEL_130:
    v102 = ++v100 < v277;
    if (v100 == v277)
    {
      v276 = 0;
      goto LABEL_170;
    }
  }

  v111 = &v281[24 * v110 + 8];
  while (1)
  {
    v112 = bt_mergeTerm(*(v54[v110] + 16), (v54[v110] + 18), host_info_out);
    if (!v112)
    {
      break;
    }

    if (v112 > v101)
    {
      v101 = v112;
    }

    *(v111 - 2) = v112;
    *v111 = v54[v110];
    if (*(a1 + 4688))
    {
      v113 = v289 <= 9999;
    }

    else
    {
      v113 = 0;
    }

    if (v113)
    {
      v289 += db_writer_yield_lock(a1 + 4696);
    }

    ++v110;
    v111 += 24;
    if (v110 >= *(v103 + 1))
    {
      goto LABEL_130;
    }
  }

LABEL_170:
  v93 = v275;
LABEL_171:
  v295[4] = 0;
  *&__n[1] = v281;
  v301 = v53;
  v302 = v53;
  v303 = v101;
  v117 = v298;
  if (v282)
  {
    directoryStoreMergeUpdateSet(v282, (v298 + 48), &__n[1]);
  }

  if (!v294)
  {
    goto LABEL_262;
  }

  if (_os_feature_enabled_impl())
  {
    v278 = *(v298 + 80);
  }

  else
  {
    v278 = 0;
  }

  if (!__THREAD_SLOT_KEY)
  {
    makeThreadId();
    v118 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v118)
    {
      goto LABEL_400;
    }

LABEL_179:
    if (v118 >= 0x801)
    {
      goto LABEL_400;
    }

    v119 = 0;
    goto LABEL_181;
  }

  v118 = pthread_getspecific(__THREAD_SLOT_KEY);
  if (v118)
  {
    goto LABEL_179;
  }

LABEL_400:
  makeThreadId();
  v118 = pthread_getspecific(__THREAD_SLOT_KEY);
  v119 = 0;
  if (v118)
  {
LABEL_181:
    if (v118 <= 0x800)
    {
      v120 = &threadData[9 * v118];
      v119 = *(v120 - 11);
      *(v120 - 11) = 1;
    }
  }

  if (!__THREAD_SLOT_KEY)
  {
    makeThreadId();
    v121 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v121)
    {
      goto LABEL_403;
    }

LABEL_185:
    if (v121 >= 0x801)
    {
      goto LABEL_403;
    }

    v122 = 0;
    goto LABEL_187;
  }

  v121 = pthread_getspecific(__THREAD_SLOT_KEY);
  if (v121)
  {
    goto LABEL_185;
  }

LABEL_403:
  makeThreadId();
  v121 = pthread_getspecific(__THREAD_SLOT_KEY);
  v122 = 0;
  if (v121)
  {
LABEL_187:
    if (v121 <= 0x800)
    {
      v123 = &threadData[9 * v121];
      v122 = *(v123 - 11);
      *(v123 - 11) = 1;
    }
  }

  if (*(v294 + 12) == 1 && v278[2])
  {
    v124 = *__error();
    v125 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
    {
      v240 = (v294 + 128);
      if (*(v294 + 151) < 0)
      {
        v240 = *v240;
      }

      v241 = (v294 + 104);
      if (*(v294 + 127) < 0)
      {
        v241 = *v241;
      }

      v242 = v278[2];
      *host_info_outCnt = 136316162;
      *&host_info_outCnt[4] = "mergeUpdateSet";
      *&host_info_outCnt[12] = 1024;
      *&host_info_outCnt[14] = 4445;
      *&host_info_outCnt[18] = 2080;
      *&host_info_outCnt[20] = v240;
      *&host_info_outCnt[28] = 2080;
      *&host_info_outCnt[30] = v241;
      *&host_info_outCnt[38] = 2048;
      *&host_info_outCnt[40] = v242;
      _os_log_error_impl(&dword_1C278D000, v125, OS_LOG_TYPE_ERROR, "%s:%d: [%s] mergeUpdateSet readonly %s updateSet %zu", host_info_outCnt, 0x30u);
    }

    *__error() = v124;
    if (*(v294 + 12) == 1)
    {
      if (v278[2])
      {
        v269 = __si_assert_copy_extra_332();
        v265 = v269;
        v270 = "";
        if (v269)
        {
          v270 = v269;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 4446, "!fReadOnly || updateSet->vectorIndexes.size() == 0", v270);
        goto LABEL_396;
      }
    }
  }

  v271 = v122;
  v272 = v119;
  v126 = *v278;
  if (*v278 != v278 + 1)
  {
    do
    {
      v128 = v126[5];
      v127 = v126[6];
      if (v127)
      {
        atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v310 = 0;
      v311 = 0;
      v129 = *(v128 + 12);
      if (v129 == 512)
      {
        v130 = 1;
      }

      else
      {
        v130 = 3;
      }

      if (v129 == 768)
      {
        v130 = 2;
      }

      if (v129 == 256)
      {
        v131 = 0;
      }

      else
      {
        v131 = v130;
      }

      v132 = *(v128 + 16);
      if (v132 == 2)
      {
        v133 = 1;
      }

      else
      {
        v133 = 3;
      }

      if (v132 == 4)
      {
        v134 = 0;
      }

      else
      {
        v134 = v133;
      }

      IVFVectorIndex_s::getOrCreateVectorIndex(&v310, v294 + 8, *(v128 + 8), *(v128 + 20), v131, v134, *(v128 + 22));
      __dst[0] = 0;
      __dst[1] = 0;
      v309 = 0;
      (*(*v310 + 312))(host_info_outCnt);
      if (host_info_outCnt[23] >= 0)
      {
        v135 = host_info_outCnt;
      }

      else
      {
        v135 = *host_info_outCnt;
      }

      v136 = strlen(v135);
      if (v136 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      v137 = v136;
      if (v136 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v309) = v136;
      if (v136)
      {
        memmove(__dst, v135, v136);
      }

      *(__dst + v137) = 0;
      if ((host_info_outCnt[23] & 0x80000000) != 0)
      {
        operator delete(*host_info_outCnt);
      }

      v138 = v310;
      (*(*v310 + 96))(v310, v128, v298 + 88, &__n[1]);
      v139 = *__error();
      v140 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
      {
        v141 = v294 + 128;
        if (*(v294 + 151) < 0)
        {
          v141 = *(v294 + 128);
        }

        v305 = 3;
        LODWORD(v304) = 4085052;
        (*(*v128 + 312))(__p, v128, &v304);
        if (v307 >= 0)
        {
          v142 = __p;
        }

        else
        {
          v142 = __p[0];
        }

        if (v309 >= 0)
        {
          v143 = __dst;
        }

        else
        {
          v143 = __dst[0];
        }

        v144 = (*(*v138 + 16))(v138);
        *host_info_outCnt = 136316162;
        *&host_info_outCnt[4] = v141;
        *&host_info_outCnt[12] = 2048;
        *&host_info_outCnt[14] = v278;
        *&host_info_outCnt[22] = 2080;
        *&host_info_outCnt[24] = v142;
        *&host_info_outCnt[32] = 2080;
        *&host_info_outCnt[34] = v143;
        *&host_info_outCnt[42] = 1024;
        *&host_info_outCnt[44] = v144;
        _os_log_impl(&dword_1C278D000, v140, OS_LOG_TYPE_DEFAULT, "[%s] mergeUpdateSet %p %s to %s total %u", host_info_outCnt, 0x30u);
        if (v307 < 0)
        {
          operator delete(__p[0]);
        }

        if (v305 < 0)
        {
          operator delete(v304);
        }
      }

      *__error() = v139;
      if (SHIBYTE(v309) < 0)
      {
        operator delete(__dst[0]);
      }

      v145 = v311;
      v117 = v298;
      if (v311 && !atomic_fetch_add(&v311->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v145->__on_zero_shared)(v145);
        std::__shared_weak_count::__release_weak(v145);
      }

      if (v127 && !atomic_fetch_add(&v127->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v127->__on_zero_shared)(v127);
        std::__shared_weak_count::__release_weak(v127);
      }

      v146 = v126[1];
      if (v146)
      {
        do
        {
          v147 = v146;
          v146 = *v146;
        }

        while (v146);
      }

      else
      {
        do
        {
          v147 = v126[2];
          v58 = *v147 == v126;
          v126 = v147;
        }

        while (!v58);
      }

      v126 = v147;
    }

    while (v147 != v278 + 1);
  }

  v148 = __THREAD_SLOT_KEY;
  if (!__THREAD_SLOT_KEY)
  {
    makeThreadId();
    v148 = __THREAD_SLOT_KEY;
  }

  v149 = pthread_getspecific(v148);
  v93 = v275;
  if (v149 && v149 < 0x801 || (makeThreadId(), (v149 = pthread_getspecific(__THREAD_SLOT_KEY)) != 0))
  {
    if (v149 <= 0x800)
    {
      *(&threadData[9 * v149 - 5] - 1) = v271;
    }
  }

  if (!__THREAD_SLOT_KEY)
  {
    makeThreadId();
    v150 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v150)
    {
      goto LABEL_406;
    }

LABEL_259:
    if (v150 >= 0x801)
    {
      goto LABEL_406;
    }

    goto LABEL_260;
  }

  v150 = pthread_getspecific(__THREAD_SLOT_KEY);
  if (v150)
  {
    goto LABEL_259;
  }

LABEL_406:
  makeThreadId();
  v150 = pthread_getspecific(__THREAD_SLOT_KEY);
  if (v150)
  {
LABEL_260:
    if (v150 <= 0x800)
    {
      *(&threadData[9 * v150 - 5] - 1) = v272;
    }
  }

LABEL_262:
  v152 = *&__n[1];
  v151 = v301;
  v295[4] = *&__n[1];
  v153 = v303;
  if (v289)
  {
    v154 = *__error();
    v155 = _SILogForLogForCategory(10);
    v156 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v155, v156))
    {
      *host_info_outCnt = 67109120;
      *&host_info_outCnt[4] = v289;
      _os_log_impl(&dword_1C278D000, v155, v156, "Flush yielded %d times.", host_info_outCnt, 8u);
    }

    *__error() = v154;
    v117 = v298;
    v93 = v275;
  }

  if (v276)
  {
    v157 = 0;
    v17 = 0xFFFFFFFFLL;
    v10 = v283;
  }

  else
  {
    if (v93 <= 0x200)
    {
      v157 = 0;
    }

    else
    {
      v157 = v93;
    }

    v295[3] = 0;
    free(__base);
    v158 = *(v117 + 232);
    if (v158)
    {
      do
      {
        v159 = *v158;
        madvise(v158, v158[2] - v158, 4);
        v158 = v159;
      }

      while (v159);
    }

    v160 = *(a1 + 9400);
    v88 = v153 >= v160;
    v161 = v153 - v160;
    if (v88 && (v162 = termIdStoreAllocBulk(a1 + 4984, v161 + 1), v162) || (v163 = *(a1 + 14120), v88 = v153 >= v163, v164 = v153 - v163, v88) && (v162 = termIdStoreAllocBulk(a1 + 9704, v164 + 1), v162))
    {
      v17 = v162;
      v10 = v283;
    }

    else
    {
      if (v151)
      {
        *&v152[6 * v151 + 2] = *&v152[6 * v151 - 4];
        db_downgrade_lock((a1 + 4696));
      }

      v295[2] = 0;
      free(v54);
      storageDeactivateAll(a1 + 256, 0);
      storageUnmap(a1 + 256);
      db_write_unlock(a1 + 4696);
      *(v295 + 49) = 0;
      v165 = *__error();
      v166 = _SILogForLogForCategory(10);
      v167 = 2 * (dword_1EBF46AF4 < 4);
      if (os_log_type_enabled(v166, v167))
      {
        v168 = CFAbsoluteTimeGetCurrent();
        *host_info_outCnt = 134217984;
        *&host_info_outCnt[4] = v168 - v99;
        _os_log_impl(&dword_1C278D000, v166, v167, "Merged terms: %f seconds", host_info_outCnt, 0xCu);
      }

      *__error() = v165;
      v10 = v283;
      if (v284(v285) == -1)
      {
        v175 = *__error();
        v176 = _SILogForLogForCategory(10);
        v177 = 2 * (dword_1EBF46AF4 < 4);
        if (os_log_type_enabled(v176, v177))
        {
          *host_info_outCnt = 0;
          _os_log_impl(&dword_1C278D000, v176, v177, "Merge Canceled", host_info_outCnt, 2u);
        }

        *__error() = v175;
        v17 = 89;
      }

      else
      {
        if (v151 >= 2)
        {
          _qsort_termids(v152, v151 - 1);
        }

        v169 = CFAbsoluteTimeGetCurrent();
        v170 = v298;
        v171 = atomic_load((v298 + 100));
        v172 = compressPostings(a1 + 4944, v171, *(v170 + 88), *(v170 + 8), v151, v152, *(v170 + 16), v293, v288);
        if (v172)
        {
          v17 = v172;
          v173 = *__error();
          v174 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
          {
            *host_info_outCnt = 136315650;
            *&host_info_outCnt[4] = "TrieMergeUpdates";
            *&host_info_outCnt[12] = 1024;
            *&host_info_outCnt[14] = 2722;
            *&host_info_outCnt[18] = 1024;
            *&host_info_outCnt[20] = v17;
            _os_log_error_impl(&dword_1C278D000, v174, OS_LOG_TYPE_ERROR, "%s:%d: compressPostings err:%d", host_info_outCnt, 0x18u);
          }

          *__error() = v173;
        }

        else
        {
          storageUnmap(a1 + 4984);
          v178 = CFAbsoluteTimeGetCurrent() - v169;
          *&TrieMergeUpdates_postingsCompressionTime = *&TrieMergeUpdates_postingsCompressionTime + v178;
          v179 = *__error();
          v180 = _SILogForLogForCategory(10);
          v181 = 2 * (dword_1EBF46AF4 < 4);
          if (os_log_type_enabled(v180, v181))
          {
            *host_info_outCnt = 134218240;
            *&host_info_outCnt[4] = v178;
            *&host_info_outCnt[12] = 2048;
            *&host_info_outCnt[14] = TrieMergeUpdates_postingsCompressionTime;
            _os_log_impl(&dword_1C278D000, v180, v181, "Compressed postings data: %f seconds %f total", host_info_outCnt, 0x16u);
          }

          *__error() = v179;
          *host_info_outCnt = 0;
          v182 = _fd_acquire_fd(*(a1 + 9432), host_info_outCnt);
          v183 = v182;
          v184 = *(a1 + 4952);
          v185 = v274 - v184;
          if (v274 <= v184)
          {
            sync_invalidate_fd(v182, v273, *(a1 + 4944) - v273);
            v184 = *(a1 + 4952);
            v185 = *(a1 + 4968) - v184;
          }

          sync_invalidate_fd(v183, v184, v185);
          v10 = v283;
          fsync(v183);
          _fd_release_fd(*(a1 + 9432), v183, 0, *host_info_outCnt);
          v17 = mergeFlushPositions(v298, v279, (a1 + 9664), v152, v151, (v280 >> 3) & 1);
          if (!v17)
          {
            storageUnmap(a1 + 9704);
            v186 = _fd_acquire_fd(*(a1 + 14152), host_info_outCnt);
            fsync(v186);
            _fd_release_fd(*(a1 + 14152), v186, 0, *host_info_outCnt);
          }
        }
      }
    }
  }

  v60 = v157 == 0;
LABEL_301:
  v61 = v286;
LABEL_302:
  CIOnThreadCleanUpPop(v61);
  ++thingCount;
  if (!v17)
  {
    *(a1 + 4684) = 1;
    v187 = CFAbsoluteTimeGetCurrent();
    v188 = *__error();
    v189 = _SILogForLogForCategory(10);
    v190 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v189, v190))
    {
      *host_info_outCnt = 0;
      _os_log_impl(&dword_1C278D000, v189, v190, "Done", host_info_outCnt, 2u);
    }

    v191 = v187 - v40;
    *__error() = v188;
    v192 = *__error();
    v193 = _SILogForLogForCategory(10);
    v194 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v193, v194))
    {
      v195 = v191;
      *host_info_outCnt = 134217984;
      *&host_info_outCnt[4] = v195;
      _os_log_impl(&dword_1C278D000, v193, v194, "Merge took %f seconds", host_info_outCnt, 0xCu);
    }

    *__error() = v192;
    *&bt_mergeSet_accTime = *&bt_mergeSet_accTime + v191;
    v196 = *__error();
    v197 = _SILogForLogForCategory(10);
    v198 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v197, v198))
    {
      v199 = *&bt_mergeSet_accTime;
      *host_info_outCnt = 134217984;
      *&host_info_outCnt[4] = v199;
      _os_log_impl(&dword_1C278D000, v197, v198, "Total merge time: %f seconds", host_info_outCnt, 0xCu);
    }

    *__error() = v196;
    if (gSILogLevels[0] >= 5)
    {
      v247 = *__error();
      v248 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v248, OS_LOG_TYPE_DEFAULT))
      {
        v249 = *(a1 + 128);
        v250 = v249 * 100.0 / *(a1 + 136);
        *host_info_outCnt = 134218240;
        *&host_info_outCnt[4] = v249 >> 10;
        *&host_info_outCnt[12] = 2048;
        *&host_info_outCnt[14] = v250;
        _os_log_impl(&dword_1C278D000, v248, OS_LOG_TYPE_DEFAULT, "Mapped Bases: %luKB (%f%% used)", host_info_outCnt, 0x16u);
      }

      *__error() = v247;
      if (gSILogLevels[0] >= 5)
      {
        v251 = *__error();
        v252 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v252, OS_LOG_TYPE_DEFAULT))
        {
          v254 = *(a1 + 240);
          v253 = *(a1 + 244);
          *host_info_outCnt = 134218496;
          *&host_info_outCnt[4] = ((257 * v253) >> 8) & 0x3FFFFFFFFFFFFFLL;
          *&host_info_outCnt[12] = 1024;
          *&host_info_outCnt[14] = v254;
          *&host_info_outCnt[18] = 2048;
          *&host_info_outCnt[20] = v254 * 100.0 / v253;
          _os_log_impl(&dword_1C278D000, v252, OS_LOG_TYPE_DEFAULT, "Sparse Bases: %luKB for %d entries (%f%% used)", host_info_outCnt, 0x1Cu);
        }

        *__error() = v251;
        if (gSILogLevels[0] >= 5)
        {
          v255 = *__error();
          v256 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v256, OS_LOG_TYPE_DEFAULT))
          {
            v257 = *(a1 + 480);
            v258 = *(a1 + 488) * 100.0 / v257;
            *host_info_outCnt = 134218240;
            *&host_info_outCnt[4] = v257 >> 10;
            *&host_info_outCnt[12] = 2048;
            *&host_info_outCnt[14] = v258;
            _os_log_impl(&dword_1C278D000, v256, OS_LOG_TYPE_DEFAULT, "String arrays: %lluKB %f%% used", host_info_outCnt, 0x16u);
          }

          *__error() = v255;
        }
      }
    }
  }

  v200 = CFAbsoluteTimeGetCurrent();
  v201 = v299;
  if (v299)
  {
    v202 = *(v299 + 2);
    if (v202)
    {
      CFRelease(v202);
    }

    free(v201);
  }

  if (!v60 && *(a1 + 128) + 1028 * *(a1 + 240) + *(a1 + 488) > v290 / (4 * v291 / 5uLL) && ((v203 = atomic_load((a1 + 36)), (v203 & 0x800) != 0) ? (v204 = 4) : (v204 = 10), v200 - Current > v204) || *(a1 + 128) + 1028 * *(a1 + 240) + *(a1 + 488) >= 0x8000001)
  {
    *(a1 + 15200) |= 2u;
  }

  v18 = v287;
LABEL_323:
  HIDWORD(v206) = qos_class_self() - 9;
  LODWORD(v206) = HIDWORD(v206);
  v205 = v206 >> 2;
  if (v205 > 6)
  {
    v207 = 0;
  }

  else
  {
    v207 = dword_1C2BFF8F0[v205];
  }

  pthread_mutex_lock((a1 + 14720));
  if (*(a1 + 14904) || *(a1 + 14916) || (*(v10 + 2644) & 1) != 0)
  {
LABEL_329:
    db_rwlock_wait(a1 + 14720, v207, 2);
  }

  else
  {
    if (v207 <= 5)
    {
      v238 = v207 - 6;
      v239 = (a1 + 16 * v207 + 14784);
      while (!*v239)
      {
        v239 += 2;
        v88 = __CFADD__(v238++, 1);
        if (v88)
        {
          goto LABEL_360;
        }
      }

      goto LABEL_329;
    }

LABEL_360:
    *(a1 + 14904) = pthread_self();
  }

  pthread_mutex_unlock((a1 + 14720));
  if (!v17)
  {
LABEL_331:
    if (v292)
    {
      *(a1 + 4960) = *(a1 + 4952);
      *(a1 + 9680) = *(a1 + 9672);
      *(a1 + 60) = v292 - 1;
    }

    v208 = indexFastFlush(a1, 0);
    v17 = v208;
    if (v208)
    {
      if (*(a1 + 8) == 1)
      {
        *(a1 + 8) = 0;
        *(a1 + 12) = v208;
      }

      v209 = *__error();
      v210 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
      {
        host_info_out[0] = 136315906;
        *&host_info_out[1] = "index_FlushCache";
        LOWORD(host_info_out[3]) = 1024;
        *(&host_info_out[3] + 2) = 572;
        HIWORD(host_info_out[4]) = 2080;
        *&host_info_out[5] = a1 + 15208;
        LOWORD(host_info_out[7]) = 1024;
        *(&host_info_out[7] + 2) = 572;
        _os_log_error_impl(&dword_1C278D000, v210, OS_LOG_TYPE_ERROR, "%s:%d: %s marking invalid at %d", host_info_out, 0x22u);
      }

      *__error() = v209;
    }

    else
    {
      *(a1 + 15040) = CFAbsoluteTimeGetCurrent();
      v211 = *(a1 + 14400);
      v212 = *(v211 + 120);
      v213 = *(v211 + 136);
      v214 = *(v211 + 152);
      v215 = *(v211 + 168);
      v216 = *(v211 + 184);
      v217 = *(v211 + 200);
      v218 = *(v211 + 216);
      v219.i64[0] = 0xFFFFFFFFLL;
      v219.i64[1] = 0xFFFFFFFFLL;
      *(v10 + 2696) = vaddq_s64(*(v10 + 2696), vandq_s8(v215, v219));
      *(v10 + 2648) = vaddq_s64(*(v10 + 2648), vandq_s8(v212, v219));
      *(v10 + 2680) = vaddq_s64(*(v10 + 2680), vandq_s8(v214, v219));
      *(v10 + 2664) = vaddq_s64(*(v10 + 2664), vandq_s8(v213, v219));
      *(v10 + 2712) = vaddq_s64(*(v10 + 2712), vandq_s8(v216, v219));
      *(v10 + 2728) = vaddq_s64(*(v10 + 2728), vandq_s8(v217, v219));
      *(a1 + 15032) += v218;
    }
  }

  TermUpdateSetRelease(*(a1 + 14400));
  *(a1 + 14400) = 0;
  v220 = *(a1 + 9688);
  if (v220 >= v18 || *(a1 + 9664) + v220 - *(a1 + 9672) >= v297)
  {
    v221 = v18;
    v222 = *__error();
    v223 = _SILogForLogForCategory(10);
    v224 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v223, v224))
    {
      v225 = *(a1 + 9688);
      v226 = *(a1 + 9664) + v225 - *(a1 + 9672);
      host_info_out[0] = 134218752;
      *&host_info_out[1] = v225;
      LOWORD(host_info_out[3]) = 2048;
      *(&host_info_out[3] + 2) = v221;
      HIWORD(host_info_out[5]) = 2048;
      *&host_info_out[6] = v226;
      LOWORD(host_info_out[8]) = 2048;
      *(&host_info_out[8] + 2) = v297;
      _os_log_impl(&dword_1C278D000, v223, v224, "Force split for large index %lld (%lld) %lld (%lld)", host_info_out, 0x2Au);
    }

    *__error() = v222;
    v227 = *(v10 + 2912) | 2;
    *(v10 + 2912) = v227;
    if ((v227 & 6) == 0)
    {
LABEL_347:
      if (*(a1 + 68) >= 0x2711u)
      {
        v228 = atomic_load((a1 + 16));
        if (*(a1 + 68) < 4 * v228)
        {
          v229 = *__error();
          v230 = _SILogForLogForCategory(10);
          v231 = 2 * (dword_1EBF46AF4 < 4);
          if (os_log_type_enabled(v230, v231))
          {
            v232 = *(a1 + 68);
            v233 = atomic_load((a1 + 16));
            host_info_out[0] = 67109376;
            host_info_out[1] = v232;
            LOWORD(host_info_out[2]) = 1024;
            *(&host_info_out[2] + 2) = v233;
            _os_log_impl(&dword_1C278D000, v230, v231, "Force split for high delete count; %d %d", host_info_out, 0xEu);
          }

          *__error() = v229;
          *(v10 + 2912) |= 2u;
        }
      }
    }
  }

  else if ((*(v10 + 2912) & 6) == 0)
  {
    goto LABEL_347;
  }

  pthread_mutex_lock((a1 + 14720));
  *(a1 + 14924) = 0;
  v234 = *(a1 + 14896);
  *(a1 + 14896) = 0u;
  v235 = *(a1 + 14916) != 0;
  *(v10 + 2644) = 0;
  db_rwlock_wakeup(a1 + 14720, v235, 0);
  pthread_mutex_unlock((a1 + 14720));
  if (v234)
  {
    pthread_override_qos_class_end_np(v234);
  }

LABEL_354:
  v236 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t indexFastFlush(uint64_t a1, _DWORD *a2)
{
  v99 = *MEMORY[0x1E69E9840];
  v95 = 0u;
  *v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s%s", (a1 + 15208), "indexUpdates");
  unlinkat(*(a1 + 64), __str, 0);
  if (a2)
  {
    v4 = 1538;
    v5 = 0;
  }

  else
  {
    v4 = 536872450;
    v5 = 3;
  }

  v6 = fd_create_protected(*(a1 + 64), __str, v4, v5);
  *buf = 0;
  v7 = _fd_acquire_fd(v6, buf);
  v8 = v7;
  v9 = *buf;
  if ((store_stream_init_fd(&v93, v7, *buf, 0, 1) & 1) == 0)
  {
    _fd_release_fd(v6, v8, 0, v9);
    v14 = v94;
    goto LABEL_110;
  }

  v96[1] = v6;
  v10 = *(&v95 + 1);
  if (v95 - *(&v95 + 1) < 6uLL)
  {
    *&buf[9] = 0;
    *&buf[1] = 0;
    *&buf[24] = 0;
    *&buf[17] = 0;
    buf[0] = 2;
    store_stream_write_bytes_3266(&v93, buf, 1uLL);
  }

  else
  {
    *(v96[0] + *(&v95 + 1)) = 2;
    *(&v95 + 1) = v10 + 1;
  }

  v11 = *(a1 + 4928);
  v12 = atomic_load((a1 + 36));
  if ((v12 & 2) != 0)
  {
    v13 = 0;
    if (!*(a1 + 4928))
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v13 = *(a1 + 9408);
  if (*(a1 + 14128) > v13)
  {
    v13 = *(a1 + 14128);
  }

  if (*(a1 + 4632) > v13)
  {
    v13 = *(a1 + 4632);
  }

  if (*(a1 + 4928))
  {
LABEL_16:
    if (*(v11 + 4384) > v13)
    {
      v13 = *(v11 + 4384);
    }
  }

LABEL_18:
  v16 = v13 + 7;
  v15 = v13 < -7;
  v17 = v13 + 14;
  if (!v15)
  {
    v17 = v16;
  }

  v18 = v17 >> 3;
  v19 = malloc_type_malloc(v17 >> 3, 0xF249986EuLL);
  if (!v19)
  {
    v42 = __si_assert_copy_extra_3233(0, -1);
    v43 = v42;
    v44 = "";
    if (v42)
    {
      v44 = v42;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "JHContentIndex.c", 2812, "bits", v44);
    free(v43);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v20 = v19;
  v21 = atomic_load((a1 + 36));
  if ((v21 & 2) != 0)
  {
    v22 = *(&v95 + 1);
    if (v95 - *(&v95 + 1) < 6uLL)
    {
      memset(buf, 0, 32);
      store_stream_write_bytes_3266(&v93, buf, 1uLL);
      v23 = *(&v95 + 1);
    }

    else
    {
      v23 = *(&v95 + 1) + 1;
      *(v96[0] + *(&v95 + 1)) = 0;
      *(&v95 + 1) = v22 + 1;
    }

    if ((v95 - v23) < 6)
    {
      memset(buf, 0, 32);
      store_stream_write_bytes_3266(&v93, buf, 1uLL);
      v24 = *(&v95 + 1);
    }

    else
    {
      v24 = v23 + 1;
      *(v96[0] + v23) = 0;
      *(&v95 + 1) = v23 + 1;
    }

    if ((v95 - v24) < 6)
    {
      memset(buf, 0, 32);
      store_stream_write_bytes_3266(&v93, buf, 1uLL);
    }

    else
    {
      *(v96[0] + v24) = 0;
      *(&v95 + 1) = v24 + 1;
    }
  }

  else
  {
    store_stream_write_vint32(&v93, *(a1 + 9408));
    store_stream_write_vint32(&v93, *(a1 + 14128));
    store_stream_write_vint32(&v93, *(a1 + 4632));
  }

  v25 = atomic_load((a1 + 36));
  if (v25 < 0)
  {
    if (v11)
    {
      v26 = *(v11 + 4384);
    }

    else
    {
      v26 = 0;
    }

    store_stream_write_vint32(&v93, v26);
  }

  if (dword_1EBF46AF4 >= 5)
  {
    v45 = *__error();
    v46 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = *(&v94 + 1) + *(&v95 + 1);
      _os_log_impl(&dword_1C278D000, v46, OS_LOG_TYPE_DEFAULT, "Post counts at %lld", buf, 0xCu);
    }

    *__error() = v45;
  }

  v27 = (a1 + 36);
  v28 = atomic_load((a1 + 36));
  if ((v28 & 2) != 0)
  {
    goto LABEL_84;
  }

  v29.length = *(a1 + 9408);
  if (v29.length)
  {
    v29.location = 0;
    CFBitVectorGetBits(*(a1 + 9424), v29, v20);
  }

  else
  {
    bzero(v20, v18);
  }

  v30 = *(a1 + 9408);
  v31 = v30 + 7;
  v15 = v30 < -7;
  v32 = v30 + 14;
  if (!v15)
  {
    v32 = v31;
  }

  v33 = v32 >> 3;
  v34 = *(&v95 + 1);
  v35 = v95;
  v36 = v20;
  if (v33 + *(&v95 + 1) >= v95)
  {
    while (1)
    {
      v47 = v35 - v34;
      v90 = v36;
      memcpy(v96[0] + v34, v36, v35 - v34);
      *(&v95 + 1) += v47;
      if (store_stream_flush(&v93, 0))
      {
        break;
      }

      v36 = &v90[v47];
      v33 -= v47;
      v34 = *(&v95 + 1);
      v35 = v95;
      if (*(&v95 + 1) + v33 < v95)
      {
        goto LABEL_42;
      }
    }
  }

  else
  {
LABEL_42:
    memcpy(v96[0] + v34, v36, v33);
    *(&v95 + 1) += v33;
  }

  if (dword_1EBF46AF4 >= 5)
  {
    v48 = *__error();
    v49 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = *(&v94 + 1) + *(&v95 + 1);
      _os_log_impl(&dword_1C278D000, v49, OS_LOG_TYPE_DEFAULT, "Post bv1 at %lld", buf, 0xCu);
    }

    *__error() = v48;
    v37.length = *(a1 + 14128);
    if (v37.length)
    {
      goto LABEL_45;
    }

LABEL_66:
    v41 = 0;
    goto LABEL_67;
  }

  v37.length = *(a1 + 14128);
  if (!v37.length)
  {
    goto LABEL_66;
  }

LABEL_45:
  v37.location = 0;
  CFBitVectorGetBits(*(a1 + 14144), v37, v20);
  v38 = *(a1 + 14128);
  v39 = v38 + 7;
  v15 = v38 < -7;
  v40 = v38 + 14;
  if (!v15)
  {
    v40 = v39;
  }

  v41 = v40 >> 3;
LABEL_67:
  v50 = *(&v95 + 1);
  v51 = v95;
  v52 = v20;
  if (v41 + *(&v95 + 1) >= v95)
  {
    while (1)
    {
      v58 = v51 - v50;
      v91 = v52;
      memcpy(v96[0] + v50, v52, v51 - v50);
      *(&v95 + 1) += v58;
      if (store_stream_flush(&v93, 0))
      {
        break;
      }

      v52 = &v91[v58];
      v41 -= v58;
      v50 = *(&v95 + 1);
      v51 = v95;
      if (*(&v95 + 1) + v41 < v95)
      {
        goto LABEL_68;
      }
    }
  }

  else
  {
LABEL_68:
    memcpy(v96[0] + v50, v52, v41);
    *(&v95 + 1) += v41;
  }

  if (dword_1EBF46AF4 >= 5)
  {
    v59 = *__error();
    v60 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = *(&v94 + 1) + *(&v95 + 1);
      _os_log_impl(&dword_1C278D000, v60, OS_LOG_TYPE_DEFAULT, "Post bv2 at %lld", buf, 0xCu);
    }

    *__error() = v59;
    v53.length = *(a1 + 4632);
    if (v53.length)
    {
      goto LABEL_71;
    }

LABEL_80:
    v57 = 0;
    goto LABEL_81;
  }

  v53.length = *(a1 + 4632);
  if (!v53.length)
  {
    goto LABEL_80;
  }

LABEL_71:
  v53.location = 0;
  CFBitVectorGetBits(*(a1 + 4648), v53, v20);
  v54 = *(a1 + 4632);
  v55 = v54 + 7;
  v15 = v54 < -7;
  v56 = v54 + 14;
  if (!v15)
  {
    v56 = v55;
  }

  v57 = v56 >> 3;
LABEL_81:
  v61 = *(&v95 + 1);
  v62 = v95;
  v63 = v20;
  if (v57 + *(&v95 + 1) >= v95)
  {
    while (1)
    {
      v82 = v62 - v61;
      v92 = v63;
      memcpy(v96[0] + v61, v63, v62 - v61);
      *(&v95 + 1) += v82;
      if (store_stream_flush(&v93, 0))
      {
        break;
      }

      v63 = &v92[v82];
      v57 -= v82;
      v61 = *(&v95 + 1);
      v62 = v95;
      if (*(&v95 + 1) + v57 < v95)
      {
        goto LABEL_82;
      }
    }
  }

  else
  {
LABEL_82:
    memcpy(v96[0] + v61, v63, v57);
    *(&v95 + 1) += v57;
  }

  if (dword_1EBF46AF4 < 5)
  {
LABEL_84:
    v64 = atomic_load(v27);
    if (v64 < 0)
    {
      goto LABEL_85;
    }

    goto LABEL_95;
  }

  v83 = *__error();
  v84 = _SILogForLogForCategory(10);
  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = *(&v94 + 1) + *(&v95 + 1);
    _os_log_impl(&dword_1C278D000, v84, OS_LOG_TYPE_DEFAULT, "Post bv3 at %lld", buf, 0xCu);
  }

  *__error() = v83;
  v85 = atomic_load(v27);
  if (v85 < 0)
  {
LABEL_85:
    if (*(a1 + 4928))
    {
      if (v11 && (v65.length = *(v11 + 4384)) != 0)
      {
        v65.location = 0;
        CFBitVectorGetBits(*(v11 + 4400), v65, v20);
        v66 = *(v11 + 4384);
        v67 = v66 + 7;
        v15 = v66 < -7;
        v68 = v66 + 14;
        if (!v15)
        {
          v68 = v67;
        }

        v69 = v68 >> 3;
      }

      else
      {
        v69 = 0;
      }

      v70 = *(&v95 + 1);
      v71 = v95;
      v72 = v20;
      if (*(&v95 + 1) + v69 >= v95)
      {
        while (1)
        {
          v86 = v71 - v70;
          v87 = v72;
          memcpy(v96[0] + v70, v72, v71 - v70);
          *(&v95 + 1) += v86;
          if (store_stream_flush(&v93, 0))
          {
            break;
          }

          v72 = &v87[v86];
          v69 -= v86;
          v70 = *(&v95 + 1);
          v71 = v95;
          if (*(&v95 + 1) + v69 < v95)
          {
            goto LABEL_93;
          }
        }
      }

      else
      {
LABEL_93:
        memcpy(v96[0] + v70, v72, v69);
        *(&v95 + 1) += v69;
      }

      if (dword_1EBF46AF4 >= 5)
      {
        v88 = *__error();
        v89 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = *(&v94 + 1) + *(&v95 + 1);
          _os_log_impl(&dword_1C278D000, v89, OS_LOG_TYPE_DEFAULT, "Post bv4 at %lld", buf, 0xCu);
        }

        *__error() = v88;
      }
    }
  }

LABEL_95:
  free(v20);
  v73 = atomic_load((a1 + 36));
  if ((v73 & 2) != 0)
  {
    v79 = atomic_load((a1 + 36));
    TermUpdateSetStore(0, 0, &v93, (v79 & 8) != 0);
  }

  else
  {
    *buf = 0;
    if (a2)
    {
      v74 = atomic_load((a1 + 36));
      if ((v74 & 0xC) == 8)
      {
        indexCopyDeleteDocIds(a1, 0, buf);
      }
    }

    v75 = *buf;
    v76 = atomic_load((a1 + 36));
    TermUpdateSetStore(a2, v75, &v93, (v76 & 8) != 0);
    v77 = *buf;
    if (*buf)
    {
      v78 = *(*buf + 16);
      if (v78)
      {
        CFRelease(v78);
      }

      free(v77);
    }
  }

  store_stream_flush(&v93, 1);
  v14 = v94;
  if (v96[0])
  {
    free(v96[0]);
    v96[0] = 0;
    *&v95 = 0;
    if (v93 != -1 && v96[1])
    {
      _fd_release_fd(v96[1], v93, 0, *(&v93 + 1));
      LODWORD(v93) = -1;
    }

    v96[1] = 0;
  }

  fd_release(v6);
LABEL_110:
  v80 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t store_stream_write_bytes_3266(uint64_t a1, char *a2, size_t __n)
{
  v3 = __n;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v5 + __n >= v6)
  {
    while (1)
    {
      v8 = v6 - v5;
      v9 = a2;
      memcpy((*(a1 + 48) + v5), a2, v6 - v5);
      *(a1 + 40) += v8;
      result = store_stream_flush(a1, 0);
      if (result)
      {
        break;
      }

      a2 = &v9[v8];
      v3 -= v8;
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      if (v5 + v3 < v6)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    result = memcpy((*(a1 + 48) + v5), a2, v3);
    *(a1 + 40) += v3;
  }

  return result;
}

uint64_t termIdStoreReaderGetNext(uint64_t a1, uint64_t a2, unsigned int a3, __n128 a4, __n128 a5)
{
  ptr = storage_reader_get_ptr(a1, a2, 8 * a3, 8, a4, a5);
  if (ptr == -1)
  {
    v8 = __si_assert_copy_extra_3233(0, -1);
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s failed to read offset for term %d", "TermIdStore.h", 89, "(intptr_t)ptr!=-1", v10, a3);
    free(v9);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return *ptr;
}

uint64_t oqpush_3290(uint64_t result, uint64_t a2, size_t size)
{
  if (*result == 1)
  {
    v19 = __si_assert_copy_extra_3233(0, -1);
    v20 = v19;
    v21 = "";
    if (v19)
    {
      v21 = v19;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 332, "!oqueue->has_meta", v21);
    free(v20);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (*(result + 56))
  {
    if (*(result + 64) < (a2 & 0x3FFFFFFFFFFFFFFFuLL))
    {
      v22 = __si_assert_copy_extra_3233(0, -1);
      v5 = v22;
      v6 = "";
      if (v22)
      {
        v6 = v22;
      }

      v7 = "!queue->split || queue->splitPoint >= offset_t_GET_VALUE(value)";
LABEL_26:
      __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 252, v7, v6);
      free(v5);
      if (__valid_fs(-1))
      {
        v23 = 2989;
      }

      else
      {
        v23 = 3072;
      }

      *v23 = -559038737;
      abort();
    }

    v3 = *(result + 32);
    if (v3 >= *(result + 24))
    {
      v4 = __si_assert_copy_extra_3233(0, -1);
      v5 = v4;
      v6 = "";
      if (v4)
      {
        v6 = v4;
      }

      v7 = "!queue->split";
      goto LABEL_26;
    }
  }

  else
  {
    v8 = *(result + 24);
    v3 = *(result + 32);
    if (v3 >= v8)
    {
      v9 = a2;
      v10 = 2 * v8;
      if (!v8)
      {
        v10 = 4;
      }

      *(result + 24) = v10;
      v11 = result;
      v12 = *(result + 16);
      v13 = 8 * v10;
      if (v12)
      {
        v14 = malloc_type_zone_realloc(queryZone, v12, v13, 0xA1A7ADA0uLL);
      }

      else
      {
        v14 = malloc_type_zone_malloc(queryZone, v13, 0x566E289CuLL);
      }

      v15 = v14;
      a2 = v9;
      result = v11;
      if (!v15)
      {
        v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
        a2 = v9;
        v17 = v16;
        result = v11;
        if (v17)
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
          result = v11;
          a2 = v9;
        }
      }

      *(result + 16) = v15;
      v3 = *(result + 32);
    }
  }

  v18 = *(result + 16);
  *(result + 32) = v3 + 1;
  *(v18 + 8 * v3) = a2;
  return result;
}

uint64_t oq_meta_at_index(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    v3 = __si_assert_copy_extra_3233(0, -1);
    v4 = v3;
    v5 = "";
    if (v3)
    {
      v5 = v3;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 323, "oqueue->has_meta", v5);
    free(v4);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return *(*(a1 + 16) + 16 * a2 + 8);
}

uint64_t oq_set_offset_with_meta_at_index(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*result & 1) == 0)
  {
    v5 = __si_assert_copy_extra_3233(0, -1);
    v6 = v5;
    v7 = "";
    if (v5)
    {
      v7 = v5;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 472, "queue->has_meta", v7);
    free(v6);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v4 = (*(result + 16) + 16 * a2);
  *v4 = a3;
  v4[1] = a4;
  return result;
}

uint64_t index_DeleteIndex(uint64_t a1, uint64_t a2, const char *a3, int a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 64);
      v11 = *(a1 + 56);
      buf[0].st_dev = 67109634;
      *&buf[0].st_mode = v10;
      LOWORD(buf[0].st_ino) = 1024;
      *(&buf[0].st_ino + 2) = v11;
      HIWORD(buf[0].st_ino) = 2080;
      *&buf[0].st_uid = a1 + 15208;
      _os_log_impl(&dword_1C278D000, v9, OS_LOG_TYPE_DEFAULT, "### delete index [%d] %d %s", buf, 0x18u);
    }

    *__error() = v8;
    fd_zero_truncate(*(a1 + 4672));
    fd_zero_truncate(*(a1 + 208));
    fd_zero_truncate(*(a1 + 472));
    v12 = *(a1 + 5200);
    if (v12)
    {
      fd_zero_truncate(v12);
    }

    fd_zero_truncate(*(a1 + 9432));
    v13 = *(a1 + 9920);
    if (v13)
    {
      fd_zero_truncate(v13);
    }

    fd_zero_truncate(*(a1 + 14152));
    fd_zero_truncate(*(a1 + 14448));
    fd_zero_truncate(*(a1 + 14456));
    fd_zero_truncate(*(a1 + 14464));
    fd_zero_truncate(*(a1 + 14472));
    fd_zero_truncate(*(a1 + 14480));
    fd_zero_truncate(*(a1 + 14488));
    v14 = *(a1 + 4928);
    if (v14)
    {
      fd_zero_truncate(*(v14 + 224));
    }

    v15 = *(a1 + 4912);
    if (v15)
    {
      truncateVectorIndex(v15);
    }

    a2 = *(a1 + 64);
    if (a4)
    {
      freeIndex(a1);
    }
  }

  if (a2 == -1)
  {
    v20 = __si_assert_copy_extra_3233(0, -1);
    v21 = v20;
    v22 = "";
    if (v20)
    {
      v22 = v20;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "JHContentIndex.c", 1045, "parentDirFd!=-1", v22);
    free(v21);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  memset(buf, 0, 144);
  if (!fstat(a2, buf))
  {
    v16 = open(".", 4);
    if (MEMORY[0x1C6921200](a2))
    {
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    bzero(buf, 0x400uLL);
    snprintf(buf, 0x400uLL, "%s%s", a3, "indexDirectory");
    unlink(buf);
    snprintf(buf, 0x400uLL, "%s%s", a3, "indexCompactDirectory");
    unlink(buf);
    snprintf(buf, 0x400uLL, "%s%s", a3, "indexPostings");
    unlink(buf);
    snprintf(buf, 0x400uLL, "%s%s", a3, "indexPositions");
    unlink(buf);
    snprintf(buf, 0x400uLL, "%s%s", a3, "indexArrays");
    unlink(buf);
    snprintf(buf, 0x400uLL, "%s%s", a3, "indexTermIds");
    unlink(buf);
    snprintf(buf, 0x400uLL, "%s%s", a3, "indexPositionTable");
    unlink(buf);
    MEMORY[0x1C6921200](v16);
    if ((v16 & 0x80000000) == 0)
    {
LABEL_18:
      close(v16);
    }
  }

LABEL_19:
  memset(buf, 0, 144);
  if (!fstat(a2, buf))
  {
    v17 = open(".", 4);
    if (!MEMORY[0x1C6921200](a2))
    {
      bzero(__str, 0x400uLL);
      snprintf(__str, 0x400uLL, "%s%s", a3, "indexHead");
      unlink(__str);
      snprintf(__str, 0x400uLL, "%s%s", a3, "indexId");
      unlink(__str);
      snprintf(__str, 0x400uLL, "%s%s", a3, "indexIds");
      unlink(__str);
      snprintf(__str, 0x400uLL, "%s%s", a3, "indexDates");
      unlink(__str);
      snprintf(__str, 0x400uLL, "%s%s", a3, "indexBigDates");
      unlink(__str);
      snprintf(__str, 0x400uLL, "%s%s", a3, "indexScores");
      unlink(__str);
      snprintf(__str, 0x400uLL, "%s%s", a3, "indexGroups");
      unlink(__str);
      snprintf(__str, 0x400uLL, "%s%s", a3, "indexUpdates");
      unlink(__str);
      snprintf(__str, 0x400uLL, "%s%s", a3, "topK.v2.mdplistc");
      unlink(__str);
      bzero(buf, 0x400uLL);
      snprintf(buf, 0x400uLL, "%s%s", a3, "directoryStoreFile");
      unlink(buf);
      IVFVectorIndex_s::unlink(".", a3, 0);
      MEMORY[0x1C6921200](v17);
      if ((v17 & 0x80000000) != 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    if ((v17 & 0x80000000) == 0)
    {
LABEL_22:
      close(v17);
    }
  }

LABEL_23:
  result = index_DeleteShadow(a2, a3, 0);
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void freeIndex(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 14432);
    if (v2 + 1 >= 2)
    {
      v3 = *(a1 + 72);
      if (*(a1 + 45))
      {
        v4 = v3;
      }

      else
      {
        v4 = (4 * v3 + 4) / 5;
      }

      munmap(v2, v4);
      *(a1 + 14432) = 0;
    }

    free(*(a1 + 14440));
    *(a1 + 14440) = 0;
    fd_release(*(a1 + 14472));
    *(a1 + 14472) = 0;
    v5 = *(a1 + 14408);
    if (v5)
    {
      munmap(v5, 8 * *(a1 + 72));
      *(a1 + 14408) = 0;
    }

    v6 = *(a1 + 14416);
    if (v6)
    {
      munmap(v6, 4 * *(a1 + 72));
      *(a1 + 14416) = 0;
    }

    v7 = *(a1 + 14424);
    if (v7)
    {
      munmap(v7, 8 * *(a1 + 72));
      *(a1 + 14424) = 0;
    }

    v8 = *(a1 + 14496);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 14496) = 0;
    }

    v9 = *(a1 + 14488);
    if (v9)
    {
      fd_release(v9);
      *(a1 + 14488) = 0;
    }

    fd_release(*(a1 + 14448));
    *(a1 + 14448) = 0;
    fd_release(*(a1 + 14456));
    *(a1 + 14456) = 0;
    fd_release(*(a1 + 14464));
    *(a1 + 14464) = 0;
    v10 = *(a1 + 9440);
    if (v10 != -1)
    {
      _fd_release_fd(*(a1 + 9432), v10, 0, *(a1 + 9448));
      *(a1 + 9440) = -1;
    }

    fd_release(*(a1 + 9432));
    *(a1 + 9432) = 0;
    storageClose(a1 + 4984);
    v11 = *(a1 + 14160);
    if (v11 != -1)
    {
      _fd_release_fd(*(a1 + 14152), v11, 0, *(a1 + 14168));
      *(a1 + 14160) = -1;
    }

    fd_release(*(a1 + 14152));
    *(a1 + 14152) = 0;
    storageClose(a1 + 9704);
    fd_release(*(a1 + 4672));
    *(a1 + 4672) = 0;
    v12 = *(a1 + 104);
    if (v12 + 1 >= 2)
    {
      munmap(v12, 1028 * *(a1 + 244));
      *(a1 + 104) = 0;
    }

    closeMF(a1 + 112);
    storageClose(a1 + 256);
    fd_release(*(a1 + 14480));
    *(a1 + 14480) = 0;
    v13 = *(a1 + 4928);
    if (v13)
    {
      storageClose((v13 + 1));
      v14 = v13[550];
      if (v14)
      {
        CFRelease(v14);
      }

      free(v13);
      *(a1 + 4928) = 0;
    }

    v15 = *(a1 + 4912);
    if (v15)
    {
      IVFVectorIndex_s::~IVFVectorIndex_s((v15 + 8));
      MEMORY[0x1C691FEF0](v15, 0x1032C40E78FF076);
      *(a1 + 4912) = 0;
    }

    freePayload(a1 + 4944);
    freePayload(a1 + 9664);
    bt_freeTrie(a1 + 96);
    v16 = *(a1 + 14392);
    if (v16)
    {
      TermUpdateSetRemoveFromAccounting(v16);
      TermUpdateSetRelease(*(a1 + 14392));
      atomic_fetch_add(gTermUpdateSetCount, 0xFFFFFFFF);
    }

    v17 = *(a1 + 14400);
    if (v17)
    {
      TermUpdateSetRelease(v17);
    }

    db_rwlock_destroy((a1 + 14720));
    db_rwlock_destroy((a1 + 14504));
    pthread_mutex_destroy((a1 + 15056));
    pthread_mutex_destroy((a1 + 15120));
    dispatch_release(*(a1 + 15696));
    free(*(a1 + 14440));
    *(a1 + 14440) = 0;
    v18 = *(a1 + 15184);
    if (v18)
    {
      _Block_release(v18);
    }

    *(a1 + 15184) = 0;
    _Block_release(*(a1 + 4936));

    free(a1);
  }
}

uint64_t index_DeleteShadow(uint64_t a1, const char *a2, char a3)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(&v11, 0, sizeof(v11));
  if (!fstat(a1, &v11))
  {
    v6 = open(".", 4);
    if (MEMORY[0x1C6921200](a1))
    {
      if ((v6 & 0x80000000) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    bzero(&v11, 0x400uLL);
    snprintf(&v11, 0x400uLL, "%s%s", a2, "shadowIndexDirectory");
    unlink(&v11);
    snprintf(&v11, 0x400uLL, "%s%s", a2, "shadowIndexCompactDirectory");
    unlink(&v11);
    snprintf(&v11, 0x400uLL, "%s%s", a2, "shadowIndexArrays");
    unlink(&v11);
    MEMORY[0x1C6921200](v6);
    if ((v6 & 0x80000000) == 0)
    {
LABEL_4:
      close(v6);
    }
  }

LABEL_5:
  memset(&v11, 0, sizeof(v11));
  result = fstat(a1, &v11);
  if (!result)
  {
    v8 = open(".", 4);
    result = MEMORY[0x1C6921200](a1);
    if (result)
    {
      if ((v8 & 0x80000000) == 0)
      {
LABEL_8:
        result = close(v8);
      }
    }

    else
    {
      bzero(__str, 0x400uLL);
      if ((a3 & 1) == 0)
      {
        snprintf(__str, 0x400uLL, "%s%s", a2, "shadowIndexHead");
        unlink(__str);
        snprintf(__str, 0x400uLL, "%s%s", a2, "shadowIndexGroups");
        unlink(__str);
        bzero(&v11, 0x400uLL);
        snprintf(&v11, 0x400uLL, "%s%s.shadow", a2, "directoryStoreFile");
        unlink(&v11);
        IVFVectorIndex_s::unlink(".", a2, 1);
      }

      snprintf(__str, 0x400uLL, "%s%s", a2, "shadowIndexTermIds");
      unlink(__str);
      snprintf(__str, 0x400uLL, "%s%s", a2, "shadowIndexPositionTable");
      unlink(__str);
      result = MEMORY[0x1C6921200](v8);
      if ((v8 & 0x80000000) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t createIndex(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, unsigned int a5, char a6, int a7, int *a8, int a9, uint64_t a10, uint64_t a11, const void *a12, int a13)
{
  v77 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  memset(&v75, 0, 144);
  if (fstat(a1, &v75))
  {
LABEL_2:
    v21 = 0;
    goto LABEL_3;
  }

  v24 = open(".", 4);
  if (MEMORY[0x1C6921200](a1))
  {
    if ((v24 & 0x80000000) == 0)
    {
      close(v24);
    }

    goto LABEL_2;
  }

  v67 = v24;
  *a8 = -1;
  v25 = "";
  if (a2)
  {
    v25 = a2;
  }

  v68 = v25;
  if ((a5 & 0x1000) != 0)
  {
    v31 = *__error();
    v32 = _SILogForLogForCategory(10);
    v33 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v32, v33))
    {
      LOWORD(v75.f_bsize) = 0;
      _os_log_impl(&dword_1C278D000, v32, v33, "creating new index not allowed during locked indexing", &v75, 2u);
    }

    *__error() = v31;
    v34 = v67;
    v35 = v68;
    goto LABEL_83;
  }

  v26 = *__error();
  v27 = _SILogForLogForCategory(10);
  v28 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v27, v28))
  {
    v75.f_bsize = 136315138;
    *&v75.f_iosize = v68;
    _os_log_impl(&dword_1C278D000, v27, v28, "creating index at %s", &v75, 0xCu);
  }

  *__error() = v26;
  index_DeleteIndex(0, a1, v68, 1);
  v29 = malloc_type_calloc(1uLL, 0x3D68uLL, 0x10F00405C9458FEuLL);
  if (!v29)
  {
    *a8 = -1;
    v34 = v67;
    v35 = v68;
LABEL_83:
    index_DeleteIndex(0, a1, v35, 1);
    v21 = 0;
    goto LABEL_84;
  }

  v21 = v29;
  v66 = v29 + 12288;
  initIndex(v29, a12);
  __strlcpy_chk();
  *(v21 + 4) = a9;
  if (a7 && (a6 & 1) == 0)
  {
    atomic_fetch_or((v21 + 36), 8u);
  }

  *(v21 + 80) = a3;
  *(v21 + 88) = 1447;
  if (a11)
  {
    v30 = (*(a11 + 16))(a11, 0);
  }

  else
  {
    v30 = 0;
  }

  *(v21 + 56) = v30;
  *(v21 + 64) = a1;
  *(v21 + 15716) = a13;
  __strlcpy_chk();
  __strlcpy_chk();
  *(v21 + 68) = 0x100000000001;
  v66[2914] = (a5 & 0x10) != 0;
  *(v21 + 45) = BYTE1(a5) & 1;
  *(v21 + 46) = (a5 & 0x400) != 0;
  *(v66 + 3425) = 0;
  bzero(&v75, 0x878uLL);
  if (fstatfs(a1, &v75))
  {
    v36 = *__error();
    v37 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "createIndex";
      *&buf[12] = 1024;
      *&buf[14] = 1469;
      *&buf[18] = 2080;
      *&buf[20] = a4;
      _os_log_error_impl(&dword_1C278D000, v37, OS_LOG_TYPE_ERROR, "%s:%d: Couldn't statfs parent directory: %s", buf, 0x1Cu);
    }
  }

  else
  {
    v38 = 0;
    v39 = *v75.f_fstypename;
    v40 = *v75.f_fstypename == 1634105445 && *&v75.f_fstypename[4] == 116;
    v41 = v40;
    v66[3425] = v41;
    if (v39 ^ 0x73667061 | v75.f_fstypename[4] && v39 != 7562856)
    {
      v38 = (*v75.f_fstypename != 1634105445 || *&v75.f_fstypename[4] != 116) && (*v75.f_fstypename != 1868854125 || *&v75.f_fstypename[4] != 115);
    }

    v44 = 0;
    if ((a5 & 0x8000) != 0 && !v38)
    {
      v44 = (a5 & 0x20) == 0;
    }

    v66[3426] = v44;
    v36 = *__error();
    v45 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v40 = v66[3426] == 0;
      *buf = 136316162;
      v46 = "";
      if (v40)
      {
        v46 = "not";
      }

      *&buf[4] = v68;
      *&buf[12] = 2080;
      *&buf[14] = v46;
      *&buf[22] = 2080;
      *&buf[24] = v75.f_fstypename;
      v71 = 1024;
      v72 = (a5 >> 15) & 1;
      v73 = 1024;
      v74 = (a5 >> 5) & 1;
      _os_log_impl(&dword_1C278D000, v45, OS_LOG_TYPE_DEFAULT, "createIndex(%s) VectorIndex %s supported on %s isLocalVolume: %d, isBackup: %d", buf, 0x2Cu);
    }
  }

  *__error() = v36;
  v35 = v68;
  snprintf(__str, 0x400uLL, "%s%s", v68, "indexHead");
  v47 = open_index_file(a1, __str, 1538, 0, 0, 0, 0, 0, a8);
  *(v21 + 14480) = v47;
  if (v47)
  {
    v48 = v47;
    *buf = 0;
    v49 = _fd_acquire_fd(v47, buf);
    if (v49 != -1)
    {
      *(v48 + 28) |= 1u;
      v50 = v49;
      fcntl(v49, 48, 1);
      fcntl(v50, 76, v48[7] & 1);
      _fd_release_fd(v48, v50, 0, *buf);
    }

    v51 = *(v21 + 56);
    if (v51)
    {
      memset(buf, 0, sizeof(buf));
      v69 = buf;
      storeVInt64(&v69, v51);
      v52 = v69 - buf;
      if (v69 != buf)
      {
        snprintf(__str, 0x400uLL, "%s%s", v68, "indexId");
        v53 = open_index_file(a1, __str, 1538, 0, 0, 1, 0, 2, a8);
        if (v53)
        {
          v54 = v53;
          fd_pwrite(v53, buf, v52, 0);
          fd_release(v54);
        }
      }
    }

    v55 = *__error();
    v56 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = *(v21 + 56);
      *buf = 67109378;
      *&buf[4] = v57;
      *&buf[8] = 2080;
      *&buf[10] = __str;
      _os_log_impl(&dword_1C278D000, v56, OS_LOG_TYPE_DEFAULT, "create indexid %u %s", buf, 0x12u);
    }

    *__error() = v55;
    snprintf(__str, 0x400uLL, "%s%s", v68, "indexIds");
    v58 = open_index_file(a1, __str, 1538, 0x8000, 0, 1, (v21 + 14408), 3, a8);
    *(v21 + 14448) = v58;
    if (v58)
    {
      v66[2917] = 1;
      snprintf(__str, 0x400uLL, "%s%s", v68, "indexBigDates");
      *(v21 + 14456) = open_index_file(a1, __str, 1538, 0x4000, 0, 1, (v21 + 14416), 3, a8);
      if ((a5 & 0x100) != 0)
      {
        snprintf(__str, 0x400uLL, "%s%s", v68, "indexScores");
        *(v21 + 14464) = open_index_file(a1, __str, 1538, 0x8000, 0, 1, (v21 + 14424), 3, a8);
      }

      snprintf(__str, 0x400uLL, "%s%s", v68, "indexGroups");
      v59 = *(v21 + 45) ? 4096 : 3277;
      v60 = open_index_file(a1, __str, 1538, v59, 0, 1, (v21 + 14432), 3, a8);
      *(v21 + 14472) = v60;
      if (v60)
      {
        if (openPayload(v21 + 4944, *(v21 + 64), v68, "indexPostings", "indexTermIds", __str, 0, 0, a6 ^ 1u, *(v21 + 4), *(v21 + 4936)))
        {
          if (openPayload(v21 + 9664, *(v21 + 64), v68, "indexPositions", "indexPositionTable", __str, 0, 0, a6 ^ 1u, *(v21 + 4), *(v21 + 4936)))
          {
            if (bt_openTrie(v21 + 96, *(v21 + 64), v68, 0, 0, 0, *(v21 + 4), *(v21 + 4936)))
            {
              snprintf(__str, 0x400uLL, "%s%s", v68, "indexUpdates");
              v61 = fd_create_protected(a1, __str, 1538, 0);
              fd_release(v61);
              if ((a5 & 0x40) == 0 || (atomic_fetch_or((v21 + 36), 0x80u), ForwardStore = createForwardStore(a1, v68, *(v21 + 4936)), (*(v21 + 4928) = ForwardStore) != 0))
              {
                if (_os_feature_enabled_impl() && v66[3426] == 1)
                {
                  v63 = *__error();
                  v64 = _SILogForLogForCategory(10);
                  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                  {
                    v65 = *(v21 + 56);
                    *buf = 67109120;
                    *&buf[4] = v65;
                    _os_log_impl(&dword_1C278D000, v64, OS_LOG_TYPE_DEFAULT, "create vector index for indexid %d", buf, 8u);
                  }

                  *__error() = v63;
                  if (*(v21 + 56))
                  {
                    createVectorIndex(a1, v68);
                  }
                }

                *(v21 + 8) = 1;
                *a8 = 0;
                v34 = v67;
                goto LABEL_84;
              }
            }
          }
        }
      }
    }
  }

  if (*a8)
  {
    freeIndex(v21);
    v34 = v67;
    goto LABEL_83;
  }

  v34 = v67;
LABEL_84:
  MEMORY[0x1C6921200](v34);
  if ((v34 & 0x80000000) == 0)
  {
    close(v34);
  }

LABEL_3:
  v22 = *MEMORY[0x1E69E9840];
  return v21;
}