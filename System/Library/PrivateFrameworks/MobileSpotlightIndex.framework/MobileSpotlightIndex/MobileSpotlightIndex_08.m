uint64_t __setCSAttributes2_block_invoke_4(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v76 = *MEMORY[0x1E69E9840];
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v6 = setThreadIdAndInfo(*(v4 + 152), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v70 = v6;
  v7 = threadData[9 * v6 + 1] + 320 * HIDWORD(v6);
  v69 = HIDWORD(v6);
  v68 = __PAIR64__(v8, v9);
  *(v7 + 216) = 0;
  v10 = *(v7 + 312);
  v11 = *(v7 + 224);
  if (v11)
  {
    v11(*(v7 + 288));
  }

  v67 = v70;
  v66 = v69;
  v65 = v68;
  if (_setjmp(v7))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v7 + 312) = v10;
    CIOnThreadCleanUpReset(v65);
    dropThreadId(v67, 1, add_explicit + 1);
    result = CICleanUpReset(v67, HIDWORD(v65));
  }

  else
  {
    v13 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v14 = setThreadIdAndInfo(-1, sJournalCtxExceptionCallbacks, *(v4 + 40), 0x40000000, v13 + 1);
    v63 = HIDWORD(v14);
    v64 = v14;
    v62 = __PAIR64__(v15, v16);
    v17 = threadData[9 * v14 + 1] + 320 * HIDWORD(v14);
    *(v17 + 216) = 0;
    v18 = *(v17 + 312);
    v19 = *(v17 + 224);
    if (v19)
    {
      v19(*(v17 + 288));
    }

    v61 = v64;
    v60 = v63;
    v59 = v62;
    if (_setjmp(v17))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v17 + 312) = v18;
      CIOnThreadCleanUpReset(v59);
      dropThreadId(v61, 1, v13 + 1);
      CICleanUpReset(v61, HIDWORD(v59));
    }

    else
    {
      v46 = v2;
      bzero(buf, 0x1000uLL);
      v20 = _SIStackAllocatorCreate(buf, 4096, indexingZone);
      if (atomic_fetch_add_explicit(*(v4 + 48), 1uLL, memory_order_relaxed) < *(v4 + 156))
      {
        v45 = v20;
        v44 = *MEMORY[0x1E695E480];
        do
        {
          v57 = 0uLL;
          v58 = 0;
          v71 = *(v4 + 56);
          v72 = *(v4 + 72);
          _MDPlistArrayGetPlistObjectAtIndex();
          if (!v75)
          {
            v74 = (*buf + 55) & 0xFFFFFFFFFFFFFFF0;
          }

          v71 = v57;
          v72 = v58;
          if (_MDPlistGetPlistObjectType() == 246)
          {
            *&v55 = 0;
            v71 = v57;
            v72 = v58;
            _MDPlistDataGetBytePtr();
            _MDPlistGetRootPlistObjectFromBytes();
            v57 = v71;
            v58 = v72;
          }

          v71 = v57;
          v72 = v58;
          if (_MDPlistGetPlistObjectType() == 240)
          {
            v71 = v57;
            v72 = v58;
            Count = _MDPlistArrayGetCount();
            if ((Count - 3) <= 1)
            {
              v22 = Count;
              v55 = v57;
              v56 = v58;
              _MDPlistArrayGetPlistObjectAtIndex();
              IntValue = _MDPlistNumberGetIntValue();
              if ((IntValue & 2) == 0)
              {
                v24 = IntValue;
                v43 = *(*(v4 + 40) + 80);
                v55 = 0uLL;
                v56 = 0;
                v71 = v57;
                v72 = v58;
                _MDPlistArrayGetPlistObjectAtIndex();
                v53 = 0uLL;
                v54 = 0;
                v71 = v55;
                v72 = v56;
                if (_MDPlistDictionaryGetPlistObjectForKey())
                {
                  v71 = v57;
                  v72 = v58;
                  PlistObjectSize = _MDPlistGetPlistObjectSize();
                  v71 = v53;
                  v72 = v54;
                  v25 = _MDPlistContainerCopyCSObject();
                  if (v25)
                  {
                    v26 = v25;
                    if (CFStringGetLength(v25))
                    {
                      v51 = 0uLL;
                      v52 = 0;
                      if (v22 == 4)
                      {
                        v71 = v57;
                        v72 = v58;
                        _MDPlistArrayGetPlistObjectAtIndex();
                      }

                      if (*(v4 + 160) == 1)
                      {
                        bzero(&v71, 0x400uLL);
                        v27 = 0;
                        if (CFStringGetCString(v26, &v71, 1024, 0x8000100u))
                        {
                          v49 = 0uLL;
                          v50 = 0;
                          v47 = *(v4 + 80);
                          v48 = *(v4 + 96);
                          if (_MDPlistDictionaryGetPlistObjectForKey())
                          {
                            v27 = _MDPlistContainerCopyCSObject();
                          }
                        }
                      }

                      else
                      {
                        v27 = 0;
                      }

                      v28 = *(v4 + 104);
                      v29 = *(v4 + 112);
                      v30 = *(v4 + 120);
                      v31 = *(v4 + 128);
                      v32 = (*(*(v4 + 32) + 8) + 24);
                      v33 = *(v4 + 136);
                      v34 = *(v4 + 144);
                      v71 = v55;
                      v72 = v56;
                      v49 = v51;
                      v50 = v52;
                      v35 = processOneCS(v28, v29, v30, v31, (v24 << 16) & 0x100000 | ((v24 & 1) << 17) | v43, &v71, &v49, v27, PlistObjectSize, v45, 1u, v33, v32, v34);
                      CFRelease(v26);
                      if (v27)
                      {
                        CFRelease(v27);
                      }

                      if (v46)
                      {
                        v36 = v35;
                      }

                      else
                      {
                        v36 = 0;
                      }

                      if (v36)
                      {
                        break;
                      }
                    }

                    else
                    {
                      CFRelease(v26);
                    }
                  }
                }
              }
            }
          }
        }

        while (atomic_fetch_add_explicit(*(v4 + 48), 1uLL, memory_order_relaxed) < *(v4 + 156));
      }

      v37 = threadData[9 * v61 + 1] + 320 * v60;
      *(v37 + 312) = v18;
      v38 = *(v37 + 232);
      if (v38)
      {
        v38(*(v37 + 288));
      }

      dropThreadId(v61, 0, v13 + 1);
    }

    v39 = threadData[9 * v67 + 1] + 320 * v66;
    *(v39 + 312) = v10;
    v40 = *(v39 + 232);
    if (v40)
    {
      v40(*(v39 + 288));
    }

    result = dropThreadId(v67, 0, add_explicit + 1);
  }

  v41 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CopyUTITypeDescriptionDictionary(uint64_t a1, const __CFString *a2)
{
  pushSkipCrashState();
  v10 = 0;
  cf = 0;
  v4 = _MDBundleUtilsCopyCachedLocalizedDescriptionDictionary();
  if (!v4)
  {
    si_indexingWatchdogSuspend(*(a1 + 64));
    v6 = _CopyUTITypeInfo(a2, 0, &cf, &v10);
    si_indexingWatchdogResume(*(a1 + 64));
    if (v6)
    {
      v7 = *MEMORY[0x1E695E480];
      Length = CFStringGetLength(a2);
      MutableCopy = CFStringCreateMutableCopy(v7, Length, a2);
      si_indexingWatchdogSuspend(*(a1 + 64));
      v4 = _MDBundleUtilsCopyLocalizedDescriptionDictionary();
      si_indexingWatchdogResume(*(a1 + 64));
      CFRelease(MutableCopy);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  popSkipCrashState();
  return v4;
}

double getTimeForDateField(int *a1, uint64_t a2, char *a3)
{
  v7 = 0;
  v8 = 0;
  if (db_get_field(a1, a2, "_kMDItemInterestingDate", &v7, &v8))
  {
    v4 = 1;
  }

  else
  {
    v4 = v7 == 0;
  }

  if (v4 || *v7 != 12)
  {
    v6 = 0;
    result = -INFINITY;
  }

  else
  {
    result = *v8;
    v6 = 1;
  }

  *a3 = v6;
  if (result == -INFINITY)
  {
    return 0.0;
  }

  return result;
}

void si_indexingWatchdogSuspend(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_7:
    v6 = *MEMORY[0x1E69E9840];
    return;
  }

  os_unfair_lock_lock((a1 + 64));
  v2 = *(a1 + 68);
  *(a1 + 68) = v2 + 1;
  if (*(a1 + 40))
  {
    if (!v2)
    {
      v3 = *(a1 + 48);
      Current = CFAbsoluteTimeGetCurrent();
      v5 = *a1;
      if (gSILogLevels[0] >= 5)
      {
        v12 = *a1;
        v11 = Current;
        v8 = *__error();
        v9 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 40);
          *buf = 134218752;
          v14 = v12;
          v15 = 2048;
          v16 = v10;
          v17 = 2048;
          v18 = v3;
          v19 = 2048;
          v20 = v11;
          _os_log_impl(&dword_1C278D000, v9, OS_LOG_TYPE_DEFAULT, "Suspending the indexing watchdog, timer:%p, delta:%llus, startTime:%.3f, suspendTime:%.3f", buf, 0x2Au);
        }

        *__error() = v8;
        Current = v11;
        v5 = v12;
      }

      *(a1 + 56) = Current;
      dispatch_suspend(v5);
    }

    os_unfair_lock_unlock((a1 + 64));
    goto LABEL_7;
  }

  v7 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock((a1 + 64));
}

uint64_t _CopyUTITypeInfo(const __CFString *a1, uint64_t a2, CFTypeRef *a3, CFURLRef *a4)
{
  if (a2 > 9)
  {
    return 0;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = UTTypeCopyDeclaration(a1);
  objc_autoreleasePoolPop(v8);
  if (!v9)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v9, *MEMORY[0x1E69637A0]);
  if (Value)
  {
    if (a3)
    {
      *a3 = CFRetain(Value);
    }

    if (a4)
    {
      v11 = objc_autoreleasePoolPush();
      *a4 = UTTypeCopyDeclaringBundleURL(a1);
      objc_autoreleasePoolPop(v11);
    }

    v12 = 1;
  }

  else
  {
    v13 = CFDictionaryGetValue(v9, *MEMORY[0x1E6963780]);
    if (!v13)
    {
      goto LABEL_16;
    }

    ValueAtIndex = v13;
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(ValueAtIndex) && CFArrayGetCount(ValueAtIndex) == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0);
    }

    v16 = CFStringGetTypeID();
    if (v16 == CFGetTypeID(ValueAtIndex))
    {
      v12 = _CopyUTITypeInfo(ValueAtIndex, a2 + 1, a3, a4);
    }

    else
    {
LABEL_16:
      v12 = 0;
    }
  }

  CFRelease(v9);
  return v12;
}

void si_indexingWatchdogResume(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_16:
    v13 = *MEMORY[0x1E69E9840];
    return;
  }

  os_unfair_lock_lock((a1 + 64));
  v2 = *(a1 + 68) - 1;
  *(a1 + 68) = v2;
  v3 = *(a1 + 40);
  if (v3)
  {
    if (!v2)
    {
      v4 = *(a1 + 48);
      v5 = *(a1 + 56);
      v6 = v5 - v4;
      v7 = v3;
      if (v4 <= v5 && v6 < v7)
      {
        v3 = (v7 - v6);
      }

      if (v3 <= 0x3C)
      {
        v9 = 60;
      }

      else
      {
        v9 = v3;
      }

      v10 = *a1;
      if (gSILogLevels[0] >= 5)
      {
        v17 = *(a1 + 48);
        v18 = *(a1 + 56);
        v19 = v9;
        v15 = *__error();
        v16 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218752;
          v21 = v10;
          v22 = 2048;
          v23 = v19;
          v24 = 2048;
          v25 = v17;
          v26 = 2048;
          v27 = v18;
          _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, "Resuming the indexing watchdog, timer:%p, delta:%llus, startTime:%.3f, suspendTime:%.3f", buf, 0x2Au);
        }

        *__error() = v15;
        v9 = v19;
      }

      *(a1 + 40) = v9;
      Current = CFAbsoluteTimeGetCurrent();
      *(a1 + 48) = Current;
      *(a1 + 112) = Current;
      *(a1 + 104) = 1;
      v12 = dispatch_time(0, 1000000000 * v9);
      dispatch_source_set_timer(v10, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(v10);
    }

    os_unfair_lock_unlock((a1 + 64));
    goto LABEL_16;
  }

  v14 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock((a1 + 64));
}

uint64_t db_cache_contains(uint64_t *a1, unsigned int a2, int a3)
{
  v3 = a3;
  if (a3)
  {
    pthread_rwlock_rdlock((a1 + 1));
  }

  v6 = *(a1 + 55);
  if (v6 < 1)
  {
    v11 = 0;
    if (v3)
    {
LABEL_8:
      pthread_rwlock_unlock((a1 + 1));
    }
  }

  else
  {
    v7 = a1 + 63;
    v8 = 1;
    do
    {
      v10 = *v7++;
      v9 = v10;
      v11 = v10 == a2;
      if (v8 >= v6)
      {
        break;
      }

      ++v8;
    }

    while (v9 != a2);
    if (v3)
    {
      goto LABEL_8;
    }
  }

  if (v11)
  {
LABEL_10:
    v12 = 1;
    return v12 & 1;
  }

  v13 = *(a1 + 55);
  if (v13 >= 1)
  {
    v14 = a1 + 63;
    do
    {
      v15 = *v14++;
      if (v15 == a2)
      {
        goto LABEL_10;
      }
    }

    while (--v13);
  }

  v16 = atomic_load(a1 + 62);
  if (v16 <= a2)
  {
    goto LABEL_20;
  }

  v18 = *a1;
  if (sdb_init_cache_onceToken != -1)
  {
    dispatch_once(&sdb_init_cache_onceToken, &__block_literal_global_32_15986);
  }

  if (sdb_init_cache_status == 1 && !cache_get_info_for_key())
  {
    v12 = 0;
  }

  else
  {
LABEL_20:
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t db_cache_flush_entry(unsigned int *a1, int a2, uint64_t a3)
{
  v3 = a1 + 63;
  v4 = a1[a2 + 63];
  if (!v4)
  {
    return 0;
  }

  v5 = a2;
  v6 = &a1[12 * a2];
  if (!*(v6 + 34))
  {
    return 0;
  }

  v8 = v6 + 68;
  v16[0] = 0uLL;
  v9 = atomic_load(a1 + 62);
  if (v9 > v4)
  {
    *&v16[0] = *a1;
    *(&v16[0] + 1) = v4;
    v10 = a1;
    _cache_remove(v16);
    a1 = v10;
  }

  page_cache_add(a1, v8, v3[v5], 0);
  v11 = v3[v5];
  memset(v16, 0, sizeof(v16));
  v17 = 0u;
  LODWORD(v16[0]) = v11;
  *(v16 + 8) = *v8;
  DWORD2(v16[1]) = v8[4];
  *&v17 = *(v8 + 3);
  DWORD2(v17) = v8[8];
  v18 = *(v8 + 5);
  result = (*(a3 + 16))(a3, v16);
  v14 = *(&v16[0] + 1);
  v13 = *&v16[1];
  *v8 = *(&v16[0] + 1);
  *(v8 + 1) = v13;
  v8[4] = DWORD2(v16[1]);
  *(v8 + 3) = v17;
  v8[8] = DWORD2(v17);
  *(v8 + 5) = v18;
  v3[v5] = v16[0];
  if (!v14)
  {
    v15 = result;
    free(v13);
    result = v15;
    *(v8 + 1) = 0u;
    *(v8 + 2) = 0u;
    *v8 = 0u;
    v3[v5] = 0;
  }

  return result;
}

uint64_t _cache_remove(uint64_t *key)
{
  v13 = *MEMORY[0x1E69E9840];
  if (sdb_init_cache_onceToken != -1)
  {
    dispatch_once(&sdb_init_cache_onceToken, &__block_literal_global_32_15986);
  }

  if (sdb_init_cache_status == 1)
  {
    result = cache_remove(sdbLargeCacheArray, key);
    if (dword_1EBF46AE8 >= 5)
    {
      v3 = result;
      v4 = *__error();
      v5 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *key;
        v7 = *(key + 2);
        v9 = 134218240;
        v10 = v6;
        v11 = 1024;
        v12 = v7;
        _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "Cache remove %p %d", &v9, 0x12u);
      }

      *__error() = v4;
      result = v3;
    }
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL setupReaderOwnedWindow(int a1, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v19 = 0;
    v6 = *(a3 + 40);
    v7 = malloc_type_calloc(1uLL, 0x30uLL, 0x10800408BF3291EuLL);
    atomic_store(1u, v7);
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    *(v7 + 40) = 1;
    *(v7 + 3) = 0;
    *(v7 + 4) = v6;
    v19 = v7;
    v8 = a1;
    v9 = *(a3 + 48);
    *(v7 + 2) = a1 << v9;
    *(v7 + 3) = (a1 + 1) << v9;
    v10 = fd_mmap(*a3);
    *(v7 + 1) = v10;
    v11 = v10 != -1;
    if (v10 == -1)
    {
      v12 = *__error();
      v13 = *__error();
      v14 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = *(v7 + 3) - *(v7 + 2);
        v18 = *(a3 + 16);
        *buf = 136316674;
        v21 = "setupReaderOwnedWindow";
        v22 = 1024;
        v23 = 1012;
        v24 = 2048;
        v25 = a3;
        v26 = 2048;
        v27 = 0;
        v28 = 2048;
        v29 = v17;
        v30 = 1024;
        v31 = v12;
        v32 = 2048;
        v33 = v18;
        _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: mmap(%p, offset: %llx, size: %ld) error:%d, fSize:%lld", buf, 0x40u);
      }

      *__error() = v13;
      storageWindowRelease(&v19);
    }

    else
    {
      __dmb(0xBu);
      *(a2 + 8 * v8 + 584) = v7;
      *(a2 + v8 + 12) = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

void getattr_runLoop(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v6 = pthread_self();
  v7 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = v6;
  dispatch_sync(v7, &v9);
  a2(a3, 0);
  v8 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = 0;
  dispatch_sync(v8, &v9);
}

void si_fetchClientState(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  buffer[0] = *"no bundleid";
  memset(&buffer[1], 0, 112);
  CFStringGetCString(*(a1 + 16), buffer, 128, 0x8000100u);
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = buffer;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Client state fetch for %s cancelled", buf, 0xCu);
    }

    v4 = *(*(a1 + 8) + 16);
    goto LABEL_6;
  }

  v18 = 0;
  if (si_get_object_for_identifier_createParentDBO(*a1, @"com.apple.searchd", *(a1 + 16), 0, 0, 0, &v18, 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = buffer;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Client state fetch for %s failed; no corresponding entry in bundle com.apple.searchd", buf, 0xCu);
    }

    v4 = *(*(a1 + 8) + 16);
LABEL_6:
    v4();
    deallocFetchClientStateCtx(a1);
    goto LABEL_25;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v24 = 0u;
  v25 = 0u;
  *buf = 0u;
  v17 = 0;
  v5 = fasterUTF8String(*(a1 + 24), &v16, buf, 256, &v17);
  bytes = 0;
  v15 = 0;
  if (db_get_field(*(*a1 + 1192), v18, v5, &v15, &bytes))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 136315394;
      v20 = buffer;
      v21 = 2080;
      v22 = v5;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Client state fetch for %s failed; no field %s in db entry", v19, 0x16u);
    }

    v13 = 0;
    v12 = 0;
    v6 = MEMORY[0x1E69E9C10];
    while (db_next_field(*(*a1 + 1192), v18, 0, &v13, &v12, 0) == 35)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 136315394;
        v20 = buffer;
        v21 = 2080;
        v22 = v12;
        _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, "Client state fetch for %s failed; field present: %s", v19, 0x16u);
      }
    }

    v7 = *(*(a1 + 8) + 16);
  }

  else
  {
    v8 = *v15;
    if (v8 == 14)
    {
      v9 = CFDataCreate(*MEMORY[0x1E695E480], bytes, *(v15 + 2));
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(v15 + 2);
        *v19 = 136315394;
        v20 = buffer;
        v21 = 1024;
        LODWORD(v22) = v10;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Client state fetch for %s succeeded; state has length %d", v19, 0x12u);
      }

      (*(*(a1 + 8) + 16))();
      CFRelease(v9);
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 136315394;
      v20 = buffer;
      v21 = 1024;
      LODWORD(v22) = v8;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Client state fetch for %s succeeded; state has incorrect type %d", v19, 0x12u);
    }

    v7 = *(*(a1 + 8) + 16);
  }

  v7();
LABEL_23:
  free(v18);
  deallocFetchClientStateCtx(a1);
  if (v17 == 1)
  {
    free(v5);
  }

LABEL_25:
  v11 = *MEMORY[0x1E69E9840];
}

void deallocFetchClientStateCtx(const void **a1)
{
  _Block_release(a1[1]);
  CFRelease(a1[2]);
  CFRelease(a1[3]);

  free(a1);
}

uint64_t si_lqn_equals(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  if (v2 != *(a2 + 48) || *(a1 + 72) != *(a2 + 72))
  {
    return 0;
  }

  if ((v2 & 0x30) != 0)
  {
    return 1;
  }

  if ((v2 & 3) != 0)
  {
    if (*a1 != *a2)
    {
      return 0;
    }

    return *(a1 + 8) == *(a2 + 8);
  }

  else
  {
    result = *(a1 + 16);
    if (result)
    {
      v4 = *(a2 + 16);
      if (!v4)
      {
        return 0;
      }

      if (result == v4)
      {
        return 1;
      }

      return db_equal_qps(result, v4);
    }
  }

  return result;
}

uint64_t db_equal_qps(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 != *(a2 + 24))
  {
    return 0;
  }

  if (*(a1 + 52) != *(a2 + 52))
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v3 = *(a1 + 60);
  if (v3 != *(a2 + 60))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  if (((*(a2 + 32) ^ v4) & 0xFFFFFFE23FFFFFFELL) != 0)
  {
    return 0;
  }

  if (*a1 != *a2)
  {
    v6 = a1;
    v7 = a2;
    v8 = strcmp(*a1, *a2);
    a2 = v7;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      return 0;
    }
  }

  if ((v4 & 0x800000) != 0 && *(a1 + 28) != *(a2 + 28))
  {
    return 0;
  }

  if ((v4 & 0xC0000) != 0 && (v4 & 0x200) == 0)
  {
    v10 = *(a1 + 40);
    if (v10 == *(a2 + 40))
    {
      v11 = memcmp(*(a1 + 288), *(a2 + 288), 8 * v10);
      return v11 == 0;
    }

    return 0;
  }

  if (*(a1 + 72) && *(a2 + 72))
  {
    v12 = *(a1 + 72);
    v13 = *(a2 + 72);
LABEL_19:
    v11 = strcmp(v12, v13);
    return v11 == 0;
  }

  if (v2 == 15)
  {
    if (*(a1 + 296) && *(a2 + 296) && *(a1 + 64) == *(a2 + 64))
    {
      v14 = -1;
      if ((v3 & 3) != 3)
      {
        v15 = (v3 >> 2) & 3;
        if (v15 != 3)
        {
          v14 = (vector_dimension_vec_sizes_15424[v3 & 3] * vector_size_elem_sizes_15423[v15]);
        }
      }

      v11 = memcmp(*(a1 + 296), *(a2 + 296), v14);
      return v11 == 0;
    }

    return 0;
  }

  if ((v2 - 11) > 1)
  {
    if ((v2 - 13) > 1)
    {
      return 0;
    }

    v21 = *(a1 + 40);
    if (v21 != *(a2 + 40))
    {
      return 0;
    }

    if (v21 < 1)
    {
      return 1;
    }

    else
    {
      v22 = *(a1 + 168);
      v23 = *(a2 + 168);
      v24 = v21 - 1;
      do
      {
        v26 = *v22++;
        v25 = v26;
        v27 = *v23++;
        v28 = strcmp(v25, v27);
        result = v28 == 0;
        v30 = v24-- != 0;
      }

      while (!v28 && v30);
    }
  }

  else
  {
    if (*(a1 + 40) != 2)
    {
      return 0;
    }

    v16 = *(a1 + 168);
    result = *v16;
    if (*v16)
    {
      v17 = v16[1];
      if (v17)
      {
        v18 = *(a2 + 168);
        v19 = *v18;
        if (*v18)
        {
          v20 = v18[1];
          if (v20)
          {
            v31 = v17;
            v32 = v20;
            if (*(a2 + 40) == 2 && !strcmp(result, v19))
            {
              v12 = v31;
              v13 = v32;
              goto LABEL_19;
            }
          }
        }
      }

      return 0;
    }
  }

  return result;
}

void SIIndexInactive(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 1192))
    {
      v3 = *(a1 + 1040);
      if (v3)
      {

        si_enqueue_work(v3, si_index_inactive, a1);
      }
    }
  }

  else
  {
    v4 = qos_class_self();
    global_queue = dispatch_get_global_queue(v4, 0);

    dispatch_async(global_queue, &__block_literal_global_538);
  }
}

void SISynchedOp(uint64_t a1, int a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a1 && *(a1 + 1048))
  {
    v7 = malloc_type_malloc(0x20uLL, 0x10A0040D5506429uLL);
    v7[1] = a1;
    v7[2] = a3;
    *v7 = a4;
    *(v7 + 6) = a2;
    if (a2 == 1)
    {
      v8 = delayed_op_final;
    }

    else
    {
      v8 = delayed_op0;
    }

    v9 = *(a1 + 1104);

    si_enqueue_work_with_qos(v9, 5, v8, v7);
  }

  else
  {

    a3(a4, 1);
  }
}

atomic_uint *attachJournal(atomic_uint *result)
{
  if (atomic_fetch_add(journalsEnqueued, 1u) > 15 || (v1 = result, result = *result, result[1741]) || (result = getJournalFd(result, 1, 1), (*(v1 + 8) = result) == 0))
  {
    atomic_fetch_add(journalsEnqueued, 0xFFFFFFFF);
  }

  else
  {
    v1[14] = 2696;
  }

  return result;
}

void CIPurgeTokenizers()
{
  for (i = 0; i != 4; ++i)
  {
    v1 = OSAtomicDequeue(&gIndexingTokenizerStack + i, 0);
    while (1)
    {
      v2 = OSAtomicDequeue(&gIndexingTokenizerStack + i, 0);
      if (!v2)
      {
        break;
      }

      v3 = v2;
      CITokenizerDispose(v2[1]);
      v3[1] = 0;
      OSAtomicEnqueue(&gIndexingTokenizerHeap, v3, 0);
    }

    if (v1)
    {
      OSAtomicEnqueue(&gIndexingTokenizerStack + i, v1, 0);
    }
  }
}

uint64_t _fd_close_inactive(int a1, const char *a2, char a3, int a4)
{
  v45 = a1;
  v47 = *MEMORY[0x1E69E9840];
  if (gOpenLimit <= 2047)
  {
    v7 = (gOpenLimit + (gOpenLimit >> 31)) >> 1;
  }

  else
  {
    v7 = 1024;
  }

  MEMORY[0x1EEE9AC00]();
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v9, v8);
  MEMORY[0x1EEE9AC00]();
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v10);
  pthread_mutex_lock(&g_fd_lock);
  v12 = &qword_1EDD81000;
  v13 = g_fd_list;
  v14 = *(g_fd_list + 16);
  if (!v14 || ((v15 = *(v14 + 16), !a2) ? (v16 = 0) : (v16 = strlen(a2), v12 = &qword_1EDD81000), (v17 = *(g_fd_list + 4), v17 < *(g_fd_list + 8)) && (a3 & 1) != 0))
  {
    pthread_mutex_unlock(&g_fd_lock);
    v18 = 0;
    goto LABEL_38;
  }

  v43 = a2;
  v44 = a4;
  v18 = 0;
  v19 = 0;
  v20 = v45;
  while (1)
  {
    v21 = *(v15 + 40);
    if (v21 != -1 && !*(v15 + 36) && v17 && !*(v15 + 68) && (!v44 || (*(v15 + 56) & 2) == 0))
    {
      if (v20 != -1)
      {
        if (*(v15 + 44) != v20)
        {
          goto LABEL_14;
        }

        if (v16)
        {
          v42 = v16;
          v22 = v12;
          bzero(v46, 0x400uLL);
          v23 = fd_name(v15, v46, 0x400uLL);
          if (!v23)
          {
            v12 = v22;
            v13 = v22[14];
LABEL_33:
            v20 = v45;
            v16 = v42;
            goto LABEL_14;
          }

          v24 = strncmp(v43, v23, v42);
          v12 = v22;
          v13 = v22[14];
          if (v24)
          {
            goto LABEL_33;
          }

          v21 = *(v15 + 40);
          v20 = v45;
          v16 = v42;
        }
      }

      v25 = *(v15 + 56);
      *&v11[8 * v18] = *(v15 + 8);
      *&v9[4 * v18] = v21;
      *(v15 + 8) = 0;
      *(v15 + 40) = -1;
      *(v15 + 56) = v25 & 0xFFF5;
      v26 = v13[1];
      v13[1] = v26 - 1;
      if (v26 <= 0)
      {
        v35 = __si_assert_copy_extra_661(-1);
        v32 = v35;
        v36 = "";
        if (v35)
        {
          v36 = v35;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1380, "g_fd_list->fd_count>=0", v36);
LABEL_42:
        free(v32);
        if (__valid_fs(-1))
        {
          v34 = 2989;
        }

        else
        {
          v34 = 3072;
        }

        *v34 = -559038737;
        abort();
      }

      if (++v18 >= v7)
      {
        goto LABEL_35;
      }
    }

LABEL_14:
    if (v19 >= *v13)
    {
      v31 = __si_assert_copy_extra_661(-1);
      v32 = v31;
      v33 = "";
      if (v31)
      {
        v33 = v31;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1387, "processed++ < g_fd_list->item_count", v33);
      goto LABEL_42;
    }

    if (v15 == v14)
    {
      break;
    }

    v15 = *(v15 + 16);
    v17 = v13[1];
    ++v19;
    if (v17 < v13[2] && (a3 & 1) != 0)
    {
      goto LABEL_35;
    }
  }

  if (v19 + 1 != *v13)
  {
    v37 = __si_assert_copy_extra_661(-1);
    v38 = v37;
    v39 = "";
    if (v37)
    {
      v39 = v37;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1389, "processed == g_fd_list->item_count", v39);
    free(v38);
    if (__valid_fs(-1))
    {
      v40 = 2989;
    }

    else
    {
      v40 = 3072;
    }

    *v40 = -559038737;
    abort();
  }

LABEL_35:
  pthread_mutex_unlock(&g_fd_lock);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      v28 = *&v9[4 * i];
      guarded_close_np();
      v11 += 8;
    }
  }

LABEL_38:
  v29 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t db_rwlock_wait(uint64_t a1, unsigned int a2, int a3)
{
  v6 = db_rwlock_alloc_waiter(a1);
  LODWORD(v6[1].__sig) = a3;
  if ((a3 & 0xFFFFFFFE) == 2)
  {
    *v6[1].__opaque = pthread_self();
  }

  ++*(a1 + 208);
  db_rwlock_waiter_list_enqueue_inner((a1 + 16 * a2 + 64), v6);
  do
  {
    v7 = *(a1 + 184);
    if (v7)
    {
      if ((*(a1 + 212) & 1) == 0 && *(a1 + 204) < a2)
      {
        *(a1 + 204) = a2;
        v8 = *(a1 + 176);
        v9 = qos_class_self();
        *(a1 + 176) = pthread_override_qos_class_start_np(v7, v9, 0);
        if (v8)
        {
          pthread_override_qos_class_end_np(v8);
        }
      }
    }

    result = pthread_cond_wait(v6, a1);
  }

  while (BYTE4(v6[1].__sig) != 1);
  *&v6[1].__opaque[8] = *(a1 + 168);
  *(a1 + 168) = v6;
  return result;
}

pthread_cond_t *db_rwlock_alloc_waiter(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1)
  {
    *(a1 + 168) = *&v1[1].__opaque[8];
  }

  else
  {
    v1 = malloc_type_malloc(0x48uLL, 0x10200407DFAD57DuLL);
    pthread_cond_init(v1, 0);
  }

  LODWORD(v1[1].__sig) = 0;
  BYTE4(v1[1].__sig) = 0;
  *v1[1].__opaque = 0;
  *&v1[1].__opaque[8] = 0;
  return v1;
}

void *db_rwlock_waiter_list_enqueue_inner(void *result, uint64_t a2)
{
  *(a2 + 64) = 0;
  v2 = result[1];
  if (v2)
  {
    v3 = (v2 + 64);
  }

  else
  {
    v3 = result;
    if (*result)
    {
      v4 = __si_assert_copy_extra_332();
      v5 = v4;
      v6 = "";
      if (v4)
      {
        v6 = v4;
      }

      __message_assert(v4, "sdb2_rwlock.c", 269, "list->head==0", v6);
      free(v5);
      if (__valid_fs(-1))
      {
        v7 = 2989;
      }

      else
      {
        v7 = 3072;
      }

      *v7 = -559038737;
      abort();
    }
  }

  *v3 = a2;
  result[1] = a2;
  return result;
}

void delayed_op1(uint64_t a1, int a2)
{
  if (a2)
  {
    (*(a1 + 16))(*a1);

    free(a1);
  }

  else
  {
    if (*(a1 + 24) == 2)
    {
      v3 = delayed_op_final;
    }

    else
    {
      v3 = delayed_op2;
    }

    v4 = *(*(a1 + 8) + 1048);

    si_enqueue_barrier_with_qos(v4, 5, v3, a1);
  }
}

void releaseCommDates(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1 + 8) = 0;
  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 16) = 0;
  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
  }

  *(a1 + 24) = 0;
  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
  }

  *(a1 + 32) = 0;
  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }

  *(a1 + 40) = 0;
  v8 = *(a1 + 48);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 48) = 0;
  v9 = *(a1 + 56);
  if (v9)
  {
    CFRelease(v9);
  }

  *(a1 + 56) = 0;
}

void si_routine_protectionClassA(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

uint64_t currentCategoryCount(uint64_t a1)
{
  if (*(a1 + 2072) != 1)
  {
    return 22;
  }

  os_unfair_lock_lock(&group_assignment_lock);
  v4.location = 0;
  v4.length = 256;
  LastIndexOfBit = CFBitVectorGetLastIndexOfBit(*(a1 + 2096), v4, 1u);
  os_unfair_lock_unlock(&group_assignment_lock);
  if (LastIndexOfBit == -1)
  {
    return 1;
  }

  else
  {
    return (LastIndexOfBit + 1);
  }
}

_DWORD *clone_node_copyingkind(uint64_t a1, int a2, int *a3, unsigned int a4)
{
  v4 = a3;
  if (a4 > 1)
  {
    v8 = malloc_type_malloc(0x28uLL, 0x10A2040E651BF2BuLL);
    if (*a1 >= 4u)
    {
      v20 = __si_assert_copy_extra_332();
      v21 = v20;
      v22 = "";
      if (v20)
      {
        v22 = v20;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "siquerynode.c", 228, "node->kind<=QN_FACTOR", v22);
    }

    else
    {
      v9 = v8;
      *v8 = *a1;
      v8[1] = 0;
      *(v8 + 7) = *(a1 + 14);
      v10 = 8 * a4;
      if (!(a4 >> 14) && v10 > *MEMORY[0x1E69E9AC8])
      {
        ++sTotal_4940;
      }

      v11 = malloc_type_zone_calloc(queryZone, 1uLL, v10, 0x5BAF1CEAuLL);
      if (!v11)
      {
        _log_fault_for_malloc_failure();
      }

      *(v9 + 3) = a4;
      *(v9 + 4) = v11;
      *(v9 + 13) = 0;
      v12 = *(a1 + 24);
      if (v12 < 1)
      {
        v15 = 0;
      }

      else
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = *v4;
          v4 += 2;
          if (v16 == a2)
          {
            *(*(v9 + 4) + 8 * v15) = *(*(a1 + 32) + 8 * v14);
            v9[1] |= *(*(*(a1 + 32) + 8 * v14) + 4);
            ++v15;
            v13 |= *(*(*(a1 + 32) + 8 * v14) + 13);
            *(v9 + 13) = v13;
            v12 = *(a1 + 24);
          }

          ++v14;
        }

        while (v14 < v12);
      }

      if (v15 == a4)
      {
        return v9;
      }

      v23 = __si_assert_copy_extra_332();
      v21 = v23;
      v24 = "";
      if (v23)
      {
        v24 = v23;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "siquerynode.c", 244, "count==scount", v24);
    }

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

  v17 = *(a1 + 24);
  if (v17 < 1)
  {
    return 0;
  }

  v18 = 0;
  v9 = 0;
  do
  {
    if (a3[v18] == a2)
    {
      v9 = *(*(a1 + 32) + v18 * 4);
    }

    v18 += 2;
    --v17;
  }

  while (v17);
  return v9;
}

uint64_t do_compare(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v7 = v6;
  v8 = v5;
  v10 = v9;
  v11 = v4;
  v12 = v3;
  v13 = v2;
  v14 = v1;
  v91[128] = *MEMORY[0x1E69E9840];
  v15 = v2[1];
  if ((v15 & 0x20) == 0)
  {
    if ((v15 & 0x80) != 0)
    {
      v80 = 0;
      bzero(v91, 0x400uLL);
      v16 = *v13;
      goto LABEL_8;
    }

LABEL_6:
    *v87 = *(v2 + 2);
    result = _db_compare_val(v1, v2, v3, (v2 + 13), v87, v4, v5);
    goto LABEL_61;
  }

  v16 = *v2;
  if ((v15 & 0x80) == 0 && v16 == 14)
  {
    goto LABEL_6;
  }

  v80 = 0;
  bzero(v91, 0x400uLL);
  if ((v15 & 0x80) != 0)
  {
LABEL_8:
    if (v16 == 11)
    {
      __s = v13 + 13;
      if (db_get_localized_string(v14, v13, v11, &__s, &v80, v8))
      {
        result = 0;
      }

      else
      {
        if (v80)
        {
          v39 = __s;
          v40 = v80 - __s;
          if (v80 - __s > 1022)
          {
            v44 = strlen(__s);
            v41 = malloc_type_zone_malloc(queryZone, v44 + 1, 0xA4971684uLL);
            if (!v41 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
            {
              *v87 = 0;
              _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v87, 2u);
            }

            memcpy(v41, v39, v44);
            *(v41 + v44) = 0;
            *(v41 + (v40 & 0x7FFFFFFF)) = 0;
          }

          else
          {
            v41 = v91;
            __strlcpy_chk();
          }

          __s = v41;
        }

        v45 = *(v12 + 32);
        if ((v45 & 0x800073) != 0)
        {
          v46 = (v45 >> 4) & 3;
          if ((v45 & 0x800000) != 0)
          {
            v46 = (v45 >> 4) & 3 | ((*(v12 + 28) & 0x7F) << 8) | 0x10;
          }

          v47 = *(v12 + 256);
          if ((v45 & 2) != 0)
          {
            os_unfair_lock_lock(&s_search_reg_ex_unfair_lock);
            if (!*(v12 + 104))
            {
              v51 = *(v12 + 32) >> 3;
              v52 = icu_regex_create();
              __dmb(0xBu);
              *(v12 + 104) = v52;
            }

            os_unfair_lock_unlock(&s_search_reg_ex_unfair_lock);
            result = *(v12 + 104);
            if (result)
            {
              result = icu_regex_find();
            }
          }

          else
          {
            v48 = *(v12 + 104);
            if (v11 && !v48)
            {
              os_unfair_lock_lock(&s_search_ctx_unfair_lock);
              if (!*(v12 + 104))
              {
                if ((*(v12 + 32) & 0x800000) != 0)
                {
                  v55 = *(v12 + 28);
                }

                v56 = *v11;
                v57 = *(v12 + 60);
                v58 = icu_search_context_create_with_wildcard_limit();
                __dmb(0xBu);
                *(v12 + 104) = v58;
              }

              os_unfair_lock_unlock(&s_search_ctx_unfair_lock);
              v48 = *(v12 + 104);
            }

            if (v48)
            {
              *v87 = 0;
              *buf = 0;
              if (icu_search_match())
              {
                result = 1;
              }

              else
              {
                result = checkTranscriptions(v47, __s);
                if (result)
                {
                  bzero(v87, 0x1000uLL);
                  if (v80 && *v80 == 22)
                  {
                    v80[1];
                  }

                  result = CIStringTokenizerResolveTranscriptions(__s);
                  if (result)
                  {
                    v59 = *(v12 + 104);
                    result = icu_search_match();
                  }
                }
              }
            }

            else
            {
              result = matche(v47, __s, v46 | (v45 >> 4) & 4, 0, 0);
            }
          }

          if ((*(v12 + 24) - 5) <= 1)
          {
            result = result == 0;
          }
        }

        else
        {
          v49 = strcmp(__s, *(v12 + 256));
          v50 = *(v12 + 24);
          if (v49)
          {
            if (v50 == 5)
            {
              result = 1;
            }

            else
            {
              v53 = ((v50 - 4) & 0xFFFFFFFB) == 0;
              v54 = ((v50 - 3) & 0xFFFFFFFB) == 0;
              if (v49 < 0)
              {
                result = v54;
              }

              else
              {
                result = v53;
              }
            }
          }

          else
          {
            result = (v50 - 1) < 4;
          }
        }

        if (v80 && __s != v91)
        {
          v42 = result;
          v43 = __s;
LABEL_112:
          free(v43);
          result = v42;
        }
      }

      goto LABEL_61;
    }
  }

  __s = v13 + 13;
  if (v10)
  {
    v18 = *(v12 + 32);
    v19 = (v18 >> 25) & 1;
    v20 = (v18 >> 34) & 1;
  }

  else
  {
    LODWORD(v19) = 0;
    LODWORD(v20) = 0;
  }

  v77 = *(v12 + 24);
  v75 = v7;
  if (dword_1EBF46AD0 >= 5)
  {
    v60 = v20;
    v61 = v19;
    v62 = *__error();
    v63 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      *v87 = 67109376;
      *&v87[4] = v61;
      *&v87[8] = 1024;
      *&v87[10] = v60;
      _os_log_impl(&dword_1C278D000, v63, OS_LOG_TYPE_DEFAULT, "====== do_compare check_all:%d save_indexes:%d", v87, 0xEu);
    }

    *__error() = v62;
    v16 = *v13;
    LODWORD(v19) = v61;
    LOBYTE(v20) = v60;
  }

  v89 = 0u;
  v90 = 0u;
  *v87 = 0u;
  v88 = 0u;
  if (v16 != 11 || (~v13[1] & 0x8010) != 0)
  {
    v73 = 0;
    v21 = (v13 + 4);
    v70 = v87;
  }

  else
  {
    v79 = 64;
    v21 = &v79;
    v22 = v19;
    v23 = v20;
    v24 = copyDataForUniquedValue(v14, *__s, v87, &v79);
    LOBYTE(v20) = v23;
    LODWORD(v19) = v22;
    __s = v24;
    v70 = v24;
    v73 = v24 != v87;
  }

  v25 = *v21;
  v71 = v20;
  v72 = v19;
  if (*v21 < 1)
  {
    v32 = 0;
    v76 = 0;
LABEL_53:
    if (v73)
    {
      free(v70);
    }

    if (v72)
    {
      result = v76;
    }

    else
    {
      result = v32;
    }

    if (!(v72 & 1 | ((v71 & 1) == 0)))
    {
      result = *(v75 + 8) != 0;
    }

    if (dword_1EBF46AD0 >= 5)
    {
      v64 = result;
      v65 = *__error();
      v66 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v67 = *v12;
        *buf = 67109634;
        *&buf[4] = v64;
        v83 = 2080;
        v84 = v67;
        v85 = 2048;
        v86 = v12;
        _os_log_impl(&dword_1C278D000, v66, OS_LOG_TYPE_DEFAULT, "====== do_compare ret:%d %s qp:%p", buf, 0x1Cu);
      }

      *__error() = v65;
      result = v64;
    }

    goto LABEL_61;
  }

  v74 = v10;
  v26 = v11;
  v27 = 0;
  v28 = 0;
  v76 = 0;
  v29 = v19 | v20;
  v30 = __s;
  while (1)
  {
    v78 = -1;
    if (!v30)
    {
      if (v29)
      {
        v32 = 0;
        v33 = 1;
        goto LABEL_28;
      }

      v36 = *(v12 + 24);
      goto LABEL_43;
    }

    v31 = _db_compare_val(v14, v13, v12, v30, &v78, v26, v8);
    v32 = v31;
    v33 = !v31;
    if (v29)
    {
      if (v31 && v77 != 5)
      {
        v32 = 1;
LABEL_30:
        v76 = db_eval_obj_qp_array_set_match_at_index(v74, v12, v28);
        db_eval_obj_qp_array_set_match_at_index(v75, v12, v28);
        if (dword_1EBF46AD0 >= 5)
        {
          v69 = *__error();
          v68 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            *&buf[4] = v28;
            v83 = 2048;
            v84 = v12;
            _os_log_impl(&dword_1C278D000, v68, OS_LOG_TYPE_DEFAULT, "====== do_compare setting match bit:%d qp:%p", buf, 0x12u);
          }

          *__error() = v69;
        }

LABEL_31:
        ++v28;
        if ((v13[1] & 0x10) != 0)
        {
          goto LABEL_32;
        }

        goto LABEL_38;
      }

LABEL_28:
      if (!v33 || v77 != 5)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v36 = *(v12 + 24);
    if (v31)
    {
      break;
    }

LABEL_43:
    if (v36 == 5 || v36 == 2)
    {
      result = 0;
      if (!v73)
      {
        goto LABEL_61;
      }

      goto LABEL_66;
    }

    v32 = 0;
    if ((v13[1] & 0x10) != 0)
    {
LABEL_32:
      v34 = 4;
      v35 = __s;
      if (!__s)
      {
        goto LABEL_53;
      }

      goto LABEL_40;
    }

LABEL_38:
    v34 = v78;
    if (v78 == -1)
    {
      goto LABEL_53;
    }

    v35 = __s;
    if (!__s)
    {
      goto LABEL_53;
    }

LABEL_40:
    v30 = &v35[v34];
    __s = &v35[v34];
    v27 += v34;
    if (v27 >= v25)
    {
      goto LABEL_53;
    }
  }

  v32 = 1;
  if (v36 == 2 || v36 == 5)
  {
    if ((v13[1] & 0x10) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_38;
  }

  result = 1;
  if (v73)
  {
LABEL_66:
    v42 = result;
    v43 = v70;
    goto LABEL_112;
  }

LABEL_61:
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t convert_value_to_type(unsigned int a1, uint64_t a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 72);
  __endptr = v3;
  v4 = *(a2 + 24);
  if (a1 != 14)
  {
    if (v4 > 0xA)
    {
      goto LABEL_6;
    }

    v6 = 1 << a1;
    if ((*(a2 + 160) & (1 << a1)) != 0)
    {
      result = 0;
      goto LABEL_80;
    }

    v7 = (a2 + 8 * a1 + 168);
    if (a1 == 11)
    {
      *v7 = v3;
      while (1)
      {
        v8 = *v3;
        if (!*v3)
        {
          break;
        }

        ++v3;
        v9 = v8 - 42;
        v10 = v9 > 0x32;
        v11 = (1 << v9) & 0x6000000200001;
        if (!v10 && v11 != 0)
        {
          *(a2 + 32) |= 1uLL;
          break;
        }
      }
    }

    else
    {
      if (a1 - 1 > 1)
      {
        if (a1 - 3 > 1)
        {
          if (a1 - 5 > 1)
          {
            if (a1 - 7 > 1)
            {
              if (a1 == 12 || a1 == 10)
              {
                v30 = a2;
                if (*v3 == 48 && v3[1] == 120)
                {
                  v31 = COERCE_DOUBLE(strtoull(v3, &__endptr, 0));
                }

                else
                {
                  v31 = strtod(v3, &__endptr);
                }

                v15 = __endptr;
                if (__endptr == *(v30 + 72))
                {
                  goto LABEL_6;
                }

                a2 = v30;
                *v7 = v31;
              }

              else
              {
                if (a1 != 9)
                {
                  v32 = *__error();
                  v33 = _SILogForLogForCategory(1);
                  v34 = 2 * (dword_1EBF46AD0 < 4);
                  if (os_log_type_enabled(v33, v34))
                  {
                    *buf = 67109376;
                    *&buf[4] = a1;
                    v49 = 2048;
                    v50 = v7;
                    _os_log_impl(&dword_1C278D000, v33, v34, "convert_value_to_type: unknown data type 0x%x (val 0x%p)", buf, 0x12u);
                  }

                  *__error() = v32;
                  goto LABEL_6;
                }

                v28 = a2;
                if (*v3 == 48 && v3[1] == 120)
                {
                  LODWORD(v29) = strtoul(v3, &__endptr, 0);
                }

                else
                {
                  v29 = strtof(v3, &__endptr);
                }

                v15 = __endptr;
                if (__endptr == *(v28 + 72))
                {
LABEL_6:
                  result = 22;
                  goto LABEL_80;
                }

                a2 = v28;
                *v7 = v29;
              }
            }

            else
            {
              v23 = a2;
              v24 = strtoull(v3, &__endptr, 0);
              v15 = __endptr;
              v25 = *(v23 + 72);
              if (__endptr == v25)
              {
                if (strlen(*(v23 + 72)) != 4)
                {
                  goto LABEL_6;
                }

                v24 = bswap32(*v25);
                v15 = __endptr + 4;
                __endptr += 4;
              }

              a2 = v23;
              v26 = *v15;
              if (*v15 && v26 != 42)
              {
                if (v26 < 0)
                {
                  v39 = v24;
                  v40 = __maskrune(v26, 0x4000uLL);
                  a2 = v23;
                  v27 = v40;
                  v24 = v39;
                }

                else
                {
                  v27 = *(MEMORY[0x1E69E9830] + 4 * v26 + 60) & 0x4000;
                }

                if (!v27)
                {
                  v41 = v24;
                  *buf = *(a2 + 72);
                  v42 = strtod(*buf, buf);
                  if (*buf <= v15)
                  {
                    v24 = v41;
                  }

                  else
                  {
                    v24 = v41;
                    if (v42 == trunc(v42))
                    {
                      v24 = v42;
                      __endptr = *buf;
                      v15 = *buf;
                    }
                  }

                  a2 = v23;
                }
              }

              *v7 = v24;
            }
          }

          else
          {
            v18 = a2;
            v19 = strtoul(v3, &__endptr, 0);
            v15 = __endptr;
            v20 = *(v18 + 72);
            if (__endptr == v20)
            {
              if (strlen(*(v18 + 72)) != 4)
              {
                goto LABEL_6;
              }

              v19 = bswap32(*v20);
              v15 = __endptr + 4;
              __endptr += 4;
            }

            a2 = v18;
            v21 = *v15;
            if (*v15 && v21 != 42)
            {
              if (v21 < 0)
              {
                v35 = v19;
                v36 = __maskrune(v21, 0x4000uLL);
                a2 = v18;
                v22 = v36;
                v19 = v35;
              }

              else
              {
                v22 = *(MEMORY[0x1E69E9830] + 4 * v21 + 60) & 0x4000;
              }

              if (!v22)
              {
                v37 = v19;
                *buf = *(a2 + 72);
                v38 = strtod(*buf, buf);
                if (*buf <= v15)
                {
                  v19 = v37;
                }

                else
                {
                  v19 = v37;
                  if (v38 == trunc(v38))
                  {
                    v19 = v38;
                    __endptr = *buf;
                    v15 = *buf;
                  }
                }

                a2 = v18;
              }
            }

            *v7 = v19;
          }
        }

        else
        {
          v16 = a2;
          v17 = strtoul(v3, &__endptr, 0);
          v15 = __endptr;
          if (__endptr == *(v16 + 72))
          {
            goto LABEL_6;
          }

          a2 = v16;
          *v7 = v17;
        }
      }

      else
      {
        v13 = a2;
        v14 = strtol(v3, &__endptr, 0);
        v15 = __endptr;
        if (__endptr == *(v13 + 72))
        {
          goto LABEL_6;
        }

        a2 = v13;
        *v7 = v14;
      }

      v43 = *v15;
      if (*v15 && v43 != 42)
      {
        if (v43 < 0)
        {
          v45 = a2;
          v44 = __maskrune(v43, 0x4000uLL);
          a2 = v45;
        }

        else
        {
          v44 = *(MEMORY[0x1E69E9830] + 4 * v43 + 60) & 0x4000;
        }

        if (!v44)
        {
          goto LABEL_6;
        }
      }
    }

    result = 0;
    *(a2 + 160) |= v6;
    goto LABEL_80;
  }

  if (v4 == 15)
  {
    result = 0;
  }

  else
  {
    result = 22;
  }

LABEL_80:
  v46 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _db_compare_val(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned int *a4, void *a5, uint64_t a6, int a7)
{
  v10 = *a2;
  if (v10 != 14)
  {
    if (v10 == 11 && (a2[1] & 0x10) != 0)
    {
      if (a4)
      {
        v12 = *a4;
        v14 = *(a3 + 112);
        if (!v14)
        {
          v14 = malloc_type_zone_malloc(queryZone, 0x180uLL, 0xA4971684uLL);
          if (!v14)
          {
            _log_fault_for_malloc_failure();
            v14 = 0;
          }

          v15 = 0;
          *v14 = 0;
          v14[1] = 0;
          v14[2] = 0;
          *(v14 + 6) = 0;
          v14[4] = 0;
          v14[5] = 0;
          *(v14 + 12) = 0;
          v14[7] = 0;
          v14[8] = 0;
          *(v14 + 18) = 0;
          v14[10] = 0;
          v14[11] = 0;
          *(v14 + 24) = 0;
          v14[13] = 0;
          v14[14] = 0;
          *(v14 + 30) = 0;
          *(v14 + 36) = 0;
          v14[16] = 0;
          v14[17] = 0;
          v14[19] = 0;
          v14[20] = 0;
          *(v14 + 42) = 0;
          *(v14 + 48) = 0;
          v14[22] = 0;
          v14[23] = 0;
          *(v14 + 54) = 0;
          v14[25] = 0;
          v14[26] = 0;
          *(v14 + 60) = 0;
          v14[28] = 0;
          v14[29] = 0;
          *(v14 + 66) = 0;
          v14[31] = 0;
          v14[32] = 0;
          *(v14 + 72) = 0;
          v14[34] = 0;
          v14[35] = 0;
          v14[37] = 0;
          v14[38] = 0;
          *(v14 + 78) = 0;
          v14[40] = 0;
          v14[41] = 0;
          *(v14 + 84) = 0;
          v14[43] = 0;
          v14[44] = 0;
          *(v14 + 90) = 0;
          v14[46] = 0;
          v14[47] = 0;
          __dmb(0xBu);
          atomic_compare_exchange_strong_explicit((a3 + 112), &v15, v14, memory_order_relaxed, memory_order_relaxed);
          if (v15)
          {
            qp_string_id_cache_free(v14);
            v14 = *(a3 + 112);
          }
        }

        v16 = &v14[3 * ((v12 >> 8) & 0xF)];
        os_unfair_lock_lock(v16);
        v18 = (v16 + 8);
        v17 = *(v16 + 1);
        if (v17)
        {
          if ((*(v17 + 176) & 1) == 0)
          {
            v19 = *(v17 + 20);
            if (!v19 || !((*(v17 + 16) ^ v12) >> (-4 * v19)))
            {
              v20 = 28 - 4 * v19;
              v21 = *(v17 + 8 * ((v12 >> v20) & 0xF) + 48);
              if (v21)
              {
                v22 = v19 + 2;
                do
                {
                  v20 = 32 - 4 * v22;
                  v21 = *((v21 & 0xFFFFFFFFFFFFFFFELL) + 8 * ((v12 >> v20) & 0xF));
                  ++v22;
                }

                while ((v21 & 1) != 0);
              }

              if (v21 && ((*(*v21 + 16))(v21, v12, ~(-1 << v20)) & 1) != 0)
              {
                v23 = 1;
LABEL_50:
                os_unfair_lock_unlock(v16);
                *a5 = 4;
                return v23;
              }
            }
          }
        }

        v32 = (v16 + 16);
        v31 = *(v16 + 2);
        if (v31)
        {
          if ((*(v31 + 176) & 1) == 0)
          {
            v33 = *(v31 + 20);
            if (!v33 || !((*(v31 + 16) ^ v12) >> (-4 * v33)))
            {
              v34 = 28 - 4 * v33;
              v35 = *(v31 + 8 * ((v12 >> v34) & 0xF) + 48);
              if (v35)
              {
                v36 = v33 + 2;
                do
                {
                  v34 = 32 - 4 * v36;
                  v35 = *((v35 & 0xFFFFFFFFFFFFFFFELL) + 8 * ((v12 >> v34) & 0xF));
                  ++v36;
                }

                while ((v35 & 1) != 0);
              }

              if (v35 && ((*(*v35 + 16))(v35, v12, ~(-1 << v34)) & 1) != 0)
              {
                v23 = 0;
                goto LABEL_50;
              }
            }
          }
        }

        os_unfair_lock_unlock(v16);
        if (a7)
        {
          if (db_get_string_for_id_locked(a1, v12))
          {
            goto LABEL_42;
          }
        }

        else if (db_get_string_for_id(a1, v12))
        {
LABEL_42:
          v37 = db_compare_val(*a2);
          os_unfair_lock_lock(v16);
          if (v37)
          {
            v38 = *v18;
            v39 = 1;
            v32 = (v16 + 8);
            v40 = 1;
            if (!*v18)
            {
              goto LABEL_48;
            }

            goto LABEL_49;
          }

LABEL_47:
          v39 = 0;
          v40 = 0;
          v38 = *v32;
          if (!*v32)
          {
LABEL_48:
            v41 = *MEMORY[0x1E695E480];
            v38 = SIUINT32SetCreate();
            *v32 = v38;
            v40 = v39;
          }

LABEL_49:
          v23 = v40;
          SIValueSet<unsigned int>::SIValueSetInsert((v38 + 16), v12);
          goto LABEL_50;
        }

        os_unfair_lock_lock(v16);
        goto LABEL_47;
      }

      return 0;
    }

    goto LABEL_28;
  }

  if ((~a2[1] & 0x5020) == 0)
  {
    if (*(a3 + 24) != 15)
    {
      return 0;
    }

    result = 0;
    if (!a4 || *(a3 + 64) <= 0.0)
    {
      return result;
    }

    v25 = *a4;
    v26 = *a1;
    if (a7)
    {
      if (v26 != 1685287992)
      {
        v81 = __si_assert_copy_extra_332();
        v82 = v81;
        v83 = "";
        if (v81)
        {
          v83 = v81;
        }

        __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 398, v83);
        goto LABEL_91;
      }

      v27 = a3;
      LOBYTE(__C[0]) = 0;
      memset(__dst, 0, 24);
      v28 = *(a1 + 920);
      v29 = v25;
      v30 = 1;
    }

    else
    {
      if (v26 != 1685287992)
      {
        v84 = __si_assert_copy_extra_332();
        v82 = v84;
        v85 = "";
        if (v84)
        {
          v85 = v84;
        }

        __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 397, v85);
LABEL_91:
        free(v82);
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      v27 = a3;
      LOBYTE(__C[0]) = 0;
      memset(__dst, 0, 24);
      v28 = *(a1 + 920);
      v29 = v25;
      v30 = 0;
    }

    data_map_get_data_entry(__dst, v28, v29, __C, v30);
    if (LOBYTE(__C[0]) == 1)
    {
      v42 = LOBYTE(__dst[2]);
      v43 = BYTE1(__dst[2]);
      v44 = HIWORD(LODWORD(__dst[2]));
      v45 = HIBYTE(LODWORD(__dst[2]));
      v46 = __dst[0];
    }

    else
    {
      v45 = 0;
      LOBYTE(v44) = 0;
      v43 = 0;
      v42 = 0;
      v46 = 0;
    }

    v47 = v27;
    result = 0;
    if (!v46)
    {
      return result;
    }

    v48 = *(v27 + 60);
    if ((v48 & 3) != v43 || ((v48 >> 2) & 3) != v42)
    {
      return result;
    }

    v49 = *(v27 + 296);
    v50 = *(v47 + 64);
    if (v48 >> 25)
    {
      if ((v44 | (v45 << 8)) != v48 >> 25)
      {
        return 0;
      }
    }

    if (v43 == 2)
    {
      if (v42)
      {
        if (v42 != 1)
        {
          return 0;
        }

        v53 = 0uLL;
        v59 = -8;
        do
        {
          v60 = *v49++;
          v61 = v60;
          v62 = *v46++;
          v63 = vsubq_f16(v61, v62);
          v53 = vaddq_f16(v53, vmulq_f16(v63, v63));
          v59 += 8;
        }

        while (v59 < 0x2F8);
LABEL_79:
        _H2 = v53.i16[2];
        __asm { FCVT            S2, H2 }

        v70 = vaddv_f32(*&vcvtq_f32_f16(*v53.i8)) + _S2;
        LOWORD(_S2) = v53.i16[3];
        __asm { FCVT            S2, H2 }

        v72 = v70 + _S2;
        LOWORD(_S2) = v53.i16[4];
        __asm { FCVT            S2, H2 }

        v74 = v72 + _S2;
        LOWORD(_S2) = v53.i16[5];
        __asm { FCVT            S2, H2 }

        v76 = v74 + _S2;
        LOWORD(_S2) = v53.i16[6];
        __asm { FCVT            S2, H2 }

        _H0 = v53.i16[7];
        __asm { FCVT            S0, H0 }

        v80 = (v76 + _S2) + _S0;
        return v80 <= v50;
      }

      memcpy(__dst, v46, sizeof(__dst));
      __C[0] = 3.4028e38;
      v51 = v49;
      v52 = 768;
    }

    else
    {
      if (v43 != 1)
      {
        if (v43)
        {
          return 0;
        }

        if (v42 == 1)
        {
          v80 = _ZNK10CIVector_sIDF16_Li256EE8distanceERKS0_(v49, v46);
          return v80 <= v50;
        }

        if (v42)
        {
          return 0;
        }

        memcpy(__dst, v46, 0x400uLL);
        __C[0] = 3.4028e38;
        v51 = v49;
        v52 = 256;
        goto LABEL_82;
      }

      if (v42)
      {
        if (v42 != 1)
        {
          return 0;
        }

        v53 = 0uLL;
        v54 = -8;
        do
        {
          v55 = *v49++;
          v56 = v55;
          v57 = *v46++;
          v58 = vsubq_f16(v56, v57);
          v53 = vaddq_f16(v53, vmulq_f16(v58, v58));
          v54 += 8;
        }

        while (v54 < 0x1F8);
        goto LABEL_79;
      }

      memcpy(__dst, v46, 0x800uLL);
      __C[0] = 3.4028e38;
      v51 = v49;
      v52 = 512;
    }

LABEL_82:
    vDSP_distancesq(v51, 1, __dst, 1, __C, v52);
    v80 = __C[0];
    return v80 <= v50;
  }

LABEL_28:
  result = db_compare_val(v10);
  if ((a2[1] & 0x10) != 0)
  {
    *a5 = 4;
  }

  return result;
}

void si_sync_index_delayed0(uint64_t *a1, int a2)
{
  v3 = a1;
  if (!a2)
  {
    v4 = *a1;
    if ((*(*a1 + 2437) & 1) == 0 && !a1[8])
    {
      attachJournal(a1);
      v4 = *v3;
    }

    si_enqueue_barrier_with_qos(*(v4 + 1160), 9, si_sync_index_delayed1, v3);
    v3 = 0;
  }

  si_sync_ctx_free(v3, a2 != 0);
}

void delayed_op0(void *a1, int a2)
{
  if (a2)
  {
    (a1[2])(*a1);

    free(a1);
  }

  else
  {
    v3 = *(a1[1] + 1160);

    si_enqueue_barrier_with_qos(v3, 5, delayed_op1, a1);
  }
}

uint64_t db_shrink_cache(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v33 = *__error();
    v34 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = *a1;
      *buf = 136315650;
      *&buf[4] = "db_shrink_cache";
      *&buf[12] = 1024;
      *&buf[14] = 274;
      *&buf[18] = 1024;
      *&buf[20] = v35;
      _os_log_error_impl(&dword_1C278D000, v34, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v33;
    v36 = __si_assert_copy_extra_332();
    v37 = v36;
    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 274, v38);
    free(v37);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if ((*(a1 + 804) & 8) != 0)
  {
    v7 = 0;
    goto LABEL_34;
  }

  v2 = __THREAD_SLOT_KEY;
  if (!__THREAD_SLOT_KEY)
  {
    makeThreadId();
    v2 = __THREAD_SLOT_KEY;
  }

  v3 = pthread_getspecific(v2);
  HIDWORD(v5) = qos_class_self() - 9;
  LODWORD(v5) = HIDWORD(v5);
  v4 = v5 >> 2;
  if (v4 > 6)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_1C2BFF8F0[v4];
  }

  v8 = pthread_mutex_lock((a1 + 584));
  if (!*(a1 + 768) && !*(a1 + 780) && (*(a1 + 796) & 1) == 0)
  {
    if (v6 > 5)
    {
LABEL_41:
      *(a1 + 768) = pthread_self();
      goto LABEL_13;
    }

    v30 = v6 - 6;
    v31 = (a1 + 16 * v6 + 648);
    while (!*v31)
    {
      v31 += 2;
      if (__CFADD__(v30++, 1))
      {
        goto LABEL_41;
      }
    }
  }

  db_rwlock_wait(a1 + 584, v6, 2);
LABEL_13:
  pthread_mutex_unlock((a1 + 584));
  if (v8)
  {
    v39 = *__error();
    v40 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "db2_shrink_cache";
      *&buf[12] = 1024;
      *&buf[14] = 8212;
      *&buf[18] = 1024;
      *&buf[20] = v8;
      _os_log_error_impl(&dword_1C278D000, v40, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", buf, 0x18u);
    }

    *__error() = v39;
    sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 8212);
  }

  if (v3)
  {
    v9 = CIOnThreadCleanUpPush(v3 - 1, db_write_unlock, a1 + 584);
  }

  else
  {
    v9 = -1;
  }

  v7 = flush_updateset_locked(a1);
  if (v7)
  {
    goto LABEL_28;
  }

  v10 = *(a1 + 928);
  v41 = v9;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 0x40000000;
  v43 = __db2_shrink_cache_block_invoke;
  v44 = &__block_descriptor_tmp_77_14946;
  v45 = a1;
  *(v10 + 232) = 1;
  v11 = *(v10 + 220);
  if (v11 < 3)
  {
LABEL_26:
    v7 = 0;
    atomic_store(0, (v10 + 216));
    atomic_store(0, (v10 + 228));
    *(v10 + 220) = 2;
    goto LABEL_27;
  }

  v12 = 48 * v11;
  while (1)
  {
    v13 = v10 + 4 * v11;
    v14 = *(v13 + 248);
    if (v14)
    {
      break;
    }

LABEL_25:
    --v11;
    v12 -= 48;
    if ((v11 + 1) <= 3)
    {
      goto LABEL_26;
    }
  }

  v15 = v10 + v12;
  page_cache_add(v10, (v10 + v12 + 224), v14, 0);
  v16 = *(v13 + 248);
  memset(buf, 0, sizeof(buf));
  v47 = 0u;
  *buf = v16;
  *&buf[8] = *(v10 + v12 + 224);
  *&buf[24] = *(v10 + v12 + 240);
  *&v47 = *(v10 + v12 + 248);
  DWORD2(v47) = *(v10 + v12 + 256);
  v48 = *(v10 + v12 + 264);
  v17 = v43(v42, buf);
  v18 = *&buf[8];
  *(v15 + 224) = *&buf[8];
  v19 = *&buf[24];
  *(v15 + 240) = *&buf[24];
  *(v15 + 248) = v47;
  *(v15 + 256) = DWORD2(v47);
  *(v15 + 264) = v48;
  v20 = *buf;
  *(v13 + 248) = *buf;
  if (!v17)
  {
    if (v18 && !v19)
    {
      page_cache_add(v10, (v15 + 224), v20, 0);
      free(*(v15 + 232));
      *(v15 + 232) = 0;
      free(*(v15 + 224));
      *(v15 + 224) = 0;
      *(v13 + 248) = 0;
      *(v15 + 248) = 0;
      *(v15 + 256) = 0;
      *(v15 + 264) = 0;
    }

    goto LABEL_25;
  }

  v7 = v17;
  atomic_store(0, (v10 + 216));
  atomic_store(0, (v10 + 228));
  *(v10 + 220) = v11;
LABEL_27:
  *(v10 + 232) = 0;
  v9 = v41;
LABEL_28:
  v21 = pthread_mutex_lock((a1 + 584));
  *(a1 + 788) = 0;
  v22 = *(a1 + 760);
  *(a1 + 760) = 0u;
  v23 = *(a1 + 780) != 0;
  *(a1 + 796) = 0;
  db_rwlock_wakeup(a1 + 584, v23, 0);
  pthread_mutex_unlock((a1 + 584));
  if (v22)
  {
    pthread_override_qos_class_end_np(v22);
  }

  if (v21)
  {
    sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 8224);
  }

  if (v3)
  {
    CIOnThreadCleanUpClearItem(v3 - 1, v9);
    v24 = &threadData[9 * (v3 - 1)];
    v27 = *(v24 + 14);
    v25 = v24 + 7;
    v26 = v27;
    if (v9 + 1 == v27)
    {
      *v25 = v26 - 1;
    }
  }

LABEL_34:
  v28 = *MEMORY[0x1E69E9840];
  return v7;
}

void si_sync_index_delayed2(uint64_t *a1, int a2)
{
  v3 = a1;
  if (!a2)
  {
    v4 = *a1;
    if (*(*v3 + 2072) == 1)
    {
      flushGraphCache(v4);
      v4 = *v3;
    }

    si_indexDeleteDeferredItems(v4);
    si_enqueue_work_with_qos(*(*v3 + 1040), 9, syncIndex, v3);
    v3 = 0;
  }

  si_sync_ctx_free(v3, a2 != 0);
}

void si_indexDeleteDeferredItems(uint64_t a1)
{
  if (*(a1 + 288))
  {
    os_unfair_lock_lock((a1 + 280));
    v2 = *(a1 + 288);
    if (v2)
    {
      si_indexDeleteByOid(a1, v2);
      __dmb(0xBu);
      v3 = *(a1 + 288);
      *(a1 + 288) = 0;
      *(a1 + 296) = v3;
      RLEOIDArrayClear(v3);
    }

    os_unfair_lock_unlock((a1 + 280));
  }
}

uint64_t _si_scheduler_suspend(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v22 = 0;
  pthread_mutex_lock(*(a1 + 8));
  v6 = *(a1 + 116);
  if (v6)
  {
    *(a1 + 116) = v6 + 1;
  }

  else if (quick_suspend(a1, &v22))
  {
    pthread_cond_broadcast(*(a1 + 16));
  }

  else
  {
    v8 = *a1;
    v9 = *(a1 + 120);
    *(a1 + 120) = v9 + 1;
    if (v8)
    {
      v10 = v8;
      while (!*(v10 + 29))
      {
        v10 = *v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      si_scheduler_do_suspend(a1, &v22);
    }

    else
    {
LABEL_11:
      if (*(a1 + 144))
      {
        v11 = 0;
      }

      else
      {
        v11 = v9 == 0;
      }

      if (v11)
      {
        atomic_fetch_add((a1 + 96), 1u);
        v12 = *(a1 + 160);
        block.tv_sec = MEMORY[0x1E69E9820];
        *&block.tv_usec = 0x40000000;
        v24 = ___scheduler_suspension_locked_block_invoke;
        v25 = &__block_descriptor_tmp_72;
        v26 = a1;
        dispatch_barrier_async(v12, &block);
      }

      while (!*(a1 + 116))
      {
        if (v8)
        {
          v13 = v8;
          while (!*(v13 + 29))
          {
            v13 = *v13;
            if (!v13)
            {
              goto LABEL_21;
            }
          }

          si_scheduler_do_suspend(a1, &v22);
          break;
        }

LABEL_21:
        block.tv_sec = 0;
        *&block.tv_usec = 0;
        v21.tv_sec = 0;
        v21.tv_nsec = 0;
        gettimeofday(&block, 0);
        v21.tv_sec = block.tv_sec + 1;
        v21.tv_nsec = 0;
        pthread_cond_timedwait(*(a1 + 16), *(a1 + 8), &v21);
      }

      v14 = qos_class_self();
      v15 = *(a1 + 200);
      if (v14 > v15)
      {
        v15 = v14;
      }

      *(a1 + 200) = v15;
    }
  }

  if (!*(a1 + 192))
  {
    *(a1 + 192) = pthread_self();
  }

  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  if (!*(a1 + 116))
  {
    v17 = __si_assert_copy_extra_661(-1);
    v18 = v17;
    v19 = "";
    if (v17)
    {
      v19 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIScheduler.c", 1807, "scheduler->suspended", v19);
    free(v18);
    if (__valid_fs(-1))
    {
      v20 = 2989;
    }

    else
    {
      v20 = 3072;
    }

    *v20 = -559038737;
    abort();
  }

  v7 = debug_token_create(a1, a2, a3);
  pthread_mutex_unlock(*(a1 + 8));
  si_scheduler_trigger_tokens(v22);
  return v7;
}

BOOL quick_suspend(uint64_t a1, void *a2)
{
  os_unfair_lock_lock((a1 + 128));
  v4 = *(a1 + 112);
  if (v4)
  {
    os_unfair_lock_unlock((a1 + 128));
LABEL_3:
    v5 = 0;
    goto LABEL_10;
  }

  *(a1 + 116) = (*(a1 + 120) + 1);
  v6 = *(a1 + 144);
  *(a1 + 144) = 0;
  dispatch_suspend(*(a1 + 160));
  os_unfair_lock_unlock((a1 + 128));
  if (!v6)
  {
    goto LABEL_3;
  }

  v5 = 0;
  do
  {
    *(v6 + 4) = 1;
    ++*(a1 + 116);
    v7 = *(v6 + 16);
    if (*(v6 + 32))
    {
      *(v6 + 16) = v5;
      v5 = v6;
    }

    else
    {
      release_token(v6);
    }

    v6 = v7;
  }

  while (v7);
LABEL_10:
  result = v4 == 0;
  *a2 = v5;
  return result;
}

void si_storesizes(uint64_t a1, int a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 1192);
  if (v3)
  {
    is_dirty = db_is_dirty(v3);
    if (is_dirty)
    {
      v6 = 22;
      if (*(a1 + 2072))
      {
        v6 = 256;
      }

      v7 = 8 * v6;
      v8 = MEMORY[0x1EEE9AC00](is_dirty);
      v10 = v44 - v9;
      v12 = 4 * v11;
      MEMORY[0x1EEE9AC00](v8);
      v14 = v44 - v13;
      pthread_mutex_lock((a1 + 6976));
      memcpy(v10, (a1 + 7040), v7);
      memcpy(v14, (a1 + 9088), v12);
      pthread_mutex_unlock((a1 + 6976));
      indexmetadata = si_create_indexmetadata(a1, 1);
      v56 = indexmetadata;
      if (indexmetadata)
      {
        v16 = indexmetadata;
        v54 = 0;
        v55 = 0;
        add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
        v18 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(a1 + 1192), 0x40000000, add_explicit + 1);
        v53 = v18;
        v19 = threadData[9 * v18 + 1] + 320 * HIDWORD(v18);
        v51 = v20;
        v52 = HIDWORD(v18);
        v50 = v21;
        *(v19 + 216) = 0;
        v45 = *(v19 + 312);
        v22 = *(v19 + 224);
        if (v22)
        {
          v22(*(v19 + 288));
        }

        v49 = v53;
        v48 = v52;
        v47 = v51;
        v46 = v50;
        if (_setjmp(v19))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
          }

          *(v19 + 312) = v45;
          CIOnThreadCleanUpReset(v46);
          dropThreadId(v49, 1, add_explicit + 1);
          CICleanUpReset(v49, v47);
          v23 = v16;
LABEL_35:
          free(v23);
          goto LABEL_36;
        }

        v24 = a2;
        if (db_get_field(*(a1 + 1192), v16, "kMDStoreAccumulatedSizes", &v55, &v54))
        {
          v26 = v7;
        }

        else
        {
          v26 = v7;
          if (*(v55 + 8) == v7 && !memcmp(v54, v10, v7))
          {
            goto LABEL_22;
          }
        }

        db_add_field(*(a1 + 1192), &v56, 1u, "kMDStoreAccumulatedSizes", 0, 0x128u, 8, v10, v25, v26);
        v16 = v56;
        updated = db_update_obj(*(a1 + 1192), v56, 12);
        if (updated)
        {
          v28 = updated;
          v44[1] = v44;
          v29 = v24;
          v30 = *__error();
          v31 = _SILogForLogForCategory(7);
          v32 = dword_1EBF46AE8 < 3;
          if (os_log_type_enabled(v31, (dword_1EBF46AE8 < 3)))
          {
            *buf = 67109120;
            v58 = v28;
            _os_log_impl(&dword_1C278D000, v31, v32, "*warn* Failed storing sizes (%d)", buf, 8u);
          }

          *__error() = v30;
          v24 = v29;
        }

        else if (v24)
        {
          db_dirty_datastore(*(a1 + 1192));
        }

LABEL_22:
        if (db_get_field(*(a1 + 1192), v16, "kMDStoreAccumulatedCounts", &v55, &v54))
        {
          v34 = v12;
        }

        else
        {
          v34 = v12;
          if (*(v55 + 8) == v12)
          {
            v35 = v16;
            if (!memcmp(v54, v14, v12))
            {
LABEL_32:
              v41 = threadData[9 * v49 + 1] + 320 * v48;
              *(v41 + 312) = v45;
              v42 = *(v41 + 232);
              if (v42)
              {
                v42(*(v41 + 288));
              }

              dropThreadId(v49, 0, add_explicit + 1);
              v23 = v35;
              goto LABEL_35;
            }
          }
        }

        db_add_field(*(a1 + 1192), &v56, 1u, "kMDStoreAccumulatedCounts", 0, 0x128u, 6, v14, v33, v34);
        v35 = v56;
        v36 = db_update_obj(*(a1 + 1192), v56, 12);
        if (v36)
        {
          v37 = v36;
          v38 = *__error();
          v39 = _SILogForLogForCategory(7);
          v40 = dword_1EBF46AE8 < 3;
          if (os_log_type_enabled(v39, (dword_1EBF46AE8 < 3)))
          {
            *buf = 67109120;
            v58 = v37;
            _os_log_impl(&dword_1C278D000, v39, v40, "*warn* Failed storing sizes (%d)", buf, 8u);
          }

          *__error() = v38;
        }

        else if (v24)
        {
          db_dirty_datastore(*(a1 + 1192));
        }

        goto LABEL_32;
      }
    }
  }

LABEL_36:
  v43 = *MEMORY[0x1E69E9840];
}

BOOL db_is_dirty(int *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *a1;
      *buf = 136315650;
      v18 = "db_is_dirty";
      v19 = 1024;
      v20 = 257;
      v21 = 1024;
      v22 = v13;
      _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v11;
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

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 257, v16);
    free(v15);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (a1[1])
  {
    v7 = 0;
  }

  else
  {
    v1 = *(a1 + 116);
    pthread_rwlock_rdlock((v1 + 8));
    v2 = *(v1 + 220);
    if (v2 < 1)
    {
      v7 = 0;
    }

    else
    {
      v3 = (v1 + 288);
      v4 = 1;
      do
      {
        v6 = *v3;
        v3 += 12;
        v5 = v6;
        v7 = v6 != 0;
        if (v4 >= v2)
        {
          break;
        }

        ++v4;
      }

      while (!v5);
    }

    pthread_rwlock_unlock((v1 + 8));
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t db_perform_callback(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v25 = *__error();
    v26 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = *a1;
      *buf = 136315650;
      v34 = "db_perform_callback";
      v35 = 1024;
      v36 = 325;
      v37 = 1024;
      v38 = v27;
      _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v25;
    v28 = __si_assert_copy_extra_332();
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 325, v30);
    free(v29);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v6 = __THREAD_SLOT_KEY;
  if (!__THREAD_SLOT_KEY)
  {
    makeThreadId();
    v6 = __THREAD_SLOT_KEY;
  }

  v7 = pthread_getspecific(v6);
  HIDWORD(v9) = qos_class_self() - 9;
  LODWORD(v9) = HIDWORD(v9);
  v8 = v9 >> 2;
  if (v8 > 6)
  {
    v10 = 0;
  }

  else
  {
    v10 = dword_1C2BFF8F0[v8];
  }

  v11 = pthread_mutex_lock((a1 + 584));
  if (*(a1 + 768) || *(a1 + 780) || (*(a1 + 796) & 1) != 0)
  {
LABEL_10:
    db_rwlock_wait(a1 + 584, v10, 2);
    goto LABEL_11;
  }

  if (v10 <= 5)
  {
    v22 = v10 - 6;
    v23 = (a1 + 16 * v10 + 648);
    while (!*v23)
    {
      v23 += 2;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_27;
      }
    }

    goto LABEL_10;
  }

LABEL_27:
  *(a1 + 768) = pthread_self();
LABEL_11:
  pthread_mutex_unlock((a1 + 584));
  if (v11)
  {
    v31 = *__error();
    v32 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v34 = "db2_perform_callback";
      v35 = 1024;
      v36 = 13229;
      v37 = 1024;
      v38 = v11;
      _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", buf, 0x18u);
    }

    *__error() = v31;
    sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13229);
  }

  if (v7)
  {
    v12 = CIOnThreadCleanUpPush(v7 - 1, db_write_unlock, a1 + 584);
  }

  else
  {
    v12 = -1;
  }

  a2(a3);
  v13 = pthread_mutex_lock((a1 + 584));
  *(a1 + 788) = 0;
  v14 = *(a1 + 760);
  *(a1 + 760) = 0u;
  v15 = *(a1 + 780) != 0;
  *(a1 + 796) = 0;
  db_rwlock_wakeup(a1 + 584, v15, 0);
  result = pthread_mutex_unlock((a1 + 584));
  if (v14)
  {
    result = pthread_override_qos_class_end_np(v14);
  }

  if (v13)
  {
    sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 13234);
  }

  if (v7)
  {
    result = CIOnThreadCleanUpClearItem(v7 - 1, v12);
    v17 = &threadData[9 * (v7 - 1)];
    v20 = *(v17 + 14);
    v18 = v17 + 7;
    v19 = v20;
    if (v12 + 1 == v20)
    {
      *v18 = v19 - 1;
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _copyRemappings(void *a1)
{
  v2 = *(*a1 + 2368);
  if (v2)
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], v2);
  }

  else
  {
    Copy = 0;
  }

  a1[1] = Copy;
  return 0;
}

uint64_t si_set_property(uint64_t result, const void *a2, const void *a3, int a4, int a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0;
  if (result)
  {
    v5 = result;
    if (*(result + 1192))
    {
      if ((*(result + 828) & 4) == 0)
      {
        pthread_mutex_lock((result + 1504));
        v10 = *(v5 + 1496);
        if (!v10 || (a4 & 1) != 0 || (a5 & 1) != 0)
        {
          if (si_create_propertydict(v5, &v18, 1))
          {
            Value = CFDictionaryGetValue(*(v5 + 1496), a2);
            if (Value != a3 && (!a3 || !Value || !CFEqual(Value, a3)))
            {
              v14 = *(v5 + 1496);
              if (!a3 || *MEMORY[0x1E695E738] == a3)
              {
                CFDictionaryRemoveValue(v14, a2);
              }

              else
              {
                CFDictionarySetValue(v14, a2, a3);
              }

              *(v5 + 2460) = 1;
              if (a4)
              {
                _si_store_property_cache(v5, &v18, 1);
              }

              if (a5)
              {
                db_dirty_datastore(*(v5 + 1192));
              }
            }

            free(v18);
          }

          else
          {
            v15 = *__error();
            v16 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v20 = "si_set_property";
              v21 = 1024;
              v22 = 17484;
              _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: Couldn't get index property dictionary", buf, 0x12u);
            }

            *__error() = v15;
          }
        }

        else
        {
          v11 = CFDictionaryGetValue(v10, a2);
          if (v11 != a3 && (!a3 || !v11 || !CFEqual(v11, a3)))
          {
            v12 = *(v5 + 1496);
            if (!a3 || *MEMORY[0x1E695E738] == a3)
            {
              CFDictionaryRemoveValue(v12, a2);
            }

            else
            {
              CFDictionarySetValue(v12, a2, a3);
            }

            *(v5 + 2460) = 1;
          }
        }

        result = pthread_mutex_unlock((v5 + 1504));
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL si_create_propertydict(uint64_t a1, char **a2, int a3)
{
  if (!a2 && *(a1 + 1496) || (indexmetadata = si_create_indexmetadata(a1, a3)) == 0)
  {
    v7 = (a1 + 1496);
    return *v7 != 0;
  }

  v6 = indexmetadata;
  v7 = (a1 + 1496);
  if (!*(a1 + 1496))
  {
    v31 = 0;
    v32 = 0;
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v9 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(a1 + 1192), 0x40000000, add_explicit + 1);
    v30 = v9;
    v10 = threadData[9 * v9 + 1] + 320 * HIDWORD(v9);
    v29 = HIDWORD(v9);
    v28 = __PAIR64__(v11, v12);
    *(v10 + 216) = 0;
    v13 = *(v10 + 312);
    v14 = *(v10 + 224);
    if (v14)
    {
      v14(*(v10 + 288));
    }

    v27 = v30;
    v26 = v29;
    v25 = v28;
    if (!_setjmp(v10))
    {
      if (db_get_field(*(a1 + 1192), v6, "kMDStoreProperties", &v32, &v31))
      {
        v15 = *__error();
        v16 = _SILogForLogForCategory(0);
        v17 = 2 * (gSILogLevels[0] < 4);
        if (os_log_type_enabled(v16, v17))
        {
          *v24 = 0;
          _os_log_impl(&dword_1C278D000, v16, v17, "Creating index property dictionary", v24, 2u);
        }

        *__error() = v15;
        *v7 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      else
      {
        v18 = *MEMORY[0x1E695E480];
        v19 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v31, *(v32 + 8), *MEMORY[0x1E695E498]);
        if (v19)
        {
          v20 = v19;
          *v7 = CFPropertyListCreateWithData(v18, v19, 1uLL, 0, 0);
          CFRelease(v20);
        }
      }

      v21 = threadData[9 * v27 + 1] + 320 * v26;
      *(v21 + 312) = v13;
      v22 = *(v21 + 232);
      if (v22)
      {
        v22(*(v21 + 288));
      }

      dropThreadId(v27, 0, add_explicit + 1);
      if (a2)
      {
        goto LABEL_11;
      }

LABEL_23:
      free(v6);
      return *v7 != 0;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v24, 2u);
    }

    *(v10 + 312) = v13;
    CIOnThreadCleanUpReset(v25);
    dropThreadId(v27, 1, add_explicit + 1);
    CICleanUpReset(v27, HIDWORD(v25));
  }

  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_11:
  *a2 = v6;
  return *v7 != 0;
}

int8x16_t si_sync_ctx_create_with_defer_fd(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x90uLL, 0x10B00402663C8FFuLL);
  if (a1)
  {
    v4->i64[0] = a1;
    v4[4].i64[1] = a2;
    v4[5].i64[1] = *(a1 + 2128);
    v6 = *(a1 + 2360);
    if (v6)
    {
      v4[2].i64[0] = v6[9].i64[0];
      result = vextq_s8(*v6, *v6, 8uLL);
      v4[1] = result;
    }
  }

  return result;
}

void si_sync_ctx_free(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 64))
    {
      atomic_fetch_add(journalsEnqueued, 0xFFFFFFFF);
      fd_release(*(a1 + 64));
    }

    v4 = *(a1 + 72);
    if (v4)
    {
      fd_release(v4);
    }

    si_power_info_cleanup(a1 + 104, *a1, a2);
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(a1 + 48);
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      v5(v6, a2);
    }

    free(a1);
  }
}

void flush_runLoop(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v6 = pthread_self();
  v7 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = v6;
  dispatch_sync(v7, &v9);
  a2(a3, 0);
  v8 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = 0;
  dispatch_sync(v8, &v9);
}

void **si_index_inactive(void **result, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v2 = result;
    v3 = db_shrink_cache(result[149]);
    if (v3)
    {
      si_makeUnavailable(v2, v3, 0, 5, "Failure in db_shrink_cache at si_index_inactivate");
    }

    CIPurgeTokenizers();
    SILanguageModelPurge();
    _MDBundleUtilsClearCache();
    if ((*(v2 + 6584) & 0x10) == 0 && (*(v2 + 2437) & 1) == 0 && *(v2 + 1484) >= 2 && CFAbsoluteTimeGetCurrent() - *(v2 + 1464) > 300.0)
    {
      v4 = 0;
      v5 = *(v2 + 1384);
      while (v4 < *(v5 + 8))
      {
        v6 = *(*v5 + 8 * v4);
        v7 = atomic_load((v6 + 36));
        if ((v7 & 2) == 0)
        {
          v8 = v6 + 12288;
          if (*(v8 + 2915) & 1) == 0 && (*(v8 + 3376))
          {
            SISyncIndex(v2);
            goto LABEL_25;
          }
        }

        ++v4;
      }

      if (*(v2 + 1488))
      {
        bzero(v21, 0x400uLL);
        v9 = *__error();
        v10 = _SILogForLogForCategory(0);
        v11 = 2 * (gSILogLevels[0] < 4);
        if (os_log_type_enabled(v10, v11))
        {
          v12 = fcntl(*(v2 + 32), 50, v21);
          if (v21[0])
          {
            v13 = v12 < 0;
          }

          else
          {
            v13 = 1;
          }

          if (v13)
          {
            v14 = 0;
          }

          else
          {
            v14 = v21;
          }

          *buf = 136315138;
          v20 = v14;
          _os_log_impl(&dword_1C278D000, v10, v11, "flushing idle index at %s.", buf, 0xCu);
        }

        *__error() = v9;
        doFastFlushIndex(v2);
        *(v2 + 1488) = 0;
      }
    }

LABEL_25:
    add_explicit = atomic_fetch_add_explicit((v2 + 1484), 1u, memory_order_relaxed);
    if (add_explicit)
    {
      if (add_explicit >= 1 && g_fd_list != 0)
      {
        _fd_close_inactive(*(v2 + 32), 0, 0, *(v2 + 32) == -1);
      }
    }

    else if ((*(v2 + 6584) & 0x10) == 0 && (*(v2 + 2434) & 1) == 0 && (*(v2 + 2437) & 1) == 0 && (*(v2 + 2072) & 1) == 0)
    {
      *(v2 + 1488) = 1;
    }

    v17 = 240;
    do
    {
      result = slab_cleanup(v17);
      v17 = (v17 + 1);
    }

    while (v17 != 255);
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void si_sync_index_delayed1(uint64_t a1, int a2)
{
  v3 = a1;
  if (!a2)
  {
    si_enqueue_barrier_with_qos(*(*a1 + 1048), 9, si_sync_index_delayed2, a1);
    v3 = 0;
  }

  si_sync_ctx_free(v3, a2 != 0);
}

void flushGraphCache(uint64_t a1)
{
  memset(__src, 0, sizeof(__src));
  os_unfair_lock_lock((a1 + 328));
  v52 = a1;
  v2 = *(a1 + 656);
  v3 = *(a1 + 336);
  v4 = *MEMORY[0x1E695E480];
  if (v3)
  {
    *&__src[0] = CFBagCreateCopy(*MEMORY[0x1E695E480], v3);
    CFBagRemoveAllValues(*(a1 + 336));
  }

  v5 = *(a1 + 344);
  if (v5)
  {
    *(&__src[0] + 1) = CFBagCreateCopy(v4, v5);
    CFBagRemoveAllValues(*(a1 + 344));
  }

  v6 = *(a1 + 352);
  if (v6)
  {
    *&__src[1] = CFBagCreateCopy(v4, v6);
    CFBagRemoveAllValues(*(a1 + 352));
  }

  v7 = *(a1 + 360);
  if (v7)
  {
    *(&__src[1] + 1) = CFBagCreateCopy(v4, v7);
    CFBagRemoveAllValues(*(a1 + 360));
  }

  v8 = *(a1 + 368);
  if (v8)
  {
    *&__src[2] = CFBagCreateCopy(v4, v8);
    CFBagRemoveAllValues(*(a1 + 368));
  }

  v9 = *(a1 + 376);
  if (v9)
  {
    *(&__src[2] + 1) = CFBagCreateCopy(v4, v9);
    CFBagRemoveAllValues(*(a1 + 376));
  }

  v10 = *(a1 + 384);
  if (v10)
  {
    *&__src[3] = CFBagCreateCopy(v4, v10);
    CFBagRemoveAllValues(*(a1 + 384));
  }

  v11 = *(a1 + 392);
  if (v11)
  {
    *(&__src[3] + 1) = CFBagCreateCopy(v4, v11);
    CFBagRemoveAllValues(*(a1 + 392));
  }

  v12 = *(a1 + 400);
  if (v12)
  {
    *&__src[4] = CFBagCreateCopy(v4, v12);
    CFBagRemoveAllValues(*(a1 + 400));
  }

  v13 = *(a1 + 408);
  if (v13)
  {
    *(&__src[4] + 1) = CFBagCreateCopy(v4, v13);
    CFBagRemoveAllValues(*(a1 + 408));
  }

  v14 = *(a1 + 416);
  if (v14)
  {
    *&__src[5] = CFBagCreateCopy(v4, v14);
    CFBagRemoveAllValues(*(a1 + 416));
  }

  v15 = *(a1 + 424);
  if (v15)
  {
    *(&__src[5] + 1) = CFBagCreateCopy(v4, v15);
    CFBagRemoveAllValues(*(a1 + 424));
  }

  v16 = *(a1 + 432);
  if (v16)
  {
    *&__src[6] = CFBagCreateCopy(v4, v16);
    CFBagRemoveAllValues(*(a1 + 432));
  }

  v17 = *(a1 + 440);
  if (v17)
  {
    *(&__src[6] + 1) = CFBagCreateCopy(v4, v17);
    CFBagRemoveAllValues(*(a1 + 440));
  }

  v18 = *(a1 + 448);
  if (v18)
  {
    *&__src[7] = CFBagCreateCopy(v4, v18);
    CFBagRemoveAllValues(*(a1 + 448));
  }

  v19 = *(a1 + 456);
  if (v19)
  {
    *(&__src[7] + 1) = CFBagCreateCopy(v4, v19);
    CFBagRemoveAllValues(*(a1 + 456));
  }

  v20 = *(a1 + 464);
  if (v20)
  {
    *&__src[8] = CFBagCreateCopy(v4, v20);
    CFBagRemoveAllValues(*(a1 + 464));
  }

  v21 = *(a1 + 472);
  if (v21)
  {
    *(&__src[8] + 1) = CFBagCreateCopy(v4, v21);
    CFBagRemoveAllValues(*(a1 + 472));
  }

  v22 = *(a1 + 480);
  if (v22)
  {
    *&__src[9] = CFBagCreateCopy(v4, v22);
    CFBagRemoveAllValues(*(a1 + 480));
  }

  v23 = *(a1 + 488);
  if (v23)
  {
    *(&__src[9] + 1) = CFBagCreateCopy(v4, v23);
    CFBagRemoveAllValues(*(a1 + 488));
  }

  v24 = *(a1 + 496);
  if (v24)
  {
    *&__src[10] = CFBagCreateCopy(v4, v24);
    CFBagRemoveAllValues(*(a1 + 496));
  }

  v25 = *(a1 + 504);
  if (v25)
  {
    *(&__src[10] + 1) = CFBagCreateCopy(v4, v25);
    CFBagRemoveAllValues(*(a1 + 504));
  }

  v26 = *(a1 + 512);
  if (v26)
  {
    *&__src[11] = CFBagCreateCopy(v4, v26);
    CFBagRemoveAllValues(*(a1 + 512));
  }

  v27 = *(a1 + 520);
  if (v27)
  {
    *(&__src[11] + 1) = CFBagCreateCopy(v4, v27);
    CFBagRemoveAllValues(*(a1 + 520));
  }

  v28 = *(a1 + 528);
  if (v28)
  {
    *&__src[12] = CFBagCreateCopy(v4, v28);
    CFBagRemoveAllValues(*(a1 + 528));
  }

  v29 = *(a1 + 536);
  if (v29)
  {
    *(&__src[12] + 1) = CFBagCreateCopy(v4, v29);
    CFBagRemoveAllValues(*(a1 + 536));
  }

  v30 = *(a1 + 544);
  if (v30)
  {
    *&__src[13] = CFBagCreateCopy(v4, v30);
    CFBagRemoveAllValues(*(a1 + 544));
  }

  v31 = *(a1 + 552);
  if (v31)
  {
    *(&__src[13] + 1) = CFBagCreateCopy(v4, v31);
    CFBagRemoveAllValues(*(a1 + 552));
  }

  v32 = *(a1 + 560);
  if (v32)
  {
    *&__src[14] = CFBagCreateCopy(v4, v32);
    CFBagRemoveAllValues(*(a1 + 560));
  }

  v33 = *(a1 + 568);
  if (v33)
  {
    *(&__src[14] + 1) = CFBagCreateCopy(v4, v33);
    CFBagRemoveAllValues(*(a1 + 568));
  }

  v34 = *(a1 + 576);
  if (v34)
  {
    *&__src[15] = CFBagCreateCopy(v4, v34);
    CFBagRemoveAllValues(*(a1 + 576));
  }

  v35 = *(a1 + 584);
  if (v35)
  {
    *(&__src[15] + 1) = CFBagCreateCopy(v4, v35);
    CFBagRemoveAllValues(*(a1 + 584));
  }

  v36 = *(a1 + 592);
  if (v36)
  {
    *&__src[16] = CFBagCreateCopy(v4, v36);
    CFBagRemoveAllValues(*(a1 + 592));
  }

  v37 = *(a1 + 600);
  if (v37)
  {
    *(&__src[16] + 1) = CFBagCreateCopy(v4, v37);
    CFBagRemoveAllValues(*(a1 + 600));
  }

  v38 = *(a1 + 608);
  if (v38)
  {
    *&__src[17] = CFBagCreateCopy(v4, v38);
    CFBagRemoveAllValues(*(a1 + 608));
  }

  v39 = *(a1 + 616);
  if (v39)
  {
    *(&__src[17] + 1) = CFBagCreateCopy(v4, v39);
    CFBagRemoveAllValues(*(a1 + 616));
  }

  v40 = *(a1 + 624);
  if (v40)
  {
    *&__src[18] = CFBagCreateCopy(v4, v40);
    CFBagRemoveAllValues(*(a1 + 624));
  }

  v41 = *(a1 + 632);
  if (v41)
  {
    *(&__src[18] + 1) = CFBagCreateCopy(v4, v41);
    CFBagRemoveAllValues(*(a1 + 632));
  }

  v42 = *(a1 + 640);
  if (v42)
  {
    *&__src[19] = CFBagCreateCopy(v4, v42);
    CFBagRemoveAllValues(*(a1 + 640));
  }

  v43 = *(a1 + 648);
  if (v43)
  {
    *(&__src[19] + 1) = CFBagCreateCopy(v4, v43);
    CFBagRemoveAllValues(*(a1 + 648));
  }

  *(a1 + 656) = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  os_unfair_lock_unlock((a1 + 328));
  if (v2)
  {
    Count = CFDictionaryGetCount(v2);
    if (sContactsIndex == a1)
    {
      if (Count)
      {
        CFDictionaryApplyFunction(v2, flushGraphCacheApply, __src);
      }
    }

    else if (sContactsIndex && Count)
    {
      v45 = malloc_type_malloc(0x150uLL, 0xE0040D1B6A99DuLL);
      memcpy(v45 + 1, __src, 0x140uLL);
      *v45 = v2;
      v46 = sContactsIndex;
      v45[41] = sContactsIndex;
      memset(__src, 0, sizeof(__src));
      v52 = 0;
      si_enqueue_work(*(v46 + 1104), indexContactGraphData, v45);
      goto LABEL_89;
    }

    CFRelease(v2);
  }

LABEL_89:
  v47 = __src[0];
  v48 = __src[1];
  v49 = __src[2];
  v50 = __src[3];
  releaseCommDates(&v47);
  v47 = __src[4];
  v48 = __src[5];
  v49 = __src[6];
  v50 = __src[7];
  releaseCommDates(&v47);
  v47 = __src[8];
  v48 = __src[9];
  v49 = __src[10];
  v50 = __src[11];
  releaseCommDates(&v47);
  v47 = __src[12];
  v48 = __src[13];
  v49 = __src[14];
  v50 = __src[15];
  releaseCommDates(&v47);
  v47 = __src[16];
  v48 = __src[17];
  v49 = __src[18];
  v50 = __src[19];
  releaseCommDates(&v47);
}

void delayed_op2(uint64_t a1, int a2)
{
  if (a2)
  {
    (*(a1 + 16))(*a1);

    free(a1);
  }

  else
  {
    if (*(a1 + 24) == 3)
    {
      v3 = delayed_op_final;
    }

    else
    {
      v3 = delayed_op3;
    }

    v4 = *(*(a1 + 8) + 1040);

    si_enqueue_work_with_qos(v4, 5, v3, a1);
  }
}

void syncIndex(uint64_t a1, int a2)
{
  v228 = *MEMORY[0x1E69E9840];
  if (a2)
  {
LABEL_185:
    v13 = a2 != 0;
    v14 = a1;
    goto LABEL_186;
  }

  v4 = *a1;
  v5 = *a1;
  if (*(a1 + 139) == 1)
  {
    *(v5 + 1480) = 0;
  }

  if (!*(a1 + 128) && !*(a1 + 104))
  {
    v26 = *(v5 + 2360);
    if (v26)
    {
      v27 = *(v26 + 64);
      if (v27)
      {
        *(a1 + 104) = v27(*(v26 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 2155, "void syncIndex(si_sync_ctx *, Boolean)");
      }
    }
  }

  v6 = *(a1 + 112);
  if (!v6 || !xpc_activity_should_defer(v6))
  {
    v180 = *(a1 + 16);
    v15 = *(v5 + 1192);
    v181 = *(a1 + 32);
    v182 = v15;
    v183 = v5;
    v184 = 0;
    BYTE2(v184) = *(a1 + 138);
    v16 = *(v5 + 1384);
    v185 = *(v5 + 1392);
    v186 = v16;
    v17 = os_transaction_create();
    atomic_fetch_add((v4 + 1452), 1u);
    v18 = _si_scheduler_suspend(*(v5 + 872), "SpotlightIndex.c", 2139);
    atomic_fetch_add((v4 + 1452), 0xFFFFFFFF);
    pthread_mutex_lock((v4 + 1568));
    v179 = 0;
    v178 = 0;
    if (!fd_setDir(*(v5 + 32), &v178))
    {
LABEL_180:
      if (g_fd_list)
      {
        _fd_close_inactive(*(v5 + 32), 0, 0, *(v5 + 32) == -1);
      }

      pthread_mutex_unlock((v4 + 1568));
      if (!**(v5 + 6592))
      {
        si_scheduler_resume(*(v5 + 872), v18, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 2600);
      }

      os_release(v17);
      goto LABEL_185;
    }

    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v177 = 0;
    v176 = 0;
    v175 = 0;
    v20 = setThreadIdAndInfo(*(v5 + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
    v177 = v20;
    v175 = v22;
    v176 = __PAIR64__(HIDWORD(v20), v21);
    v23 = threadData[9 * v20 + 1] + 320 * HIDWORD(v20);
    *(v23 + 216) = 0;
    v24 = *(v23 + 312);
    v25 = *(v23 + 224);
    if (v25)
    {
      v25(*(v23 + 288));
    }

    v174 = v177;
    v173 = HIDWORD(v176);
    v172 = __PAIR64__(v176, v175);
    if (_setjmp(v23))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.st_dev) = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &buf, 2u);
      }

      *(v23 + 312) = v24;
      CIOnThreadCleanUpReset(v172);
      dropThreadId(v174, 1, add_explicit + 1);
      CICleanUpReset(v174, HIDWORD(v172));
LABEL_178:
      v114 = v178;
      MEMORY[0x1C6921200](v178);
      if ((v114 & 0x80000000) == 0)
      {
        close(v114);
      }

      goto LABEL_180;
    }

    v171 = 0;
    v170 = 0;
    v169 = 0;
    v160 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v28 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(v5 + 1192), 0x40000000, v160 + 1);
    v171 = v28;
    v169 = v30;
    v170 = __PAIR64__(HIDWORD(v28), v29);
    v31 = threadData[9 * v28 + 1] + 320 * HIDWORD(v28);
    *(v31 + 216) = 0;
    v159 = *(v31 + 312);
    v32 = *(v31 + 224);
    v33 = v31;
    if (v32)
    {
      v32(*(v31 + 288));
    }

    v168 = v171;
    v167 = HIDWORD(v170);
    v166 = __PAIR64__(v170, v169);
    if (_setjmp(v33))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.st_dev) = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &buf, 2u);
      }

      v33[78] = v159;
      CIOnThreadCleanUpReset(v166);
      dropThreadId(v168, 1, v160 + 1);
      CICleanUpReset(v168, HIDWORD(v166));
LABEL_175:
      v112 = threadData[9 * v174 + 1] + 320 * v173;
      *(v112 + 312) = v24;
      v113 = *(v112 + 232);
      if (v113)
      {
        v113(*(v112 + 288));
      }

      dropThreadId(v174, 0, add_explicit + 1);
      goto LABEL_178;
    }

    v163 = v18;
    v161 = v24;
    v162 = add_explicit;
    if (gSILogLevels[0] >= 5)
    {
      v149 = *__error();
      v150 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.st_dev) = 0;
        _os_log_impl(&dword_1C278D000, v150, OS_LOG_TYPE_DEFAULT, "Starting sync!", &buf, 2u);
      }

      *__error() = v149;
    }

    v34 = *(v5 + 60);
    if (v34 == 1)
    {
      v35 = "cs_priority";
    }

    else if (v34 == 3)
    {
      v35 = "cs_mail";
    }

    else
    {
      if (v34)
      {
        v36 = 2;
      }

      else
      {
        v36 = (v34 >> 1) - 1;
      }

      if (v36 >= 7)
      {
        v35 = "cs_default";
      }

      else
      {
        v35 = off_1E8196C28[v36];
      }
    }

    v37 = v35;
    v38 = *(v5 + 2481);
    v39 = *__error();
    v40 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = *(a1 + 56);
      if ((v38 - 1) > 3u)
      {
        v42 = "unknown";
      }

      else
      {
        v42 = off_1E8192938[(v38 - 1)];
      }

      buf.st_dev = 136315650;
      *&buf.st_mode = v37;
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = v41;
      HIWORD(buf.st_uid) = 2080;
      *&buf.st_gid = v42;
      _os_log_impl(&dword_1C278D000, v40, OS_LOG_TYPE_DEFAULT, "[%s] sync start, origin: %d state: %s", &buf, 0x1Cu);
    }

    *__error() = v39;
    _si_store_property_cache(v5, 0, 1);
    if (v38 == 4 && *(v5 + 2481) != 4)
    {
      v43 = *__error();
      v44 = _SILogForLogForCategory(11);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        buf.st_dev = 136315394;
        *&buf.st_mode = v37;
        WORD2(buf.st_ino) = 2080;
        *(&buf.st_ino + 6) = "clean";
        _os_log_impl(&dword_1C278D000, v44, OS_LOG_TYPE_DEFAULT, "[%s] property cache only change: %s", &buf, 0x16u);
      }

      *__error() = v43;
    }

    v158 = v37;
    si_storesizes(v5, 1);
    v45 = si_copyRemappingMetadata(v5);
    si_set_property(v5, @"kIndexRemappingData", v45, 1, 0);
    CFRelease(v45);
    v46 = MEMORY[0x1E695E480];
    if (*(v5 + 2408))
    {
      v47 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, (v4 + 2408));
      si_set_property(v5, @"database.recoverscantime", v47, 1, 0);
      CFRelease(v47);
    }

    if (*(v5 + 2072) == 1)
    {
      v48 = *(v5 + 2088);
      v49 = *v46;
      if (v48)
      {
        Copy = CFDictionaryCreateCopy(*v46, v48);
        si_set_property(v5, @"GroupAssignments", Copy, 1, 0);
        CFRelease(Copy);
      }

      if (*(a1 + 88))
      {
        v51 = CFNumberCreate(v49, kCFNumberSInt64Type, (a1 + 88));
        if (v51)
        {
          v52 = v51;
          si_set_property(v5, @"JournalSerialNumber", v51, 1, 0);
          CFRelease(v52);
        }
      }

      *&buf.st_dev = *(v5 + 2136);
      v53 = CFNumberCreate(v49, kCFNumberSInt64Type, &buf);
      if (v53)
      {
        v54 = v53;
        si_set_property(v5, @"ConsumedJournalSerialNumber", v53, 1, 0);
        CFRelease(v54);
      }
    }

    pthread_mutex_lock(&schlock);
    v55 = *(v5 + 2376);
    *(v5 + 2376) = 0;
    pthread_mutex_unlock(&schlock);
    v56 = *(v5 + 1416);
    if (v56 && (v57 = *(v56 + 88)) != 0 && !*(v56 + 240))
    {
      v58 = v57(v56, *(v56 + 24));
    }

    else
    {
      v58 = 0;
    }

    if ((*(v5 + 2481) & 4) == 0 || (*(a1 + 96) & 1) != 0 || *(v5 + 6880) | v55)
    {
      v59 = 1;
    }

    else
    {
      v81 = *(a1 + 64);
      if (!v81 || (memset(&buf, 0, sizeof(buf)), !fd_stat(v81, &buf)) && !buf.st_size)
      {
        if (!*(a1 + 72))
        {
          v116 = *__error();
          v117 = _SILogForLogForCategory(11);
          if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
          {
            buf.st_dev = 136315138;
            *&buf.st_mode = v158;
            _os_log_impl(&dword_1C278D000, v117, OS_LOG_TYPE_DEFAULT, "[%s] clean -- skip sync", &buf, 0xCu);
          }

          *__error() = v116;
          v61 = 2;
          v60 = 1;
          goto LABEL_71;
        }
      }

      v59 = 2;
    }

    v60 = 0;
    v61 = v59;
LABEL_71:
    if (*(v5 + 6880))
    {
      v62 = *(v4 + 6892) ^ 1;
    }

    else
    {
      v62 = 1;
    }

    v157 = v62;
    theArray = v55;
    v63 = v58;
    if (v58)
    {
LABEL_75:
      v64 = v61;
      pthread_mutex_lock(&schlock);
      v65 = *(v5 + 2376);
      if (v65)
      {
        v229.length = CFArrayGetCount(theArray);
        v229.location = 0;
        CFArrayAppendArray(v65, theArray, v229);
      }

      pthread_mutex_unlock(&schlock);
      if (v63 == 28)
      {
        v86 = 1;
        v24 = v161;
      }

      else
      {
        v24 = v161;
        if (v63 == 89)
        {
LABEL_163:
          v103 = *(v5 + 6880);
          v18 = v163;
          add_explicit = v162;
          if (!((v103 == 0) | v157 & 1))
          {
            *(v5 + 6880) = 0;
            db_release_datastore_no_sync(v103);
            delete_index_recovery_files(*(v5 + 32));
            v104 = *__error();
            v105 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.st_dev) = 0;
              _os_log_impl(&dword_1C278D000, v105, OS_LOG_TYPE_DEFAULT, "Recovery Complete!", &buf, 2u);
            }

            *__error() = v104;
            v24 = v161;
          }

          v106 = *(a1 + 40);
          if (v106)
          {
            v107 = *(a1 + 48);
            *(a1 + 40) = 0;
            *(a1 + 48) = 0;
            v106(v107, (v179 & 1) == 0);
          }

          if (gSILogLevels[0] >= 5)
          {
            v151 = *__error();
            v152 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.st_dev) = 0;
              _os_log_impl(&dword_1C278D000, v152, OS_LOG_TYPE_DEFAULT, "Finished sync!", &buf, 2u);
            }

            *__error() = v151;
            v18 = v163;
            v24 = v161;
            add_explicit = v162;
          }

          v108 = *__error();
          v109 = _SILogForLogForCategory(11);
          if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
          {
            buf.st_dev = 136315138;
            *&buf.st_mode = v158;
            _os_log_impl(&dword_1C278D000, v109, OS_LOG_TYPE_DEFAULT, "[%s] sync complete", &buf, 0xCu);
          }

          *__error() = v108;
          creationTouchFileUnlink(*(v5 + 32));
          v110 = threadData[9 * v168 + 1] + 320 * v167;
          *(v110 + 312) = v159;
          v111 = *(v110 + 232);
          if (v111)
          {
            v111(*(v110 + 288));
          }

          dropThreadId(v168, 0, v160 + 1);
          goto LABEL_175;
        }

        if ((atomic_load_explicit((v4 + 2439), memory_order_acquire) & 1) == 0)
        {
          if (SIIsAppleInternal_onceToken != -1)
          {
            dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
          }

          if (SIIsAppleInternal_internal)
          {
            if (!atomic_fetch_add_explicit(syncIndex__crashCount, 1u, memory_order_relaxed))
            {
              v66 = CFStringCreateWithFormat(*v46, 0, @"syncIndex, error:%d, step:%d", v63, v64);
              getpid();
              SISimulateCrashForPid(v64, v66);
              if (v66)
              {
                CFRelease(v66);
              }
            }
          }
        }

        if (v63 == 1 || v63 == 13)
        {
          v86 = 0;
        }

        else
        {
          v86 = 2;
        }
      }

      si_makeUnavailable(v5, v63, v86, 2, "sync err");
      goto LABEL_163;
    }

    if (v60)
    {
      v67 = *(a1 + 16);
      if (v67)
      {
        memset(&buf, 0, 96);
        v67(*(a1 + 32), &buf);
      }

      v68 = *(a1 + 24);
      if (v68)
      {
        memset(&buf, 0, 96);
        v68(*(a1 + 32), 0, &buf);
      }
    }

    else
    {
      v69 = *(v5 + 2360);
      if (v69)
      {
        v70 = *(v69 + 48);
        if (v70)
        {
          v70(*(v69 + 144));
        }
      }

      v71 = *v46;
      v72 = CFNumberCreate(*v46, kCFNumberIntType, (v4 + 2344));
      v73 = CFNumberCreate(v71, kCFNumberIntType, (v4 + 2348));
      si_set_property(v5, @"kMDSIndexSyncCount", v72, 1, 1);
      si_set_property(v5, @"kMDSIndexDeferSyncCount", v73, 1, 1);
      CFRelease(v72);
      CFRelease(v73);
      v74 = *(v5 + 6592);
      *&buf.st_dev = xmmword_1F427BAA0;
      *&buf.st_uid = *&off_1F427BAB0;
      buf.st_atimespec = xmmword_1F427BAC0;
      buf.st_mtimespec = *off_1F427BAD0;
      buf.st_ctimespec.tv_sec = &v180;
      v63 = _ContentIndexSyncIndexBulk(v4 + 1200, v185, v186, 0, 0, &buf, v74, lowDiskSpaceCallback, v5);
      if (!atomic_load((v4 + 6888)))
      {
        v165[0] = MEMORY[0x1E69E9820];
        v165[1] = 0x40000000;
        v165[2] = __syncIndex_block_invoke;
        v165[3] = &__block_descriptor_tmp_655;
        v165[4] = v5;
        ContentIndexListsApply(v185, v186, v165);
      }

      v76 = *(v5 + 2360);
      if (v76)
      {
        v77 = *(v76 + 56);
        if (v77)
        {
          v77(*(v76 + 144));
        }
      }

      if (v63)
      {
        v61 = 3;
        goto LABEL_75;
      }
    }

    v78 = *(a1 + 64);
    if (v78 || (v78 = *(a1 + 72)) != 0)
    {
      v79 = *(v78 + 44);
    }

    else
    {
      v79 = -1;
    }

    v155 = v79;
    if (*(v5 + 2072) != 1)
    {
      goto LABEL_125;
    }

    if (_os_feature_enabled_impl())
    {
      v80 = 1;
      goto LABEL_126;
    }

    if (!_os_feature_enabled_impl())
    {
      goto LABEL_125;
    }

    v80 = 0;
    if ((*(v5 + 829) & 0x10) != 0 || !v155)
    {
LABEL_126:
      v84 = *(a1 + 64);
      if (!v84)
      {
        goto LABEL_147;
      }

      memset(v227, 0, sizeof(v227));
      v226 = 0u;
      v224 = 0u;
      v225 = 0u;
      v222 = 0u;
      v223 = 0u;
      memset(&buf, 0, sizeof(buf));
      fd_name(v84, &buf, 0xFFuLL);
      if (*(v5 + 6960) < 1)
      {
        if (*(v4 + 6944))
        {
          goto LABEL_147;
        }
      }

      else if (*&buf.st_dev == 0x416C616E72756F6ALL && LODWORD(buf.st_ino) == 779252852)
      {
        __endptr[0] = 0;
        if (*(v5 + 6960) == strtoll((&buf | 0xC), __endptr, 0))
        {
LABEL_147:
          v92 = *(a1 + 72);
          if (v92)
          {
            SIActivityJournalUnlinkJournal((v4 + 2192), v92);
            if (v80)
            {
              fd_make_readonly(*(a1 + 72));
            }

            if (*(a1 + 56))
            {
              v93 = *(a1 + 56);
            }

            else
            {
              v93 = 2430;
            }

            _fd_unlink_with_origin(*(a1 + 72), v93);
            memset(v227, 0, sizeof(v227));
            v226 = 0u;
            v224 = 0u;
            v225 = 0u;
            v222 = 0u;
            v223 = 0u;
            memset(&buf, 0, sizeof(buf));
            v94 = *__error();
            v95 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
            {
              v96 = fd_name(*(a1 + 72), &buf, 0xFFuLL);
              LODWORD(__endptr[0]) = 136315394;
              *(__endptr + 4) = v158;
              WORD2(__endptr[1]) = 2080;
              *(&__endptr[1] + 6) = v96;
              _os_log_impl(&dword_1C278D000, v95, OS_LOG_TYPE_DEFAULT, "[%s] unlink %s", __endptr, 0x16u);
            }

            *__error() = v94;
            __strncat_chk();
            unlinkat(v155, &buf, 0);
            v97 = *__error();
            v98 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(__endptr[0]) = 136315394;
              *(__endptr + 4) = v158;
              WORD2(__endptr[1]) = 2080;
              *(&__endptr[1] + 6) = &buf;
              _os_log_impl(&dword_1C278D000, v98, OS_LOG_TYPE_DEFAULT, "[%s] unlink %s", __endptr, 0x16u);
            }

            *__error() = v97;
          }

          goto LABEL_158;
        }
      }

      SIActivityJournalUnlinkJournal((v4 + 2192), *(a1 + 64));
      if (v80)
      {
        fd_make_readonly(*(a1 + 64));
      }

      if (*(a1 + 56))
      {
        v87 = *(a1 + 56);
      }

      else
      {
        v87 = 2417;
      }

      _fd_unlink_with_origin(*(a1 + 64), v87);
      v88 = *__error();
      v89 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__endptr[0]) = 136315394;
        *(__endptr + 4) = v158;
        WORD2(__endptr[1]) = 2080;
        *(&__endptr[1] + 6) = &buf;
        _os_log_impl(&dword_1C278D000, v89, OS_LOG_TYPE_DEFAULT, "[%s] unlink %s", __endptr, 0x16u);
      }

      *__error() = v88;
      __strncat_chk();
      unlinkat(v155, &buf, 0);
      v90 = *__error();
      v91 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__endptr[0]) = 136315394;
        *(__endptr + 4) = v158;
        WORD2(__endptr[1]) = 2080;
        *(&__endptr[1] + 6) = &buf;
        _os_log_impl(&dword_1C278D000, v91, OS_LOG_TYPE_DEFAULT, "[%s] unlink %s", __endptr, 0x16u);
      }

      *__error() = v90;
      goto LABEL_147;
    }

    bzero(&buf, 0x400uLL);
    if ((fcntl(v155, 50, &buf) & 0x80000000) == 0)
    {
      if (LOBYTE(buf.st_dev))
      {
        v82 = strlen(&buf);
        snprintf(&buf + v82, 1024 - v82, "/%s", "skg_");
        v83 = open(&buf, 256);
        if ((v83 & 0x80000000) == 0)
        {
          close(v83);
LABEL_125:
          v80 = 0;
          goto LABEL_126;
        }
      }
    }

    bzero(&buf, 0x400uLL);
    v219 = 0u;
    memset(v220, 0, sizeof(v220));
    v217 = 0u;
    v218 = 0u;
    v215 = 0u;
    v216 = 0u;
    v213 = 0u;
    v214 = 0u;
    v211 = 0u;
    v212 = 0u;
    v209 = 0u;
    v210 = 0u;
    v208 = 0u;
    memset(__endptr, 0, sizeof(__endptr));
    v205 = 0u;
    memset(v206, 0, sizeof(v206));
    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v199 = 0u;
    v200 = 0u;
    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    v193 = 0u;
    v194 = 0u;
    *__str = 0u;
    v118 = *(a1 + 64);
    if (v118)
    {
      v119 = fd_name(v118, __endptr, 0xFFuLL);
      v120 = v119;
      v121 = v119;
      if (*(v5 + 6960) < 1)
      {
        if (*(v4 + 6944))
        {
          goto LABEL_215;
        }
      }

      else if (!strncmp(v119, "journalAttr.", 0xCuLL))
      {
        *v187 = 0;
        if (*(v5 + 6960) == strtoll(v120 + 12, v187, 0))
        {
          goto LABEL_215;
        }
      }

      SIActivityJournalUnlinkJournal((v4 + 2192), *(a1 + 64));
      if (!strncmp(v121, "journalAttr.", 0xCuLL))
      {
        snprintf(__str, 0xFFuLL, "%s%s", "skg_knowledgeEntry.", v120 + 12);
        fd_rename(*(a1 + 64), __str);
        v126 = *__error();
        v127 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
        {
          *v187 = 136315650;
          *&v187[4] = v158;
          v188 = 2080;
          v189 = v121;
          v190 = 2080;
          v191 = __str;
          _os_log_impl(&dword_1C278D000, v127, OS_LOG_TYPE_DEFAULT, "[%s] renamed journal %s -> %s", v187, 0x20u);
        }

        *__error() = v126;
        fcntl(v155, 50, &buf);
        v128 = strlen(&buf);
        snprintf(&buf + v128, 0x400uLL, "/%s", __str);
        v164 = 65541;
        v129 = open(&buf, 0);
        if ((v129 & 0x80000000) == 0)
        {
          v130 = v129;
          if (!ffsctl(v129, 0xC0084A44uLL, &v164, 0))
          {
            v153 = *__error();
            v131 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
            {
              *v187 = 136315394;
              *&v187[4] = v158;
              v188 = 2080;
              v189 = __str;
              _os_log_impl(&dword_1C278D000, v131, OS_LOG_TYPE_DEFAULT, "[%s] Mark skg journal purgeable %s", v187, 0x16u);
            }

            *__error() = v153;
          }

          close(v130);
        }

        strcat(v120, "_toc");
        v132 = *__error();
        v133 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
        {
          *v187 = 136315394;
          *&v187[4] = v158;
          v188 = 2080;
          v189 = v121;
          _os_log_impl(&dword_1C278D000, v133, OS_LOG_TYPE_DEFAULT, "[%s] unlink %s", v187, 0x16u);
        }

        *__error() = v132;
        unlinkat(v155, v121, 0);
      }

      else
      {
        if (*(a1 + 56))
        {
          v122 = *(a1 + 56);
        }

        else
        {
          v122 = 2489;
        }

        _fd_unlink_with_origin(*(a1 + 64), v122);
        v123 = *__error();
        v124 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
        {
          v125 = fd_name(*(a1 + 64), v121, 8uLL);
          *v187 = 136315394;
          *&v187[4] = v158;
          v188 = 2080;
          v189 = v125;
          _os_log_impl(&dword_1C278D000, v124, OS_LOG_TYPE_DEFAULT, "[%s]  unlink %s", v187, 0x16u);
        }

        *__error() = v123;
      }
    }

LABEL_215:
    v134 = *(a1 + 72);
    if (!v134)
    {
LABEL_158:
      if (theArray)
      {
        si_deleteExhaustedRemappings(v5, theArray);
      }

      *(v5 + 1464) = CFAbsoluteTimeGetCurrent();
      v99 = *__error();
      v100 = _SILogForLogForCategory(11);
      v101 = 2 * (dword_1EBF46AF8 < 4);
      if (os_log_type_enabled(v100, v101))
      {
        v102 = *(v5 + 2408);
        buf.st_dev = 134218240;
        *&buf.st_mode = v5;
        WORD2(buf.st_ino) = 2048;
        *(&buf.st_ino + 6) = v102;
        _os_log_impl(&dword_1C278D000, v100, v101, "synced SIRef:%p recoverTime:%llu", &buf, 0x16u);
      }

      *__error() = v99;
      v179 = 1;
      v24 = v161;
      goto LABEL_163;
    }

    SIActivityJournalUnlinkJournal((v4 + 2192), v134);
    v135 = fd_name(*(a1 + 72), __endptr, 0xFFuLL);
    __s = v135;
    if (!strncmp(v135, "journalAttr.", 0xCuLL))
    {
      snprintf(__str, 0xFFuLL, "%s%s", "skg_knowledgeEntry.", v135 + 12);
      fd_rename(*(a1 + 72), __str);
      v142 = *__error();
      v143 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
      {
        *v187 = 136315650;
        *&v187[4] = v158;
        v188 = 2080;
        v189 = v135;
        v190 = 2080;
        v191 = __str;
        _os_log_impl(&dword_1C278D000, v143, OS_LOG_TYPE_DEFAULT, "[%s] renamed journal %s -> %s", v187, 0x20u);
      }

      *__error() = v142;
      fcntl(v155, 50, &buf);
      v144 = strlen(&buf);
      snprintf(&buf + v144, 0x400uLL, "/%s", __str);
      v164 = 65541;
      v145 = open(&buf, 0);
      if ((v145 & 0x80000000) == 0)
      {
        v146 = v145;
        if (!ffsctl(v145, 0xC0084A44uLL, &v164, 0))
        {
          v147 = *__error();
          v148 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
          {
            *v187 = 136315394;
            *&v187[4] = v158;
            v188 = 2080;
            v189 = __str;
            _os_log_impl(&dword_1C278D000, v148, OS_LOG_TYPE_DEFAULT, "[%s] Mark skg journal purgeable %s", v187, 0x16u);
          }

          *__error() = v147;
        }

        close(v146);
      }

      strcat(v135, "_toc");
      v140 = *__error();
      v141 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_234;
      }
    }

    else
    {
      if (*(a1 + 56))
      {
        v136 = *(a1 + 56);
      }

      else
      {
        v136 = 2523;
      }

      _fd_unlink_with_origin(*(a1 + 72), v136);
      v137 = *__error();
      v138 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
      {
        v139 = fd_name(*(a1 + 72), v135, 8uLL);
        *v187 = 136315394;
        *&v187[4] = v158;
        v188 = 2080;
        v189 = v139;
        _os_log_impl(&dword_1C278D000, v138, OS_LOG_TYPE_DEFAULT, "[%s]  unlink  %s", v187, 0x16u);
      }

      *__error() = v137;
      strcat(v135, "_toc");
      v140 = *__error();
      v141 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_234;
      }
    }

    *v187 = 136315394;
    *&v187[4] = v158;
    v188 = 2080;
    v189 = __s;
    _os_log_impl(&dword_1C278D000, v141, OS_LOG_TYPE_DEFAULT, "[%s] unlink %s", v187, 0x16u);
LABEL_234:
    *__error() = v140;
    unlinkat(v155, __s, 0);
    goto LABEL_158;
  }

  v7 = *__error();
  v8 = _SILogForLogForCategory(12);
  v9 = 2 * (dword_1EBF46AFC < 4);
  if (os_log_type_enabled(v8, v9))
  {
    state = xpc_activity_get_state(*(a1 + 112));
    buf.st_dev = 134217984;
    *&buf.st_mode = state;
    _os_log_impl(&dword_1C278D000, v8, v9, "defer sync. activity state:%lu", &buf, 0xCu);
  }

  *__error() = v7;
  *(a1 + 120) = 1;
  if (!xpc_activity_set_state(*(a1 + 112), 3))
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(12);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      buf.st_dev = 136315394;
      *&buf.st_mode = "syncIndex";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 2160;
      _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: Failed to defer activity state in syncIndex", &buf, 0x12u);
    }

    *__error() = v11;
  }

  v13 = 0;
  v14 = a1;
LABEL_186:
  si_sync_ctx_free(v14, v13);
  v115 = *MEMORY[0x1E69E9840];
}

uint64_t debug_token_create(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *MEMORY[0x1E695E480];
  if (debug_token_get_type_id_onceToken != -1)
  {
    dispatch_once(&debug_token_get_type_id_onceToken, &__block_literal_global_75);
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = a1;
  *(Instance + 40) = a3;
  *(Instance + 32) = a2;
  pthread_threadid_np(0, (Instance + 24));
  return Instance;
}

CFDictionaryRef si_copyRemappingMetadata(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, (a1 + 2384));
  cf = si_copyRemappingMetadatas(a1);
  v3 = CFDictionaryCreate(v2, remapping_keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(values);
  CFRelease(cf);
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

__CFArray *si_copyRemappingMetadatas(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = 0;
  db_perform_callback(*(a1 + 1192), _copyRemappings, &v13);
  if (v14 && (Count = CFArrayGetCount(v14)) != 0)
  {
    v2 = Count;
    MEMORY[0x1EEE9AC00](Count);
    v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v4, v3);
    v19.location = 0;
    v19.length = v2;
    CFArrayGetValues(v14, v19, v4);
    v5 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v2, MEMORY[0x1E695E9C0]);
    if (v2 >= 1)
    {
      v7 = MEMORY[0x1E695E9D8];
      v8 = MEMORY[0x1E695E9E8];
      do
      {
        v9 = *v4++;
        valuePtr = *(v9 + 24);
        values = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
        v17 = CFNumberCreate(v5, kCFNumberCFIndexType, (v9 + 40));
        v10 = CFDictionaryCreate(v5, &remapping_keys_11804, &values, 2, v7, v8);
        CFRelease(values);
        CFRelease(v17);
        CFArrayAppendValue(Mutable, v10);
        CFRelease(v10);
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    Mutable = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v11 = *MEMORY[0x1E69E9840];
  return Mutable;
}

char *si_create_indexmetadata(uint64_t a1, int a2)
{
  v36 = 0;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v5 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(a1 + 1192), 0x40000000, add_explicit + 1);
  v35 = v5;
  v6 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
  v34 = HIDWORD(v5);
  v33 = __PAIR64__(v7, v8);
  *(v6 + 216) = 0;
  v9 = *(v6 + 312);
  v10 = *(v6 + 224);
  if (v10)
  {
    v10(*(v6 + 288));
  }

  v32 = v35;
  v31 = v34;
  v30 = v33;
  if (_setjmp(v6))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v29 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v29, 2u);
    }

    *(v6 + 312) = v9;
    CIOnThreadCleanUpReset(v30);
    dropThreadId(v32, 1, add_explicit + 1);
    CICleanUpReset(v32, HIDWORD(v30));
    return 0;
  }

  else
  {
    v12 = 1;
    *v29 = 1;
    v13 = 0;
    v14 = db_obj_iter_create_with_filter(*(a1 + 1192), 1uLL, v29, 0, 0, 0, 0, 0, 0);
    v18 = db_obj_iter_next(v14, &v28, 1, v15, v16, v17);
    if (v18)
    {
      v13 = db_copy_obj(v18, 512);
      v12 = v13 == 0;
    }

    db_obj_iter_release(v14);
    if (a2 == 1 && v12)
    {
      obj = db_create_obj(*(a1 + 1192), 21, 0);
      v36 = obj;
      if (obj)
      {
        *obj = 1;
        *(obj + 10) |= 1u;
        v27 = 65549;
        db_add_field(*(a1 + 1192), &v36, 1u, "_kStoreMetadataVersion", 0, 0x108u, 6, &v27, v20, 4);
        v13 = v36;
        if (db_update_obj(*(a1 + 1192), v36, 12))
        {
          v21 = *__error();
          v22 = _SILogForLogForCategory(7);
          v23 = dword_1EBF46AE8 < 3;
          if (os_log_type_enabled(v22, (dword_1EBF46AE8 < 3)))
          {
            *buf = 0;
            _os_log_impl(&dword_1C278D000, v22, v23, "*warn* Failed updating index state", buf, 2u);
          }

          *__error() = v21;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    v24 = threadData[9 * v32 + 1] + 320 * v31;
    *(v24 + 312) = v9;
    v25 = *(v24 + 232);
    if (v25)
    {
      v25(*(v24 + 288));
    }

    dropThreadId(v32, 0, add_explicit + 1);
    return v13;
  }
}

unint64_t *db_obj_iter_create_with_filter(int *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, const void *a7, const void *a8, unint64_t a9)
{
  v58 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v46 = *__error();
    v47 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = *a1;
      *buf = 136315650;
      v53 = "db_obj_iter_create_with_filter";
      v54 = 1024;
      v55 = 611;
      v56 = 1024;
      v57 = v48;
      _os_log_error_impl(&dword_1C278D000, v47, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v46;
    v49 = __si_assert_copy_extra_332();
    v50 = v49;
    if (v49)
    {
      v51 = v49;
    }

    else
    {
      v51 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 611, v51);
    free(v50);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (!a3)
  {
    goto LABEL_24;
  }

  v17 = malloc_type_zone_malloc(queryZone, 0x10118uLL, 0xA4971684uLL);
  if (!v17)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    goto LABEL_24;
  }

  v18 = v17;
  *v17 = 3506;
  v19 = malloc_type_zone_malloc(queryZone, 32 * a2, 0xA4971684uLL);
  if (!v19)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    free(v18);
LABEL_24:
    v18 = 0;
    goto LABEL_25;
  }

  v18[4] = v19;
  madvise(v19, 32 * a2, 3);
  v18[23] = 0;
  v18[3] = a1;
  v18[10] = v18;
  v18[11] = 0;
  v18[17] = a2;
  atomic_store(0, v18 + 18);
  v18[20] = 0;
  *(v18 + 192) = 0;
  v18[13] = 0;
  v18[14] = 0;
  v18[15] = -1;
  v18[34] = 0;
  v18[25] = 0;
  v18[12] = 0;
  *(v18 + 37) = 1;
  *(v18 + 76) = (a6 & 0x10) != 0;
  *(v18 + 73) = (a6 & 4) != 0;
  *(v18 + 78) = (a6 & 8) != 0;
  v21 = fd_dup(*(a1 + 106));
  v18[1] = v21;
  *(v18 + 1) = _fd_acquire_fd(v21, v18 + 2);
  v18[5] = _Block_copy(a7);
  v18[6] = _Block_copy(a8);
  v18[7] = a9;
  *(v18 + 72) = 0;
  *(v18 + 77) = 0;
  v18[8] = 0;
  v18[22] = 0;
  v22 = qos_class_self();
  v23 = dispatch_queue_attr_make_with_qos_class(0, v22, 0);
  v18[21] = dispatch_queue_create("obj iter read queue", v23);
  v24 = a1[201];
  if ((v24 & 1) == 0)
  {
    ++*(v18 + 192);
  }

  if (a2)
  {
    v25 = v18[4];
    if ((a6 & 1) != 0 || (v24 & 1) == 0)
    {
      v36 = 0;
      v37 = 16;
      if (a5)
      {
        do
        {
          v38 = (v25 + v37);
          *(v38 - 2) = *(a3 + 8 * v36);
          *v38 = 0;
          *(v18[4] + v37 + 8) = *(v18[4] + v37 + 8) & 0xFB | (4 * (*(a5 + v36) & 1));
          v39 = v18[4] + v37;
          *(v39 + 9) = 0;
          *(v39 + 8) &= ~1u;
          *(v18[4] + v37) |= 0x400000000uLL;
          *(v18[4] + v37 + 8) &= ~2u;
          v40 = (v18[4] + v37);
          v41 = *v40 | 0x3FFFFFFFCLL;
          *(v40 - 1) = v36;
          *v40 = v41;
          *(v18[4] + v37) &= 0xFFFFFFFFFFFFFFFCLL;
          v25 = v18[4];
          *(v25 + v37 - 8) = v36++;
          v37 += 32;
        }

        while (a2 != v36);
      }

      else
      {
        do
        {
          v42 = (v25 + v37);
          *(v42 - 2) = *(a3 + 8 * v36);
          *v42 = 0;
          *(v18[4] + v37 + 8) &= ~4u;
          v43 = v18[4] + v37;
          *(v43 + 9) = 0;
          *(v43 + 8) &= ~1u;
          *(v18[4] + v37) |= 0x400000000uLL;
          *(v18[4] + v37 + 8) &= ~2u;
          v44 = (v18[4] + v37);
          v45 = *v44 | 0x3FFFFFFFCLL;
          *(v44 - 1) = v36;
          *v44 = v45;
          *(v18[4] + v37) &= 0xFFFFFFFFFFFFFFFCLL;
          v25 = v18[4];
          *(v25 + v37 - 8) = v36++;
          v37 += 32;
        }

        while (a2 != v36);
      }
    }

    else
    {
      v26 = 0;
      v27 = 16;
      do
      {
        v28 = (v25 + v27);
        *(v28 - 2) = *(a3 + 8 * v26);
        *v28 = 0;
        if (a5)
        {
          v29 = 4 * (*(a5 + v26) & 1);
        }

        else
        {
          v29 = 0;
        }

        *(v18[4] + v27 + 8) = *(v18[4] + v27 + 8) & 0xFB | v29;
        v30 = v18[4] + v27;
        *(v30 + 9) = 0;
        *(v30 + 8) &= ~1u;
        *(v18[4] + v27) |= 0x400000000uLL;
        *(v18[4] + v27 + 8) &= ~2u;
        v31 = (v18[4] + v27);
        v32 = *v31 | 0x3FFFFFFFCLL;
        *(v31 - 1) = v26;
        *v31 = v32;
        if (a4)
        {
          v33 = (*(a4 + 2 * v26) & 0xFFDF) == 17;
        }

        else
        {
          v33 = 3;
        }

        *(v18[4] + v27) = *(v18[4] + v27) & 0xFFFFFFFFFFFFFFFCLL | v33;
        v25 = v18[4];
        *(v25 + v27 - 8) = v26++;
        v27 += 32;
      }

      while (a2 != v26);
    }
  }

LABEL_25:
  v34 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t SISyncIndex(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 1192) && *(result + 1040) && *(result + 1048))
    {
      si_sync_ctx_create_with_defer_fd(result, 0);
      si_enqueue_work_with_qos(*(v1 + 1104), 9, si_sync_index_delayed0, v2);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *ContentIndexDocSetsCreateIterator(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6)
{
  v96 = *MEMORY[0x1E69E9840];
  if (!*(a3 + 8))
  {
    result = 0;
    goto LABEL_85;
  }

  v86 = 0;
  v10 = a2;
  v11 = 8 * a2 + 80;
  if (v11 >> 17)
  {
    v12 = 1;
  }

  else
  {
    v12 = *MEMORY[0x1E69E9AC8] >= v11;
  }

  if (!v12)
  {
    ++sTotal_6326;
  }

  v13 = malloc_type_zone_calloc(queryZone, 1uLL, v11, 0x5BAF1CEAuLL);
  if (!v13 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
  }

  v86 = v13;
  v13[55] = a5;
  v84 = 0;
  v85 = 8;
  v83 = 1;
  v14 = malloc_type_zone_malloc(queryZone, 0x40uLL, 0xA4971684uLL);
  if (!v14 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
  }

  v82 = v14;
  *(v86 + 1) = a6;
  v15 = *(*a1 + 56);
  if (*(v15 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    goto LABEL_82;
  }

  v69 = a1;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v17 = setThreadIdAndInfo(*(v15 + 64), sIndexExceptionCallbacks, v15, 0x20000000, add_explicit + 1);
  v81 = v17;
  v18 = threadData[9 * v17 + 1] + 320 * HIDWORD(v17);
  v79 = v19;
  v80 = HIDWORD(v17);
  v78 = v20;
  *(v18 + 216) = 0;
  v21 = *(v18 + 312);
  v22 = *(v18 + 224);
  if (v22)
  {
    v22(*(v18 + 288));
  }

  if (!_setjmp(v18))
  {
    Mutable = CFSetCreateMutable(kCIQueryZoneAllocator, 0, 0);
    if (v10 == 1)
    {
      v32 = *v69;
      if (*(*v69 + 48) == 1)
      {
        *(v86 + 7) = *(*(v32 + 56) + 68);
        *(v86 + 10) = *(v86 + 7);
        if (*(v86 + 10))
        {
          *(v86 + 11) = 1;
          *(v86 + 56) = 1;
          atomic_fetch_add(v32, 1u);
          *(v86 + 10) = v32;
          atomic_fetch_add(a3, 1u);
          *v86 = a3;
          *(v86 + 9) = 1;
          free(v82);
        }

        else
        {
          free(v86);
          v86 = 0;
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

LABEL_79:
        v83 = 0;
        v66 = threadData[9 * v81 + 1] + 320 * v80;
        *(v66 + 312) = v21;
        v67 = *(v66 + 232);
        if (v67)
        {
          v67(*(v66 + 288));
        }

        dropThreadId(v81, 0, add_explicit + 1);
        goto LABEL_82;
      }

      v74 = v21;
      v75 = 1;
      v76 = add_explicit;
      ContentIndexDocSetCreatePhraseIterators(v32, *(a3 + 16), *(*(v32 + 56) + 68), *(a3 + 41));
      ContentIndexDocSetAppendIterators(v32, &v85, &v84, &v82, Mutable);
      atomic_fetch_add(v32, 1u);
      *(v86 + 10) = v32;
    }

    else
    {
      v74 = v21;
      v75 = v10;
      v76 = add_explicit;
      if (v10 >= 1)
      {
        v33 = 10;
        v34 = v69;
        do
        {
          v35 = v33;
          v36 = *v34++;
          ContentIndexDocSetCreatePhraseIterators(v36, *(a3 + 16), *(*(v36 + 56) + 68), *(a3 + 41));
          ContentIndexDocSetAppendIterators(v36, &v85, &v84, &v82, Mutable);
          atomic_fetch_add(v36, 1u);
          *(v86 + v35) = v36;
          v33 = v35 + 1;
          --v10;
        }

        while (v10);
      }
    }

    CFRelease(Mutable);
    v37 = v84;
    v38 = *(*v69 + 56);
    __n = 8 * v84;
    v39 = 8 * v84 + 160;
    if (!(v39 >> 17) && *MEMORY[0x1E69E9AC8] < v39)
    {
      ++sTotal_13683;
    }

    v40 = *(a3 + 8);
    v73 = v84;
    __src = v82;
    v41 = *(v38 + 68);
    v42 = malloc_type_zone_calloc(queryZone, 1uLL, v39, 0x5BAF1CEAuLL);
    if (!v42 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    *(v42 + 2) = v37;
    *(v42 + 3) = 1;
    v43 = v42 + 8;
    v72 = v37;
    if (v37)
    {
      v43 = malloc_type_zone_malloc(queryZone, __n + 16, 0xA4971684uLL);
      if (!v43 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      *(v42 + 1) = v43;
    }

    *v43 = 0;
    *(v42 + 7) = -1;
    *(v42 + 8) = -1;
    *(v42 + 10) = v40;
    v44 = v41;
    *(v42 + 25) = v41;
    v42[40] = 0;
    if (a4)
    {
      *(v42 + 6) = 0;
      v45 = MEMORY[0x1E69E9AC8];
      v46 = ((*MEMORY[0x1E69E9AB8] + *(v40 + 24)) & ~*MEMORY[0x1E69E9AB8]) + *MEMORY[0x1E69E9AC8];
      *(v42 + 11) = v46;
      v47 = mmap(0, v46, 1, 2, *(v40 + 4496), 0);
      *(v42 + 4) = v47;
      if (v47 == -1)
      {
        v48 = *__error();
        bzero(buf, 0x400uLL);
        fd_realpath(*(v40 + 4488), buf);
        v49 = *__error();
        v50 = _SILogForLogForCategory(10);
        v51 = dword_1EBF46AF4 < 3;
        if (os_log_type_enabled(v50, (dword_1EBF46AF4 < 3)))
        {
          v52 = *(v42 + 11);
          *v87 = 67109634;
          v88 = v48;
          v89 = 2048;
          v90 = v52;
          v91 = 2080;
          v92 = buf;
          _os_log_impl(&dword_1C278D000, v50, v51, "*warn* Failed to map postings: %d, %zd, %s", v87, 0x1Cu);
        }

        *__error() = v49;
        *__error() = v48;
      }

      else if (mmap(&v47[*(v42 + 11) - *v45], *v45, 1, 4114, -83886080, 0) == -1)
      {
        v53 = *__error();
        bzero(buf, 0x400uLL);
        fd_realpath(*(v40 + 4488), buf);
        v54 = *__error();
        v55 = _SILogForLogForCategory(10);
        v56 = dword_1EBF46AF4 < 3;
        if (os_log_type_enabled(v55, (dword_1EBF46AF4 < 3)))
        {
          v57 = *(v42 + 11);
          v58 = *MEMORY[0x1E69E9AC8];
          *v87 = 67109890;
          v88 = v53;
          v89 = 2048;
          v90 = v57;
          v91 = 2048;
          v92 = v58;
          v93 = 2080;
          v94 = buf;
          _os_log_impl(&dword_1C278D000, v55, v56, "*warn* Failed to allocated guard page error %d, %zd, %lu, %s", v87, 0x26u);
        }

        *__error() = v54;
        *__error() = v53;
        munmap(*(v42 + 4), *(v42 + 11));
      }

      else
      {
        v42[40] = 1;
      }
    }

    if ((v42[40] & 1) == 0)
    {
      *(v42 + 6) = -1;
      v59 = malloc_type_zone_malloc(queryZone, 0x10004uLL, 0xA4971684uLL);
      if (!v59)
      {
        _log_fault_for_malloc_failure();
      }

      *(v42 + 4) = v59;
      *(v42 + 11) = 0x10000;
    }

    v60 = 0;
    *(v42 + 18) = v44;
    *(v42 + 19) = v44;
    *(v42 + 19) = 0;
    v61 = *(v40 + 24) >> 1;
    *(v42 + 13) = v61;
    if (v61 >= *(v40 + 32))
    {
      v60 = v61;
    }

    *(v42 + 13) = v60;
    memcpy(v42 + 160, __src, __n);
    v62 = v72;
    *(v42 + 14) = v72;
    *(v42 + 15) = __src;
    if (v73 >= 1)
    {
      v63 = 160;
      do
      {
        if ((*(*&v42[v63] + 40))())
        {
          v65 = *&v42[v63];
          if ((*(v65 + 8) & 0x3FFFFFFFFFFFFFFFuLL) <= *(v42 + 13))
          {
            v64 = *(v42 + 19);
            *(v42 + 19) = v64 + 1;
            *&v42[8 * v64 + 160] = v65;
          }

          else
          {
            ipqpush((v42 + 8), v65);
          }
        }

        *v42 |= *(*&v42[v63] + 64);
        v63 += 8;
        --v62;
      }

      while (v62);
    }

    v82 = 0;
    *(v86 + 2) = v42;
    *(v86 + 52) = 0;
    *(v86 + 7) = *(a3 + 36);
    *(v86 + 6) = *(a3 + 32);
    atomic_fetch_add(a3, 1u);
    *v86 = a3;
    *(v86 + 10) = 0;
    *(v86 + 11) = 0;
    *(v86 + 9) = v75;
    *(v86 + 58) = *v42;
    add_explicit = v76;
    v21 = v74;
    goto LABEL_79;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
  }

  *(v18 + 312) = v21;
  if ((~*(v18 + 212) & 0xA0000000) == 0)
  {
    v23 = *(v18 + 288);
    if (v23)
    {
      _CIMakeInvalid(v23);
    }
  }

  if (__THREAD_SLOT_KEY)
  {
    v24 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v24)
    {
LABEL_87:
      makeThreadId();
      v25 = pthread_getspecific(__THREAD_SLOT_KEY);
      goto LABEL_25;
    }
  }

  else
  {
    makeThreadId();
    v24 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v24)
    {
      goto LABEL_87;
    }
  }

  v25 = v24;
  if (v24 >= 0x801)
  {
    goto LABEL_87;
  }

LABEL_25:
  v26 = &threadData[9 * v25];
  v28 = *(v26 - 4);
  v27 = (v26 - 2);
  if (v28 > v78)
  {
    v29 = v25 - 1;
    do
    {
      CIOnThreadCleanUpPop(v29);
    }

    while (*v27 > v78);
  }

  dropThreadId(v81, 1, add_explicit + 1);
  CICleanUpReset(v81, v79);
LABEL_82:
  if (v83 == 1)
  {
    free(v82);
    free(v86);
    v86 = 0;
  }

  result = v86;
LABEL_85:
  v68 = *MEMORY[0x1E69E9840];
  return result;
}

void CIIndexSetAddIntersectionInRange(unsigned int *a1, uint64_t *a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a4 <= a5)
  {
    v5 = a5;
    v29[1] = v29;
    v10 = a3;
    MEMORY[0x1EEE9AC00](a1);
    v12 = (v29 - v11);
    bzero(v29 - v11, v11);
    v13 = v12 + 13;
    v14 = v10;
    do
    {
      v15 = *a2;
      if (!*a2)
      {
        goto LABEL_25;
      }

      *(v13 - 13) = v15;
      *v13 = *(v15 + 16) < -9;
      *(v13 - 1) = 0;
      v13 += 16;
      ++a2;
      --v14;
    }

    while (v14);
    __compar[0] = MEMORY[0x1E69E9820];
    __compar[1] = 0x40000000;
    __compar[2] = __CIIndexSetAddIntersectionInRange_block_invoke;
    __compar[3] = &__block_descriptor_tmp_12_5952;
    v31 = a4;
    v32 = v5;
    qsort_b(v12, v10, 0x10uLL, __compar);
    if (*(v12 + 13))
    {
      if (a3 <= 1)
      {
        v17 = *(v12 + 2);
        goto LABEL_20;
      }
    }

    else
    {
      v17 = *(v12 + 2);
      if (a3 < 2 || v17 < 0x400)
      {
LABEL_20:
        if (v17 || (*(v12 + 12) & 1) == 0)
        {
          CIIndexSetAddRange(a1, *v12, a4, v5, v16);
          if (a3 >= 2)
          {
            v25 = v10 - 1;
            v26 = v12 + 2;
            do
            {
              v27 = *v26;
              v26 += 2;
              CIIndexSetIntersectRanges(a1, v27, a4, v5);
              --v25;
            }

            while (v25);
          }
        }

        goto LABEL_25;
      }
    }

    if (a4 + 0x2000 >= v5)
    {
      v18 = a4;
    }

    else
    {
      v18 = v5 - 0x2000;
    }

    v19 = v10 - 1;
    do
    {
      CIIndexSetAddRange(a1, *v12, v18, v5, v16);
      v20 = v12 + 2;
      v21 = v19;
      do
      {
        v22 = *v20;
        v20 += 2;
        CIIndexSetIntersectRanges(a1, v22, v18, v5);
        --v21;
      }

      while (v21);
      v23 = v18 - 0x2000;
      if (v18 <= a4 + 0x2000)
      {
        v23 = a4;
      }

      v5 = v18;
      v24 = v18 > a4;
      v18 = v23;
    }

    while (v24);
  }

LABEL_25:
  v28 = *MEMORY[0x1E69E9840];
}

_DWORD *CIIndexSetShrink(_DWORD *result, int8x8_t a2)
{
  if (result)
  {
    if (result[4] <= -10)
    {
      v2 = result;
      result = _CIIndexSetConvertIfArrayIsMuchMoreEfficient(result, result[5], result[6], 0, 0, a2);
      if (v2[4] <= -10)
      {

        return _CIIndexSetConvertIfInvertedArrayIsMoreEfficient(v2, 0, v3);
      }
    }
  }

  return result;
}

uint64_t ContentIndexDocSetResolveOIDsAndGroups_Step(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, unint64_t a9, unint64_t *a10, _BYTE *a11, void *a12, int a13, int64_t a14, unint64_t a15, unint64_t a16, unsigned __int8 a17, uint64_t a18)
{
  v813 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    *a10 = 0;
    goto LABEL_89;
  }

  v767 = a2;
  v768 = a3;
  v769 = a4;
  v770 = a5;
  v772 = a7;
  v773 = a8;
  v19 = *(result + 80);
  v765 = result + 80;
  v715 = v19;
  v774 = *(v19 + 56);
  v764 = *(v774 + 80);
  v801 = 0;
  v695 = *(v19 + 52);
  v20 = v695 == 3;
  if (a11)
  {
    *a11 = v20;
  }

  v763 = v20;
  v766 = a11;
  v775 = &v663;
  v778 = a10;
  v694 = *a10;
  v776 = a12;
  v21 = *a12;
  v22 = *(result + 72);
  MEMORY[0x1EEE9AC00](result);
  v24 = &v663 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v25;
  bzero(v24, v23);
  v27 = *(v26 + 72);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v663 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v30, v29);
  MEMORY[0x1EEE9AC00](v31);
  v32 = (4 * v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v760 = &v663 - v32;
  bzero(&v663 - v32, 4 * v27);
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v663 - v32;
  bzero(v34, 4 * v27);
  v771 = a6;
  v35 = *(a6 + 228);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v663 - ((v37 + 15) & 0xFFFFFFFF0);
  bzero(v38, v37);
  MEMORY[0x1EEE9AC00](v39);
  v758 = &v663 - ((v40 + 15) & 0x7FFFFFFF0);
  bzero(v758, v40);
  v777 = v26;
  v41 = *(v26 + 56);
  v42 = v715[12];
  if (v41)
  {
    v38 = 0;
    v30 = 0;
    v24 = 0;
    v43 = 0;
    v44 = v777;
    v45 = v765;
    goto LABEL_54;
  }

  if (v42 <= 3)
  {
    v45 = v765;
    if (v42 < 3)
    {
      goto LABEL_13;
    }

    if (v42 != 3)
    {
      goto LABEL_756;
    }
  }

  else
  {
    v45 = v765;
    if ((v42 - 4) < 4)
    {
LABEL_9:
      v46 = (v19 + 80);
      goto LABEL_10;
    }

    if (v42 != 8)
    {
      if (v42 == 9)
      {
        goto LABEL_9;
      }

LABEL_756:
      assert_invalid_doc_type(v715);
    }
  }

  v116 = *(v715 + 8);
  if (v116)
  {
    v46 = (v116 + 88);
LABEL_10:
    v43 = *v46;
    if (v27 >= 2)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_13:
  v43 = 0;
  if (v27 >= 2)
  {
LABEL_14:
    v47 = v760;
    v48 = v777 + 88;
    v49 = 1;
    v50 = 0;
    while (1)
    {
      v51 = *(v48 + 8 * v50);
      v52 = v51;
      v53 = *(v51 + 48);
      if (v53 > 3)
      {
        break;
      }

      if (v53 >= 3)
      {
        if (v53 != 3)
        {
LABEL_755:
          assert_invalid_doc_type(v52);
        }

LABEL_33:
        v60 = *(v51 + 64);
        if (!v60)
        {
          v59 = v49 - 1;
          *&v24[8 * v50] = 0;
          v57 = 0;
          goto LABEL_27;
        }

        v54 = (v60 + 88);
        goto LABEL_18;
      }

      v55 = 0;
LABEL_21:
      *&v24[8 * v50] = v55;
      v56 = 1 << v53;
      if ((v56 & 0x307) == 0)
      {
        if ((v56 & 0xF0) != 0)
        {
          v58 = (v51 + 88);
LABEL_25:
          v57 = *v58;
          goto LABEL_26;
        }

        v61 = *(v51 + 64);
        if (v61)
        {
          v58 = (v61 + 96);
          goto LABEL_25;
        }
      }

      v57 = 0;
LABEL_26:
      v59 = v50;
LABEL_27:
      *&v30[8 * v59] = v57;
      *&v47[4 * v59] = -1;
      *&v34[4 * v59] = -1;
      ++v49;
      if (v27 - 1 == ++v50)
      {
        goto LABEL_38;
      }
    }

    if ((v53 - 4) >= 4)
    {
      if (v53 == 8)
      {
        goto LABEL_33;
      }

      if (v53 != 9)
      {
        goto LABEL_755;
      }
    }

    v54 = (v51 + 80);
LABEL_18:
    v55 = *v54;
    goto LABEL_21;
  }

LABEL_38:
  if (v35)
  {
    v62 = *(v771 + 224);
    v63 = 0;
    v44 = v777;
    v64 = v758;
    while (1)
    {
      v67 = *(v45 + 8 * (v62 + v63));
      v52 = v67;
      v68 = *(v67 + 48);
      if (v68 <= 3)
      {
        break;
      }

      if ((v68 - 4) >= 4)
      {
        if (v68 == 8)
        {
          goto LABEL_51;
        }

        if (v68 != 9)
        {
          goto LABEL_755;
        }
      }

      v65 = (v67 + 80);
LABEL_42:
      v66 = *v65;
LABEL_43:
      *&v38[8 * v63] = v66;
      *&v64[4 * v63++] = -1;
      if (v35 == v63)
      {
        goto LABEL_54;
      }
    }

    if (v68 < 3)
    {
      v66 = 0;
      goto LABEL_43;
    }

    if (v68 != 3)
    {
      goto LABEL_755;
    }

LABEL_51:
    v66 = *(v67 + 64);
    if (!v66)
    {
      goto LABEL_43;
    }

    v65 = (v66 + 88);
    goto LABEL_42;
  }

  v44 = v777;
LABEL_54:
  v752 = v38;
  if (v42 > 9)
  {
    goto LABEL_756;
  }

  v69 = v24;
  v70 = 1 << v42;
  if ((v70 & 0x307) != 0)
  {
    v71 = 0;
  }

  else
  {
    if ((v70 & 0xF0) != 0)
    {
      v72 = (v19 + 88);
    }

    else
    {
      v71 = *(v715 + 8);
      if (!v71)
      {
        goto LABEL_60;
      }

      v72 = (v71 + 96);
    }

    v71 = *v72;
  }

LABEL_60:
  v73 = v694;
  v74 = v21;
  if (!v43 && !v41)
  {
    result = 0;
    v75 = v21;
    v76 = v694;
    goto LABEL_86;
  }

  v713 = v43;
  v751 = v71;
  v753 = v30;
  v77 = v774;
  v78 = v774;
  v79 = 14504;
  db_read_lock(v774 + 14504);
  if (*(v77 + 8) != 1)
  {
    v95 = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      LOWORD(v802[0]) = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", v802, 2u);
    }

    v96 = v74;
    goto LABEL_82;
  }

  v714 = v74;
  v754 = v69;
  v759 = v34;
  v749 = *(v77 + 45);
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v800 = 0;
  v799 = 0;
  v798 = 0;
  v81 = setThreadIdAndInfo(*(v77 + 64), sIndexExceptionCallbacks, v77, 0x20000000, add_explicit + 1);
  v800 = v81;
  v799 = __PAIR64__(HIDWORD(v81), v82);
  v798 = v83;
  v84 = threadData[9 * v81 + 1] + 320 * HIDWORD(v81);
  *(v84 + 216) = 0;
  v756 = *(v84 + 312);
  v85 = *(v84 + 224);
  v86 = v84;
  if (v85)
  {
    v85(*(v84 + 288));
  }

  v797 = v800;
  v796 = v799;
  v795 = v798;
  if (_setjmp(v86))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v802[0]) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v802, 2u);
    }

    *(v86 + 312) = v756;
    if ((~*(v86 + 212) & 0xA0000000) == 0)
    {
      v87 = *(v86 + 288);
      if (v87)
      {
        _CIMakeInvalid(v87);
      }
    }

    v88 = v795;
    if (__THREAD_SLOT_KEY)
    {
      v89 = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!v89)
      {
        goto LABEL_742;
      }
    }

    else
    {
      makeThreadId();
      v89 = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!v89)
      {
        goto LABEL_742;
      }
    }

    v90 = v89;
    if (v89 < 0x801)
    {
LABEL_75:
      v91 = &threadData[9 * v90];
      v93 = *(v91 - 4);
      v92 = (v91 - 2);
      if (v93 > v88)
      {
        v94 = v90 - 1;
        do
        {
          CIOnThreadCleanUpPop(v94);
        }

        while (*v92 > v88);
      }

      dropThreadId(v797, 1, add_explicit + 1);
      CICleanUpReset(v797, v796);
      v95 = 0;
      v96 = v714;
LABEL_82:
      v97 = v73;
      goto LABEL_83;
    }

LABEL_742:
    makeThreadId();
    v90 = pthread_getspecific(__THREAD_SLOT_KEY);
    goto LABEL_75;
  }

  v101 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v794 = 0;
  v793 = 0;
  v792 = 0;
  v102 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v101 + 1);
  v794 = v102;
  v793 = __PAIR64__(HIDWORD(v102), v103);
  v792 = v104;
  v105 = threadData[9 * v102 + 1] + 320 * HIDWORD(v102);
  v750 = *(v105 + 312);
  v106 = *(v105 + 224);
  if (v106)
  {
    v106(*(v105 + 288));
  }

  v791 = v794;
  v790 = v793;
  v789 = v792;
  if (_setjmp(v105))
  {
    v107 = v101;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v802[0]) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v802, 2u);
    }

    *(v105 + 312) = v750;
    v108 = v789;
    if (__THREAD_SLOT_KEY)
    {
      v109 = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!v109)
      {
        goto LABEL_744;
      }
    }

    else
    {
      makeThreadId();
      v109 = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!v109)
      {
        goto LABEL_744;
      }
    }

    v110 = v109;
    if (v109 < 0x801)
    {
LABEL_103:
      v111 = &threadData[9 * v110];
      v113 = *(v111 - 4);
      v112 = (v111 - 2);
      if (v113 > v108)
      {
        v114 = v110 - 1;
        do
        {
          CIOnThreadCleanUpPop(v114);
        }

        while (*v112 > v108);
      }

      dropThreadId(v791, 1, v107 + 1);
      CICleanUpReset(v791, v790);
      v95 = 0;
      v115 = v714;
      v97 = v73;
      v44 = v777;
      goto LABEL_735;
    }

LABEL_744:
    makeThreadId();
    v110 = pthread_getspecific(__THREAD_SLOT_KEY);
    goto LABEL_103;
  }

  v757 = add_explicit;
  v762 = 14504;
  v732 = a13;
  v801 = 1;
  v117 = *(v44 + 40);
  v118 = *(v77 + 14408);
  v119 = *(v77 + 14432);
  v120 = *(v77 + 14416);
  v748 = *(v77 + 14424);
  v788 = -1;
  v787 = -1;
  v121 = *(v771 + 24);
  v755 = v101;
  if (v121)
  {
    v122 = *(v771 + 32);
    v123 = *(v771 + 40);
    if (v121 > 3)
    {
      v125 = v121 & 0xFFFFFFFFFFFFFFFCLL;
      v129 = v123 + 1;
      v130 = v122 + 1;
      v131 = 0uLL;
      v132 = v121 & 0xFFFFFFFFFFFFFFFCLL;
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      do
      {
        v136 = vaddq_s64(v130[-1], v131);
        v137 = vaddq_s64(*v130, v133);
        v138 = vaddq_s64(v129[-1], v134);
        v139 = vaddq_s64(*v129, v135);
        v129 += 2;
        v130 += 2;
        v131 = v136;
        v133 = v137;
        v134 = v138;
        v135 = v139;
        v132 -= 4;
      }

      while (v132);
      v126 = vaddvq_s64(vaddq_s64(v137, v136));
      v124 = vaddvq_s64(vaddq_s64(v139, v138));
      v128 = v126;
      v127 = v124;
      if (v121 == (v121 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_119;
      }
    }

    else
    {
      v124 = 0;
      v125 = 0;
      v126 = 0;
    }

    v140 = v121 - v125;
    v141 = &v122->i64[v125];
    v142 = &v123->i64[v125];
    v143 = v140;
    v144 = v126;
    v145 = v124;
    do
    {
      v146 = *v141++;
      v128 = v146 + v144;
      v147 = *v142++;
      v145 += v147;
      v127 = v145;
      v144 = v128;
      --v143;
    }

    while (v143);
  }

  else
  {
    v127 = 0;
    v128 = 0;
  }

LABEL_119:
  v747 = v128;
  v746 = v127;
  LODWORD(v148) = v117 - 1;
  v745 = v732;
  HasWeights = ContentIndexDocSetHasWeights(*(v45 + 8 * *(v44 + 64)));
  v152 = (HasWeights & 1) != 0 && *(v44 + 72) == *(v771 + 228) + 2;
  v153 = v758;
  v744 = v152;
  v743 = a18;
  v742 = a16;
  v741 = v118;
  v740 = v119;
  v739 = v120;
  v738 = a15;
  v737 = a14;
  v736 = v748;
  v735 = HasWeights;
  v734 = v732 << 25;
  v733 = a9;
  v761 = v77;
  if ((v745 & 4) != 0)
  {
    v482 = v771;
    if (*(v44 + 56))
    {
      v483 = v148;
      v484 = v714;
      v97 = v73;
      v95 = 0;
      goto LABEL_729;
    }

    v486 = 0;
    v487 = *(v44 + 40);
    if (v487 <= *(v44 + 44) || v694 >= v733)
    {
      v483 = v148;
      v484 = v714;
      goto LABEL_727;
    }

    v488 = 0;
    v710 = v771 + 192;
    v711 = v773 + 40;
    v490 = v695 == 1 && v751 != 0;
    v709 = v490;
    v708 = v44 + 88;
    v712 = 0;
    *&v150 = 67110912;
    v706 = v150;
    v705 = 28;
    v704 = 80;
    v491 = 0;
    while (1)
    {
      v492 = v73;
      v493 = v491;
      v494 = v488;
      v703 = v487 - 1;
      v495 = v487 - 1;
      if (v715[13] != 3 && CIIndexSetHasIndexWithHint(v713, v703, &v788) && (!v751 || !CIIndexSetHasIndexWithHint(v751, v703, &v787)))
      {
        v504 = v492;
        v505 = v493;
        v506 = v494;
        goto LABEL_715;
      }

      v696 = v493;
      v697 = v492;
      if (v749)
      {
        v496 = *(v740 + v495);
        v497 = v758;
        if (!*(v740 + v495))
        {
          goto LABEL_559;
        }
      }

      else
      {
        v503 = *(v740 + 4 * (v703 / 5uLL)) >> (6 * (v703 % 5));
        v497 = v758;
        if ((v503 & 0x3F) == 0 || (v745 & 1) != 0 && ((*(v740 + 4 * (v703 / 5uLL)) >> (6 * (v703 % 5))) & 0x1F) == 0x11)
        {
          v504 = v492;
LABEL_560:
          v505 = v696;
          v506 = v494;
          goto LABEL_715;
        }

        if ((v745 & 2) != 0)
        {
          v496 = (*(v740 + 4 * (v703 / 5uLL)) >> (6 * (v703 % 5))) & 0x3F;
          if ((v503 & 0x20) != 0)
          {
LABEL_559:
            v504 = v697;
            goto LABEL_560;
          }
        }

        else
        {
          v496 = (*(v740 + 4 * (v703 / 5uLL)) >> (6 * (v703 % 5))) & 0x3F;
        }
      }

      v698 = v494;
      v702 = v495;
      v498 = *(v482 + 228);
      if (v498)
      {
        v499 = 0;
        v500 = v773;
        v501 = v770;
        while (!CIIndexSetHasIndexWithHint(*&v752[8 * v499], v703, v497))
        {
          ++v499;
          ++v497;
          if (v498 == v499)
          {
            v502 = v496;
            goto LABEL_563;
          }
        }

        v502 = *(v482 + 232) + v499;
LABEL_563:
        v45 = v765;
      }

      else
      {
        v502 = v496;
        v500 = v773;
        v501 = v770;
      }

      *(v501 + 2 * v697) = v502;
      LODWORD(v779) = 0;
      if (v739)
      {
        v507 = *(v739 + 4 * v702);
      }

      else
      {
        v507 = 0;
      }

      v508 = v772 - v507;
      v185 = v507 >= v772;
      v509 = v507 - v772;
      if (v509 == 0 || !v185)
      {
        v509 = v508;
      }

      v691 = v509;
      v510 = v736;
      if (v736)
      {
        v511 = v748 + 8 * v702;
        v512 = *v511;
        v510 = *(v511 + 4);
      }

      else
      {
        v512 = 0.0;
      }

      v690 = v510;
      if (v735)
      {
        v513 = *(v710 + 8 * (v502 >> 6));
        LOBYTE(v785) = 0;
        v786[0] = 0;
        v514 = 0.0;
        if ((v513 >> (v502 & 0x1F)))
        {
          if (!v500 || (*(v44 + 55) & 1) != 0)
          {
            v519 = 1;
          }

          else
          {
            v515 = **(v711 + 32 * (v502 & 0xDF & (v734 >> 31)));
            if (v515 && v515[2] > v737)
            {
              v516 = *v515;
              v517 = (v516 + 80);
              v158 = v516 == 0;
              v518 = &ZERO_RANKING_WRAPPED_BITS;
              if (!v158)
              {
                v518 = v517;
              }

              v514 = *(v518 + 16);
            }

            v519 = 1;
          }
        }

        else
        {
          v519 = 0;
        }
      }

      else
      {
        v519 = 0;
        LOBYTE(v785) = 0;
        v786[0] = 0;
        v514 = 0.0;
      }

      v520 = *(v45 + 8 * *(v44 + 64));
      v521 = v502 & 0xFFFFFFDF;
      v522 = *(v482 + 208);
      v810 = *(v482 + 192);
      v811 = v522;
      v812 = *(v482 + 224);
      v523 = *(v482 + 144);
      v806 = *(v482 + 128);
      v807 = v523;
      v524 = *(v482 + 160);
      v809 = *(v482 + 176);
      v808 = v524;
      v525 = *(v482 + 80);
      v802[4] = *(v482 + 64);
      v803 = v525;
      v526 = *(v482 + 96);
      v805 = *(v482 + 112);
      v804 = v526;
      v527 = *(v482 + 16);
      v802[0] = *v482;
      v802[1] = v527;
      v528 = *(v482 + 32);
      v802[3] = *(v482 + 48);
      v802[2] = v528;
      hybridScoringL1(v703, v802, v78, v519, v520, 1u, &v779, &v785, v514, v786);
      v530 = v529;
      v684 = v521;
      v685 = v519;
      if (v500)
      {
        if (v744)
        {
          goto LABEL_615;
        }

        if (v521 >= *(v500 + 4))
        {
          v660 = __si_assert_copy_extra_332();
          v658 = v660;
          v661 = "";
          if (v660)
          {
            v661 = v660;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexQuery.c", 4546, "!groupDone || (uint32_t)group<groupDone->groupCount", v661);
LABEL_751:
          free(v658);
          if (__valid_fs(-1))
          {
            v662 = 2989;
          }

          else
          {
            v662 = 3072;
          }

          *v662 = -559038737;
          abort();
        }
      }

      else if (v744)
      {
        goto LABEL_615;
      }

      if (!*v482 || (v531 = *(v482 + 24), v531 < 1))
      {
LABEL_615:
        v570 = 0;
        v567 = 0;
        v568 = 0;
        v569 = 0;
        goto LABEL_616;
      }

      v532 = *(v482 + 32);
      v533 = *(v482 + 40);
      v534 = 0;
      v535 = 0;
      v536 = 0;
      v537 = 0;
      v538 = v746;
      v539 = v747;
      do
      {
        v548 = v539;
        v547 = v538;
        v546 = v536;
        v545 = v535;
        v544 = v534;
        v543 = v537;
        v542 = v531--;
        v550 = *(v532 + 8 * v531);
        v549 = *(v533 + 8 * v531);
        if (v550)
        {
          v665 = *(v532 + 8 * v531);
          v666 = v549;
          v668 = v539;
          v669 = v538;
          v676 = v546;
          v677 = v545;
          v678 = v534;
          v679 = v537;
          v681 = v542;
          v571 = 0;
          v572 = 4 * v539 - 4 * v550;
          v573 = 8 * v539 - 8 * v550;
          v574 = &v759[v572];
          v575 = &v753[v573];
          v576 = v708 + v573;
          v577 = &v760[v572];
          v578 = &v754[v573];
          v579 = 0;
          v580 = 0;
          do
          {
            if (CIIndexSetHasIndexWithHint(*&v578[8 * v571], v703, v577) && ((++v580, *(*(v576 + 8 * v571) + 52) == 3) || (v582 = *&v575[8 * v571]) != 0 && CIIndexSetHasIndexWithHint(v582, v703, v574)))
            {
              v532 = (v579 + 1);
            }

            else
            {
              v532 = v579;
            }

            v581 = v580;
            ++v571;
            v574 += 4;
            v577 += 4;
            v579 = v532;
          }

          while (v571 < *(*(v771 + 32) + 8 * v531));
          v540 = *(*(v771 + 40) + 8 * v531);
          v533 = *(v771 + 40);
          v541 = *(v771 + 32);
          v44 = v777;
          v45 = v765;
          v542 = v681;
          v544 = v678;
          v543 = v679;
          v546 = v676;
          v545 = v677;
          v548 = v668;
          v547 = v669;
          v550 = v665;
          v549 = v666;
        }

        else
        {
          v540 = *(v533 + 8 * v531);
          v541 = v532;
          v581 = 0;
          LODWORD(v532) = 0;
        }

        v551 = 0;
        v552 = v581;
        v553 = v532;
        v532 = v541;
        v539 = v548 - v550;
        v554 = v547 - v549;
        if (v553 >= 1 << v540)
        {
          v553 = (1 << v540) - 1;
        }

        v555 = v553 >> 63 << v554;
        v556 = v553 << v554;
        if (v552 >= 1 << v540)
        {
          v552 = (1 << v540) - 1;
        }

        v557 = (v554 & 0x40) == 0;
        v558 = v552;
        v559 = v552 >> 63 << v554;
        v560 = v552 << v554;
        v538 = v554;
        v561 = ~v554;
        v562 = v555 | (v553 >> 1 >> v561);
        if (v557)
        {
          v563 = v556;
        }

        else
        {
          v562 = v556;
          v563 = 0;
        }

        v564 = v562 | v546;
        v565 = v563 | v545;
        v566 = v559 | (v558 >> 1 >> v561);
        if (v557)
        {
          v551 = v560;
        }

        else
        {
          v566 = v560;
        }

        v534 = v566 | v544;
        v537 = v551 | v543;
        v567 = v537;
        v568 = v534;
        v569 = v565;
        v535 = v565;
        v570 = v564;
        v536 = v564;
      }

      while (v542 > 1);
LABEL_616:
      if (isDebugVerboseMode_onceToken != -1)
      {
        dispatch_once(&isDebugVerboseMode_onceToken, &__block_literal_global_2688);
      }

      v583 = v684;
      if (isDebugVerboseMode_debugEnabled == 1)
      {
        v648 = *__error();
        v649 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v649, OS_LOG_TYPE_DEFAULT))
        {
          v650 = *(v741 + 8 * v702);
          *&v802[0] = __PAIR64__(v583, v706);
          WORD4(v802[0]) = 2048;
          *(v802 + 10) = v650;
          WORD1(v802[1]) = 1024;
          DWORD1(v802[1]) = v691;
          WORD4(v802[1]) = 2048;
          *(&v802[1] + 10) = v530;
          WORD1(v802[2]) = 2048;
          *(&v802[2] + 4) = *&v779;
          WORD6(v802[2]) = 2048;
          *(&v802[2] + 14) = v512;
          WORD3(v802[3]) = 1024;
          DWORD2(v802[3]) = v690;
          WORD6(v802[3]) = 1024;
          *(&v802[3] + 14) = 1;
          _os_log_impl(&dword_1C278D000, v649, OS_LOG_TYPE_DEFAULT, "[ContentIndexQuery](group: %d, oid: %llu, date: %u, hybridScoreL1: %f, sparseScoreL1:%f, pscore: %f, containerId: %u, collecting_1: %d)", v802, 0x42u);
        }

        *__error() = v648;
        v44 = v777;
        v45 = v765;
      }

      v584 = v702;
      v585 = *(v741 + 8 * v702);
      if (v743 && SIUINT32SetContainsValue(v743, HIDWORD(v585)))
      {
        v586 = v697;
        *(v767 + 8 * v697) = 0;
        *(v768 + 8 * v586) = v764 + v584;
      }

      else
      {
        v588 = v697;
        *(v767 + 8 * v697) = v585;
        *(v768 + 8 * v588) = v764 + v584;
        if (v585)
        {
          v589 = v697;
          if (*v771)
          {
            v590 = v779;
            v591 = LOBYTE(v785);
            v592 = *v771 + v697 * v704;
            *v592 = v567;
            *(v592 + 8) = v568;
            *(v592 + 16) = v567;
            *(v592 + 24) = v568;
            *(v592 + 32) = v569;
            *(v592 + 40) = v570;
            *(v592 + 48) = v691;
            *(v592 + 52) = v512;
            *(v592 + 56) = v690;
            *(v592 + 60) = v530;
            *(v592 + 64) = v590;
            *(v592 + 68) = v591;
            *(v592 + 69) = v685;
          }

          v482 = v771;
          v593 = *(v771 + 56);
          v594 = 5 * v589;
          v595 = v712;
          if (v593)
          {
            *(*(v482 + 8) + 5 * v589) = countInUpdates(v593, v584);
          }

          v596 = *(v482 + 64);
          v77 = v774;
          v78 = v761;
          if (v596)
          {
            *(*(v482 + 8) + v594 + 1) = countInUpdates(v596, v584);
          }

          v597 = *(v482 + 72);
          if (v597)
          {
            *(*(v482 + 8) + v594 + 2) = countInUpdates(v597, v584);
          }

          v598 = *(v482 + 80);
          if (v598)
          {
            *(*(v482 + 8) + v594 + 3) = countInUpdates(v598, v584);
          }

          v599 = *(v482 + 88);
          if (v599)
          {
            *(*(v482 + 8) + v594 + 4) = countInUpdates(v599, v584);
          }

          if (!*(v482 + 120) || !*(v482 + 168))
          {
            goto LABEL_653;
          }

          v600 = 0;
          v601 = 0.0;
          v602 = *(v482 + 168);
          v603 = *(v482 + 120);
          v604 = 0;
          v605 = 3.4028e38;
LABEL_640:
          v606 = *(v602 + 8 * v600);
          if (v606)
          {
            LOBYTE(v783) = v595;
            LODWORD(v802[0]) = v595;
            MinDistance = distanceHolderGetMinDistance(v606, *(v78 + 80) + v584, &v783, v802);
            v608 = LODWORD(v802[0]);
            if (v604)
            {
              LODWORD(v609) = v604;
            }

            else
            {
              LODWORD(v609) = 1;
            }

            if ((v783 & (MinDistance < v605)) != 0)
            {
              v609 = v609;
            }

            else
            {
              v608 = v601;
              v609 = v604;
            }

            v610 = *(v482 + 120);
            if ((v783 & (MinDistance < v605)) == 0)
            {
              MinDistance = v605;
            }

            goto LABEL_650;
          }

          while (1)
          {
            v610 = v603;
            v608 = v601;
            MinDistance = v605;
            v609 = v604;
LABEL_650:
            v603 = v610;
            if (v600 + 1 >= v610)
            {
              break;
            }

            ++v600;
            v602 = *(v482 + 168);
            v604 = v609;
            v605 = MinDistance;
            v601 = v608;
            if (v602)
            {
              goto LABEL_640;
            }
          }

          v45 = v765;
          if (v609)
          {
            v611 = v608;
            v612 = 1;
          }

          else
          {
LABEL_653:
            MinDistance = 3.4028e38;
            v612 = 0;
            v611 = 0;
          }

          v613 = v697;
          v614 = *(v482 + 16) + v697 * v705;
          *(v614 + 4) = MinDistance;
          *(v614 + 16) = v611;
          *v614 = v612;
          if (*(v482 + 128))
          {
            v615 = *(v482 + 176);
            if (v615)
            {
              v616 = 0;
              v617 = 0.0;
              v618 = *(v482 + 176);
              v619 = *(v482 + 128);
              v620 = 0;
              v621 = 3.4028e38;
LABEL_658:
              v622 = *(v618 + 8 * v616);
              if (v622)
              {
                LOBYTE(v783) = v595;
                LODWORD(v802[0]) = v595;
                v623 = distanceHolderGetMinDistance(v622, *(v78 + 80) + v584, &v783, v802);
                v624 = LODWORD(v802[0]);
                if (v620)
                {
                  LODWORD(v625) = v620;
                }

                else
                {
                  LODWORD(v625) = 1;
                }

                if ((v783 & (v623 < v621)) != 0)
                {
                  v625 = v625;
                }

                else
                {
                  v624 = v617;
                  v625 = v620;
                }

                v626 = *(v482 + 128);
                if ((v783 & (v623 < v621)) == 0)
                {
                  v623 = v621;
                }

                goto LABEL_668;
              }

              while (1)
              {
                v626 = v619;
                v624 = v617;
                v623 = v621;
                v625 = v620;
LABEL_668:
                v619 = v626;
                if (v616 + 1 >= v626)
                {
                  break;
                }

                ++v616;
                v618 = *(v482 + 176);
                v620 = v625;
                v621 = v623;
                v617 = v624;
                if (v618)
                {
                  goto LABEL_658;
                }
              }

              v627 = v624;
              if (v625)
              {
                LOBYTE(v615) = 1;
              }

              else
              {
                v623 = 3.4028e38;
                v627 = v595;
                LOBYTE(v615) = v595;
              }

              v45 = v765;
              v613 = v697;
LABEL_676:
              v628 = *(v482 + 16) + 28 * v613;
              *(v628 + 8) = v623;
              *(v628 + 20) = v627;
              *(v628 + 1) = v615;
              if (*(v482 + 136))
              {
                v629 = *(v482 + 184);
                if (v629)
                {
                  v630 = 0;
                  v631 = 0.0;
                  v632 = *(v482 + 184);
                  v633 = *(v482 + 136);
                  v634 = 0;
                  v635 = 3.4028e38;
LABEL_680:
                  v636 = *(v632 + 8 * v630);
                  if (v636)
                  {
                    LOBYTE(v783) = v595;
                    LODWORD(v802[0]) = v595;
                    v637 = distanceHolderGetMinDistance(v636, *(v78 + 80) + v584, &v783, v802);
                    v638 = LODWORD(v802[0]);
                    if (v634)
                    {
                      LODWORD(v639) = v634;
                    }

                    else
                    {
                      LODWORD(v639) = 1;
                    }

                    if ((v783 & (v637 < v635)) != 0)
                    {
                      v639 = v639;
                    }

                    else
                    {
                      v638 = v631;
                      v639 = v634;
                    }

                    v640 = *(v482 + 136);
                    if ((v783 & (v637 < v635)) == 0)
                    {
                      v637 = v635;
                    }

                    goto LABEL_690;
                  }

                  while (1)
                  {
                    v640 = v633;
                    v638 = v631;
                    v637 = v635;
                    v639 = v634;
LABEL_690:
                    v633 = v640;
                    if (v630 + 1 >= v640)
                    {
                      break;
                    }

                    ++v630;
                    v632 = *(v482 + 184);
                    v634 = v639;
                    v635 = v637;
                    v631 = v638;
                    if (v632)
                    {
                      goto LABEL_680;
                    }
                  }

                  v641 = v638;
                  if (v639)
                  {
                    LOBYTE(v629) = 1;
                  }

                  else
                  {
                    v637 = 3.4028e38;
                    v641 = v595;
                    LOBYTE(v629) = v595;
                  }

                  v45 = v765;
                  v613 = v697;
                  goto LABEL_698;
                }

                v637 = 3.4028e38;
              }

              else
              {
                v637 = 3.4028e38;
                LOBYTE(v629) = 0;
              }

              v641 = 0;
LABEL_698:
              v642 = *(v482 + 16) + 28 * v613;
              *(v642 + 12) = v637;
              *(v642 + 24) = v641;
              *(v642 + 2) = v629;
              if (((1 << v583) & v698) != 0)
              {
                v643 = v696;
              }

              else
              {
                v643 = v696 + 1;
              }

              if (((1 << v583) & v698) != 0)
              {
                v644 = 0;
              }

              else
              {
                v644 = 1 << v583;
              }

              v645 = v769;
              v495 = v702;
              if (v769)
              {
                *(v769 + v613) = v763;
                if (v709)
                {
                  HasIndex = CIIndexSetHasIndex(v751, v703);
                  v645 = v769;
                  if (HasIndex)
                  {
                    *(v769 + v697) = 1;
                  }
                }

                v613 = v697;
                if (v766 && *(v645 + v697))
                {
                  *v766 = 1;
                }
              }

              v587 = v643;
              v506 = v644 | v698;
              v97 = v613 + 1;
              if (v613 + 1 > v742 && v643 < v738)
              {
                v95 = 1;
                v483 = v703;
                v484 = v714;
                goto LABEL_729;
              }

              v586 = v613 + 1;
              goto LABEL_714;
            }

            v623 = 3.4028e38;
          }

          else
          {
            v623 = 3.4028e38;
            LOBYTE(v615) = 0;
          }

          v627 = 0;
          goto LABEL_676;
        }

        v586 = v697;
      }

      v587 = v696;
      v506 = v698;
      v77 = v774;
      v482 = v771;
      v78 = v761;
      v495 = v702;
LABEL_714:
      v647 = v587;
      v504 = v586;
      v505 = v647;
LABEL_715:
      v488 = v506;
      v97 = v504;
      v486 = 0;
      if (*(v44 + 44) < v703)
      {
        v491 = v505;
        v487 = v495;
        v73 = v504;
        if (v504 < v733)
        {
          continue;
        }
      }

      v483 = v703;
      v484 = v714;
      goto LABEL_728;
    }
  }

  *(&v154 + 1) = 0;
  memset(v786, 0, 32);
  v155 = (*(v44 + 40) - 1);
  v156 = v771;
  if ((*(v44 + 56) & 1) == 0)
  {
    initializeEnumberatorForRangeLocked(v786, v713, *(v44 + 44), *(v44 + 40) - 1);
    v153 = v758;
  }

  if (v694 >= v733)
  {
    v485 = 0;
    v164 = v714;
    goto LABEL_726;
  }

  v157 = a17;
  if (!v737)
  {
    v157 = 1;
  }

  v730 = v157;
  v728 = v156 + 192;
  v729 = v773 + 40;
  v158 = v695 != 1 || v751 == 0;
  v159 = !v158;
  v727 = v159;
  v726 = v44 + 88;
  v731 = 0.0;
  v160 = 0;
  *&v154 = 67110400;
  v725 = v154;
  *&v154 = 67110912;
  *&v151 = 67110912;
  v723 = v154;
  v724 = v151;
  v722 = 28;
  v721 = 80;
  v161 = 0;
  v162 = v714;
  v148 = v155;
  while (1)
  {
    v707 = v162;
    v717 = v73;
    v168 = v161;
    v718 = v160;
    if (*(v44 + 56) == 1)
    {
      v169 = (v148 - 1);
    }

    else
    {
      v170 = _CIIndexSetEnumeratorNext(v786);
      v153 = v758;
      v171 = v170;
      v169 = v148;
      LODWORD(v148) = v171;
    }

    v720 = v148;
    if (!v148)
    {
      v485 = 0;
      v164 = v707;
      v73 = v717;
      goto LABEL_726;
    }

    v172 = v169;
    if (v749)
    {
      v173 = *(v740 + v720);
      if (*(v740 + v720))
      {
        goto LABEL_144;
      }

LABEL_154:
      v163 = v168;
      v164 = v707;
      v165 = v717;
      goto LABEL_136;
    }

    v181 = *(v740 + 4 * (v720 / 5uLL)) >> (6 * (v720 % 5));
    if ((v181 & 0x3F) != 0 && ((v745 & 1) == 0 || ((*(v740 + 4 * (v720 / 5uLL)) >> (6 * (v720 % 5))) & 0x1F) != 0x11))
    {
      break;
    }

    v163 = v168;
    v164 = v707;
    v165 = v717;
LABEL_136:
    v166 = v718;
LABEL_137:
    v161 = v163;
    v167 = v165;
    v160 = v166;
    v73 = v167;
    v162 = v164;
    v148 = v172;
    if (v167 >= v733)
    {
      v485 = 0;
      LODWORD(v148) = v720;
      v73 = v167;
      goto LABEL_726;
    }
  }

  if ((v745 & 2) != 0)
  {
    v173 = (*(v740 + 4 * (v720 / 5uLL)) >> (6 * (v720 % 5))) & 0x3F;
    if ((v181 & 0x20) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_154;
  }

  v173 = (*(v740 + 4 * (v720 / 5uLL)) >> (6 * (v720 % 5))) & 0x3F;
LABEL_144:
  v716 = v168;
  v174 = *(v156 + 228);
  v719 = v169;
  if (v174)
  {
    v175 = v153;
    v176 = 0;
    v177 = v773;
    v178 = v770;
    v179 = v752;
    while (!CIIndexSetHasIndexWithHint(*&v179[8 * v176], v720, v175))
    {
      ++v176;
      ++v175;
      if (v174 == v176)
      {
        v180 = v173;
        goto LABEL_157;
      }
    }

    v180 = *(v156 + 232) + v176;
LABEL_157:
    v45 = v765;
  }

  else
  {
    v180 = v173;
    v177 = v773;
    v178 = v770;
  }

  v182 = v759;
  v183 = v739;
  if (v739)
  {
    v183 = *(v739 + 4 * v720);
  }

  v184 = v772 - v183;
  v185 = v183 >= v772;
  v186 = v183 - v772;
  if (v186 == 0 || !v185)
  {
    v186 = v184;
  }

  v701 = v186;
  v187 = v736;
  if (v736)
  {
    v188 = v748 + 8 * v720;
    v189 = *v188;
    v187 = *(v188 + 4);
  }

  else
  {
    v189 = 0.0;
  }

  v699 = v187;
  if (v178)
  {
    *(v178 + 2 * v717) = v180;
    v190 = v180 & 0xFFFFFFDF;
  }

  else
  {
    v190 = 0;
  }

  v191 = v190;
  v192 = v190 & (v734 >> 31);
  v193 = v192;
  if (v177)
  {
    if (*(v177 + 4) <= v192)
    {
      v193 = 0;
    }

    if (v730)
    {
      v194 = 1;
    }

    else
    {
      v195 = *(v729 + 32 * v193);
      v196 = v195[2];
      if (v196)
      {
        v196 = *(v196 + 16) - 1;
      }

      v197 = v195[1];
      if (v197)
      {
        v197 = *(v197 + 16) - 1;
      }

      v198 = *v195;
      if (v198)
      {
        v198 = *(v198 + 16) - 1;
      }

      v194 = v197 + v196 + v198 < v737;
    }
  }

  else
  {
    v194 = 1;
  }

  if (isDebugVerboseMode_onceToken != -1)
  {
    dispatch_once(&isDebugVerboseMode_onceToken, &__block_literal_global_2688);
  }

  if (isDebugVerboseMode_debugEnabled == 1)
  {
    v467 = *__error();
    v468 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v468, OS_LOG_TYPE_DEFAULT))
    {
      v469 = *(v741 + 8 * v720);
      *&v802[0] = __PAIR64__(v191, v725);
      WORD4(v802[0]) = 2048;
      *(v802 + 10) = v469;
      WORD1(v802[1]) = 1024;
      DWORD1(v802[1]) = v701;
      WORD4(v802[1]) = 2048;
      *(&v802[1] + 10) = v189;
      WORD1(v802[2]) = 1024;
      DWORD1(v802[2]) = v699;
      WORD4(v802[2]) = 1024;
      *(&v802[2] + 10) = v194;
      _os_log_impl(&dword_1C278D000, v468, OS_LOG_TYPE_DEFAULT, "[ContentIndexQuery](group: %d, oid: %llu, date: %u, pscore: %f, containerId: %u, collecting_2: %d)", v802, 0x2Eu);
    }

    *__error() = v467;
    v44 = v777;
    v177 = v773;
    v156 = v771;
    v45 = v765;
    v182 = v759;
  }

  v700 = v191;
  if (!v744)
  {
    v785 = v731;
    v784 = LOBYTE(v731);
    if (v735)
    {
      v207 = *(v728 + 8 * (v191 >> 6));
      v783 = 0;
      v208 = 0.0;
      if ((v207 >> (v191 & 0x1F)))
      {
        v209 = 1;
        if (v177 && (*(v44 + 55) & 1) == 0)
        {
          v210 = **(v729 + 32 * v193);
          if (v210 && v210[2] > v737)
          {
            v211 = *v210;
            v212 = (v211 + 80);
            v158 = v211 == 0;
            v213 = &ZERO_RANKING_WRAPPED_BITS;
            if (!v158)
            {
              v213 = v212;
            }

            v208 = *(v213 + 16);
          }

          v209 = 1;
        }
      }

      else
      {
        v209 = 0;
      }
    }

    else
    {
      v209 = 0;
      v783 = 0;
      v208 = 0.0;
    }

    v250 = *(v45 + 8 * *(v44 + 64));
    v251 = *(v156 + 208);
    v810 = *(v156 + 192);
    v811 = v251;
    v812 = *(v156 + 224);
    v252 = *(v156 + 144);
    v806 = *(v156 + 128);
    v807 = v252;
    v253 = *(v156 + 160);
    v809 = *(v156 + 176);
    v808 = v253;
    v254 = *(v156 + 80);
    v802[4] = *(v156 + 64);
    v803 = v254;
    v255 = *(v156 + 96);
    v805 = *(v156 + 112);
    v804 = v255;
    v256 = *(v156 + 16);
    v802[0] = *v156;
    v802[1] = v256;
    v257 = *(v156 + 32);
    v802[3] = *(v156 + 48);
    v802[2] = v257;
    v692 = v209;
    hybridScoringL1(v720, v802, v761, v209, v250, 0, &v785, &v784, v208, &v783);
    v259 = v258;
    if (v177)
    {
      v260 = *(v729 + 32 * v193);
      if (v783 == 3)
      {
        v261 = (v260 + 16);
      }

      else
      {
        v261 = *(v729 + 32 * v193);
        if (v783 == 2)
        {
          v261 = (v260 + 8);
        }
      }

      v262 = *v261;
    }

    else
    {
      v262 = 0;
    }

    if (v194)
    {
      if (!*v156)
      {
        v273 = 1;
        v270 = 0;
        v274 = 0;
        v275 = 0;
        v272 = 0;
        v276 = v717;
        goto LABEL_361;
      }

      v781 = 0u;
      v782 = 0u;
      v779 = 0u;
      v780 = 0u;
      v263 = 1;
      v264 = 0;
      v265 = 0;
    }

    else
    {
      v266 = *v262;
      if (v266)
      {
        v267 = (v266 + 80);
      }

      else
      {
        v267 = &ZERO_RANKING_WRAPPED_BITS;
      }

      v268 = v267[3];
      v802[2] = v267[2];
      v802[3] = v268;
      v802[4] = v267[4];
      v269 = *v267;
      v802[1] = v267[1];
      v802[0] = v269;
      v270 = 0;
      v271 = ci_lt_l1_score(v802, 0, 0, v701, v258, v189);
      if (!*v156 && v271)
      {
        v272 = 0;
        v273 = 1;
        v274 = 0;
        v275 = 0;
        v276 = v717;
        goto LABEL_361;
      }

      v781 = 0u;
      v782 = 0u;
      v779 = 0u;
      v780 = 0u;
      if (v271)
      {
        v263 = 1;
        v264 = 0;
        v265 = 0;
      }

      else
      {
        v313 = v267[2];
        v779 = v267[1];
        v780 = v313;
        v314 = v267[4];
        v265 = *v267;
        v264 = *(v267 + 1);
        v781 = v267[3];
        v782 = v314;
        v263 = 0;
      }

      v182 = v759;
    }

    *&v683 = v265;
    *(&v683 + 1) = v264;
    v682 = v263;
    v315 = *(v156 + 24);
    if (v315 < 1)
    {
      v358 = 0;
      v362 = 0;
      v361 = 0;
      v357 = 0;
LABEL_357:
      v367 = v361;
      if (v682)
      {
        v368 = 1;
        v369 = v362;
        v370 = v357;
        v270 = v358;
LABEL_360:
        v276 = v717;
        v273 = v368;
        v272 = v370;
        v274 = v369;
        v275 = v367;
LABEL_361:
        v373 = v273;
        if (dword_1EBF46AD0 >= 5)
        {
          v473 = v273;
          v474 = *__error();
          v475 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v475, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v802[0]) = 136316162;
            v476 = "dropping";
            if (v473)
            {
              v476 = "collecting";
            }

            *(v802 + 4) = v476;
            WORD6(v802[0]) = 1024;
            *(v802 + 14) = v700;
            WORD1(v802[1]) = 2048;
            *(&v802[1] + 4) = v270;
            WORD6(v802[1]) = 2048;
            *(&v802[1] + 14) = v272;
            WORD3(v802[2]) = 1024;
            DWORD2(v802[2]) = v701;
            _os_log_impl(&dword_1C278D000, v475, OS_LOG_TYPE_DEFAULT, "%s %d %llx%016llx %d", v802, 0x2Cu);
          }

          *__error() = v474;
          v44 = v777;
          v45 = v765;
          v276 = v717;
          v373 = v473;
        }

        if (isDebugVerboseMode_onceToken != -1)
        {
          v477 = v373;
          dispatch_once(&isDebugVerboseMode_onceToken, &__block_literal_global_2688);
          v373 = v477;
        }

        if (isDebugVerboseMode_debugEnabled == 1)
        {
          v478 = v373;
          v479 = *__error();
          v480 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v480, OS_LOG_TYPE_DEFAULT))
          {
            v481 = *(v741 + 8 * v720);
            *&v802[0] = __PAIR64__(v700, v724);
            WORD4(v802[0]) = 2048;
            *(v802 + 10) = v481;
            WORD1(v802[1]) = 1024;
            DWORD1(v802[1]) = v701;
            WORD4(v802[1]) = 2048;
            *(&v802[1] + 10) = v259;
            WORD1(v802[2]) = 2048;
            *(&v802[2] + 4) = v785;
            WORD6(v802[2]) = 2048;
            *(&v802[2] + 14) = v189;
            WORD3(v802[3]) = 1024;
            DWORD2(v802[3]) = v699;
            WORD6(v802[3]) = 1024;
            *(&v802[3] + 14) = v478;
            _os_log_impl(&dword_1C278D000, v480, OS_LOG_TYPE_DEFAULT, "[ContentIndexQuery](group: %d, oid: %llu, date: %u, hybridScoreL1: %f, sparseScoreL1:%f, pscore: %f, containerId: %u, collecting_4: %d)", v802, 0x42u);
          }

          *__error() = v479;
          v44 = v777;
          v45 = v765;
          v276 = v717;
          v373 = v478;
        }

        v374 = v373 ^ 1;
        v164 = v707 + (v373 ^ 1u);
        if ((v732 & 8) != 0)
        {
          v374 = 0;
        }

        if (v374)
        {
          v236 = v276;
          goto LABEL_372;
        }

        v693 = v373;
        v375 = v720;
        v376 = *(v741 + 8 * v720);
        if (v743 && SIUINT32SetContainsValue(v743, HIDWORD(v376)))
        {
          v236 = v717;
          *(v767 + 8 * v717) = 0;
          *(v768 + 8 * v236) = v764 + v375;
LABEL_372:
          v237 = v716;
          v238 = v718;
          v77 = v774;
          v156 = v771;
          v78 = v761;
          goto LABEL_512;
        }

        v377 = v717;
        *(v767 + 8 * v717) = v376;
        *(v768 + 8 * v377) = v764 + v375;
        if (!v376)
        {
          v236 = v717;
          goto LABEL_372;
        }

        v378 = v717;
        if (*v771)
        {
          v379 = v785;
          v380 = *v771 + 80 * v717;
          v381 = v784;
          *v380 = v272;
          *(v380 + 8) = v270;
          *(v380 + 16) = v272;
          *(v380 + 24) = v270;
          *(v380 + 32) = v274;
          *(v380 + 40) = v275;
          *(v380 + 48) = v701;
          *(v380 + 52) = v189;
          *(v380 + 56) = v699;
          *(v380 + 60) = v259;
          *(v380 + 64) = v379;
          *(v380 + 68) = v381;
          *(v380 + 69) = v692;
        }

        v382 = 0;
        if (((1 << v700) & v718) != 0)
        {
          v383 = 0;
        }

        else
        {
          v383 = 1 << v700;
        }

        v688 = v383;
        v689 = ((1 << v700) & v718) == 0;
        v156 = v771;
        v384 = *(v771 + 56);
        if (v384)
        {
          v382 = countInUpdates(v384, v375);
        }

        v77 = v774;
        v78 = v761;
        v385 = 5 * v378;
        *(*(v156 + 8) + v385) = v382;
        v386 = *(v156 + 64);
        if (v386)
        {
          v387 = countInUpdates(v386, v375);
        }

        else
        {
          v387 = 0;
        }

        *(*(v156 + 8) + v385 + 1) = v387;
        v388 = *(v156 + 72);
        if (v388)
        {
          v389 = countInUpdates(v388, v375);
        }

        else
        {
          v389 = 0;
        }

        *(*(v156 + 8) + v385 + 2) = v389;
        v390 = *(v156 + 80);
        if (v390)
        {
          v391 = countInUpdates(v390, v375);
        }

        else
        {
          v391 = 0;
        }

        *(*(v156 + 8) + v385 + 3) = v391;
        v392 = *(v156 + 88);
        if (v392)
        {
          v393 = countInUpdates(v392, v375);
        }

        else
        {
          v393 = 0;
        }

        *(*(v156 + 8) + v385 + 4) = v393;
        if (*(v156 + 120) && *(v156 + 168))
        {
          v394 = 0;
          v395 = *(v156 + 168);
          v396 = *(v156 + 120);
          v397 = 0;
          v398 = 0;
          v399 = 3.4028e38;
LABEL_397:
          v400 = *(v395 + 8 * v394);
          if (v400)
          {
            LOBYTE(v779) = LOBYTE(v731);
            *v802 = v731;
            v401 = distanceHolderGetMinDistance(v400, *(v78 + 80) + v375, &v779, v802);
            if (v397)
            {
              v402 = v397;
            }

            else
            {
              v402 = 1;
            }

            if ((v779 & (v401 < v399)) != 0)
            {
              v403 = v402;
            }

            else
            {
              v403 = v397;
            }

            if ((v779 & (v401 < v399)) != 0)
            {
              v404 = LODWORD(v802[0]);
            }

            else
            {
              v401 = v399;
              v404 = v398;
            }

            v405 = *(v156 + 120);
            v406 = v403;
            v407 = v404;
            goto LABEL_409;
          }

          while (1)
          {
            v405 = v396;
            v406 = v397;
            v401 = v399;
            v407 = v398;
LABEL_409:
            v396 = v405;
            if (v394 + 1 >= v405)
            {
              break;
            }

            ++v394;
            v395 = *(v156 + 168);
            v398 = v407;
            v399 = v401;
            v397 = v406;
            if (v395)
            {
              goto LABEL_397;
            }
          }

          if (v406)
          {
            v408 = 1;
            v45 = v765;
            v298 = v717;
            goto LABEL_454;
          }

          v45 = v765;
        }

        else
        {
          LODWORD(v407) = 0;
        }

        v298 = v717;
        v401 = 3.4028e38;
        v408 = 0;
LABEL_454:
        v429 = v407;
        v430 = *(v156 + 16);
        v431 = v430 + 28 * v298;
        *(v431 + 4) = v401;
        *(v431 + 16) = v429;
        *v431 = v408;
        if (*(v156 + 128))
        {
          v432 = *(v156 + 176);
          if (v432)
          {
            v433 = 0;
            v434 = *(v156 + 176);
            v435 = *(v156 + 128);
            v436 = 0;
            v437 = 0;
            v438 = 3.4028e38;
LABEL_458:
            v439 = *(v434 + 8 * v433);
            if (v439)
            {
              LOBYTE(v779) = LOBYTE(v731);
              *v802 = v731;
              v440 = distanceHolderGetMinDistance(v439, *(v78 + 80) + v375, &v779, v802);
              if (v436)
              {
                v441 = v436;
              }

              else
              {
                v441 = 1;
              }

              if ((v779 & (v440 < v438)) != 0)
              {
                v442 = v441;
              }

              else
              {
                v442 = v436;
              }

              if ((v779 & (v440 < v438)) != 0)
              {
                v443 = LODWORD(v802[0]);
              }

              else
              {
                v440 = v438;
                v443 = v437;
              }

              v444 = *(v156 + 128);
              v432 = v442;
              v445 = v443;
              goto LABEL_470;
            }

            while (1)
            {
              v444 = v435;
              v432 = v436;
              v440 = v438;
              v445 = v437;
LABEL_470:
              v435 = v444;
              if (v433 + 1 >= v444)
              {
                break;
              }

              ++v433;
              v434 = *(v156 + 176);
              v437 = v445;
              v438 = v440;
              v436 = v432;
              if (v434)
              {
                goto LABEL_458;
              }
            }

            v158 = (v432 & 1) == 0;
            LOBYTE(v432) = v432 & 1;
            v446 = *(v156 + 16);
            if (v158)
            {
              v440 = 3.4028e38;
            }

            v45 = v765;
            v298 = v717;
            goto LABEL_478;
          }

          v440 = 3.4028e38;
          v446 = v430;
        }

        else
        {
          v440 = 3.4028e38;
          v446 = v430;
          LOBYTE(v432) = 0;
        }

        LODWORD(v445) = 0;
LABEL_478:
        v447 = v446 + 28 * v298;
        *(v447 + 8) = v440;
        *(v447 + 20) = v445;
        *(v447 + 1) = v432;
        if (*(v156 + 136) && *(v156 + 184))
        {
          v448 = 0;
          v449 = *(v156 + 184);
          v450 = *(v156 + 136);
          v451 = 0;
          v452 = 0;
          v453 = 3.4028e38;
LABEL_482:
          v454 = *(v449 + 8 * v448);
          if (v454)
          {
            LOBYTE(v779) = LOBYTE(v731);
            *v802 = v731;
            v455 = distanceHolderGetMinDistance(v454, *(v78 + 80) + v375, &v779, v802);
            if (v451)
            {
              v456 = v451;
            }

            else
            {
              v456 = 1;
            }

            if ((v779 & (v455 < v453)) != 0)
            {
              v457 = v456;
            }

            else
            {
              v457 = v451;
            }

            if ((v779 & (v455 < v453)) != 0)
            {
              v458 = LODWORD(v802[0]);
            }

            else
            {
              v455 = v453;
              v458 = v452;
            }

            v459 = *(v156 + 136);
            v460 = v457;
            v461 = v458;
            goto LABEL_494;
          }

          while (1)
          {
            v459 = v450;
            v460 = v451;
            v455 = v453;
            v461 = v452;
LABEL_494:
            v450 = v459;
            if (v448 + 1 >= v459)
            {
              break;
            }

            ++v448;
            v449 = *(v156 + 184);
            v452 = v461;
            v453 = v455;
            v451 = v460;
            if (v449)
            {
              goto LABEL_482;
            }
          }

          v158 = (v460 & 1) == 0;
          v462 = v460 & 1;
          v446 = *(v156 + 16);
          if (v158)
          {
            v455 = 3.4028e38;
          }

          v45 = v765;
          v298 = v717;
        }

        else
        {
          LODWORD(v461) = 0;
          v455 = 3.4028e38;
          v462 = 0;
        }

        v463 = v446 + 28 * v298;
        *(v463 + 12) = v455;
        *(v463 + 24) = v461;
        *(v463 + 2) = v462;
        v464 = v769;
        if (v769)
        {
          *(v769 + v298) = v763;
          if (v727)
          {
            v465 = CIIndexSetHasIndex(v751, v720);
            v464 = v769;
            if (v465)
            {
              *(v769 + v298) = 1;
            }
          }

          if (v766 && *(v464 + v298))
          {
            *v766 = 1;
          }

          if ((v693 & 1) == 0)
          {
            *(v464 + v298) |= 2u;
          }
        }

        v426 = v716;
        v428 = v688;
        v427 = v689;
        goto LABEL_510;
      }
    }

    else
    {
      v316 = *(v156 + 32);
      v317 = *(v156 + 40);
      v318 = 0;
      v319 = v747;
      v320 = v746;
      v321 = 0;
      v322 = 0;
      v323 = 0;
      v324 = v754;
      while (1)
      {
        v325 = v323;
        v326 = v322;
        v327 = v321;
        v328 = v318;
        v329 = v319;
        v330 = v315--;
        v331 = *(v316 + 8 * v315);
        v332 = *(v317 + 8 * v315);
        if (v331)
        {
          v664 = *(v317 + 8 * v315);
          v667 = v320;
          v670 = v323;
          v671 = v322;
          v672 = v321;
          v673 = v318;
          v680 = v330;
          v333 = 0;
          v334 = 4 * v329 - 4 * v331;
          v674 = v331;
          v675 = v329;
          v335 = 8 * v329 - 8 * v331;
          v336 = &v182[v334];
          v337 = &v753[v335];
          v338 = v726 + v335;
          v339 = &v760[v334];
          v340 = &v324[v335];
          v341 = 0;
          v342 = 0;
          do
          {
            if (CIIndexSetHasIndexWithHint(*&v340[8 * v333], v720, v339) && ((v342 = (v342 + 1), *(*(v338 + 8 * v333) + 52) == 3) || (v345 = *&v337[8 * v333]) != 0 && CIIndexSetHasIndexWithHint(v345, v720, v336)))
            {
              v344 = (v341 + 1);
              v343 = v342;
            }

            else
            {
              v343 = v342;
              v344 = v341;
            }

            ++v333;
            v336 += 4;
            v339 += 4;
            v341 = v344;
            v342 = v343;
          }

          while (v333 < *(*(v771 + 32) + 8 * v315));
          v346 = *(*(v771 + 40) + 8 * v315);
          v317 = *(v771 + 40);
          v316 = *(v771 + 32);
          v44 = v777;
          v45 = v765;
          v182 = v759;
          v324 = v754;
          v330 = v680;
          v331 = v674;
          v329 = v675;
          v327 = v672;
          v328 = v673;
          v325 = v670;
          v326 = v671;
          v320 = v667;
          v332 = v664;
        }

        else
        {
          v346 = *(v317 + 8 * v315);
          LODWORD(v343) = 0;
          LODWORD(v344) = 0;
        }

        v347 = 0;
        v348 = v320 - v332;
        v320 = v348;
        v349 = v343 >= 1 << v346 ? (1 << v346) - 1 : v343;
        v350 = (v349 >> 63 << v348) | (v349 >> 1 >> ~v348);
        v351 = v349 << v348;
        v352 = v344 >= 1 << v346 ? (1 << v346) - 1 : v344;
        v353 = (v348 & 0x40) != 0 ? v351 : v350;
        v354 = (v348 & 0x40) != 0 ? 0 : v351;
        v355 = v353 | v325;
        v356 = v354 | v326;
        v357 = v354 | v326;
        v358 = v353 | v325;
        v359 = (v352 >> 63 << v348) | (v352 >> 1 >> ~v348);
        v360 = v352 << v348;
        if ((v348 & 0x40) != 0)
        {
          v359 = v360;
        }

        else
        {
          v347 = v360;
        }

        v361 = v359 | v327;
        v362 = v347 | v328;
        if ((v682 & 1) == 0)
        {
          v363 = 0;
          v364 = -1 << v348;
          v365 = (v348 & 0x40) == 0;
          if ((v348 & 0x40) != 0)
          {
            v366 = -1 << v348;
          }

          else
          {
            v366 = (-1 << v348) | (0x7FFFFFFFFFFFFFFFuLL >> ~v348);
          }

          if (v365)
          {
            v363 = v364;
          }

          if (__PAIR128__(v355, v356) < __PAIR128__(v366 & *(&v683 + 1), v363 & v683))
          {
            break;
          }
        }

        v319 = v329 - v331;
        v318 = v362;
        v321 = v359 | v327;
        v322 = v357;
        v323 = v358;
        if (v330 <= 1)
        {
          goto LABEL_357;
        }
      }

      v367 = v359 | v327;
    }

    v370 = v357;
    v270 = v358;
    v371 = v367;
    v372 = v362;
    v802[0] = v683;
    v802[1] = v779;
    v802[2] = v780;
    v802[3] = v781;
    v802[4] = v782;
    v368 = ci_lt_l1_score(v802, v357, v358, v701, v259, v189);
    v369 = v372;
    v367 = v371;
    v45 = v765;
    goto LABEL_360;
  }

  v199 = 0.0;
  if (v735)
  {
    v200 = *(v728 + 8 * (v191 >> 6)) & (1 << (v191 & 0x1F));
    v201 = v200 != 0;
    v202 = v717;
    if (v177 && v200)
    {
      v203 = **(v729 + 32 * v193);
      if (v203 && (*(v44 + 55) & 1) == 0 && v203[2] > v737)
      {
        v204 = *v203;
        v205 = (v204 + 80);
        v158 = v204 == 0;
        v206 = &ZERO_RANKING_WRAPPED_BITS;
        if (!v158)
        {
          v206 = v205;
        }

        v199 = *(v206 + 16);
      }

      v201 = 1;
    }
  }

  else
  {
    v201 = 0;
    v202 = v717;
  }

  LOBYTE(v783) = LOBYTE(v731);
  *&v779 = v731;
  v785 = v731;
  v214 = *(v45 + 8 * *(v44 + 64));
  v215 = *(v156 + 208);
  v810 = *(v156 + 192);
  v811 = v215;
  v812 = *(v156 + 224);
  v216 = *(v156 + 144);
  v806 = *(v156 + 128);
  v807 = v216;
  v217 = *(v156 + 160);
  v809 = *(v156 + 176);
  v808 = v217;
  v218 = *(v156 + 80);
  v802[4] = *(v156 + 64);
  v803 = v218;
  v219 = *(v156 + 96);
  v805 = *(v156 + 112);
  v804 = v219;
  v220 = *(v156 + 16);
  v802[0] = *v156;
  v802[1] = v220;
  v221 = *(v156 + 32);
  v802[3] = *(v156 + 48);
  v802[2] = v221;
  hybridScoringL1(v720, v802, v761, v201, v214, LODWORD(v731), &v785, &v783, v199, &v779);
  v223 = v222;
  if (v177)
  {
    v224 = *(v729 + 32 * v193);
    v225 = v224 + 2;
    if (v779 == 2)
    {
      ++v224;
    }

    if (v779 == 3)
    {
      v224 = v225;
    }

    v226 = *v224;
  }

  else
  {
    v226 = 0;
  }

  v77 = v774;
  v78 = v761;
  if (v194)
  {
    v227 = 1;
  }

  else
  {
    v228 = *v226;
    v229 = (v228 + 80);
    v158 = v228 == 0;
    v230 = &ZERO_RANKING_WRAPPED_BITS;
    if (!v158)
    {
      v230 = v229;
    }

    v231 = v230[3];
    v802[2] = v230[2];
    v802[3] = v231;
    v802[4] = v230[4];
    v232 = *v230;
    v802[1] = v230[1];
    v802[0] = v232;
    v227 = ci_lt_l1_score(v802, 0, 0, v701, v222, v189);
  }

  if (isDebugVerboseMode_onceToken != -1)
  {
    dispatch_once(&isDebugVerboseMode_onceToken, &__block_literal_global_2688);
  }

  if (isDebugVerboseMode_debugEnabled == 1)
  {
    v470 = *__error();
    v471 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v471, OS_LOG_TYPE_DEFAULT))
    {
      v472 = *(v741 + 8 * v720);
      *&v802[0] = __PAIR64__(v700, v723);
      WORD4(v802[0]) = 2048;
      *(v802 + 10) = v472;
      WORD1(v802[1]) = 1024;
      DWORD1(v802[1]) = v701;
      WORD4(v802[1]) = 2048;
      *(&v802[1] + 10) = v223;
      WORD1(v802[2]) = 2048;
      *(&v802[2] + 4) = v785;
      WORD6(v802[2]) = 2048;
      *(&v802[2] + 14) = v189;
      WORD3(v802[3]) = 1024;
      DWORD2(v802[3]) = v699;
      WORD6(v802[3]) = 1024;
      *(&v802[3] + 14) = v227;
      _os_log_impl(&dword_1C278D000, v471, OS_LOG_TYPE_DEFAULT, "[ContentIndexQuery](group: %d, oid: %llu, date: %u, hybridScoreL1: %f, sparseScoreL1:%f, pscore: %f, containerId: %u, collecting_3: %d)", v802, 0x42u);
    }

    *__error() = v470;
    v44 = v777;
    v77 = v774;
    v156 = v771;
    v45 = v765;
    v78 = v761;
    v202 = v717;
  }

  v233 = !v227;
  v164 = v707 + !v227;
  if ((v732 & 8) != 0)
  {
    v233 = 0;
  }

  if (v233)
  {
    v236 = v202;
LABEL_229:
    v237 = v716;
    v238 = v718;
    goto LABEL_512;
  }

  v234 = v720;
  v235 = *(v741 + 8 * v720);
  if (v743 && SIUINT32SetContainsValue(v743, HIDWORD(v235)))
  {
    v236 = v717;
    *(v767 + 8 * v717) = 0;
    *(v768 + 8 * v236) = v764 + v234;
    goto LABEL_229;
  }

  v239 = v717;
  *(v767 + 8 * v717) = v235;
  *(v768 + 8 * v239) = v764 + v234;
  if (!v235)
  {
    v236 = v717;
    goto LABEL_229;
  }

  v240 = v717;
  if (*v156)
  {
    v241 = v785;
    v242 = v783;
    v243 = *v156 + v717 * v721;
    *v243 = 0u;
    *(v243 + 16) = 0u;
    *(v243 + 32) = 0u;
    *(v243 + 48) = v701;
    *(v243 + 52) = v189;
    *(v243 + 56) = v699;
    *(v243 + 60) = v223;
    *(v243 + 64) = v241;
    *(v243 + 68) = v242;
    *(v243 + 69) = 1;
  }

  v244 = 0;
  if (((1 << v700) & v718) != 0)
  {
    v245 = 0;
  }

  else
  {
    v245 = 1 << v700;
  }

  v686 = v245;
  v687 = ((1 << v700) & v718) == 0;
  v246 = *(v156 + 56);
  if (v246)
  {
    v244 = countInUpdates(v246, v234);
  }

  v247 = 5 * v240;
  *(*(v156 + 8) + v247) = v244;
  v248 = *(v156 + 64);
  if (v248)
  {
    v249 = countInUpdates(v248, v234);
  }

  else
  {
    v249 = 0;
  }

  *(*(v156 + 8) + v247 + 1) = v249;
  v277 = *(v156 + 72);
  if (v277)
  {
    v278 = countInUpdates(v277, v234);
  }

  else
  {
    v278 = 0;
  }

  *(*(v156 + 8) + v247 + 2) = v278;
  v279 = *(v156 + 80);
  if (v279)
  {
    v280 = countInUpdates(v279, v234);
  }

  else
  {
    v280 = 0;
  }

  *(*(v156 + 8) + v247 + 3) = v280;
  v281 = *(v156 + 88);
  if (v281)
  {
    v282 = countInUpdates(v281, v234);
  }

  else
  {
    v282 = 0;
  }

  *(*(v156 + 8) + v247 + 4) = v282;
  if (!*(v156 + 120) || !*(v156 + 168))
  {
    goto LABEL_290;
  }

  v283 = 0;
  v284 = *(v156 + 168);
  v285 = *(v156 + 120);
  v286 = 0;
  v287 = 0;
  v288 = 3.4028e38;
LABEL_275:
  v289 = *(v284 + 8 * v283);
  if (v289)
  {
    v784 = LOBYTE(v731);
    *v802 = v731;
    v290 = distanceHolderGetMinDistance(v289, *(v78 + 80) + v234, &v784, v802);
    if (v286)
    {
      v291 = v286;
    }

    else
    {
      v291 = 1;
    }

    if ((v784 & (v290 < v288)) != 0)
    {
      v292 = v291;
    }

    else
    {
      v292 = v286;
    }

    if ((v784 & (v290 < v288)) != 0)
    {
      v293 = LODWORD(v802[0]);
    }

    else
    {
      v290 = v288;
      v293 = v287;
    }

    v156 = v771;
    v294 = *(v771 + 120);
    v295 = v292;
    v296 = v293;
    goto LABEL_287;
  }

  while (1)
  {
    v294 = v285;
    v295 = v286;
    v290 = v288;
    v296 = v287;
    v156 = v771;
LABEL_287:
    v285 = v294;
    if (v283 + 1 >= v294)
    {
      break;
    }

    ++v283;
    v284 = *(v156 + 168);
    v287 = v296;
    v288 = v290;
    v286 = v295;
    if (v284)
    {
      goto LABEL_275;
    }
  }

  v45 = v765;
  if (v295)
  {
    v297 = 1;
  }

  else
  {
LABEL_290:
    LODWORD(v296) = 0;
    v290 = 3.4028e38;
    v297 = 0;
  }

  v298 = v717;
  v299 = *(v156 + 16) + v717 * v722;
  *(v299 + 4) = v290;
  *(v299 + 16) = v296;
  *v299 = v297;
  if (!*(v156 + 128))
  {
    v308 = 3.4028e38;
    LOBYTE(v300) = 0;
LABEL_414:
    v312 = 0.0;
    goto LABEL_415;
  }

  v300 = *(v156 + 176);
  if (!v300)
  {
    v308 = 3.4028e38;
    goto LABEL_414;
  }

  v301 = 0;
  v302 = *(v156 + 176);
  v303 = *(v156 + 128);
  v304 = 0;
  v305 = 0;
  v306 = 3.4028e38;
LABEL_295:
  v307 = *(v302 + 8 * v304);
  if (v307)
  {
    v784 = LOBYTE(v731);
    *v802 = v731;
    v308 = distanceHolderGetMinDistance(v307, *(v78 + 80) + v234, &v784, v802);
    if (v305)
    {
      LODWORD(v309) = v305;
    }

    else
    {
      LODWORD(v309) = 1;
    }

    if ((v784 & (v308 < v306)) != 0)
    {
      v309 = v309;
    }

    else
    {
      v309 = v305;
    }

    if ((v784 & (v308 < v306)) != 0)
    {
      v310 = LODWORD(v802[0]);
    }

    else
    {
      v308 = v306;
      v310 = v301;
    }

    v156 = v771;
    v311 = *(v771 + 128);
    goto LABEL_307;
  }

  while (1)
  {
    v311 = v303;
    v309 = v305;
    v308 = v306;
    v310 = v301;
    v156 = v771;
LABEL_307:
    v303 = v311;
    if (v304 + 1 >= v311)
    {
      break;
    }

    ++v304;
    v302 = *(v156 + 176);
    v301 = v310;
    v306 = v308;
    v305 = v309;
    if (v302)
    {
      goto LABEL_295;
    }
  }

  if (v309)
  {
    v312 = *&v310;
  }

  else
  {
    v308 = 3.4028e38;
    v312 = v731;
  }

  if (v309)
  {
    LOBYTE(v300) = 1;
  }

  else
  {
    LOBYTE(v300) = LOBYTE(v731);
  }

  v45 = v765;
  v298 = v717;
LABEL_415:
  v409 = *(v156 + 16) + 28 * v298;
  *(v409 + 8) = v308;
  *(v409 + 20) = v312;
  *(v409 + 1) = v300;
  if (!*(v156 + 136))
  {
    v418 = 3.4028e38;
    LOBYTE(v410) = 0;
LABEL_441:
    v422 = 0.0;
    goto LABEL_442;
  }

  v410 = *(v156 + 184);
  if (!v410)
  {
    v418 = 3.4028e38;
    goto LABEL_441;
  }

  v411 = 0;
  v412 = *(v156 + 184);
  v413 = *(v156 + 136);
  v414 = 0;
  v415 = 0;
  v416 = 3.4028e38;
LABEL_419:
  v417 = *(v412 + 8 * v414);
  if (v417)
  {
    v784 = LOBYTE(v731);
    *v802 = v731;
    v418 = distanceHolderGetMinDistance(v417, *(v78 + 80) + v234, &v784, v802);
    if (v415)
    {
      LODWORD(v419) = v415;
    }

    else
    {
      LODWORD(v419) = 1;
    }

    if ((v784 & (v418 < v416)) != 0)
    {
      v419 = v419;
    }

    else
    {
      v419 = v415;
    }

    if ((v784 & (v418 < v416)) != 0)
    {
      v420 = LODWORD(v802[0]);
    }

    else
    {
      v418 = v416;
      v420 = v411;
    }

    v156 = v771;
    v421 = *(v771 + 136);
    goto LABEL_431;
  }

  while (1)
  {
    v421 = v413;
    v419 = v415;
    v418 = v416;
    v420 = v411;
    v156 = v771;
LABEL_431:
    v413 = v421;
    if (v414 + 1 >= v421)
    {
      break;
    }

    ++v414;
    v412 = *(v156 + 184);
    v411 = v420;
    v416 = v418;
    v415 = v419;
    if (v412)
    {
      goto LABEL_419;
    }
  }

  if (v419)
  {
    v422 = *&v420;
  }

  else
  {
    v418 = 3.4028e38;
    v422 = v731;
  }

  if (v419)
  {
    LOBYTE(v410) = 1;
  }

  else
  {
    LOBYTE(v410) = LOBYTE(v731);
  }

  v45 = v765;
  v298 = v717;
LABEL_442:
  v423 = *(v156 + 16) + 28 * v298;
  *(v423 + 12) = v418;
  *(v423 + 24) = v422;
  *(v423 + 2) = v410;
  v424 = v769;
  if (v769)
  {
    *(v769 + v298) = v763;
    if (v727)
    {
      v425 = CIIndexSetHasIndex(v751, v720);
      v424 = v769;
      if (v425)
      {
        *(v769 + v298) = 1;
      }
    }

    if (v766 && *(v424 + v298))
    {
      *v766 = 1;
    }

    if (!v227)
    {
      *(v424 + v298) |= 2u;
    }
  }

  v426 = v716;
  v428 = v686;
  v427 = v687;
LABEL_510:
  v466 = v426 + v427;
  v237 = v466;
  v238 = v428 | v718;
  v236 = v298 + 1;
  if (v298 + 1 <= v742 || v466 >= v738)
  {
LABEL_512:
    v165 = v236;
    v163 = v237;
    v166 = v238;
    v153 = v758;
    v172 = v719;
    goto LABEL_137;
  }

  LODWORD(v148) = v720;
  v73 = v236;
  v485 = 1;
LABEL_726:
  v486 = v485;
  v483 = v148;
  v484 = v164;
LABEL_727:
  v97 = v73;
LABEL_728:
  v95 = v486;
LABEL_729:
  v79 = v762;
  add_explicit = v757;
  if (v483 <= *(v44 + 44))
  {
    v483 = *(v44 + 44);
  }

  *(v44 + 40) = v483;
  if ((v801 & 1) == 0)
  {
    v657 = __si_assert_copy_extra_332();
    v658 = v657;
    v659 = "";
    if (v657)
    {
      v659 = v657;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexQuery.c", 5057, "asserted", v659);
    goto LABEL_751;
  }

  v651 = v484;
  v801 = 0;
  v652 = threadData[9 * v791 + 1] + 320 * HIDWORD(v790);
  *(v652 + 312) = v750;
  v653 = *(v652 + 232);
  if (v653)
  {
    v653(*(v652 + 288));
  }

  dropThreadId(v791, 0, v755 + 1);
  v115 = v651;
LABEL_735:
  v654 = v115;
  v655 = threadData[9 * v797 + 1] + 320 * HIDWORD(v796);
  *(v655 + 312) = v756;
  v656 = *(v655 + 232);
  if (v656)
  {
    v656(*(v655 + 288));
  }

  dropThreadId(v797, 0, add_explicit + 1);
  v96 = v654;
LABEL_83:
  v98 = v96;
  pthread_mutex_lock((v77 + v79));
  v99 = *(v78 + 14700) - 1;
  *(v78 + 14700) = v99;
  if (!v99)
  {
    db_rwlock_wakeup(v77 + v79, 0, 0);
  }

  pthread_mutex_unlock((v77 + v79));
  v75 = v98;
  v76 = v97;
  result = v95;
LABEL_86:
  if (v801)
  {
    *(v44 + 58) = 1;
  }

  else
  {
    *v778 = v76;
    *v776 = v75;
  }

LABEL_89:
  v100 = *MEMORY[0x1E69E9840];
  return result;
}