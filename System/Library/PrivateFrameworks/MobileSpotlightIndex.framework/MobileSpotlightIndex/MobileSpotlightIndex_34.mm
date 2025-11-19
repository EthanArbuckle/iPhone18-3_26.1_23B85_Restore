uint64_t _SICooldownIndexFilesForMerge(uint64_t result)
{
  v34 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 1192);
    if (*v2 != 1685287992)
    {
      v22 = *__error();
      v23 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = *v2;
        *buf = 136315650;
        v29 = "db_cooldown_files";
        v30 = 1024;
        v31 = 277;
        v32 = 1024;
        v33 = v24;
        _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
      }

      *__error() = v22;
      v25 = __si_assert_copy_extra_332();
      v26 = v25;
      if (v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 277, v27);
      free(v26);
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    if (db_read_lock(v2 + 584))
    {
      sdb2_die(v2, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15510);
    }

    v3 = *(v2 + 848);
    if (v3)
    {
      *(v3 + 68) = 0;
    }

    v4 = *(v2 + 840);
    if (v4)
    {
      *(v4 + 68) = 0;
    }

    v5 = pthread_mutex_lock((v2 + 584));
    v6 = *(v2 + 780) - 1;
    *(v2 + 780) = v6;
    if (!v6)
    {
      db_rwlock_wakeup(v2 + 584, 0, 0);
    }

    result = pthread_mutex_unlock((v2 + 584));
    if (v5)
    {
      sdb2_die(v2, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15513);
    }

    v7 = *(v1 + 1392);
    v8 = *(v1 + 1384);
    v9 = *(v7 + 2);
    if (v9)
    {
      v10 = *v7;
      do
      {
        v11 = *v10;
        v12 = *(*v10 + 4672);
        if (v12)
        {
          *(v12 + 68) = 0;
        }

        v13 = *(v11 + 208);
        if (v13)
        {
          *(v13 + 68) = 0;
        }

        v14 = *(v11 + 472);
        if (v14)
        {
          *(v14 + 68) = 0;
        }

        ++v10;
        --v9;
      }

      while (v9);
    }

    v15 = *(v8 + 2);
    if (v15)
    {
      v16 = *v8;
      do
      {
        v17 = *v16;
        v18 = *(*v16 + 4672);
        if (v18)
        {
          *(v18 + 68) = 0;
        }

        v19 = *(v17 + 208);
        if (v19)
        {
          *(v19 + 68) = 0;
        }

        v20 = *(v17 + 472);
        if (v20)
        {
          *(v20 + 68) = 0;
        }

        ++v16;
        --v15;
      }

      while (v15);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SIFlushAndSyncIndex(uint64_t a1)
{
  v46 = 0;
  v2 = *(a1 + 2360);
  v42 = vextq_s8(*v2, *v2, 8uLL);
  v3 = *(a1 + 1192);
  v43 = v2[9].i64[0];
  v44 = v3;
  v45 = a1;
  v47 = vextq_s8(*(a1 + 1384), *(a1 + 1384), 8uLL);
  makeThreadId();
  if (gSILogLevels[0] >= 5)
  {
    v30 = *__error();
    v31 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v31, OS_LOG_TYPE_DEFAULT, "Starting forced sync!", buf, 2u);
    }

    *__error() = v30;
  }

  v41 = 0;
  if (fd_setDir(*(a1 + 32), &v41))
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v5 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(a1 + 1192), 0x40000000, add_explicit + 1);
    v40 = v5;
    v6 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
    v39 = HIDWORD(v5);
    v38 = __PAIR64__(v7, v8);
    *(v6 + 216) = 0;
    v9 = *(v6 + 312);
    v10 = *(v6 + 224);
    if (v10)
    {
      v10(*(v6 + 288));
    }

    v37 = v40;
    v36 = v39;
    v35 = v38;
    if (_setjmp(v6))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v6 + 312) = v9;
      CIOnThreadCleanUpReset(v35);
      dropThreadId(v37, 1, add_explicit + 1);
      CICleanUpReset(v37, HIDWORD(v35));
    }

    else
    {
      v11 = *(a1 + 1416);
      if (v11)
      {
        v12 = *(v11 + 88);
        if (v12)
        {
          if (!*(v11 + 240))
          {
            v12(v11, *(v11 + 24));
          }
        }
      }

      valuePtr = *(a1 + 2136);
      v13 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
      if (v13)
      {
        v14 = v13;
        si_set_property(a1, @"ConsumedJournalSerialNumber", v13, 1, 0);
        CFRelease(v14);
      }

      v15 = *(a1 + 2360);
      if (v15)
      {
        v16 = *(v15 + 48);
        if (v16)
        {
          v16(*(v15 + 144));
        }
      }

      v17 = *(a1 + 1392);
      v18 = *(a1 + 1384);
      v19 = *(a1 + 6592);
      *buf = xmmword_1F427BAA0;
      v49 = *&off_1F427BAB0;
      v50 = xmmword_1F427BAC0;
      v51 = *off_1F427BAD0;
      v52 = &v42;
      v20 = _ContentIndexSyncIndexBulk(a1 + 1200, v17, v18, 0, 0, buf, v19, lowDiskSpaceCallback, a1);
      v21 = v20;
      v22 = v20;
      v23 = *(a1 + 2360);
      if (v23)
      {
        v24 = *(v23 + 56);
        if (v24)
        {
          v24(*(v23 + 144));
        }
      }

      if (v22 && v21 != 89)
      {
        if (v21 == 28)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        si_makeUnavailable(a1, v22, v25, 12, "flush err");
      }

      v26 = threadData[9 * v37 + 1] + 320 * v36;
      *(v26 + 312) = v9;
      v27 = *(v26 + 232);
      if (v27)
      {
        v27(*(v26 + 288));
      }

      dropThreadId(v37, 0, add_explicit + 1);
    }

    v28 = v41;
    MEMORY[0x1C6921200](v41);
    if ((v28 & 0x80000000) == 0)
    {
      close(v28);
    }
  }

  if (gSILogLevels[0] >= 5)
  {
    v32 = *__error();
    v33 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v33, OS_LOG_TYPE_DEFAULT, "Finished forced sync!", buf, 2u);
    }

    *__error() = v32;
  }

  return 1;
}

void SIBulkDeleteAttributes(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  pthread_mutex_lock((a1 + 1816));
  v6 = *MEMORY[0x1E695E480];
  if (a3 >= 1)
  {
    v7 = 1;
    v8 = a2;
    do
    {
      v9 = CFNumberCreate(v6, kCFNumberLongLongType, v8);
      Value = CFBagGetValue(*(a1 + 1800), v9);
      CFRelease(v9);
      if (v7 >= a3)
      {
        break;
      }

      ++v7;
      ++v8;
    }

    while (!Value);
  }

  pthread_mutex_unlock((a1 + 1816));
  v11 = RLEOIDArrayCreate(v6, a2, a3);
  Current = CFAbsoluteTimeGetCurrent();
  _SIBulkDeleteAttributes(a1, v11, a3, Current);
  if (*(a1 + 1160))
  {
    v13 = malloc_type_malloc(0x20uLL, 0x10600405FCA77C1uLL);
    *v13 = a1;
    *(v13 + 1) = v11;
    v13[3] = CFAbsoluteTimeGetCurrent();
    v14 = *(a1 + 1160);

    si_enqueue_barrier(v14, _SIBulkDeleteAttributesHeld, v13);
  }

  else if (v11)
  {

    CFRelease(v11);
  }
}

int *_SIBulkDeleteAttributes(int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = result;
    if (*(result + 131))
    {
      if (!RLEOIDArrayIsEmpty(a2))
      {
        v9 = malloc_type_calloc(1uLL, 0x80uLL, 0x10300406AF0F2FAuLL);
        *v9 = v4;
        v10 = malloc_type_malloc(0x2000uLL, 0x100004000313F17uLL);
        v9[6] = 1024;
        v9[1] = v10;
        v9[2] = -1;
        RLEOIDIteratorCreate(a2);
      }

      v7 = gSISystemInDarkWake;
      v8 = time(0) - a4;

      return si_message_trace_darkwake(0, v4, "PermissionCache", v7, "Validate", "Permission cache in dark wake", v8);
    }
  }

  return result;
}

void _SIBulkDeleteAttributesHeld(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    _SIBulkDeleteAttributes(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  }

  CFRelease(*(a1 + 8));

  free(a1);
}

void si_bulk_delete_attributes(uint64_t a1, int a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = *a1;
    if (*(a1 + 16) == -1)
    {
      *(a1 + 16) = SIGetLargestOid(*a1);
    }

    if (!*(a1 + 112))
    {
      *(a1 + 112) = time(0);
    }

    v30 = 0;
    if (fd_setDir(*(v5 + 32), &v30))
    {
      if (*(a1 + 40))
      {
        v6 = 0;
        while (1)
        {
          v7 = *(*(a1 + 8) + 8 * v6);
          if (v7 > *(a1 + 16))
          {
            break;
          }

          if (dword_1EBF46ADC >= 5)
          {
            v8 = *__error();
            v9 = _SILogForLogForCategory(4);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v10 = *(*(a1 + 8) + 8 * v6);
              *buf = 134217984;
              v32 = v10;
              _os_log_impl(&dword_1C278D000, v9, OS_LOG_TYPE_DEFAULT, "Delete (bulk) oid: %lld", buf, 0xCu);
            }

            *__error() = v8;
            v7 = *(*(a1 + 8) + 8 * v6);
          }

          buf[0] = 0;
          _si_delete_attributes_inner(v5, v7, 1u, 0, 0, 0, buf);
          si_finish_text_store_deletions(v5);
          if (buf[0] == 1)
          {
            notify_post("com.apple.spotlight.SyndicatedContentDeleted");
          }

          ++*(a1 + 56);
          if (++v6 >= *(a1 + 40))
          {
            goto LABEL_18;
          }
        }

        if (gSILogLevels[0] >= 5)
        {
          v26 = *__error();
          v27 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = *(a1 + 16);
            v29 = *(*(a1 + 8) + 8 * v6);
            *buf = 134218240;
            v32 = v29;
            v33 = 2048;
            v34 = v28;
            _os_log_impl(&dword_1C278D000, v27, OS_LOG_TYPE_DEFAULT, "oid: %lld > max_oid: %lld", buf, 0x16u);
          }

          *__error() = v26;
        }

        fd_resetDir(v30);
        *(a1 + 40) = 0;
        goto LABEL_30;
      }

LABEL_18:
      v11 = v30;
      MEMORY[0x1C6921200](v30);
      if ((v11 & 0x80000000) == 0)
      {
        close(v11);
      }
    }

    v12 = RLEOIDIteratorNext(*(a1 + 64), *(a1 + 8), *(a1 + 48));
    *(a1 + 40) = v12;
    if (v12)
    {
      v13 = *(a1 + 8);
      if (*(a1 + 24) < *v13 && *(a1 + 56) < *(a1 + 32))
      {
        *(a1 + 24) = v13[v12 - 1];
        si_enqueue_barrier(*(v5 + 1048), si_bulk_delete_attributes, a1);
        a1 = 0;
LABEL_34:
        bumpWorkTime(v5, Current);
        goto LABEL_35;
      }
    }

    if (*(a1 + 56) >= 0x401uLL)
    {
      v14 = *__error();
      v15 = _SILogForLogForCategory(0);
      v16 = 2 * (gSILogLevels[0] < 4);
      if (os_log_type_enabled(v15, v16))
      {
        v17 = *(a1 + 40);
        *buf = 67109120;
        LODWORD(v32) = v17;
        _os_log_impl(&dword_1C278D000, v15, v16, "%d missing items, cleaninup up cache.", buf, 8u);
      }

      *__error() = v14;
      if (v5 && *(v5 + 1192))
      {
        v18 = malloc_type_calloc(1uLL, 0x48uLL, 0x1020040A82CC6CDuLL);
        *v18 = v5;
        si_enqueue_work(*(v5 + 1064), si_cacheCleanup, v18);
      }
    }

LABEL_30:
    v19 = *(a1 + 104);
    v20 = *a1;
    v21 = gSISystemInDarkWake;
    if (*(a1 + 120))
    {
      v22 = "Initial";
    }

    else
    {
      v22 = "Validate";
    }

    v23 = time(0);
    si_message_trace_darkwake(v19, v20, "PermissionCache", v21, v22, "Permission cache in dark wake", v23 - *(a1 + 112));
    goto LABEL_34;
  }

LABEL_35:
  if (a1)
  {
    si_power_info_cleanup(a1 + 72, *a1, a2 != 0);
    v24 = *(a1 + 64);
    if (v24)
    {
      RLEOIDIteratorDestroy(v24);
    }

    free(*(a1 + 8));
    free(a1);
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t SIGetLargestOid(uint64_t a1)
{
  if (!*(a1 + 1192))
  {
    return -1;
  }

  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(*(a1 + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v22 = v3;
  v4 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v21 = HIDWORD(v3);
  v20 = __PAIR64__(v5, v6);
  *(v4 + 216) = 0;
  v7 = *(v4 + 312);
  v8 = *(v4 + 224);
  if (v8)
  {
    v8(*(v4 + 288));
  }

  v19 = v22;
  v18 = v21;
  v17 = v20;
  if (_setjmp(v4))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v16, 2u);
    }

    *(v4 + 312) = v7;
    CIOnThreadCleanUpReset(v17);
    dropThreadId(v19, 1, add_explicit + 1);
    CICleanUpReset(v19, HIDWORD(v17));
    return -1;
  }

  else
  {
    v11 = db_datastore_largest_oid(*(a1 + 1192));
    v12 = *(a1 + 6880);
    v9 = v11;
    if (v12)
    {
      v15 = db_datastore_largest_oid(v12);
      if (v11 <= v15)
      {
        v9 = v15;
      }

      else
      {
        v9 = v11;
      }
    }

    v13 = threadData[9 * v19 + 1] + 320 * v18;
    *(v13 + 312) = v7;
    v14 = *(v13 + 232);
    if (v14)
    {
      v14(*(v13 + 288));
    }

    dropThreadId(v19, 0, add_explicit + 1);
  }

  return v9;
}

uint64_t SISerializeCacheData(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v72 = *MEMORY[0x1E69E9840];
  v4 = *(v3 + 1192);
  if (!v4)
  {
    v11 = 0;
    goto LABEL_62;
  }

  if (*v4 != 1685287992)
  {
    v57 = *__error();
    v58 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = *v4;
      *buf = 136315650;
      *&buf[4] = "db_serialize_cache";
      v68 = 1024;
      v69 = 491;
      v70 = 1024;
      v71 = v59;
      _os_log_error_impl(&dword_1C278D000, v58, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v57;
    v60 = __si_assert_copy_extra_332();
    v61 = v60;
    if (v60)
    {
      v62 = v60;
    }

    else
    {
      v62 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 491, v62);
    free(v61);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v5 = v2;
  v6 = v1;
  v7 = pthread_mutex_lock((v4 + 584));
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

  if (*(v4 + 768))
  {
    goto LABEL_8;
  }

  if (!*(v4 + 780) && *(v4 + 796) != 1)
  {
    goto LABEL_55;
  }

  v25 = v10 <= 5 ? 5 : v10;
  v26 = (v4 + 16 * v10 + 664);
  v27 = v25 - v10 + 1;
  while (--v27)
  {
    v28 = *v26;
    v26 += 2;
    if (v28)
    {
      goto LABEL_8;
    }
  }

  if (*(v4 + 648 + 16 * v10) && !*(v4 + 784))
  {
LABEL_8:
    db_rwlock_wait(v4 + 584, v10, 5);
  }

  else
  {
LABEL_55:
    *(v4 + 780) = vadd_s32(*(v4 + 780), 0x100000001);
  }

  pthread_mutex_unlock((v4 + 584));
  if (v7)
  {
    sdb2_die(v4, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15465);
  }

  v12 = *(v4 + 928);
  bzero(&buf[8], 0xFF9uLL);
  *buf = 3401903581;
  if (!v12)
  {
    v24 = 8;
LABEL_63:
    v49 = 0;
    v50 = v24 + 1;
    buf[v24] = 0;
    do
    {
      v51 = 0;
      v52 = &buf[v49];
      v53 = v50;
      while (1)
      {
        while (1)
        {
          v54 = write(v6, v52, v53);
          if ((v54 & 0x8000000000000000) == 0)
          {
            break;
          }

          v55 = g_prot_error_callback;
          if (g_prot_error_callback)
          {
            v56 = __error();
            if ((*(v55 + 16))(v55, v6, *v56, 6))
            {
              continue;
            }
          }

          goto LABEL_58;
        }

        v51 += v54;
        v43 = v53 > v54;
        v53 -= v54;
        if (!v43)
        {
          break;
        }

        v52 += v54;
      }

      v11 = 0;
      v49 += v51;
      *v5 += v51;
      v50 -= v51;
    }

    while (v50);
    goto LABEL_59;
  }

  v13 = atomic_load((v12 + 248));
  v14 = malloc_type_calloc(0x10uLL, v13 + 1, 0x52BDD175uLL);
  v15 = atomic_load((v12 + 248));
  v16 = malloc_type_malloc(8 * (v15 + 1), 0x80040B8603338uLL);
  v17 = atomic_load((v12 + 248));
  v18 = malloc_type_malloc(2 * (v17 + 1), 0x1000040BDFB0063uLL);
  if (atomic_load((v12 + 248)))
  {
    v20 = 0;
    v21 = v14;
    do
    {
      *v21 = *v12;
      v21[2] = v20;
      v16[v20++] = v21;
      v22 = atomic_load((v12 + 248));
      v21 += 4;
    }

    while (v20 < v22);
  }

  atomic_load((v12 + 248));
  v66 = v14;
  if (cache_get_info_for_keys() || (v29 = atomic_load((v12 + 248))) == 0)
  {
    v23 = 0;
    v24 = 8;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v24 = 8;
    do
    {
      if (v18[2 * v30] == 1)
      {
        v32 = v30 - v31;
        if (v32 >> 28)
        {
          v34 = &buf[v24];
          *v34 = v32 | 0x80;
          v34[1] = (v32 >> 7) | 0x80;
          v34[2] = (v32 >> 14) | 0x80;
          v34[3] = (v32 >> 21) | 0x80;
          v24 += 5;
          v34[4] = v32 >> 28;
        }

        else if (v32 >= 0x200000)
        {
          v35 = &buf[v24];
          *v35 = v32 | 0x80;
          v35[1] = (v32 >> 7) | 0x80;
          v35[2] = (v32 >> 14) | 0x80;
          v24 += 4;
          v35[3] = v32 >> 21;
        }

        else
        {
          v33 = &buf[v24];
          if (v32 >= 0x4000)
          {
            buf[v24] = v32 | 0x80;
            v33[1] = (v32 >> 7) | 0x80;
            v24 += 3;
            v33[2] = v32 >> 14;
          }

          else if (v32 >= 0x80)
          {
            buf[v24] = v32 | 0x80;
            v24 += 2;
            v33[1] = v32 >> 7;
          }

          else
          {
            buf[v24++] = v32;
          }
        }

        if (v24 < 4092)
        {
          v31 = v30;
        }

        else
        {
          v65 = v5;
          v36 = 0;
          while (2)
          {
            v63 = v36;
            v64 = 0;
            v37 = &buf[v36];
            v38 = v24;
            while (1)
            {
              while (1)
              {
                v39 = write(v6, v37, v38);
                if ((v39 & 0x8000000000000000) == 0)
                {
                  break;
                }

                v40 = g_prot_error_callback;
                if (g_prot_error_callback)
                {
                  v41 = __error();
                  if ((*(v40 + 16))(v40, v6, *v41, 6))
                  {
                    continue;
                  }
                }

                v23 = 1;
                v5 = v65;
                goto LABEL_57;
              }

              v42 = v39 + v64;
              v43 = v38 > v39;
              v38 -= v39;
              if (!v43)
              {
                break;
              }

              v64 += v39;
              v37 += v39;
            }

            v36 = v42 + v63;
            *v65 += v42;
            v24 -= v42;
            if (v24)
            {
              continue;
            }

            break;
          }

          v31 = v30;
          v5 = v65;
        }
      }

      v23 = 0;
      ++v30;
      v44 = atomic_load((v12 + 248));
    }

    while (v30 < v44);
  }

LABEL_57:
  free(v66);
  free(v16);
  free(v18);
  if ((v23 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_58:
  v11 = 0xFFFFFFFFLL;
LABEL_59:
  v45 = pthread_mutex_lock((v4 + 584));
  v46 = vadd_s32(*(v4 + 780), -1);
  *(v4 + 780) = v46;
  if (!v46.i32[0])
  {
    db_rwlock_wakeup(v4 + 584, 0, 0);
  }

  pthread_mutex_unlock((v4 + 584));
  if (v45)
  {
    sdb2_die(v4, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15467);
  }

LABEL_62:
  v47 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t SIRestoreCacheData(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v5 = v2;
  v65 = *MEMORY[0x1E69E9840];
  v6 = *(v1 + 1192);
  if (v6)
  {
    v53[1] = 0x40000000;
    v53[0] = MEMORY[0x1E69E9820];
    v54 = __SIRestoreCacheData_block_invoke;
    v55 = &__block_descriptor_tmp_561;
    v56 = v1;
    if (*v6 != 1685287992)
    {
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

      __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 490, v51);
      free(v50);
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 0x40000000;
    v57[2] = __db2_deserialize_cache_block_invoke;
    v57[3] = &__block_descriptor_tmp_123_15309;
    v57[4] = v6;
    bzero(__buf, 0x2000uLL);
    v7 = *v4;
    while (1)
    {
      v8 = pread(v5, __buf, 0x2000uLL, v7);
      v9 = g_prot_error_callback;
      if (v8 != -1 || g_prot_error_callback == 0)
      {
        break;
      }

      v11 = __error();
      if (((*(v9 + 16))(v9, v5, *v11, 4) & 1) == 0)
      {
        v12 = -1;
        goto LABEL_16;
      }
    }

    v12 = v8;
    if (v8 <= 7)
    {
      v14 = *__error();
      v15 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *v4;
        *v62 = 136315906;
        *&v62[4] = "page_cache_deserialize_entries";
        *&v62[12] = 1024;
        *&v62[14] = 1538;
        *&v62[18] = 2048;
        *&v62[20] = v12;
        *&v62[28] = 2048;
        *&v62[30] = v16;
        v17 = "%s:%d: Unexpected EOF in page cache preload; got %ld bytes at offset %lld";
        v18 = v15;
        v19 = 38;
LABEL_58:
        _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, v17, v62, v19);
        goto LABEL_50;
      }

      goto LABEL_50;
    }

LABEL_16:
    v20 = __buf[0];
    if (__buf[0] != 3401903581)
    {
      v14 = *__error();
      v44 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *v62 = 136315650;
        *&v62[4] = "page_cache_deserialize_entries";
        *&v62[12] = 1024;
        *&v62[14] = 1544;
        *&v62[18] = 2048;
        *&v62[20] = v20;
        v17 = "%s:%d: Missing signature in page cache preload %llx";
        v18 = v44;
        v19 = 28;
        goto LABEL_58;
      }

LABEL_50:
      v13 = 0xFFFFFFFFLL;
      goto LABEL_54;
    }

    v21 = malloc_type_malloc(0x4000uLL, 0x100004052888210uLL);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 8;
    while (1)
    {
      v26 = v25 + 1;
      v27 = *(__buf + v25);
      if (*(__buf + v25) < 0)
      {
        v29 = v25 + 2;
        v30 = *(__buf + v26);
        v31 = *(__buf + v26);
        if (v30 < 0)
        {
          v32 = v25 + 3;
          v33 = *(__buf + v29);
          v34 = *(__buf + v29);
          if (v33 < 0)
          {
            v35 = v25 + 4;
            v36 = *(__buf + v32);
            v37 = *(__buf + v32);
            if (v36 < 0)
            {
              v25 += 5;
              v38 = *(__buf + v35);
              v28 = v38 >= 0;
              v27 = ((v37 & 0x7F) << 21) | (v38 << 28) | ((v34 & 0x7F) << 14) | ((v31 & 0x7F) << 7) | v27 & 0x7F;
              if (!v27)
              {
                break;
              }
            }

            else
            {
              v28 = 0;
              v25 += 4;
              v27 = ((v34 & 0x7F) << 14) | (v37 << 21) | ((v31 & 0x7F) << 7) | v27 & 0x7F;
              if (!v27)
              {
                break;
              }
            }
          }

          else
          {
            v28 = 0;
            v25 += 3;
            v27 = ((v31 & 0x7F) << 7) | (v34 << 14) | v27 & 0x7F;
            if (!v27)
            {
              break;
            }
          }
        }

        else
        {
          v28 = 0;
          v27 = v27 & 0x7F | (v31 << 7);
          v25 += 2;
          if (!v27)
          {
            break;
          }
        }
      }

      else
      {
        v28 = 0;
        ++v25;
        if (!v27)
        {
          break;
        }
      }

      if (v28)
      {
        break;
      }

      v22 += v27;
      v21[v23] = v22;
      if (v23 == 4095)
      {
        *v62 = MEMORY[0x1E69E9820];
        *&v62[8] = 0x40000000;
        *&v62[16] = __page_cache_deserialize_entries_block_invoke;
        *&v62[24] = &unk_1E8199488;
        *&v62[32] = v57;
        v63 = v21;
        v64 = 4096;
        v54(v53, v62);
        v21 = malloc_type_malloc(0x4000uLL, 0x100004052888210uLL);
        v23 = 0;
      }

      else
      {
        ++v23;
      }

      ++v24;
      if (v25 + 5 >= v12)
      {
        v39 = *v4 + v25;
        v52 = v4;
        *v4 = v39;
        while (1)
        {
          v40 = pread(v5, __buf, 0x2000uLL, v39);
          v41 = g_prot_error_callback;
          if (v40 != -1 || g_prot_error_callback == 0)
          {
            break;
          }

          v43 = __error();
          if (((*(v41 + 16))(v41, v5, *v43, 4) & 1) == 0)
          {
            v12 = -1;
            goto LABEL_44;
          }
        }

        v12 = v40;
LABEL_44:
        v25 = 0;
        v4 = v52;
        if (!v12)
        {
          v28 = 0;
          break;
        }
      }
    }

    v13 = (v28 << 31 >> 31);
    if (!v23 || (v28 & 1) != 0)
    {
      free(v21);
    }

    else
    {
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 0x40000000;
      v58[2] = __page_cache_deserialize_entries_block_invoke_2;
      v58[3] = &unk_1E81994B0;
      v58[4] = v57;
      v58[5] = v21;
      v58[6] = v23;
      v54(v53, v58);
    }

    *v4 += v25;
    v14 = *__error();
    v45 = _SILogForLogForCategory(7);
    v46 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v45, v46))
    {
      *buf = 134217984;
      v61 = v24;
      _os_log_impl(&dword_1C278D000, v45, v46, "Pre-loaded %ld cache pages", buf, 0xCu);
    }

LABEL_54:
    *__error() = v14;
  }

  else
  {
    LOBYTE(__buf[0]) = 0;
    if (prot_pread(v2, __buf, 1uLL, *v3) == 1 && (++*v4, !LOBYTE(__buf[0])))
    {
      v13 = 0;
    }

    else
    {
      v13 = 96;
    }
  }

  v47 = *MEMORY[0x1E69E9840];
  return v13;
}

void __SIRestoreCacheData_block_invoke(uint64_t a1, void *aBlock)
{
  v2 = *(*(a1 + 32) + 1096);
  v3 = _Block_copy(aBlock);

  si_enqueue_work(v2, runBlock, v3);
}

void runBlock(void (**a1)(void, void), int a2)
{
  (a1)[2](a1, a2 != 0);

  _Block_release(a1);
}

uint64_t _SIGetRecoverTimeStamp(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 2408);
  if (v1)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    *v12 = 0u;
    v9 = v1;
    v3 = localtime(&v9);
    strftime(v12, 0x100uLL, "%F %T", v3);
    v4 = *__error();
    v5 = _SILogForLogForCategory(0);
    v6 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v5, v6))
    {
      *buf = 136315138;
      v11 = v12;
      _os_log_impl(&dword_1C278D000, v5, v6, "time stamp%s", buf, 0xCu);
    }

    *__error() = v4;
    result = *(a1 + 2408);
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SISetAttributes(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  v8 = malloc_type_calloc(1uLL, 0x50uLL, 0x10E0040BFFD03D2uLL);
  if (dword_1EBF46ADC >= 5)
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "Do attribute change.", buf, 2u);
    }

    *__error() = v11;
  }

  v8[3] = a2;
  v8[1] = CFRetain(a3);
  if (a4)
  {
    v9 = CFRetain(a4);
  }

  else
  {
    v9 = 0;
  }

  v8[5] = v9;
  *v8 = a1;
  *(v8 + 13) = 7;
  si_enqueue_barrier(*(a1 + 1048), setAttributes, v8);
  if (dword_1EBF46ADC >= 5)
  {
    v13 = *__error();
    v14 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1C278D000, v14, OS_LOG_TYPE_DEFAULT, "Leave.", v15, 2u);
    }

    *__error() = v13;
  }

  return 1;
}

void SIIndexingFullyCaughtUp(uint64_t a1)
{
  if (*(a1 + 1160))
  {
    v2 = malloc_type_calloc(1uLL, 0x50uLL, 0x10E0040BFFD03D2uLL);
    *v2 = a1;
    v3 = *(a1 + 1160);

    si_enqueue_barrier(v3, setIndexingCaughtUp0, v2);
  }
}

void setIndexingCaughtUp0(void *a1, int a2)
{
  if (a2)
  {
    free(a1);
  }

  else
  {
    si_enqueue_barrier(*(*a1 + 1048), setIndexingCaughtUp, a1);
  }
}

void setIndexingCaughtUp(uint64_t *a1, int a2)
{
  if (!a2)
  {
    v3 = *a1;
    *(v3 + 2459) = 1;
    v4 = db_shrink_cache(*(v3 + 1192));
    if (v4)
    {
      si_makeUnavailable(*a1, v4, 0, 13, "Failure in db_shrink_cache at setIndexingCaughtUp");
    }
  }

  free(a1);
}

uint64_t __mobile_journal_transfer_paths_block_invoke(uint64_t a1, char *__s1)
{
  result = strncmp(__s1, "skg_", 4uLL);
  if (!result)
  {
    result = renameat(*(a1 + 40), __s1, *(a1 + 44), __s1);
    if (result)
    {
      *(*(*(a1 + 32) + 8) + 40) = 1;
    }
  }

  return result;
}

uint64_t __get_files_for_directory_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (**(a1 + 40))
  {
    return 1;
  }

  if (a4)
  {
    return 2;
  }

  v5 = *(a3 + 4);
  if (v5 == 1)
  {
    if ((*(a1 + 48) & 1) == 0 && *a3 > 0)
    {
      return 2;
    }
  }

  else if (!v5)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), *(a3 + 32));
  }

  return 0;
}

uint64_t SIGetCacheFileDescriptors(uint64_t a1, const void *a2, const void *a3, const void *a4, int a5, const void *a6)
{
  v12 = malloc_type_calloc(1uLL, 0x38uLL, 0x10E0040BA4910EAuLL);
  *v12 = a1;
  *(v12 + 1) = CFRetain(a2);
  *(v12 + 2) = CFRetain(a3);
  v12[3] = CFAbsoluteTimeGetCurrent();
  if (a4)
  {
    CFRetain(a4);
  }

  *(v12 + 4) = a4;
  *(v12 + 10) = a5;
  *(v12 + 6) = _Block_copy(a6);
  v13 = *(a1 + 1088);
  v14 = qos_class_self();
  si_enqueue_work_with_qos(v13, v14, si_getCacheFileDescriptors, v12);
  return 0;
}

uint64_t SIGetCacheFd(uint64_t a1, const void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
  *v4 = a1;
  v4[1] = _Block_copy(a2);
  v5 = *(a1 + 1088);
  v6 = qos_class_self();
  si_enqueue_work_with_qos(v5, v6, si_getCacheFd, v4);
  return 0;
}

uint64_t SIGetCacheEntry(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  v8 = malloc_type_calloc(1uLL, 0x20uLL, 0xE0040C8AD4411uLL);
  *v8 = a1;
  v8[1] = CFRetain(a2);
  v8[2] = CFRetain(a3);
  v8[3] = _Block_copy(a4);
  v9 = *(a1 + 1088);
  v10 = qos_class_self();
  si_enqueue_work_with_qos(v9, v10, si_getCacheEntry, v8);
  return 0;
}

uint64_t SISetCacheEntry(uint64_t a1, const void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1288) == 1)
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = a1;
      _os_log_impl(&dword_1C278D000, v4, OS_LOG_TYPE_DEFAULT, "Can't set cache entry because the index is read-only. ref:%p", &v10, 0xCu);
    }

    v5 = 0;
    *__error() = v3;
  }

  else
  {
    v5 = 1;
    v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x60040FAFB2B2FuLL);
    *v7 = a1;
    v7[1] = CFRetain(a2);
    si_enqueue_work_with_qos(*(a1 + 1048), 9, si_setCacheEntry, v7);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t SIDeleteCacheEntry(uint64_t a1, const void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1288) == 1)
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = a1;
      _os_log_impl(&dword_1C278D000, v4, OS_LOG_TYPE_DEFAULT, "Can't delete cache entry because the index is read-only. ref:%p", &v10, 0xCu);
    }

    v5 = __error();
    result = 0;
    *v5 = v3;
  }

  else
  {
    v8 = malloc_type_calloc(1uLL, 0x18uLL, 0x60040149E097CuLL);
    *v8 = a1;
    if (a2)
    {
      v8[2] = CFRetain(a2);
    }

    si_enqueue_work_with_qos(*(a1 + 1048), 9, si_deleteCacheEntry, v8);
    result = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SICloseCache(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0x60040FAFB2B2FuLL);
  *v2 = a1;
  si_enqueue_work_with_qos(*(a1 + 1048), 9, si_closeCache, v2);
  return 1;
}

uint64_t SIHoldAssertion(uint64_t a1, int a2, double a3)
{
  v3 = a1;
  v109 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_89;
  }

  if (*(a1 + 1288) != 1)
  {
    v95 = 0;
    v96 = &v95;
    v97 = 0x2000000000;
    v98 = 1;
    v8 = 0;
    v9 = CFAbsoluteTimeGetCurrent() + a3;
    if (a2)
    {
      v10 = fd_create_protected(*(v3 + 32), "bgassertions", 536872449, 3u);
      if (!v10)
      {
        v20 = *__error();
        v21 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v43 = __error();
          v44 = strerror(*v43);
          v45 = *__error();
          *buf = 136315906;
          *&buf[4] = "SIHoldAssertion";
          *&buf[12] = 1024;
          *&buf[14] = 21273;
          *&buf[18] = 2080;
          *&buf[20] = v44;
          *&buf[28] = 1024;
          *&buf[30] = v45;
          _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: Unable to create bg assertion touch file: %s(%d)", buf, 0x22u);
        }

        v3 = 0;
        *__error() = v20;
        goto LABEL_88;
      }

      v8 = v10;
      memset(buf, 0, 55);
      __sprintf_chk(buf, 0, 0x37uLL, "%d$F$", v9);
      v11 = strlen(buf);
      v12 = fd_write(v8, buf, v11);
      if (v12 != strlen(buf))
      {
        v22 = *__error();
        v23 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v46 = __error();
          v47 = strerror(*v46);
          v48 = *__error();
          *v107 = 136315906;
          *&v107[4] = "SIHoldAssertion";
          *&v107[12] = 1024;
          *&v107[14] = 21279;
          *&v107[18] = 2080;
          *&v107[20] = v47;
          *&v107[28] = 1024;
          *&v107[30] = v48;
          _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: bg assertion touch file write error: %s(%d)", v107, 0x22u);
        }

        *__error() = v22;
        fd_release(v8);
        goto LABEL_29;
      }
    }

    v13 = *(v3 + 1384);
    v89[0] = MEMORY[0x1E69E9820];
    v89[1] = 0x40000000;
    v90 = __SIHoldAssertion_block_invoke;
    v91 = &unk_1E81911B8;
    v93 = a3;
    v94 = v8;
    v92 = &v95;
    if (v13 && *(v13 + 8))
    {
      v14 = 0;
      do
      {
        if (!(v90)(v89, *(*v13 + 8 * v14), 1))
        {
          break;
        }

        ++v14;
      }

      while (v14 < *(v13 + 8));
    }

    if (!*(v96 + 24))
    {
      goto LABEL_86;
    }

    v15 = *(v3 + 1192);
    if (*v15 != 1685287992)
    {
      v83 = *__error();
      v84 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        v85 = *v15;
        *buf = 136315650;
        *&buf[4] = "db_datastore_hold_assertion";
        *&buf[12] = 1024;
        *&buf[14] = 239;
        *&buf[18] = 1024;
        *&buf[20] = v85;
        _os_log_error_impl(&dword_1C278D000, v84, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
      }

      *__error() = v83;
      v86 = __si_assert_copy_extra_332();
      v87 = v86;
      if (v86)
      {
        v88 = v86;
      }

      else
      {
        v88 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 239, v88);
      free(v87);
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    if (db_read_lock(v15 + 584))
    {
      sdb2_die(v15, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15172);
    }

    if ((fd_hold_assertion(*(v15 + 848), v8, a3) & 0x80000000) != 0)
    {
      v24 = pthread_mutex_lock((v15 + 584));
      v25 = *(v15 + 780) - 1;
      *(v15 + 780) = v25;
      if (!v25)
      {
        db_rwlock_wakeup(v15 + 584, 0, 0);
      }

      pthread_mutex_unlock((v15 + 584));
      if (v24)
      {
        sdb2_die(v15, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15175);
      }
    }

    else if ((fd_hold_assertion(*(v15 + 840), v8, a3) & 0x80000000) != 0)
    {
      v26 = pthread_mutex_lock((v15 + 584));
      v27 = *(v15 + 780) - 1;
      *(v15 + 780) = v27;
      if (!v27)
      {
        db_rwlock_wakeup(v15 + 584, 0, 0);
      }

      pthread_mutex_unlock((v15 + 584));
      if (v26)
      {
        sdb2_die(v15, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15180);
      }
    }

    else
    {
      v16 = *(v15 + 880);
      v17 = *(v16 + 216);
      if (v17 == -270471200)
      {
        v19 = 0;
      }

      else
      {
        v62 = v17 == 1684300900;
        v18 = 1304;
        if (v62)
        {
          v18 = 280;
        }

        v19 = *(v16 + v18);
      }

      if ((fd_hold_assertion(v19, v8, a3) & 0x80000000) == 0)
      {
        v28 = *(v15 + 888);
        v29 = *(v28 + 216);
        if (v29 == -270471200)
        {
          v31 = 0;
        }

        else
        {
          v62 = v29 == 1684300900;
          v30 = 1304;
          if (v62)
          {
            v30 = 280;
          }

          v31 = *(v28 + v30);
        }

        if ((fd_hold_assertion(v31, v8, a3) & 0x80000000) == 0)
        {
          v32 = *(v15 + 896);
          v33 = *(v32 + 216);
          if (v33 == -270471200)
          {
            v35 = 0;
          }

          else
          {
            v62 = v33 == 1684300900;
            v34 = 1304;
            if (v62)
            {
              v34 = 280;
            }

            v35 = *(v32 + v34);
          }

          if ((fd_hold_assertion(v35, v8, a3) & 0x80000000) == 0)
          {
            v36 = *(v15 + 904);
            v37 = *(v36 + 216);
            if (v37 == -270471200)
            {
              v39 = 0;
            }

            else
            {
              v62 = v37 == 1684300900;
              v38 = 1304;
              if (v62)
              {
                v38 = 280;
              }

              v39 = *(v36 + v38);
            }

            if ((fd_hold_assertion(v39, v8, a3) & 0x80000000) == 0)
            {
              v40 = *(v15 + 912);
              v41 = *(v40 + 216);
              if (v41 == -270471200)
              {
                v49 = 0;
              }

              else
              {
                v42 = v41 == 1684300900 ? 280 : 1304;
                v49 = *(v40 + v42);
              }

              if ((fd_hold_assertion(v49, v8, a3) & 0x80000000) == 0)
              {
                v50 = *(v15 + 920);
                v51 = *(v50 + 216);
                if (v51 == -270471200)
                {
                  v53 = 0;
                }

                else
                {
                  v52 = v51 == 1684300900 ? 280 : 1304;
                  v53 = *(v50 + v52);
                }

                if ((fd_hold_assertion(v53, v8, a3) & 0x80000000) == 0)
                {
                  *(v15 + 988) = 1;
                  if (db_read_unlock(v15 + 584))
                  {
                    sdb2_die(v15, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15194);
                  }

                  v54 = *(v96 + 24);
                  *(v96 + 24) = v54 & 1;
                  if (v54)
                  {
                    v55 = _SICreateFdAndHoldAssertion(*(v3 + 32), v8, "dirStore.overlay", a3);
                    v56 = v55 & v96[3];
                    *(v96 + 24) = v56;
                    if (v56)
                    {
                      v57 = _SICreateFdAndHoldAssertion(*(v3 + 32), v8, "tmp.spotlight.loc", a3);
                      v58 = v57 & v96[3];
                      *(v96 + 24) = v58;
                      if (v58)
                      {
                        JournalFd = getJournalFd(v3, 0, 0);
                        v60 = fd_hold_assertion(JournalFd, v8, a3);
                        v61 = v96[3] & ~(v60 >> 31);
                        *(v96 + 24) &= ~(v60 >> 31) & 1;
                        if (v61)
                        {
                          *(v3 + 6960) = 0;
                          bzero(buf, 0x400uLL);
                          fd_name(JournalFd, buf, 0x400uLL);
                          v62 = *buf == 0x416C616E72756F6ALL && *&buf[8] == 779252852;
                          if (v62)
                          {
                            *v107 = 0;
                            v63 = strtoll(&buf[12], v107, 0);
                            *(v3 + 6960) = v63;
                          }

                          else
                          {
                            v63 = *(v3 + 6960);
                          }

                          if (v63 <= 0)
                          {
                            goto LABEL_105;
                          }

                          if (v8)
                          {
                            if (fd_lseek(v8, 0, 0))
                            {
                              v68 = *__error();
                              v69 = _SILogForLogForCategory(10);
                              if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                              {
                                v70 = __error();
                                v71 = strerror(*v70);
                                v72 = *__error();
                                *v107 = 136315906;
                                *&v107[4] = "SIHoldAssertion";
                                *&v107[12] = 1024;
                                *&v107[14] = 21343;
                                *&v107[18] = 2080;
                                *&v107[20] = v71;
                                *&v107[28] = 1024;
                                *&v107[30] = v72;
                                v73 = "%s:%d: bg assertion touch file lseek error: %s(%d)";
                                v74 = v107;
LABEL_103:
                                _os_log_error_impl(&dword_1C278D000, v69, OS_LOG_TYPE_ERROR, v73, v74, 0x22u);
                              }

LABEL_104:
                              *__error() = v68;
LABEL_105:
                              fd_release(v8);
                              SIDropAssertion(v3);
LABEL_29:
                              v3 = 0;
LABEL_88:
                              _Block_object_dispose(&v95, 8);
                              goto LABEL_89;
                            }

                            memset(v107, 0, 55);
                            __sprintf_chk(v107, 0, 0x37uLL, "%d$S$", v9);
                            v75 = strlen(v107);
                            v76 = fd_write(v8, v107, v75);
                            if (v76 != strlen(v107))
                            {
                              v68 = *__error();
                              v69 = _SILogForLogForCategory(10);
                              if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_104;
                              }

                              v80 = __error();
                              v81 = strerror(*v80);
                              v82 = *__error();
                              *v99 = 136315906;
                              v100 = "SIHoldAssertion";
                              v101 = 1024;
                              v102 = 21351;
                              v103 = 2080;
                              v104 = v81;
                              v105 = 1024;
                              v106 = v82;
                              v73 = "%s:%d: bg assertion touch file write error: %s(%d)";
                              goto LABEL_102;
                            }

                            if (fd_sync(v8, 1))
                            {
                              v68 = *__error();
                              v69 = _SILogForLogForCategory(10);
                              if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_104;
                              }

                              v77 = __error();
                              v78 = strerror(*v77);
                              v79 = *__error();
                              *v99 = 136315906;
                              v100 = "SIHoldAssertion";
                              v101 = 1024;
                              v102 = 21358;
                              v103 = 2080;
                              v104 = v78;
                              v105 = 1024;
                              v106 = v79;
                              v73 = "%s:%d: bg assertion touch file fsync error: %s(%d)";
LABEL_102:
                              v74 = v99;
                              goto LABEL_103;
                            }

                            fd_release(v8);
                          }

LABEL_87:
                          v3 = *(v96 + 24);
                          goto LABEL_88;
                        }
                      }
                    }
                  }

LABEL_86:
                  fd_release(v8);
                  SIDropAssertion(v3);
                  goto LABEL_87;
                }
              }
            }
          }
        }
      }

      v64 = pthread_mutex_lock((v15 + 584));
      v65 = *(v15 + 780) - 1;
      *(v15 + 780) = v65;
      if (!v65)
      {
        db_rwlock_wakeup(v15 + 584, 0, 0);
      }

      pthread_mutex_unlock((v15 + 584));
      if (v64)
      {
        sdb2_die(v15, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15187);
      }
    }

    *(v96 + 24) = 0;
    goto LABEL_86;
  }

  v4 = *__error();
  v5 = _SILogForLogForCategory(10);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v3;
    _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "Can't hold assertions because the index is read-only. ref:%p", buf, 0xCu);
  }

  v3 = 0;
  *__error() = v4;
LABEL_89:
  v66 = *MEMORY[0x1E69E9840];
  return v3;
}

BOOL __SIHoldAssertion_block_invoke(double *a1, uint64_t *a2)
{
  if (!a2 || (v4 = a1[5], v5 = *(a1 + 6), (fd_hold_assertion(a2[584], v5, v4) & 0x80000000) != 0) || (fd_hold_assertion(a2[59], v5, v4) & 0x80000000) != 0 || (fd_hold_assertion(a2[26], v5, v4) & 0x80000000) != 0 || !_CICreateFdAndHoldAssertion(a2, v5, "shadowIndexDirectory", v4) || !_CICreateFdAndHoldAssertion(a2, v5, "shadowIndexCompactDirectory", v4))
  {
    v6 = 0;
    v8 = 0;
    v7 = (*(*(a1 + 4) + 8) + 24);
  }

  else
  {
    v6 = _CICreateFdAndHoldAssertion(a2, v5, "shadowIndexArrays", v4);
    v7 = (*(*(a1 + 4) + 8) + 24);
    if (v6)
    {
      v8 = *v7 & 1;
      v6 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  *v7 = v8;
  return v6;
}

uint64_t SIDropAssertion(uint64_t a1)
{
  v1 = a1;
  v67 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v57 = 0;
    v58 = &v57;
    v59 = 0x2000000000;
    v60 = SIDeleteBgAssertionFile(a1);
    v2 = *(v1 + 1384);
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 0x40000000;
    v54 = __SIDropAssertion_block_invoke;
    v55 = &unk_1E81911E0;
    v56 = &v57;
    if (v2 && *(v2 + 8))
    {
      v3 = 0;
      do
      {
        if (!(v54)(v53, *(*v2 + 8 * v3), 1))
        {
          break;
        }

        ++v3;
      }

      while (v3 < *(v2 + 8));
    }

    v4 = *(v1 + 1192);
    if (*v4 != 1685287992)
    {
      v46 = *__error();
      v47 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = *v4;
        *buf = 136315650;
        v62 = "db_datastore_drop_assertion";
        v63 = 1024;
        v64 = 240;
        v65 = 1024;
        v66 = v48;
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

      __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 240, v51);
      free(v50);
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    if (db_read_lock(v4 + 584))
    {
      sdb2_die(v4, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15202);
    }

    *(v4 + 988) = 0;
    v5 = fd_drop_assertion(*(v4 + 848));
    v6 = fd_drop_assertion(*(v4 + 840));
    v7 = *(v4 + 880);
    v8 = *(v7 + 216);
    v52 = v6;
    if (v8 == -270471200)
    {
      v11 = 0;
    }

    else
    {
      v9 = v8 == 1684300900;
      v10 = 1304;
      if (v9)
      {
        v10 = 280;
      }

      v11 = *(v7 + v10);
    }

    v12 = fd_drop_assertion(v11);
    v13 = *(v4 + 888);
    v14 = *(v13 + 216);
    if (v14 == -270471200)
    {
      v16 = 0;
    }

    else
    {
      v9 = v14 == 1684300900;
      v15 = 1304;
      if (v9)
      {
        v15 = 280;
      }

      v16 = *(v13 + v15);
    }

    v17 = fd_drop_assertion(v16);
    v18 = *(v4 + 896);
    v19 = *(v18 + 216);
    if (v19 == -270471200)
    {
      v21 = 0;
    }

    else
    {
      v9 = v19 == 1684300900;
      v20 = 1304;
      if (v9)
      {
        v20 = 280;
      }

      v21 = *(v18 + v20);
    }

    v22 = fd_drop_assertion(v21);
    v23 = *(v4 + 904);
    v24 = *(v23 + 216);
    if (v24 == -270471200)
    {
      v26 = 0;
    }

    else
    {
      v9 = v24 == 1684300900;
      v25 = 1304;
      if (v9)
      {
        v25 = 280;
      }

      v26 = *(v23 + v25);
    }

    v27 = fd_drop_assertion(v26);
    v28 = *(v4 + 912);
    v29 = *(v28 + 216);
    if (v29 == -270471200)
    {
      v31 = 0;
    }

    else
    {
      v9 = v29 == 1684300900;
      v30 = 1304;
      if (v9)
      {
        v30 = 280;
      }

      v31 = *(v28 + v30);
    }

    v32 = fd_drop_assertion(v31);
    v33 = *(v4 + 920);
    v34 = *(v33 + 216);
    if (v34 == -270471200)
    {
      v36 = 0;
    }

    else
    {
      v9 = v34 == 1684300900;
      v35 = 1304;
      if (v9)
      {
        v35 = 280;
      }

      v36 = *(v33 + v35);
    }

    v37 = fd_drop_assertion(v36);
    v38 = pthread_mutex_lock((v4 + 584));
    v39 = *(v4 + 780) - 1;
    *(v4 + 780) = v39;
    if (!v39)
    {
      db_rwlock_wakeup(v4 + 584, 0, 0);
    }

    pthread_mutex_unlock((v4 + 584));
    if (v38)
    {
      sdb2_die(v4, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15214);
    }

    *(v58 + 24) &= ~((v52 | v5 | v12 | v17 | v22 | v27 | v32 | v37) < 0) & 1;
    v40 = _SICreateFdAndDropAssertion(*(v1 + 32), "dirStore.overlay");
    *(v58 + 24) &= v40;
    v41 = _SICreateFdAndDropAssertion(*(v1 + 32), "tmp.spotlight.loc");
    *(v58 + 24) &= v41;
    JournalFd = getJournalFd(v1, 0, 0);
    v43 = fd_drop_assertion(JournalFd);
    v1 = v58[3] & ~(v43 >> 31) & 1;
    *(v58 + 24) &= ~(v43 >> 31) & 1;
    _Block_object_dispose(&v57, 8);
  }

  v44 = *MEMORY[0x1E69E9840];
  return v1;
}

BOOL _SICreateFdAndHoldAssertion(int a1, uint64_t a2, const char *a3, double a4)
{
  *&v31[5] = *MEMORY[0x1E69E9840];
  v7 = fd_create_protected(a1, a3, 514, 0);
  if (v7)
  {
    v8 = v7;
    v23 = 0;
    v9 = _fd_acquire_fd(v7, &v23);
    if (v9 < 0)
    {
      v13 = *__error();
      v14 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v20 = *__error();
        v21 = __error();
        v22 = strerror(*v21);
        *buf = 136316418;
        v25 = "_SICreateFdAndHoldAssertion";
        v26 = 1024;
        v27 = 21219;
        v28 = 1024;
        *v29 = v9;
        *&v29[4] = 2080;
        *&v29[6] = a3;
        v30 = 1024;
        v31[0] = v20;
        LOWORD(v31[1]) = 2080;
        *(&v31[1] + 2) = v22;
        _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: fd = %d for %s file: %d(%s)", buf, 0x32u);
      }

      v10 = 0;
      *__error() = v13;
    }

    else
    {
      v10 = fd_hold_assertion(v8, a2, a4) >= 0;
      _fd_release_fd(v8, v9, 0, v23);
    }

    fd_release(v8);
  }

  else
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = *__error();
      v18 = __error();
      v19 = strerror(*v18);
      *buf = 136316162;
      v25 = "_SICreateFdAndHoldAssertion";
      v26 = 1024;
      v27 = 21207;
      v28 = 2080;
      *v29 = a3;
      *&v29[8] = 1024;
      *&v29[10] = v17;
      v30 = 2080;
      *v31 = v19;
      _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: Unable to get fdptr for %s file: %d(%s)", buf, 0x2Cu);
    }

    v10 = 0;
    *__error() = v11;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t SIDeleteBgAssertionFile(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = fd_create_protected(*(a1 + 32), "bgassertions", 536870914, 0);
    if (v1)
    {
      v2 = v1;
      if ((_fd_unlink_with_origin(v1, 0) & 0x80000000) != 0)
      {
        v10 = *__error();
        v11 = _SILogForLogForCategory(10);
        v12 = dword_1EBF46AF4 < 3;
        if (os_log_type_enabled(v11, (dword_1EBF46AF4 < 3)))
        {
          v13 = __error();
          v14 = strerror(*v13);
          v15 = *__error();
          v18 = 136315394;
          v19 = v14;
          v20 = 1024;
          v21 = v15;
          _os_log_impl(&dword_1C278D000, v11, v12, "*warn* Unable to delete bg assertion touch file: %s(%d)", &v18, 0x12u);
        }

        v3 = 0;
        *__error() = v10;
      }

      else
      {
        v3 = 1;
      }

      fd_release(v2);
    }

    else
    {
      v4 = *__error();
      v5 = _SILogForLogForCategory(10);
      v6 = dword_1EBF46AF4 < 3;
      if (os_log_type_enabled(v5, (dword_1EBF46AF4 < 3)))
      {
        v7 = __error();
        v8 = strerror(*v7);
        v9 = *__error();
        v18 = 136315394;
        v19 = v8;
        v20 = 1024;
        v21 = v9;
        _os_log_impl(&dword_1C278D000, v5, v6, "*warn* Unable to open bg assertion touch file: %s(%d)", &v18, 0x12u);
      }

      v3 = 0;
      *__error() = v4;
    }
  }

  else
  {
    v3 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t __SIDropAssertion_block_invoke(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v4 = fd_drop_assertion(a2[584]);
    v5 = fd_drop_assertion(a2[59]) | v4;
    v6 = v5 | fd_drop_assertion(a2[26]);
    v7 = _CICreateFdAndDropAssertion(a2, "shadowIndexDirectory");
    v8 = v6 >= 0 && v7;
    v9 = _CICreateFdAndDropAssertion(a2, "shadowIndexCompactDirectory");
    v10 = _CICreateFdAndDropAssertion(a2, "shadowIndexArrays");
    v11 = (*(*(a1 + 32) + 8) + 24);
    if (v8 && v9 && v10)
    {
      v12 = *v11 & 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = (*(*(a1 + 32) + 8) + 24);
  }

  *v11 = v12;
  return 1;
}

BOOL _SICreateFdAndDropAssertion(int a1, const char *a2)
{
  *&v27[5] = *MEMORY[0x1E69E9840];
  v3 = fd_create_protected(a1, a2, 2, 0);
  if (v3)
  {
    v4 = v3;
    v19 = 0;
    v5 = _fd_acquire_fd(v3, &v19);
    if (v5 < 0)
    {
      v9 = *__error();
      v10 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v16 = *__error();
        v17 = __error();
        v18 = strerror(*v17);
        *buf = 136316418;
        v21 = "_SICreateFdAndDropAssertion";
        v22 = 1024;
        v23 = 21245;
        v24 = 1024;
        *v25 = v5;
        *&v25[4] = 2080;
        *&v25[6] = a2;
        v26 = 1024;
        v27[0] = v16;
        LOWORD(v27[1]) = 2080;
        *(&v27[1] + 2) = v18;
        _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: fd = %d for %s file: %d(%s)", buf, 0x32u);
      }

      v6 = 0;
      *__error() = v9;
    }

    else
    {
      v6 = fd_drop_assertion(v4) >= 0;
      _fd_release_fd(v4, v5, 0, v19);
    }

    fd_release(v4);
  }

  else
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = *__error();
      v14 = __error();
      v15 = strerror(*v14);
      *buf = 136316162;
      v21 = "_SICreateFdAndDropAssertion";
      v22 = 1024;
      v23 = 21232;
      v24 = 2080;
      *v25 = a2;
      *&v25[8] = 1024;
      *&v25[10] = v13;
      v26 = 2080;
      *v27 = v15;
      _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: Unable to get fdptr for %s file: %d(%s)", buf, 0x2Cu);
    }

    v6 = 0;
    *__error() = v7;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t SISetBgAssertionFlag(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 6944) = a2;
    result = *(result + 1192);
    if (result)
    {
      return db_datastore_set_bg_assertion_flag(result, a2);
    }
  }

  return result;
}

uint64_t _SISetAssertedJournalNum(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 6960) = a2;
  }

  return result;
}

uint64_t SISetLockedJournalingState(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 6964) = a2;
  }

  return result;
}

void SICreateAssertedJournalFile(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_9:
    v6 = *MEMORY[0x1E69E9840];
    return;
  }

  v1 = fd_create_protected(*(a1 + 32), "assertedJournalAttr.1", 536872458, 2u);
  if (!v1)
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *__error();
      v8 = __error();
      v9 = strerror(*v8);
      v10 = 136315906;
      v11 = "SICreateAssertedJournalFile";
      v12 = 1024;
      v13 = 21434;
      v14 = 1024;
      v15 = v7;
      v16 = 2080;
      v17 = v9;
      _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: SICreateAssertedJournalFile: Unable to open asserted journal file %d(%s)", &v10, 0x22u);
    }

    *__error() = v4;
    goto LABEL_9;
  }

  v2 = v1;
  fd_hold_assertion(v1, 0, 36000.0);
  v3 = *MEMORY[0x1E69E9840];

  fd_release(v2);
}

uint64_t SIIsLockedIndexingMode(uint64_t result)
{
  if (result)
  {
    return (*(result + 830) >> 2) & 1;
  }

  return result;
}

void _SIValidateActivityJournal(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    bzero(v6, 0x400uLL);
    v5 = 0;
    v2 = _fd_acquire_fd(*(a1 + 2192), &v5);
    if (v2 != -1)
    {
      v3 = v2;
      if (fcntl(v2, 50, v6) < 0 || !v6[0])
      {
        _fd_release_fd(*(a1 + 2192), v3, 0, v5);
      }

      else
      {
        _SIActivityJournalGetOIDs(v6);
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t _SIValidateVectors(uint64_t result, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_12;
  }

  v2 = *(result + 1192);
  if (!v2)
  {
    goto LABEL_12;
  }

  if (*v2 != 1685287992)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *v2;
      *buf = 136315650;
      v13 = "db_datastore_validate_vectors";
      v14 = 1024;
      v15 = 238;
      v16 = 1024;
      v17 = v8;
      _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v6;
    v9 = __si_assert_copy_extra_332();
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 238, v11);
    free(v10);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  result = data_map_valid(*(v2 + 115));
  if ((result & 1) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      goto LABEL_12;
    }

    dprintf(a2, "datamap is invalid\n");
    v4 = "failed";
LABEL_11:
    result = dprintf(a2, "db_datastore_validate_vectors: %s\n", v4);
    goto LABEL_12;
  }

  result = data_map_validate(*(v2 + 115), a2);
  v4 = "failed";
  if (result)
  {
    v4 = "success";
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SIVectorIndexStorageSize(void *a1, char a2)
{
  if (!a1 || !a1[149])
  {
    return 0;
  }

  v2 = a1[174];
  v3 = a1[173];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v9 = __ContentIndexVectorIndexStorageSize_block_invoke;
  v10 = &unk_1E8197690;
  v11 = &v13;
  v12 = a2;
  if (v2 && *(v2 + 8))
  {
    v4 = 0;
    while ((v9)(v8, *(*v2 + 8 * v4), 0))
    {
      if (++v4 >= *(v2 + 8))
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    if (v3 && *(v3 + 8))
    {
      v5 = 0;
      do
      {
        if (!(v9)(v8, *(*v3 + 8 * v5), 1))
        {
          break;
        }

        ++v5;
      }

      while (v5 < *(v3 + 8));
    }
  }

  v6 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v6;
}

uint64_t SIPurgeVectorIndex(uint64_t a1, int a2)
{
  if (!a1 || !*(a1 + 1192))
  {
    return 0;
  }

  v4 = *(a1 + 1392);
  v5 = *(a1 + 1384);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v12 = MEMORY[0x1E69E9820];
  v13 = 0x40000000;
  v14 = __ContentIndexPurgeVectorIndex_block_invoke;
  v15 = &unk_1E81976B8;
  v16 = &v18;
  LOBYTE(v17) = a2;
  if (v4 && *(v4 + 8))
  {
    v6 = 0;
    while ((v14)(&v12, *(*v4 + 8 * v6), 0))
    {
      if (++v6 >= *(v4 + 8))
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    if (v5 && *(v5 + 8))
    {
      v7 = 0;
      do
      {
        if (!(v14)(&v12, *(*v5 + 8 * v7), 1))
        {
          break;
        }

        ++v7;
      }

      while (v7 < *(v5 + 8));
    }
  }

  v8 = v19[3];
  _Block_object_dispose(&v18, 8);
  if (v8)
  {
    if (a2)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    create_scan_touch_file(*(a1 + 32), v9);
    v10 = *(a1 + 1064);
    if (v10)
    {
      v12 = MEMORY[0x1E69E9820];
      v13 = 0x40000000;
      v14 = __scan_lost_ids_on_queue_block_invoke;
      v15 = &__block_descriptor_tmp_1928;
      v16 = a1;
      v17 = v9;
      si_enqueue_block(v10, &v12);
    }
  }

  return v8;
}

uint64_t __scan_lost_ids_on_queue_block_invoke(uint64_t result, int a2)
{
  if (!a2)
  {
    return scan_lost_ids(*(result + 32), *(result + 40));
  }

  return result;
}

uint64_t SIGetAttributes(uint64_t a1, unint64_t a2, uint64_t a3, const __CFArray *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = 0;
  v25 = 0;
  SIFlattenArrayToCStringVector(a4, &v27, &v26, &v25);
  v7 = *MEMORY[0x1E695E480];
  Mutable = _MDPlistBytesCreateMutable();
  _MDPlistBytesBeginPlist();
  _MDPlistBytesBeginArray();
  v9 = v27;
  v10 = v25;
  _MDPlistBytesAddNull();
  v11 = *(a1 + 1192);
  if (v11)
  {
    v30 = 0;
    if (v10 < 1 || db_get_obj(v11, a2, &v30, 0))
    {
      if (dword_1EBF46AE0 >= 5)
      {
        v22 = *__error();
        v23 = _SILogForLogForCategory(5);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v32 = a2;
          _os_log_impl(&dword_1C278D000, v23, OS_LOG_TYPE_DEFAULT, "No dbo for %llx", buf, 0xCu);
        }

        *__error() = v22;
      }

      _MDPlistBytesAddNull();
    }

    else
    {
      _MDPlistBytesBeginArray();
      v12 = v9;
      do
      {
        v28 = 0;
        v29 = 0;
        if (db_get_field(v11, v30, *v12, &v29, &v28))
        {
          v13 = *v12;
          v14 = strlen(*v12);
          v15 = CannedFieldTable::in_word_set(*v12, v14);
          if (!v15 || ((v15[1])(a1, v13, a3, a2, v30, 0, 0, 0, &__block_literal_global_94, Mutable) & 1) == 0)
          {
            if (dword_1EBF46AE0 >= 5)
            {
              v24 = *__error();
              v17 = _SILogForLogForCategory(5);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                v18 = *v12;
                *buf = 136315394;
                v32 = v18;
                v33 = 2048;
                v34 = a2;
                _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "No attribute %s for %llx", buf, 0x16u);
              }

              *__error() = v24;
            }

            _MDPlistBytesAddNull();
          }
        }

        else
        {
          if (a3)
          {
            v16 = *(a3 + 120);
          }

          else
          {
            v16 = 0;
          }

          MDPlistBytesAddSDBFieldLocalized(Mutable, v11, v29, v28, v16, 0, 1, 0);
        }

        ++v12;
        --v10;
      }

      while (v10);
      _MDPlistBytesEndArray();
      free(v30);
    }
  }

  _MDPlistBytesEndArray();
  _MDPlistBytesEndPlist();
  v19 = _MDPlistBytesCopyPlistAtIndex();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  free(v9);
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

os_signpost_id_t SIExecuteQueryWithResultsCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  values = a5;
  v8 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, 0);
  v9 = SIExecuteQueryWithResultsCallbackForTags(a1, a2, a3, 0, v8);
  CFRelease(v8);
  return v9;
}

char *SIBulkGetAttributeNames(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, int a7)
{
  v28 = *MEMORY[0x1E69E9840];
  v13 = malloc_type_calloc(1uLL, 0x70uLL, 0x10200408DCF1539uLL);
  atomic_store(2u, v13);
  pthread_mutex_init((v13 + 48), 0);
  *(v13 + 8) = 3;
  v14 = malloc_type_calloc(1uLL, 0x38uLL, 0x1030040115CFCBFuLL);
  *v14 = a1;
  atomic_fetch_add((a5 + 8), 1u);
  v14[3] = a5;
  v14[4] = v13;
  if (a4)
  {
    v15 = CFRetain(a4);
  }

  else
  {
    v15 = 0;
  }

  v14[5] = v15;
  v14[1] = a2;
  v14[2] = a3;
  if ((a7 & 0x100000) == 0)
  {
    if ((a7 & 0x400000) == 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    *(v14 + 48) |= 2u;
    if ((a7 & 0x200000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *(v14 + 48) |= 4u;
  if ((a7 & 0x400000) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((a7 & 0x200000) != 0)
  {
LABEL_7:
    *(v14 + 48) |= 1u;
  }

LABEL_8:
  Log = _MDPerf_QueryLog();
  if ((v13 + 1) >= 2)
  {
    v19 = Log;
    if (os_signpost_enabled(Log))
    {
      v20 = qos_class_self();
      v21 = *(v13 + 8);
      v22 = 134218496;
      v23 = 0;
      v24 = 1024;
      v25 = v20;
      v26 = 1024;
      v27 = v21;
      _os_signpost_emit_with_name_impl(&dword_1C278D000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v13, "Job", "QueryId=%{signpost.description:attribute}lld CurrentQoS=%{signpost.description:attribute}x JobType=%{signpost.description:attribute}d", &v22, 0x18u);
    }
  }

  si_enqueue_routine(a1, v13, si_getAttrNamesBulk, v14, 0xAu);
  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

char *SIBulkGetAttributes(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v42 = *MEMORY[0x1E69E9840];
  v16 = malloc_type_calloc(1uLL, 0x70uLL, 0x10200408DCF1539uLL);
  atomic_store(2u, v16);
  pthread_mutex_init((v16 + 48), 0);
  *(v16 + 8) = 2;
  v17 = malloc_type_calloc(1uLL, 0x48uLL, 0x10700402C59DD4BuLL);
  *v17 = a1;
  *(v17 + 1) = CFRetain(a5);
  atomic_fetch_add((a6 + 8), 1u);
  *(v17 + 4) = a6;
  *(v17 + 5) = v16;
  if (a4)
  {
    v18 = CFRetain(a4);
  }

  else
  {
    v18 = 0;
  }

  *(v17 + 6) = v18;
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 7) = CFAbsoluteTimeGetCurrent();
  v19 = *(v17 + 64) & 0xF7;
  if ((a8 & 0x100000) != 0)
  {
    v19 = *(v17 + 64) & 0xF3 | 4;
  }

  *(v17 + 64) = v19 | (a8 >> 21) & 3;
  if (*(a1 + 1284) == 102)
  {
    v20 = si_attrs_remapping_copy(*(v17 + 1), (*(a1 + 6584) >> 6) & 1);
    if (v20)
    {
      v21 = v20;
      CFRelease(*(v17 + 1));
      *(v17 + 1) = v21;
    }
  }

  v22 = a3 != 0;
  if (a3)
  {
    v23 = a3 - 1;
  }

  else
  {
    v23 = 0;
  }

  v24 = a2 + 8 * v22;
  Log = _MDPerf_QueryLog();
  if ((v16 + 1) >= 2)
  {
    v33 = Log;
    if (os_signpost_enabled(Log))
    {
      v34 = qos_class_self();
      v35 = *(v16 + 8);
      v36 = 134218496;
      v37 = 0;
      v38 = 1024;
      v39 = v34;
      v40 = 1024;
      v41 = v35;
      _os_signpost_emit_with_name_impl(&dword_1C278D000, v33, OS_SIGNPOST_INTERVAL_BEGIN, v16, "Job", "QueryId=%{signpost.description:attribute}lld CurrentQoS=%{signpost.description:attribute}x JobType=%{signpost.description:attribute}d", &v36, 0x18u);
    }
  }

  pthread_mutex_lock((a1 + 1320));
  v26 = *(a1 + 1152);
  if (v26 && si_peek_queue(v26, a7, v24, v23))
  {
    si_enqueue_barrier_routine(a1, v16, si_enqueue_getAttrBulk, v17, 0x12u);
    pthread_mutex_unlock((a1 + 1320));
  }

  else
  {
    pthread_mutex_unlock((a1 + 1320));
    v27 = *(a1 + 1048);
    if (!v27 || !si_peek_queue(v27, a7, v24, v23))
    {
      si_enqueue_routine(a1, v16, si_getAttrBulk, v17, 0xAu);
      goto LABEL_23;
    }

    si_enqueue_barrier_routine(a1, v16, si_enqueue_getAttrBulk, v17, 5u);
  }

  v28 = *__error();
  v29 = _SILogForLogForCategory(0);
  v30 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v29, v30))
  {
    LOWORD(v36) = 0;
    _os_log_impl(&dword_1C278D000, v29, v30, "Stalled getAttr because task had pending sets", &v36, 2u);
  }

  *__error() = v28;
LABEL_23:
  v31 = *MEMORY[0x1E69E9840];
  return v16;
}

void si_enqueue_getAttrBulk(uint64_t *a1, int a2)
{
  if (a2)
  {
    si_getAttrBulk(a1, a2);
  }

  else
  {
    si_enqueue_routine(*a1, a1[5], si_getAttrBulk, a1, 0xAu);
  }
}

void SIPreHeatIndex(uint64_t a1, const void *a2)
{
  if (a1)
  {
    _SIPreHeatIndex(a1, a2, 0);
  }
}

void _SIStartPreheatScheduler(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 2448))
  {
    v2 = *__error();
    v3 = _SILogForLogForCategory(3);
    v4 = 2 * (dword_1EBF46AD8 < 4);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(a1 + 896);
      v7 = 134217984;
      v8 = v5;
      _os_log_impl(&dword_1C278D000, v3, v4, "_SIStartPreheatScheduler for %p", &v7, 0xCu);
    }

    *__error() = v2;
    awakenPreheat(a1);
  }

  v6 = *MEMORY[0x1E69E9840];
}

int *SIInitialIndexingStarted(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  bzero(v12, 0x400uLL);
  *(a1 + 2436) = 1;
  v2 = *__error();
  v3 = _SILogForLogForCategory(0);
  v4 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = fcntl(*(a1 + 48), 50, v12);
    if (v12[0])
    {
      v6 = v5 < 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = v12;
    }

    *buf = 136315138;
    v11 = v7;
    _os_log_impl(&dword_1C278D000, v3, v4, "Started initial indexing of %s", buf, 0xCu);
  }

  result = __error();
  *result = v2;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SIGetMaxTransactionID(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  makeThreadId();
  if (a1 && *(a1 + 1048))
  {
    v2 = 0;
    v35 = 0;
    if (!fd_setDir(*(a1 + 32), &v35))
    {
LABEL_28:
      result = v2;
      goto LABEL_29;
    }

    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v4 = setThreadIdAndInfo(*(a1 + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
    v34 = v4;
    v5 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
    v32 = v6;
    v33 = HIDWORD(v4);
    v31 = v7;
    *(v5 + 216) = 0;
    v8 = *(v5 + 312);
    v9 = *(v5 + 224);
    if (v9)
    {
      v9(*(v5 + 288));
    }

    if (_setjmp(v5))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v5 + 312) = v8;
      CIOnThreadCleanUpReset(v31);
      dropThreadId(v34, 1, add_explicit + 1);
      CICleanUpReset(v34, v32);
      v2 = 0;
LABEL_26:
      v26 = v35;
      MEMORY[0x1C6921200](v35);
      if ((v26 & 0x80000000) == 0)
      {
        close(v26);
      }

      goto LABEL_28;
    }

    v14 = *(a1 + 1392);
    if (!v14 || !*v14 || (v15 = *(a1 + 1384)) == 0 || (v16 = *v15) == 0)
    {
      v20 = *__error();
      v21 = _SILogForLogForCategory(0);
      v22 = gSILogLevels[0] < 3;
      if (os_log_type_enabled(v21, (gSILogLevels[0] < 3)))
      {
        *buf = 136315138;
        v37 = "int32_t SIGetMaxTransactionID(SIRef)";
        _os_log_impl(&dword_1C278D000, v21, v22, "*warn* %s called on fs-only index", buf, 0xCu);
      }

      *__error() = v20;
      v23 = 0;
      goto LABEL_23;
    }

    v17 = *(v15 + 2);
    if (v17)
    {
      v18 = *(v15 + 2);
      if (*(v16 + 8 * (v17 - 1)))
      {
        v19 = *(v15 + 2);
LABEL_34:
        if (v18 != 1 || *(*v16 + 80))
        {
          v23 = *(*(v16 + 8 * (v19 - 1)) + 40);
LABEL_23:
          v24 = threadData[9 * v34 + 1] + 320 * v33;
          *(v24 + 312) = v8;
          v25 = *(v24 + 232);
          if (v25)
          {
            v25(*(v24 + 288));
          }

          dropThreadId(v34, 0, add_explicit + 1);
          v2 = v23;
          goto LABEL_26;
        }
      }

      else
      {
        v28 = *(v15 + 2);
        while (v28 != 1)
        {
          v29 = *(v16 + 8 * (v28 - 2));
          v30 = --v28;
          if (v29)
          {
            v18 = v30;
            *(v15 + 2) = v30;
            v19 = v30;
            goto LABEL_34;
          }
        }

        *(v15 + 2) = 0;
      }
    }

    v23 = 1;
    goto LABEL_23;
  }

  v10 = *__error();
  v11 = _SILogForLogForCategory(0);
  v12 = gSILogLevels[0] < 3;
  if (os_log_type_enabled(v11, (gSILogLevels[0] < 3)))
  {
    *buf = 136315394;
    v37 = "int32_t SIGetMaxTransactionID(SIRef)";
    v38 = 2048;
    v39 = a1;
    _os_log_impl(&dword_1C278D000, v11, v12, "*warn* %s called on fs-only or null index %p", buf, 0x16u);
  }

  *__error() = v10;
  result = 0;
LABEL_29:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SISetTransactionCount(uint64_t a1, int a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  makeThreadId();
  if (*(a1 + 1064) && *(a1 + 1048))
  {
    if (a2 == -1)
    {
      *(a1 + 6876) = 1;
    }

    else
    {
      v6 = *(a1 + 6876);
      if (v6 >= a2)
      {
        v6 = a2;
      }

      *(a1 + 6876) = v6;
      if (a2 == 1)
      {
        if (a3 && *(a1 + 6880))
        {
          *(a1 + 6893) = 1;
        }

        if (*(*(a1 + 1392) + 8) == 1 && *(*(a1 + 1384) + 8) == 1)
        {
          v7 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
          *v7 = a1;
          v7[1] = a3;
          v8 = *(a1 + 1064);
          v9 = si_set_transactioncount_0;
LABEL_29:
          si_enqueue_work(v8, v9, v7);
        }
      }

      else if (a2 >= 2)
      {
        v10 = *(a1 + 1384);
        v11 = *(v10 + 8);
        if (v11 == 1)
        {
          v12 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
          *v12 = a1;
          v12[1] = a3;
          si_enqueue_work(*(a1 + 1064), si_set_transactioncount_0, v12);
          v11 = *(v10 + 8);
        }

        if (v11)
        {
          v13 = 0;
          while (1)
          {
            v14 = *(*(*v10 + 8 * v13) + 40);
            if (v14 == a2)
            {
              break;
            }

            if (v14 > a2)
            {
              goto LABEL_30;
            }

            if (v11 == ++v13)
            {
              goto LABEL_27;
            }
          }

          if (v11 - 1 > v13)
          {
            goto LABEL_30;
          }

LABEL_27:
          if (*(a1 + 1064))
          {
            v17 = v14 == a2;
            v7 = malloc_type_malloc(0x20uLL, 0x102004077D6F10EuLL);
            *(v7 + 8) = v17;
            v7[2] = a3;
            *v7 = a1;
            *(v7 + 6) = a2;
            v8 = *(a1 + 1064);
            v9 = si_prepareForTransaction;
            goto LABEL_29;
          }

          v20 = *__error();
          v21 = _SILogForLogForCategory(0);
          v22 = 2 * (gSILogLevels[0] < 4);
          if (os_log_type_enabled(v21, v22))
          {
            LOWORD(v23) = 0;
            _os_log_impl(&dword_1C278D000, v21, v22, "Not supported for read only index", &v23, 2u);
          }

          *__error() = v20;
        }

        else
        {
          v15 = *__error();
          v16 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v23 = 136315394;
            v24 = "SISetTransactionCount";
            v25 = 1024;
            v26 = 22220;
            _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: No live index", &v23, 0x12u);
          }

          *__error() = v15;
        }
      }
    }
  }

LABEL_30:
  v18 = *MEMORY[0x1E69E9840];
  return 0xFFFFFFFFLL;
}

void si_prepareForTransaction(void *a1, int a2)
{
  if (!a2)
  {
    v3 = *a1;
    v4 = *(*a1 + 1384);
    v5 = count_IndexSetForWriting(v4, *(v4 + 8) - 1);
    v6 = *(*v4 + 8 * (*(v4 + 8) - 1));
    if (v5 < 0xF)
    {
      if ((*(v6 + 44) & 1) == 0)
      {
        v7 = ContentIndexListClone(v4);
        if ((*(a1 + 8) & 1) == 0 && prepareForTransaction(v3, v7, 0, *(a1 + 6)) || prepareForTransaction(v3, v7, *(a1 + 2), *(a1 + 6) + 1))
        {
          ContentIndexListFree(v7);
        }

        else
        {
          si_swapIndexSet(v3, v4, v7, (v3 + 1384), v8, v9, v10, v11);
        }
      }
    }

    else
    {
      ContentIndexSetEmergency(v6, 1);
    }
  }

  free(a1);
}

uint64_t prepareForTransaction(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v51 = *MEMORY[0x1E69E9840];
  memset(__str, 0, 255);
  snprintf(__str, 0xFFuLL, "live.%d.", *(a2 + 8));
  v7 = ((*(a1 + 828) & 1) << 6) ^ 0x50;
  if (*(a1 + 2072))
  {
    v7 |= 0x100u;
  }

  if (*(a1 + 2073))
  {
    v7 |= 0x400u;
  }

  v8 = *(a1 + 6584);
  v9 = v7 | (v8 >> 13) & 0x800;
  if (*(a1 + 6944))
  {
    v10 = v9 | 0x1000;
  }

  else
  {
    v10 = v9;
  }

  v11 = ~(v8 >> 7) & 0x8000;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 0x40000000;
  v38[2] = __prepareForTransaction_block_invoke;
  v38[3] = &__block_descriptor_tmp_1936;
  v38[4] = a1;
  v12 = *(a1 + 32);
  v13 = *(*a2 + 8 * (*(a2 + 8) - 1));
  v14 = *(v13 + 68);
  v15 = *(v13 + 80);
  if (v14 >= 2)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = a3 + 1025;
  v18 = a3 + 1025 + v15;
  v19 = *(a1 + 1284);
  v20 = *(a1 + 1192);
  if (v20)
  {
    vector_store = db_get_vector_store(v20);
  }

  else
  {
    vector_store = 0;
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 0x40000000;
  v37[2] = __prepareForTransaction_block_invoke_2;
  v37[3] = &__block_descriptor_tmp_1937;
  v37[4] = a1;
  v22 = v18 + v16;
  v23 = a4;
  New = ContentIndexCreateNew(v12, @"tmp.", v22, a4, v10 | v11, 1, v19, vector_store, v37, v38, *(a1 + 60));
  v36 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = __prepareForTransaction_block_invoke_3;
  aBlock[3] = &__block_descriptor_tmp_1938;
  aBlock[4] = a1;
  aBlock[5] = New;
  ContentIndexSetDirtyCallback(New, aBlock);
  *(New + 15201) = 4;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  __buf = 0u;
  v46 = 0u;
  ContentIndexSyncIndex(New, &__buf, &v36);
  bzero(&__buf + 8, 0x208uLL);
  *&__buf = 0x6D6F76650A00;
  DWORD2(__buf) = 2;
  BYTE12(__buf) = 1;
  LODWORD(v46) = *(a2 + 8);
  HIDWORD(v46) = 1;
  ContentIndexListAppend(a2, New);
  v25 = *(a1 + 1392);
  si_clone_index_metadata_to_inflight(a1);
  __strlcpy_chk();
  v26 = si_openat_protected(*(a1 + 32), "tmp.movePlan", 1538, 3);
  pwrite(v26, &__buf, 0x210uLL, 0);
  fcntl(v26, 85);
  ContentIndexChangePrefix(New);
  unlinkat(*(a1 + 32), "tmp.movePlan", 2048);
  close(v26);
  v27 = *(*a2 + 8 * (*(a2 + 8) - 1));
  v28 = *(v27 + 68);
  if (v28 < 2)
  {
    v28 = 0;
  }

  _ContentIndexSetPayloadMaxCount(v27, v17 + *(v27 + 80) + v28, 22097);
  v29 = *__error();
  v30 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v40 = "prepareForTransaction";
    v41 = 1024;
    v42 = 22101;
    v43 = 1024;
    v44 = v23;
    _os_log_error_impl(&dword_1C278D000, v30, OS_LOG_TYPE_ERROR, "%s:%d: Prepare for transaction %d", buf, 0x18u);
  }

  *__error() = v29;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 0x40000000;
  v34[2] = __prepareForTransaction_block_invoke_1939;
  v34[3] = &__block_descriptor_tmp_1940;
  v34[4] = a1;
  v34[5] = New;
  ContentIndexSetDirtyCallback(New, v34);
  *(New + 15201) = 4;
  v31 = *MEMORY[0x1E69E9840];
  return 0;
}

void delayed_op_prop2(uint64_t a1, int a2)
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
      v3 = delayed_op_prop3;
    }

    v4 = *(*(a1 + 8) + 1040);

    si_enqueue_work_for_job(v4, v3, a1, 0);
  }
}

void delayed_op_prop3(uint64_t a1, int a2)
{
  if (a2)
  {
    (*(a1 + 16))(*a1);

    free(a1);
  }

  else
  {
    if (*(a1 + 24) == 4)
    {
      v3 = delayed_op_final;
    }

    else
    {
      v3 = delayed_op_prop4;
    }

    v4 = *(*(a1 + 8) + 1064);

    si_enqueue_work_for_job(v4, v3, a1, 0);
  }
}

void delayed_op_prop4(void *a1, int a2)
{
  if (!a2 && (v3 = a1[1], (*(v3 + 6584) & 0x10) != 0))
  {
    v4 = *(v3 + 1096);

    si_enqueue_work_for_job(v4, delayed_op_final, a1, 0);
  }

  else
  {
    (a1[2])(*a1);

    free(a1);
  }
}

void _SIScheduleDiskOperation(uint64_t a1, int a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = *(a1 + 1080);
  if (a2)
  {
    si_enqueue_work_with_qos(v4, a2, a3, a4);
  }

  else
  {
    si_enqueue_work(v4, a3, a4);
  }
}

void _SIScheduleOperation(uint64_t a1, int a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = *(a1 + 1112);
  if (a2)
  {
    si_enqueue_work_with_qos(v4, a2, a3, a4);
  }

  else
  {
    si_enqueue_work(v4, a3, a4);
  }
}

void _SIScheduleOperationPostIndexUpdate(uint64_t a1, int a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, int a5)
{
  if (a1)
  {
    if (a5)
    {
      v5 = 18;
      if (!*(a1 + 1152))
      {
        v5 = 5;
      }
    }

    else
    {
      v5 = 5;
    }

    v6 = *(a1 + 8 * v5 + 1008);
    if (v6)
    {
      if (a2)
      {
        si_enqueue_barrier_with_qos(v6, a2, a3, a4);
      }

      else
      {
        si_enqueue_barrier(v6, a3, a4);
      }
    }
  }
}

void _SIIssueMerge(void *a1, int a2)
{
  if (a1[130])
  {
    v4 = malloc_type_calloc(1uLL, 0x460uLL, 0x1070040C187FD8AuLL);
    *v4 = a1;
    v4[16] = a2 != 0;
    *(v4 + 1041) = 0;
    *(v4 + 131) = "void _SIIssueMerge(SIRef, int)";
    *(v4 + 274) = 4;
    __strlcpy_chk();
    if (!*(v4 + 136) && !*(v4 + 266))
    {
      v6 = a1[295];
      if (v6)
      {
        v7 = *(v6 + 64);
        if (v7)
        {
          *(v4 + 266) = v7(*(v6 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 23142, "void _SIIssueMerge(SIRef, int)");
        }
      }
    }

    v5 = a1[145];

    si_enqueue_barrier_with_qos(v5, 5, _SIContinueIssueMerge0, v4);
  }
}

void _SIIssueCompact(uint64_t a1, int a2)
{
  if (*(a1 + 1040))
  {
    compactReadOnlyIndexes(a1, a2 != 0);
  }
}

void si_merge_for_badness(uint64_t a1, char a2)
{
  if (*(a1 + 1160))
  {
    if ((a2 & 1) != 0 || (*(a1 + 2457) & 1) != 0 || (v4 = *(a1 + 2360), (v5 = *(v4 + 80)) == 0))
    {
      v7 = malloc_type_malloc(0x20uLL, 0x102004092C98459uLL);
      *v7 = a1;
      v7[1] = 0;
      *(v7 + 16) = a2;
      v7[3] = 0;
      v8 = *(a1 + 1160);

      si_enqueue_barrier_with_qos(v8, 5, _si_merge_for_badness_on_hold_queue, v7);
    }

    else
    {
      *(a1 + 2457) = 1;
      v6 = *(v4 + 144);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 0x40000000;
      v9[2] = __si_merge_for_badness_block_invoke;
      v9[3] = &__block_descriptor_tmp_581;
      v9[4] = a1;
      v5(v6, 0, @"MergeForBadness", v9);
    }
  }
}

void __si_merge_for_badness_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  if (a2 && *(a2 + 2457) == 1)
  {
    *(a2 + 2457) = 0;
    v16 = -1;
    v8 = *(*(a1 + 32) + 32);
    v9 = v8 == -1 || (fd_setDir(v8, &v16) & 1) == 0;
    v10 = *__error();
    v11 = _SILogForLogForCategory(12);
    v12 = 2 * (dword_1EBF46AFC < 4);
    if (os_log_type_enabled(v11, v12))
    {
      *v15 = 0;
      _os_log_impl(&dword_1C278D000, v11, v12, "MergeForBadness started", v15, 2u);
    }

    *__error() = v10;
    if (!v9)
    {
      v13 = v16;
      MEMORY[0x1C6921200](v16);
      if ((v13 & 0x80000000) == 0)
      {
        close(v13);
      }
    }

    v14 = malloc_type_malloc(0x20uLL, 0x102004092C98459uLL);
    *v14 = a2;
    v14[1] = a5;
    *(v14 + 16) = 0;
    dispatch_retain(a5);
    dispatch_group_enter(a5);
    v14[3] = 0;
    si_enqueue_barrier_with_qos(*(*(a1 + 32) + 1160), 5, _si_merge_for_badness_on_hold_queue, v14);
  }
}

void _si_merge_for_badness_on_hold_queue(unsigned int **a1, int a2)
{
  if (a2)
  {
    si_merge_for_badness_ctx_free(a1);
  }

  else
  {
    si_scheduler_async_suspend_and_enqueue(*(*a1 + 109), *(*a1 + 130), _si_merge_for_badness_on_flush_queue, a1, a1 + 3);
  }
}

void si_merge_for_badness_ctx_free(void *a1)
{
  if (a1)
  {
    v2 = *(a1 + 3);
    if (v2)
    {
      si_scheduler_resume_with_token(v2);
    }

    v3 = *(a1 + 1);
    if (v3)
    {
      dispatch_group_leave(v3);
      dispatch_release(*(a1 + 1));
    }

    free(a1);
  }
}

void _si_merge_for_badness_on_flush_queue(uint64_t *a1, int a2)
{
  if (a2)
  {

    si_merge_for_badness_ctx_free(a1);
  }

  else
  {
    v3 = *a1;
    v4 = *(*a1 + 1392);
    v5 = *(*a1 + 1384);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v14 = ___si_merge_for_badness_on_flush_queue_block_invoke;
    v15 = &__block_descriptor_tmp_1972;
    v16 = v3;
    if (v5)
    {
      v6 = *(v5 + 8);
      while (v6 >= 1)
      {
        v7 = v6 - 1;
        v8 = v14(v13, *(*v5 + 8 * v6 - 8), 1);
        v6 = v7;
        if (!v8)
        {
          goto LABEL_14;
        }
      }
    }

    if (v4)
    {
      v9 = *(v4 + 8);
      do
      {
        if (v9 < 1)
        {
          break;
        }

        v10 = v9 - 1;
        v11 = v14(v13, *(*v4 + 8 * v9 - 8), 0);
        v9 = v10;
      }

      while (v11);
    }

LABEL_14:
    v12 = a1[3];
    if (v12)
    {
      si_scheduler_resume_with_token(v12);
      a1[3] = 0;
    }

    si_enqueue_work(*(v3 + 1064), _si_merge_for_badness_on_compact_queue, a1);
  }
}

uint64_t ___si_merge_for_badness_on_flush_queue_block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a1 + 32);
  if ((*(a2 + 15712) & 1) != 0 || *(a2 + 15206))
  {
    v6 = atomic_load((a2 + 36));
    if ((v6 & 3) == 0 && (*(a2 + 15203) & 1) == 0)
    {
      v7 = malloc_type_calloc(1uLL, 0x60uLL, 0x10B0040E0DE4348uLL);
      *v7 = v5;
      v7[1] = a2;
      *(v7 + 5) = *(a2 + 56);
      *(v7 + 80) = a3;
      *(v7 + 83) = 1;
      _swapIndex(v7, 0);
    }
  }

  return 1;
}

void _si_merge_for_badness_on_compact_queue(void *a1, int a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v3 = *a1;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2000000000;
    v41 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2000000000;
    v37 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2000000000;
    v33 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2000000000;
    v29 = 0;
    v4 = v3[174];
    v5 = v3[173];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 0x40000000;
    v20 = ___si_merge_for_badness_on_compact_queue_block_invoke;
    v21 = &unk_1E8192768;
    v22 = &v38;
    v23 = &v34;
    v24 = &v30;
    v25 = &v26;
    if (v5)
    {
      v6 = *(v5 + 8);
      while (v6 >= 1)
      {
        v7 = v6 - 1;
        v8 = v20(v19, *(*v5 + 8 * v6 - 8), 1);
        v6 = v7;
        if (!v8)
        {
          goto LABEL_11;
        }
      }
    }

    if (v4)
    {
      v9 = *(v4 + 8);
      do
      {
        if (v9 < 1)
        {
          break;
        }

        v10 = v9 - 1;
        v11 = v20(v19, *(*v4 + 8 * v9 - 8), 0);
        v9 = v10;
      }

      while (v11);
    }

LABEL_11:
    if (v39[3])
    {
      if (v27[3] & 1) != 0 || *(v31 + 24) != 1 || (transfer_live_indexes(v3))
      {
        v12 = malloc_type_calloc(1uLL, 0x460uLL, 0x1070040C187FD8AuLL);
        v12[2] = *(v39[3] + 56);
        v12[3] = *(v35 + 6);
        *(v12 + 1042) = 0;
        *v12 = v3;
        v13 = v27;
        *(v12 + 16) = *(v27 + 24);
        *(v12 + 1041) = 0;
        *(v12 + 131) = "void _si_merge_for_badness_on_compact_queue(void *, Boolean)";
        v12[274] = 8;
        *(v12 + 139) = a1[1];
        a1[1] = 0;
        *(v13 + 24);
        __strlcpy_chk();
        if (!*(v12 + 136) && !v12[266])
        {
          v17 = v3[295];
          if (v17)
          {
            v18 = *(v17 + 64);
            if (v18)
            {
              v12[266] = v18(*(v17 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 23228, "void _si_merge_for_badness_on_compact_queue(void *, Boolean)");
            }
          }
        }

        si_mergeIndex(v12, 0);
        si_merge_for_badness(v3, *(a1 + 16));
      }

      else
      {
        v15 = *__error();
        v16 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v43 = "_si_merge_for_badness_on_compact_queue";
          v44 = 1024;
          v45 = 23210;
          _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: transfer_live_indexes failed", buf, 0x12u);
        }

        *__error() = v15;
      }
    }

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v38, 8);
  }

  si_merge_for_badness_ctx_free(a1);
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t ___si_merge_for_badness_on_compact_queue_block_invoke(void *a1, _BYTE *a2, int a3)
{
  if (((a2[15712] & 1) != 0 || a2[15206]) && (a2[15207] & 1) == 0)
  {
    v3 = 1;
    a2[15207] = 1;
    *(*(a1[4] + 8) + 24) = a2;
    ++*(*(a1[5] + 8) + 24);
    if (a3)
    {
      *(*(a1[6] + 8) + 24) = 1;
    }
  }

  else if (*(*(a1[5] + 8) + 24))
  {
    v3 = 0;
    *(*(a1[7] + 8) + 24) = a3;
    *(*(a1[4] + 8) + 24) = a2;
    ++*(*(a1[5] + 8) + 24);
  }

  else
  {
    return 1;
  }

  return v3;
}

void _SIIssueVerify(uint64_t a1, int a2)
{
  v4 = malloc_type_malloc(0x10uLL, 0x10200403A5D3213uLL);
  *v4 = a1;
  v4[2] = a2;
  v5 = 1088;
  if (*(a1 + 1288))
  {
    v6 = si_verify;
  }

  else
  {
    v5 = 1048;
    v6 = si_verify0;
  }

  v7 = *(a1 + v5);

  si_enqueue_work(v7, v6, v4);
}

void si_verify0(void *a1, int a2)
{
  if (a2)
  {
    free(a1);
  }

  else
  {
    si_enqueue_work(*(*a1 + 1064), si_verify, a1);
  }
}

void si_verify(_DWORD *a1, int a2)
{
  v2 = a1;
  v69 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v3 = *a1;
    v50 = a1[2];
    bzero(v68, 0x400uLL);
    v4 = *(v3 + 2360);
    v5 = *(v4 + 96);
    if (v5)
    {
      v6 = v5(*(v4 + 144), "com.apple.spotlightindex.verify");
    }

    else
    {
      v6 = 0;
    }

    v7 = _si_scheduler_suspend(*(v3 + 864), "SpotlightIndex.c", 23349);
    v51 = 0;
    v8 = 0;
    if (fd_setDir(*(v3 + 32), &v51))
    {
      v47 = v6;
      v48 = v2;
      v9 = *__error();
      v10 = _SILogForLogForCategory(0);
      v11 = 2 * (gSILogLevels[0] < 4);
      if (os_log_type_enabled(v10, v11))
      {
        v12 = fcntl(*(v3 + 32), 50, v68);
        if (v68[0])
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
          v14 = v68;
        }

        *buf = 136315138;
        v53 = v14;
        _os_log_impl(&dword_1C278D000, v10, v11, "verifying %s", buf, 0xCu);
      }

      *__error() = v9;
      v15 = *(v3 + 1392);
      v16 = *(v3 + 1384);
      if (v15)
      {
        v17 = *(v15 + 8);
      }

      else
      {
        v17 = 0;
      }

      v46 = v7;
      v49 = *(v3 + 1384);
      if (v16)
      {
        v18 = *(v16 + 8);
      }

      else
      {
        v18 = 0;
      }

      *(v3 + 1256) = 0;
      v19 = (v3 + 1264);
      *(v3 + 1264) = -1;
      *(v3 + 1272) = -1;
      *(v3 + 1280) = 0;
      if (v17)
      {
        v20 = 0;
        while (1)
        {
          v21 = *(*v15 + v20);
          v22 = ContentIndexVerifyIndex(v21);
          if (atomic_load((v21 + 15192)))
          {
            break;
          }

          if (v22)
          {
LABEL_39:
            _CIMakeInvalid(v21);
            if (v17)
            {
              v29 = *v15;
              do
              {
                v30 = *v29++;
                *(v30 + 8) = 0;
                --v17;
              }

              while (v17);
            }

            if (v18)
            {
              v31 = *v49;
              do
              {
                v32 = *v31++;
                *(v32 + 8) = 0;
                --v18;
              }

              while (v18);
            }

            *(v3 + 1280) = -2;
            v33 = *__error();
            v34 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v39 = fcntl(*(v3 + 32), 50, v68);
              if (v68[0])
              {
                v40 = v39 < 0;
              }

              else
              {
                v40 = 1;
              }

              v41 = *(v3 + 1264);
              if (v40)
              {
                v42 = 0;
              }

              else
              {
                v42 = v68;
              }

              v43 = *(v3 + 1272);
              v44 = *(v3 + 1256);
              v45 = *(v3 + 1260);
              *buf = 136316930;
              v53 = "si_verify";
              v54 = 1024;
              v55 = 23356;
              v56 = 2080;
              v57 = v42;
              v58 = 1024;
              v59 = -2;
              v60 = 1024;
              v61 = v41;
              v62 = 1024;
              v63 = v43;
              v64 = 1024;
              v65 = v44;
              v66 = 1024;
              v67 = v45;
              _os_log_error_impl(&dword_1C278D000, v34, OS_LOG_TYPE_ERROR, "%s:%d: verify index: %s, err: %d, (%d %d) , (%d, %d)", buf, 0x3Au);
            }

            *__error() = v33;
            if ((*(v3 + 1288) & 1) == 0)
            {
              si_makeUnavailable(v3, 4294967294, 2, 15, "verify err");
            }

            v8 = 1;
            goto LABEL_49;
          }

          v24 = *(v21 + 15560);
          if (v24 >= *(v21 + 15568))
          {
            v24 = *(v21 + 15568);
          }

          if (v24 > *v19)
          {
            *v19 = v24;
          }

          ++*(v3 + 1256);
          v20 += 8;
          if (8 * v17 == v20)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        if (v18)
        {
          for (i = 0; i != v18; ++i)
          {
            v21 = (*v49)[i];
            v26 = ContentIndexVerifyIndex(v21);
            if (atomic_load((v21 + 15192)))
            {
              break;
            }

            if (v26)
            {
              goto LABEL_39;
            }

            v28 = *(v21 + 15560);
            if (v28 >= *(v21 + 15568))
            {
              v28 = *(v21 + 15568);
            }

            if (v28 > *v19)
            {
              *(v3 + 1272) = v28;
            }

            ++*(v3 + 1260);
          }
        }
      }

      v8 = 0;
LABEL_49:
      v6 = v47;
      v2 = v48;
      v7 = v46;
      v35 = v51;
      MEMORY[0x1C6921200](v51);
      if ((v35 & 0x80000000) == 0)
      {
        close(v35);
      }
    }

    si_scheduler_resume(*(v3 + 864), v7, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 23371);
    v36 = *(v3 + 2360);
    v37 = *(v36 + 104);
    if (v37)
    {
      v37(*(v36 + 144), v6, v8);
    }
  }

  free(v2);
  v38 = *MEMORY[0x1E69E9840];
}

void _SICleanupStrings(uint64_t a1, void *a2, NSObject *a3, _BYTE *a4, int a5)
{
  if (!**(a1 + 6592) && (!a4 || (*a4 & 1) == 0))
  {
    si_sync_ctx_create_with_defer_fd(a1, 0);
    v11 = v10;
    *(v10 + 40) = si_syncFinishedForCleanup;
    v12 = malloc_type_calloc(1uLL, 0x30uLL, 0x1030040DF2DC81EuLL);
    *v12 = a1;
    *(v12 + 3) = a4;
    *(v12 + 8) = a5;
    if (a2)
    {
      v13 = xpc_retain(a2);
    }

    else
    {
      v13 = 0;
    }

    *(v12 + 1) = v13;
    if (a3)
    {
      *(v12 + 2) = a3;
      dispatch_retain(a3);
      dispatch_group_enter(*(v12 + 2));
    }

    *(v11 + 48) = v12;
    v14 = *(a1 + 1104);

    si_enqueue_work_with_qos(v14, 9, si_sync_index_delayed0, v11);
  }
}

void si_syncFinishedForCleanup(void *a1, int a2)
{
  v2 = a1;
  v20 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v3 = *a1;
    if (*a1)
    {
      v4 = *(v3 + 1192);
      if (v4)
      {
        if (*v4 != 1685287992)
        {
          v7 = *(v3 + 1192);
          v8 = *__error();
          v9 = _SILogForLogForCategory(4);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = *v7;
            *buf = 136315650;
            v15 = "db_garbage_collect_strings";
            v16 = 1024;
            v17 = 440;
            v18 = 1024;
            v19 = v10;
            _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
          }

          *__error() = v8;
          v11 = __si_assert_copy_extra_332();
          v12 = v11;
          if (v11)
          {
            v13 = v11;
          }

          else
          {
            v13 = "";
          }

          __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 440, v13);
          free(v12);
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        v5 = db2_garbage_collect_strings(v4, v2[8] & 1, *(v3 + 6592));
        *(v2 + 5) = v5;
        if (v5)
        {
          si_enqueue_work_with_qos(*(v3 + 1064), 9, si_CleanupCommit, v2);
          v2 = 0;
        }
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];

  si_cleanup_strings_ctx_free(v2);
}

void si_cleanup_strings_ctx_free(void *a1)
{
  if (a1)
  {
    v2 = *(a1 + 2);
    if (v2)
    {
      dispatch_group_leave(v2);
      dispatch_release(*(a1 + 2));
    }

    v3 = *(a1 + 1);
    if (v3)
    {
      xpc_release(v3);
    }

    free(a1);
  }
}

void si_CleanupCommit(_BYTE **a1, int a2)
{
  if (!a2)
  {
    v3 = *a1;
    if (*a1)
    {
      v4 = *a1;
      if (*(v3 + 149))
      {
        if (**(v3 + 824))
        {
          v5 = 0;
          v6 = *(v3 + 149);
        }

        else
        {
          v7 = malloc_type_calloc(0x12uLL, 8uLL, 0x2004093837F09uLL);
          for (i = 0; i != 144; i += 8)
          {
            if (i != 80)
            {
              *&v7[i] = _si_scheduler_suspend(*&v3[i + 864], "SpotlightIndex.c", 23453);
            }
          }

          v6 = *(v3 + 149);
          v5 = v7;
        }

        add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
        v10 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, v6, 0x40000000, add_explicit + 1);
        v26 = v10;
        v11 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
        v25 = HIDWORD(v10);
        v24 = __PAIR64__(v12, v13);
        *(v11 + 216) = 0;
        v14 = *(v11 + 312);
        v15 = *(v11 + 224);
        if (v15)
        {
          v15(*(v11 + 288));
        }

        v23 = v26;
        v22 = v25;
        v21 = v24;
        if (_setjmp(v11))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v20 = 0;
            _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v20, 2u);
          }

          *(v11 + 312) = v14;
          CIOnThreadCleanUpReset(v21);
          dropThreadId(v23, 1, add_explicit + 1);
          CICleanUpReset(v23, HIDWORD(v21));
        }

        else
        {
          db_garbage_collect_strings_commit(*(v3 + 149), a1[5], 0);
          v16 = threadData[9 * v23 + 1] + 320 * v22;
          *(v16 + 312) = v14;
          v17 = *(v16 + 232);
          if (v17)
          {
            v17(*(v16 + 288));
          }

          dropThreadId(v23, 0, add_explicit + 1);
        }

        v18 = v3 + 1000;
        for (j = 0; j != -144; j -= 8)
        {
          if (j != -56)
          {
            si_scheduler_resume(*&v18[j], *&v5[j + 136], "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 23467);
          }
        }

        if (v5)
        {
          free(v5);
        }
      }
    }
  }

  si_cleanup_strings_ctx_free(a1);
}

void _SIIssueDefrag(uint64_t a1)
{
  if (!**(a1 + 6592))
  {
    si_sync_ctx_create_with_defer_fd(a1, 0);
    v4 = v3;
    *(v3 + 138) = 1;
    *(v3 + 96) = 1;
    v5 = *(a1 + 1104);

    si_enqueue_work_with_qos(v5, 9, si_sync_index_delayed0, v4);
  }
}

void _SIIssueFlush(uint64_t a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x60uLL, 0x10B0040E0DE4348uLL);
  *v4 = a1;
  if (a2)
  {
    LiveIndex = si_getLiveIndex(*(a1 + 1384));
  }

  else
  {
    LiveIndex = si_getSyncIndex(a1, 0);
  }

  v4[1] = LiveIndex;
  v6 = LiveIndex[14];
  *(v4 + 4) = 2;
  *(v4 + 5) = v6;
  v7 = *(a1 + 1040);

  si_enqueue_work(v7, _flushCache, v4);
}

uint64_t SICrashStringInit(uint64_t result, int a2)
{
  gSICrashBuffer = result;
  gSICrashBufferSize = a2;
  return result;
}

uint64_t SISetPowerState(uint64_t result)
{
  gSISystemOnBattery = result & 1;
  gSISystemInDarkWake = (result & 2) != 0;
  return result;
}

__CFDictionary *_SICopyPropertyIDMap(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 1192);
  if (!v2)
  {
    return 0;
  }

  field_id_limit = db_get_field_id_limit(v2);
  if (field_id_limit < 1)
  {
    return 0;
  }

  v4 = field_id_limit;
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], field_id_limit, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v4 != 1)
  {
    for (i = 1; i != v4; ++i)
    {
      field_name_for_id = db_get_field_name_for_id(*(a1 + 1192), i);
      if (field_name_for_id)
      {
        v9 = field_name_for_id;
        valuePtr = i | (*(field_name_for_id - 2) << 28);
        v10 = CFNumberCreate(v5, kCFNumberSInt64Type, &valuePtr);
        v11 = CFStringCreateWithCString(v5, v9, 0x8000100u);
        CFDictionaryAddValue(Mutable, v10, v11);
        CFRelease(v11);
        CFRelease(v10);
      }
    }
  }

  return Mutable;
}

uint64_t _SITermIndexIterate(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v13[2604] = *MEMORY[0x1E69E9840];
  result = GetContentIndex(v3, v4);
  if (result)
  {
    v6 = result;
    v7 = *(result + 4680);
    v9[0] = 0;
    v10 = result + 4984;
    v9[1] = v7;
    v11 = result + 9704;
    v12 = v2;
    bzero(v13, 0x5160uLL);
    result = _bt_dumpTrie(v6 + 96, 0, v9, v13, iterateTermsCallback, v9);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t GetContentIndex(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  if (a1 && (a2 & 0x8000000000000000) == 0)
  {
    v3 = *(a1 + 1392);
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        v5 = a2 >= v4;
        v6 = a2 - v4;
        if (v5)
        {
          a2 = v6;
        }

        else
        {
          v2 = *(*v3 + 8 * a2);
          if (v2)
          {
            return v2;
          }
        }
      }
    }

    v2 = *(a1 + 1384);
    if (v2)
    {
      v7 = *(v2 + 8);
      if (v7)
      {
        v8 = a2 < v7;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        return *(*v2 + 8 * a2);
      }

      else
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t _SIReverseStoreIterate(uint64_t result, uint64_t a2)
{
  if (*(result + 6624))
  {
    v3 = result;
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v5 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, add_explicit + 1);
    v18 = HIDWORD(v5);
    v19 = v5;
    v17 = __PAIR64__(v6, v7);
    v8 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
    v9 = *(v8 + 312);
    v10 = *(v8 + 224);
    if (v10)
    {
      v10(*(v8 + 288));
    }

    v16 = v19;
    v15 = v18;
    v14 = v17;
    if (_setjmp(v8))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v13, 2u);
      }

      *(v8 + 312) = v9;
      CIOnThreadCleanUpReset(v14);
      dropThreadId(v16, 1, add_explicit + 1);
      return CICleanUpReset(v16, HIDWORD(v14));
    }

    else
    {
      _reverseStoreIterate(*(v3 + 6624), a2);
      v11 = threadData[9 * v16 + 1] + 320 * v15;
      *(v11 + 312) = v9;
      v12 = *(v11 + 232);
      if (v12)
      {
        v12(*(v11 + 288));
      }

      return dropThreadId(v16, 0, add_explicit + 1);
    }
  }

  return result;
}

uint64_t _SIDirectoryStoreIterate(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = GetContentIndex(a1, a2);
  if (result)
  {
    v5 = *(result + 4928);
    if (v5)
    {
      add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v7 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, add_explicit + 1);
      v25 = HIDWORD(v7);
      v26 = v7;
      v24 = __PAIR64__(v8, v9);
      v10 = threadData[9 * v7 + 1] + 320 * HIDWORD(v7);
      v11 = *(v10 + 312);
      v12 = *(v10 + 224);
      if (v12)
      {
        v12(*(v10 + 288));
      }

      v23 = v26;
      v22 = v25;
      v21 = v24;
      if (_setjmp(v10))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v15 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v15, 2u);
        }

        *(v10 + 312) = v11;
        CIOnThreadCleanUpReset(v21);
        dropThreadId(v23, 1, add_explicit + 1);
        return CICleanUpReset(v23, HIDWORD(v21));
      }

      else
      {
        v16 = MEMORY[0x1E69E9820];
        v17 = 0x40000000;
        v18 = ___SIDirectoryStoreIterate_block_invoke;
        v19 = &unk_1E8191228;
        v20 = a3;
        dumpDirectoryStore(v5);
        v13 = threadData[9 * v23 + 1] + 320 * v22;
        *(v13 + 312) = v11;
        v14 = *(v13 + 232);
        if (v14)
        {
          v14(*(v13 + 288));
        }

        return dropThreadId(v23, 0, add_explicit + 1);
      }
    }
  }

  return result;
}

uint64_t _SIGetIndexCount(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 1392);
    if (v2)
    {
      result = *(v2 + 8);
    }

    else
    {
      result = 0;
    }

    v3 = *(v1 + 1384);
    if (v3)
    {
      result += *(v3 + 8);
    }
  }

  return result;
}

unint64_t _SIGetMissingParentOID(unint64_t result)
{
  if (result)
  {
    if (*(result + 2072) == 1)
    {
      return atomic_load((result + 2080));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__CFString *_SISchedulerCopyDump(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppend(Mutable, @"Scheduler state:\n");
  CFStringAppend(Mutable, @"<<<<<<<<\n");
  for (i = 0; i != 18; ++i)
  {
    v4 = a1[i + 108];
    if (v4)
    {
      v5 = *(v4 + 32);
      block = MEMORY[0x1E69E9820];
      v14 = 0x40000000;
      v15 = __si_scheduler_dump_block_invoke;
      v16 = &__block_descriptor_tmp_39_1548;
      v17 = v4;
      v18 = Mutable;
      dispatch_sync(v5, &block);
    }
  }

  for (j = 0; j != 21; ++j)
  {
    si_workqueue_dump(a1[j + 126], Mutable);
  }

  CFStringAppend(Mutable, @">>>>>>>>\n");
  v7 = a1[174];
  v8 = a1[173];
  v9 = a1[149];
  CFStringAppend(Mutable, @"===== VectorIndex begin =====\n");
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  block = MEMORY[0x1E69E9820];
  v14 = 0x40000000;
  v15 = __ContentIndexListDumpVectorIndex_block_invoke;
  v16 = &unk_1E8197640;
  v19 = Mutable;
  v20 = v9;
  v17 = &v25;
  v18 = &v21;
  if (v7 && *(v7 + 8))
  {
    v10 = 0;
    while ((v15)(&block, *(*v7 + 8 * v10), 0))
    {
      if (++v10 >= *(v7 + 8))
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    if (v8 && *(v8 + 8))
    {
      v11 = 0;
      do
      {
        if (!(v15)(&block, *(*v8 + 8 * v11), 1))
        {
          break;
        }

        ++v11;
      }

      while (v11 < *(v8 + 8));
    }
  }

  CFStringAppendFormat(Mutable, 0, @"===== VectorIndex Total %u vectors in %u generations =====\n", *(v26 + 6), *(v22 + 6), block, v14);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  return Mutable;
}

void _SIIssueSchedulerDump(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = _SISchedulerCopyDump(a1);
    v2 = *__error();
    v3 = _SILogForLogForCategory(3);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315650;
      v6 = "_SIIssueSchedulerDump";
      v7 = 1024;
      v8 = 24028;
      v9 = 2112;
      v10 = v1;
      _os_log_error_impl(&dword_1C278D000, v3, OS_LOG_TYPE_ERROR, "%s:%d: %@", &v5, 0x1Cu);
    }

    *__error() = v2;
    CFRelease(v1);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t _SIIssueLiveQueryDump(uint64_t a1)
{
  if (a1)
  {
    return si_dump_livequeries(a1);
  }

  return a1;
}

uint64_t _SIMinimizeDiskSpace(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  pthread_mutex_lock(&mergeMutex);
  v2 = *(a1 + 2434);
  v3 = *(a1 + 2428);
  *(a1 + 2428) = v3 + 1;
  if (v2 == 1)
  {
    do
    {
      pthread_cond_wait(&mergeCond, &mergeMutex);
    }

    while ((*(a1 + 2434) & 1) != 0);
    --*(a1 + 2428);
    pthread_mutex_unlock(&mergeMutex);
  }

  else
  {
    *(a1 + 2428) = v3;
    pthread_mutex_unlock(&mergeMutex);
    if (*(a1 + 1384))
    {
      v4 = *(a1 + 944);
      if (v4)
      {
        v5 = _si_scheduler_suspend(v4, "SpotlightIndex.c", 24054);
        v6 = *(a1 + 1384);
        v7 = *(v6 + 8);
        if (v7 < 1)
        {
          goto LABEL_19;
        }

        v8 = 0;
        v9 = 0;
        v10 = -1;
        do
        {
          v11 = *(*v6 + 8 * v7 - 8);
          LODWORD(v12) = v11[17];
          if (v12 >= 2)
          {
            v12 = v12;
          }

          else
          {
            v12 = 0;
          }

          v8 += v12;
          if (v11[13] <= 1)
          {
            v13 = atomic_load(v11 + 4);
            v9 += v13;
            if (v8 < 2 * v9)
            {
              v10 = v7 - 1;
            }
          }

          --v7;
        }

        while ((v7 + 1) > 1);
        if (v10 < 1)
        {
LABEL_19:
          si_scheduler_resume(*(a1 + 944), v5, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 24076);
        }

        else
        {
          v14 = *(*v6 + 8 * v10);
          si_scheduler_resume(*(a1 + 944), v5, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 24071);
          si_recycleForBadIndex(a1, v14, "low disk space");
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return v2;
}

void _SISetMeEmailAddresses(CFSetRef theSet)
{
  v1 = *MEMORY[0x1E695E480];
  if (theSet)
  {
    Copy = CFSetCreateCopy(*MEMORY[0x1E695E480], theSet);
  }

  else
  {
    Copy = CFSetCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9F8]);
  }

  v3 = Copy;
  os_unfair_lock_lock(&sSIMeEmailAddressesLock);
  v4 = sSIMeEmailAddresses;
  v5 = sSIMeEmailAddressMatchContextDict;
  sSIMeEmailAddresses = v3;
  if (v3 && CFSetGetCount(v3))
  {
    sSIMeEmailAddressMatchContextDict = CFDictionaryCreateMutable(v1, 0, MEMORY[0x1E695E9D8], &kMatchContextDictionaryValueCallbacks);
    CFSetApplyFunction(sSIMeEmailAddresses, populateMatcherContextPrefix, sSIMeEmailAddressMatchContextDict);
  }

  else
  {
    sSIMeEmailAddressMatchContextDict = 0;
  }

  os_unfair_lock_unlock(&sSIMeEmailAddressesLock);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {

    CFRelease(v5);
  }
}

void populateMatcherContextPrefix(char *key, CFDictionaryRef theDict)
{
  if (!CFDictionaryContainsKey(theDict, key))
  {
    v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL);
    *v4 = _icu_get_ctx_for_search_match_with_limit(key);

    CFDictionaryAddValue(theDict, key, v4);
  }
}

uint64_t _icu_get_ctx_for_search_match_with_limit(char *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  bzero(v7, 0x400uLL);
  v5 = 0;
  if (a1 && (a1 = fasterUTF8String(a1, &v6, v7, 1024, &v5)) != 0)
  {
    CFStringGetCStringPtr(@"en", 0x8000100u);
    v2 = icu_search_context_create_with_wildcard_limit();
  }

  else
  {
    v2 = 0;
  }

  if (v5 == 1)
  {
    free(a1);
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void _SISetMeNames(CFStringRef theString, const __CFString *a2, const __CFString *a3)
{
  v4 = a2;
  v59 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695E480];
  if (theString)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], theString);
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  Copy = 0;
  if (a2)
  {
LABEL_3:
    v4 = CFStringCreateCopy(v5, v4);
  }

LABEL_4:
  if (a3)
  {
    a3 = CFStringCreateCopy(v5, a3);
  }

  os_unfair_lock_lock(&sSIMeNamesLock);
  cf = sSIMeGivenName;
  v45 = sSIMeMiddleName;
  v46 = sSIMeFamilyName;
  v47 = sSIMeFullName;
  v48 = sSIMeNameParts;
  v49 = sSIMeNameTokens;
  v50 = sSIMeGivenNameTokens;
  v51 = sSIMeNonGivenNameTokens;
  v52 = sSIMeNamePartMatchContextDict;
  theStringa = v4;
  v7 = sSIMeNameTokenMatchContextDict;
  v8 = sSIMeGivenNameTokenMatchContextDict;
  v9 = sSIMeNonGivenNameTokenMatchContextDict;
  v10 = sSIMeFullNameSearchContextPtr;
  sSIMeGivenName = Copy;
  v11 = sSIMeFullNamePrefixSearchContextPtr;
  sSIMeMiddleName = v4;
  v54 = a3;
  alloc = v5;
  sSIMeFamilyName = a3;
  v12 = sSIMeAliasNameSearchContextPtr;
  MutableCopy = CFStringCreateMutableCopy(v5, 0, Copy);
  CFStringLowercase(MutableCopy, 0);
  Length = CFStringGetLength(MutableCopy);
  v15 = Length;
  if (Length < 1024)
  {
    v16 = v58;
  }

  else
  {
    v16 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  }

  bzero(v58, 0x400uLL);
  if (!CFStringGetCString(MutableCopy, v16, v15 + 1, 0x8000100u))
  {
LABEL_21:
    v18 = 0;
    if (!MutableCopy)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v16);
  v17 = peopleNameAlias(__p);
  if (v57 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(v17 + 23) < 0)
  {
    if (!v17[1])
    {
      goto LABEL_21;
    }

    v17 = *v17;
  }

  else if (!*(v17 + 23))
  {
    goto LABEL_21;
  }

  v18 = CFStringCreateWithCString(alloc, v17, 0x8000100u);
  if (MutableCopy)
  {
LABEL_22:
    CFRelease(MutableCopy);
  }

LABEL_23:
  if (v16 != v58)
  {
    free(v16);
  }

  v43 = v8;
  sSIMeAliasName = v18;
  v19 = v54;
  if (Copy)
  {
    v20 = CFStringGetLength(Copy);
    sSIMeGivenNameTokens = createTokenArray(Copy);
    v21 = 1;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  v42 = v7;
  if (!theStringa)
  {
    v22 = 0;
    v23 = 0;
    if (v54)
    {
      goto LABEL_30;
    }

LABEL_32:
    if (!v21)
    {
      goto LABEL_40;
    }

    goto LABEL_33;
  }

  v22 = CFStringGetLength(theStringa);
  ++v21;
  v23 = 1;
  if (!v54)
  {
    goto LABEL_32;
  }

LABEL_30:
  v19 = CFStringGetLength(v54);
  ++v21;
  ++v23;
LABEL_33:
  v41 = v9;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  Mutable = CFArrayCreateMutable(alloc, v21, MEMORY[0x1E695E9C0]);
  v28 = CFStringCreateMutable(alloc, v20 + v22 + v19 + 2);
  v29 = v28;
  if (v20)
  {
    CFStringAppend(v28, Copy);
    CFArrayAppendValue(Mutable, Copy);
  }

  if (v22)
  {
    CFStringAppendFormat(v29, 0, @" %@", theStringa);
    CFArrayAppendValue(Mutable, theStringa);
  }

  if (v19)
  {
    CFStringAppendFormat(v29, 0, @" %@", v54);
    CFArrayAppendValue(Mutable, v54);
  }

  sSIMeFullName = v29;
  sSIMeNameParts = Mutable;
  sSIMeNameTokens = createTokenArray(v29);
  v12 = v26;
  v11 = v25;
  v10 = v24;
  v9 = v41;
LABEL_40:
  if (v23)
  {
    v30 = CFArrayCreateMutable(alloc, v23, MEMORY[0x1E695E9C0]);
    v31 = CFStringCreateMutable(alloc, v22 + v19 + 1);
    v32 = v31;
    if (v22)
    {
      CFStringAppend(v31, theStringa);
      CFArrayAppendValue(v30, theStringa);
    }

    if (v19)
    {
      CFStringAppendFormat(v32, 0, @" %@", v54);
      CFArrayAppendValue(v30, v54);
    }

    sSIMeNonGivenNameTokens = createTokenArray(v32);
    CFRelease(v30);
    CFRelease(v32);
  }

  if (sSIMeNameParts && CFArrayGetCount(sSIMeNameParts))
  {
    sSIMeNamePartMatchContextDict = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x1E695E9D8], &kMatchContextDictionaryValueCallbacks);
    v33 = sSIMeNameParts;
    v61.length = CFArrayGetCount(sSIMeNameParts);
    v61.location = 0;
    CFArrayApplyFunction(v33, v61, populateMatcherContext, sSIMeNamePartMatchContextDict);
  }

  else
  {
    sSIMeNamePartMatchContextDict = 0;
  }

  if (sSIMeNameTokens && CFArrayGetCount(sSIMeNameTokens))
  {
    sSIMeNameTokenMatchContextDict = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x1E695E9D8], &kMatchContextDictionaryValueCallbacks);
    v34 = sSIMeNameTokens;
    v62.length = CFArrayGetCount(sSIMeNameTokens);
    v62.location = 0;
    CFArrayApplyFunction(v34, v62, populateMatcherContext, sSIMeNameTokenMatchContextDict);
  }

  else
  {
    sSIMeNameTokenMatchContextDict = 0;
  }

  if (sSIMeGivenNameTokens && CFArrayGetCount(sSIMeGivenNameTokens))
  {
    sSIMeGivenNameTokenMatchContextDict = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x1E695E9D8], &kMatchContextDictionaryValueCallbacks);
    v35 = sSIMeGivenNameTokens;
    v63.length = CFArrayGetCount(sSIMeGivenNameTokens);
    v63.location = 0;
    CFArrayApplyFunction(v35, v63, populateMatcherContext, sSIMeGivenNameTokenMatchContextDict);
  }

  else
  {
    sSIMeGivenNameTokenMatchContextDict = 0;
  }

  if (sSIMeNonGivenNameTokens && CFArrayGetCount(sSIMeNonGivenNameTokens))
  {
    sSIMeNonGivenNameTokenMatchContextDict = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x1E695E9D8], &kMatchContextDictionaryValueCallbacks);
    v36 = sSIMeNonGivenNameTokens;
    v64.length = CFArrayGetCount(sSIMeNonGivenNameTokens);
    v64.location = 0;
    CFArrayApplyFunction(v36, v64, populateMatcherContext, sSIMeNonGivenNameTokenMatchContextDict);
  }

  else
  {
    sSIMeNonGivenNameTokenMatchContextDict = 0;
  }

  if (sSIMeFullName && CFStringGetLength(sSIMeFullName))
  {
    sSIMeFullNameSearchContextPtr = _icu_get_ctx_for_search_match_with_limit(sSIMeFullName);
    ctx_for_search_match_with_limit = _icu_get_ctx_for_search_match_with_limit(sSIMeFullName);
  }

  else
  {
    ctx_for_search_match_with_limit = 0;
    sSIMeFullNameSearchContextPtr = 0;
  }

  sSIMeFullNamePrefixSearchContextPtr = ctx_for_search_match_with_limit;
  v38 = sSIMeAliasName;
  if (sSIMeAliasName)
  {
    v38 = CFStringGetLength(sSIMeAliasName);
    if (v38)
    {
      v38 = _icu_get_ctx_for_search_match_with_limit(sSIMeAliasName);
    }
  }

  sSIMeAliasNameSearchContextPtr = v38;
  os_unfair_lock_unlock(&sSIMeNamesLock);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    icu_ctx_release();
  }

  if (v11)
  {
    icu_ctx_release();
  }

  if (v12)
  {
    v39 = *MEMORY[0x1E69E9840];

    icu_ctx_release();
  }

  else
  {
    v40 = *MEMORY[0x1E69E9840];
  }
}

void sub_1C29421A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *createTokenArray(const __CFString *a1)
{
  if (!a1 || !CFStringGetLength(a1))
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, *MEMORY[0x1E6998270]);
  CFArrayAppendValue(Mutable, *MEMORY[0x1E6998250]);
  CFArrayAppendValue(Mutable, *MEMORY[0x1E6998258]);
  v3 = NLTaggerCreate();
  if (!v3)
  {
    if (!Mutable)
    {
      return Mutable;
    }

    v7 = Mutable;
    goto LABEL_13;
  }

  v4 = v3;
  NLTaggerSetString();
  v5 = CFLocaleCopyCurrent();
  if (!v5)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v7 = v4;
LABEL_13:
    CFRelease(v7);
    return 0;
  }

  v6 = v5;
  CFStringGetLength(a1);
  NLTaggerSetLocaleForRange();
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  NLTaggerEnumerateTokens();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  CFRelease(v4);
  CFRelease(v6);
  Mutable = v10[3];
  _Block_object_dispose(&v9, 8);
  return Mutable;
}

void populateMatcherContext(char *key, CFDictionaryRef theDict)
{
  if (!CFDictionaryContainsKey(theDict, key))
  {
    v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL);
    *v4 = _icu_get_ctx_for_search_match_with_limit(key);

    CFDictionaryAddValue(theDict, key, v4);
  }
}

void __createTokenArray_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 17) & 0xC) == 0)
  {
    v3 = *MEMORY[0x1E695E480];
    v4 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], *(a1 + 40), *a2);
    if (v4)
    {
      v5 = v4;
      v6 = *(*(*(a1 + 32) + 8) + 24);
      if (!v6)
      {
        *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
        v6 = *(*(*(a1 + 32) + 8) + 24);
      }

      CFArrayAppendValue(v6, v5);

      CFRelease(v5);
    }
  }
}

void _SISetDerivedFromToIsMeNameUpdated(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 6584) |= 0x8000u;
    v1 = fd_create_protected(*(a1 + 32), "derivedFromToIsMeNameUpdated1.created", 512, 0);

    fd_release(v1);
  }
}

void _SISetDerivedFromToIsMeNameAdded(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 6584) |= 0x10000u;
    v1 = fd_create_protected(*(a1 + 32), "derivedFromToIsMeNameAdded1.created", 512, 0);

    fd_release(v1);
  }
}

void _SISetDerivedFromToIsMeAliasUpdated(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 6584) |= 0x20000u;
    v1 = fd_create_protected(*(a1 + 32), "derivedFromToIsMeAliasUpdated1.created", 512, 0);

    fd_release(v1);
  }
}

void _SISetDerivedFromToIsMeAliasAdded(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 6584) |= 0x40000u;
    v1 = fd_create_protected(*(a1 + 32), "derivedFromToIsMeAliasAdded1.created", 512, 0);

    fd_release(v1);
  }
}

CFStringRef _SICopyMeAliasName()
{
  os_unfair_lock_lock(&sSIMeNamesLock);
  if (sSIMeAliasName)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], sSIMeAliasName);
  }

  else
  {
    Copy = 0;
  }

  os_unfair_lock_unlock(&sSIMeNamesLock);
  return Copy;
}

CFArrayRef _SICopyMeNameTokens()
{
  os_unfair_lock_lock(&sSIMeNamesLock);
  if (sSIMeNameTokens)
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], sSIMeNameTokens);
  }

  else
  {
    Copy = 0;
  }

  os_unfair_lock_unlock(&sSIMeNamesLock);
  return Copy;
}

CFStringRef _SICopyMeFullName()
{
  os_unfair_lock_lock(&sSIMeNamesLock);
  if (sSIMeFullName)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], sSIMeFullName);
  }

  else
  {
    Copy = 0;
  }

  os_unfair_lock_unlock(&sSIMeNamesLock);
  return Copy;
}

CFArrayRef _SICopyMeGivenNameTokens()
{
  os_unfair_lock_lock(&sSIMeNamesLock);
  if (sSIMeGivenNameTokens)
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], sSIMeGivenNameTokens);
  }

  else
  {
    Copy = 0;
  }

  os_unfair_lock_unlock(&sSIMeNamesLock);
  return Copy;
}

CFArrayRef _SICopyMeNonGivenNameTokens()
{
  os_unfair_lock_lock(&sSIMeNamesLock);
  if (sSIMeNonGivenNameTokens)
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], sSIMeNonGivenNameTokens);
  }

  else
  {
    Copy = 0;
  }

  os_unfair_lock_unlock(&sSIMeNamesLock);
  return Copy;
}

CFSetRef _SICopyMeEmailAddresses()
{
  os_unfair_lock_lock(&sSIMeEmailAddressesLock);
  if (sSIMeEmailAddresses)
  {
    Copy = CFSetCreateCopy(*MEMORY[0x1E695E480], sSIMeEmailAddresses);
  }

  else
  {
    Copy = 0;
  }

  os_unfair_lock_unlock(&sSIMeEmailAddressesLock);
  return Copy;
}

void _SISetKnownContactEmailMapping(CFDictionaryRef theDict)
{
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
  }

  else
  {
    MutableCopy = 0;
  }

  os_unfair_lock_lock(&sEmailAddressMappingLock);
  v2 = sKnownEmailAdresses;
  sKnownEmailAdresses = MutableCopy;
  os_unfair_lock_unlock(&sEmailAddressMappingLock);
  if (v2)
  {

    CFRelease(v2);
  }
}

void _SISetKnownContactCounts(CFDictionaryRef theDict)
{
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
  }

  else
  {
    MutableCopy = 0;
  }

  os_unfair_lock_lock(&sContactCountsLock);
  v2 = sKnownContactCounts;
  sKnownContactCounts = MutableCopy;
  os_unfair_lock_unlock(&sContactCountsLock);
  if (v2)
  {

    CFRelease(v2);
  }
}

__CFArray *_SICreateContactMailCounts(const void *a1)
{
  Mutable = 0;
  if (a1)
  {
    if (sKnownEmailAdresses && sKnownContactCounts != 0)
    {
      os_unfair_lock_lock(&sEmailAddressMappingLock);
      Value = CFDictionaryGetValue(sKnownEmailAdresses, a1);
      if (Value)
      {
        v5 = Value;
        CFRetain(Value);
        os_unfair_lock_unlock(&sEmailAddressMappingLock);
        os_unfair_lock_lock(&sContactCountsLock);
        v6 = CFDictionaryGetValue(sKnownContactCounts, v5);
        v7 = v6;
        if (v6)
        {
          CFRetain(v6);
        }

        os_unfair_lock_unlock(&sContactCountsLock);
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 8, MEMORY[0x1E695E9C0]);
        initCountsArray_block_invoke(&__block_literal_global_634, Mutable, 8);
        readFromAllCountsArray_block_invoke_3(&__block_literal_global_641, v7, Mutable, 8, 8);
        CFRelease(v5);
        if (v7)
        {
          CFRelease(v7);
        }
      }

      else
      {
        os_unfair_lock_unlock(&sEmailAddressMappingLock);
        return 0;
      }
    }
  }

  return Mutable;
}

__CFArray *_SICreateContactSMSCounts(const void *a1)
{
  Mutable = 0;
  if (a1 && sKnownContactCounts)
  {
    os_unfair_lock_lock(&sContactCountsLock);
    Value = CFDictionaryGetValue(sKnownContactCounts, a1);
    v4 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    os_unfair_lock_unlock(&sContactCountsLock);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 8, MEMORY[0x1E695E9C0]);
    initCountsArray_block_invoke(&__block_literal_global_634, Mutable, 8);
    readFromAllCountsArray_block_invoke_3(&__block_literal_global_641, v4, Mutable, 16, 8);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  return Mutable;
}

double SIGetAccumulatedWorkTimeSinceLastSync(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 2152);
  }

  else
  {
    return 0.0;
  }
}

uint64_t SISetAccumulatedWorkBoundaryCrossCallback(uint64_t result, uint64_t (*a2)(uint64_t, double), uint64_t a3, double a4, double a5)
{
  *(result + 2168) = a3;
  *(result + 2176) = a4;
  *(result + 2184) = a5;
  *(result + 2160) = a2;
  if (a2)
  {
    v5 = *(result + 2152);
    if (v5 >= a4 || v5 > a5)
    {
      return a2(a3, v5);
    }
  }

  return result;
}

uint64_t SIMoveDirectories(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && *(a1 + 6624) && *(a1 + 1048))
  {
    if ((a3 & 7) != 0)
    {
      v17 = __si_assert_copy_extra_661(-1);
      v18 = v17;
      v19 = "";
      if (v17)
      {
        v19 = v17;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 34199, "(count & 0x7) == 0", v19);
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

    if (dword_1EBF46ADC >= 5)
    {
      v21 = a3;
      v22 = *__error();
      v23 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v23, OS_LOG_TYPE_DEFAULT, "Do directory move.", buf, 2u);
      }

      *__error() = v22;
      a3 = v21;
    }

    v5 = 0;
    v6 = 0;
    v7 = a3 >> 3;
    while (v7 > v5)
    {
      v8 = a2 + 8 * v5;
      if (*v8)
      {
        ++v6;
      }

      v5 += *(v8 + 8) + 2;
      if (v7 < v5)
      {
        return 0;
      }
    }

    if (v6)
    {
      v9 = malloc_type_calloc(1uLL, 8 * v6 + 32, 0x1020040D2389C4FuLL);
      v10 = v9;
      v11 = 0;
      v9[1] = a1;
      v12 = v9 + 4;
      while (v7 > v11)
      {
        v13 = a2 + 8 * v11;
        v14 = *v13;
        if (*v13)
        {
          v15 = v9[2];
          v9[2] = v15 + 1;
          v12[v15] = v14;
        }

        v11 += *(v13 + 8) + 2;
        if (v7 < v11)
        {
          free(v9);
          return 0;
        }
      }

      journalMoves(a1, v9[2], v12, 0);
      si_enqueue_barrier(*(a1 + 1048), moveDirectories, v10);
    }

    if (dword_1EBF46ADC >= 5)
    {
      v24 = *__error();
      v25 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 0;
        _os_log_impl(&dword_1C278D000, v25, OS_LOG_TYPE_DEFAULT, "Leave.", v26, 2u);
      }

      *__error() = v24;
    }
  }

  return 1;
}

void journalMoves(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = 8 * a2;
    v9 = malloc_type_malloc(8 * a2 + 12, 0x10000403E1C8BA9uLL);
    v10 = v9;
    if (a4)
    {
      v11 = -265421075;
    }

    else
    {
      v11 = -266469651;
    }

    *v9 = v11;
    v12 = v9 + 3;
    if (a2 >= 1)
    {
      v13 = a2;
      do
      {
        v14 = *a3++;
        *v12++ = v14;
        --v13;
      }

      while (v13);
    }

    v9[1] = v8;
    v9[2] = a2;
    pthread_mutex_lock((a1 + 1632));
    JournalFd = getJournalFd(a1, 0, 0);
    v16 = fd_write(JournalFd, v10, (v8 & 0xFFFFFFF8) + 12);
    pthread_mutex_unlock((a1 + 1632));
    if (v16 == -1)
    {
      v17 = *__error();
      v18 = *__error();
      v19 = _SILogForLogForCategory(4);
      v20 = 2 * (dword_1EBF46ADC < 4);
      if (os_log_type_enabled(v19, v20))
      {
        v22[0] = 67109120;
        v22[1] = v17;
        _os_log_impl(&dword_1C278D000, v19, v20, "Error writing to log file: %d", v22, 8u);
      }

      *__error() = v18;
    }

    free(v10);
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t SIMoveFiles(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 6624) && *(a1 + 1048))
  {
    if ((a3 & 7) != 0)
    {
      v22 = __si_assert_copy_extra_661(-1);
      v23 = v22;
      v24 = "";
      if (v22)
      {
        v24 = v22;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 34249, "(count & 0x7) == 0", v24);
      free(v23);
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

    if (dword_1EBF46ADC >= 5)
    {
      v26 = *__error();
      v27 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v27, OS_LOG_TYPE_DEFAULT, "Do directory move.", buf, 2u);
      }

      *__error() = v26;
    }

    v6 = 0;
    v7 = 0;
    v8 = a3 >> 3;
    while (v8 > v6)
    {
      v9 = a2 + 8 * v6;
      if (*v9)
      {
        ++v7;
      }

      v6 += *(v9 + 8) + 2;
      if (v8 < v6)
      {
        return 0;
      }
    }

    if (v7)
    {
      v11 = malloc_type_calloc(1uLL, 8 * v7 + 32, 0x1020040D2389C4FuLL);
      v12 = v11;
      v13 = 0;
      v11[1] = a1;
      v14 = v11 + 4;
      while (v8 > v13)
      {
        v15 = a2 + 8 * v13;
        v16 = *v15;
        if (*v15)
        {
          v17 = v11[2];
          v11[2] = v17 + 1;
          v14[v17] = v16;
        }

        v13 += *(v15 + 8) + 2;
        if (v8 < v13)
        {
          v18 = __si_assert_copy_extra_661(-1);
          v19 = v18;
          v20 = "";
          if (v18)
          {
            v20 = v18;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 34276, "i<=count/8", v20);
          free(v19);
          if (__valid_fs(-1))
          {
            v21 = 2989;
          }

          else
          {
            v21 = 3072;
          }

          *v21 = -559038737;
          abort();
        }
      }

      journalMoves(a1, v11[2], v14, 1);
      si_enqueue_barrier(*(a1 + 1048), moveFiles, v12);
    }

    if (dword_1EBF46ADC >= 5)
    {
      v28 = *__error();
      v29 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 0;
        _os_log_impl(&dword_1C278D000, v29, OS_LOG_TYPE_DEFAULT, "Leave.", v30, 2u);
      }

      *__error() = v28;
    }
  }

  return 1;
}

void moveFiles(void *a1, int a2)
{
  if (!a2)
  {
    Current = CFAbsoluteTimeGetCurrent();
    innerMoveFiles(a1);
    bumpWorkTime(a1[1], Current);
  }

  free(a1);
}

CFDictionaryRef __isEntitledForAttribute_block_invoke()
{
  __dst[61] = *MEMORY[0x1E69E9840];
  memcpy(__dst, off_1E81912C8, 0x1E8uLL);
  memcpy(values, &unk_1C2BFAFA0, sizeof(values));
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], __dst, values, 61, &kCStringDictionaryKeyCallBacks, &kIntDictionaryValueCallBacks);
  isEntitledForAttribute_attributeEntitlementMapping = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

__CFArray *SICopyCorrections(uint64_t a1, const __CFString *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  makeThreadId();
  if (a1)
  {
    bzero(buf, 0x404uLL);
    MutableCopy = CFStringCreateMutableCopy(0, 1024, a2);
    CFStringNormalize(MutableCopy, kCFStringNormalizationFormC);
    CFStringLowercase(MutableCopy, 0);
    v48 = 0;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v47[0] = 5;
    v47[1] = &v49;
    v5 = *(a1 + 1312);
    v49 = *(a1 + 1320);
    v50 = v5;
    v6 = *(a1 + 1352);
    v7 = *(a1 + 1336);
    *&v52 = *(a1 + 1344);
    *(&v52 + 1) = v7;
    v8 = *(a1 + 1380);
    *&v53 = *(a1 + 1384);
    *(&v53 + 1) = v8;
    v9 = *(a1 + 1256);
    *&v54 = *(a1 + 1368);
    *(&v54 + 1) = v9;
    v10 = *(a1 + 1272);
    *&v55 = *(a1 + 1264);
    *(&v55 + 1) = v10;
    v57 = 0;
    *&v56 = -1;
    *&v51 = 0;
    *(&v51 + 1) = v6;
    v50 = 0;
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v12 = setThreadIdAndInfo(-1, sMappingExceptionCallbacks, v47, 0, add_explicit + 1);
    v45 = HIDWORD(v12);
    v46 = v12;
    v44 = __PAIR64__(v13, v14);
    v15 = threadData[9 * v12 + 1] + 320 * HIDWORD(v12);
    *(v15 + 216) = 0;
    v16 = *(v15 + 312);
    v17 = *(v15 + 224);
    v18 = v15;
    if (v17)
    {
      v17(*(v15 + 288));
    }

    v43 = v46;
    v42 = v45;
    v41 = v44;
    if (_setjmp(v18))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v40 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v40, 2u);
      }

      v18[78] = v16;
      CIOnThreadCleanUpReset(v41);
      dropThreadId(v43, 1, add_explicit + 1);
      CICleanUpReset(v43, HIDWORD(v41));
    }

    else
    {
      if (CFStringGetCString(MutableCopy, v59, 1024, 0x8000100u) && (*buf = 0, v25 = strlen(v59), (v26 = data_map32_id_get_with_key_noextra(a1, v59, v25 + 1)) != 0))
      {
        v27 = *(data_map32_get_data(a1, v26, 0) - 4);
        if (v27 && (v28 = data_map32_get_data(a1, v27, 0), v29 = *(v28 - 4), (v29 - 257) >= 0xFFFFFF00))
        {
          v32 = v28;
          Mutable = CFArrayCreateMutable(0, v29, MEMORY[0x1E695E9C0]);
          v34 = v32;
          v35 = v29;
          do
          {
            v36 = v34 + 1;
            data = data_map32_get_data(a1, *v34, 0);
            if (data)
            {
              v38 = CFStringCreateWithCString(0, data, 0x8000100u);
              if (v38)
              {
                v39 = v38;
                CFArrayAppendValue(Mutable, v38);
                CFRelease(v39);
              }
            }

            v34 = v36;
            --v35;
          }

          while (v35);
          v48 = 1;
          v19 = Mutable;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      v30 = threadData[9 * v43 + 1] + 320 * v42;
      *(v30 + 312) = v16;
      v31 = *(v30 + 232);
      if (v31)
      {
        v31(*(v30 + 288));
      }

      dropThreadId(v43, 0, add_explicit + 1);
      if (!v19 || (v48 & 1) != 0)
      {
        goto LABEL_9;
      }

      CFRelease(v19);
    }

    v19 = 0;
LABEL_9:
    CFRelease(MutableCopy);
    result = v19;
    goto LABEL_13;
  }

  v21 = *__error();
  v22 = _SILogForLogForCategory(10);
  v23 = dword_1EBF46AF4 < 3;
  if (os_log_type_enabled(v22, (dword_1EBF46AF4 < 3)))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, v22, v23, "*warn* invalid corrections commit", buf, 2u);
  }

  *__error() = v21;
  result = 0;
LABEL_13:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void SICorrectionCommit(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 1462);
    if (!_data_map32_commit(a1, 0))
    {
      v3 = *(a1 + 1272);
      if (v3)
      {
        v4 = *(v3 + 44);
        if (v4 != -1)
        {
          bzero(v28, 0x400uLL);
          v5 = fd_name(v3, v28, 0x400uLL);
          if (v5)
          {
            v6 = v5;
            v7 = strlen(v5);
            if (v7 >= 8)
            {
              v8 = &v6[v7 - 7];
              if (!strcmp(v8, ".header"))
              {
                strcpy(v8, ".map");
                v9 = v2 ? 3 : 0;
                v10 = fd_create_protected(v4, v6, 1538, v9);
                if (v10)
                {
                  v11 = v10;
                  v12 = (*(a1 + 1376) + 103) & 0x1FFFFFFF8;
                  v13 = (*(a1 + 1348) + v12 + 15) & 0x3FFFFFFF8;
                  v14 = (*(a1 + 1328) + v13 + 15) & 0x7FFFFFFF8;
                  if (fd_truncate(v10, v14) || (v19 = fd_mmap(v11), v19 == -1))
                  {
                    _fd_unlink_with_origin(v11, 0);
                    fd_release(v11);
                  }

                  else
                  {
                    v20 = v19;
                    v21 = *(a1 + 1296);
                    v22 = *v21;
                    v23 = v21[1];
                    v24 = v21[2];
                    *(v19 + 48) = *(v21 + 6);
                    *(v19 + 16) = v23;
                    *(v19 + 32) = v24;
                    *v19 = v22;
                    *(v19 + 56) = 13;
                    *(v19 + 60) = v14;
                    *(v19 + 64) = 88;
                    *(v19 + 68) = v12;
                    *(v19 + 72) = v13;
                    memcpy((v19 + 88), *(a1 + 1384), *(a1 + 1376));
                    memcpy(&v20[v12], *(a1 + 1352), *(a1 + 1348));
                    memcpy(&v20[v13], *(a1 + 1320), *(a1 + 1328));
                    fd_system_status_stall_if_busy();
                    msync(v20, v14, 16);
                    munmap(v20, v14);
                    fd_release(v11);
                    free(*(a1 + 1296));
                    *(a1 + 1296) = 0;
                    _fd_unlink_with_origin(*(a1 + 1272), 0);
                    fd_release(*(a1 + 1272));
                    *(a1 + 1272) = 0;
                    munmap(*(a1 + 1384), *(a1 + 1380));
                    *(a1 + 1384) = -1;
                    _fd_unlink_with_origin(*(a1 + 1368), 0);
                    fd_release(*(a1 + 1368));
                    *(a1 + 1368) = 0;
                    munmap(*(a1 + 1352), *(a1 + 1344));
                    *(a1 + 1352) = -1;
                    _fd_unlink_with_origin(*(a1 + 1336), 0);
                    fd_release(*(a1 + 1336));
                    *(a1 + 1336) = 0;
                    munmap(*(a1 + 1320), *(a1 + 1312));
                    *(a1 + 1320) = -1;
                    _fd_unlink_with_origin(*(a1 + 1304), 0);
                    fd_release(*(a1 + 1304));
                    *(a1 + 1304) = 0;
                    if (*(a1 + 1462))
                    {
                      v25 = 3;
                    }

                    else
                    {
                      v25 = 0;
                    }

                    v26 = fd_create_protected(v4, v6, 0, v25);
                    *(a1 + 1272) = v26;
                    v27 = fd_mmap(v26);
                    if (v27 != -1)
                    {
                      *(a1 + 1256) = v27;
                      *(a1 + 1296) = v27;
                      *(a1 + 1384) = v27 + v27[16];
                      *(a1 + 1352) = v27 + v27[17];
                      *(a1 + 1320) = v27 + v27[18];
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v15 = *__error();
    v16 = _SILogForLogForCategory(10);
    v17 = dword_1EBF46AF4 < 3;
    if (os_log_type_enabled(v16, (dword_1EBF46AF4 < 3)))
    {
      *v28 = 0;
      _os_log_impl(&dword_1C278D000, v16, v17, "*warn* invalid corrections commit", v28, 2u);
    }

    *__error() = v15;
  }

  v18 = *MEMORY[0x1E69E9840];
}

void SICorrectionDestory(uint64_t a1)
{
  if (a1)
  {
    data_map32_destroy(a1);
  }
}

uint64_t SICorrectionCreate(const __CFString *a1, int a2, int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  if (!CFStringGetCString(a1, buffer, 1024, 0x8000100u))
  {
    strcpy(buffer, "default_corrections");
  }

  v9 = 0u;
  v10 = 0u;
  if (a3)
  {
    v6 = 9;
  }

  else
  {
    v6 = 10;
  }

  v12 = 0uLL;
  v13 = 0uLL;
  v11 = 0uLL;
  LODWORD(v9) = a2;
  *(&v9 + 1) = buffer;
  LODWORD(v10) = 4;
  DWORD1(v10) = v6;
  result = data_map32_init_with_ctx(&v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void SIAddCorrection(uint64_t a1, CFStringRef theString, const __CFArray *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v16 = *__error();
    v17 = _SILogForLogForCategory(10);
    v18 = dword_1EBF46AF4 < 3;
    if (os_log_type_enabled(v17, (dword_1EBF46AF4 < 3)))
    {
      *v25 = 0;
      _os_log_impl(&dword_1C278D000, v17, v18, "*warn* no correction dict passed", v25, 2u);
    }

    *__error() = v16;
    goto LABEL_21;
  }

  MutableCopy = CFStringCreateMutableCopy(0, 1024, theString);
  CFStringNormalize(MutableCopy, kCFStringNormalizationFormC);
  theStringa = MutableCopy;
  CFStringLowercase(MutableCopy, 0);
  bzero(v25, 0x404uLL);
  Count = CFArrayGetCount(a3);
  bzero(&v29, 0x404uLL);
  if (Count < 1)
  {
    v15 = 4;
    goto LABEL_20;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a3, v8);
    if (CFStringGetLength(ValueAtIndex) >= 1025)
    {
      v10 = *__error();
      v11 = _SILogForLogForCategory(10);
      v12 = dword_1EBF46AF4 < 3;
      if (os_log_type_enabled(v11, (dword_1EBF46AF4 < 3)))
      {
        *buf = 138412290;
        v28 = theStringa;
        _os_log_impl(&dword_1C278D000, v11, v12, "*warn* exceeded max for %@", buf, 0xCu);
      }

      *__error() = v10;
      goto LABEL_11;
    }

    v29 = 0;
    if (CFStringGetCString(ValueAtIndex, v30, 1024, 0x8000100u))
    {
      break;
    }

LABEL_11:
    if (Count == ++v8)
    {
      v15 = 4 * v7 + 4;
      goto LABEL_20;
    }
  }

  v13 = strlen(v30);
  data_id = _data_map32_get_data_id(a1, *(a1 + 224), &v29, v13 + 5, 1);
  if (v7 != 256)
  {
    v26[v7++] = data_id;
    *v25 = v7;
    goto LABEL_11;
  }

  v19 = *__error();
  v20 = _SILogForLogForCategory(10);
  v21 = dword_1EBF46AF4 < 3;
  if (os_log_type_enabled(v20, (dword_1EBF46AF4 < 3)))
  {
    *buf = 138412290;
    v28 = theStringa;
    _os_log_impl(&dword_1C278D000, v20, v21, "*warn* correctDict exceeded max for %@", buf, 0xCu);
  }

  *__error() = v19;
  v15 = 1028;
LABEL_20:
  v29 = _data_map32_get_data_id(a1, *(a1 + 224), v25, v15, 1);
  CFStringGetCString(theStringa, v30, 1024, 0x8000100u);
  v22 = strlen(v30);
  _data_map32_get_data_id(a1, *(a1 + 224), &v29, v22 + 5, 1);
  CFRelease(theStringa);
LABEL_21:
  v23 = *MEMORY[0x1E69E9840];
}

uint64_t _SIGetLastUsedDate(int a1, char *path, _OWORD *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_9;
  }

  v7 = 0uLL;
  v8 = 0;
  if (a1 == -1)
  {
    if (!path)
    {
LABEL_9:
      *__error() = 22;
      goto LABEL_10;
    }

    v4 = getxattr(path, "com.apple.lastuseddate#PS", &v7, 0x18uLL, 0, 0);
    if (v4 < 0)
    {
LABEL_10:
      result = 0xFFFFFFFFLL;
      goto LABEL_11;
    }
  }

  else
  {
    v4 = fgetxattr(a1, "com.apple.lastuseddate#PS", &v7, 0x18uLL, 0, 0);
    if (v4 < 0)
    {
      goto LABEL_10;
    }
  }

  if (v4 != 16)
  {
    goto LABEL_9;
  }

  result = 0;
  *a3 = v7;
LABEL_11:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SISetLastUsedDate(int a1, char *path, __int128 *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_6;
  }

  v5 = *a3;
  if (a1 == -1)
  {
    if (path)
    {
      result = setxattr(path, "com.apple.lastuseddate#PS", &v5, 0x10uLL, 0, 0);
      goto LABEL_7;
    }

LABEL_6:
    *__error() = 22;
    result = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

  result = fsetxattr(a1, "com.apple.lastuseddate#PS", &v5, 0x10uLL, 0, 0);
LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFDictionaryRef _SIUserCopyUserFSCriteriaForQuery(char *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1 && (query_node_with_ann = db_make_query_node_with_ann(a1, 0)) != 0)
  {
    v2 = query_node_with_ann;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2000000000;
    v26 = 1;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2000000000;
    v22 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2000000000;
    v18 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = ___SIUserCopyUserFSCriteriaForQuery_block_invoke;
    v14[3] = &unk_1E81914B8;
    v14[4] = &v23;
    v14[5] = &v15;
    v14[6] = &v19;
    keys = MEMORY[0x1E69E9820];
    v30 = 0x40000000;
    v31 = __db_query_tree_apply_block_block_invoke;
    v32 = &unk_1E8198ED0;
    v33 = v14;
    db_query_tree_apply_block_with_meta(query_node_with_ann, &keys, 0);
    if (*(v24 + 24) == 1 && ((v3 = v16[3]) != 0 || v20[3]))
    {
      keys = 0;
      v30 = 0;
      v31 = 0;
      values = 0;
      v28[0] = 0;
      v28[1] = 0;
      v4 = *MEMORY[0x1E695E4D0];
      if (v3 == *MEMORY[0x1E695E4D0])
      {
        p_values = v28;
        p_keys = &v30;
        keys = @"kMDItemIsTrashed";
        values = v3;
        v5 = 1;
      }

      else
      {
        v5 = 0;
        p_keys = &keys;
        p_values = &values;
      }

      *p_keys = @"LISearchObjTypeReturnAll";
      v9 = v5 + 1;
      *p_values = v4;
      v10 = v20[3];
      if (v10)
      {
        *(&keys + v9) = @"LISearchFileNameContains";
        v28[v9 - 1] = v10;
        v9 = v5 | 2;
      }

      v8 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, v9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    else
    {
      v8 = 0;
    }

    v11 = v20[3];
    if (v11)
    {
      CFRelease(v11);
    }

    keys = MEMORY[0x1E69E9820];
    v30 = 0x40000000;
    v31 = __db_query_tree_apply_block_block_invoke;
    v32 = &unk_1E8198ED0;
    v33 = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(v2, &keys, 0);
    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v8 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

void SIFixupPaths(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (*(a1 + 1064))
  {
    v6 = malloc_type_malloc(0x10uLL, 0x60040FAFB2B2FuLL);
    *v6 = a1;
    v6[1] = RLEOIDArrayCreate(*MEMORY[0x1E695E480], a2, a3);
    v7 = *(a1 + 1064);

    si_enqueue_work(v7, fixupOrphanItems, v6);
  }
}

void SIFetchTopKTerms(uint64_t a1, void *a2)
{
  if (a1 && *(a1 + 1088))
  {
    v4 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
    *v4 = a1;
    v4[1] = _Block_copy(a2);
    v5 = *(a1 + 1088);

    si_enqueue_work(v5, get_topK, v4);
  }

  else
  {
    v6 = a2[2];

    v6(a2, 0);
  }
}

void get_topK(const void **a1, int a2)
{
  if (a2)
  {
    v3 = a1[1];
    (*(a1[1] + 2))();
  }

  else
  {
    v4 = *(*a1 + 83);
    v25[0] = _MDPlistContainerGetBytes();
    v5 = *(*a1 + 83);
    v25[1] = _MDPlistContainerGetLength();
    v25[2] = 0;
    v24[0] = 1;
    v24[1] = v25;
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v7 = setThreadIdAndInfo(-1, sMappingExceptionCallbacks, v24, 0, add_explicit + 1);
    v22 = HIDWORD(v7);
    v23 = v7;
    v21 = __PAIR64__(v8, v9);
    v10 = threadData[9 * v7 + 1] + 320 * HIDWORD(v7);
    *(v10 + 216) = 0;
    v11 = *(v10 + 312);
    v12 = *(v10 + 224);
    v13 = v10;
    if (v12)
    {
      v12(*(v10 + 288));
    }

    v20 = v23;
    v19 = v22;
    v18 = v21;
    if (_setjmp(v13))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v17, 2u);
      }

      v13[78] = v11;
      CIOnThreadCleanUpReset(v18);
      dropThreadId(v20, 1, add_explicit + 1);
      CICleanUpReset(v20, HIDWORD(v18));
    }

    else
    {
      v14 = *(*a1 + 83);
      (*(a1[1] + 2))();
      v15 = threadData[9 * v20 + 1] + 320 * v19;
      *(v15 + 312) = v11;
      v16 = *(v15 + 232);
      if (v16)
      {
        v16(*(v15 + 288));
      }

      dropThreadId(v20, 0, add_explicit + 1);
    }
  }

  _Block_release(a1[1]);
  free(a1);
}

void _SITransferBundles(uint64_t a1, uint64_t a2, const __CFArray *a3, int a4, const void *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "### transfer start", v23, 2u);
  }

  if (a3)
  {
    Count = CFArrayGetCount(a3);
  }

  else
  {
    Count = 0;
  }

  v11 = malloc_type_calloc(1uLL, 4 * Count + 84, 0x10E004052165109uLL);
  *v11 = a1;
  v11[1] = a2;
  *(v11 + 6) = a4;
  if (a5)
  {
    v11[4] = _Block_copy(a5);
  }

  if (Count)
  {
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        bzero(v23, 0x400uLL);
        ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
        if (CFStringGetCString(ValueAtIndex, v23, 1024, 0x8000100u))
        {
          v14 = strlen(v23);
          v15 = bundleIdHash(v23, v14 + 1);
          v16 = *(v11 + 18);
          *(v11 + 18) = v16 + 1;
          *(v11 + v16 + 19) = v15;
        }
      }
    }

    v17 = *(v11 + 18);
    if ((a4 & 2) == 0 && v17)
    {
      v18 = bundleIdHash("com.apple.searchd", 18);
      v19 = v11 + 4 * v17;
      LODWORD(v17) = v17 + 1;
      *(v11 + 18) = v17;
      *(v19 + 19) = v18;
    }
  }

  else
  {
    LODWORD(v17) = *(v11 + 18);
  }

  if (a1 == a2 || !a1 || !v17 || *(a1 + 2072) != 1 || !*(a1 + 1040))
  {
    *(v11 + 12) = 22;
    v20 = v11;
    v21 = 1;
LABEL_26:
    si_transferBundleItems(v20, v21);
    goto LABEL_27;
  }

  v11[2] = *(a1 + 1192);
  if ((a4 & 4) != 0)
  {
    *(v11 + 7) = 18;
    v20 = v11;
    v21 = 0;
    goto LABEL_26;
  }

  *(v11 + 7) = 0;
  si_enqueue_work(*(a1 + 1040), si_transferBundleItems, v11);
LABEL_27:
  v22 = *MEMORY[0x1E69E9840];
}

void si_transferBundleItems(unsigned int *a1, int a2)
{
  v52 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a1[12];
    if (!v3)
    {
      a1[12] = 89;
      v3 = 89;
    }
  }

  else
  {
    v41 = 0;
    v4 = db_clear_docids_setup(*(a1 + 2));
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    v5 = 0;
    memset(buf, 0, sizeof(buf));
    do
    {
      if (v5 != a1[7])
      {
        buf[v5] = _si_scheduler_suspend(*(*a1 + 8 * v5 + 864), "SpotlightIndex.c", 35843);
      }

      ++v5;
    }

    while (v5 != 18);
    v43 = 0u;
    memset(v42, 0, sizeof(v42));
    if (*(a1 + 1))
    {
      v6 = v42;
      v7 = 108;
      do
      {
        v8 = v7;
        v9 = v6;
        *v6 = _si_scheduler_suspend(*(*(a1 + 1) + 8 * v7), "SpotlightIndex.c", 35853);
        v7 = v8 + 1;
        v6 = v9 + 1;
      }

      while (v8 != 125);
    }

    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v11 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, add_explicit + 1);
    v39 = HIDWORD(v11);
    v40 = v11;
    v38 = __PAIR64__(v12, v13);
    v14 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
    v15 = *(v14 + 312);
    v16 = *(v14 + 224);
    if (v16)
    {
      v16(*(v14 + 288));
    }

    v37 = v40;
    v36 = v39;
    v35 = v38;
    if (_setjmp(v14))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v34[0] = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v34, 2u);
      }

      *(v14 + 312) = v15;
      CIOnThreadCleanUpReset(v35);
      dropThreadId(v37, 1, add_explicit + 1);
      CICleanUpReset(v37, HIDWORD(v35));
      v17 = 0;
    }

    else
    {
      v18 = db_clear_docids_matching_bundles(*(a1 + 2), v4, *(*a1 + 6592), a1 + 19, a1[18], transfer_bundles_match, a1);
      v41 = 1;
      v19 = threadData[9 * v37 + 1] + 320 * v36;
      *(v19 + 312) = v15;
      v20 = *(v19 + 232);
      if (v20)
      {
        v20(*(v19 + 288));
      }

      dropThreadId(v37, 0, add_explicit + 1);
      v17 = v18;
    }

    if (v41)
    {
      v21 = v17;
    }

    else
    {
      v21 = -1;
    }

    transfer_index_if_needed(a1, 0);
    db_clear_docids_cleanup(*(a1 + 2), v4);
    if (*(a1 + 1))
    {
      v22 = &v43 + 1;
      v23 = 125;
      do
      {
        v24 = v23;
        v25 = v22 - 1;
        si_scheduler_resume(*(*(a1 + 1) + 8 * v23), *v22, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 35875);
        v23 = v24 - 1;
        v22 = v25;
      }

      while (v24 != 108);
    }

    for (i = 0; i != -18; --i)
    {
      if (i + 17 != a1[7])
      {
        si_scheduler_resume(*(*a1 + 8 * i + 1000), *(&v51 + i + 1), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 35884);
      }
    }

    if (a1[12])
    {
      v27 = 1;
    }

    else
    {
      v27 = v21 == 0;
    }

    v28 = a1[12];
    if (!v27)
    {
      a1[12] = v21;
      v28 = v21;
    }

    v3 = v28;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v29 = *(a1 + 5);
    LODWORD(buf[0]) = 67109376;
    HIDWORD(buf[0]) = v3;
    LOWORD(buf[1]) = 2048;
    *(&buf[1] + 2) = v29;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "### transfer complete res:%d matches:%lu", buf, 0x12u);
  }

  v30 = *(a1 + 4);
  if (v30)
  {
    (*(v30 + 16))(v30, a1[12]);
    _Block_release(*(a1 + 4));
  }

  v31 = *(a1 + 7);
  if (v31)
  {
    CFRelease(v31);
  }

  v32 = *(a1 + 8);
  if (v32)
  {
    CFRelease(v32);
  }

  free(a1);
  v33 = *MEMORY[0x1E69E9840];
}

void transfer_index_if_needed(uint64_t a1, CFDictionaryRef theDict)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!theDict)
  {
    v5 = (a1 + 64);
    if (!*(a1 + 64))
    {
      goto LABEL_34;
    }

    Value = 0;
    goto LABEL_9;
  }

  Value = CFDictionaryGetValue(theDict, @"_kMDItemBundleID");
  v5 = (a1 + 64);
  if (!*(a1 + 64))
  {
    goto LABEL_22;
  }

  if (!Value || *(a1 + 52) > 512)
  {
LABEL_9:
    _MDPlistContainerAddNullValue();
    v7 = *(a1 + 64);
    _MDPlistContainerEndArray();
    v8 = *(a1 + 64);
    _MDPlistContainerEndContainer();
    v9 = *(a1 + 52);
    if (v9)
    {
      v10 = *(a1 + 56);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v10;
        *&buf[12] = 1024;
        *&buf[14] = v9;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "### transfering %@ %d items", buf, 0x12u);
        v9 = *(a1 + 52);
      }

      if (v9 >= 1)
      {
        for (i = 0; i < v9; ++i)
        {
          memset(buf, 0, sizeof(buf));
          v12 = *(a1 + 64);
          _MDPlistGetRootPlistObjectFromPlist();
          v13 = *(a1 + 8);
          v32 = *buf;
          v33 = *&buf[16];
          _MDPlistArrayGetPlistObjectAtIndex();
          v33 = 0;
          v32 = 0u;
          if (processOneCS(v13, -1, v10, 0, 0, v34, &v32, 0, 0, 0, 0, 0, 0, &v35))
          {
            v14 = malloc_type_calloc(1uLL, 0x60uLL, 0x10B0040E0DE4348uLL);
            v15 = *(a1 + 8);
            *v14 = v15;
            LiveIndex = si_getLiveIndex(*(v15 + 1384));
            v14[1] = LiveIndex;
            v17 = LiveIndex[14];
            *(v14 + 4) = 2;
            *(v14 + 5) = v17;
            _flushCache(v14, 0);
          }

          v9 = *(a1 + 52);
        }
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 56);
        *buf = 138412546;
        *&buf[4] = v18;
        *&buf[12] = 1024;
        *&buf[14] = v9;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "### transferred %@ %d items", buf, 0x12u);
      }
    }

    v19 = *(a1 + 56);
    if (v19)
    {
      CFRelease(v19);
      *(a1 + 56) = 0;
    }

    CFRelease(*(a1 + 64));
    *(a1 + 64) = 0;
    *(a1 + 52) = 0;
LABEL_22:
    if (!Value)
    {
      goto LABEL_34;
    }

    goto LABEL_23;
  }

  if (!CFEqual(*(a1 + 56), Value))
  {
    v6 = *v5;
    goto LABEL_9;
  }

LABEL_23:
  Count = CFDictionaryGetCount(theDict);
  v21 = &v32;
  MEMORY[0x1EEE9AC00](Count);
  v22 = (&v32 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v22, 8 * Count);
  MEMORY[0x1EEE9AC00](v23);
  v24 = v22;
  bzero(v22, 8 * Count);
  CFDictionaryGetKeysAndValues(theDict, v22, v22);
  if (!*v5)
  {
    v25 = *MEMORY[0x1E695E480];
    *(a1 + 64) = _MDPlistContainerCreateMutable();
    _MDPlistContainerBeginContainer();
    v26 = *(a1 + 64);
    _MDPlistContainerBeginArray();
    *(a1 + 56) = CFRetain(Value);
  }

  if (CFDictionaryGetValue(theDict, @"_kMDItemExternalID"))
  {
    v27 = *v5;
    _MDPlistContainerBeginDictionary();
    if (Count >= 1)
    {
      do
      {
        v28 = *v22;
        if (!CFEqual(*v22, @"kMDItemAttributeChangeDate") && !CFEqual(v28, @"_kMDItemProtectionClass") && !CFEqual(v28, @"_kMDItemGroupId") && !CFEqual(v28, @"_kMDItemTransfered"))
        {
          v29 = v21;
          v30 = *v24;
          _MDPlistContainerAddObject();
          v21 = v29;
          _MDPlistContainerAddObject();
        }

        ++v24;
        ++v22;
        --Count;
      }

      while (Count);
    }

    _MDPlistContainerAddObject();
    _MDPlistContainerAddBooleanValue();
    _MDPlistContainerEndDictionary();
    ++*(a1 + 52);
  }

LABEL_34:
  v31 = *MEMORY[0x1E69E9840];
}

uint64_t transfer_bundles_match(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 72) + ((*(a2 + 24) >> 1) & 1u) - 1;
  if (*(a2 + 72) + ((*(a2 + 24) >> 1) & 1) == 1)
  {
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  v5 = 76;
  while (*(a2 + v5) != *(a1 + 4))
  {
    v5 += 4;
    if (!--v2)
    {
      goto LABEL_10;
    }
  }

  v25 = 0;
  v26 = 0;
  if (db_get_field(*(a2 + 16), a1, "_kMDItemExternalID", &v26, &v25) || (*buf = 0, db_get_field(*(a2 + 16), a1, "_kMDItemBundleID", &v26, buf)) || ((*(v26 + 2) & 0x10) != 0 ? (v9 = db_get_string_for_id(*(a2 + 16), *(v26 + 13)) != 0) : (v9 = 1), !v9 || !v25))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = *a1;
      *buf = 134217984;
      *&buf[4] = v12;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "### transfer oid: 0x%llx - could not resolve bundle and identifier", buf, 0xCu);
    }

    goto LABEL_10;
  }

  ++*(a2 + 40);
  v10 = decodeDBOToDictionary(*(a2 + 16), a1, 0, 0, 0, 0, 0, 0, 2, *MEMORY[0x1E695E480]);
  v11 = v10;
  if (*(a2 + 8))
  {
    transfer_index_if_needed(a2, v10);
  }

  else
  {
    Count = CFDictionaryGetCount(v10);
    MEMORY[0x1EEE9AC00](Count);
    v14 = (&v25 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v14, 8 * Count);
    MEMORY[0x1EEE9AC00](v15);
    v16 = v14;
    bzero(v14, 8 * Count);
    CFDictionaryGetKeysAndValues(v11, v14, v14);
    if (Count >= 1)
    {
      do
      {
        v17 = *v14;
        if (!CFEqual(*v14, @"_kMDItemBundleID") && !CFEqual(v17, @"_kMDItemExternalID"))
        {
          v18 = CFGetTypeID(*v16);
          if (v18 != CFArrayGetTypeID())
          {
            CFDictionaryGetTypeID();
          }
        }

        ++v16;
        ++v14;
        --Count;
      }

      while (Count);
    }
  }

  CFRelease(v11);
  if (*(a2 + 24))
  {
    goto LABEL_10;
  }

  v19 = *(a1 + 32);
  if (v19 && (v20 = si_indexForDocId(*a2, *(a1 + 32))) != 0)
  {
    v21 = v20;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v22 = *a1;
      *buf = 134218240;
      *&buf[4] = v22;
      v28 = 2048;
      v29 = v19;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "### index delete oid: 0x%llx did: 0x%llx", buf, 0x16u);
      v23 = *(a1 + 32);
    }

    v24 = *a1;
    v6 = 1;
    _CIDelete(v21);
  }

  else
  {
    v6 = 1;
  }

LABEL_11:
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void _SIDeleteBundles(uint64_t a1, const __CFArray *a2, unsigned int a3, const void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "### delete bundles journal start", v21, 2u);
  }

  if (a2)
  {
    Count = CFArrayGetCount(a2);
  }

  else
  {
    Count = 0;
  }

  v9 = malloc_type_calloc(1uLL, 4 * Count + 52, 0x10A00404FE9ED91uLL);
  *v9 = a1;
  v9[4] = a3;
  if (a4)
  {
    *(v9 + 3) = _Block_copy(a4);
  }

  if (Count)
  {
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        bzero(v21, 0x400uLL);
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        if (CFStringGetCString(ValueAtIndex, v21, 1024, 0x8000100u))
        {
          v12 = strlen(v21);
          v13 = bundleIdHash(v21, v12 + 1);
          v14 = v9[11];
          v9[11] = v14 + 1;
          v9[v14 + 12] = v13;
        }
      }
    }

    v15 = v9[11];
    if ((a3 & 2) == 0 && v15)
    {
      v16 = bundleIdHash("com.apple.searchd", 18);
      v17 = &v9[v15];
      LODWORD(v15) = v15 + 1;
      v9[11] = v15;
      v17[12] = v16;
    }

    if (!a1)
    {
      goto LABEL_25;
    }
  }

  else
  {
    LODWORD(v15) = v9[11];
    if (!a1)
    {
LABEL_25:
      v9[10] = 22;
      v9[5] = 18;
      v18 = v9;
      v19 = 1;
LABEL_26:
      si_deleteBundleItems(v18, v19);
      goto LABEL_27;
    }
  }

  if (!v15 || *(a1 + 2072) != 1 || !*(a1 + 1040))
  {
    goto LABEL_25;
  }

  *(v9 + 1) = *(a1 + 1192);
  if ((a3 & 4) != 0)
  {
    v9[5] = 18;
    v18 = v9;
    v19 = 0;
    goto LABEL_26;
  }

  v9[5] = 0;
  si_enqueue_work(*(a1 + 1040), si_deleteBundleItems, v9);
LABEL_27:
  v20 = *MEMORY[0x1E69E9840];
}

void si_deleteBundleItems(unsigned int *a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a1[10];
    if (!v3)
    {
      a1[10] = 89;
      v3 = 89;
    }
  }

  else
  {
    v31 = 0;
    v4 = db_clear_docids_setup(*(a1 + 1));
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v5 = 0;
    memset(buf, 0, sizeof(buf));
    do
    {
      if (v5 != a1[5])
      {
        buf[v5] = _si_scheduler_suspend(*(*a1 + 8 * v5 + 864), "SpotlightIndex.c", 36040);
      }

      ++v5;
    }

    while (v5 != 18);
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v7 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, add_explicit + 1);
    v29 = HIDWORD(v7);
    v30 = v7;
    v28 = __PAIR64__(v8, v9);
    v10 = threadData[9 * v7 + 1] + 320 * HIDWORD(v7);
    v11 = *(v10 + 312);
    v12 = *(v10 + 224);
    if (v12)
    {
      v12(*(v10 + 288));
    }

    v27 = v30;
    v26 = v29;
    v25 = v28;
    if (_setjmp(v10))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v24 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v24, 2u);
      }

      *(v10 + 312) = v11;
      CIOnThreadCleanUpReset(v25);
      dropThreadId(v27, 1, add_explicit + 1);
      CICleanUpReset(v27, HIDWORD(v25));
      v13 = 0;
    }

    else
    {
      v13 = db_clear_docids_matching_bundles(*(a1 + 1), v4, *(*a1 + 6592), a1 + 12, a1[11], delete_bundles_match, a1);
      v31 = 1;
      v14 = threadData[9 * v27 + 1] + 320 * v26;
      *(v14 + 312) = v11;
      v15 = *(v14 + 232);
      if (v15)
      {
        v15(*(v14 + 288));
      }

      dropThreadId(v27, 0, add_explicit + 1);
    }

    v16 = v31;
    db_clear_docids_cleanup(*(a1 + 1), v4);
    for (i = 0; i != -18; --i)
    {
      if (i + 17 != a1[5])
      {
        si_scheduler_resume(*(*a1 + 8 * i + 1000), *(&v39 + i + 1), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 36060);
      }
    }

    if (v16)
    {
      v18 = v13;
    }

    else
    {
      v18 = -1;
    }

    if (a1[10])
    {
      v19 = 1;
    }

    else
    {
      v19 = v18 == 0;
    }

    v20 = a1[10];
    if (!v19)
    {
      a1[10] = v18;
      v20 = v18;
    }

    v3 = v20;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 4);
    LODWORD(buf[0]) = 67109376;
    HIDWORD(buf[0]) = v3;
    LOWORD(buf[1]) = 2048;
    *(&buf[1] + 2) = v21;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "### delete bundles complete res:%d matches:%lu", buf, 0x12u);
  }

  v22 = *(a1 + 3);
  if (v22)
  {
    (*(v22 + 16))(v22, a1[10]);
    _Block_release(*(a1 + 3));
  }

  free(a1);
  v23 = *MEMORY[0x1E69E9840];
}

uint64_t delete_bundles_match(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 44) + ((*(a2 + 16) >> 1) & 1u) - 1;
  if (*(a2 + 44) + ((*(a2 + 16) >> 1) & 1) == 1)
  {
LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  v5 = 48;
  while (*(a2 + v5) != *(a1 + 4))
  {
    v5 += 4;
    if (!--v2)
    {
      goto LABEL_19;
    }
  }

  v18 = 0;
  v19 = 0;
  string_for_id = 0;
  if (!db_get_field(*(a2 + 8), a1, "_kMDItemExternalID", &v19, &v18))
  {
    *buf = 0;
    string_for_id = 0;
    if (!db_get_field(*(a2 + 8), a1, "_kMDItemBundleID", &v19, buf))
    {
      if ((*(v19 + 2) & 0x10) != 0)
      {
        string_for_id = db_get_string_for_id(*(a2 + 8), *(v19 + 13));
      }

      else
      {
        string_for_id = (v19 + 13);
      }
    }
  }

  ++*(a2 + 32);
  v7 = *(a2 + 16);
  v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v8)
    {
      v14 = *a1;
      v15 = *(a1 + 32);
      *buf = 134218754;
      *&buf[4] = v14;
      v21 = 2048;
      v22 = v15;
      v23 = 2080;
      v24 = string_for_id;
      v25 = 2080;
      v26 = v18;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "### delete oid: 0x%llx did: 0x%llx %s %s", buf, 0x2Au);
    }

    goto LABEL_19;
  }

  if (v8)
  {
    v9 = *a1;
    v10 = *(a1 + 32);
    *buf = 134218754;
    *&buf[4] = v9;
    v21 = 2048;
    v22 = v10;
    v23 = 2080;
    v24 = string_for_id;
    v25 = 2080;
    v26 = v18;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "### delete oid: 0x%llx did: 0x%llx %s %s", buf, 0x2Au);
  }

  if (*(a1 + 32) && (v11 = si_indexForDocId(*a2, *(a1 + 32))) != 0)
  {
    v12 = *a1;
    v13 = 1;
    _CIDelete(v11);
  }

  else
  {
    v13 = 1;
  }

LABEL_20:
  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t *_SIGetDocumentCount(uint64_t a1, void *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  itemCounts(*(a1 + 1392), &v10, &v8);
  result = itemCounts(*(a1 + 1384), &v9, &v7);
  if (a3)
  {
    *a3 = v7 + v8;
  }

  if (a2)
  {
    *a2 = v9 + v10 - (v7 + v8);
  }

  return result;
}

uint64_t SIExecuteResumeActivityCallback(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 2360);
    if (v2)
    {
      v3 = *(v2 + 136);
      if (v3)
      {
        return v3(a2);
      }
    }
  }

  return result;
}

char *_SIGetFieldNameForId(uint64_t a1, int a2)
{
  if (a1 && (v2 = *(a1 + 1192)) != 0)
  {
    return db_get_field_name_for_id(v2, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t SISetHasPhotos(uint64_t result)
{
  if (result)
  {
    if ((*(result + 10112) & 1) == 0)
    {
      *(result + 10112) = 1;
      return SISetProperty(result, @"kSPHasPhotos", *MEMORY[0x1E695E4D0]);
    }
  }

  return result;
}

uint64_t SIHasPhotos(uint64_t result)
{
  if (result)
  {
    return *(result + 10112);
  }

  return result;
}

uint64_t SISetHasText(uint64_t result)
{
  if (result)
  {
    if ((*(result + 10113) & 1) == 0)
    {
      *(result + 10113) = 1;
      return SISetProperty(result, @"kSPHasText", *MEMORY[0x1E695E4D0]);
    }
  }

  return result;
}

uint64_t SIHasText(uint64_t result)
{
  if (result)
  {
    return *(result + 10113);
  }

  return result;
}

CFStringRef _SIDumpQueryInfo(CFStringRef result)
{
  v24 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    v10 = 0u;
    v9 = 0u;
    *buffer = 0u;
    bzero(v7, 0x400uLL);
    bzero(cStr, 0x800uLL);
    data = v1[20].data;
    if (data)
    {
      CFStringGetCString(data, buffer, 256, 0x8000100u);
    }

    else
    {
      __sprintf_chk(buffer, 0, 0x100uLL, "(null)");
    }

    info = v1->info;
    if (info)
    {
      CFStringGetCString(info, v7, 1024, 0x8000100u);
    }

    else
    {
      __sprintf_chk(v7, 0, 0x400uLL, "(null)");
    }

    isa = v1[19].isa;
    __sprintf_chk(cStr, 0, 0x800uLL, "qid:(%llu,%llu), pc:%d, live:%d, client:%s, queryString:%s", isa, v1[19].info, HIDWORD(v1[4].length), (LODWORD(v1[6].info) >> 10) & 1, buffer, v7);
    result = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

query_node *convertASTNodeToQueryNode(PRAstNode *a1, PRContext *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_55;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(PRAstNode *)a1 value])
    {
      if (([(PRAstNode *)a1 isIgnored]& 1) == 0)
      {
        v4 = [-[PRAstNode value](a1 "value")];
        if (v4)
        {
          v5 = v4;
          v48 = 0;
          v46 = 0u;
          *v47 = 0u;
          Attribs(&v46);
          v6 = v47[0];
          if ((*(a2 + 28) & 2) != 0)
          {
            if (v47[0])
            {
              v7 = 0;
              do
              {
                v28 = *(v6 + 10);
                if (v28 != 0.0)
                {
                  v29 = v6 + 16;
                  if (v6[39] < 0)
                  {
                    v29 = *v29;
                  }

                  QueryNode = createQueryNode(v29, v5, 112, 1, -1, v28, 0.0);
                  v7 = makeOrNode(v7, QueryNode);
                }

                v6 = *v6;
              }

              while (v6);
LABEL_66:
              std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v47[0]);
              v31 = v46;
              *&v46 = 0;
              if (!v31)
              {
                goto LABEL_56;
              }

              goto LABEL_82;
            }
          }

          else if (v47[0])
          {
            v7 = 0;
            do
            {
              v8 = v6 + 16;
              if (v6[39] < 0)
              {
                v8 = *v8;
              }

              v9 = createQueryNode(v8, v5, 112, 1, -1, 0.0, 0.0);
              v7 = makeOrNode(v7, v9);
              v6 = *v6;
            }

            while (v6);
            goto LABEL_66;
          }

          v7 = 0;
          goto LABEL_66;
        }
      }
    }

    goto LABEL_55;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(PRAstNode *)a1 filterString])
    {
      v10 = [-[PRAstNode filterString](a1 "filterString")];
      if (v10)
      {
        query_node_with_ann = db_make_query_node_with_ann(v10, 0);
        v7 = query_node_with_ann;
        if (query_node_with_ann && (*(a2 + 28) & 2) != 0)
        {
          db_query_tree_apply_block(query_node_with_ann, __block_literal_global_877, 0);
        }

        goto LABEL_56;
      }
    }

LABEL_55:
    v7 = 0;
    goto LABEL_56;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![(PRAstNode *)a1 expression])
    {
      goto LABEL_55;
    }

    *v41 = 0u;
    *v42 = 0u;
    v43 = 1065353216;
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    std::string::basic_string[abi:nn200100]<0>(&v55, "kMDItemAuthors");
    DWORD2(v56) = 1045220557;
    std::string::basic_string[abi:nn200100]<0>(&v57, "kMDItemAuthorEmailAddresses");
    DWORD2(v58) = 1041865114;
    std::unordered_map<std::string,float>::unordered_map(v45, &v55, 2);
    LODWORD(v46) = 1;
    std::unordered_map<std::string,float>::unordered_map(&v46 + 8, v45);
    std::string::basic_string[abi:nn200100]<0>(v51, "kMDItemRecipients");
    v52 = 1036831949;
    std::string::basic_string[abi:nn200100]<0>(v53, "kMDItemRecipientEmailAddresses");
    v54 = 1028443341;
    std::unordered_map<std::string,float>::unordered_map(__p, v51, 2);
    v49 = 2;
    std::unordered_map<std::string,float>::unordered_map(&v50, __p);
    std::unordered_map<int,std::unordered_map<std::string,float>>::unordered_map(&v38, &v46, 2);
    for (i = 7; i != -5; i -= 6)
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v47[i - 2]);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(__p[2]);
    v13 = __p[0];
    __p[0] = 0;
    if (v13)
    {
      operator delete(v13);
    }

    for (j = 0; j != -64; j -= 32)
    {
      if (v53[j + 23] < 0)
      {
        operator delete(*&v53[j]);
      }
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v45[2]);
    v15 = v45[0];
    v45[0] = 0;
    if (v15)
    {
      operator delete(v15);
    }

    for (k = 0; k != -64; k -= 32)
    {
      if (*(&v58 + k + 7) < 0)
      {
        operator delete(*(&v57 + k));
      }
    }

    v17 = [(PRAstNode *)a1 fieldType];
    if (v17)
    {
      if (v17 != 1)
      {
        Attribs(&v46);
        std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__move_assign(v41, &v46);
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v46);
        goto LABEL_73;
      }

      if (!std::__hash_table<std::__hash_value_type<int,std::unordered_set<std::string>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<std::string>>>>::find<int>(v38, *(&v38 + 1), 2))
      {
        goto LABEL_73;
      }

      *&v46 = &TOK_ID_TO;
      v18 = std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,float>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v38, 2);
    }

    else
    {
      if (!std::__hash_table<std::__hash_value_type<int,std::unordered_set<std::string>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<std::string>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<std::string>>>>::find<int>(v38, *(&v38 + 1), 1))
      {
        goto LABEL_73;
      }

      *&v46 = &TOK_ID_FROM;
      v18 = std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,float>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v38, 1);
    }

    if (v41 != (v18 + 3))
    {
      LODWORD(v43) = *(v18 + 14);
      std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,float>,void *> *>>(v41, v18[5]);
    }

LABEL_73:
    [(PRAstNode *)a1 expression:v38];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [objc_msgSend(-[PRAstNode expression](a1 "expression")];
      if (v32)
      {
        v7 = MsgAttribNode(*(a2 + 7), v42[0], v32);
        v33 = [-[PRAstNode originalKeyword](a1 "originalKeyword")];
        if (v33 && ([(PRAstNode *)a1 isIgnored]& 1) == 0)
        {
          v34 = createQueryNode("kMDItemTextContent", v33, 112, 1, -1, 0.0, 0.0);
          v35 = createQueryNode("kMDItemTextContent", v32, 112, 1, -1, 0.0, 0.0);
          v36 = makeAndNode(v34, v35);
          Node = makeOrNode(v7, v36);
LABEL_79:
          v7 = Node;
        }
      }

      else
      {
        v7 = 0;
      }

      std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,float>>>>::~__hash_table(&v38);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v42[0]);
      v31 = v41[0];
      v41[0] = 0;
      if (v31)
      {
LABEL_82:
        operator delete(v31);
        goto LABEL_56;
      }

      goto LABEL_56;
    }

    Node = convertASTNodeToQueryNode([(PRAstNode *)a1 expression], a2);
    goto LABEL_79;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_55;
  }

  if (![(PRAstNode *)a1 children])
  {
    goto LABEL_55;
  }

  if (![-[PRAstNode children](a1 "children")])
  {
    goto LABEL_55;
  }

  v19 = [-[PRAstNode nodeType](a1 "nodeType")];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v20 = [(PRAstNode *)a1 children];
  v21 = [v20 countByEnumeratingWithState:&v55 objects:&v46 count:16];
  if (!v21)
  {
    goto LABEL_55;
  }

  v7 = 0;
  v22 = *v56;
  do
  {
    for (m = 0; m != v21; ++m)
    {
      if (*v56 != v22)
      {
        objc_enumerationMutation(v20);
      }

      v24 = convertASTNodeToQueryNode(*(*(&v55 + 1) + 8 * m), a2);
      if (v24)
      {
        if (v19)
        {
          v25 = makeAndNode(v7, v24);
        }

        else
        {
          v25 = makeOrNode(v7, v24);
        }

        v7 = v25;
      }
    }

    v21 = [v20 countByEnumeratingWithState:&v55 objects:&v46 count:16];
  }

  while (v21);
LABEL_56:
  v26 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1C2946BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,float>>>>::~__hash_table(&a9);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a15);
  _Unwind_Resume(a1);
}

_WORD *MessagesSemanticNode(const __CFDictionary *a1, void *a2, NSString *a3, NSString *a4)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!a1 || !CFDictionaryContainsKey(a1, @"vec_dimensions") || !CFDictionaryContainsKey(a1, @"vec_data_format") || !CFDictionaryContainsKey(a1, @"vec_version"))
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v43 = 138412290;
      v44 = a3;
      v13 = "%@ Skipping ANN node (ERROR: missing essential ann params)";
      goto LABEL_14;
    }

LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  if (!CFDictionaryContainsKey(a1, @"vectors"))
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(19);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v43 = 138412290;
    v44 = a3;
    v13 = "%@ Skipping ANN node (ERROR: missing vectors in ann params)";
    goto LABEL_14;
  }

  Value = CFDictionaryGetValue(a1, @"vectors");
  if (!Value || (v8 = Value, ![Value count]))
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(19);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v43 = 138412290;
    v44 = a3;
    v13 = "%@ Skipping ANN node (ERROR: missing query embedding)";
    goto LABEL_14;
  }

  v9 = [v8 objectAtIndexedSubscript:0];
  if (!v9 || (v10 = v9, [v9 length] <= 1))
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v43 = 138412290;
      v44 = a3;
      v13 = "%@ Skipping ANN node (ERROR: embedding has 0 dimensionality)";
LABEL_14:
      _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, v13, &v43, 0xCu);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v17 = CFDictionaryGetValue(a1, @"vec_dimensions");
  v18 = CFDictionaryGetValue(a1, @"vec_data_format");
  v19 = CFDictionaryGetValue(a1, @"vec_version");
  [a2 isEqualToString:@"en"];
  v20 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  v21 = 1.4;
  if (v20)
  {
    v22 = v20;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v22 floatValue];
      v21 = v23;
      v24 = *__error();
      v25 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v43 = 138412546;
        v44 = a3;
        v45 = 2048;
        v46 = v21;
        _os_log_impl(&dword_1C278D000, v25, OS_LOG_TYPE_DEFAULT, "%@ Using user specified ann threshold: %f", &v43, 0x16u);
      }

      *__error() = v24;
    }
  }

  v26 = [v19 intValue];
  v27 = [v17 intValue];
  v28 = [v18 intValue];
  v29 = [v10 length];
  if (v29 <= 1)
  {
    v30 = *__error();
    v31 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v43 = 138412290;
      v44 = a3;
      v32 = "%@ Skipping ANN node (ERROR: embedding has 0 dimensionality)";
LABEL_47:
      _os_log_impl(&dword_1C278D000, v31, OS_LOG_TYPE_DEFAULT, v32, &v43, 0xCu);
      goto LABEL_48;
    }

    goto LABEL_48;
  }

  v33 = v29;
  v34 = [v10 bytes];
  if (!v34)
  {
    v30 = *__error();
    v31 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v43 = 138412290;
      v44 = a3;
      v32 = "%@ Skipping ANN node (ERROR: Failed to get bytes from embedding)";
      goto LABEL_47;
    }

LABEL_48:
    *__error() = v30;
LABEL_49:
    v11 = *__error();
    v12 = _SILogForLogForCategory(19);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v43 = 138412290;
    v44 = a3;
    v13 = "%@ Skipping ANN node (ERROR: failed to create it)";
    goto LABEL_14;
  }

  v35 = v34;
  if (*MEMORY[0x1E69E9AC8] <= 0x12FuLL)
  {
    ++sTotal;
  }

  v36 = malloc_type_zone_calloc(queryZone, 1uLL, 0x130uLL, 0x5BAF1CEAuLL);
  if (!v36)
  {
    _log_fault_for_malloc_failure();
  }

  *v36 = strdup("_kMDItemPrimaryTextEmbedding");
  *(v36 + 6) = 15;
  v36[16] = v21;
  *(v36 + 15) = v27 & 3 | (4 * (v28 & 3)) | (v26 << 25) | 0x50;
  *(v36 + 10) = 5;
  *(v36 + 40) |= 0x10000u;
  v37 = malloc_type_zone_malloc(queryZone, v33 & 0xFFFFFFFFFFFFFFFELL, 0xA4971684uLL);
  if (!v37)
  {
    _log_fault_for_malloc_failure();
  }

  v38 = 0;
  *(v36 + 37) = v37;
  if (v33 >> 1 <= 1)
  {
    v39 = 1;
  }

  else
  {
    v39 = v33 >> 1;
  }

  do
  {
    *(*(v36 + 37) + 2 * v38) = *(v35 + 2 * v38);
    ++v38;
  }

  while (v39 != v38);
  if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
  {
    ++sTotal;
  }

  v40 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
  if (!v40)
  {
    _log_fault_for_malloc_failure();
    MEMORY[0x30] = 4;
    MEMORY[0x10] = v36;
    goto LABEL_49;
  }

  v14 = v40;
  v40[24] = 4;
  *(v40 + 2) = v36;
  v11 = *__error();
  v41 = _SILogForLogForCategory(19);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [v10 length];
    v43 = 138413058;
    v44 = a3;
    v45 = 2048;
    *&v46 = v42 >> 1;
    v47 = 2048;
    v48 = v21;
    v49 = 1024;
    v50 = 5;
    _os_log_impl(&dword_1C278D000, v41, OS_LOG_TYPE_DEFAULT, "%@ Adding ANN node (dim: %lu, thresh: %f, num results: %d)", &v43, 0x26u);
  }

LABEL_16:
  *__error() = v11;
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t std::unordered_map<std::string,float>::unordered_map(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,float> const&>(a1, a2);
      a2 += 32;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

uint64_t ___ZL31MessagePopulateFiltersFromParsePK14__CFDictionaryP14NSMutableArrayIP8NSStringEPS2_IP7NSValueES4__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 count];
  if (result)
  {
    v9 = [a2 objectForKeyedSubscript:@"kQPDescription"];
    result = [v9 length];
    if (result)
    {
      if ([a2 objectForKeyedSubscript:@"kQPDateExtension"])
      {
        if ([*(*(*(a1 + 48) + 8) + 40) length])
        {
          [*(a1 + 32) addObject:*(*(*(a1 + 48) + 8) + 40)];
          [*(a1 + 40) addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", a3, a4)}];
        }

        *(*(*(a1 + 48) + 8) + 40) = 0;
      }

      if ([a2 objectForKeyedSubscript:@"kQPDate"] || objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPPerson") || objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPSender") || (result = objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPRecipient")) != 0)
      {
        [*(a1 + 32) addObject:v9];
        [*(a1 + 40) addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", a3, a4)}];
        result = [a2 objectForKeyedSubscript:@"kQPDate"];
        if (result)
        {
          *(*(*(a1 + 48) + 8) + 40) = v9;
        }
      }
    }
  }

  return result;
}

void std::vector<MessageTokenInfo>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = v3 - *a1;
    v9 = v8 >> 5;
    v10 = (v8 >> 5) + 1;
    if (v10 >> 59)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 4 > v10)
    {
      v10 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 59))
      {
        operator new();
      }

      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v13 = (32 * v9);
    v14 = a2[1];
    *v13 = *a2;
    v13[1] = v14;
    v6 = 32 * v9 + 32;
    v15 = &v13[-2 * (v8 >> 5)];
    memcpy(v15, v7, v8);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

uint64_t ___ZL18MessageNodeFromStrP9PRContextPKcf_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      *(v2 + 52) = *(a1 + 32);
      *(v2 + 56) = 0;
    }
  }

  return a2;
}

void Attribs(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(v4, "kMDItemAttachmentNames");
  v5 = 1045220557;
  std::string::basic_string[abi:nn200100]<0>(v6, "kMDItemAuthors");
  v7 = 1053609165;
  std::string::basic_string[abi:nn200100]<0>(v8, "kMDItemAuthorAddresses");
  v9 = 1053609165;
  std::string::basic_string[abi:nn200100]<0>(v10, "kMDItemDescription");
  v11 = 1053609165;
  std::string::basic_string[abi:nn200100]<0>(v12, "kMDItemDisplayName");
  v13 = 1036831949;
  std::string::basic_string[abi:nn200100]<0>(v14, "kMDItemFilename");
  v15 = 1036831949;
  std::string::basic_string[abi:nn200100]<0>(v16, "kMDItemPhotosPeopleNames ");
  v17 = 1061997773;
  std::string::basic_string[abi:nn200100]<0>(v18, "kMDItemPhotosPeopleNamesAlternatives");
  v19 = 1061997773;
  std::string::basic_string[abi:nn200100]<0>(v20, "kMDItemPhotosSceneClassificationLabels");
  v21 = 1058642330;
  std::string::basic_string[abi:nn200100]<0>(v22, "kMDItemPhotosSceneClassificationSynonyms");
  v23 = 1058642330;
  std::string::basic_string[abi:nn200100]<0>(v24, "kMDItemRecipients");
  v25 = 1045220557;
  std::string::basic_string[abi:nn200100]<0>(v26, "kMDItemRecipientAddresses");
  v27 = 1045220557;
  std::string::basic_string[abi:nn200100]<0>(v28, "kMDItemTextContent");
  v29 = 1058642330;
  std::string::basic_string[abi:nn200100]<0>(v30, "kMDItemTitle");
  v31 = 1036831949;
  std::string::basic_string[abi:nn200100]<0>(v32, "kMDItemURL");
  v33 = 1036831949;
  std::unordered_map<std::string,float>::unordered_map(a1, v4, 15);
  v2 = 480;
  do
  {
    if (v4[v2 - 9] < 0)
    {
      operator delete(*&v4[v2 - 32]);
    }

    v2 -= 32;
  }

  while (v2);
  v3 = *MEMORY[0x1E69E9840];
}

{
  v26 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(v4, "kMDItemSubject");
  v5 = 1041865114;
  std::string::basic_string[abi:nn200100]<0>(v6, "kMDItemTextContent");
  v7 = 1028443341;
  std::string::basic_string[abi:nn200100]<0>(v8, "kMDItemAuthors");
  v9 = 1041865114;
  std::string::basic_string[abi:nn200100]<0>(v10, "_kMDItemAuthorEmailAddressesLocalParts");
  v11 = 1036831950;
  std::string::basic_string[abi:nn200100]<0>(v12, "kMDItemAuthorEmailAddresses");
  v13 = 0;
  std::string::basic_string[abi:nn200100]<0>(v14, "kMDItemRecipients");
  v15 = 1028443341;
  std::string::basic_string[abi:nn200100]<0>(v16, "_kMDItemPrimaryRecipientEmailAddressesLocalParts");
  v17 = 1028443341;
  std::string::basic_string[abi:nn200100]<0>(v18, "kMDItemRecipientEmailAddresses");
  v19 = 0;
  std::string::basic_string[abi:nn200100]<0>(v20, "kMDItemPrimaryRecipientEmailAddresses");
  v21 = 0;
  std::string::basic_string[abi:nn200100]<0>(v22, "kMDItemAttachmentNames");
  v23 = 0;
  std::string::basic_string[abi:nn200100]<0>(v24, "kMDItemAttachmentTypes");
  v25 = 0;
  std::unordered_map<std::string,float>::unordered_map(a1, v4, 11);
  v2 = 352;
  do
  {
    if (v4[v2 - 9] < 0)
    {
      operator delete(*&v4[v2 - 32]);
    }

    v2 -= 32;
  }

  while (v2);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1C2947918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 471);
  v13 = -480;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 32;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 32;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t std::unordered_map<int,std::unordered_map<std::string,float>>::unordered_map(uint64_t result, int *a2, uint64_t a3)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  if (a3)
  {
    for (i = a2; i != &a2[12 * a3]; i += 12)
    {
      v4 = *i;
      v5 = *(result + 8);
      if (!*&v5)
      {
        goto LABEL_20;
      }

      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = *i;
        if (*&v5 <= v4)
        {
          v7 = v4 % *&v5;
        }
      }

      else
      {
        v7 = (*&v5 - 1) & v4;
      }

      v8 = *(*result + 8 * v7);
      if (!v8 || (v9 = *v8) == 0)
      {
LABEL_20:
        operator new();
      }

      while (1)
      {
        v10 = v9[1];
        if (v10 == v4)
        {
          break;
        }

        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v5)
          {
            v10 %= *&v5;
          }
        }

        else
        {
          v10 &= *&v5 - 1;
        }

        if (v10 != v7)
        {
          goto LABEL_20;
        }

LABEL_19:
        v9 = *v9;
        if (!v9)
        {
          goto LABEL_20;
        }
      }

      if (*(v9 + 4) != v4)
      {
        goto LABEL_19;
      }
    }
  }

  return result;
}

void sub_1C2947C34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<int,std::unordered_set<std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::unordered_set<std::string>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,float>>>>::~__hash_table(v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,float>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_1C2947EB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<int,std::unordered_set<std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::unordered_set<std::string>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,float>,void *> *>>(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a1[1];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v6 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        std::string::operator=((v6 + 16), (v2 + 2));
        *(v6 + 40) = *(v2 + 10);
        v8 = *v6;
        std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__node_insert_multi(a1, v6);
        v2 = *v2;
        if (v8)
        {
          v9 = v2 == 0;
        }

        else
        {
          v9 = 1;
        }

        v6 = v8;
      }

      while (!v9);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v8);
  }

  if (v2)
  {
    operator new();
  }
}

void std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v4 = *(a1 + 8);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

query_node *MsgAttribNode(char a1, uint64_t *a2, char *__s)
{
  v4 = a2;
  if ((a1 & 2) == 0)
  {
    if (a2)
    {
      v5 = 0;
      do
      {
        v6 = (v4 + 2);
        if (*(v4 + 39) < 0)
        {
          v6 = *v6;
        }

        QueryNode = createQueryNode(v6, __s, 112, 1, -1, 0.0, 0.0);
        v5 = makeOrNode(v5, QueryNode);
        v4 = *v4;
      }

      while (v4);
      return v5;
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v8 = *(v4 + 10);
    if (v8 != 0.0)
    {
      v9 = (v4 + 2);
      if (*(v4 + 39) < 0)
      {
        v9 = *v9;
      }

      v10 = createQueryNode(v9, __s, 112, 1, -1, v8, 0.0);
      v5 = makeOrNode(v5, v10);
    }

    v4 = *v4;
  }

  while (v4);
  return v5;
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<std::string,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<std::string,float>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__node_insert_multi(uint64_t a1, uint64_t a2)
{
  v5 = (a2 + 16);
  v4 = *(a2 + 16);
  v6 = *(a2 + 39);
  if (v6 >= 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 39);
  }

  else
  {
    v8 = *(a2 + 24);
  }

  v33 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v7, v8);
  *(v5 - 1) = v33;
  v9 = *(a1 + 8);
  v10 = (*(a1 + 24) + 1);
  v11 = *(a1 + 32);
  if (!v9 || (v11 * v9) < v10)
  {
    v12 = 1;
    if (v9 >= 3)
    {
      v12 = (v9 & (v9 - 1)) != 0;
    }

    v13 = v12 | (2 * v9);
    v14 = vcvtps_u32_f32(v10 / v11);
    if (v13 <= v14)
    {
      prime = v14;
    }

    else
    {
      prime = v13;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v9 = *(a1 + 8);
    }

    if (prime > v9)
    {
LABEL_19:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    if (prime < v9)
    {
      v16 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v9 < 3 || (v17 = vcnt_s8(v9), v17.i16[0] = vaddlv_u8(v17), v17.u32[0] > 1uLL))
      {
        v16 = std::__next_prime(v16);
      }

      else
      {
        v18 = 1 << -__clz(v16 - 1);
        if (v16 >= 2)
        {
          v16 = v18;
        }
      }

      if (prime <= v16)
      {
        prime = v16;
      }

      if (prime >= v9)
      {
        v9 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_19;
        }

        v19 = *a1;
        *a1 = 0;
        if (v19)
        {
          operator delete(v19);
        }

        v9 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v20 = vcnt_s8(v9);
  v20.i16[0] = vaddlv_u8(v20);
  v21 = v20.u32[0];
  if (v20.u32[0] > 1uLL)
  {
    v22 = v33;
    if (v9 <= v33)
    {
      v22 = v33 % v9;
    }
  }

  else
  {
    v22 = (v9 - 1) & v33;
  }

  v23 = *(*a1 + 8 * v22);
  v32 = *a1;
  if (v23)
  {
    v24 = *v23;
    if (*v23)
    {
      v25 = 0;
      do
      {
        v26 = v24;
        v27 = v24[1];
        if (v21 > 1)
        {
          v28 = v27;
          if (v27 >= v9)
          {
            v28 = v27 % v9;
          }
        }

        else
        {
          v28 = v27 & (v9 - 1);
        }

        if (v28 != v22)
        {
          break;
        }

        v29 = v27 == v33 && std::equal_to<std::string>::operator()[abi:nn200100](v26 + 2, v5);
        if ((v25 & (v29 != (v25 & 1))) != 0)
        {
          break;
        }

        v25 |= v29 != (v25 & 1);
        v24 = *v26;
        v23 = v26;
      }

      while (*v26);
    }
  }

  v30 = *(a2 + 8);
  if (v21 > 1)
  {
    if (v30 >= v9)
    {
      v30 %= v9;
    }
  }

  else
  {
    v30 &= v9 - 1;
  }

  if (!v23)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v32[v30] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_71;
    }

    v31 = *(*a2 + 8);
    if (v21 > 1)
    {
      if (v31 >= v9)
      {
        v31 %= v9;
      }
    }

    else
    {
      v31 &= v9 - 1;
    }

LABEL_70:
    *(*a1 + 8 * v31) = a2;
    goto LABEL_71;
  }

  *a2 = *v23;
  *v23 = a2;
  if (*a2)
  {
    v31 = *(*a2 + 8);
    if (v21 > 1)
    {
      if (v31 >= v9)
      {
        v31 %= v9;
      }
    }

    else
    {
      v31 &= v9 - 1;
    }

    if (v31 != v30)
    {
      goto LABEL_70;
    }
  }

LABEL_71:
  ++*(a1 + 24);
}