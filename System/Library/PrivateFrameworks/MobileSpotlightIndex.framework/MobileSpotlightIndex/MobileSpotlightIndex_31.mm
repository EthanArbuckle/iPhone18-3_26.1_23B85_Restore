uint64_t rename_new_index(uint64_t a1, char *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__str = 0u;
  v5 = fmtcheck(a2, "%i");
  snprintf(__str, 0xFFuLL, v5, a3);
  v6 = ContentIndexChangePrefix(a1);
  v7 = *(a1 + 4912);
  if (v6)
  {
    if (v7 && _os_feature_enabled_impl())
    {
      vectorIndexEndMerge(*(a1 + 4912));
    }
  }

  else if (v7 && _os_feature_enabled_impl())
  {
    vectorIndexCancelMerge(*(a1 + 4912));
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t scan_lost_ids(uint64_t a1, int a2)
{
  v3 = *(a1 + 1192);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __scan_lost_ids_block_invoke;
  v8[3] = &__block_descriptor_tmp_835;
  v8[4] = a1;
  if (*v3 != 1685287992)
  {
    v5 = __si_assert_copy_extra_332();
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 248, v7);
    free(v6);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  db2_scan_lost_ids(v3, a2, a1, v8);
  return unlinkat(*(a1 + 32), "rescan_needed", 2048);
}

void si_freeIndex0(uint64_t *a1, int a2)
{
  if (a2)
  {
    freeIndex(*a1);
  }

  else
  {
    v3 = *(a1[1] + 1104);
    v4 = qos_class_self();
    si_enqueue_work_with_qos(v3, v4, si_freeIndex, *a1);
  }

  free(a1);
}

BOOL si_merge_term_filter(void *a1, unsigned __int8 *a2, unsigned int a3)
{
  v6 = triePropertyID(a2, a3);
  if (v6 != si_merge_term_filter_lastID)
  {
    si_merge_term_filter_lastID = v6;
  }

  if (a3 == 2)
  {
    if (*a2 > 5u)
    {
      return 0;
    }

    v7 = a2[1];
    return v7 < 6;
  }

  if (a3 != 1)
  {
    if (a3 < 3)
    {
      return 0;
    }

    if (*a2 > 5u)
    {
      return 0;
    }

    v9 = triePropertyID(a2, a3);
    if (!v9)
    {
      return 0;
    }

    if (*a2 == 1 && a2[1] == 2)
    {
      if ((v9 & 0x80000000) == 0)
      {
        v10 = v9;
        if (a1[4] <= v9)
        {
          return 0;
        }

        v11 = a1[6];
        return CFBitVectorGetBitAtIndex(v11, v10) != 0;
      }
    }

    else if ((v9 & 0x80000000) == 0)
    {
      v10 = v9;
      if (a1[1] <= v9)
      {
        return 0;
      }

      v11 = a1[3];
      return CFBitVectorGetBitAtIndex(v11, v10) != 0;
    }

    v12 = __si_assert_copy_extra_661(-1);
    v13 = v12;
    v14 = "";
    if (v12)
    {
      v14 = v12;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 109, "bitIndex >= 0", v14);
    free(v13);
    if (__valid_fs(-1))
    {
      v15 = 2989;
    }

    else
    {
      v15 = 3072;
    }

    *v15 = -559038737;
    abort();
  }

  v7 = *a2;
  return v7 < 6;
}

uint64_t triePropertyID(_BYTE *a1, unsigned int a2)
{
  if (a2 < 3 || *a1 != 1)
  {
    return 0;
  }

  if (a1[a2 - 1] == 1 && a1[a2 - 2] == 1)
  {
    return 1;
  }

  v17 = 0;
  v16 = 0;
  if (a1[1] == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = a2 - v3;
  if ((a2 - v3) < 1)
  {
    v8 = &v16;
  }

  else
  {
    if (v4 >= 5)
    {
      v5 = 5;
    }

    else
    {
      v5 = v4;
    }

    v6 = &a1[v3];
    v7 = v5 - 1;
    v8 = &v16;
    do
    {
      v9 = v7;
      v10 = *v6++;
      v11 = tcmr[v10];
      *v8 = tcmr[v10];
      v8 = (v8 + 1);
      if ((v11 & 0x80000000) == 0)
      {
        break;
      }

      v7 = v9 - 1;
    }

    while (v9);
  }

  *v8 = 0;
  result = v16;
  if (v16 < 0)
  {
    if (SBYTE1(v16) < 0)
    {
      if (SBYTE2(v16) < 0)
      {
        if (SHIBYTE(v16) < 0)
        {
          if (v17 < 0)
          {
            v12 = __si_assert_copy_extra_661(-1);
            v13 = v12;
            v14 = "";
            if (v12)
            {
              v14 = v12;
            }

            __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v14);
            free(v13);
            if (__valid_fs(-1))
            {
              v15 = 2989;
            }

            else
            {
              v15 = 3072;
            }

            *v15 = -559038737;
            abort();
          }

          return ((HIBYTE(v16) & 0x7F) << 21) | (v17 << 28) | ((BYTE2(v16) & 0x7F) << 14) | ((BYTE1(v16) & 0x7F) << 7) | v16 & 0x7Fu;
        }

        else
        {
          return ((BYTE2(v16) & 0x7F) << 14) | (HIBYTE(v16) << 21) | ((BYTE1(v16) & 0x7F) << 7) | v16 & 0x7Fu;
        }
      }

      else
      {
        return ((BYTE1(v16) & 0x7F) << 7) | (BYTE2(v16) << 14) | v16 & 0x7Fu;
      }
    }

    else
    {
      return v16 & 0x7F | (BYTE1(v16) << 7);
    }
  }

  return result;
}

uint64_t si_message_trace_lifecycle(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v6 = *(result + 2360);
    v7 = *(v6 + 88);
    if (v7)
    {
      return v7(*(v6 + 144), "com.apple.spotlight.mds.index-lifecycle", a2, a3, a4, a5, a6);
    }
  }

  return result;
}

uint64_t si_merge_unlock(uint64_t result, const void *a2)
{
  if (result)
  {
    return si_scheduler_resume(*(result + 872), a2, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 6931);
  }

  return result;
}

uint64_t si_merge_lock(uint64_t result)
{
  if (result)
  {
    v1 = (result + 1452);
    atomic_fetch_add((result + 1452), 1u);
    result = _si_scheduler_suspend(*(result + 872), "SpotlightIndex.c", 2139);
    atomic_fetch_add(v1, 0xFFFFFFFF);
  }

  return result;
}

void __si_merge_term_filter_ctx_init_block_invoke_3(uint64_t a1, CFIndex idx)
{
  v3 = idx;
  bit_vector_set(*(a1 + 32), idx);
  v4 = *(a1 + 40);

  bit_vector_set(v4, v3);
}

void si_deferqueue_cleanup(void *a1, int a2)
{
  if (!a2)
  {
    pthread_mutex_lock((a1[3] + 1320));
    v4 = (a1[3] + 1176);
    v6 = *a1;
    v5 = a1[1];
    while (1)
    {
      v7 = v4;
      v4 = *v4;
      if (!v4)
      {
        break;
      }

      if (v4[1] == v6)
      {
        *v7 = *v4;
        free(v4);
        break;
      }
    }

    if (*v6 == v5)
    {
      v8 = *(v5 + 32);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __si_scheduler_remove_and_destroy_block_invoke;
      block[3] = &__block_descriptor_tmp_14;
      block[4] = v5;
      dispatch_sync(v8, block);
      v9 = v6[2];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 0x40000000;
      v12[2] = __si_scheduler_remove_and_destroy_block_invoke_2;
      v12[3] = &__block_descriptor_tmp_15_1473;
      v12[4] = v6;
      v12[5] = v5;
      dispatch_barrier_async(v9, v12);
    }

    pthread_mutex_unlock((a1[3] + 1320));
    v10 = a1[3];
    if (v10 && v10[149] && v10[130] && v10[(v10[138] != 0) + 126])
    {
      si_sync_ctx_create_with_defer_fd(a1[3], a1[2]);
      si_enqueue_work_with_qos(v10[138], 9, si_sync_index_delayed0, v11);
    }
  }

  v3 = a1[1];
  if (v3 && atomic_fetch_add((v3 + 96), 0xFFFFFFFF) == 1)
  {
    _si_scheduler_destroy(v3);
  }

  free(a1);
}

uint64_t _CreateDeferQueue(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  pthread_mutex_lock((a1 + 1320));
  if (*(a1 + 1152))
  {
    v13 = __si_assert_copy_extra_661(-1);
    v14 = v13;
    v15 = "";
    if (v13)
    {
      v15 = v13;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 7315, "!ref->workqueues.queues[SI_DEFER_QUEUE_IDX]", v15);
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

  *(a1 + 2072);
  *(a1 + 1152) = si_create_child_queue(*(a1 + 872));
  v8 = *a2 + 8 * a3;
  *(a1 + 1304) = *(*v8 + 80);
  v9 = *(v8 + 8 * a4 - 8);
  LODWORD(v10) = *(v9 + 68);
  v11 = *(v9 + 80);
  if (v10 >= 2)
  {
    v10 = v10;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 1312) = v11 + v10;

  return pthread_mutex_unlock((a1 + 1320));
}

uint64_t new_live_index(uint64_t a1, int a2, unint64_t a3)
{
  v78 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 1384);
  v65 = *(v6 + 8);
  v71 = 0;
  if (!fd_setDir(*(a1 + 32), &v71))
  {
    New = 0;
    goto LABEL_44;
  }

  v63 = a2;
  cf = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"tmp.live.%d.", v65);
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
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 0x40000000;
  v70[2] = __new_live_index_block_invoke;
  v70[3] = &__block_descriptor_tmp_871;
  v70[4] = a1;
  if (v65)
  {
    v12 = *(*v6 + 8 * (v65 - 1));
    LODWORD(v13) = *(v12 + 68);
    if (v13 >= 2)
    {
      v13 = v13;
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v12 + 80) + v13;
    if (v14 <= a3)
    {
      v15 = a3;
    }

    else
    {
      v15 = v14;
    }

    v16 = *(a1 + 32);
    v17 = *(v12 + 40);
    v18 = *(a1 + 1284);
    v19 = *(a1 + 1192);
    if (v19)
    {
      v20 = v11;
      v21 = *(v12 + 40);
      vector_store = db_get_vector_store(v19);
      v17 = v21;
      v11 = v20;
      v23 = vector_store;
    }

    else
    {
      v23 = 0;
    }

    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 0x40000000;
    v68[2] = __new_live_index_block_invoke_3;
    v68[3] = &__block_descriptor_tmp_873;
    v68[4] = a1;
    New = ContentIndexCreateNew(v16, cf, v15, v17, v10 | v11, 1, v18, v23, v68, v70, *(a1 + 60));
    v40 = *(*v6 + 8 * (v65 - 1));
    v41 = v15;
    v42 = 7523;
  }

  else
  {
    v25 = *(a1 + 1392);
    v26 = *(*v25 + 8 * (*(v25 + 8) - 1));
    LODWORD(v27) = *(v26 + 68);
    if (v27 >= 2)
    {
      v27 = v27;
    }

    else
    {
      v27 = 0;
    }

    v28 = *(v26 + 80) + v27;
    if (v28 <= a3)
    {
      v15 = a3;
    }

    else
    {
      v15 = v28;
    }

    v29 = *(a1 + 32);
    v30 = *(v26 + 40);
    v31 = *(a1 + 1284);
    v32 = *(a1 + 1192);
    if (v32)
    {
      v33 = v10;
      v34 = v11;
      v35 = *(a1 + 1284);
      v36 = v6;
      v37 = *(a1 + 32);
      v38 = db_get_vector_store(v32);
      v29 = v37;
      v6 = v36;
      v31 = v35;
      v11 = v34;
      v10 = v33;
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 0x40000000;
    v69[2] = __new_live_index_block_invoke_2;
    v69[3] = &__block_descriptor_tmp_872;
    v69[4] = a1;
    New = ContentIndexCreateNew(v29, cf, v15, v30, v10 | v11, 1, v31, v39, v69, v70, *(a1 + 60));
    v40 = *(*v25 + 8 * (*(v25 + 8) - 1));
    v41 = v15;
    v42 = 7518;
  }

  _ContentIndexSetPayloadMaxCount(v40, v41, v42);
  CFRelease(cf);
  if (New)
  {
    SIActivityJournalNewLiveIndex((a1 + 2192), v65, v15);
    v43 = *(v6 + 8);
    if (v43)
    {
      ContentIndexSetEmergency(New, *(*(*v6 + 8 * (v65 - 1)) + 44));
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 0x40000000;
    aBlock[2] = __new_live_index_block_invoke_4;
    aBlock[3] = &__block_descriptor_tmp_874;
    aBlock[4] = a1;
    aBlock[5] = New;
    ContentIndexSetDirtyCallback(New, aBlock);
    *(New + 15201) = 4;
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    __buf = 0u;
    v73 = 0u;
    v66 = 0;
    ContentIndexSyncIndex(New, &__buf, &v66);
    v44 = ContentIndexListClone(v6);
    v45 = v44;
    v46 = *(v44 + 3);
    if (v46 <= *(v44 + 2))
    {
      v47 = 2 * v46;
      *(v44 + 3) = v47;
      *v44 = malloc_type_realloc(*v44, 8 * v47, 0x2004093837F09uLL);
    }

    memset(__str, 0, 255);
    snprintf(__str, 0xFFuLL, "live.%d.", v65);
    bzero(&__buf + 8, 0x208uLL);
    *&__buf = 0x6D6F76650A00;
    DWORD2(__buf) = 2;
    LODWORD(v73) = v65;
    HIDWORD(v73) = 1;
    *(*v45 + 8 * v65) = New;
    *(v45 + 16) = v65;
    ++*(v45 + 8);
    v48 = *(a1 + 1392);
    si_clone_index_metadata_to_inflight(a1);
    __strlcpy_chk();
    v49 = si_openat_protected(*(a1 + 32), "tmp.movePlan", 1538, 3);
    pwrite(v49, &__buf, 0x210uLL, 0);
    fcntl(v49, 85);
    ContentIndexChangePrefix(New);
    unlinkat(*(a1 + 32), "tmp.movePlan", 2048);
    close(v49);
    v55 = v6;
    atomic_compare_exchange_strong((a1 + 1384), &v55, v45);
    if (v55 != v6)
    {
      v59 = __si_assert_copy_extra_661(*(a1 + 32));
      v60 = v59;
      v61 = "";
      if (v59)
      {
        v61 = v59;
      }

      __message_assert("%s:%u: failed assertion '%s' %s This should be impossible; this thread is supposed to be  suspended when the other thread changes index sets.", "SpotlightIndex.c", 7580, "OSAtomicCompareAndSwapPtrBarrier(oldIndexSet,indexSet,(void* volatile*)indexSetPtr)", v61);
      free(v60);
      if (__valid_fs(*(a1 + 32)))
      {
        v62 = 2989;
      }

      else
      {
        v62 = 3072;
      }

      *v62 = -559038737;
      abort();
    }

    si_write_index_state(a1, 1, 0, v50, v51, v52, v53, v54);
    if (v63)
    {
      si_cleanup(a1, v6);
      atomic_fetch_add_explicit((a1 + 1400), 1u, memory_order_relaxed);
      if (!v43)
      {
        goto LABEL_42;
      }
    }

    else
    {
      free(*v6);
      free(v6);
      if (!v43)
      {
        goto LABEL_42;
      }
    }

    _CIDisableUpdates(*(*v45 + 8 * (v65 - 1)));
    New = *(*v45 + 8 * (v65 - 1));
  }

LABEL_42:
  v56 = v71;
  MEMORY[0x1C6921200](v71);
  if ((v56 & 0x80000000) == 0)
  {
    close(v56);
  }

LABEL_44:
  v57 = *MEMORY[0x1E69E9840];
  return New;
}

void si_recycleForBadIndex(uint64_t a1, uint64_t a2, const char *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  v7 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v11 = "si_recycleForBadIndex";
    v12 = 1024;
    v13 = 17389;
    v14 = 2080;
    v15 = a3;
    _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, "%s:%d: recycle %s", buf, 0x1Cu);
  }

  *__error() = v6;
  _CIMakeInvalid(a2);
  if (a1 && (atomic_load_explicit((a1 + 2439), memory_order_acquire) & 1) == 0)
  {
    if (SIIsAppleInternal_onceToken != -1)
    {
      dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
    }

    if (SIIsAppleInternal_internal)
    {
      if (!atomic_fetch_add_explicit(&si_recycleForBadIndex__crashCount, 1u, memory_order_relaxed))
      {
        v8 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"recycle, message:%s", a3);
        getpid();
        SISimulateCrashForPid(0, v8);
        if (v8)
        {
          CFRelease(v8);
        }
      }
    }
  }

  si_makeUnavailable(a1, 22, 2, 7, a3);
  v9 = *MEMORY[0x1E69E9840];
}

void si_scanEnded(uint64_t *a1, int a2)
{
  if (!a2)
  {
    v4 = *a1;
    if (**(*a1 + 1392))
    {
      v5 = *(v4 + 1416);
      if (v5)
      {
        v6 = *(v5 + 88);
        if (v6)
        {
          if (!*(v5 + 240))
          {
            v6(v5, *(v5 + 24));
          }
        }
      }

      si_sync_ctx_create_with_defer_fd(v4, 0);
      *(v7 + 64) = a1[8];
      a1[8] = 0;
      syncIndex(v7, 0);
      v8 = *(a1[1] + 56);
      if (gSISystemOnBattery == 1 && (v9 = *(v4 + 2360)) != 0 && (v10 = *(v9 + 80)) != 0)
      {
        v11 = *(v9 + 144);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 0x40000000;
        v12[2] = __si_scanEnded_block_invoke;
        v12[3] = &__block_descriptor_tmp_888;
        v13 = v8;
        v10(v11, 0, @"ScanEnded", v12);
      }

      else
      {
        setupAndIssueMergeScan(v4, v8, 0, 0, 0);
      }
    }
  }

  si_sync_ctx_free(a1, a2 != 0);
}

void __si_scanEnded_block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, NSObject *a5)
{
  if (a2)
  {
    setupAndIssueMergeScan(a2, *(a1 + 32), a3, a4, a5);
  }
}

void setupAndIssueMergeScan(uint64_t a1, int a2, void *a3, uint64_t a4, NSObject *a5)
{
  v17 = 0;
  v18 = a2;
  v9 = si_needsVaccuum(*(a1 + 1384), &v18, &v17);
  v10 = v17;
  if (v17)
  {
    v11 = v9;
    v12 = malloc_type_calloc(1uLL, 0x460uLL, 0x1070040C187FD8AuLL);
    *v12 = a1;
    v12[16] = 1;
    v12[1041] = v11;
    *(v12 + 2) = v18;
    *(v12 + 3) = v10;
    v12[1042] = 0;
    *(v12 + 131) = "void setupAndIssueMergeScan(SIRef, int32_t, _Bool, xpc_activity_t, _Bool *, dispatch_group_t)";
    *(v12 + 274) = 6;
    v12[1100] = 1;
    __strlcpy_chk();
    v13 = v12 + 1064;
    si_power_info_init((v12 + 1064), a3, a4, a5);
    if (!*(v12 + 136) && !*v13)
    {
      v15 = *(a1 + 2360);
      if (v15)
      {
        v16 = *(v15 + 64);
        if (v16)
        {
          *v13 = v16(*(v15 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 9898, "void setupAndIssueMergeScan(SIRef, int32_t, _Bool, xpc_activity_t, _Bool *, dispatch_group_t)");
        }
      }
    }

    v14 = *(a1 + 1064);

    si_enqueue_work(v14, si_mergeIndex, v12);
  }
}

BOOL si_needsVaccuum(uint64_t *a1, _DWORD *a2, _DWORD *a3)
{
  *a3 = 0;
  v3 = *(a1 + 2);
  v4 = *a1;
  if (!v3)
  {
    goto LABEL_14;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
LABEL_3:
  --v3;
  do
  {
    v8 = *(v4 + 8 * v3);
    if (v8[14] == *a2)
    {
      v6 = v8[10];
      v7 = 1;
      *a3 = 1;
      v5 = v8;
      if (v3)
      {
        goto LABEL_3;
      }

      goto LABEL_10;
    }

    --v3;
  }

  while (v3 != -1);
  v8 = v5;
  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  v9 = *(a1 + 2);
  if (v9)
  {
    v10 = v9 - 1;
    while (*(*(v4 + 8 * v10) + 40) != v6)
    {
      if (!v10--)
      {
        goto LABEL_14;
      }
    }

    v13 = 0;
    v17 = 0;
    v18 = v10 + 1;
    v19 = 8 * v10;
    v20 = v18;
    while (1)
    {
      v4 = *a1;
      v21 = *(*a1 + v19);
      if (v21[10] != v6 && v21[13] != v8[13])
      {
        break;
      }

      ++*a3;
      v22 = atomic_load(v21 + 4);
      v17 += v22;
      LODWORD(v22) = v21[17];
      if (v22 >= 2)
      {
        v22 = v22;
      }

      else
      {
        v22 = 0;
      }

      v13 += v22;
      v19 -= 8;
      if (!--v20)
      {
        v4 = *a1;
        break;
      }
    }

    v14 = v18 - *a3;
    v12 = 3 * v17;
  }

  else
  {
LABEL_14:
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  v15 = *(v4 + 8 * (v14 & ~(v14 >> 31)));
  if (!v15)
  {
    return 0;
  }

  *a2 = *(v15 + 56);
  return v13 < v12;
}

_DWORD *si_getSyncIndex(uint64_t a1, int a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 1392);
  v4 = *(a1 + 1384);
  v5 = *(v3 + 2);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = v5 - 1;
    do
    {
      if ((v6 & 1) != 0 || (v8 = *(*v3 + 8 * v7), v9 = atomic_load((v8 + 36)), (v9 & 3) != 0) || *(v8 + 15203) == 1)
      {
        v10 = *(*v3 + 8 * v7);
        v11 = atomic_load((v10 + 36));
        if ((v11 & 3) == 0 && (*(v10 + 15203) & 1) == 0)
        {
          v28 = __si_assert_copy_extra_661(-1);
          v29 = v28;
          v30 = "";
          if (v28)
          {
            v30 = v28;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 10469, "!ContentIndexWritable(indexSet->index[i-1])", v30);
LABEL_36:
          free(v29);
          if (__valid_fs(-1))
          {
            v31 = 2989;
          }

          else
          {
            v31 = 3072;
          }

          *v31 = -559038737;
          abort();
        }

        v6 = 1;
      }

      else
      {
        v6 = 0;
      }

      v12 = v7-- + 1;
    }

    while (v12 > 1);
  }

  v13 = *(v4 + 4);
  if (v13 != -1)
  {
    v14 = *(*v4 + 8 * v13);
    v15 = atomic_load((v14 + 36));
    if ((v15 & 3) != 0 || *(v14 + 15203) == 1)
    {
      v36 = __si_assert_copy_extra_661(-1);
      v29 = v36;
      v37 = "";
      if (v36)
      {
        v37 = v36;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 10472, "indexLiveSet->currentIndex==~0 || ContentIndexWritable(indexLiveSet->index[indexLiveSet->currentIndex])", v37);
      goto LABEL_36;
    }
  }

  v16 = *(v3 + 4);
  if (v16 != -1)
  {
    v17 = *(*v3 + 8 * v16);
    v18 = atomic_load((v17 + 36));
    if ((v18 & 3) == 0 && (*(v17 + 15203) & 1) == 0)
    {
      v20 = *v3;
      v19 = *(v3 + 4);
      goto LABEL_20;
    }
  }

  v19 = *(v4 + 4);
  if (v19 != -1)
  {
    v20 = *v4;
LABEL_20:
    LiveIndex = *(v20 + 8 * v19);
    goto LABEL_22;
  }

  LiveIndex = si_getLiveIndex(*(a1 + 1384));
LABEL_22:
  if (*LiveIndex != -1163003219)
  {
    v32 = __si_assert_copy_extra_661(-1);
    v29 = v32;
    v33 = "";
    if (v32)
    {
      v33 = v32;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 10481, "ContentIndexValidIndex(cindex)", v33);
    goto LABEL_36;
  }

  v22 = atomic_load(LiveIndex + 9);
  if ((v22 & 3) != 0 || *(LiveIndex + 15203) == 1)
  {
    v34 = __si_assert_copy_extra_661(-1);
    v29 = v34;
    v35 = "";
    if (v34)
    {
      v35 = v34;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 10482, "ContentIndexWritable(cindex)", v35);
    goto LABEL_36;
  }

  if (a2 && LiveIndex[10] != a2 && (LiveIndex[11] & 1) == 0)
  {
    v23 = *__error();
    v24 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v27 = LiveIndex[10];
      *buf = 136315906;
      v39 = "si_getSyncIndex";
      v40 = 1024;
      v41 = 10485;
      v42 = 1024;
      v43 = a2;
      v44 = 1024;
      v45 = v27;
      _os_log_error_impl(&dword_1C278D000, v24, OS_LOG_TYPE_ERROR, "%s:%d: Unexpected transaction id %d != %d", buf, 0x1Eu);
    }

    *__error() = v23;
  }

  v25 = *MEMORY[0x1E69E9840];
  return LiveIndex;
}

uint64_t si_mergeOneIndex(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0;
  if (fd_setDir(*(a1 + 32), &v13))
  {
    v4 = *(a1 + 1384);
    v5 = ContentIndexListClone(v4);
    bzero(v14, 0x400uLL);
    v6 = fcntl(*(a1 + 32), 50, v14);
    if (v14[0])
    {
      v7 = v6 < 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = v14;
    }

    v9 = OuterMerge(a1, *(a2 + 56), 1u, (a1 + 1384), v4, v5, v8, "live.%d.", 0, 1u, 0);
    v10 = v13;
    MEMORY[0x1C6921200](v13);
    if ((v10 & 0x80000000) == 0)
    {
      close(v10);
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t si_indexIdForOID(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1384);
  v5 = *(v4 + 8);
  if (v5)
  {
    v6 = v5 - 1;
    while (1)
    {
      v7 = *(*v4 + 8 * v6);
      if (v7)
      {
        result = _CIDocIdForOID(v7, a2);
        if (result)
        {
          break;
        }
      }

      v9 = v6-- + 1;
      if (v9 <= 1)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v10 = *(a1 + 1392);
    v11 = *(v10 + 8);
    if (v11)
    {
      v12 = v11 - 1;
      while (1)
      {
        v13 = *(*v10 + 8 * v12);
        if (v13)
        {
          result = _CIDocIdForOID(v13, a2);
          if (result)
          {
            break;
          }
        }

        v14 = v12-- + 1;
        if (v14 <= 1)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SICreateIndex(uint64_t *a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v36 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  if (CFStringGetFileSystemRepresentation(a2, buffer, 1024))
  {
    result = open(buffer, 1081344);
    if (result != -1)
    {
      v20 = result;
      if (a6 && a7 && a8)
      {
        v34 = 0;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v26 = *a9;
        v27 = *(a9 + 16);
        result = _SIOpenIndex(a1, result, a3, a4, a5, &v28, &v26, a10, a11, 0, &SICreateIndex_cancel);
        if ((result & 0x80000000) == 0)
        {
          v21 = *(&v31 + 1);
          v22 = v29;
          v23 = *(&v28 + 1);
          *a6 = *(&v29 + 1) + v31 + v28;
          v24 = *(&v30 + 1);
          *a7 = v30 + v21 + v23;
          *a8 = v24 + v32 + v22;
        }
      }

      else
      {
        v28 = *a9;
        *&v29 = *(a9 + 16);
        result = _SIOpenIndex(a1, result, a3, a4, a5, 0, &v28, a10, a11, 0, &SICreateIndex_cancel);
      }

      if ((a5 & 6) == 2 && (result & 0x80000000) != 0)
      {
        if (a6)
        {
          *a6 = 0;
        }

        if (a7)
        {
          *a7 = 0;
        }

        if (a8)
        {
          *a8 = 0;
        }

        v28 = *a9;
        *&v29 = *(a9 + 16);
        LODWORD(result) = SICreateNewIndex(a1, v20, a3, a4, a5, &v28, a10, a11, &SICreateIndex_cancel);
        if (result <= 1)
        {
          result = 1;
        }

        else
        {
          result = result;
        }
      }
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SIOpenIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10, _DWORD *a11)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = v12;
  v15 = v14;
  v591 = v16;
  v18 = v17;
  v595 = v19;
  v596 = v20;
  v22 = v21;
  v24 = v23;
  v650 = *MEMORY[0x1E69E9840];
  v645 = 0;
  v585 = open(".", 4, v11);
  _SITuningInit();
  makeThreadId();
  v644 = 0;
  v643 = 0;
  cf = 0;
  *a10 = 0;
  v599 = BYTE3(v18);
  _si_load_error_from_file(BYTE3(v18), v22);
  _si_set_error_str(0, 1);
  _si_set_rebuild_reason(0, 1, 1);
  v25 = openat(v22, "tmp.movePlan", 2);
  v608 = v24;
  if ((v25 & 0x80000000) != 0)
  {
    goto LABEL_50;
  }

  v26 = v25;
  bzero(__buf, 0x210uLL);
  if (prot_pread(v26, __buf, 0x210uLL, 0) == 528 && *__buf == 0x6D6F76650A00)
  {
    memset(v649, 0, 255);
    memset(v648, 0, 255);
    v601 = v18;
    if (*&__buf[8] <= 1)
    {
      if (!*&__buf[8])
      {
        if (__buf[12])
        {
          v42 = "live.";
        }

        else
        {
          v42 = "";
        }

        if (*&__buf[36] > 1)
        {
          if (*&__buf[36] != 2)
          {
            if (*&__buf[36] != 3)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          }
        }

        else
        {
          if (*&__buf[36])
          {
            if (*&__buf[36] != 1)
            {
              goto LABEL_48;
            }
          }

          else
          {
            if (*&__buf[20])
            {
              v43 = 0;
              do
              {
                snprintf(v648, 0xFFuLL, "%s%d.", v42, v43 + *&__buf[16]);
                snprintf(v649, 0xFFuLL, "%s.%s%d.", "tmp.victim", v42, v43 + *&__buf[16]);
                ContentIndexCompleteChangePrefix(v22, v648, v649);
                ++v43;
              }

              while (v43 < *&__buf[20]);
            }

            *&__buf[36] = 1;
            pwrite(v26, __buf, 0x210uLL, 0);
            fcntl(v26, 85);
          }

          v44 = *&__buf[32];
          v45 = v22;
          if (*&__buf[32] < *&__buf[28])
          {
            do
            {
              v46 = v44;
              v47 = v45;
              v48 = *&__buf[16] + *&__buf[32] + 1;
              snprintf(v648, 0xFFuLL, "%s%d.", v42, v44 + *&__buf[24]);
              v49 = v48;
              v45 = v47;
              snprintf(v649, 0xFFuLL, "%s%d.", v42, v49);
              *&__buf[32] = v46;
              pwrite(v26, __buf, 0x210uLL, 0);
              fcntl(v26, 85);
              ContentIndexCompleteChangePrefix(v47, v648, v649);
              v44 = v46 + 1;
            }

            while ((v46 + 1) < *&__buf[28]);
          }

          *&__buf[36] = 2;
          pwrite(v26, __buf, 0x210uLL, 0);
          fcntl(v26, 85);
          LODWORD(v22) = v45;
        }

        snprintf(v649, 0xFFuLL, "%s%d.", v42, *&__buf[16]);
        ContentIndexCompleteChangePrefix(v22, &__buf[268], v649);
        *&__buf[36] = 3;
        pwrite(v26, __buf, 0x210uLL, 0);
        fcntl(v26, 85);
LABEL_47:
        rename_transitional_state(v22);
        goto LABEL_48;
      }

      if (*&__buf[8] == 1)
      {
        if (*&__buf[28] != 1)
        {
          if (*&__buf[28])
          {
            goto LABEL_48;
          }

          v29 = *&__buf[24];
          if (*&__buf[24] < *&__buf[12])
          {
            do
            {
              v30 = v29;
              *&__buf[24] = v29;
              pwrite(v26, __buf, 0x210uLL, 0);
              fcntl(v26, 85);
              snprintf(v648, 0xFFuLL, "live.%d.", v30 + *&__buf[16]);
              snprintf(v649, 0xFFuLL, "%d.", v30 + *&__buf[20]);
              ContentIndexCompleteChangePrefix(v22, v648, v649);
              v29 = v30 + 1;
            }

            while ((v30 + 1) < *&__buf[12]);
          }

          *&__buf[28] = 1;
          pwrite(v26, __buf, 0x210uLL, 0);
        }

        v31 = "live.0.";
        v32 = v22;
LABEL_26:
        ContentIndexCompleteChangePrefix(v32, &__buf[268], v31);
        goto LABEL_47;
      }
    }

    else
    {
      if (*&__buf[8] != 2)
      {
        if (*&__buf[8] == 3)
        {
          if (*&__buf[12] == 842150450)
          {
            _rename_prefix_suffix(v22, &__buf[268], ".offsets", v27, v28);
            _rename_prefix_suffix(v22, &__buf[268], ".data", v38, v39);
            _rename_prefix_suffix(v22, &__buf[268], ".header", v40, v41);
          }
        }

        else if (*&__buf[8] == 4)
        {
          ContentIndexCompleteChangePrefix(v22, &__buf[268], &__buf[12]);
        }

        goto LABEL_48;
      }

      if (__buf[12])
      {
        v33 = "live.";
      }

      else
      {
        v33 = "";
      }

      if (*&__buf[28] == 1)
      {
        goto LABEL_25;
      }

      if (!*&__buf[28])
      {
        v605 = v13;
        v34 = *&__buf[24];
        v35 = v22;
        while (v34 > *&__buf[16])
        {
          v36 = v35;
          v37 = v34--;
          snprintf(v648, 0xFFuLL, "%s%d.", v33, v34);
          snprintf(v649, 0xFFuLL, "%s%d.", v33, v37);
          *&__buf[24] = v37;
          v35 = v36;
          pwrite(v26, __buf, 0x210uLL, 0);
          fcntl(v26, 85);
          ContentIndexCompleteChangePrefix(v36, v648, v649);
        }

        *&__buf[28] = 1;
        pwrite(v26, __buf, 0x210uLL, 0);
        fcntl(v26, 85);
        v13 = v605;
        LODWORD(v22) = v35;
LABEL_25:
        snprintf(v649, 0xFFuLL, "%s%d.", v33, *&__buf[16]);
        v32 = v22;
        v31 = v649;
        goto LABEL_26;
      }
    }

LABEL_48:
    v18 = v601;
  }

  unlinkat(v22, "tmp.movePlan", 2048);
  close(v26);
LABEL_50:
  v50 = malloc_type_calloc(1uLL, 0x2788uLL, 0x10F00403822957CuLL);
  *v50 = 0xC0DE10DE10DEC0DELL;
  SIInitIndexLocks(v50);
  v641[0] = MEMORY[0x1E69E9820];
  v641[1] = 0x40000000;
  v641[2] = ___SIOpenIndex_block_invoke;
  v641[3] = &__block_descriptor_tmp_896;
  v641[4] = v50;
  *(v50 + 15) = v599;
  *(v50 + 8) = -1;
  *(v50 + 12) = -1;
  v57 = *v15;
  *(v50 + 3) = *(v15 + 2);
  *(v50 + 8) = v57;
  *(v50 + 295) = v13;
  *(v50 + 290) = 0;
  *(v50 + 824) = a11;
  *(v50 + 364) = 1;
  v58 = v595;
  if (v595)
  {
    v59 = ~(*(v595 + 28) << 20) & 0x400000;
  }

  else
  {
    v59 = 0;
  }

  v60 = *(v50 + 1646) & 0xFEBFFFFF | v59;
  *(v50 + 1646) = v60;
  v50[6944] = (v18 & 0x40000) != 0;
  v61 = *(v50 + 149);
  if (v61)
  {
    db_datastore_set_bg_assertion_flag(v61, (v18 & 0x40000) != 0);
    v60 = *(v50 + 1646);
  }

  *(v50 + 1741) = 0;
  v50[2072] = BYTE1(v18) & 1;
  if ((v18 & 0x100) != 0)
  {
    *(v50 + 1646) = v60 | 0x1000000;
    LOBYTE(v62) = 1;
  }

  else
  {
    LOBYTE(v62) = 0;
    if (v596 && (v60 & 0x1000000) != 0)
    {
      v62 = (*(v596 + 28) >> 4) & 1;
    }
  }

  *(v50 + 76) = 0u;
  *(v50 + 304) = -1;
  v63 = v585;
  *(v50 + 80) = 0u;
  *(v50 + 79) = 0u;
  *(v50 + 78) = 0u;
  *(v50 + 77) = 0u;
  *(v50 + 75) = 0u;
  v639 = 0;
  v638 = 0;
  v640 = 0;
  v637 = 0;
  v636 = 0;
  if (*a11)
  {
    __si_set_error_str(1, "%s:%u: %s", v51, v52, v53, v54, v55, v56, "SpotlightIndex.c");
    v64 = v62;
    v65 = 89;
LABEL_62:
    v66 = v608;
    goto LABEL_63;
  }

  v67 = v18 & 0x80040001;
  v68 = v18 & 4;
  v600 = v22;
  v590 = v68;
  if (v595)
  {
    v69 = *(v595 + 28);
    v70 = dup(*(v595 + 4));
    v67 = v18 & 0x80040001;
    v68 = v18 & 4;
    *(v50 + 12) = v70;
    LOBYTE(v71) = v50[2072];
    v72 = v69;
  }

  else
  {
    v71 = (v18 & 0x100) >> 8;
    v72 = 0;
  }

  v78 = v67;
  v597 = v68;
  v79 = v68 != 0;
  if (v71)
  {
    v80 = v72;
  }

  else
  {
    v80 = v79;
  }

  if ((v18 & 8) != 0)
  {
    v81 = 0;
    v82 = -1;
    v83 = 0;
    v84 = v62;
    goto LABEL_88;
  }

  v589 = v67;
  bzero(v649, 0x400uLL);
  v87 = guarded_dup(v600);
  *(v50 + 4) = v87;
  *(v50 + 5) = v88;
  if (v87 == -1 || MEMORY[0x1C6921200]())
  {
    v89 = *__error();
    __si_set_error_str(1, "%s:%u: %s", v90, v91, v92, v93, v94, v95, "SpotlightIndex.c");
    v64 = v62;
    v65 = v89;
    goto LABEL_62;
  }

  v592 = v78;
  v607 = v13;
  v100 = (v50[6944] ^ 1) & v62;
  registerForCloning(*(v50 + 8), v100 & 1);
  bzero(v648, 0x400uLL);
  v101 = *__error();
  v102 = _SILogForLogForCategory(11);
  v103 = 2 * (dword_1EBF46AF8 < 4);
  if (os_log_type_enabled(v102, v103))
  {
    v104 = fcntl(*(v50 + 8), 50, v648);
    v105 = 0;
    if (LOBYTE(v648[0]))
    {
      v106 = v104 < 0;
    }

    else
    {
      v106 = 1;
    }

    if (!v106)
    {
      v105 = v648;
    }

    *__buf = 134218242;
    *&__buf[4] = v50;
    *&__buf[12] = 2080;
    *&__buf[14] = v105;
    _os_log_impl(&dword_1C278D000, v102, v103, "%p Open fd %s", __buf, 0x16u);
  }

  v598 = v100;
  *__error() = v101;
  if (v50[2072] == 1)
  {
    *buf = 0;
    if (fd_setDir(*(v50 + 8), buf))
    {
      memset(__buf, 0, 144);
      if (!stat("activityJournal", __buf))
      {
        __si_set_error_str(1, "%s:%u: %s", v107, v108, v109, v110, v111, v112, "SpotlightIndex.c");
        __si_set_rebuild_reason(v239, v240, "%s:%u: %s", "SpotlightIndex.c", 12325, "rebuild activity journal name");
        fd_resetDir(*buf);
        v13 = v607;
        v66 = v608;
        goto LABEL_249;
      }

      fd_resetDir(*buf);
    }
  }

  v635 = 0;
  v113 = check_crash_state(*(v50 + 8), v80, v18, &v635, 0);
  v114 = *__error();
  v115 = _SILogForLogForCategory(0);
  v116 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v115, v116))
  {
    v117 = v635;
    v118 = fcntl(*(v50 + 8), 50, v649);
    v119 = 0;
    if (LOBYTE(v649[0]))
    {
      v120 = v118 < 0;
    }

    else
    {
      v120 = 1;
    }

    if (!v120)
    {
      v119 = v649;
    }

    *__buf = 134218242;
    *&__buf[4] = v117;
    *&__buf[12] = 2080;
    *&__buf[14] = v119;
    _os_log_impl(&dword_1C278D000, v115, v116, "last_crash_delta: %ld for %s", __buf, 0x16u);
  }

  v121 = v113;
  *__error() = v114;
  if ((v635 - 1) <= 0x545E)
  {
    icu_rules_clear_cache();
  }

  v13 = v607;
  v66 = v608;
  if (v113)
  {
    v122 = *__error();
    v123 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
    {
      v296 = fcntl(*(v50 + 8), 50, v649);
      v297 = 0;
      *&__buf[4] = "_SIOpenIndex";
      *&__buf[14] = 12341;
      *__buf = 136315906;
      if (LOBYTE(v649[0]))
      {
        v298 = v296 < 0;
      }

      else
      {
        v298 = 1;
      }

      *&__buf[12] = 1024;
      if (!v298)
      {
        v297 = v649;
      }

      *&__buf[18] = 1024;
      *&__buf[20] = v121;
      *&__buf[24] = 2080;
      *&__buf[26] = v297;
      _os_log_error_impl(&dword_1C278D000, v123, OS_LOG_TYPE_ERROR, "%s:%d: check_crash_state: %d for %s", __buf, 0x22u);
    }

    *__error() = v122;
    if (CFPreferencesGetAppBooleanValue(@"SpotlightDisableIndexRebuild", *MEMORY[0x1E695E890], 0))
    {
      v130 = *__error();
      v131 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
      {
        *__buf = 136315394;
        *&__buf[4] = "_SIOpenIndex";
        *&__buf[12] = 1024;
        *&__buf[14] = 12353;
        _os_log_error_impl(&dword_1C278D000, v131, OS_LOG_TYPE_ERROR, "%s:%d: Index rebuild disabled by SpotlightDisableIndexRebuild", __buf, 0x12u);
      }

      *__error() = v130;
      goto LABEL_127;
    }

    __si_set_error_str(1, "%s:%u: %s", v124, v125, v126, v127, v128, v129, "SpotlightIndex.c");
LABEL_249:
    v63 = v585;
    v65 = 22;
    v64 = v598;
    goto LABEL_63;
  }

LABEL_127:
  v584 = check_crash_state(v600, v80, v18, 0, 1);
  v602 = v18;
  v582 = check_crash_state(v600, v80, v18, 0, 3);
  if (v582)
  {
    v645 = 2;
  }

  v132 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040A085CBA5uLL);
  *(v50 + 174) = v132;
  v132[3] = 2;
  v133 = malloc_type_calloc(2uLL, 8uLL, 0x2004093837F09uLL);
  v134 = *(v50 + 174);
  *v134 = v133;
  *(v134 + 16) = -1;
  v135 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040A085CBA5uLL);
  *(v50 + 173) = v135;
  v135[3] = 2;
  v136 = malloc_type_calloc(2uLL, 8uLL, 0x2004093837F09uLL);
  v137 = *(v50 + 173);
  *v137 = v136;
  *(v137 + 16) = -1;
  v634 = 0;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v633 = 0;
  *&v632[4] = 0;
  *v632 = 0;
  v139 = setThreadIdAndInfo(*(v50 + 8), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  *&v632[8] = HIDWORD(v139);
  v633 = v139;
  *&v632[4] = v140;
  *v632 = v141;
  v142 = threadData[9 * v139 + 1] + 320 * HIDWORD(v139);
  *(v142 + 216) = 0;
  v143 = *(v142 + 312);
  v144 = *(v142 + 224);
  if (v144)
  {
    v144(*(v142 + 288));
  }

  v631 = v633;
  v630 = *&v632[8];
  v629 = *v632;
  v13 = v607;
  v63 = v585;
  v58 = v595;
  if (_setjmp(v142))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *__buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", __buf, 2u);
    }

    *(v142 + 312) = v143;
    CIOnThreadCleanUpReset(v629);
    dropThreadId(v631, 1, add_explicit + 1);
    CICleanUpReset(v631, HIDWORD(v629));
    v151 = 0;
    v82 = -1;
    v83 = 0;
    v78 = v592;
    goto LABEL_135;
  }

  v593 = v143;
  if (SIIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
  }

  if (SIIsAppleInternal_internal)
  {
    if (v597)
    {
      v203 = 0;
    }

    else
    {
      v203 = fd_create_protected(*(v50 + 8), "activityJournal.1", 536871433, 3u);
    }

    si_activity_journal_init((v50 + 2192), v203);
    fd_mark_purgable(*(v50 + 274));
  }

  v241 = *(v50 + 15);
  v242 = CIMetaInfoOpenAndLock(*(v50 + 8));
  if (v242)
  {
    v243 = v242;
    v244 = v242;
    v245 = *__error();
    v246 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v246, OS_LOG_TYPE_ERROR))
    {
      *__buf = 136315650;
      *&__buf[4] = "_SIOpenIndex";
      *&__buf[12] = 1024;
      *&__buf[14] = 12393;
      *&__buf[18] = 1024;
      *&__buf[20] = v244;
      _os_log_error_impl(&dword_1C278D000, v246, OS_LOG_TYPE_ERROR, "%s:%d: CIMetaInfoOpenAndLock error %d", __buf, 0x18u);
    }

    *__error() = v245;
    bzero(__buf, 0x400uLL);
    snprintf(__buf, 0x400uLL, "CIMetaInfoOpenAndLock failed with %d", v243);
    __si_set_error_str(0, "%s:%u: %s", v247, v248, v249, v250, v251, v252, "SpotlightIndex.c");
    v253 = threadData[9 * v631 + 1] + 320 * v630;
    *(v253 + 312) = v593;
    v254 = *(v253 + 232);
    v66 = v608;
    if (v254)
    {
      v254(*(v253 + 288));
    }

    dropThreadId(v631, 0, add_explicit + 1);
    v65 = v244;
LABEL_258:
    v84 = v598;
LABEL_259:
    v63 = v585;
    goto LABEL_230;
  }

  v255 = *(v50 + 321);
  if (v50[2072] != 1)
  {
    if (v255 < 100)
    {
      goto LABEL_307;
    }

    goto LABEL_306;
  }

  if (v255 > 112)
  {
LABEL_306:
    v50[2073] = 1;
  }

LABEL_307:
  v628[0] = MEMORY[0x1E69E9820];
  v628[1] = 0x40000000;
  v628[2] = ___SIOpenIndex_block_invoke_904;
  v628[3] = &__block_descriptor_tmp_905;
  v628[4] = v50;
  check_touch_file(v600, "tmp.Glow", v628);
  v627[0] = MEMORY[0x1E69E9820];
  v627[1] = 0x40000000;
  v627[2] = ___SIOpenIndex_block_invoke_2;
  v627[3] = &__block_descriptor_tmp_906;
  v627[4] = v50;
  check_touch_file(v600, "Glow.created", v627);
  if ((v18 & 0x40) != 0)
  {
    *(v50 + 1646) |= 0x40u;
  }

  else
  {
    v626[0] = MEMORY[0x1E69E9820];
    v626[1] = 0x40000000;
    v626[2] = ___SIOpenIndex_block_invoke_3;
    v626[3] = &__block_descriptor_tmp_907;
    v626[4] = v50;
    check_touch_file(v600, "tmp.Cab", v626);
  }

  v594 = add_explicit;
  if ((v18 & 0x400) != 0)
  {
    *(v50 + 1646) |= 0x100u;
  }

  else
  {
    v625[0] = MEMORY[0x1E69E9820];
    v625[1] = 0x40000000;
    v625[2] = ___SIOpenIndex_block_invoke_4;
    v625[3] = &__block_descriptor_tmp_908;
    v625[4] = v50;
    check_touch_file(v600, "tmp.Star", v625);
  }

  v624[0] = MEMORY[0x1E69E9820];
  v624[1] = 0x40000000;
  v624[2] = ___SIOpenIndex_block_invoke_5;
  v624[3] = &__block_descriptor_tmp_910;
  v624[4] = v50;
  check_touch_file(v600, "tmp.DerivedIsMeV1", v624);
  v623[0] = MEMORY[0x1E69E9820];
  v623[1] = 0x40000000;
  v623[2] = ___SIOpenIndex_block_invoke_6;
  v623[3] = &__block_descriptor_tmp_912;
  v623[4] = v50;
  check_touch_file(v600, "DerivedIsMeV1.created", v623);
  v622[0] = MEMORY[0x1E69E9820];
  v622[1] = 0x40000000;
  v622[2] = ___SIOpenIndex_block_invoke_7;
  v622[3] = &__block_descriptor_tmp_913;
  v622[4] = v50;
  check_touch_file(v600, "derivedFromToIsMeNameUpdated1.created", v622);
  v621[0] = MEMORY[0x1E69E9820];
  v621[1] = 0x40000000;
  v621[2] = ___SIOpenIndex_block_invoke_8;
  v621[3] = &__block_descriptor_tmp_914;
  v621[4] = v50;
  check_touch_file(v600, "derivedFromToIsMeNameAdded1.created", v621);
  v620[0] = MEMORY[0x1E69E9820];
  v620[1] = 0x40000000;
  v620[2] = ___SIOpenIndex_block_invoke_9;
  v620[3] = &__block_descriptor_tmp_915;
  v620[4] = v50;
  check_touch_file(v600, "derivedFromToIsMeAliasUpdated1.created", v620);
  v619[0] = MEMORY[0x1E69E9820];
  v619[1] = 0x40000000;
  v619[2] = ___SIOpenIndex_block_invoke_10;
  v619[3] = &__block_descriptor_tmp_916;
  v619[4] = v50;
  check_touch_file(v600, "derivedFromToIsMeAliasAdded1.created", v619);
  v618 = 0;
  if (v597 || (index_state = si_read_index_state(v50), v278 = v50[2481], !v50[2481]))
  {
    if (v50[2072])
    {
      v284 = 75776;
    }

    else
    {
      v284 = 141312;
    }

    v285 = v284 & 0xFFFFFFF1 | (2 * (v18 & 4));
    if (CIMetaInfoRead((v50 + 1200), v50[2072]))
    {
      if (!v597 && (db_check_datastore(*(v50 + 8), v285) & 0x80000000) == 0)
      {
        *a10 = 1;
      }

      v286 = *__error();
      v287 = _SILogForLogForCategory(10);
      v63 = v585;
      v66 = v608;
      if (os_log_type_enabled(v287, OS_LOG_TYPE_ERROR))
      {
        *__buf = 136315650;
        *&__buf[4] = "_SIOpenIndex";
        *&__buf[12] = 1024;
        *&__buf[14] = 12518;
        *&__buf[18] = 1024;
        *&__buf[20] = -1;
        _os_log_error_impl(&dword_1C278D000, v287, OS_LOG_TYPE_ERROR, "%s:%d: CIMetaInfoRead error %d", __buf, 0x18u);
      }

      *__error() = v286;
      bzero(__buf, 0x400uLL);
      snprintf(__buf, 0x400uLL, "CIMetaInfoRead failed with %d", -1);
      __si_set_error_str(1, "%s:%u: %s", v288, v289, v290, v291, v292, v293, "SpotlightIndex.c");
      v294 = threadData[9 * v631 + 1] + 320 * v630;
      *(v294 + 312) = v593;
      v295 = *(v294 + 232);
      if (v295)
      {
        v295(*(v294 + 288));
      }

      dropThreadId(v631, 0, v594 + 1);
      v65 = -1;
      goto LABEL_491;
    }

    v312 = db_check_datastore(*(v50 + 8), v285);
    v313 = v312;
    v567 = *__error();
    v314 = *__error();
    v315 = _SILogForLogForCategory(0);
    v316 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v315, v316))
    {
      *__buf = 67109120;
      *&__buf[4] = v312;
      _os_log_impl(&dword_1C278D000, v315, v316, "db_check_datastore: %d", __buf, 8u);
    }

    *__error() = v314;
    if (v312 == -1 && v567 == 2)
    {
      v323 = *__error();
      v324 = _SILogForLogForCategory(0);
      v325 = 2 * (gSILogLevels[0] < 4);
      v13 = v607;
      if (os_log_type_enabled(v324, v325))
      {
        *__buf = 0;
        _os_log_impl(&dword_1C278D000, v324, v325, "file didn't exist, try shadow", __buf, 2u);
      }

      *__error() = v323;
      v326 = v592;
    }

    else
    {
      v13 = v607;
      v326 = v592;
      if (!v312)
      {
        v327 = 7;
        goto LABEL_361;
      }

      if (v312 != 2)
      {
        if (v312 != 1)
        {
          v405 = *__error();
          bzero(__buf, 0x400uLL);
          snprintf(__buf, 0x400uLL, "invalid datastore %d, %d", v312, v405);
LABEL_425:
          __si_set_error_str(1, "%s:%u: %s", v376, v377, v378, v379, v380, v381, "SpotlightIndex.c");
          v406 = threadData[9 * v631 + 1] + 320 * v630;
          *(v406 + 312) = v593;
          v407 = *(v406 + 232);
          v66 = v608;
          if (v407)
          {
            v407(*(v406 + 288));
          }

          v65 = 0;
          dropThreadId(v631, 0, v594 + 1);
          goto LABEL_258;
        }

        v327 = 7;
        v313 = 1;
        v328 = 1;
        v329 = v285 | 1;
LABEL_362:
        v580 = v329;
        v581 = v328;
        v330 = v327 | 0x2000;
        if (!v584)
        {
          v330 = v327;
        }

        if (v582)
        {
          v331 = v330 | 0x4000;
        }

        else
        {
          v331 = v330;
        }

        if (v326)
        {
LABEL_368:
          v332 = v331;
          if (v331 != 7)
          {
            goto LABEL_433;
          }

          goto LABEL_369;
        }

        v570 = v313;
        v568 = reverseStoreNeedsRecover(*(v50 + 8));
        v343 = *__error();
        v344 = _SILogForLogForCategory(0);
        v345 = 2 * (gSILogLevels[0] < 4);
        if (os_log_type_enabled(v344, v345))
        {
          *__buf = 67109120;
          *&__buf[4] = v568;
          _os_log_impl(&dword_1C278D000, v344, v345, "reverse store state: %x", __buf, 8u);
        }

        *__error() = v343;
        if (v568 < 0)
        {
          v346 = v568;
          v13 = v607;
          if (v568 == -1073623027)
          {
            goto LABEL_368;
          }

          if (v568 == -804450864)
          {
            if (v331 == 7)
            {
LABEL_369:
              v333 = db_restore_dirty_chunk_info(*(v50 + 8), &v636, v317, v318, v319, v320, v321, v322);
              if (v333)
              {
                v334 = v333;
                bzero(__buf, 0x400uLL);
                snprintf(__buf, 0x400uLL, "restore db dirty pages failed %d", v334);
                __si_set_error_str(1, "%s:%u: %s", v335, v336, v337, v338, v339, v340, "SpotlightIndex.c");
                v341 = 4;
              }

              else
              {
                v341 = 7;
              }

              if (v592)
              {
                v332 = v341;
              }

              else
              {
                v390 = reverseStoreRestoreDirtyBitmap(*(v50 + 8), &v638);
                v332 = v341;
                if (v390)
                {
                  v391 = v390;
                  bzero(__buf, 0x400uLL);
                  snprintf(__buf, 0x400uLL, "restore rs dirty pages failed %d", v391);
                  __si_set_error_str(1, "%s:%u: %s", v392, v393, v394, v395, v396, v397, "SpotlightIndex.c");
                  v332 = 4;
                }
              }

LABEL_433:
              v416 = *(v50 + 1646);
              if ((v416 & 0x10) != 0)
              {
                v417 = 48;
              }

              else
              {
                v417 = 16;
              }

              v418 = v332 | v417 | (2 * v590);
              if (!v589)
              {
                v418 |= 0x40u;
              }

              if (v50[2072])
              {
                v419 = v418 | 0x100;
              }

              else
              {
                v419 = v418;
              }

              v420 = SICopyProperty(v50, @"kSITokenizerUseCRF");
              if (v420)
              {
                v421 = v420;
                if (CFBooleanGetValue(v420))
                {
                  *(v50 + 1646) = *(v50 + 1646) & 0xF9FFFFFF | 0x2000000;
                }

                CFRelease(v421);
              }

              VersionForDirectory = ContentIndexGetVersionForDirectory(*(v50 + 8));
              v423 = VersionForDirectory;
              if (v50[2072] == 1)
              {
                if ((VersionForDirectory - 115) < 0xFFFFFFFD)
                {
                  v424 = 114;
                  goto LABEL_478;
                }
              }

              else if ((VersionForDirectory - 96) >= 5 && VersionForDirectory != 102)
              {
                v424 = 102;
LABEL_478:
                v462 = VersionForDirectory;
                if (VersionForDirectory >= v424 || (!v50[2072] ? (v463 = 95) : (v463 = 111), VersionForDirectory != -1 && VersionForDirectory < v463))
                {
                  bzero(__buf, 0x400uLL);
                  snprintf(__buf, 0x400uLL, "invalid index version reindexing %d, %d", v423, v424);
                  __si_set_error_str(1, "%s:%u: %s", v464, v465, v466, v467, v468, v469, "SpotlightIndex.c");
                  v470 = *__error();
                  v471 = _SILogForLogForCategory(0);
                  v472 = gSILogLevels[0] < 3;
                  if (os_log_type_enabled(v471, (gSILogLevels[0] < 3)))
                  {
                    *buf = 67109376;
                    *&buf[4] = v462;
                    *&buf[8] = 1024;
                    *&buf[10] = v424;
                    _os_log_impl(&dword_1C278D000, v471, v472, "*warn* Index version %d out of date, expected %d, reindexing", buf, 0xEu);
                  }

                  *__error() = v470;
                  if (!v597)
                  {
                    x_unlinkat(*(v50 + 8), "store.db", 0);
                    x_unlinkat(*(v50 + 8), ".store.db", 0);
                  }

                  v473 = threadData[9 * v631 + 1] + 320 * v630;
                  *(v473 + 312) = v593;
                  v474 = *(v473 + 232);
                  v63 = v585;
                  v66 = v608;
                  if (v474)
                  {
                    v474(*(v473 + 288));
                  }

                  v65 = 0;
                  dropThreadId(v631, 0, v594 + 1);
                  goto LABEL_491;
                }

                bzero(__buf, 0x400uLL);
                snprintf(__buf, 0x400uLL, "invalid index version recovering %d, %d", v423, v424);
                __si_set_error_str(1, "%s:%u: %s", v477, v478, v479, v480, v481, v482, "SpotlightIndex.c");
                v483 = *__error();
                v484 = _SILogForLogForCategory(0);
                v485 = gSILogLevels[0] < 3;
                if (os_log_type_enabled(v484, (gSILogLevels[0] < 3)))
                {
                  *buf = 67109376;
                  *&buf[4] = v462;
                  *&buf[8] = 1024;
                  *&buf[10] = v424;
                  _os_log_impl(&dword_1C278D000, v484, v485, "*warn* Index version %d out of date, expected %d, recovering", buf, 0xEu);
                }

                *__error() = v483;
                *a10 = 1;
                v475 = *(v50 + 364);
                v476 = -1;
                v13 = v607;
LABEL_496:
                *(v50 + 364) = v475;
                v486 = *__error();
                v487 = _SILogForLogForCategory(0);
                v488 = 2 * (gSILogLevels[0] < 4);
                v66 = v608;
                if (os_log_type_enabled(v487, v488))
                {
                  *__buf = 0;
                  _os_log_impl(&dword_1C278D000, v487, v488, "Could not open existing content index", __buf, 2u);
                }

                *__error() = v486;
                v489 = threadData[9 * v631 + 1] + 320 * v630;
                *(v489 + 312) = v593;
                v490 = *(v489 + 232);
                if (v490)
                {
                  v490(*(v489 + 288));
                }

                v65 = 0;
                dropThreadId(v631, 0, v594 + 1);
                bzero(__buf, 0x400uLL);
                snprintf(__buf, 0x400uLL, "content index open failed %d", v476);
                __si_set_error_str(0, "%s:%u: %s", v491, v492, v493, v494, v495, v496, "SpotlightIndex.c");
                goto LABEL_258;
              }

              v425 = v419;
              v426 = ((v416 >> 7) & 0x8000 | (v416 >> 13) & 0x800) ^ 0x8000;
              *a10 = 1;
              v571 = *(v50 + 364);
              v617[0] = MEMORY[0x1E69E9820];
              v617[1] = 0x40000000;
              v617[2] = ___SIOpenIndex_block_invoke_930;
              v617[3] = &__block_descriptor_tmp_931;
              v617[4] = v50;
              _si_next_index_id(v50, (*(*(v50 + 173) + 8) + *(*(v50 + 174) + 8)), 0, 1);
              v427 = *(v50 + 174);
              v428 = *(v50 + 173);
              v429 = *(v50 + 824);
              v430 = *(v50 + 149);
              if (v430)
              {
                vector_store = db_get_vector_store(v430);
              }

              else
              {
                vector_store = 0;
              }

              v432 = ContentIndexOpenBulk((v50 + 1200), v591, v427, v428, v425 | v426, v429, (v50 + 2408), &v618, vector_store, v617, v641);
              v433 = v432;
              v434 = *__error();
              v435 = _SILogForLogForCategory(0);
              v436 = 2 * (gSILogLevels[0] < 4);
              if (os_log_type_enabled(v435, v436))
              {
                v437 = *(v50 + 301);
                *__buf = 67109632;
                *&__buf[4] = v432;
                *&__buf[8] = 2048;
                *&__buf[10] = v50;
                *&__buf[18] = 2048;
                *&__buf[20] = v437;
                _os_log_impl(&dword_1C278D000, v435, v436, "ContentIndexOpenBulk: %d opened %p with recovery time %llu", __buf, 0x1Cu);
              }

              *__error() = v434;
              if (v432 == 3)
              {
                v433 = 0;
                v13 = v607;
                v63 = v585;
                v444 = v592;
                v445 = v18 & 4;
              }

              else
              {
                v13 = v607;
                v63 = v585;
                v444 = v592;
                v445 = v18 & 4;
                if (v432 < 0)
                {
                  v475 = v571;
                  v476 = v432;
                  goto LABEL_496;
                }
              }

              v446 = v433;
              if (!v597)
              {
                si_handle_tmp_files(*(v50 + 8), v432 == 3, (v18 >> 12) & 1, &v644, &v643, &cf);
                v445 = v18 & 4;
              }

              if (v433 == 2)
              {
                if (__si_invalid_term_update_set_key)
                {
                  __si_set_error_str(1, "%s:%u: %s", v438, v439, v440, v441, v442, v443, "SpotlightIndex.c");
                  _si_set_invalid_term_update_set();
                }

                v447 = v580 | 0x20;
                if (v444)
                {
LABEL_505:
                  v497 = v581 ^ 1;
                  if ((v447 & 0x20) == 0)
                  {
                    v497 = 1;
                  }

                  if (v497)
                  {
                    memset(__buf, 0, 40);
                    *__buf = *(v50 + 8);
                    *&__buf[8] = "store.db";
                    v502 = *(v50 + 15);
                    *&__buf[16] = v447;
                    *&__buf[20] = v502;
                    v365 = v594;
                    if (SIIsAppleInternal_onceToken != -1)
                    {
                      dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
                    }

                    datastore_with_ctx = 0;
                    if (SIIsAppleInternal_internal)
                    {
                      v504 = v50 + 2192;
                    }

                    else
                    {
                      v504 = 0;
                    }

                    *&__buf[24] = v504;
                    __buf[32] = 0;
                    *&__buf[40] = v50;
                    *&__buf[48] = _sdb_cache_flush_callback;
                    if ((v447 & 0x1000) == 0)
                    {
                      datastore_with_ctx = db2_get_datastore_with_ctx(__buf);
                    }

                    *(v50 + 149) = datastore_with_ctx;
                    v501 = *__error();
                  }

                  else
                  {
                    v498 = *__error();
                    v499 = _SILogForLogForCategory(0);
                    v500 = gSILogLevels[0] < 3;
                    v365 = v594;
                    if (os_log_type_enabled(v499, (gSILogLevels[0] < 3)))
                    {
                      *__buf = 0;
                      _os_log_impl(&dword_1C278D000, v499, v500, "*warn* datastore clean, index dirty, recovering...", __buf, 2u);
                    }

                    *__error() = v498;
                    v501 = 22;
                  }

                  if (!*(v50 + 149))
                  {
                    bzero(__buf, 0x400uLL);
                    snprintf(__buf, 0x400uLL, "open datastore failed %d", v501);
                    __si_set_error_str(1, "%s:%u: %s", v519, v520, v521, v522, v523, v524, "SpotlightIndex.c");
                    v525 = threadData[9 * v631 + 1] + 320 * v630;
                    *(v525 + 312) = v593;
                    v526 = *(v525 + 232);
                    if (v526)
                    {
                      v526(*(v525 + 288));
                    }

                    v65 = 0;
                    dropThreadId(v631, 0, v365 + 1);
                    goto LABEL_208;
                  }

                  *__buf = 0;
                  v505 = SICopyProperty(v50, @"kSINextIndexId");
                  if (v505)
                  {
                    v506 = v505;
                    v507 = CFGetTypeID(v505);
                    if (v507 == CFNumberGetTypeID())
                    {
                      CFNumberGetValue(v506, kCFNumberSInt32Type, __buf);
                    }

                    CFRelease(v506);
                  }

                  if (*__buf > *(v50 + 364))
                  {
                    *(v50 + 364) = *__buf;
                  }

                  v404 = v584 != 0;
                  db_datastore_set_bg_assertion_flag(*(v50 + 149), v50[6944]);
                  if (v446)
                  {
                    if (!v597 && v446 == 2)
                    {
                      db_set_dirty_chunks(*(v50 + 149), 0, 0, 0);
                      db_store_dirty_chunk_info(*(v50 + 149), *(v50 + 8), 1, 0);
                      v508 = *(v50 + 828);
                      if (v508)
                      {
                        reverseStoreStoreDirtyBitmap(v508);
                      }

                      v509 = handleIndexRepair(v50, v13, v618);
                      if (v509)
                      {
                        v510 = v509;
                        bzero(__buf, 0x400uLL);
                        snprintf(__buf, 0x400uLL, "recover datastore error %d", v510);
                        __si_set_error_str(1, "%s:%u: %s", v511, v512, v513, v514, v515, v516, "SpotlightIndex.c");
                        goto LABEL_533;
                      }

LABEL_542:
                      v50[2481] = 4;
                      is_dirty = db_is_dirty(*(v50 + 149));
                      v533 = 4;
                      if (is_dirty)
                      {
                        v533 = 1;
                        v50[2481] = 1;
                      }

                      v151 = v446;
                      v50[2482] = v533;
                      if (v592)
                      {
                        v50[2483] = 0;
LABEL_554:
                        v535 = *(v50 + 174);
                        v536 = *(*(v50 + 173) + 8);
                        v537 = *(v535 + 8);
                        if (v50[6944] == 1)
                        {
                          v537 = *(v50 + 1242);
                        }

                        if (*(v535 + 8))
                        {
                          v538 = *(v535 + 8);
                          v539 = v50 + 2488;
                          v540 = **(v50 + 174);
                          for (i = 0; v538 != i; ++i)
                          {
                            v542 = atomic_load((*(v540 + 8 * i) + 32));
                            if (v542 > 0)
                            {
                              if (v542 == 1)
                              {
LABEL_566:
                                LOBYTE(v542) = 4;
                                v539[i] = 4;
                                goto LABEL_567;
                              }

                              if (v542 != 2)
                              {
LABEL_564:
                                LOBYTE(v542) = 1;
                              }
                            }

                            else
                            {
                              if (v542 == -1073623027)
                              {
                                goto LABEL_566;
                              }

                              if (v542 != -804450864)
                              {
                                goto LABEL_564;
                              }

                              LOBYTE(v542) = 3;
                            }

                            v539[i] = v542;
                            v50[2481] = 1;
LABEL_567:
                            v543 = **(v50 + 174);
                            *(*(v543 + 8 * i) + 15201) = v542;
                            v540 = v543;
                          }
                        }

                        if (!v536)
                        {
LABEL_580:
                          v403 = 0;
                          si_write_index_state(v50, 1, 0, v528, v529, v530, v531, v532);
                          goto LABEL_581;
                        }

                        v544 = v50 + 2488;
                        v545 = **(v50 + 173);
                        v546 = 8 * v536;
                        v547 = 0;
                        v548 = v537;
                        while (1)
                        {
                          v549 = atomic_load((*(v545 + v547) + 32));
                          if (v549 > 0)
                          {
                            if (v549 == 1)
                            {
LABEL_578:
                              LOBYTE(v549) = 4;
                              v544[v548] = 4;
                              goto LABEL_579;
                            }

                            if (v549 != 2)
                            {
LABEL_576:
                              LOBYTE(v549) = 1;
                            }
                          }

                          else
                          {
                            if (v549 == -1073623027)
                            {
                              goto LABEL_578;
                            }

                            if (v549 != -804450864)
                            {
                              goto LABEL_576;
                            }

                            LOBYTE(v549) = 3;
                          }

                          v544[v548] = v549;
                          v50[2481] = 1;
LABEL_579:
                          v550 = **(v50 + 173);
                          *(*(v550 + v547) + 15201) = v549;
                          ++v548;
                          v547 += 8;
                          v545 = v550;
                          if (v546 == v547)
                          {
                            goto LABEL_580;
                          }
                        }
                      }

                      v534 = *(v50 + 828);
                      if (v534)
                      {
                        LODWORD(v534) = *(v534 + 4416);
                        switch(v534)
                        {
                          case 0xC001D00D:
                            v50[2483] = 4;
                            goto LABEL_553;
                          case 0xD00D0DD0:
                            LOBYTE(v534) = 3;
                            break;
                          case 2:
                            break;
                          default:
                            v50[2483] = 1;
                            v50[2481] = 1;
LABEL_553:
                            v13 = v607;
                            v63 = v585;
                            v58 = v595;
                            v365 = v594;
                            goto LABEL_554;
                        }
                      }

                      v50[2483] = v534;
                      v645 |= 1u;
                      goto LABEL_553;
                    }
                  }

                  else
                  {
                    db_set_dirty_chunks(*(v50 + 149), v636, v637, SHIDWORD(v637));
                    v636 = 0;
                  }

                  if (v597)
                  {
                    v403 = 0;
                    v151 = v446;
                    goto LABEL_581;
                  }

                  goto LABEL_542;
                }

                if (handleDirStoreOverlay(v50))
                {
                  v645 |= 2u;
                }

                v448 = v580 | 0x20;
                v445 = v18 & 4;
              }

              else
              {
                v447 = v580;
                v448 = v580;
                if (v444)
                {
                  goto LABEL_505;
                }
              }

              v583 = v446;
              v449 = check_crash_state(*(v50 + 8), v445 != 0, v18, &v635, 2);
              bzero(__buf, 0x400uLL);
              v450 = *__error();
              v451 = _SILogForLogForCategory(0);
              v452 = 2 * (gSILogLevels[0] < 4);
              if (os_log_type_enabled(v451, v452))
              {
                v569 = v448;
                v453 = v452;
                v454 = v449;
                v455 = v635;
                v456 = fcntl(*(v50 + 8), 50, __buf);
                v457 = 0;
                if (__buf[0])
                {
                  v458 = v456 < 0;
                }

                else
                {
                  v458 = 1;
                }

                if (!v458)
                {
                  v457 = __buf;
                }

                *buf = 134218242;
                *&buf[4] = v455;
                v449 = v454;
                *&buf[12] = 2080;
                *&buf[14] = v457;
                v459 = v453;
                v448 = v569;
                _os_log_impl(&dword_1C278D000, v451, v459, "rs last_crash_delta: %ld for %s", buf, 0x16u);
              }

              *__error() = v450;
              v460 = openReverseStore(*(v50 + 8), v449, v583 == 2, v590 != 0, *(v50 + 824), &v638, v641);
              *(v50 + 828) = v460;
              if (v640)
              {
                CFRelease(v640);
                v640 = 0;
                v461 = *(v50 + 828);
              }

              else
              {
                v461 = v460;
              }

              v63 = v585;
              v639 = 0;
              v638 = 0;
              v446 = v583;
              if (!v461)
              {
                v645 |= 1u;
              }

              v447 = v448;
              goto LABEL_505;
            }

            v332 = v331;
            if (v331 != 4)
            {
              goto LABEL_433;
            }

            v347 = *__error();
            v348 = _SILogForLogForCategory(0);
            v349 = gSILogLevels[0] < 3;
            if (os_log_type_enabled(v348, (gSILogLevels[0] < 3)))
            {
              *__buf = 0x404000300;
              *&__buf[8] = 1024;
              *&__buf[10] = -804450864;
              *&__buf[14] = 1024;
              *&__buf[16] = v570;
              _os_log_impl(&dword_1C278D000, v348, v349, "*warn* datastore dirty, reverse store needs shadow -- forcing repair (%u, %u, %u)", __buf, 0x14u);
            }

LABEL_431:
            *__error() = v347;
            __si_set_error_str(1, "%s:%u: %s", v410, v411, v412, v413, v414, v415, "SpotlightIndex.c");
            *a10 = 1;
LABEL_533:
            v517 = threadData[9 * v631 + 1] + 320 * v630;
            *(v517 + 312) = v593;
            v518 = *(v517 + 232);
            if (v518)
            {
              v518(*(v517 + 288));
            }

            v65 = 0;
            dropThreadId(v631, 0, v594 + 1);
            v84 = v598;
            v13 = v607;
            v66 = v608;
            goto LABEL_259;
          }
        }

        else
        {
          if (!v568)
          {
            if (!v581)
            {
              v332 = 4;
              v13 = v607;
              v58 = v595;
              goto LABEL_433;
            }

            v347 = *__error();
            v408 = _SILogForLogForCategory(0);
            v409 = gSILogLevels[0] < 3;
            if (os_log_type_enabled(v408, (gSILogLevels[0] < 3)))
            {
              *__buf = 0;
              _os_log_impl(&dword_1C278D000, v408, v409, "*warn* datastore needs shadow, reverse store dirty -- forcing repair", __buf, 2u);
            }

            goto LABEL_431;
          }

          v346 = v568;
          v13 = v607;
          if (v568 == 2)
          {
            goto LABEL_368;
          }
        }

        bzero(__buf, 0x400uLL);
        snprintf(__buf, 0x400uLL, "invalid reverse store %d", v346);
        __si_set_error_str(1, "%s:%u: %s", v382, v383, v384, v385, v386, v387, "SpotlightIndex.c");
        v388 = threadData[9 * v631 + 1] + 320 * v630;
        *(v388 + 312) = v593;
        v389 = *(v388 + 232);
        if (v389)
        {
          v389(*(v388 + 288));
        }

        v65 = 0;
        dropThreadId(v631, 0, v594 + 1);
        v84 = v598;
        v66 = v608;
        goto LABEL_259;
      }
    }

    v327 = 4;
    v313 = 2;
LABEL_361:
    v328 = 0;
    v329 = v285;
    goto LABEL_362;
  }

  v279 = v50[2481];
  if (v50[6944] == 1 && v278 != 1 && v278 != 4)
  {
    v373 = index_state;
    v374 = *__error();
    v375 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v375, OS_LOG_TYPE_ERROR))
    {
      *__buf = 136315650;
      *&__buf[4] = "_SIOpenIndex";
      *&__buf[12] = 1024;
      *&__buf[14] = 12442;
      *&__buf[18] = 1024;
      *&__buf[20] = v278;
      _os_log_error_impl(&dword_1C278D000, v375, OS_LOG_TYPE_ERROR, "%s:%d: open indexstate not clean for locked indexing: %d", __buf, 0x18u);
    }

    *__error() = v374;
    bzero(__buf, 0x400uLL);
    snprintf(__buf, 0x400uLL, "open index state failed %d, %d", v373, v278);
    goto LABEL_425;
  }

  memcpy(__buf, v50 + 2480, sizeof(__buf));
  v280 = *__error();
  v281 = _SILogForLogForCategory(11);
  v282 = 2 * (dword_1EBF46AF8 < 4);
  if (os_log_type_enabled(v281, v282))
  {
    if (v278 > 4)
    {
      v283 = "unknown";
    }

    else
    {
      v283 = off_1E8192938[(v278 - 1)];
    }

    *buf = 134218242;
    *&buf[4] = v50;
    *&buf[12] = 2080;
    *&buf[14] = v283;
    _os_log_impl(&dword_1C278D000, v281, v282, "%p si state: %s", buf, 0x16u);
  }

  *__error() = v280;
  v350 = _SIOpenIndexFilesWithState(v50, v278, v589 == 0, (*(v50 + 1646) >> 4) & 1, v602, a10, &v618, v591, &v645, v584 != 0);
  v151 = v350;
  v351 = *__error();
  v352 = _SILogForLogForCategory(11);
  v353 = 2 * (dword_1EBF46AF8 < 4);
  if (os_log_type_enabled(v352, v353))
  {
    *buf = 134218240;
    *&buf[4] = v50;
    *&buf[12] = 1024;
    *&buf[14] = v350;
    _os_log_impl(&dword_1C278D000, v352, v353, "%p _SIOpenIndexFilesWithState: %d", buf, 0x12u);
  }

  *__error() = v351;
  v354 = *__error();
  if (v350 == 2)
  {
    v63 = v585;
    v365 = v594;
    if (handleDirStoreOverlay(v50))
    {
      v645 |= 2u;
    }

    v13 = v607;
    if (handleIndexRepair(v50, v607, v618))
    {
      __si_set_error_str(1, "%s:%u: %s", v366, v367, v368, v369, v370, v371, "SpotlightIndex.c");
      v363 = threadData[9 * v631 + 1] + 320 * v630;
      *(v363 + 312) = v593;
      v364 = *(v363 + 232);
      v66 = v608;
      if (!v364)
      {
        goto LABEL_399;
      }

      goto LABEL_398;
    }

    v372 = 0;
  }

  else
  {
    v63 = v585;
    if (v350 == -1)
    {
      v355 = *__error();
      v356 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v356, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "_SIOpenIndex";
        *&buf[12] = 1024;
        *&buf[14] = 12459;
        *&buf[18] = 1024;
        *&buf[20] = v354;
        _os_log_error_impl(&dword_1C278D000, v356, OS_LOG_TYPE_ERROR, "%s:%d: _SIOpenIndexFilesWithState error %d", buf, 0x18u);
      }

      *__error() = v355;
      __si_set_error_str(0, "%s:%u: %s", v357, v358, v359, v360, v361, v362, "SpotlightIndex.c");
      v363 = threadData[9 * v631 + 1] + 320 * v630;
      *(v363 + 312) = v593;
      v364 = *(v363 + 232);
      v13 = v607;
      v66 = v608;
      v365 = v594;
      if (!v364)
      {
        goto LABEL_399;
      }

LABEL_398:
      v364(*(v363 + 288));
LABEL_399:
      dropThreadId(v631, 0, v365 + 1);
      v65 = v354;
LABEL_491:
      v84 = v598;
      goto LABEL_230;
    }

    v372 = v278 == 3;
    v13 = v607;
    v365 = v594;
  }

  si_handle_tmp_files(*(v50 + 8), v372, (v602 >> 12) & 1, &v644, &v643, &cf);
  if (memcmp(__buf, v50 + 2480, 0x1000uLL))
  {
    si_write_index_state(v50, 0, 0, v398, v399, v400, v401, v402);
  }

  v403 = v354;
  v404 = 0;
LABEL_581:
  v579 = v404;
  v78 = v592;
  if ((v50[6944] & 1) == 0)
  {
    v551 = fd_create_protected(*(v50 + 8), "topK.v2.mdplistc", 0, 0);
    if (v551)
    {
      v552 = v551;
      memset(__buf, 0, 144);
      fd_stat(v551, __buf);
      v553 = fd_mmap(v552);
      if (v553 != -1)
      {
        v574 = v553;
        *buf = v553;
        *&buf[8] = *&__buf[96];
        *&buf[16] = 0;
        v616[0] = 1;
        v616[1] = buf;
        v554 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
        v555 = setThreadIdAndInfo(-1, sMappingExceptionCallbacks, v616, 0, v554 + 1);
        v614 = HIDWORD(v555);
        v615 = v555;
        v613 = __PAIR64__(v556, v557);
        v558 = threadData[9 * v555 + 1] + 320 * HIDWORD(v555);
        *(v558 + 216) = 0;
        v559 = *(v558 + 312);
        v560 = *(v558 + 224);
        v561 = v558;
        if (v560)
        {
          v560(*(v558 + 288));
        }

        v612 = v615;
        v611 = v614;
        v610 = v613;
        if (_setjmp(v561))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v609 = 0;
            _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v609, 2u);
          }

          v561[78] = v559;
          CIOnThreadCleanUpReset(v610);
          dropThreadId(v612, 1, v554 + 1);
          CICleanUpReset(v612, HIDWORD(v610));
        }

        else
        {
          v562 = *MEMORY[0x1E695E480];
          *(v50 + 83) = _MDPlistContainerCreateWithBytes();
          v563 = threadData[9 * v612 + 1] + 320 * v611;
          *(v563 + 312) = v559;
          v564 = *(v563 + 232);
          if (v564)
          {
            v564(*(v563 + 288));
          }

          dropThreadId(v612, 0, v554 + 1);
          v13 = v607;
        }

        v365 = v594;
        v78 = v592;
        if (!*(v50 + 83))
        {
          munmap(v574, *&__buf[96]);
        }
      }

      fd_release(v552);
      v63 = v585;
      v58 = v595;
    }
  }

  v634 = 1;
  v565 = threadData[9 * v631 + 1] + 320 * v630;
  *(v565 + 312) = v593;
  v566 = *(v565 + 232);
  if (v566)
  {
    v566(*(v565 + 288));
  }

  dropThreadId(v631, 0, v365 + 1);
  v82 = v403;
  v83 = v579;
LABEL_135:
  if ((v634 & 1) == 0)
  {
    __si_set_error_str(1, "%s:%u: %s", v145, v146, v147, v148, v149, v150, "SpotlightIndex.c");
    v65 = 22;
LABEL_208:
    v84 = v598;
    v66 = v608;
LABEL_230:
    if (v640)
    {
      CFRelease(v640);
      v640 = 0;
    }

    v639 = 0;
    v638 = 0;
    _SICloseIndex(v50, 0);
    v225 = *(v50 + 149);
    if (v225)
    {
      db_release_datastore_no_sync(v225);
      *(v50 + 149) = 0;
    }

    v226 = *(v50 + 828);
    if (v226)
    {
      freeReverseDirStore(v226);
      *(v50 + 828) = 0;
    }

    *v66 = 0;
    v64 = v84;
LABEL_63:
    if (cf)
    {
      CFRelease(cf);
    }

    if (v644)
    {
      CFRelease(v644);
    }

    MEMORY[0x1C6921200](v63);
    close(v63);
    free(v636);
    if (*(v50 + 5))
    {
      guarded_close_np();
      if ((v64 & 1) == 0)
      {
LABEL_75:
        ContentIndexListFree(*(v50 + 174));
        ContentIndexListFree(*(v50 + 173));
        if (v13)
        {
          v74 = *(v13 + 24);
          if (v74)
          {
            v74(v13);
          }
        }

        v75 = *(v50 + 187);
        if (v75)
        {
          CFRelease(v75);
        }

        free(v50);
        *v66 = 0;
        *__error() = v65;
        result = 0xFFFFFFFFLL;
        goto LABEL_81;
      }
    }

    else
    {
      close(*(v50 + 8));
      if ((v64 & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    v73 = *(v50 + 8);
    if ((v73 & 0x80000000) == 0)
    {
      unregisterForCloning(v73);
    }

    goto LABEL_75;
  }

  v81 = v151;
  v84 = v598;
  v18 = v602;
LABEL_88:
  v85 = v83;
  v587 = v84;
  v588 = v81;
  *v608 = v50;
  v606 = v13;
  v586 = v82;
  if (v78)
  {
    v86 = v645;
  }

  else if ((v18 & 8) != 0 || (v50[2072] & 1) != 0 || *(v50 + 828))
  {
    v86 = v645;
  }

  else
  {
    v86 = v645;
    if (!v645)
    {
      v96 = __si_assert_copy_extra_661(-1);
      v97 = v96;
      v98 = "";
      if (v96)
      {
        v98 = v96;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 12964, "fs_only || newIndex->dirStore || rebuildDirStore", v98);
      free(v97);
      if (__valid_fs(-1))
      {
        v99 = 2989;
      }

      else
      {
        v99 = 3072;
      }

      *v99 = -559038737;
      abort();
    }
  }

  v158 = SIInitIndex(v50, v58, v596, v18, a9, v644, cf, 0, v86);
  if ((v158 & 0x80000000) != 0)
  {
    if (!__si_error_str_key || !pthread_getspecific(__si_error_str_key))
    {
      bzero(__buf, 0x400uLL);
      snprintf(__buf, 0x400uLL, "init index error %d", v158);
      __si_set_error_str(1, "%s:%u: %s", v159, v160, v161, v162, v163, v164, "SpotlightIndex.c");
    }

    v65 = 22;
    v13 = v606;
    v66 = v608;
    goto LABEL_230;
  }

  if ((v86 & 1) == 0)
  {
    if ((v86 & 2) == 0)
    {
      goto LABEL_141;
    }

LABEL_148:
    x_unlinkat(v600, "mds64-crash-state-forward-path-index-v2", 2048);
    if (!v85)
    {
      goto LABEL_153;
    }

    goto LABEL_149;
  }

  x_unlinkat(v600, "mds64-crash-state-reverse-store-v2", 2048);
  if ((v86 & 2) != 0)
  {
    goto LABEL_148;
  }

LABEL_141:
  if (!v85)
  {
    goto LABEL_153;
  }

LABEL_149:
  __buf[0] = 0;
  v165 = db_clear_vector_fields(*(v50 + 149), __buf, *(v50 + 824), &__block_literal_global_942);
  if (__buf[0] == 1)
  {
    db_unlock_datastore(*(v50 + 149));
  }

  if (!v165)
  {
    x_unlinkat(v600, "mds64-crash-state-vector-index-v2", 2048);
  }

LABEL_153:
  if ((v600 & 0x80000000) == 0)
  {
    v166 = openat(v600, "rescan_needed", 0);
    if (v166 != -1)
    {
      v167 = v166;
      __buf[0] = 0;
      read(v166, __buf, 1uLL);
      close(v167);
    }
  }

  if ((~v18 & 0x80100) == 0)
  {
    v168 = *(v50 + 586);
    *&v649[0] = 0;
    *(&v649[0] + 1) = v649;
    *&v649[1] = 0x2000000000;
    BYTE8(v649[1]) = 0;
    *__buf = MEMORY[0x1E69E9820];
    *&__buf[8] = 0x40000000;
    *&__buf[16] = __exist_precheck_touch_file_block_invoke;
    *&__buf[24] = &unk_1E8191AB0;
    *&__buf[32] = v649;
    check_touch_file(v600, "132427543.fixed", __buf);
    v169 = *(*(&v649[0] + 1) + 24);
    _Block_object_dispose(v649, 8);
    if (v169 == 1)
    {
      if (gSILogLevels[0] < 5)
      {
        goto LABEL_214;
      }

      v170 = v18;
      LODWORD(v18) = *__error();
      v171 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_201;
      }

      *__buf = 67109120;
      *&__buf[4] = v599;
      v172 = OS_LOG_TYPE_DEFAULT;
      v173 = "(%u) precheck touch file exists";
      v174 = v171;
      v175 = 8;
      goto LABEL_200;
    }

    if (totalDiskSpaceSize_onceToken != -1)
    {
      dispatch_once(&totalDiskSpaceSize_onceToken, &__block_literal_global_1019);
    }

    v176 = gTotalDiskSpaceSize;
    v177 = openat(v600, ".", 0);
    if (v177 == -1)
    {
      v170 = v18;
      LODWORD(v18) = *__error();
      v200 = _SILogForLogForCategory(0);
      v201 = gSILogLevels[0] < 3;
      if (!os_log_type_enabled(v200, (gSILogLevels[0] < 3)))
      {
LABEL_201:
        *__error() = v18;
        LOWORD(v18) = v170;
        goto LABEL_214;
      }

      v202 = *__error();
      *__buf = 67109376;
      *&__buf[4] = v600;
      *&__buf[8] = 1024;
      *&__buf[10] = v202;
      v173 = "*warn* openat(%d): %d";
      v174 = v200;
      v172 = v201;
      v175 = 14;
LABEL_200:
      _os_log_impl(&dword_1C278D000, v174, v172, v173, __buf, v175);
      goto LABEL_201;
    }

    v178 = v177;
    v179 = fdopendir(v177);
    v604 = v63;
    v603 = v18;
    if (!v179)
    {
      v204 = *__error();
      v205 = _SILogForLogForCategory(0);
      v206 = gSILogLevels[0] < 3;
      if (os_log_type_enabled(v205, (gSILogLevels[0] < 3)))
      {
        v207 = *__error();
        *__buf = 67109376;
        *&__buf[4] = v178;
        *&__buf[8] = 1024;
        *&__buf[10] = v207;
        _os_log_impl(&dword_1C278D000, v205, v206, "*warn* fdopendir(%d): %d", __buf, 0xEu);
      }

      *__error() = v204;
      close(v178);
      v63 = v604;
      goto LABEL_213;
    }

    v577 = v176;
    v578 = v176;
    v180 = v179;
    memset(__buf, 0, 144);
    v181 = 0;
    v573 = time(0);
    v182 = 0;
    v183 = 0;
    v184 = 0;
LABEL_166:
    v185 = v184;
    v576 = v181;
    v186 = v182;
LABEL_167:
    v572 = v186;
    v187 = v183;
LABEL_168:
    v575 = v187;
    while (1)
    {
      v188 = readdir(v180);
      if (!v188)
      {
        break;
      }

      v189 = v188;
      if (v188->d_type == 8)
      {
        d_name = v188->d_name;
        if (v188->d_name[0] != 46 && !strstr(v188->d_name, ".shadow") && !fstatat(v600, d_name, __buf, 32))
        {
          if (!strncmp(d_name, "journalAttr.", 0xCuLL))
          {
            v191 = &d_name[strlen(d_name)];
            if (*(v191 - 3) != 116 || *(v191 - 2) != 111 || *(v191 - 1) != 99)
            {
              LODWORD(v649[0]) = 0;
              if (sscanf(&v189->d_name[12], "%d", v649) == 1 && SLODWORD(v649[0]) > v168 && (v185 += *&__buf[96], v573 > *&__buf[48]))
              {
                if (v572 <= v573 - *&__buf[48])
                {
                  v192 = v573 - *&__buf[48];
                }

                else
                {
                  v192 = v572;
                }
              }

              else
              {
                v192 = v572;
              }

              v186 = v192;
              v183 = v575;
              goto LABEL_167;
            }
          }

          if (strstr(d_name, ".indexPostings") && !strncmp(&d_name[v189->d_namlen - 14], ".indexPostings", 0xEuLL))
          {
            v183 = *&__buf[96] + v575;
            v187 = *&__buf[96] + v575;
            if (v573 <= *&__buf[48])
            {
              goto LABEL_168;
            }

            if (v576 <= v573 - *&__buf[48])
            {
              v181 = v573 - *&__buf[48];
            }

            else
            {
              v181 = v576;
            }

            v182 = v572;
            v184 = v185;
            goto LABEL_166;
          }
        }
      }
    }

    closedir(v180);
    if (v185 >> 29 && v572 >= 604801)
    {
      v193 = *__error();
      v194 = _SILogForLogForCategory(0);
      v195 = gSILogLevels[0] < 3;
      v66 = v608;
      v63 = v63;
      if (os_log_type_enabled(v194, (gSILogLevels[0] < 3)))
      {
        LODWORD(v649[0]) = 134218240;
        *(v649 + 4) = v185;
        WORD6(v649[0]) = 2048;
        *(v649 + 14) = v572;
        v196 = "*warn* Huge unprocessed journal files detected. size:%llu age:%lus";
        v197 = v194;
        v198 = v195;
        v199 = 22;
LABEL_241:
        _os_log_impl(&dword_1C278D000, v197, v198, v196, v649, v199);
        goto LABEL_242;
      }

      goto LABEL_242;
    }

    if (v575 >> 30 >= 5 && v577 <= 10 * v575)
    {
      v193 = *__error();
      v227 = _SILogForLogForCategory(0);
      v228 = gSILogLevels[0] < 3;
      v66 = v608;
      v63 = v63;
      if (os_log_type_enabled(v227, (gSILogLevels[0] < 3)))
      {
        LODWORD(v649[0]) = 136316162;
        *(v649 + 4) = ".indexPostings";
        WORD6(v649[0]) = 2048;
        *(v649 + 14) = v575;
        WORD3(v649[1]) = 2048;
        *(&v649[1] + 1) = v576;
        LOWORD(v649[2]) = 2048;
        *(&v649[2] + 2) = v185;
        WORD5(v649[2]) = 2048;
        *(&v649[2] + 12) = v578;
        v196 = "*warn* Huge *%s files detected. size:%llu age:%lus journals:%llu totalDisk:%llu";
        v197 = v227;
        v198 = v228;
        v199 = 52;
        goto LABEL_241;
      }

LABEL_242:
      v13 = v606;
      *__error() = v193;
      dump_filesystem_meta(v600);
      __si_set_error_str(1, "%s:%u: %s", v229, v230, v231, v232, v233, v234, "SpotlightIndex.c");
      v65 = 22;
      v64 = v587;
      goto LABEL_63;
    }

    v256 = unlinkat(v600, "130162031.fixed", 0);
    v257 = *__error();
    v258 = *__error();
    v259 = _SILogForLogForCategory(0);
    v260 = os_log_type_enabled(v259, OS_LOG_TYPE_DEFAULT);
    if (v256)
    {
      if (v260)
      {
        LODWORD(v649[0]) = 67109632;
        DWORD1(v649[0]) = v599;
        WORD4(v649[0]) = 1024;
        *(v649 + 10) = v600;
        HIWORD(v649[0]) = 1024;
        LODWORD(v649[1]) = v257;
        v261 = "(%u) did not delete previous touch file %d err %d";
LABEL_345:
        _os_log_impl(&dword_1C278D000, v259, OS_LOG_TYPE_DEFAULT, v261, v649, 0x14u);
      }
    }

    else if (v260)
    {
      LODWORD(v649[0]) = 67109632;
      DWORD1(v649[0]) = v599;
      WORD4(v649[0]) = 1024;
      *(v649 + 10) = v600;
      HIWORD(v649[0]) = 1024;
      LODWORD(v649[1]) = v257;
      v261 = "(%u) deleted previous touch file %d err %d";
      goto LABEL_345;
    }

    *__error() = v258;
    *__error() = v257;
    v299 = openat(v600, "132427543.fixed", 513, 384);
    v300 = *__error();
    v301 = v300;
    v63 = v604;
    if (v299 != -1)
    {
      v302 = *__error();
      v303 = _SILogForLogForCategory(0);
      v304 = v303;
      if (v300 == 2)
      {
        LOWORD(v18) = v603;
        if (os_log_type_enabled(v303, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v649[0]) = 67109376;
          DWORD1(v649[0]) = v599;
          WORD4(v649[0]) = 1024;
          *(v649 + 10) = v600;
          v305 = OS_LOG_TYPE_DEFAULT;
          v306 = "(%u) create touch file %d";
          v307 = v304;
          v308 = 14;
LABEL_373:
          _os_log_impl(&dword_1C278D000, v307, v305, v306, v649, v308);
        }
      }

      else
      {
        v342 = gSILogLevels[0] < 3;
        LOWORD(v18) = v603;
        if (os_log_type_enabled(v303, (gSILogLevels[0] < 3)))
        {
          LODWORD(v649[0]) = 67109632;
          DWORD1(v649[0]) = v599;
          WORD4(v649[0]) = 1024;
          *(v649 + 10) = v600;
          HIWORD(v649[0]) = 1024;
          LODWORD(v649[1]) = v301;
          v306 = "*warn* (%u) create touch file %d err %d";
          v307 = v304;
          v305 = v342;
          v308 = 20;
          goto LABEL_373;
        }
      }

      *__error() = v302;
      *__error() = v301;
      close(v299);
      v63 = v604;
      goto LABEL_214;
    }

    v309 = *__error();
    v310 = _SILogForLogForCategory(0);
    v311 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v310, (gSILogLevels[0] < 3)))
    {
      LODWORD(v649[0]) = 67109632;
      DWORD1(v649[0]) = v599;
      WORD4(v649[0]) = 1024;
      *(v649 + 10) = v600;
      HIWORD(v649[0]) = 1024;
      LODWORD(v649[1]) = v301;
      _os_log_impl(&dword_1C278D000, v310, v311, "*warn* (%u) create touch file %d err %d", v649, 0x14u);
    }

    *__error() = v309;
    *__error() = v301;
LABEL_213:
    LOWORD(v18) = v603;
  }

LABEL_214:
  v66 = v608;
  v208 = v18 & 0xC;
  if ((v18 & 0xC) == 0)
  {
    if ((v18 & 0x200) != 0 && (v50[2073] & 1) == 0)
    {
      __si_set_error_str(1, "%s:%u: %s", v152, v153, v154, v155, v156, v157, "SpotlightIndex.c");
      v84 = v587;
      v65 = v586;
    }

    else
    {
      if (si_validate_db(v50))
      {
        indexmetadata = si_create_indexmetadata(v50, 1);
        if (indexmetadata)
        {
          free(indexmetadata);
LABEL_222:
          v217 = v18;
          v218 = *(v50 + 173);
          *__buf = v50;
          __checkIndexSetDocIdOrder(v50, v218);
          v219 = *(v50 + 174);
          *__buf = v50;
          __checkIndexSetDocIdOrder(v50, v219);
          if (v597)
          {
            goto LABEL_282;
          }

          v220 = v63;
          v221 = *(v50 + 173);
          v222 = *(v50 + 174);
          v223 = v222;
          disableWritingForAllButLastOfRunsOfTransaction(v221);
          disableWritingForAllButLastOfRunsOfTransaction(v222);
          if (*(v221 + 8) >= 2u)
          {
            if (v50[6587])
            {
              NotCompactCount = 0;
            }

            else
            {
              NotCompactCount = indexSetGetNotCompactCount(v221);
            }

            NotMergedCount = indexSetGetNotMergedCount(v221);
            LiveCount = indexSetGetLiveCount(*v221, *(v221 + 8));
            if (NotCompactCount >= 10)
            {
              v237 = v50;
              v238 = NotCompactCount;
LABEL_268:
              holdAndIssueMerge(v237, v238, v221, 1);
              goto LABEL_269;
            }

            if (NotMergedCount > 10)
            {
              v237 = v50;
              v238 = NotMergedCount;
              goto LABEL_268;
            }

            if (LiveCount >= 6)
            {
              v238 = LiveCount - 1;
              v237 = v50;
              goto LABEL_268;
            }

            if (NotCompactCount)
            {
              compactReadOnlyIndexes(v50, 1);
            }
          }

LABEL_269:
          v63 = v220;
          if (*(v223 + 8) >= 2u)
          {
            if (v50[6587])
            {
              v262 = 0;
            }

            else
            {
              v262 = indexSetGetNotCompactCount(v223);
            }

            v263 = indexSetGetNotMergedCount(v223);
            if (indexSetGetWritableCount(v223) || (v264 = *(v223 + 8), v264 < 2))
            {
              if (v262 >= 10)
              {
                v265 = v50;
                v266 = v262;
LABEL_281:
                holdAndIssueMerge(v265, v266, v223, 0);
                v63 = v220;
                goto LABEL_282;
              }

              if (v263 > 10)
              {
                v265 = v50;
                v266 = v263;
                goto LABEL_281;
              }

              v264 = *(v223 + 8);
              if (v264 < 0x1A)
              {
                v63 = v220;
                if (v262)
                {
                  compactReadOnlyIndexes(v50, 0);
                }

                goto LABEL_282;
              }
            }

            v266 = v264 >> 1;
            v265 = v50;
            goto LABEL_281;
          }

LABEL_282:
          free(v636);
          MEMORY[0x1C6921200](v63);
          close(v63);
          if ((v217 & 1) == 0)
          {
            _SIPreHeatIndex(v50, 0, 1);
          }

          v209 = v588;
          if (!(v158 | v208))
          {
            if (v588)
            {
              v267 = 39;
            }

            else
            {
              v267 = 38;
            }

            SIActivityJournalOpen((v50 + 2192), v267, *(v50 + 586), *(*(v50 + 174) + 8), *(*(v50 + 173) + 8), *(v50 + 266), *(v50 + 267), *(v50 + 301));
          }

          goto LABEL_289;
        }
      }

      else
      {
        LODWORD(indexmetadata) = 0;
      }

      __si_set_error_str(indexmetadata, "%s:%u: %s", v210, v211, v212, v213, v214, v215, "SpotlightIndex.c");
      v65 = 22;
      v84 = v587;
    }

    v13 = v606;
    goto LABEL_230;
  }

  if ((v18 & 8) == 0)
  {
    goto LABEL_222;
  }

  free(v636);
  MEMORY[0x1C6921200](v63);
  close(v63);
  v209 = v588;
LABEL_289:
  if (v644)
  {
    CFRelease(v644);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v268 = *(v50 + 174);
  v269 = *(v50 + 173);
  *__buf = MEMORY[0x1E69E9820];
  *&__buf[8] = 0x40000000;
  *&__buf[16] = __si_cacheIndexVersion_block_invoke;
  *&__buf[24] = &__block_descriptor_tmp_1098;
  *&__buf[32] = v50;
  if (v269)
  {
    v270 = v269;
    v271 = *(v269 + 8);
    while (v271 >= 1)
    {
      v272 = v271 - 1;
      v273 = (*&__buf[16])(__buf, *(*v270 + 8 * v271 - 8), 1);
      v271 = v272;
      if (!v273)
      {
        goto LABEL_302;
      }
    }
  }

  if (v268)
  {
    v274 = *(v268 + 8);
    do
    {
      if (v274 < 1)
      {
        break;
      }

      v275 = v274 - 1;
      v276 = (*&__buf[16])(__buf, *(*v268 + 8 * v274 - 8), 0);
      v274 = v275;
    }

    while (v276);
  }

LABEL_302:
  if (v158)
  {
    result = v158;
  }

  else
  {
    result = v209;
  }

LABEL_81:
  v77 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SICreateNewIndex(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, int a5, __int128 *a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  LODWORD(v12) = a5;
  LODWORD(v14) = a2;
  v314 = *MEMORY[0x1E69E9840];
  if (freeQueueOnce != -1)
  {
    v261 = a3;
    dispatch_once(&freeQueueOnce, &__block_literal_global_358);
    a3 = v261;
  }

  v16 = 0xFFFFFFFFLL;
  if ((v12 & 4) != 0)
  {
    goto LABEL_17;
  }

  v293 = a8;
  v294 = a3;
  v292 = a4;
  v295 = v14;
  v296 = a1;
  v17 = (v12 & 0x100) >> 8;
  v297 = open(".", 4);
  bzero(v313, 0x400uLL);
  _SITuningInit();
  makeThreadId();
  v18 = malloc_type_calloc(1uLL, 0x2788uLL, 0x10F00403822957CuLL);
  SIInitIndexLocks(v18);
  v301[0] = MEMORY[0x1E69E9820];
  v301[1] = 0x40000000;
  v301[2] = __SICreateNewIndex_block_invoke_2;
  v301[3] = &__block_descriptor_tmp_361;
  v301[4] = v18;
  *v18 = 0xC0DE10DE10DEC0DELL;
  *(v18 + 15) = BYTE3(v12);
  *(v18 + 8) = -1;
  *(v18 + 12) = -1;
  v18[2072] = (v12 & 0x100) >> 8;
  v18[2073] = (v12 & 0x200) >> 9;
  v25 = *a6;
  *(v18 + 3) = *(a6 + 2);
  *(v18 + 8) = v25;
  *(v18 + 295) = a7;
  *(v18 + 290) = 0;
  *(v18 + 824) = a9;
  *(v18 + 364) = 1;
  if (v17)
  {
    v26 = 0x1000000;
  }

  else
  {
    v26 = 0;
  }

  v298 = v18;
  *(v18 + 1646) = *(v18 + 1646) & 0xFEFFFFFF | v26;
  if (*a9)
  {
    __si_set_error_str(1, "%s:%u: %s", v19, v20, v21, v22, v23, v24, "SpotlightIndex.c");
    v27 = 0;
    v28 = 0;
    v29 = v297;
    v30 = a1;
    v31 = v18;
    v32 = a7;
LABEL_9:
    v33 = *__error();
    v34 = _SILogForLogForCategory(0);
    v35 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v34, v35))
    {
      *buf = 67109376;
      *&buf[4] = v28;
      *&buf[8] = 1024;
      *&buf[10] = v27;
      _os_log_impl(&dword_1C278D000, v34, v35, "Failed at %d (%d)", buf, 0xEu);
    }

    *__error() = v33;
    MEMORY[0x1C6921200](v29);
    close(v29);
    ContentIndexListFree(*(v31 + 1392));
    ContentIndexListFree(*(v31 + 1384));
    v36 = *(v31 + 1496);
    if (v36)
    {
      CFRelease(v36);
    }

    if (v32)
    {
      v37 = *(v32 + 24);
      if (v37)
      {
        v37(v32);
      }
    }

    free(v31);
    *v30 = 0;
    v16 = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  v32 = a7;
  if ((v12 & 0x100) != 0)
  {
    LOBYTE(v43) = 0;
    v44 = 1;
    v14 = v14;
    v12 = v12;
  }

  else
  {
    v14 = v14;
    v40 = v294;
    v12 = v12;
    if (v294 && ((v41 = *(v294 + 4), v41 == -1) || (v42 = dup(v41), v40 = v294, v298[12] = v42, v42 == -1)))
    {
      if ((v12 & 8) != 0)
      {
        v27 = 0;
        v28 = 0;
        v29 = v297;
        v30 = a1;
        v31 = v298;
        goto LABEL_9;
      }

      v43 = *(v40 + 28);
      v44 = (v12 & 0x180) != 0;
    }

    else
    {
      LOBYTE(v43) = 0;
      v44 = 0;
    }
  }

  *buf = 0;
  v31 = v298;
  if (fd_setDir(v14, buf))
  {
    v45 = *__error();
    v46 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 0;
      _os_log_impl(&dword_1C278D000, v46, OS_LOG_TYPE_DEFAULT, "Creating New Index", valuePtr, 2u);
    }

    *__error() = v45;
    v47 = *buf;
    MEMORY[0x1C6921200](*buf);
    LODWORD(v14) = v295;
    if ((v47 & 0x80000000) == 0)
    {
      close(v47);
    }
  }

  if ((v12 & 8) == 0)
  {
    if (!a7)
    {
      v269 = __si_assert_copy_extra_661(-1);
      v270 = v269;
      v271 = "";
      if (v269)
      {
        v271 = v269;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 14314, "callbacks", v271);
      free(v270);
      if (__valid_fs(-1))
      {
        v272 = 2989;
      }

      else
      {
        v272 = 3072;
      }

      *v272 = -559038737;
      abort();
    }

    v48 = check_crash_state(v14, v43 & 1, v12, 0, 0);
    if (v48)
    {
      v49 = v48;
      v50 = *__error();
      v51 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v101 = fcntl(v295, 50, v313);
        if (v313[0])
        {
          v102 = v101 < 0;
        }

        else
        {
          v102 = 1;
        }

        if (v102)
        {
          v103 = 0;
        }

        else
        {
          v103 = v313;
        }

        v32 = a7;
        *buf = 136315906;
        *&buf[4] = "SICreateNewIndex";
        *&buf[12] = 1024;
        *&buf[14] = 14320;
        *&buf[18] = 1024;
        *&buf[20] = v49;
        *&buf[24] = 2080;
        *&buf[26] = v103;
        _os_log_error_impl(&dword_1C278D000, v51, OS_LOG_TYPE_ERROR, "%s:%d: check_crash_state: %d for %s", buf, 0x22u);
      }

      v27 = 0;
      v28 = 0;
      *__error() = v50;
      v29 = v297;
      v30 = v296;
      goto LABEL_9;
    }

    v67 = check_crash_state(v14, v43 & 1, v12, 0, 1);
    v68 = guarded_dup(v14);
    *(v298 + 4) = v68;
    *(v298 + 5) = v69;
    if ((v12 & 0x80000001) != 0)
    {
      v70 = 17;
    }

    else
    {
      v70 = 81;
    }

    if (*(v298 + 2072))
    {
      v70 |= 0x100u;
    }

    if (*(v298 + 2073))
    {
      v70 |= 0x400u;
    }

    if (v67)
    {
      v70 |= 0x2000u;
    }

    v71 = v294;
    if (v294)
    {
      v71 = ~(*(v294 + 28) << 20) & 0x400000;
    }

    v298[1646] = v298[1646] & 0xFFBFFFFF | v71;
    v72 = ~(v71 >> 7) & 0x8000 | v70;
    if (v44)
    {
      v72 |= 0x80u;
    }

    if ((v68 & 0x80000000) != 0)
    {
      v27 = 0;
      v28 = 0;
LABEL_87:
      v29 = v297;
      goto LABEL_88;
    }

    v291 = v72;
    if (dword_1EBF46AE8 >= 5)
    {
      v276 = *__error();
      v277 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v277, OS_LOG_TYPE_DEFAULT))
      {
        v278 = fcntl(v295, 50, v313);
        if (v313[0])
        {
          v279 = v278 < 0;
        }

        else
        {
          v279 = 1;
        }

        if (v279)
        {
          v280 = 0;
        }

        else
        {
          v280 = v313;
        }

        *buf = 136315138;
        *&buf[4] = v280;
        _os_log_impl(&dword_1C278D000, v277, OS_LOG_TYPE_DEFAULT, "Opened %s successfully", buf, 0xCu);
      }

      *__error() = v276;
      v12 = v12;
      v31 = v298;
      if (dword_1EBF46AE8 >= 5)
      {
        v281 = *__error();
        v282 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v282, OS_LOG_TYPE_DEFAULT))
        {
          v283 = fcntl(v295, 50, v313);
          if (v313[0])
          {
            v284 = v283 < 0;
          }

          else
          {
            v284 = 1;
          }

          if (v284)
          {
            v285 = 0;
          }

          else
          {
            v285 = v313;
          }

          *buf = 136315394;
          *&buf[4] = v285;
          *&buf[12] = 2080;
          *&buf[14] = "store.db";
          _os_log_impl(&dword_1C278D000, v282, OS_LOG_TYPE_DEFAULT, "Try %s/%s", buf, 0x16u);
        }

        *__error() = v281;
        v12 = v12;
        v31 = v298;
      }
    }

    registerForCloning(*(v31 + 32), v17);
    if (SIIsAppleInternal_onceToken != -1)
    {
      dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
    }

    if (SIIsAppleInternal_internal)
    {
      v73 = fd_create_protected(*(v31 + 32), "activityJournal.1", 536872457, 3u);
      si_activity_journal_init(v31 + 2192, v73);
      fd_mark_purgable(*(v31 + 2192));
    }

    unlinkat(*(v31 + 32), "mds64-crash-state", 0);
    unlinkat(*(v31 + 32), "mds64-crash-state-v2", 0);
    if ((v12 & 0x100) == 0)
    {
      v74 = fd_create_protected(*(v31 + 32), "tmp.Lion", 512, 0);
      fd_release(v74);
      v75 = fd_create_protected(*(v31 + 32), "Lion.created", 512, 0);
      fd_release(v75);
      v76 = fd_create_protected(*(v31 + 32), "tmp.Cab", 512, 0);
      fd_release(v76);
      v77 = fd_create_protected(*(v31 + 32), "Cab.created", 512, 0);
      fd_release(v77);
      *(v31 + 6584) |= 0x40u;
      v78 = fd_create_protected(*(v31 + 32), "tmp.Star", 512, 0);
      fd_release(v78);
      v79 = fd_create_protected(*(v31 + 32), "Glow.created", 512, 0);
      fd_release(v79);
      v80 = fd_create_protected(*(v31 + 32), "tmp.Glow", 512, 0);
      fd_release(v80);
      v81 = fd_create_protected(*(v31 + 32), "tmp.SequoiaPhotosFixed", 512, 0);
      fd_release(v81);
      if (_os_feature_enabled_impl())
      {
        v82 = fd_create_protected(*(v31 + 32), "macOS16.created", 512, 0);
        fd_release(v82);
        v83 = fd_create_protected(*(v31 + 32), "tmp.macOS16", 512, 0);
        fd_release(v83);
      }
    }

    v84 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040A085CBA5uLL);
    *(v31 + 1392) = v84;
    v84[3] = 2;
    v85 = malloc_type_calloc(2uLL, 8uLL, 0x2004093837F09uLL);
    v86 = *(v31 + 1392);
    *v86 = v85;
    *(v86 + 16) = -1;
    v87 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040A085CBA5uLL);
    *(v31 + 1384) = v87;
    v87[3] = 2;
    v88 = malloc_type_calloc(2uLL, 8uLL, 0x2004093837F09uLL);
    v89 = *(v31 + 1384);
    *v89 = v88;
    *(v89 + 16) = -1;
    MEMORY[0x1C6921200](*(v31 + 32));
    if ((v12 & 0x200) != 0)
    {
      v90 = 3;
    }

    else
    {
      v90 = 1;
    }

    if ((v12 & 0x100) != 0)
    {
      v91 = v90;
    }

    else
    {
      v91 = (v12 & 0x200) >> 8;
    }

    if (CIMetaInfoCreateWithPrefix(*(v31 + 32), v31 + 1200, v91, 1, *(v31 + 60), 0))
    {
      v27 = 0;
      v28 = 14469;
      v29 = v297;
      v32 = a7;
LABEL_88:
      v30 = v296;
      goto LABEL_89;
    }

    v300 = 0;
    v94 = *(v31 + 1392);
    v95 = *(v31 + 1384);
    v96 = *(v31 + 6592);
    vector_store = *(v31 + 1192);
    if (vector_store)
    {
      vector_store = db_get_vector_store(vector_store);
    }

    v299[0] = MEMORY[0x1E69E9820];
    v299[1] = 0x40000000;
    v299[2] = __SICreateNewIndex_block_invoke_378;
    v299[3] = &__block_descriptor_tmp_380;
    v299[4] = v31;
    v98 = ContentIndexOpenBulk(v31 + 1200, 0, v94, v95, v291, v96, v31 + 2408, &v300, vector_store, v299, v301);
    if (v98 == 1)
    {
      v104 = time(0);
      v105 = *(v31 + 1392);
      if (*(v105 + 8))
      {
        ContentIndexUpdateTimeStamp(**v105, v104, 0, 1);
        ContentIndexUpdateTimeStamp(***(v31 + 1392), v104, 1, 1);
      }

      LiveIndex = si_getLiveIndex(*(v31 + 1384));
      ContentIndexUpdateTimeStamp(LiveIndex, v104, 0, 1);
      v107 = si_getLiveIndex(*(v31 + 1384));
      ContentIndexUpdateTimeStamp(v107, v104, 1, 1);
    }

    else if (v98 == -1)
    {
      v99 = *__error();
      v100 = _SILogForLogForCategory(0);
      v32 = a7;
      if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "SICreateNewIndex";
        *&buf[12] = 1024;
        *&buf[14] = 14481;
        _os_log_error_impl(&dword_1C278D000, v100, OS_LOG_TYPE_ERROR, "%s:%d: Could not create new content index", buf, 0x12u);
      }

      v27 = 0;
      *__error() = v99;
      v28 = 14480;
      goto LABEL_87;
    }

    if (v44)
    {
      v108 = 133376;
    }

    else
    {
      v108 = 256;
    }

    if (*(v31 + 2072))
    {
      v109 = 67584;
    }

    else
    {
      v109 = v108;
    }

    if (dword_1EBF46AE8 >= 5)
    {
      v286 = *__error();
      v287 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v287, OS_LOG_TYPE_DEFAULT))
      {
        v288 = fcntl(v295, 50, v313);
        if (v313[0])
        {
          v289 = v288 < 0;
        }

        else
        {
          v289 = 1;
        }

        if (v289)
        {
          v290 = 0;
        }

        else
        {
          v290 = v313;
        }

        *buf = 136315394;
        *&buf[4] = v290;
        *&buf[12] = 2080;
        *&buf[14] = "store.db";
        _os_log_impl(&dword_1C278D000, v287, OS_LOG_TYPE_DEFAULT, "Creating store at %s/%s.", buf, 0x16u);
      }

      *__error() = v286;
      v12 = v12;
      v31 = v298;
    }

    memset(buf, 0, sizeof(buf));
    *buf = *(v31 + 32);
    *&buf[8] = "store.db";
    *&buf[20] = *(v31 + 60);
    if (SIIsAppleInternal_onceToken != -1)
    {
      dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
    }

    v30 = v296;
    if (SIIsAppleInternal_internal)
    {
      v110 = v31 + 2192;
    }

    else
    {
      v110 = 0;
    }

    *&buf[24] = v110;
    buf[32] = 0;
    v311 = v31;
    v312 = _sdb_cache_flush_callback;
    *&buf[16] = v109;
    datastore_with_ctx = db2_create_datastore_with_ctx(buf);
    *(v31 + 1192) = datastore_with_ctx;
    if (datastore_with_ctx)
    {
      si_set_vector_store(v31);
      if ((v12 & 0x80000001) != 0 || (ReverseStore = createReverseStore(*(v31 + 32), "", v301), (*(v31 + 6624) = ReverseStore) != 0))
      {
        v113 = 0;
        v114 = (v31 + 1192);
        do
        {
          id_for_field = db_create_id_for_field(*v114, "_kMDXXXX___DUMMY", v113, v113);
          ++v113;
        }

        while (id_for_field < 6);
        db_create_id_for_value(*v114, "public.message");
        db_create_id_for_value(*v114, "com.apple.mail.emlx");
        db_create_id_for_value(*v114, "com.apple.mail.eml");
        db_create_id_for_value(*v114, "com.microsoft.entourage.virtual.message");
        db_create_id_for_value(*v114, "com.apple.ichat.transcript");
        db_create_id_for_value(*v114, "public.contact");
        db_create_id_for_value(*v114, "public.vcard");
        db_create_id_for_value(*v114, "com.apple.addressbook.person");
        db_create_id_for_value(*v114, "com.apple.addressbook.group");
        db_create_id_for_value(*v114, "com.microsoft.entourage.virtual.contact");
        db_create_id_for_value(*v114, "com.microsoft.entourage.virtual.group");
        db_create_id_for_value(*v114, "com.apple.systempreference.prefpane");
        db_create_id_for_value(*v114, "public.font");
        db_create_id_for_value(*v114, "public.bookmark");
        db_create_id_for_value(*v114, "com.apple.safari.bookmark");
        db_create_id_for_value(*v114, "com.apple.safari.history");
        db_create_id_for_value(*v114, "public.to-do-item");
        db_create_id_for_value(*v114, "public.calendar-event");
        db_create_id_for_value(*v114, "com.apple.ical.bookmark");
        db_create_id_for_value(*v114, "com.apple.ical.bookmark.todo");
        db_create_id_for_value(*v114, "com.apple.ical.ics.event");
        db_create_id_for_value(*v114, "com.apple.ical.ics.todo");
        db_create_id_for_value(*v114, "com.microsoft.entourage.virtual.event");
        db_create_id_for_value(*v114, "com.microsoft.entourage.virtual.task");
        db_create_id_for_value(*v114, "public.movie");
        db_create_id_for_value(*v114, "com.apple.quicktime-movie");
        db_create_id_for_value(*v114, "public.mpeg-video");
        db_create_id_for_value(*v114, "public.mpeg-4");
        db_create_id_for_value(*v114, "public.mpeg");
        db_create_id_for_value(*v114, "public.3gpp");
        db_create_id_for_value(*v114, "public.3gpp2");
        db_create_id_for_value(*v114, "com.apple.application-bundle");
        db_create_id_for_value(*v114, "com.apple.application-file");
        db_create_id_for_value(*v114, "com.apple.dashboard-widget");
        db_create_id_for_value(*v114, "public.folder");
        db_create_id_for_value(*v114, "com.apple.mount-point");
        db_create_id_for_value(*v114, "public.audio");
        db_create_id_for_value(*v114, "public.mpeg-4-audio");
        db_create_id_for_value(*v114, "com.apple.protected-mpeg-4-audio");
        db_create_id_for_value(*v114, "com.adobe.pdf");
        db_create_id_for_value(*v114, "com.apple.localized-pdf-bundle");
        db_create_id_for_value(*v114, "public.presentation");
        db_create_id_for_value(*v114, "com.microsoft.powerpoint.ppt");
        db_create_id_for_value(*v114, "com.apple.keynote.key");
        db_create_id_for_value(*v114, "com.apple.iwork.keynote.key");
        db_create_id_for_value(*v114, "public.image");
        db_create_id_for_value(*v114, "com.apple.motion.project");
        db_create_id_for_value(*v114, "com.apple.iwork.pages.pages");
        db_create_id_for_value(*v114, "com.apple.iwork.pages.sffpages");
        db_create_id_for_value(*v114, "com.apple.iwork.pages.template");
        db_create_id_for_value(*v114, "com.apple.iwork.pages.sfftemplate");
        db_create_id_for_value(*v114, "public.rtf");
        db_create_id_for_value(*v114, "com.apple.rtfd");
        db_create_id_for_value(*v114, "com.apple.flat-rtfd");
        db_create_id_for_value(*v114, "com.microsoft.word.doc");
        db_create_id_for_value(*v114, "org.khronos.collada.digital-asset-exchange");
        db_create_id_for_value(*v114, "public.plain-text");
        db_create_id_for_value(*v114, "public.html");
        db_create_id_for_value(*v114, "public.xhtml");
        db_create_id_for_value(*v114, "public.shell-script");
        db_create_id_for_value(*v114, "public.source-code");
        db_create_id_for_value(*v114, "public.unix-executable");
        db_create_id_for_value(*v114, "com.apple.xcode.project");
        db_create_id_for_value(*v114, "com.apple.xcode.model");
        db_create_id_for_value(*v114, "com.apple.xcode.archive");
        db_create_id_for_value(*v114, "com.apple.xcode.docset");
        db_create_id_for_value(*v114, "com.apple.xcode.projectdata");
        db_create_id_for_value(*v114, "com.apple.xcode.dsym");
        db_create_id_for_value(*v114, "com.apple.xcode.configsettings");
        db_create_id_for_value(*v114, "com.apple.xcode.usersettings");
        db_create_id_for_value(*v114, "com.apple.xcode.strings-text");
        db_create_id_for_value(*v114, "com.apple.xcode.plugin");
        db_create_id_for_value(*v114, "com.apple.xcode.mom");
        db_create_id_for_value(*v114, "com.apple.property-list");
        db_create_id_for_value(*v114, "dyn.ah62d4rv4ge81a7dk");
        db_create_id_for_value(*v114, "dyn.ah62d4rv4ge80u5pbsa");
        db_create_id_for_value(*v114, "com.apple.dashcode.xml");
        db_create_id_for_value(*v114, "com.apple.dashcode.css");
        db_create_id_for_value(*v114, "com.apple.dashcode.javascript");
        db_create_id_for_value(*v114, "com.apple.dashcode.json");
        db_create_id_for_value(*v114, "com.apple.dashcode.manifest");
        db_create_id_for_value(*v114, "com.apple.interfacebuilder.document");
        db_create_id_for_value(*v114, "com.apple.interfacebuilder.document.cocoa");
        db_create_id_for_value(*v114, "com.apple.rez-source");
        db_create_id_for_value(*v114, "com.apple.iphone.developerprofile");
        db_create_id_for_value(*v114, "com.apple.iphone.mobileprovision");
        db_create_id_for_value(*v114, "com.apple.coreanimation-bundle");
        db_create_id_for_value(*v114, "com.apple.coreanimation-xml");
        db_create_id_for_value(*v114, "com.sun.java-class");
        db_create_id_for_value(*v114, "com.apple.scripting-definition");
        db_create_id_for_value(*v114, "com.apple.dt.document.workspace");
        db_create_id_for_value(*v114, "com.apple.dt.document.scheme");
        db_create_id_for_value(*v114, "com.apple.dt.ide.plug-in");
        db_create_id_for_value(*v114, "com.apple.dt.dvt.plug-in");
        db_create_id_for_value(*v114, "com.apple.dt.document.snapshot");
        db_create_id_for_value(*v114, "com.apple.dt.bundle.unit-test.objective-c");
        db_create_id_for_value(*v114, "com.apple.instruments.tracetemplate");
        db_create_id_for_value(*v114, "com.apple.quartzdebug.introspectiontrace");
        db_create_id_for_value(*v114, "com.apple.applescript.text-object");
        db_create_id_for_value(*v114, "com.apple.applescript.data-object");
        db_create_id_for_value(*v114, "com.apple.applescript.url-object");
        db_create_id_for_value(*v114, "com.apple.applescript.alias-object");
        db_create_id_for_value(*v114, "com.apple.symbol-export");
        db_create_id_for_value(*v114, "com.apple.mach-o-binary");
        db_create_id_for_value(*v114, "com.apple.mach-o-object");
        db_create_id_for_value(*v114, "com.apple.mach-o-executable");
        db_create_id_for_value(*v114, "com.apple.x11-mach-o-executable");
        db_create_id_for_value(*v114, "public.object-code");
        db_create_id_for_value(*v114, "com.microsoft.windows-executable");
        db_create_id_for_value(*v114, "com.microsoft.windows-dynamic-link-library");
        db_create_id_for_value(*v114, "com.sun.java-archive");
        db_create_id_for_value(*v114, "com.sun.web-application-archive");
        db_create_id_for_value(*v114, "com.apple.xcode.plugindata");
        db_create_id_for_value(*v114, "com.apple.dt.playground");
        db_create_id_for_value(*v114, "com.apple.iwork.numbers.sffnumbers");
        db_create_id_for_value(*v114, "com.apple.iwork.numbers.numbers");
        db_create_id_for_value(*v114, "com.apple.iwork.numbers.template");
        db_create_id_for_value(*v114, "com.microsoft.excel.xls");
        db_create_id_for_value(*v114, "org.openxmlformats.spreadsheetml.sheet");
        db_create_id_for_value(*v114, "public.spreadsheet");
        db_create_id_for_value(*v114, "public.xml");
        db_create_id_for_value(*v114, "com.apple.log");
        db_create_id_for_value(*v114, "com.apple.crashreport");
        db_create_id_for_value(*v114, "com.apple.spinreport");
        db_create_id_for_value(*v114, "com.apple.panicreport");
        db_create_id_for_value(*v114, "com.apple.shutdownstall");
        db_create_id_for_value(*v114, "com.apple.hangreport");
        db_create_id_for_value(*v114, "public.json");
        db_create_id_for_value(*v114, "public.log");
        db_create_id_for_value(*v114, "public.content");
        db_create_id_for_value(*v114, "com.microsoft.excel.sheet.binary.macroenabled");
        db_create_id_for_value(*v114, "org.openxmlformats.spreadsheetml.sheet.macroenabled");
        db_create_id_for_value(*v114, "com.apple.protected-mpeg-4-audio-b");
        db_create_id_for_value(*v114, "com.audible.aa-audiobook");
        db_create_id_for_value(*v114, "com.audible.aax-audiobook");
        db_create_id_for_value(*v114, "com.apple.tips");
        db_create_id_for_value(*v114, "com.apple.helpviewer");
        db_create_id_for_value(*v114, "com.apple.help.topic");
        db_create_id_for_field(*v114, "kMDItemContentTypeTree", 0x330u, 11);
        db_create_id_for_field(*v114, "kMDItemSupportFileType", 0x330u, 11);
        db_create_id_for_field(*v114, "_kMDItemTimeMachinePath", 0, 0);
        db_create_id_for_field(*v114, "kMDItemContentType", 0x310u, 11);
        db_create_id_for_field(*v114, "_kMDItemGroupId", 0x108u, 2);
        if ((v12 & 0x100) == 0)
        {
          v116 = *MEMORY[0x1E695E480];
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
          id_for_value = db_create_id_for_value(*v114, "public.message");
          if (id_for_value != -2)
          {
            CFDictionarySetValue(Mutable, (id_for_value & 0x7FFFFFFF), 1);
          }

          v119 = db_create_id_for_value(*v114, "com.apple.mail.emlx");
          if (v119 != -2)
          {
            CFDictionarySetValue(Mutable, (v119 & 0x7FFFFFFF), 2);
          }

          v120 = db_create_id_for_value(*v114, "com.apple.mail.eml");
          if (v120 != -2)
          {
            CFDictionarySetValue(Mutable, (v120 & 0x7FFFFFFF), 3);
          }

          v121 = db_create_id_for_value(*v114, "com.microsoft.entourage.virtual.message");
          if (v121 != -2)
          {
            CFDictionarySetValue(Mutable, (v121 & 0x7FFFFFFF), 4);
          }

          v122 = db_create_id_for_value(*v114, "com.apple.ichat.transcript");
          if (v122 != -2)
          {
            CFDictionarySetValue(Mutable, (v122 & 0x7FFFFFFF), 5);
          }

          v123 = db_create_id_for_value(*v114, "public.contact");
          if (v123 != -2)
          {
            CFDictionarySetValue(Mutable, (v123 & 0x7FFFFFFF), 6);
          }

          v124 = db_create_id_for_value(*v114, "public.vcard");
          if (v124 != -2)
          {
            CFDictionarySetValue(Mutable, (v124 & 0x7FFFFFFF), 7);
          }

          v125 = db_create_id_for_value(*v114, "com.apple.addressbook.person");
          if (v125 != -2)
          {
            CFDictionarySetValue(Mutable, (v125 & 0x7FFFFFFF), 8);
          }

          v126 = db_create_id_for_value(*v114, "com.apple.addressbook.group");
          if (v126 != -2)
          {
            CFDictionarySetValue(Mutable, (v126 & 0x7FFFFFFF), 9);
          }

          v127 = db_create_id_for_value(*v114, "com.microsoft.entourage.virtual.contact");
          if (v127 != -2)
          {
            CFDictionarySetValue(Mutable, (v127 & 0x7FFFFFFF), 0xA);
          }

          v128 = db_create_id_for_value(*v114, "com.microsoft.entourage.virtual.group");
          if (v128 != -2)
          {
            CFDictionarySetValue(Mutable, (v128 & 0x7FFFFFFF), 0xB);
          }

          v129 = db_create_id_for_value(*v114, "com.apple.systempreference.prefpane");
          if (v129 != -2)
          {
            CFDictionarySetValue(Mutable, (v129 & 0x7FFFFFFF), 0xC);
          }

          v130 = db_create_id_for_value(*v114, "public.font");
          if (v130 != -2)
          {
            CFDictionarySetValue(Mutable, (v130 & 0x7FFFFFFF), 0xD);
          }

          v131 = db_create_id_for_value(*v114, "public.bookmark");
          if (v131 != -2)
          {
            CFDictionarySetValue(Mutable, (v131 & 0x7FFFFFFF), 0xE);
          }

          v132 = db_create_id_for_value(*v114, "com.apple.safari.bookmark");
          if (v132 != -2)
          {
            CFDictionarySetValue(Mutable, (v132 & 0x7FFFFFFF), 0xF);
          }

          v133 = db_create_id_for_value(*v114, "com.apple.safari.history");
          if (v133 != -2)
          {
            CFDictionarySetValue(Mutable, (v133 & 0x7FFFFFFF), 0x10);
          }

          v134 = db_create_id_for_value(*v114, "public.to-do-item");
          if (v134 != -2)
          {
            CFDictionarySetValue(Mutable, (v134 & 0x7FFFFFFF), 0x11);
          }

          v135 = db_create_id_for_value(*v114, "public.calendar-event");
          if (v135 != -2)
          {
            CFDictionarySetValue(Mutable, (v135 & 0x7FFFFFFF), 0x12);
          }

          v136 = db_create_id_for_value(*v114, "com.apple.ical.bookmark");
          if (v136 != -2)
          {
            CFDictionarySetValue(Mutable, (v136 & 0x7FFFFFFF), 0x13);
          }

          v137 = db_create_id_for_value(*v114, "com.apple.ical.bookmark.todo");
          if (v137 != -2)
          {
            CFDictionarySetValue(Mutable, (v137 & 0x7FFFFFFF), 0x14);
          }

          v138 = db_create_id_for_value(*v114, "com.apple.ical.ics.event");
          if (v138 != -2)
          {
            CFDictionarySetValue(Mutable, (v138 & 0x7FFFFFFF), 0x15);
          }

          v139 = db_create_id_for_value(*v114, "com.apple.ical.ics.todo");
          if (v139 != -2)
          {
            CFDictionarySetValue(Mutable, (v139 & 0x7FFFFFFF), 0x16);
          }

          v140 = db_create_id_for_value(*v114, "com.microsoft.entourage.virtual.event");
          if (v140 != -2)
          {
            CFDictionarySetValue(Mutable, (v140 & 0x7FFFFFFF), 0x17);
          }

          v141 = db_create_id_for_value(*v114, "com.microsoft.entourage.virtual.task");
          if (v141 != -2)
          {
            CFDictionarySetValue(Mutable, (v141 & 0x7FFFFFFF), 0x18);
          }

          v142 = db_create_id_for_value(*v114, "public.movie");
          if (v142 != -2)
          {
            CFDictionarySetValue(Mutable, (v142 & 0x7FFFFFFF), 0x19);
          }

          v143 = db_create_id_for_value(*v114, "com.apple.quicktime-movie");
          if (v143 != -2)
          {
            CFDictionarySetValue(Mutable, (v143 & 0x7FFFFFFF), 0x1A);
          }

          v144 = db_create_id_for_value(*v114, "public.mpeg-video");
          if (v144 != -2)
          {
            CFDictionarySetValue(Mutable, (v144 & 0x7FFFFFFF), 0x1B);
          }

          v145 = db_create_id_for_value(*v114, "public.mpeg-4");
          if (v145 != -2)
          {
            CFDictionarySetValue(Mutable, (v145 & 0x7FFFFFFF), 0x1C);
          }

          v146 = db_create_id_for_value(*v114, "public.mpeg");
          if (v146 != -2)
          {
            CFDictionarySetValue(Mutable, (v146 & 0x7FFFFFFF), 0x1D);
          }

          v147 = db_create_id_for_value(*v114, "public.3gpp");
          if (v147 != -2)
          {
            CFDictionarySetValue(Mutable, (v147 & 0x7FFFFFFF), 0x1E);
          }

          v148 = db_create_id_for_value(*v114, "public.3gpp2");
          if (v148 != -2)
          {
            CFDictionarySetValue(Mutable, (v148 & 0x7FFFFFFF), 0x1F);
          }

          v149 = db_create_id_for_value(*v114, "com.apple.application-bundle");
          if (v149 != -2)
          {
            CFDictionarySetValue(Mutable, (v149 & 0x7FFFFFFF), 0x20);
          }

          v150 = db_create_id_for_value(*v114, "com.apple.application-file");
          if (v150 != -2)
          {
            CFDictionarySetValue(Mutable, (v150 & 0x7FFFFFFF), 0x21);
          }

          v151 = db_create_id_for_value(*v114, "com.apple.dashboard-widget");
          if (v151 != -2)
          {
            CFDictionarySetValue(Mutable, (v151 & 0x7FFFFFFF), 0x22);
          }

          v152 = db_create_id_for_value(*v114, "public.folder");
          if (v152 != -2)
          {
            CFDictionarySetValue(Mutable, (v152 & 0x7FFFFFFF), 0x23);
          }

          v153 = db_create_id_for_value(*v114, "com.apple.mount-point");
          if (v153 != -2)
          {
            CFDictionarySetValue(Mutable, (v153 & 0x7FFFFFFF), 0x24);
          }

          v154 = db_create_id_for_value(*v114, "public.audio");
          if (v154 != -2)
          {
            CFDictionarySetValue(Mutable, (v154 & 0x7FFFFFFF), 0x25);
          }

          v155 = db_create_id_for_value(*v114, "public.mpeg-4-audio");
          if (v155 != -2)
          {
            CFDictionarySetValue(Mutable, (v155 & 0x7FFFFFFF), 0x26);
          }

          v156 = db_create_id_for_value(*v114, "com.apple.protected-mpeg-4-audio");
          if (v156 != -2)
          {
            CFDictionarySetValue(Mutable, (v156 & 0x7FFFFFFF), 0x27);
          }

          v157 = db_create_id_for_value(*v114, "com.adobe.pdf");
          if (v157 != -2)
          {
            CFDictionarySetValue(Mutable, (v157 & 0x7FFFFFFF), 0x28);
          }

          v158 = db_create_id_for_value(*v114, "com.apple.localized-pdf-bundle");
          if (v158 != -2)
          {
            CFDictionarySetValue(Mutable, (v158 & 0x7FFFFFFF), 0x29);
          }

          v159 = db_create_id_for_value(*v114, "public.presentation");
          if (v159 != -2)
          {
            CFDictionarySetValue(Mutable, (v159 & 0x7FFFFFFF), 0x2A);
          }

          v160 = db_create_id_for_value(*v114, "com.microsoft.powerpoint.ppt");
          if (v160 != -2)
          {
            CFDictionarySetValue(Mutable, (v160 & 0x7FFFFFFF), 0x2B);
          }

          v161 = db_create_id_for_value(*v114, "com.apple.keynote.key");
          if (v161 != -2)
          {
            CFDictionarySetValue(Mutable, (v161 & 0x7FFFFFFF), 0x2C);
          }

          v162 = db_create_id_for_value(*v114, "com.apple.iwork.keynote.key");
          if (v162 != -2)
          {
            CFDictionarySetValue(Mutable, (v162 & 0x7FFFFFFF), 0x2D);
          }

          v163 = db_create_id_for_value(*v114, "public.image");
          if (v163 != -2)
          {
            CFDictionarySetValue(Mutable, (v163 & 0x7FFFFFFF), 0x2E);
          }

          v164 = db_create_id_for_value(*v114, "com.apple.motion.project");
          if (v164 != -2)
          {
            CFDictionarySetValue(Mutable, (v164 & 0x7FFFFFFF), 0x2F);
          }

          v165 = db_create_id_for_value(*v114, "com.apple.iwork.pages.pages");
          if (v165 != -2)
          {
            CFDictionarySetValue(Mutable, (v165 & 0x7FFFFFFF), 0x30);
          }

          v166 = db_create_id_for_value(*v114, "com.apple.iwork.pages.sffpages");
          if (v166 != -2)
          {
            CFDictionarySetValue(Mutable, (v166 & 0x7FFFFFFF), 0x31);
          }

          v167 = db_create_id_for_value(*v114, "com.apple.iwork.pages.template");
          if (v167 != -2)
          {
            CFDictionarySetValue(Mutable, (v167 & 0x7FFFFFFF), 0x32);
          }

          v168 = db_create_id_for_value(*v114, "com.apple.iwork.pages.sfftemplate");
          if (v168 != -2)
          {
            CFDictionarySetValue(Mutable, (v168 & 0x7FFFFFFF), 0x33);
          }

          v169 = db_create_id_for_value(*v114, "public.rtf");
          if (v169 != -2)
          {
            CFDictionarySetValue(Mutable, (v169 & 0x7FFFFFFF), 0x34);
          }

          v170 = db_create_id_for_value(*v114, "com.apple.rtfd");
          if (v170 != -2)
          {
            CFDictionarySetValue(Mutable, (v170 & 0x7FFFFFFF), 0x35);
          }

          v171 = db_create_id_for_value(*v114, "com.apple.flat-rtfd");
          if (v171 != -2)
          {
            CFDictionarySetValue(Mutable, (v171 & 0x7FFFFFFF), 0x36);
          }

          v172 = db_create_id_for_value(*v114, "com.microsoft.word.doc");
          if (v172 != -2)
          {
            CFDictionarySetValue(Mutable, (v172 & 0x7FFFFFFF), 0x37);
          }

          v173 = db_create_id_for_value(*v114, "org.khronos.collada.digital-asset-exchange");
          if (v173 != -2)
          {
            CFDictionarySetValue(Mutable, (v173 & 0x7FFFFFFF), 0x38);
          }

          v174 = db_create_id_for_value(*v114, "public.plain-text");
          if (v174 != -2)
          {
            CFDictionarySetValue(Mutable, (v174 & 0x7FFFFFFF), 0x39);
          }

          v175 = db_create_id_for_value(*v114, "public.html");
          if (v175 != -2)
          {
            CFDictionarySetValue(Mutable, (v175 & 0x7FFFFFFF), 0x3A);
          }

          v176 = db_create_id_for_value(*v114, "public.xhtml");
          if (v176 != -2)
          {
            CFDictionarySetValue(Mutable, (v176 & 0x7FFFFFFF), 0x3B);
          }

          v177 = db_create_id_for_value(*v114, "public.shell-script");
          if (v177 != -2)
          {
            CFDictionarySetValue(Mutable, (v177 & 0x7FFFFFFF), 0x3C);
          }

          v178 = db_create_id_for_value(*v114, "public.source-code");
          if (v178 != -2)
          {
            CFDictionarySetValue(Mutable, (v178 & 0x7FFFFFFF), 0x3D);
          }

          v179 = db_create_id_for_value(*v114, "public.unix-executable");
          if (v179 != -2)
          {
            CFDictionarySetValue(Mutable, (v179 & 0x7FFFFFFF), 0x3E);
          }

          v180 = db_create_id_for_value(*v114, "com.apple.xcode.project");
          if (v180 != -2)
          {
            CFDictionarySetValue(Mutable, (v180 & 0x7FFFFFFF), 0x3F);
          }

          v181 = db_create_id_for_value(*v114, "com.apple.xcode.model");
          if (v181 != -2)
          {
            CFDictionarySetValue(Mutable, (v181 & 0x7FFFFFFF), 0x40);
          }

          v182 = db_create_id_for_value(*v114, "com.apple.xcode.archive");
          if (v182 != -2)
          {
            CFDictionarySetValue(Mutable, (v182 & 0x7FFFFFFF), 0x41);
          }

          v183 = db_create_id_for_value(*v114, "com.apple.xcode.docset");
          if (v183 != -2)
          {
            CFDictionarySetValue(Mutable, (v183 & 0x7FFFFFFF), 0x42);
          }

          v184 = db_create_id_for_value(*v114, "com.apple.xcode.projectdata");
          if (v184 != -2)
          {
            CFDictionarySetValue(Mutable, (v184 & 0x7FFFFFFF), 0x43);
          }

          v185 = db_create_id_for_value(*v114, "com.apple.xcode.dsym");
          if (v185 != -2)
          {
            CFDictionarySetValue(Mutable, (v185 & 0x7FFFFFFF), 0x44);
          }

          v186 = db_create_id_for_value(*v114, "com.apple.xcode.configsettings");
          if (v186 != -2)
          {
            CFDictionarySetValue(Mutable, (v186 & 0x7FFFFFFF), 0x45);
          }

          v187 = db_create_id_for_value(*v114, "com.apple.xcode.usersettings");
          if (v187 != -2)
          {
            CFDictionarySetValue(Mutable, (v187 & 0x7FFFFFFF), 0x46);
          }

          v188 = db_create_id_for_value(*v114, "com.apple.xcode.strings-text");
          if (v188 != -2)
          {
            CFDictionarySetValue(Mutable, (v188 & 0x7FFFFFFF), 0x47);
          }

          v189 = db_create_id_for_value(*v114, "com.apple.xcode.plugin");
          if (v189 != -2)
          {
            CFDictionarySetValue(Mutable, (v189 & 0x7FFFFFFF), 0x48);
          }

          v190 = db_create_id_for_value(*v114, "com.apple.xcode.mom");
          if (v190 != -2)
          {
            CFDictionarySetValue(Mutable, (v190 & 0x7FFFFFFF), 0x49);
          }

          v191 = db_create_id_for_value(*v114, "com.apple.property-list");
          if (v191 != -2)
          {
            CFDictionarySetValue(Mutable, (v191 & 0x7FFFFFFF), 0x4A);
          }

          v192 = db_create_id_for_value(*v114, "dyn.ah62d4rv4ge81a7dk");
          if (v192 != -2)
          {
            CFDictionarySetValue(Mutable, (v192 & 0x7FFFFFFF), 0x4B);
          }

          v193 = db_create_id_for_value(*v114, "dyn.ah62d4rv4ge80u5pbsa");
          if (v193 != -2)
          {
            CFDictionarySetValue(Mutable, (v193 & 0x7FFFFFFF), 0x4C);
          }

          v194 = db_create_id_for_value(*v114, "com.apple.dashcode.xml");
          if (v194 != -2)
          {
            CFDictionarySetValue(Mutable, (v194 & 0x7FFFFFFF), 0x4D);
          }

          v195 = db_create_id_for_value(*v114, "com.apple.dashcode.css");
          if (v195 != -2)
          {
            CFDictionarySetValue(Mutable, (v195 & 0x7FFFFFFF), 0x4E);
          }

          v196 = db_create_id_for_value(*v114, "com.apple.dashcode.javascript");
          if (v196 != -2)
          {
            CFDictionarySetValue(Mutable, (v196 & 0x7FFFFFFF), 0x4F);
          }

          v197 = db_create_id_for_value(*v114, "com.apple.dashcode.json");
          if (v197 != -2)
          {
            CFDictionarySetValue(Mutable, (v197 & 0x7FFFFFFF), 0x50);
          }

          v198 = db_create_id_for_value(*v114, "com.apple.dashcode.manifest");
          if (v198 != -2)
          {
            CFDictionarySetValue(Mutable, (v198 & 0x7FFFFFFF), 0x51);
          }

          v199 = db_create_id_for_value(*v114, "com.apple.interfacebuilder.document");
          if (v199 != -2)
          {
            CFDictionarySetValue(Mutable, (v199 & 0x7FFFFFFF), 0x52);
          }

          v200 = db_create_id_for_value(*v114, "com.apple.interfacebuilder.document.cocoa");
          if (v200 != -2)
          {
            CFDictionarySetValue(Mutable, (v200 & 0x7FFFFFFF), 0x53);
          }

          v201 = db_create_id_for_value(*v114, "com.apple.rez-source");
          if (v201 != -2)
          {
            CFDictionarySetValue(Mutable, (v201 & 0x7FFFFFFF), 0x54);
          }

          v202 = db_create_id_for_value(*v114, "com.apple.iphone.developerprofile");
          if (v202 != -2)
          {
            CFDictionarySetValue(Mutable, (v202 & 0x7FFFFFFF), 0x55);
          }

          v203 = db_create_id_for_value(*v114, "com.apple.iphone.mobileprovision");
          if (v203 != -2)
          {
            CFDictionarySetValue(Mutable, (v203 & 0x7FFFFFFF), 0x56);
          }

          v204 = db_create_id_for_value(*v114, "com.apple.coreanimation-bundle");
          if (v204 != -2)
          {
            CFDictionarySetValue(Mutable, (v204 & 0x7FFFFFFF), 0x57);
          }

          v205 = db_create_id_for_value(*v114, "com.apple.coreanimation-xml");
          if (v205 != -2)
          {
            CFDictionarySetValue(Mutable, (v205 & 0x7FFFFFFF), 0x58);
          }

          v206 = db_create_id_for_value(*v114, "com.sun.java-class");
          if (v206 != -2)
          {
            CFDictionarySetValue(Mutable, (v206 & 0x7FFFFFFF), 0x59);
          }

          v207 = db_create_id_for_value(*v114, "com.apple.scripting-definition");
          if (v207 != -2)
          {
            CFDictionarySetValue(Mutable, (v207 & 0x7FFFFFFF), 0x5A);
          }

          v208 = db_create_id_for_value(*v114, "com.apple.dt.document.workspace");
          if (v208 != -2)
          {
            CFDictionarySetValue(Mutable, (v208 & 0x7FFFFFFF), 0x5B);
          }

          v209 = db_create_id_for_value(*v114, "com.apple.dt.document.scheme");
          if (v209 != -2)
          {
            CFDictionarySetValue(Mutable, (v209 & 0x7FFFFFFF), 0x5C);
          }

          v210 = db_create_id_for_value(*v114, "com.apple.dt.ide.plug-in");
          if (v210 != -2)
          {
            CFDictionarySetValue(Mutable, (v210 & 0x7FFFFFFF), 0x5D);
          }

          v211 = db_create_id_for_value(*v114, "com.apple.dt.dvt.plug-in");
          if (v211 != -2)
          {
            CFDictionarySetValue(Mutable, (v211 & 0x7FFFFFFF), 0x5E);
          }

          v212 = db_create_id_for_value(*v114, "com.apple.dt.document.snapshot");
          if (v212 != -2)
          {
            CFDictionarySetValue(Mutable, (v212 & 0x7FFFFFFF), 0x5F);
          }

          v213 = db_create_id_for_value(*v114, "com.apple.dt.bundle.unit-test.objective-c");
          if (v213 != -2)
          {
            CFDictionarySetValue(Mutable, (v213 & 0x7FFFFFFF), 0x60);
          }

          v214 = db_create_id_for_value(*v114, "com.apple.instruments.tracetemplate");
          if (v214 != -2)
          {
            CFDictionarySetValue(Mutable, (v214 & 0x7FFFFFFF), 0x61);
          }

          v215 = db_create_id_for_value(*v114, "com.apple.quartzdebug.introspectiontrace");
          if (v215 != -2)
          {
            CFDictionarySetValue(Mutable, (v215 & 0x7FFFFFFF), 0x62);
          }

          v216 = db_create_id_for_value(*v114, "com.apple.applescript.text-object");
          if (v216 != -2)
          {
            CFDictionarySetValue(Mutable, (v216 & 0x7FFFFFFF), 0x63);
          }

          v217 = db_create_id_for_value(*v114, "com.apple.applescript.data-object");
          if (v217 != -2)
          {
            CFDictionarySetValue(Mutable, (v217 & 0x7FFFFFFF), 0x64);
          }

          v218 = db_create_id_for_value(*v114, "com.apple.applescript.url-object");
          if (v218 != -2)
          {
            CFDictionarySetValue(Mutable, (v218 & 0x7FFFFFFF), 0x65);
          }

          v219 = db_create_id_for_value(*v114, "com.apple.applescript.alias-object");
          if (v219 != -2)
          {
            CFDictionarySetValue(Mutable, (v219 & 0x7FFFFFFF), 0x66);
          }

          v220 = db_create_id_for_value(*v114, "com.apple.symbol-export");
          if (v220 != -2)
          {
            CFDictionarySetValue(Mutable, (v220 & 0x7FFFFFFF), 0x67);
          }

          v221 = db_create_id_for_value(*v114, "com.apple.mach-o-binary");
          if (v221 != -2)
          {
            CFDictionarySetValue(Mutable, (v221 & 0x7FFFFFFF), 0x68);
          }

          v222 = db_create_id_for_value(*v114, "com.apple.mach-o-object");
          if (v222 != -2)
          {
            CFDictionarySetValue(Mutable, (v222 & 0x7FFFFFFF), 0x69);
          }

          v223 = db_create_id_for_value(*v114, "com.apple.mach-o-executable");
          if (v223 != -2)
          {
            CFDictionarySetValue(Mutable, (v223 & 0x7FFFFFFF), 0x6A);
          }

          v224 = db_create_id_for_value(*v114, "com.apple.x11-mach-o-executable");
          if (v224 != -2)
          {
            CFDictionarySetValue(Mutable, (v224 & 0x7FFFFFFF), 0x6B);
          }

          v225 = db_create_id_for_value(*v114, "public.object-code");
          if (v225 != -2)
          {
            CFDictionarySetValue(Mutable, (v225 & 0x7FFFFFFF), 0x6C);
          }

          v226 = db_create_id_for_value(*v114, "com.microsoft.windows-executable");
          if (v226 != -2)
          {
            CFDictionarySetValue(Mutable, (v226 & 0x7FFFFFFF), 0x6D);
          }

          v227 = db_create_id_for_value(*v114, "com.microsoft.windows-dynamic-link-library");
          if (v227 != -2)
          {
            CFDictionarySetValue(Mutable, (v227 & 0x7FFFFFFF), 0x6E);
          }

          v228 = db_create_id_for_value(*v114, "com.sun.java-archive");
          if (v228 != -2)
          {
            CFDictionarySetValue(Mutable, (v228 & 0x7FFFFFFF), 0x6F);
          }

          v229 = db_create_id_for_value(*v114, "com.sun.web-application-archive");
          if (v229 != -2)
          {
            CFDictionarySetValue(Mutable, (v229 & 0x7FFFFFFF), 0x70);
          }

          v230 = db_create_id_for_value(*v114, "com.apple.xcode.plugindata");
          if (v230 != -2)
          {
            CFDictionarySetValue(Mutable, (v230 & 0x7FFFFFFF), 0x71);
          }

          v231 = db_create_id_for_value(*v114, "com.apple.dt.playground");
          if (v231 != -2)
          {
            CFDictionarySetValue(Mutable, (v231 & 0x7FFFFFFF), 0x72);
          }

          v232 = db_create_id_for_value(*v114, "com.apple.iwork.numbers.sffnumbers");
          if (v232 != -2)
          {
            CFDictionarySetValue(Mutable, (v232 & 0x7FFFFFFF), 0x73);
          }

          v233 = db_create_id_for_value(*v114, "com.apple.iwork.numbers.numbers");
          if (v233 != -2)
          {
            CFDictionarySetValue(Mutable, (v233 & 0x7FFFFFFF), 0x74);
          }

          v234 = db_create_id_for_value(*v114, "com.apple.iwork.numbers.template");
          if (v234 != -2)
          {
            CFDictionarySetValue(Mutable, (v234 & 0x7FFFFFFF), 0x75);
          }

          v235 = db_create_id_for_value(*v114, "com.microsoft.excel.xls");
          if (v235 != -2)
          {
            CFDictionarySetValue(Mutable, (v235 & 0x7FFFFFFF), 0x76);
          }

          v236 = db_create_id_for_value(*v114, "org.openxmlformats.spreadsheetml.sheet");
          if (v236 != -2)
          {
            CFDictionarySetValue(Mutable, (v236 & 0x7FFFFFFF), 0x77);
          }

          v237 = db_create_id_for_value(*v114, "public.spreadsheet");
          if (v237 != -2)
          {
            CFDictionarySetValue(Mutable, (v237 & 0x7FFFFFFF), 0x78);
          }

          v238 = db_create_id_for_value(*v114, "public.xml");
          if (v238 != -2)
          {
            CFDictionarySetValue(Mutable, (v238 & 0x7FFFFFFF), 0x79);
          }

          v239 = db_create_id_for_value(*v114, "com.apple.log");
          if (v239 != -2)
          {
            CFDictionarySetValue(Mutable, (v239 & 0x7FFFFFFF), 0x7A);
          }

          v240 = db_create_id_for_value(*v114, "com.apple.crashreport");
          if (v240 != -2)
          {
            CFDictionarySetValue(Mutable, (v240 & 0x7FFFFFFF), 0x7B);
          }

          v241 = db_create_id_for_value(*v114, "com.apple.spinreport");
          if (v241 != -2)
          {
            CFDictionarySetValue(Mutable, (v241 & 0x7FFFFFFF), 0x7C);
          }

          v242 = db_create_id_for_value(*v114, "com.apple.panicreport");
          if (v242 != -2)
          {
            CFDictionarySetValue(Mutable, (v242 & 0x7FFFFFFF), 0x7D);
          }

          v243 = db_create_id_for_value(*v114, "com.apple.shutdownstall");
          if (v243 != -2)
          {
            CFDictionarySetValue(Mutable, (v243 & 0x7FFFFFFF), 0x7E);
          }

          v244 = db_create_id_for_value(*v114, "com.apple.hangreport");
          if (v244 != -2)
          {
            CFDictionarySetValue(Mutable, (v244 & 0x7FFFFFFF), 0x7F);
          }

          v245 = db_create_id_for_value(*v114, "public.json");
          if (v245 != -2)
          {
            CFDictionarySetValue(Mutable, (v245 & 0x7FFFFFFF), 0x80);
          }

          v246 = db_create_id_for_value(*v114, "public.log");
          if (v246 != -2)
          {
            CFDictionarySetValue(Mutable, (v246 & 0x7FFFFFFF), 0x81);
          }

          v247 = db_create_id_for_value(*v114, "public.content");
          if (v247 != -2)
          {
            CFDictionarySetValue(Mutable, (v247 & 0x7FFFFFFF), 0x82);
          }

          v248 = db_create_id_for_value(*v114, "com.microsoft.excel.sheet.binary.macroenabled");
          if (v248 != -2)
          {
            CFDictionarySetValue(Mutable, (v248 & 0x7FFFFFFF), 0x83);
          }

          v249 = db_create_id_for_value(*v114, "org.openxmlformats.spreadsheetml.sheet.macroenabled");
          if (v249 != -2)
          {
            CFDictionarySetValue(Mutable, (v249 & 0x7FFFFFFF), 0x84);
          }

          v250 = db_create_id_for_value(*v114, "com.apple.protected-mpeg-4-audio-b");
          if (v250 != -2)
          {
            CFDictionarySetValue(Mutable, (v250 & 0x7FFFFFFF), 0x85);
          }

          v251 = db_create_id_for_value(*v114, "com.audible.aa-audiobook");
          if (v251 != -2)
          {
            CFDictionarySetValue(Mutable, (v251 & 0x7FFFFFFF), 0x86);
          }

          v252 = db_create_id_for_value(*v114, "com.audible.aax-audiobook");
          if (v252 != -2)
          {
            CFDictionarySetValue(Mutable, (v252 & 0x7FFFFFFF), 0x87);
          }

          v253 = db_create_id_for_value(*v114, "com.apple.tips");
          if (v253 != -2)
          {
            CFDictionarySetValue(Mutable, (v253 & 0x7FFFFFFF), 0x88);
          }

          v254 = db_create_id_for_value(*v114, "com.apple.helpviewer");
          if (v254 != -2)
          {
            CFDictionarySetValue(Mutable, (v254 & 0x7FFFFFFF), 0x89);
          }

          v255 = db_create_id_for_value(*v114, "com.apple.help.topic");
          if (v255 != -2)
          {
            CFDictionarySetValue(Mutable, (v255 & 0x7FFFFFFF), 0x8A);
          }

          *(v31 + 6608) = CFDictionaryCreateCopy(v116, Mutable);
          CFRelease(Mutable);
        }

        db_create_id_for_field(*v114, "kMDStoreProperties", 0x108u, 14);
        if (!*v114)
        {
          v259 = *__error();
          v260 = _SILogForLogForCategory(7);
          v29 = v297;
          v32 = a7;
          if (os_log_type_enabled(v260, OS_LOG_TYPE_ERROR))
          {
            v266 = fcntl(v295, 50, v313);
            if (v313[0])
            {
              v267 = v266 < 0;
            }

            else
            {
              v267 = 1;
            }

            if (v267)
            {
              v268 = 0;
            }

            else
            {
              v268 = v313;
            }

            v32 = a7;
            *buf = 136315906;
            *&buf[4] = "SICreateNewIndex";
            *&buf[12] = 1024;
            *&buf[14] = 14614;
            *&buf[18] = 2080;
            *&buf[20] = v268;
            *&buf[28] = 2080;
            *&buf[30] = "store.db";
            _os_log_error_impl(&dword_1C278D000, v260, OS_LOG_TYPE_ERROR, "%s:%d: Could not create store at path '%s/%s'", buf, 0x26u);
          }

          *__error() = v259;
          v28 = 14615;
          v27 = 1;
          goto LABEL_89;
        }

        *buf = 2;
        v256 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, buf);
        SISetProperty(v31, @"YukonRecomputedSizes", v256);
        CFRelease(v256);
        v27 = 1;
        _si_next_index_id(v31, *(v31 + 1456), 1, 1);
        v29 = v297;
        v52 = v294;
        v32 = a7;
        goto LABEL_35;
      }

      v257 = *__error();
      v262 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v262, OS_LOG_TYPE_ERROR))
      {
        v273 = fcntl(v295, 50, v313);
        if (v313[0])
        {
          v274 = v273 < 0;
        }

        else
        {
          v274 = 1;
        }

        if (v274)
        {
          v275 = 0;
        }

        else
        {
          v275 = v313;
        }

        *valuePtr = 136315650;
        v303 = "SICreateNewIndex";
        v304 = 1024;
        v305 = 14542;
        v306 = 2080;
        v307 = v275;
        _os_log_error_impl(&dword_1C278D000, v262, OS_LOG_TYPE_ERROR, "%s:%d: Could not create reverse dir store at path '%s'", valuePtr, 0x1Cu);
      }

      v28 = 14543;
    }

    else
    {
      v257 = *__error();
      v258 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v258, OS_LOG_TYPE_ERROR))
      {
        v263 = fcntl(v295, 50, v313);
        if (v313[0])
        {
          v264 = v263 < 0;
        }

        else
        {
          v264 = 1;
        }

        if (v264)
        {
          v265 = 0;
        }

        else
        {
          v265 = v313;
        }

        *valuePtr = 136315906;
        v303 = "SICreateNewIndex";
        v304 = 1024;
        v305 = 14530;
        v306 = 2080;
        v307 = v265;
        v308 = 2080;
        v309 = "store.db";
        _os_log_error_impl(&dword_1C278D000, v258, OS_LOG_TYPE_ERROR, "%s:%d: Could not create store at path '%s/%s'", valuePtr, 0x26u);
      }

      v28 = 14531;
    }

    v29 = v297;
    v32 = a7;
    v27 = 0;
    *__error() = v257;
    goto LABEL_89;
  }

  v27 = 0;
  v29 = v297;
  v52 = v294;
  v30 = v296;
LABEL_35:
  *v30 = v31;
  *(v31 + 6584) |= 0xE000000u;
  v53 = SIInitIndex(v31, v52, v292, v12, v293, 0, 0, 1, 0);
  if ((v53 & 0x80000000) != 0)
  {
    v28 = 0;
LABEL_89:
    _SICloseIndex(v31, 0);
    v92 = *(v31 + 1192);
    if (v92)
    {
      db_release_datastore_no_sync(v92);
      *(v31 + 1192) = 0;
    }

    v93 = *(v31 + 6624);
    if (v93)
    {
      freeReverseDirStore(v93);
      *(v31 + 6624) = 0;
    }

    goto LABEL_9;
  }

  v16 = v53;
  if (!(v53 | v12 & 8))
  {
    v54 = *MEMORY[0x1E695E4D0];
    if ((v12 & 0x200) != 0)
    {
      si_set_property(v31, @"kSITokenizerUnigrams", *MEMORY[0x1E695E4D0], 1, 0);
    }

    si_set_property(v31, @"kSITokenizerUseCRF", v54, 1, 0);
    *buf = (*(v31 + 6584) >> 25) & 3;
    v55 = *MEMORY[0x1E695E480];
    v56 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, buf);
    si_set_property(v31, @"kSITokenizerVersion", v56, 1, 0);
    CFRelease(v56);
    v57 = CFStringCreateWithCString(v55, sysVersionCStr, 0x8000100u);
    si_set_property(v31, @"kSIRepairSizes", v57, 1, 0);
    CFRelease(v57);
    *valuePtr = (*(v31 + 6584) >> 27) & 1;
    v58 = CFNumberCreate(v55, kCFNumberIntType, valuePtr);
    si_set_property(v31, @"kSIIdentifierHashVersion", v58, 1, 0);
    CFRelease(v58);
    si_set_property(v31, @"kSIRepairedIndex", v54, 1, 0);
    _si_set_version_property(v31, @"VEC_EXT_CLEARED_JOURNALS", 0);
    _si_set_version_property(v31, @"VEC_EXT_CLEARED_VECTORS", 1);
    si_set_obj_state(v31, v31);
  }

  MEMORY[0x1C6921200](v29);
  close(v29);
  if ((v12 & 8) == 0)
  {
    SIActivityJournalOpen(v31 + 2192, 37, *(v31 + 2344), *(*(v31 + 1392) + 8), *(*(v31 + 1384) + 8), 0, 0, *(v31 + 2408));
  }

  v59 = *(v31 + 1392);
  v60 = *(v31 + 1384);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = __si_cacheIndexVersion_block_invoke;
  *&buf[24] = &__block_descriptor_tmp_1098;
  *&buf[32] = v31;
  if (v60)
  {
    v61 = *(v60 + 8);
    while (v61 >= 1)
    {
      v62 = v61 - 1;
      v63 = (*&buf[16])(buf, *(*v60 + 8 * v61 - 8), 1);
      v61 = v62;
      if (!v63)
      {
        goto LABEL_17;
      }
    }
  }

  if (v59)
  {
    v64 = *(v59 + 8);
    do
    {
      if (v64 < 1)
      {
        break;
      }

      v65 = v64 - 1;
      v66 = (*&buf[16])(buf, *(*v59 + 8 * v64 - 8), 0);
      v64 = v65;
    }

    while (v66);
  }

LABEL_17:
  v38 = *MEMORY[0x1E69E9840];
  return v16;
}

void _SITuningInit()
{
  pthread_once(&_SITuningInit_once_control, _onceInitTuning);
  if (_SITuningInit_indexOnce != -1)
  {

    dispatch_once(&_SITuningInit_indexOnce, &__block_literal_global_1102);
  }
}

double SIInitIndexLocks(uint64_t a1)
{
  pthread_mutex_init((a1 + 1880), 0);
  pthread_cond_init((a1 + 1944), 0);
  pthread_mutex_init((a1 + 1504), 0);
  pthread_mutex_init((a1 + 1568), 0);
  pthread_mutex_init((a1 + 1632), 0);
  pthread_mutex_init((a1 + 6976), 0);
  pthread_mutex_init((a1 + 2256), 0);
  pthread_rwlock_init((a1 + 80), 0);
  *(a1 + 1696) = 0;
  result = 0.0;
  *(a1 + 6576) = 0;
  atomic_store(0, (a1 + 1452));
  return result;
}

uint64_t guarded_dup(int a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v8 = dup(a1);
  arc4random_buf(&v9, 8uLL);
  v1 = change_fdguard_np();
  if (v1)
  {
    v2 = v1;
    v3 = *__error();
    v4 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = *__error();
      *buf = 136315906;
      v11 = "guarded_dup";
      v12 = 1024;
      v13 = 14191;
      v14 = 1024;
      v15 = v2;
      v16 = 1024;
      v17 = v7;
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: Failed to protect fd with %d %d", buf, 0x1Eu);
    }

    *__error() = v3;
  }

  result = v8;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

int *si_set_vector_store(uint64_t a1)
{
  result = *(a1 + 1192);
  if (result)
  {
    vector_store = db_get_vector_store(result);
    v4 = *(a1 + 1392);
    v5 = *(a1 + 1384);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v9 = __si_set_vector_store_block_invoke;
    v10 = &__block_descriptor_tmp_1097;
    v11 = vector_store;
    if (v4 && *(v4 + 8))
    {
      v6 = 0;
      while ((v9)(v8, *(*v4 + 8 * v6), 0))
      {
        if (++v6 >= *(v4 + 8))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      if (v5 && *(v5 + 8))
      {
        v7 = 0;
        do
        {
          if (!(v9)(v8, *(*v5 + 8 * v7), 1))
          {
            break;
          }

          ++v7;
        }

        while (v7 < *(v5 + 8));
      }
    }

    return db_set_host(*(a1 + 1192), a1);
  }

  return result;
}

uint64_t SIInitIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  MEMORY[0x1EEE9AC00](a1);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  cf = v15;
  v17 = v16;
  v459 = v18;
  v20 = v19;
  v22 = v21;
  v532 = *MEMORY[0x1E69E9840];
  if (registerForGameModeChange_onceToken != -1)
  {
    dispatch_once(&registerForGameModeChange_onceToken, &__block_literal_global_1131);
  }

  if (freeQueueOnce != -1)
  {
    dispatch_once(&freeQueueOnce, &__block_literal_global_1105);
  }

  v463 = v14;
  v466 = v12;
  si_set_vector_store(v22);
  v23 = *(v22 + 1392);
  v24 = *(v22 + 1384);
  *__s1 = 0;
  v494 = __s1;
  v495 = 0x2000000000;
  v496 = 0;
  *&buf.f_bsize = MEMORY[0x1E69E9820];
  buf.f_blocks = 0x40000000;
  buf.f_bfree = __ContentIndexVectorIndexDropCount_block_invoke;
  buf.f_bavail = &unk_1E8197668;
  buf.f_files = __s1;
  if (v23 && (v25 = v23, *(v23 + 8)))
  {
    v26 = 0;
    while ((buf.f_bfree)(&buf, *(*v25 + 8 * v26), 0))
    {
      if (++v26 >= *(v25 + 8))
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    if (v24 && *(v24 + 8))
    {
      v27 = 0;
      do
      {
        if (!(buf.f_bfree)(&buf, *(*v24 + 8 * v27), 1))
        {
          break;
        }

        ++v27;
      }

      while (v27 < *(v24 + 8));
    }
  }

  v28 = *(v494 + 6);
  _Block_object_dispose(__s1, 8);
  if (v28)
  {
    v29 = *__error();
    v30 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      buf.f_bsize = 67109120;
      buf.f_iosize = v28;
      _os_log_impl(&dword_1C278D000, v30, OS_LOG_TYPE_DEFAULT, "db_scan_lost_ids for %u dropped vectors", &buf, 8u);
    }

    *__error() = v29;
    create_scan_touch_file(*(v22 + 32), 0);
    scan_lost_ids(v22, 0);
    v31 = *(v22 + 1392);
    v32 = *(v22 + 1384);
    if (v31)
    {
      v33 = *(v31 + 8);
      if (v33)
      {
        v34 = *v31;
        do
        {
          v35 = *v34++;
          *(v35 + 4920) = 0;
          --v33;
        }

        while (v33);
      }
    }

    if (v32)
    {
      v36 = *(v32 + 8);
      if (v36)
      {
        v37 = *v32;
        do
        {
          v38 = *v37++;
          *(v38 + 4920) = 0;
          --v36;
        }

        while (v36);
      }
    }
  }

  v458 = v20;
  v460 = v10;
  v39 = v10;
  v40 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_BACKGROUND, 0);
  *(v22 + 1184) = dispatch_queue_create("com.apple.spotlight.index.journal.toc", v40);
  bzero(__s1, 0x400uLL);
  v41 = *(v22 + 32);
  bzero(&buf, 0x878uLL);
  v42 = fstatfs(v41, &buf);
  v43 = buf.f_blocks * buf.f_bsize;
  if (v42)
  {
    v43 = -1;
  }

  *(v22 + 2472) = v43;
  *(v22 + 6876) = 0x7FFFFFFF;
  v44 = 832;
  do
  {
    v45 = v44;
    *(v22 + v44) = dispatch_semaphore_create(16);
    v44 = v45 + 8;
  }

  while (v45 != 856);
  atomic_store(0, (v22 + 6888));
  *(v22 + 1480) = 0;
  *(v22 + 1472) = 0;
  if (*(v22 + 2072) != 1)
  {
    *(v22 + 64) = 0;
    if ((v17 & 0x100) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v46 = dispatch_workloop_create("Watchdog workloop");
  v47 = dispatch_queue_create_with_target_V2("Watchdog timer queue", 0, v46);
  v48 = dispatch_source_create(MEMORY[0x1E69E9710], 1uLL, 0, v47);
  dispatch_release(v46);
  v49 = malloc_type_calloc(1uLL, 0x78uLL, 0x1060040D8F80976uLL);
  *v49 = v48;
  v49[1] = v47;
  *(v49 + 16) = 0;
  v49[9] = 0;
  v49[12] = 0;
  v49[14] = 0;
  *(v49 + 20) = 0;
  *(v49 + 2) = 0u;
  *(v49 + 3) = 0u;
  *(v49 + 16) = 0;
  *(v22 + 64) = v49;
  *&buf.f_bsize = MEMORY[0x1E69E9820];
  buf.f_blocks = 0x40000000;
  buf.f_bfree = __si_indexingWatchdogInit_block_invoke;
  buf.f_bavail = &__block_descriptor_tmp_7_3953;
  buf.f_files = v49;
  buf.f_ffree = v22;
  dispatch_source_set_event_handler(v48, &buf);
  if ((v17 & 0x100) != 0)
  {
LABEL_34:
    *(v22 + 2128) = xmmword_1C2BFA340;
    *(v22 + 672) = 0;
    *(v22 + 328) = 0;
    *(v22 + 656) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    si_init_orphan_oid(v22);
  }

LABEL_35:
  bzero((v22 + 7040), 0xC00uLL);
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v484 = 0;
  *&v483[4] = 0;
  *v483 = 0;
  v51 = setThreadIdAndInfo(*(v22 + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  *&v483[8] = HIDWORD(v51);
  v484 = v51;
  *&v483[4] = v52;
  *v483 = v53;
  v54 = threadData[9 * v51 + 1] + 320 * HIDWORD(v51);
  *(v54 + 216) = 0;
  v55 = *(v54 + 312);
  v56 = *(v54 + 224);
  if (v56)
  {
    v56(*(v54 + 288));
  }

  v482 = v484;
  v481 = *&v483[8];
  v480 = *v483;
  if (_setjmp(v54))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.f_bsize) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &buf, 2u);
    }

    *(v54 + 312) = v55;
    CIOnThreadCleanUpReset(v480);
    dropThreadId(v482, 1, add_explicit + 1);
    CICleanUpReset(v482, HIDWORD(v480));
LABEL_146:
    _SICloseIndex(v22, 0);
    pthread_mutex_destroy((v22 + 1880));
    pthread_cond_destroy((v22 + 1944));
    pthread_mutex_destroy((v22 + 1504));
    pthread_mutex_destroy((v22 + 1568));
    pthread_mutex_destroy((v22 + 1632));
    pthread_mutex_destroy((v22 + 6976));
    pthread_mutex_destroy((v22 + 2256));
    pthread_rwlock_destroy((v22 + 80));
    result = 0xFFFFFFFFLL;
    goto LABEL_147;
  }

  v462 = v39;
  v57 = *MEMORY[0x1E695E480];
  v58 = *MEMORY[0x1E695E480];
  *(v22 + 72) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr = 1;
  v59 = CFNumberCreate(v57, kCFNumberIntType, &valuePtr);
  if (v59)
  {
    v60 = v59;
    CFDictionarySetValue(*(v22 + 72), @"version", v59);
    CFRelease(v60);
  }

  *(v22 + 1704) = CFBagCreateMutable(v58, 64, MEMORY[0x1E695E9D0]);
  if (*(v22 + 32) && *(v22 + 1192))
  {
    _si_init_localized_terms(v22);
  }

  if ((v17 & 0x80000109) == 0 && !a9 && !*(v22 + 6624))
  {
    v419 = __si_assert_copy_extra_661(-1);
    v387 = v419;
    v420 = "";
    if (v419)
    {
      v420 = v419;
    }

    v429 = "fs_only || newIndex->dirStore || rebuildDirStore";
    v431 = v420;
    v389 = 15551;
LABEL_520:
    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", v389, v429, v431);
    free(v387);
    if (__valid_fs(-1))
    {
      v394 = 2989;
    }

    else
    {
      v394 = 3072;
    }

    *v394 = -559038737;
    abort();
  }

  *(v22 + 828) = v17;
  if (*(v22 + 2072) == 1)
  {
    *(v22 + 6584) |= 0x300000u;
  }

  v465 = v17 & 0x80000109;
  v61 = *(v22 + 32);
  value = v22;
  v468 = add_explicit;
  v467 = v55;
  v464 = v58;
  if ((v17 & 0x100) != 0)
  {
    v521 = 0u;
    v520 = 0u;
    v519 = 0u;
    v518 = 0u;
    v517 = 0u;
    v516 = 0u;
    v515 = 0u;
    v514 = 0u;
    v513 = 0u;
    v512 = 0u;
    v511 = 0u;
    v510 = 0u;
    v509 = 0u;
    v508 = 0u;
    v507 = 0u;
    v506 = 0u;
    v505 = 0u;
    v504 = 0u;
    v503 = 0u;
    v502 = 0u;
    v501 = 0u;
    v500 = 0u;
    v499 = 0u;
    memset(&v498, 0, sizeof(v498));
    snprintf(&v498, 0x200uLL, "doc_store_load(%d, %s, %lld)", v61, "docstore", 1);
    v486[1] = 0;
    v486[0] = 0;
    ScopeLogger::ScopeLogger(v486, &v498);
    memset(v485, 0, sizeof(v485));
    analytics::ScopedLogger<analytics::OpenEvent>::ScopedLogger();
  }

  v62 = fcntl(*(v22 + 32), 50, __s1);
  v63 = 0;
  if ((v62 & 0x80000000) == 0 && __s1[0])
  {
    v64 = strstr(__s1, "NSFile");
    if (v64)
    {
      v63 = v64;
    }

    else
    {
      v63 = __s1;
    }
  }

  v452 = v63;
  if (*(v22 + 1192))
  {
    _SIInitSDB(v22, v17, (v17 >> 2) & 1);
    v65 = SICopyProperty(v22, @"JournalSerialNumber");
    if (v65)
    {
      v66 = v65;
      v67 = CFGetTypeID(v65);
      if (v67 == CFNumberGetTypeID())
      {
        *&buf.f_bsize = 0;
        CFNumberGetValue(v66, kCFNumberSInt64Type, &buf);
        if (*&buf.f_bsize)
        {
          *(v22 + 2128) = *&buf.f_bsize;
        }
      }

      CFRelease(v66);
    }

    v68 = SICopyProperty(v22, @"ConsumedJournalSerialNumber");
    if (v68)
    {
      v69 = v68;
      v70 = CFGetTypeID(v68);
      if (v70 == CFNumberGetTypeID())
      {
        *&buf.f_bsize = 0;
        CFNumberGetValue(v69, kCFNumberSInt64Type, &buf);
        if (*&buf.f_bsize)
        {
          *(v22 + 2136) = *&buf.f_bsize;
        }
      }

      CFRelease(v69);
    }

    v71 = SICopyProperty(v22, @"kSIIdentifierHashVersion");
    if (v71)
    {
      v72 = v71;
      v73 = CFGetTypeID(v71);
      if (v73 == CFNumberGetTypeID())
      {
        buf.f_bsize = 0;
        CFNumberGetValue(v72, kCFNumberIntType, &buf);
        *(v22 + 6584) = *(v22 + 6584) & 0xF7FFFFFF | ((buf.f_bsize & 1) << 27);
      }

      CFRelease(v72);
    }

    v74 = SICopyProperty(v22, @"kSIIdentifierHashVersion");
    if (v74)
    {
      v75 = v74;
      v76 = CFGetTypeID(v74);
      if (v76 == CFNumberGetTypeID())
      {
        buf.f_bsize = 0;
        CFNumberGetValue(v75, kCFNumberIntType, &buf);
        *(v22 + 6584) = *(v22 + 6584) & 0xF7FFFFFF | ((buf.f_bsize & 1) << 27);
      }

      CFRelease(v75);
    }

    if ((v462 & 1) == 0)
    {
      v77 = *(v22 + 1456);
      if (v77 <= 1)
      {
        v77 = 1;
      }

      *&buf.f_bsize = 0;
      buf.f_blocks = &buf;
      buf.f_bfree = 0x2000000000;
      LODWORD(buf.f_bavail) = v77;
      v78 = *(v22 + 1392);
      v79 = *(v22 + 1384);
      v475[0] = MEMORY[0x1E69E9820];
      v475[1] = 0x40000000;
      v476 = __SIInitIndex_block_invoke_1107;
      v477 = &unk_1E8191CE0;
      p_buf = &buf;
      if (v78 && *(v78 + 8))
      {
        v80 = 0;
        while ((v476)(v475, *(*v78 + 8 * v80), 0))
        {
          if (++v80 >= *(v78 + 8))
          {
            goto LABEL_86;
          }
        }
      }

      else
      {
LABEL_86:
        if (v79 && *(v79 + 8))
        {
          v81 = 0;
          do
          {
            if (!(v476)(v475, *(*v79 + 8 * v81), 1))
            {
              break;
            }

            ++v81;
          }

          while (v81 < *(v79 + 8));
        }
      }

      v82 = *(buf.f_blocks + 24);
      if (v82 > *(v22 + 1456))
      {
        *(v22 + 1456) = v82;
        v83 = CFNumberCreate(v58, kCFNumberSInt32Type, (v22 + 1456));
        SISetProperty(v22, @"kSINextIndexId", v83);
        CFRelease(v83);
      }

      v84 = SICopyProperty(v22, @"kSPHasPhotos");
      v85 = *MEMORY[0x1E695E4D0];
      *(v22 + 10112) = v84 == *MEMORY[0x1E695E4D0];
      *(v22 + 10113) = SICopyProperty(v22, @"kSPHasText") == v85;
      _Block_object_dispose(&buf, 8);
      add_explicit = v468;
    }
  }

  *(v22 + 1776) = CFSetCreateMutable(v58, 0, &kSILQCallbacks);
  *(v22 + 1784) = CFDictionaryCreateMutable(v58, 0, MEMORY[0x1E695E9D8], &kQueryNodeUniqueSetValueCallbacks);
  pthread_mutex_init((v22 + 1712), 0);
  pthread_mutex_init((v22 + 1320), 0);
  *(v22 + 1440) = 0;
  v461 = v17 & 0xC;
  if ((v17 & 0xC) != 0)
  {
    v92 = cf;
    if ((v17 & 8) != 0)
    {
      goto LABEL_132;
    }
  }

  else
  {
    v93 = SICopyProperty(v22, @"kMDSIndexSyncCount");
    v94 = (v22 + 2344);
    if (v93)
    {
      v95 = v93;
      CFNumberGetValue(v93, kCFNumberIntType, v94);
      CFRelease(v95);
    }

    else
    {
      *v94 = 1;
    }

    v96 = SICopyProperty(v22, @"kMDSIndexDeferSyncCount");
    v86 = (v22 + 2348);
    if (v96)
    {
      v97 = v96;
      CFNumberGetValue(v96, kCFNumberIntType, v86);
      CFRelease(v97);
    }

    else
    {
      *v86 = 1;
    }

    v92 = cf;
  }

  if ((*(v22 + 2073) & 1) == 0)
  {
    v98 = SICopyProperty(v22, @"kSITokenizerUnigrams");
    if (v98)
    {
      v99 = v98;
      if (CFBooleanGetValue(v98))
      {
        *(v22 + 2073) = 1;
      }

      CFRelease(v99);
      v92 = cf;
    }
  }

  if ((*(v22 + 6587) & 6) == 0)
  {
    v100 = SICopyProperty(v22, @"kSITokenizerUseCRF");
    if (v100)
    {
      v101 = v100;
      if (CFBooleanGetValue(v100))
      {
        *(v22 + 6584) = *(v22 + 6584) & 0xF9FFFFFF | 0x2000000;
      }

      CFRelease(v101);
      v92 = cf;
    }

    v102 = SICopyProperty(v22, @"kSITokenizerVersion");
    if (v102)
    {
      v103 = v102;
      *(v22 + 6584) |= 0x6000000u;
      v104 = CFGetTypeID(v102);
      if (v104 == CFNumberGetTypeID())
      {
        buf.f_bsize = 0;
        if (CFNumberGetValue(v103, kCFNumberIntType, &buf))
        {
          if (buf.f_bsize - 1 <= 2)
          {
            *(v22 + 6584) = *(v22 + 6584) & 0xF9FFFFFF | (buf.f_bsize << 25);
          }
        }
      }

      CFRelease(v103);
      v92 = cf;
    }

    if ((v17 & 1) == 0 && (~*(v22 + 6584) & 0x6000000) != 0)
    {
      v105 = CFLocaleCopyPreferredLanguages();
      if (v105)
      {
        v106 = v105;
        if (CFArrayGetCount(v105))
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v106, 0);
          if (CFStringFind(ValueAtIndex, @"ko", 9uLL).length)
          {
            v108 = *__error();
            v109 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
            {
              v406 = *(v22 + 6584);
              buf.f_bsize = 136315906;
              *&buf.f_iosize = "SIInitIndex";
              WORD2(buf.f_blocks) = 1024;
              *(&buf.f_blocks + 6) = 15792;
              WORD1(buf.f_bfree) = 1024;
              HIDWORD(buf.f_bfree) = (v406 >> 25) & 3;
              LOWORD(buf.f_bavail) = 2112;
              *(&buf.f_bavail + 2) = ValueAtIndex;
              _os_log_error_impl(&dword_1C278D000, v109, OS_LOG_TYPE_ERROR, "%s:%d: rebuild index for tokenizer (%d) %@", &buf, 0x22u);
            }

            *__error() = v108;
            CFRelease(v106);
            __si_set_error_str(1, "%s:%u: %s", v110, v111, v112, v113, v114, v115, "SpotlightIndex.c");
            __si_set_rebuild_reason(v116, v117, "%s:%u: %s", "SpotlightIndex.c", 15799, "tokenizer");
            goto LABEL_143;
          }
        }

        CFRelease(v106);
        v92 = cf;
      }
    }
  }

  if ((v17 & 0xC) == 0)
  {
    v118 = *(v22 + 1192);
    if (v118)
    {
      db_create_id_for_field(v118, "kMDItemAttributeChangeDate", 0, 12);
    }
  }

LABEL_132:
  if (v92)
  {
    CFRetain(v92);
  }

  *(v22 + 1416) = v92;
  if (v458 && (v17 & 0x100) == 0)
  {
    if ((v458[7] & 0x80) != 0)
    {
      v119 = 0;
    }

    else
    {
      v119 = (v458[7] >> 7) & 2;
    }

    v120 = v119 | *(v22 + 6584) & 0xFFFFFFFD;
    *(v22 + 6584) = v120;
    v121 = v120 & 0xFFFFFFFB | (4 * ((v458[7] >> 5) & 1));
    *(v22 + 6584) = v121;
    v122 = v121 & 0xFFFFFFFE | (v458[7] >> 13) & 1;
    *(v22 + 6584) = v122;
    *(v22 + 6584) = (v122 & 0xFFBFFFFF | (((v458[7] >> 2) & 1) << 22)) ^ 0x400000;
LABEL_141:
    if (!v92)
    {
      __si_set_error_str(1, "%s:%u: %s", v86, v87, v88, v89, v90, v91, "SpotlightIndex.c");
LABEL_143:
      v123 = threadData[9 * v482 + 1] + 320 * v481;
      *(v123 + 312) = v55;
      v124 = *(v123 + 232);
      if (v124)
      {
        v124(*(v123 + 288));
      }

      dropThreadId(v482, 0, add_explicit + 1);
      goto LABEL_146;
    }

    goto LABEL_148;
  }

  if ((v17 & 0x100) == 0)
  {
    goto LABEL_141;
  }

LABEL_148:
  v492 = 0u;
  v491 = 0u;
  v490 = 0u;
  v489 = 0u;
  v488 = 0u;
  *v487 = 0u;
  Current = CFAbsoluteTimeGetCurrent();
  pthread_mutex_lock(&schlock);
  v128 = CFAbsoluteTimeGetCurrent() - Current;
  if (v128 > 60.0)
  {
    v129 = *__error();
    v130 = _SILogForLogForCategory(3);
    if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
    {
      buf.f_bsize = 134217984;
      *&buf.f_iosize = v128;
      _os_log_impl(&dword_1C278D000, v130, OS_LOG_TYPE_DEFAULT, "[shutdown hang] Waited %lfs for schlock", &buf, 0xCu);
    }

    *__error() = v129;
  }

  v131 = 12;
  if ((v17 & 4) != 0)
  {
    v131 = 9;
  }

  v469 = v17;
  if ((v17 & 8) != 0)
  {
    v132 = 6;
  }

  else
  {
    v132 = v131;
  }

  v133 = global_schedulers;
  v134 = v132;
  do
  {
    if (!*v133)
    {
      *&buf.f_bsize = xmmword_1F427BA38;
      *&buf.f_bfree = *&off_1F427BA48;
      buf.f_files = qword_1F427BA58;
      *v133 = CFDictionaryCreateMutable(v58, 0, 0, &buf);
    }

    ++v133;
    --v134;
  }

  while (v134);
  if ((v469 & 8) == 0)
  {
    Mutable = gAllIndexes;
    if (!gAllIndexes)
    {
      Mutable = CFSetCreateMutable(v58, 0, 0);
      gAllIndexes = Mutable;
    }

    CFSetAddValue(Mutable, v22);
  }

  v136 = v459;
  if (v459)
  {
    v136 = *v459;
  }

  v444 = v136;
  if (v458)
  {
    v137 = *v458;
  }

  else
  {
    v137 = 0;
  }

  *(v22 + 1404) = v444;
  v443 = v137;
  *(v22 + 1408) = v137;
  *(v22 + 6584) |= 0x1000000u;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SIInitIndex_block_invoke_1116;
  block[3] = &__block_descriptor_tmp_1120;
  block[4] = v22;
  if (SIInitIndex_once != -1)
  {
    dispatch_once(&SIInitIndex_once, block);
  }

  if (SIInitIndex_override == 1 && (HIBYTE(*(v22 + 6584)) & 1) != SIInitIndex_lowLatency)
  {
    v138 = *__error();
    v139 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
    {
      if (SIInitIndex_lowLatency)
      {
        v140 = "true";
      }

      else
      {
        v140 = "false";
      }

      buf.f_bsize = 136315138;
      *&buf.f_iosize = v140;
      _os_log_impl(&dword_1C278D000, v139, OS_LOG_TYPE_DEFAULT, "setting low latency: %s", &buf, 0xCu);
    }

    *__error() = v138;
    *(v22 + 6584) = *(v22 + 6584) & 0xFEFFFFFF | ((SIInitIndex_lowLatency & 1) << 24);
  }

  v141 = (v22 + 864);
  v142 = v22 + 1008;
  v143 = &off_1F427B590;
  v144 = 6;
  v457 = value + 864;
  do
  {
    bzero(&buf, 0x450uLL);
    v146 = *(v143 + 2);
    v145 = *(v143 + 3);
    snprintf(&buf, 0x450uLL, "%s scheduler for index at %s", *v143, v452);
    if (*&v141[8 * v146])
    {
      v386 = __si_assert_copy_extra_661(-1);
      v387 = v386;
      v388 = "";
      if (v386)
      {
        v388 = v386;
      }

      v429 = "newIndex->workqueues.schedulers[schedId]==0";
      v431 = v388;
      v389 = 15926;
      goto LABEL_520;
    }

    if (*(v142 + 8 * v145))
    {
      v390 = __si_assert_copy_extra_661(-1);
      v387 = v390;
      v391 = "";
      if (v390)
      {
        v391 = v390;
      }

      v429 = "newIndex->workqueues.queues[queueId]==0";
      v431 = v391;
      v389 = 15927;
      goto LABEL_520;
    }

    v147 = *(v143 - 24);
    v148 = *(v143 - 2);
    v149 = *(v143 - 4);
    root_scheduler = si_create_root_scheduler(&buf);
    v141 = value + 864;
    *&v457[8 * v146] = root_scheduler;
    value[2072];
    *(v142 + 8 * v145) = si_create_child_queue(root_scheduler);
    v143 += 7;
    --v144;
  }

  while (v144);
  v437 = value + 1008;
  v151 = global_schedulers;
  v152 = &byte_1F427B2E8;
  v153 = v487;
  do
  {
    v436 = v132;
    if ((v469 & 0x100) != 0)
    {
      v154 = 0;
    }

    else
    {
      v154 = v444;
      if (*(v152 - 15))
      {
        v154 = v443;
      }
    }

    v155 = v154;
    if (!CFDictionaryGetValueIfPresent(*v151, v154, v153))
    {
      bzero(&buf, 0x400uLL);
      snprintf(&buf, 0x400uLL, "%s scheduler for spindle %d", *(v152 + 1), v155);
      if (*(v152 - 15) == 1)
      {
        v162 = v458;
      }

      else
      {
        v162 = v459;
      }

      if (v162 && *v152 == 1)
      {
        v162[7];
      }

      v172 = *(v152 - 16);
      v173 = *(v152 - 1);
      v174 = *(v152 - 3);
      v175 = si_create_root_scheduler(&buf);
      *v153 = v175;
      CFDictionarySetValue(*v151, v155, v175);
      v176 = *v153;
      if (*v153 && atomic_fetch_add((v176 + 96), 0xFFFFFFFF) == 1)
      {
        _si_scheduler_destroy(v176);
      }
    }

    bzero(&buf, 0x450uLL);
    v157 = *(v152 + 4);
    v156 = *(v152 + 5);
    v158 = *(v152 - 32);
    v159 = *v152;
    snprintf(&buf, 0x450uLL, "%s scheduler for index at %s", *(v152 + 1), v452);
    if (*&v457[8 * v157])
    {
      v392 = __si_assert_copy_extra_661(-1);
      v387 = v392;
      v393 = "";
      if (v392)
      {
        v393 = v392;
      }

      v429 = "newIndex->workqueues.schedulers[schedId]==0";
      v431 = v393;
      v389 = 15965;
      goto LABEL_520;
    }

    if (*&v437[8 * v156])
    {
      v395 = __si_assert_copy_extra_661(-1);
      v396 = v395;
      v397 = "";
      if (v395)
      {
        v397 = v395;
      }

      v430 = "newIndex->workqueues.queues[queueId]==0";
      v432 = v397;
      v398 = 15966;
      goto LABEL_527;
    }

    v160 = *v153;
    v161 = *v153;
    if ((v159 & 1) == 0)
    {
      v163 = v161[34];
    }

    v164 = *(v152 - 16);
    v165 = *(v152 - 3);
    v166 = *(v161 + 20);
    scheduler = si_create_scheduler(*(v160 + 4));
    v168 = scheduler;
    if (v158)
    {
      dispatch_suspend(scheduler[20]);
      ++*(v168 + 116);
      v169 = debug_token_create(v168, "SIScheduler.c", 1176);
      *(v168 + 168) = v169;
      pthread_threadid_np(0, (v169 + 24));
    }

    *(v168 + 8) = *(v161 + 2);
    atomic_fetch_add(v160 + 24, 1u);
    dispatch_activate(*(v168 + 32));
    v170 = *(v161 + 4);
    *&v498.st_dev = MEMORY[0x1E69E9820];
    v498.st_ino = 0x40000000;
    *&v498.st_uid = __si_create_child_scheduler_block_invoke;
    *&v498.st_rdev = &__block_descriptor_tmp_16_1484;
    v498.st_atimespec.tv_sec = v161;
    v498.st_atimespec.tv_nsec = v168;
    dispatch_sync(v170, &v498);
    v171 = (value + 864);
    *&v457[8 * v157] = v168;
    value[2072];
    *&v437[8 * v156] = si_create_child_queue(v168);
    ++v151;
    v152 += 56;
    ++v153;
    --v132;
  }

  while (v436 != 1);
  v177 = value;
  v178 = v464;
  if (*(value + 112))
  {
    v179 = *__error();
    v180 = _SILogForLogForCategory(3);
    v181 = 2 * (dword_1EBF46AD8 < 4);
    if (os_log_type_enabled(v180, v181))
    {
      v182 = *(value + 112);
      buf.f_bsize = 134218242;
      *&buf.f_iosize = v182;
      WORD2(buf.f_blocks) = 2080;
      *(&buf.f_blocks + 6) = v452;
      _os_log_impl(&dword_1C278D000, v180, v181, "Suspending root scheduler for %p (%s)", &buf, 0x16u);
    }

    *__error() = v179;
    v183 = *(value + 112);
    do
    {
      v184 = v183;
      if (!v183)
      {
        break;
      }

      v183 = *v183;
    }

    while (*v184);
    *(value + 306) = si_scheduler_suspend_async(v184);
  }

  v185 = v468;
  if (dword_1EBF46AD8 >= 5)
  {
    v413 = *__error();
    v414 = _SILogForLogForCategory(3);
    if (os_log_type_enabled(v414, OS_LOG_TYPE_DEFAULT))
    {
      v415 = *(value + 113);
      buf.f_bsize = 134217984;
      *&buf.f_iosize = v415;
      _os_log_impl(&dword_1C278D000, v414, OS_LOG_TYPE_DEFAULT, "Created volume scheduler %p", &buf, 0xCu);
    }

    *__error() = v413;
    if (dword_1EBF46AD8 >= 5)
    {
      v416 = *__error();
      v417 = _SILogForLogForCategory(3);
      if (os_log_type_enabled(v417, OS_LOG_TYPE_DEFAULT))
      {
        v418 = *(value + 116);
        buf.f_bsize = 134217984;
        *&buf.f_iosize = v418;
        _os_log_impl(&dword_1C278D000, v417, OS_LOG_TYPE_DEFAULT, "Created index scheduler %p", &buf, 0xCu);
      }

      *__error() = v416;
    }
  }

  if (!v461)
  {
    value[2072];
    *(value + 145) = si_create_child_queue(*(value + 109));
  }

  pthread_mutex_unlock(&schlock);
  *(value + 865) = copyVolumeInfoStr(*(value + 8));
  for (i = 1008; i != 1168; i += 8)
  {
    v187 = *&value[i];
    if (v187)
    {
      v188 = *&value[i];
      v189 = *(value + 8);
      *(v187 + 40) = v189;
      *(v188 + 48) = copyVolumeInfoStr(v189);
    }
  }

  if (*(value + 146))
  {
    v190 = *(value + 146);
    *(v190 + 40) = -1;
    *(v190 + 48) = strdup("");
  }

  if (*(value + 149))
  {
    si_create_propertydict(value, 0, 1);
    if (!*(value + 180))
    {
      si_storecookieRef(value);
    }

    si_getsizes(value, v460 ^ 1);
  }

  if ((v469 & 8) == 0)
  {
    v191 = SICopyProperty(value, @"kIndexRemappingData");
    if (v191)
    {
      v192 = v191;
      v193 = CFDictionaryGetValue(v191, remapping_keys[0]);
      v194 = CFDictionaryGetValue(v192, off_1EBF46C08);
      if (v193)
      {
        CFNumberGetValue(v193, kCFNumberCFIndexType, value + 2384);
      }

      if (v194)
      {
        v438 = v192;
        Count = CFArrayGetCount(v194);
        theArray = CFArrayCreateMutable(v464, 0, MEMORY[0x1E695E9C0]);
        if (Count >= 1)
        {
          for (j = 0; Count != j; ++j)
          {
            v197 = CFArrayGetValueAtIndex(v194, j);
            v198 = *(v177 + 32);
            v199 = CFDictionaryGetValue(v197, remapping_keys_11804);
            v200 = CFDictionaryGetValue(v197, off_1EBF47958);
            if (v200)
            {
              v201 = v199 == 0;
            }

            else
            {
              v201 = 1;
            }

            if (v201)
            {
              goto LABEL_248;
            }

            *&buf.f_bsize = 0;
            v498.st_dev = 0;
            if (!CFNumberGetValue(v200, kCFNumberCFIndexType, &buf))
            {
              goto LABEL_248;
            }

            if (!CFNumberGetValue(v199, kCFNumberSInt32Type, &v498))
            {
              goto LABEL_248;
            }

            v202 = CIDecodeRemappingMetadataWithIndex(v198, v498.st_dev, *&buf.f_bsize);
            if (!v202)
            {
              goto LABEL_248;
            }

            v203 = v202;
            CFArrayAppendValue(theArray, v202);
            if ((v469 & 4) == 0)
            {
              v204 = ContentIndexRemappingNextDocId(v203, &buf);
              if (!v204)
              {
                goto LABEL_248;
              }

              v205 = si_indexForDocId(value, v204);
              if (!v205)
              {
                goto LABEL_248;
              }

              v433 = v205;
              v206 = malloc_type_malloc(0x20uLL, 0x20040DC1BFBCFuLL);
              *v206 = value;
              v206[1] = v433;
              v206[2] = CFRetain(v203);
              si_enqueue_work(*(value + 133), si_remapForIndex, v206);
            }

            CFRelease(v203);
LABEL_248:
            v177 = value;
          }
        }

        si_inflateLeakedRemapping(v177, (v469 & 4) != 0, *(v177 + 2384), theArray);
        if (CFArrayGetCount(theArray))
        {
          *(v177 + 2368) = theArray;
        }

        else
        {
          *(v177 + 2368) = 0;
          CFRelease(theArray);
        }

        v185 = v468;
        v178 = v464;
        v171 = (value + 864);
        v192 = v438;
      }

      else
      {
        v207 = CFArrayCreateMutable(v464, 0, MEMORY[0x1E695E9C0]);
        if (*(value + 298) <= 1uLL)
        {
          v208 = 1;
        }

        else
        {
          v208 = *(value + 298);
        }

        si_inflateLeakedRemapping(value, (v469 & 4) != 0, v208, v207);
        if (CFArrayGetCount(v207))
        {
          *(value + 296) = v207;
        }

        else
        {
          *(value + 296) = 0;
          CFRelease(v207);
        }
      }

      CFRelease(v192);
    }
  }

  si_populateClientStates(v177);
  if (a9 && *(v177 + 872) && *(v177 + 1040))
  {
    v209 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004093CA8EA1uLL);
    v209[2] = a9;
    *v209 = v177;
    *(v209 + 2) = _si_scheduler_suspend(*(v177 + 872), "SpotlightIndex.c", 36370);
    si_enqueue_work(*(v177 + 1040), si_repair_index_file_tree, v209);
  }

  if (!v461 && (v462 & 1) == 0)
  {
    if (_os_feature_enabled_impl())
    {
      if (si_check_version_property(v177, @"VEC_EXT_CLEARED_VECTORS"))
      {
        buf.f_bsize = 0;
        v210 = db_clear_vector_fields(*(v177 + 1192), &buf, *(v177 + 6592), &__block_literal_global_1181);
        if (buf.f_bsize)
        {
          db_unlock_datastore(*(v177 + 1192));
        }

        if (!v210)
        {
          v211 = *__error();
          v212 = _SILogForLogForCategory(16);
          v213 = dword_1EBF46B0C < 3;
          if (os_log_type_enabled(v212, (dword_1EBF46B0C < 3)))
          {
            LOWORD(v498.st_dev) = 0;
            _os_log_impl(&dword_1C278D000, v212, v213, "*warn* Reset vector indexes", &v498, 2u);
          }

          *__error() = v211;
          v214 = *(v177 + 1392);
          v215 = *(v177 + 1384);
          if (v214 && *(v214 + 8))
          {
            v216 = 0;
            do
            {
              v217 = v216;
              ContentIndexResetVectorIndex(*(*v214 + 8 * v216));
              v216 = v217 + 1;
            }

            while (v217 + 1 < *(v214 + 8));
          }

          if (v215 && *(v215 + 8))
          {
            v218 = 0;
            do
            {
              v219 = v218;
              ContentIndexResetVectorIndex(*(*v215 + 8 * v218));
              v218 = v219 + 1;
            }

            while (v219 + 1 < *(v215 + 8));
          }

          _si_set_version_property(v177, @"VEC_EXT_CLEARED_VECTORS", 1);
        }

LABEL_282:
        db_set_ignore_vectors(*(v177 + 1192), 1);
      }

      else if (si_check_version_property(v177, @"VEC_EXT_CLEARED_JOURNALS"))
      {
        goto LABEL_282;
      }
    }

    LODWORD(v485[0]) = 0;
    if (fd_setDir(*(v177 + 32), v485))
    {
      bzero(&buf, 0x400uLL);
      v220 = *(v177 + 2344);
      v449 = v220;
      v455 = *(v177 + 2348);
      v221 = v220 + 1;
      while (v221 != 0x7FFFFFFF)
      {
        if (snprintf(&buf, 0x400uLL, "%s%d", "journalAttr.", v221) >= 0x400)
        {
          v400 = __si_assert_copy_extra_661(-1);
          v387 = v400;
          v401 = "";
          if (v400)
          {
            v401 = v400;
          }

          v429 = "0 <= count && count < pathBufferSize";
          v431 = v401;
          v389 = 6266;
          goto LABEL_520;
        }

        memset(&v498, 0, sizeof(v498));
        v222 = stat(&buf, &v498);
        v223 = ++v221;
        if (v222)
        {
          v224 = v223 - 2;
          goto LABEL_290;
        }
      }

      v224 = 2147483646;
LABEL_290:
      v225 = v220 - 1;
      v226 = v220 + 0x7FFFFFFF;
      do
      {
        if (!v226)
        {
          v231 = 0x80000000;
          v230 = -2147483647;
          goto LABEL_296;
        }

        if (snprintf(&buf, 0x400uLL, "%s%d", "journalAttr.", v225) >= 0x400)
        {
          v402 = __si_assert_copy_extra_661(-1);
          v387 = v402;
          v403 = "";
          if (v402)
          {
            v403 = v402;
          }

          v429 = "0 <= count && count < pathBufferSize";
          v431 = v403;
          v389 = 6278;
          goto LABEL_520;
        }

        memset(&v498, 0, sizeof(v498));
        v227 = stat(&buf, &v498);
        v228 = --v225;
        --v226;
      }

      while (!v227);
      v229 = v228 + 1;
      v230 = v228 + 2;
      v231 = v229;
LABEL_296:
      v232 = v231;
      v233 = v230;
      v234 = v455;
      v235 = v455;
      if (*(v177 + 2072) != 1)
      {
        goto LABEL_310;
      }

      v439 = v231;
      v236 = v455 + 1;
      do
      {
        if (v236 == 0x7FFFFFFF)
        {
          v235 = 2147483646;
          goto LABEL_303;
        }

        if (snprintf(&buf, 0x400uLL, "%s%d", "deferAttr.", v236) >= 0x400)
        {
          v407 = __si_assert_copy_extra_661(-1);
          v396 = v407;
          v408 = "";
          if (v407)
          {
            v408 = v407;
          }

          v430 = "0 <= count && count < pathBufferSize";
          v432 = v408;
          v398 = 6319;
          goto LABEL_527;
        }

        memset(&v498, 0, sizeof(v498));
        v237 = stat(&buf, &v498);
        v238 = ++v236;
      }

      while (!v237);
      v235 = v238 - 2;
LABEL_303:
      v239 = v455 - 1;
      v240 = v455 + 0x7FFFFFFF;
      while (v240)
      {
        if (snprintf(&buf, 0x400uLL, "%s%d", "deferAttr.", v239) >= 0x400)
        {
          v409 = __si_assert_copy_extra_661(-1);
          v387 = v409;
          v410 = "";
          if (v409)
          {
            v410 = v409;
          }

          v429 = "0 <= count && count < pathBufferSize";
          v431 = v410;
          v389 = 6331;
          goto LABEL_520;
        }

        memset(&v498, 0, sizeof(v498));
        v241 = stat(&buf, &v498);
        v242 = --v239;
        --v240;
        if (v241)
        {
          v234 = v242 + 2;
          goto LABEL_309;
        }
      }

      v234 = -2147483647;
LABEL_309:
      v177 = value;
      v232 = v439;
LABEL_310:
      v451 = v234;
      v450 = v235;
      v243 = *(v177 + 6952);
      if (!v243)
      {
        v243 = fd_create_protected(*(v177 + 32), "journalRepair.1", 0, 0);
        if (!v243)
        {
          v250 = v233;
          v178 = v464;
          goto LABEL_325;
        }
      }

      memset(&v498, 0, sizeof(v498));
      v178 = v464;
      if (fd_stat(v243, &v498))
      {
        v244 = v233;
        goto LABEL_324;
      }

      v245 = *__error();
      v246 = v233;
      v247 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v247, OS_LOG_TYPE_DEFAULT))
      {
        v522 = 136316162;
        v523 = "journalRepair.1";
        v524 = 2048;
        st_size = v498.st_size;
        v526 = 1024;
        v527 = v220;
        v528 = 1024;
        v529 = v246;
        v530 = 1024;
        v531 = v224;
        _os_log_impl(&dword_1C278D000, v247, OS_LOG_TYPE_DEFAULT, "Found %s, size:%lld, syncCount:%d, first:%d, last:%d", &v522, 0x28u);
      }

      *__error() = v245;
      if (!v498.st_size)
      {
        _fd_unlink_with_origin(v243, 0);
        fd_release(v243);
        v243 = 0;
        v244 = v246;
        goto LABEL_324;
      }

      if (snprintf(&buf, 0x400uLL, "%s%d", "journalAttr.", v232) >= 0x400)
      {
        v427 = __si_assert_copy_extra_661(-1);
        v396 = v427;
        v428 = "";
        if (v427)
        {
          v428 = v427;
        }

        v430 = "0 <= count && count < pathBufferSize";
        v432 = v428;
        v398 = 6359;
        goto LABEL_527;
      }

      v248 = *__error();
      v249 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v249, OS_LOG_TYPE_DEFAULT))
      {
        v522 = 136316162;
        v523 = "journalRepair.1";
        v524 = 2080;
        st_size = &buf;
        v526 = 1024;
        v527 = v220;
        v528 = 1024;
        v529 = v232;
        v530 = 1024;
        v531 = v224;
        _os_log_impl(&dword_1C278D000, v249, OS_LOG_TYPE_DEFAULT, "Moving %s to %s, syncCount:%d, first:%d, last:%d", &v522, 0x28u);
      }

      *__error() = v248;
      fd_rename(v243, &buf);
      v244 = v232;
LABEL_324:
      v250 = v244;
LABEL_325:
      v446 = v243;
      if (v224 == v220 || v250 == v220)
      {
        if (snprintf(&buf, 0x400uLL, "%s%d", "journalAttr.", v220) < 0x400)
        {
          memset(&v498, 0, sizeof(v498));
          v251 = stat(&buf, &v498);
          if (v251)
          {
            v252 = v224 == v220;
          }

          else
          {
            v252 = 0;
          }

          if (v251)
          {
            v253 = v250 == v220;
          }

          else
          {
            v253 = 0;
          }

          v224 -= v252;
          v250 += v253;
          goto LABEL_335;
        }

        v423 = __si_assert_copy_extra_661(-1);
        v396 = v423;
        v424 = "";
        if (v423)
        {
          v424 = v423;
        }

        v430 = "0 <= count && count < pathBufferSize";
        v432 = v424;
        v398 = 6369;
LABEL_527:
        __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", v398, v430, v432);
        free(v396);
        if (__valid_fs(-1))
        {
          v399 = 2989;
        }

        else
        {
          v399 = 3072;
        }

        *v399 = -559038737;
        abort();
      }

LABEL_335:
      v254 = v250;
      v454 = *(v177 + 2128);
      v453 = *(v177 + 2136);
      v255 = *__error();
      v256 = _SILogForLogForCategory(0);
      v257 = os_log_type_enabled(v256, OS_LOG_TYPE_DEFAULT);
      v258 = v224 - v254;
      if (v224 < v254)
      {
        if (v257)
        {
          v498.st_dev = 134219264;
          *&v498.st_mode = v177;
          WORD2(v498.st_ino) = 1024;
          *(&v498.st_ino + 6) = v220;
          HIWORD(v498.st_uid) = 1024;
          v498.st_gid = v254;
          LOWORD(v498.st_rdev) = 1024;
          *(&v498.st_rdev + 2) = v224;
          *(&v498.st_rdev + 3) = 2048;
          v498.st_atimespec.tv_sec = v454;
          LOWORD(v498.st_atimespec.tv_nsec) = 2048;
          *(&v498.st_atimespec.tv_nsec + 2) = v453;
          _os_log_impl(&dword_1C278D000, v256, OS_LOG_TYPE_DEFAULT, "No journals to replay for %p, syncCount:%d, first:%d, last:%d, journalSerialNumber:%lld, consumedJournalSerialNumber:%lld", &v498, 0x32u);
        }

        *__error() = v255;
        v259 = -1;
        v260 = v224;
        goto LABEL_375;
      }

      if (v257)
      {
        v498.st_dev = 67110656;
        *&v498.st_mode = v258 + 1;
        LOWORD(v498.st_ino) = 2048;
        *(&v498.st_ino + 2) = v177;
        HIWORD(v498.st_uid) = 1024;
        v498.st_gid = v220;
        LOWORD(v498.st_rdev) = 1024;
        *(&v498.st_rdev + 2) = v254;
        *(&v498.st_rdev + 3) = 1024;
        LODWORD(v498.st_atimespec.tv_sec) = v224;
        WORD2(v498.st_atimespec.tv_sec) = 2048;
        *(&v498.st_atimespec.tv_sec + 6) = v454;
        HIWORD(v498.st_atimespec.tv_nsec) = 2048;
        v498.st_mtimespec.tv_sec = v453;
        _os_log_impl(&dword_1C278D000, v256, OS_LOG_TYPE_DEFAULT, "Replaying %d journals for %p, syncCount:%d, first:%d, last:%d, journalSerialNumber:%lld, consumedJournalSerialNumber:%lld", &v498, 0x38u);
      }

      *__error() = v255;
      if (v224 >= *(v177 + 2344))
      {
        *(v177 + 2344) = v224 + 1;
      }

      v442 = v224;
      v440 = v258 + 1;
      v522 = 0;
      v261 = -1;
      v262 = 0;
      v263 = 0;
      v447 = v254;
      while (2)
      {
        v264 = v254 + v262;
        if (snprintf(&buf, 0x400uLL, "%s%d", "journalAttr.", v254 + v262) >= 0x400)
        {
          v404 = __si_assert_copy_extra_661(-1);
          v387 = v404;
          v405 = "";
          if (v404)
          {
            v405 = v404;
          }

          v429 = "0 <= count && count < pathBufferSize";
          v431 = v405;
          v389 = 6397;
          goto LABEL_520;
        }

        if (v522)
        {
          v265 = fd_create_protected(*(v177 + 32), &buf, 2, 0);
          if (v265)
          {
            v266 = v265;
            v267 = fd_truncate(v265, 0);
            fd_release(v266);
            v268 = *__error();
            v269 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v269, OS_LOG_TYPE_ERROR))
            {
              v498.st_dev = 136316162;
              *&v498.st_mode = "si_playbackJournals";
              WORD2(v498.st_ino) = 1024;
              *(&v498.st_ino + 6) = 6433;
              HIWORD(v498.st_uid) = 1024;
              v498.st_gid = v254 + v262;
              LOWORD(v498.st_rdev) = 1024;
              *(&v498.st_rdev + 2) = v267;
              *(&v498.st_rdev + 3) = 2080;
              v498.st_atimespec.tv_sec = &buf;
              _os_log_error_impl(&dword_1C278D000, v269, OS_LOG_TYPE_ERROR, "%s:%d: ParseFailed truncated A idx:%d result:%d %s", &v498, 0x28u);
            }

            *__error() = v268;
          }

          else
          {
            v278 = *__error();
            v279 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v279, OS_LOG_TYPE_ERROR))
            {
              v498.st_dev = 136315906;
              *&v498.st_mode = "si_playbackJournals";
              WORD2(v498.st_ino) = 1024;
              *(&v498.st_ino + 6) = 6427;
              HIWORD(v498.st_uid) = 1024;
              v498.st_gid = v254 + v262;
              LOWORD(v498.st_rdev) = 2080;
              *(&v498.st_rdev + 2) = &buf;
              _os_log_error_impl(&dword_1C278D000, v279, OS_LOG_TYPE_ERROR, "%s:%d: ParseFailed unable to truncate A idx:%d %s", &v498, 0x22u);
            }

            *__error() = v278;
          }

          goto LABEL_370;
        }

        if (v446 && (v270 = v446, !v262) || (v270 = fd_create_protected(*(v177 + 32), &buf, 0, 0)) != 0)
        {
          v271 = si_playbackJournal(v177, v270, &v522);
          v272 = v522;
          if (v522)
          {
            v273 = *__error();
            v274 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v274, OS_LOG_TYPE_ERROR))
            {
              v498.st_dev = 136316418;
              *&v498.st_mode = "si_playbackJournals";
              WORD2(v498.st_ino) = 1024;
              *(&v498.st_ino + 6) = 6415;
              HIWORD(v498.st_uid) = 1024;
              v498.st_gid = v264;
              LOWORD(v498.st_rdev) = 1024;
              *(&v498.st_rdev + 2) = v447;
              *(&v498.st_rdev + 3) = 1024;
              LODWORD(v498.st_atimespec.tv_sec) = v442;
              WORD2(v498.st_atimespec.tv_sec) = 2080;
              *(&v498.st_atimespec.tv_sec + 6) = &buf;
              _os_log_error_impl(&dword_1C278D000, v274, OS_LOG_TYPE_ERROR, "%s:%d: ParseFailed A idx:%d (%d %d) %s", &v498, 0x2Eu);
            }

            *__error() = v273;
            v177 = value;
            v254 = v447;
          }

          if (v261 <= v271)
          {
            v275 = v271;
          }

          else
          {
            v275 = v261;
          }

          if (v272)
          {
            v276 = v261;
          }

          else
          {
            v276 = v275;
          }

          fd_release(v270);
          v277 = (v263 + 1);
          v259 = v276;
        }

        else
        {
          v280 = *__error();
          v281 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v281, OS_LOG_TYPE_DEFAULT))
          {
            v498.st_dev = 136315906;
            *&v498.st_mode = &buf;
            WORD2(v498.st_ino) = 1024;
            *(&v498.st_ino + 6) = v449;
            HIWORD(v498.st_uid) = 1024;
            v498.st_gid = v254;
            LOWORD(v498.st_rdev) = 1024;
            *(&v498.st_rdev + 2) = v442;
            _os_log_impl(&dword_1C278D000, v281, OS_LOG_TYPE_DEFAULT, "Missing %s, syncCount:%d, first:%d, last:%d", &v498, 0x1Eu);
          }

          *__error() = v280;
LABEL_370:
          v277 = v263;
          v259 = v261;
        }

        ++v262;
        v261 = v259;
        v263 = v277;
        if (v440 != v262)
        {
          continue;
        }

        break;
      }

      v282 = *__error();
      v283 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v283, OS_LOG_TYPE_DEFAULT))
      {
        v498.st_dev = 67109890;
        *&v498.st_mode = v277;
        LOWORD(v498.st_ino) = 2080;
        *(&v498.st_ino + 2) = &buf;
        HIWORD(v498.st_uid) = 1024;
        v498.st_gid = v449;
        LOWORD(v498.st_rdev) = 2048;
        *(&v498.st_rdev + 2) = v259;
        _os_log_impl(&dword_1C278D000, v283, OS_LOG_TYPE_DEFAULT, "Replayed %d journal(s) %s, syncCount:%d, maxReplaySerialNumber:%lld", &v498, 0x22u);
      }

      *__error() = v282;
      v260 = v254;
      v178 = v464;
LABEL_375:
      v448 = v259;
      v284 = v463;
      if (v463)
      {
        v285 = v260;
        v286 = CFArrayGetCount(v463);
        v287 = v286;
        if (v286 >= 2)
        {
          v533.length = v286;
          v533.location = 0;
          CFArraySortValues(v463, v533, IntPtrCFCompare, 0);
          goto LABEL_379;
        }

        if (v286 == 1)
        {
LABEL_379:
          tv_sec = 0;
          v289 = 0;
          v290 = 0;
          while (1)
          {
            v291 = CFArrayGetValueAtIndex(v284, v290);
            snprintf(&buf, 0x400uLL, "%s%d", "journalAttr.", v291);
            if (v291 < v285)
            {
              break;
            }

            if (!v289)
            {
              memset(&v498, 0, sizeof(v498));
              v296 = stat(&buf, &v498);
              v289 = v296 == 0;
              if (!v296)
              {
                tv_sec = v498.st_ctimespec.tv_sec;
              }

              goto LABEL_395;
            }

            if (v291 <= v285)
            {
              v289 = 1;
            }

            else
            {
              memset(&v498, 0, sizeof(v498));
              if (!stat(&buf, &v498) && v498.st_ctimespec.tv_sec < tv_sec)
              {
                break;
              }

              v289 = 1;
            }

LABEL_395:
            if (v287 == ++v290)
            {
              goto LABEL_396;
            }
          }

          v292 = *__error();
          v293 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v293, OS_LOG_TYPE_DEFAULT))
          {
            v498.st_dev = 136315138;
            *&v498.st_mode = &buf;
            _os_log_impl(&dword_1C278D000, v293, OS_LOG_TYPE_DEFAULT, "Unlinking dropped file %s", &v498, 0xCu);
          }

          *__error() = v292;
          unlink(&buf);
          snprintf(&buf, 0x400uLL, "%s%d_toc", "journalAttr.", v291);
          v294 = *__error();
          v295 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v295, OS_LOG_TYPE_DEFAULT))
          {
            v498.st_dev = 136315138;
            *&v498.st_mode = &buf;
            _os_log_impl(&dword_1C278D000, v295, OS_LOG_TYPE_DEFAULT, "Unlinking dropped file %s", &v498, 0xCu);
          }

          *__error() = v294;
          unlink(&buf);
          v178 = v464;
          v284 = v463;
          goto LABEL_395;
        }
      }

LABEL_396:
      v177 = value;
      v185 = v468;
      v171 = (value + 864);
      if (value[2072])
      {
        if (v450 == v455 || v451 == v455)
        {
          if (snprintf(&buf, 0x400uLL, "%s%d", "deferAttr.", v455) >= 0x400)
          {
            v425 = __si_assert_copy_extra_661(-1);
            v387 = v425;
            v426 = "";
            if (v425)
            {
              v426 = v425;
            }

            v429 = "0 <= count && count < pathBufferSize";
            v431 = v426;
            v389 = 6561;
            goto LABEL_520;
          }

          memset(&v498, 0, sizeof(v498));
          v299 = stat(&buf, &v498);
          if (v299)
          {
            v300 = v450 == v455;
          }

          else
          {
            v300 = 0;
          }

          if (v299)
          {
            v301 = v451 == v455;
          }

          else
          {
            v301 = 0;
          }

          v297 = v450 - v300;
          v298 = v451 + v301;
        }

        else
        {
          v297 = v450;
          v298 = v451;
        }

        v302 = v298;
        v303 = v297;
        v304 = *__error();
        v305 = _SILogForLogForCategory(0);
        v306 = os_log_type_enabled(v305, OS_LOG_TYPE_DEFAULT);
        v441 = v302;
        if (v303 < v302)
        {
          v307 = v466;
          if (v306)
          {
            v498.st_dev = 134219264;
            *&v498.st_mode = value;
            WORD2(v498.st_ino) = 1024;
            *(&v498.st_ino + 6) = v455;
            HIWORD(v498.st_uid) = 1024;
            v498.st_gid = v302;
            LOWORD(v498.st_rdev) = 1024;
            *(&v498.st_rdev + 2) = v303;
            *(&v498.st_rdev + 3) = 2048;
            v498.st_atimespec.tv_sec = v454;
            LOWORD(v498.st_atimespec.tv_nsec) = 2048;
            *(&v498.st_atimespec.tv_nsec + 2) = v453;
            _os_log_impl(&dword_1C278D000, v305, OS_LOG_TYPE_DEFAULT, "No defer journals to replay for %p, deferSyncCount:%d, first:%d, last:%d, journalSerialNumber:%lld, consumedJournalSerialNumber:%lld", &v498, 0x32u);
          }

          *__error() = v304;
          v308 = v303;
          v309 = v448;
LABEL_446:
          v434 = v309;
          if (v307)
          {
            v334 = CFArrayGetCount(v307);
            if (v334 >= 1)
            {
              v335 = v334;
              for (k = 0; k != v335; ++k)
              {
                v337 = CFArrayGetValueAtIndex(v307, k);
                if (v337 < v308)
                {
                  v338 = v337;
                  snprintf(&buf, 0x400uLL, "%s%d", "deferAttr.", v337);
                  v339 = *__error();
                  v340 = _SILogForLogForCategory(0);
                  if (os_log_type_enabled(v340, OS_LOG_TYPE_DEFAULT))
                  {
                    v498.st_dev = 136315138;
                    *&v498.st_mode = &buf;
                    _os_log_impl(&dword_1C278D000, v340, OS_LOG_TYPE_DEFAULT, "Unlinking dropped file %s", &v498, 0xCu);
                  }

                  *__error() = v339;
                  unlink(&buf);
                  snprintf(&buf, 0x400uLL, "%s%d_toc", "deferAttr.", v338);
                  v341 = *__error();
                  v342 = _SILogForLogForCategory(0);
                  if (os_log_type_enabled(v342, OS_LOG_TYPE_DEFAULT))
                  {
                    v498.st_dev = 136315138;
                    *&v498.st_mode = &buf;
                    _os_log_impl(&dword_1C278D000, v342, OS_LOG_TYPE_DEFAULT, "Unlinking dropped file %s", &v498, 0xCu);
                  }

                  *__error() = v341;
                  unlink(&buf);
                  v177 = value;
                  v307 = v466;
                  v178 = v464;
                }
              }
            }
          }

          v343 = v453;
          if (v434 > v453)
          {
            v343 = v434;
          }

          v344 = v454;
          if (v454 <= v343)
          {
            v345 = v343 + 1;
            *(v177 + 2128) = v345;
            v344 = v345;
          }

          v346 = *__error();
          v347 = _SILogForLogForCategory(0);
          v185 = v468;
          v171 = (value + 864);
          if (os_log_type_enabled(v347, OS_LOG_TYPE_DEFAULT))
          {
            v498.st_dev = 134218240;
            *&v498.st_mode = v344;
            WORD2(v498.st_ino) = 2048;
            *(&v498.st_ino + 6) = v453;
            _os_log_impl(&dword_1C278D000, v347, OS_LOG_TYPE_DEFAULT, "journalSerialNumber:%lld, consumedJournalSerialNumber:%lld", &v498, 0x16u);
          }

          *__error() = v346;
          goto LABEL_463;
        }

        if (v306)
        {
          v498.st_dev = 67110656;
          *&v498.st_mode = v303 - v302 + 1;
          LOWORD(v498.st_ino) = 2048;
          *(&v498.st_ino + 2) = value;
          HIWORD(v498.st_uid) = 1024;
          v498.st_gid = v455;
          LOWORD(v498.st_rdev) = 1024;
          *(&v498.st_rdev + 2) = v302;
          *(&v498.st_rdev + 3) = 1024;
          LODWORD(v498.st_atimespec.tv_sec) = v303;
          WORD2(v498.st_atimespec.tv_sec) = 2048;
          *(&v498.st_atimespec.tv_sec + 6) = v454;
          HIWORD(v498.st_atimespec.tv_nsec) = 2048;
          v498.st_mtimespec.tv_sec = v453;
          _os_log_impl(&dword_1C278D000, v305, OS_LOG_TYPE_DEFAULT, "Replaying %d defer journals for %p, syncCount:%d, first:%d, last:%d, journalSerialNumber:%lld, consumedJournalSerialNumber:%lld", &v498, 0x38u);
        }

        *__error() = v304;
        if (v303 >= *(value + 587))
        {
          *(value + 587) = v303 + 1;
        }

        v445 = v303;
        v310 = (v303 + 1);
        v522 = 0;
        v311 = 0;
        v312 = "deferAttr.";
        v313 = v448;
        v314 = v441;
        while (2)
        {
          if (snprintf(&buf, 0x400uLL, "%s%d", v312, v314) >= 0x400)
          {
            v411 = __si_assert_copy_extra_661(-1);
            v387 = v411;
            v412 = "";
            if (v411)
            {
              v412 = v411;
            }

            v429 = "0 <= count && count < pathBufferSize";
            v431 = v412;
            v389 = 6584;
            goto LABEL_520;
          }

          v315 = *(value + 8);
          if (v311)
          {
            v316 = fd_create_protected(v315, &buf, 2, 0);
            if (v316)
            {
              v317 = v316;
              v318 = fd_truncate(v316, 0);
              fd_release(v317);
              v319 = *__error();
              v320 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v320, OS_LOG_TYPE_ERROR))
              {
                v498.st_dev = 136316162;
                *&v498.st_mode = "si_playbackJournals";
                WORD2(v498.st_ino) = 1024;
                *(&v498.st_ino + 6) = 6615;
                HIWORD(v498.st_uid) = 1024;
                v498.st_gid = v314;
                LOWORD(v498.st_rdev) = 1024;
                *(&v498.st_rdev + 2) = v318;
                *(&v498.st_rdev + 3) = 2080;
                v498.st_atimespec.tv_sec = &buf;
                _os_log_error_impl(&dword_1C278D000, v320, OS_LOG_TYPE_ERROR, "%s:%d: ParseFailed truncated B idx:%d result:%d %s", &v498, 0x28u);
              }

              *__error() = v319;
              v309 = v313;
              goto LABEL_444;
            }

            v332 = *__error();
            v333 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v333, OS_LOG_TYPE_ERROR))
            {
              v498.st_dev = 136315906;
              *&v498.st_mode = "si_playbackJournals";
              WORD2(v498.st_ino) = 1024;
              *(&v498.st_ino + 6) = 6609;
              HIWORD(v498.st_uid) = 1024;
              v498.st_gid = v314;
              LOWORD(v498.st_rdev) = 2080;
              *(&v498.st_rdev + 2) = &buf;
              _os_log_error_impl(&dword_1C278D000, v333, OS_LOG_TYPE_ERROR, "%s:%d: ParseFailed unable to truncate B idx:%d %s", &v498, 0x22u);
            }

            *__error() = v332;
          }

          else
          {
            v321 = fd_create_protected(v315, &buf, 0, 0);
            v322 = *__error();
            v323 = _SILogForLogForCategory(0);
            v324 = os_log_type_enabled(v323, OS_LOG_TYPE_DEFAULT);
            if (v321)
            {
              v325 = v312;
              if (v324)
              {
                v498.st_dev = 136315906;
                *&v498.st_mode = &buf;
                WORD2(v498.st_ino) = 1024;
                *(&v498.st_ino + 6) = v455;
                HIWORD(v498.st_uid) = 1024;
                v498.st_gid = v441;
                LOWORD(v498.st_rdev) = 1024;
                *(&v498.st_rdev + 2) = v445;
                _os_log_impl(&dword_1C278D000, v323, OS_LOG_TYPE_DEFAULT, "Replaying %s, syncCount:%d, first:%d, last:%d", &v498, 0x1Eu);
              }

              v326 = v310;
              *__error() = v322;
              v327 = si_playbackJournal(value, v321, &v522);
              v311 = v522;
              if (v522)
              {
                v328 = *__error();
                v329 = _SILogForLogForCategory(0);
                if (os_log_type_enabled(v329, OS_LOG_TYPE_ERROR))
                {
                  v498.st_dev = 136316418;
                  *&v498.st_mode = "si_playbackJournals";
                  WORD2(v498.st_ino) = 1024;
                  *(&v498.st_ino + 6) = 6597;
                  HIWORD(v498.st_uid) = 1024;
                  v498.st_gid = v314;
                  LOWORD(v498.st_rdev) = 1024;
                  *(&v498.st_rdev + 2) = v441;
                  *(&v498.st_rdev + 3) = 1024;
                  LODWORD(v498.st_atimespec.tv_sec) = v445;
                  WORD2(v498.st_atimespec.tv_sec) = 2080;
                  *(&v498.st_atimespec.tv_sec + 6) = &buf;
                  _os_log_error_impl(&dword_1C278D000, v329, OS_LOG_TYPE_ERROR, "%s:%d: ParseFailed B idx:%d (%d %d) %s", &v498, 0x2Eu);
                }

                *__error() = v328;
              }

              if (v313 <= v327)
              {
                v330 = v327;
              }

              else
              {
                v330 = v313;
              }

              if (v311)
              {
                v331 = v313;
              }

              else
              {
                v331 = v330;
              }

              fd_release(v321);
              v309 = v331;
              v310 = v326;
              v312 = v325;
LABEL_444:
              ++v314;
              v313 = v309;
              if (v310 == v314)
              {
                v308 = v441;
                v177 = value;
                v307 = v466;
                v178 = v464;
                goto LABEL_446;
              }

              continue;
            }

            if (v324)
            {
              v498.st_dev = 136315906;
              *&v498.st_mode = &buf;
              WORD2(v498.st_ino) = 1024;
              *(&v498.st_ino + 6) = v455;
              HIWORD(v498.st_uid) = 1024;
              v498.st_gid = v441;
              LOWORD(v498.st_rdev) = 1024;
              *(&v498.st_rdev + 2) = v445;
              _os_log_impl(&dword_1C278D000, v323, OS_LOG_TYPE_DEFAULT, "Missing %s, syncCount:%d, first:%d, last:%d", &v498, 0x1Eu);
            }

            *__error() = v322;
            v311 = 0;
          }

          break;
        }

        v309 = v313;
        goto LABEL_444;
      }

LABEL_463:
      v348 = v485[0];
      MEMORY[0x1C6921200](LODWORD(v485[0]));
      if ((v348 & 0x80000000) == 0)
      {
        close(v348);
      }
    }

    if (_os_feature_enabled_impl())
    {
      v349 = *(v177 + 1048);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 0x40000000;
      aBlock[2] = __SIInitIndex_block_invoke_1123;
      aBlock[3] = &__block_descriptor_tmp_1124;
      aBlock[4] = v177;
      si_enqueue_block(v349, aBlock);
    }
  }

  if (*(v177 + 2072) == 1 && (clientstates_file = si_read_clientstates_file(v177)) != 0)
  {
    v351 = clientstates_file;
    v352 = CFDictionaryGetValue(clientstates_file, @"journalName");
    if (v352)
    {
      v353 = v352;
      v354 = CFRetain(v352);
      SIReleaseJournalAssertion(v177, v353);
      v355 = v354;
    }

    else
    {
      v355 = 0;
      SIReleaseJournalAssertion(v177, 0);
    }

    CFRelease(v351);
    v356 = v355;
  }

  else
  {
    v356 = 0;
  }

  v472 = *(v177 + 2128);
  v357 = CFNumberCreate(v178, kCFNumberSInt64Type, &v472);
  if (v357)
  {
    v358 = v357;
    CFDictionarySetValue(*(v177 + 72), @"journalSerialNumber", v357);
    CFRelease(v358);
  }

  v359 = CFNumberCreate(v178, kCFNumberIntType, (v177 + 2344));
  if (v359)
  {
    v360 = v359;
    CFDictionarySetValue(*(v177 + 72), @"syncCount", v359);
    CFRelease(v360);
  }

  v361 = CFNumberCreate(v178, kCFNumberIntType, (v177 + 2348));
  if (v361)
  {
    v362 = v361;
    CFDictionarySetValue(*(v177 + 72), @"deferSyncCount", v361);
    CFRelease(v362);
  }

  if (v356)
  {
    CFDictionarySetValue(*(v177 + 72), @"journalName", v356);
    CFRelease(v356);
  }

  v363 = si_storecookieRef(v177);
  if (!v363)
  {
    v366 = *__error();
    v367 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v367, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_488;
    }

    buf.f_bsize = 136315394;
    *&buf.f_iosize = "SIInitIndex";
    WORD2(buf.f_blocks) = 1024;
    *(&buf.f_blocks + 6) = 16088;
    v368 = "%s:%d: Failed to retrieve store cookie during index initialization";
LABEL_530:
    _os_log_error_impl(&dword_1C278D000, v367, OS_LOG_TYPE_ERROR, v368, &buf, 0x12u);
    goto LABEL_488;
  }

  v364 = CFUUIDCreateString(v178, v363);
  if (v364)
  {
    v365 = v364;
    CFDictionarySetValue(*(v177 + 72), @"cookie", v364);
    CFRelease(v365);
    goto LABEL_489;
  }

  v366 = *__error();
  v367 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v367, OS_LOG_TYPE_ERROR))
  {
    buf.f_bsize = 136315394;
    *&buf.f_iosize = "SIInitIndex";
    WORD2(buf.f_blocks) = 1024;
    *(&buf.f_blocks + 6) = 16085;
    v368 = "%s:%d: Failed to create string from store cookie UUID bytes";
    goto LABEL_530;
  }

LABEL_488:
  *__error() = v366;
LABEL_489:
  SIPersistClientStateAndMeta(v177, 1);
  if (!v461)
  {
    si_enqueue_barrier(*(v177 + 1048), resumeHoldQueue, *(*(v177 + 1160) + 16));
  }

  v369 = SICopyProperty(v177, @"YukonRecomputedSizes");
  if (v369)
  {
    v370 = v369;
    buf.f_bsize = 0;
    CFNumberGetValue(v369, kCFNumberIntType, &buf);
    f_bsize = buf.f_bsize;
    CFRelease(v370);
    if ((v469 & 0x800) == 0 && f_bsize < 2)
    {
LABEL_494:
      v471[0] = MEMORY[0x1E69E9820];
      v471[1] = 0x40000000;
      v471[2] = __SIInitIndex_block_invoke_1125;
      v471[3] = &__block_descriptor_tmp_1126;
      v471[4] = v177;
      _SIRecomputeSizesWithCallback(v177, 0, v471);
    }
  }

  else if ((v469 & 0x800) == 0)
  {
    goto LABEL_494;
  }

  v372 = threadData[9 * v482 + 1] + 320 * v481;
  *(v372 + 312) = v467;
  v373 = *(v372 + 232);
  if (v373)
  {
    v373(*(v372 + 288));
  }

  dropThreadId(v482, 0, v185 + 1);
  if (!v465 && !a9 && !*(v177 + 6624))
  {
    v421 = __si_assert_copy_extra_661(-1);
    v387 = v421;
    v422 = "";
    if (v421)
    {
      v422 = v421;
    }

    v429 = "fs_only||newIndex->dirStore || rebuildDirStore";
    v431 = v422;
    v389 = 16122;
    goto LABEL_520;
  }

  if (gTerminating)
  {
    __si_set_error_str(1, "%s:%u: %s", v374, v375, v376, v377, v378, v379, "SpotlightIndex.c");
    result = 4294967293;
  }

  else
  {
    v380 = *v171;
    if (*v171)
    {
      v381 = *(v380 + 168);
      *(v380 + 168) = 0;
      v382 = *v171;
    }

    else
    {
      v382 = 0;
      v381 = 0;
    }

    si_scheduler_resume(v382, v381, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 16182);
    v383 = *(v177 + 944);
    if (v383)
    {
      v384 = *(v383 + 168);
      *(v383 + 168) = 0;
      v385 = *(v177 + 944);
    }

    else
    {
      v385 = 0;
      v384 = 0;
    }

    si_scheduler_resume(v385, v384, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 16184);
    result = 0;
  }

LABEL_147:
  v126 = *MEMORY[0x1E69E9840];
  return result;
}

void _si_set_version_property(uint64_t a1, const void *a2, int a3)
{
  valuePtr = 5;
  v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr);
  si_set_property(a1, a2, v6, 1, a3);
  CFRelease(v6);
}

uint64_t __si_cacheIndexVersion_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  result = 0;
  *(*(a1 + 32) + 6932) = *(a2 + 4);
  return result;
}

void _SICloseIndex(uint64_t a1, int a2)
{
  if (sContactsIndex == a1)
  {
    sContactsIndex = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:
    pthread_mutex_lock((a1 + 1880));
    if (!gTerminating)
    {
      SIShutdownIndex(a1, 0, 0);
    }

    while (!*(a1 + 2416))
    {
      pthread_cond_wait((a1 + 1944), (a1 + 1880));
    }

    pthread_mutex_unlock((a1 + 1880));
    return;
  }

  if ((*(a1 + 828) & 8) == 0)
  {
    pthread_mutex_lock(&schlock);
    if (gAllIndexes)
    {
      CFSetRemoveValue(gAllIndexes, a1);
    }

    pthread_mutex_unlock(&schlock);
  }

  _SIShutdownIndex(a1);
}

void SIShutdownIndex(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  if (sContactsIndex == a1)
  {
    sContactsIndex = 0;
  }

  if ((*(a1 + 2432) & 1) != 0 || *(a1 + 2416))
  {
LABEL_6:
    if (a2)
    {

      a2(a3, 0xFFFFFFFFLL);
    }
  }

  else
  {
    *(a1 + 2432) = 1;
    v5 = malloc_type_malloc(0x18uLL, 0xA00402214FCE6uLL);
    v5[1] = a3;
    v5[2] = a2;
    *v5 = a1;
    *(a1 + 2428) = 1;
    for (i = 864; i != 1000; i += 8)
    {
      v7 = *(a1 + i);
      if (v7)
      {
        v8 = *(v7 + 32);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __si_scheduler_set_stopped_block_invoke;
        block[3] = &__block_descriptor_tmp_24_1527;
        block[4] = v7;
        dispatch_async(v8, block);
      }
    }

    *(a1 + 2433) = 1;
    if (*(a1 + 2448))
    {
      awakenPreheat(a1);
    }

    v9 = *(a1 + 1168);

    si_enqueue_work(v9, si_shutdown, v5);
  }
}

void _SIShutdownIndex(uint64_t a1)
{
  v88 = *MEMORY[0x1E69E9840];
  bzero(v87, 0x400uLL);
  v2 = (a1 + 32);
  v3 = fcntl(*(a1 + 32), 50, v87);
  if (v87[0])
  {
    v4 = v3 < 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v87;
  }

  v6 = *__error();
  v7 = _SILogForLogForCategory(0);
  v8 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v7, v8))
  {
    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&dword_1C278D000, v7, v8, "Index shut down starting for index at %s.", buf, 0xCu);
  }

  *__error() = v6;
  Current = CFAbsoluteTimeGetCurrent();
  if (sContactsIndex == a1)
  {
    sContactsIndex = 0;
  }

  *(a1 + 2428) = 1;
  v76 = 0;
  v77 = &v76;
  v78 = 0x2000000000;
  v79 = 0;
  v10 = *(a1 + 1392);
  v11 = *(a1 + 1384);
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 0x40000000;
  v73 = ___SIShutdownIndex_block_invoke;
  v74 = &unk_1E8191F48;
  v75 = &v76;
  if (v10 && *(v10 + 8))
  {
    v12 = 0;
    while ((v73)(v72, *(*v10 + 8 * v12), 0))
    {
      if (++v12 >= *(v10 + 8))
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    if (v11 && *(v11 + 8))
    {
      v13 = 0;
      do
      {
        if (!(v73)(v72, *(*v11 + 8 * v13), 1))
        {
          break;
        }

        ++v13;
      }

      while (v13 < *(v11 + 8));
    }
  }

  if ((v77[3] & 1) == 0)
  {
    si_scheduler_boost_and_forget(*(a1 + 944));
    si_scheduler_boost_and_forget(*(a1 + 864));
    si_scheduler_boost_and_forget(*(a1 + 872));
    si_scheduler_boost_and_forget(*(a1 + 896));
    si_scheduler_boost_and_forget(*(a1 + 912));
    si_scheduler_boost_and_forget(*(a1 + 888));
    si_scheduler_boost_and_forget(*(a1 + 880));
    si_scheduler_boost_and_forget(*(a1 + 952));
    _SIShutdownIndexSchedulers(a1, 0, 0, Current);
    v71 = 0;
    v14 = *(a1 + 6592);
    v15 = *(a1 + 1192);
    v16 = *(a1 + 1392);
    if (v15)
    {
      v17 = *(a1 + 1384);
      v18 = 0x1EBF46000;
    }

    else
    {
      v17 = *(a1 + 1384);
      v18 = 0x1EBF46000;
      if (*(a1 + 1384) == 0)
      {
LABEL_59:
        SIActivityJournalClose((a1 + 2192));
        v45 = *(a1 + 2192);
        *(a1 + 2192) = 0;
        if (v45)
        {
          fd_release(v45);
        }

        if (*(a1 + 2072) == 1)
        {
          v46 = *(a1 + 6964);
          v47 = *(a1 + 2104);
          if (v47 && atomic_fetch_add(v47, 0xFFFFFFFF) == 1)
          {
            _si_mobile_journal_finalize(v47, v46 == 0);
          }

          v48 = *(a1 + 2112);
          if (v48 && atomic_fetch_add(v48, 0xFFFFFFFF) == 1)
          {
            _si_mobile_journal_finalize(v48, 1);
          }

          v49 = *(a1 + 2120);
          if (v49 && atomic_fetch_add(v49, 0xFFFFFFFF) == 1)
          {
            _si_mobile_journal_finalize(v49, 1);
          }

          *(a1 + 2104) = 0;
          *(a1 + 2112) = 0;
          *(a1 + 2120) = 0;
        }

        v50 = *(a1 + 2320);
        *(a1 + 2320) = 0;
        if (v50)
        {
          fd_release(v50);
        }

        doc_store_close(*(a1 + 1296));
        *(a1 + 1296) = 0;
        *buf = *v2;
        *(a1 + 32) = -1;
        v51 = *buf;
        if (*buf != -1)
        {
          if (*&buf[8])
          {
            guarded_close_np();
            v52 = *buf;
          }

          else
          {
            close(*buf);
            v52 = v51;
          }

          unregisterForCloning(v52);
        }

        v53 = *(a1 + 48);
        *(a1 + 48) = -1;
        if (v53 != -1)
        {
          close(v53);
        }

        v54 = *__error();
        v55 = _SILogForLogForCategory(0);
        v56 = 2 * (*(v18 + 2764) < 4);
        if (os_log_type_enabled(v55, v56))
        {
          v57 = CFAbsoluteTimeGetCurrent();
          *buf = 136315394;
          *&buf[4] = v5;
          *&buf[12] = 2048;
          *&buf[14] = v57 - Current;
          _os_log_impl(&dword_1C278D000, v55, v56, "Index shut down finished for index at %s after %f seconds.", buf, 0x16u);
        }

        *__error() = v54;
        goto LABEL_84;
      }
    }

    v65 = 0;
    v68 = 257;
    v66 = v15;
    v67 = a1;
    v19 = v17;
    v64 = 0u;
    v69 = v16;
    v70 = v17;
    v86 = 0;
    v85 = 0u;
    v84 = 0u;
    memset(buf, 0, sizeof(buf));
    if (gTerminating)
    {
      *(a1 + 2420) = 1;
    }

    do
    {
      v20 = v16;
      v21 = v19;
      __dmb(0xBu);
      v16 = *(a1 + 1392);
      v19 = *(a1 + 1384);
    }

    while (v20 != v16 || v21 != v19);
    if (!fd_setDir(*v2, &v71))
    {
      v31 = *__error();
      v32 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v59 = *__error();
        *valuePtr = 136315906;
        *&valuePtr[4] = "_SIShutdownIndex";
        *&valuePtr[12] = 1024;
        *&valuePtr[14] = 16974;
        *&valuePtr[18] = 1024;
        *&valuePtr[20] = v59;
        *&valuePtr[24] = 2080;
        *&valuePtr[26] = v5;
        _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: setDir 2 error %d (%s)", valuePtr, 0x22u);
      }

      *__error() = v31;
      v33 = *(a1 + 1392);
      v34 = *(a1 + 1384);
      *&valuePtr[16] = *&buf[16];
      *&valuePtr[32] = v84;
      v81 = v85;
      v82 = v86;
      *valuePtr = *buf;
      ContentIndexCloseIndexBulk_Step1(0, v33, v34, valuePtr, v14);
      CIMetaInfoClose(a1 + 1200);
      goto LABEL_56;
    }

    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v24 = setThreadIdAndInfo(*v2, sFdExceptionCallbacks, 0, 1, add_explicit + 1);
    v62 = HIDWORD(v24);
    v63 = v24;
    v60 = v26;
    v61 = v25;
    v27 = threadData[9 * v24 + 1] + 320 * HIDWORD(v24);
    *(v27 + 216) = 0;
    v28 = *(v27 + 312);
    v29 = *(v27 + 224);
    v30 = v27;
    if (v29)
    {
      v29(*(v27 + 288));
    }

    if (_setjmp(v30))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *valuePtr = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", valuePtr, 2u);
      }

      v30[78] = v28;
      CIOnThreadCleanUpReset(v60);
      dropThreadId(v63, 1, add_explicit + 1);
      CICleanUpReset(v63, v61);
      v18 = 0x1EBF46000;
LABEL_56:
      v41 = *__error();
      v42 = _SILogForLogForCategory(0);
      v43 = 2 * (*(v18 + 2764) < 4);
      if (os_log_type_enabled(v42, v43))
      {
        v44 = CFAbsoluteTimeGetCurrent();
        *valuePtr = 136315394;
        *&valuePtr[4] = v5;
        *&valuePtr[12] = 2048;
        *&valuePtr[14] = v44 - Current;
        _os_log_impl(&dword_1C278D000, v42, v43, "Index closed for %s after %f seconds.", valuePtr, 0x16u);
      }

      *__error() = v41;
      goto LABEL_59;
    }

    if ((atomic_load_explicit((a1 + 2439), memory_order_acquire) & 1) == 0)
    {
      if (!*(a1 + 1192))
      {
        v37 = a1 + 1200;
        goto LABEL_50;
      }

      *valuePtr = *(a1 + 2136);
      v35 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, valuePtr);
      if (v35)
      {
        v36 = v35;
        si_set_property(a1, @"ConsumedJournalSerialNumber", v35, 1, 0);
        CFRelease(v36);
      }

      _si_store_property_cache(a1, 0, 1);
      si_storesizes(a1, 0);
    }

    v37 = a1 + 1200;
    if (*(a1 + 1192))
    {
      *valuePtr = xmmword_1F427BAA0;
      *&valuePtr[16] = *&off_1F427BAB0;
      *&valuePtr[32] = xmmword_1F427BAC0;
      v81 = *off_1F427BAD0;
      v82 = &v64;
LABEL_51:
      ContentIndexCloseIndexBulk_Step1(v37, v20, v21, valuePtr, v14);
      CIMetaInfoClose(v37);
      v38 = v71;
      MEMORY[0x1C6921200](v71);
      if ((v38 & 0x80000000) == 0)
      {
        close(v38);
      }

      v39 = threadData[9 * v63 + 1] + 320 * v62;
      *(v39 + 312) = v28;
      v40 = *(v39 + 232);
      v18 = 0x1EBF46000uLL;
      if (v40)
      {
        v40(*(v39 + 288));
      }

      dropThreadId(v63, 0, add_explicit + 1);
      goto LABEL_56;
    }

LABEL_50:
    *&valuePtr[16] = *&buf[16];
    *&valuePtr[32] = v84;
    v81 = v85;
    v82 = v86;
    *valuePtr = *buf;
    goto LABEL_51;
  }

LABEL_84:
  _Block_object_dispose(&v76, 8);
  v58 = *MEMORY[0x1E69E9840];
}

void _SIShutdownIndexSchedulers(uint64_t a1, char a2, int a3, double a4)
{
  v41 = *MEMORY[0x1E69E9840];
  bzero(v40, 0x400uLL);
  v8 = fcntl(*(a1 + 32), 50, v40);
  if (v40[0])
  {
    v9 = v8 < 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  v11 = dispatch_group_create();
  pthread_mutex_lock(&sGameModeMutex);
  pthread_cond_broadcast(&sGameModeCond);
  pthread_mutex_unlock(&sGameModeMutex);
  v12 = *(a1 + 6972);
  v13 = 124;
  do
  {
    if (!v12 || v13 == 119)
    {
      si_scheduler_stop(*(a1 + 8 * v13), v11);
    }

    v14 = v13 - 107;
    --v13;
  }

  while (v14 > 1);
  *(a1 + 2433) = 1;
  if (*(a1 + 2448))
  {
    awakenPreheat(a1);
  }

  dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  v15 = *__error();
  v16 = _SILogForLogForCategory(0);
  v17 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v16, v17))
  {
    if (v10)
    {
      v18 = 0;
    }

    else
    {
      v18 = v40;
    }

    *buf = 136315394;
    *&buf[4] = v18;
    *&buf[12] = 2048;
    *&buf[14] = CFAbsoluteTimeGetCurrent() - a4;
    _os_log_impl(&dword_1C278D000, v16, v17, "Schedulers stopped for %s after %f seconds.", buf, 0x16u);
  }

  *__error() = v15;
  if (a3)
  {
    for (i = 1008; i != 1176; i += 8)
    {
      if (i == 1168 && (a2 & 1) != 0)
      {
        break;
      }

      v20 = *(a1 + i);
      if (v20)
      {
        if (*v20)
        {
          si_scheduler_remove_workqueue(*v20, *(a1 + i));
        }

        if (i == 1152)
        {
          dispatch_resume(*(v20 + 16));
        }

        si_workqueue_drain(v20);
      }
    }

    cleanup_retiring(a1);
  }

  else
  {
    v21 = malloc_type_calloc(0x15uLL, 8uLL, 0x2004093837F09uLL);
    for (j = 0; j != 21; ++j)
    {
      if (j == 20)
      {
        v23 = a2;
      }

      else
      {
        v23 = 0;
      }

      v24 = j == 12 || v12 == 0;
      if (v24 && (v23 & 1) == 0)
      {
        if (j == 18)
        {
          pthread_mutex_lock((a1 + 1320));
          si_handleWorkQueue(a1, v21, v11, 18);
          pthread_mutex_unlock((a1 + 1320));
        }

        else
        {
          si_handleWorkQueue(a1, v21, v11, j);
        }
      }
    }

    si_cancel_activectx(a1);
    memcpy(buf, (a1 + 864), 0x140uLL);
    v25 = 0;
    v26 = *(a1 + 1404);
    v27 = *(a1 + 1408);
    do
    {
      v28 = *&buf[v25];
      if (v28)
      {
        atomic_fetch_add((v28 + 96), 1u);
      }

      v25 += 8;
    }

    while (v25 != 136);
    if (!v12)
    {
      cleanup_retiring(a1);
    }

    initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
    v30 = dispatch_queue_create("com.apple.spotlight.index.shutdown.shortlived", initially_inactive);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SIShutdownIndexSchedulers_block_invoke;
    block[3] = &__block_descriptor_tmp_1205;
    block[4] = v21;
    memcpy(v33, buf, sizeof(v33));
    v34 = v11;
    v35 = v30;
    v38 = v12;
    v36 = v27;
    v37 = v26;
    dispatch_group_notify(v11, v30, block);
    dispatch_activate(v30);
    dispatch_release(v30);
  }

  v31 = *MEMORY[0x1E69E9840];
}

void awakenPreheat(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = _SILogForLogForCategory(3);
  v4 = 2 * (dword_1EBF46AD8 < 4);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(a1 + 896);
    v17 = 134217984;
    v18 = v5;
    _os_log_impl(&dword_1C278D000, v3, v4, "awakenPreheat entered for %p", &v17, 0xCu);
  }

  *__error() = v2;
  v6 = *(a1 + 2448);
  if (v6 && (v7 = *(a1 + 2448), atomic_compare_exchange_strong_explicit((a1 + 2448), &v7, 0, memory_order_relaxed, memory_order_relaxed), v7 == v6))
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(3);
    v10 = 2 * (dword_1EBF46AD8 < 4);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(a1 + 896);
      v17 = 134217984;
      v18 = v11;
      _os_log_impl(&dword_1C278D000, v9, v10, "awakenPreheat continued for %p", &v17, 0xCu);
    }

    *__error() = v8;
    si_scheduler_resume_with_token(v6);
  }

  else
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(3);
    v14 = 2 * (dword_1EBF46AD8 < 4);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(a1 + 896);
      v17 = 134217984;
      v18 = v15;
      _os_log_impl(&dword_1C278D000, v13, v14, "awakenPreheat skipped for %p", &v17, 0xCu);
    }

    *__error() = v12;
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t cleanup_retiring(uint64_t a1)
{
  v2 = *(a1 + 1176);
  *(a1 + 1176) = 0;
  pthread_mutex_lock((a1 + 1320));
  if (v2)
  {
    do
    {
      v3 = *v2;
      si_scheduler_remove_workqueue(*(a1 + 872), v2[1]);
      si_workqueue_drain(v2[1]);
      si_workqueue_destroy(v2[1]);
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  return pthread_mutex_unlock((a1 + 1320));
}

void si_handleWorkQueue(uint64_t a1, uint64_t a2, NSObject *a3, int a4)
{
  v4 = a1 + 8 * a4;
  v5 = *(v4 + 1008);
  *(v4 + 1008) = 0;
  if (v5)
  {
    if (*v5)
    {
      si_scheduler_remove_workqueue(*v5, v5);
    }

    if (a4 == 18)
    {
      dispatch_resume(*(v5 + 16));
    }

    si_workqueue_drain(v5);
    dispatch_group_enter(a3);
    dispatch_retain(a3);
    v9 = *(v5 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __si_handleWorkQueue_block_invoke;
    block[3] = &__block_descriptor_tmp_1206;
    block[4] = a3;
    dispatch_barrier_async(v9, block);
    *(a2 + 8 * a4) = v5;
  }
}

void cf_release_scheduler_stopping(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = dispatch_group_create();
  si_scheduler_stop(a2, v3);
  Current = CFAbsoluteTimeGetCurrent();
  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v5 = CFAbsoluteTimeGetCurrent() - Current;
  if (v5 > 60.0)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v10) = 134217984;
      *(&v10 + 4) = v5;
      _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "[shutdown hang] Waited for %lfs to release scheduler", &v10, 0xCu);
    }

    *__error() = v6;
  }

  dispatch_release(v3);
  v8 = *(a2 + 32);
  *&v10 = MEMORY[0x1E69E9820];
  *(&v10 + 1) = 0x40000000;
  v11 = __si_scheduler_drain_block_invoke;
  v12 = &__block_descriptor_tmp_8;
  v13 = a2;
  v14 = 0;
  dispatch_sync(v8, &v10);
  if (atomic_fetch_add((a2 + 96), 0xFFFFFFFF) == 1)
  {
    _si_scheduler_destroy(a2);
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t cf_retain_scheduler(uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2)
  {
    atomic_fetch_add((a2 + 96), 1u);
  }

  return result;
}

void __si_handleWorkQueue_block_invoke(uint64_t a1)
{
  dispatch_group_leave(*(a1 + 32));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

int *si_shutdown(uint64_t *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = _SILogForLogForCategory(3);
  v4 = 2 * (dword_1EBF46AD8 < 4);
  if (os_log_type_enabled(v3, v4))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_1C278D000, v3, v4, "Shutdown started", &v16, 2u);
  }

  *__error() = v2;
  Current = CFAbsoluteTimeGetCurrent();
  if (*a1)
  {
    pthread_mutex_lock((*a1 + 1880));
    v6 = *a1;
    if (!*(*a1 + 2416))
    {
      _SIShutdownIndex(v6);
      v8 = *a1;
      *(*a1 + 2416) = 1;
      v9 = a1[2];
      if (v9)
      {
        v9(a1[1], 0);
        pthread_cond_signal((*a1 + 1944));
        pthread_mutex_unlock((*a1 + 1880));
        goto LABEL_10;
      }

      pthread_cond_signal((v8 + 1944));
      v6 = *a1;
    }

    pthread_mutex_unlock((v6 + 1880));
  }

  v7 = a1[2];
  if (v7)
  {
    v7(a1[1], 0xFFFFFFFFLL);
  }

LABEL_10:
  free(a1);
  v10 = *__error();
  v11 = _SILogForLogForCategory(3);
  v12 = 2 * (dword_1EBF46AD8 < 4);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = CFAbsoluteTimeGetCurrent();
    v16 = 134217984;
    v17 = v13 - Current;
    _os_log_impl(&dword_1C278D000, v11, v12, "Shutdown ended after %f seconds", &v16, 0xCu);
  }

  result = __error();
  *result = v10;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t si_init_orphan_oid(uint64_t result)
{
  if (!atomic_load((result + 2080)))
  {
    v52 = v1;
    v53 = v2;
    v4 = result;
    v5 = si_compute_oid_for_identifier(@"com.apple.searchd", @"com.apple.spotlight.missingparent");
    makeThreadId();
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v7 = setThreadIdAndInfo(*(v4 + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
    v51 = v7;
    v8 = threadData[9 * v7 + 1] + 320 * HIDWORD(v7);
    v50 = HIDWORD(v7);
    v49 = __PAIR64__(v9, v10);
    *(v8 + 216) = 0;
    v11 = *(v8 + 312);
    v12 = *(v8 + 224);
    if (v12)
    {
      v12(*(v8 + 288));
    }

    v48 = v51;
    v47 = v50;
    v46 = v49;
    if (_setjmp(v8))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v33) = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v33, 2u);
      }

      *(v8 + 312) = v11;
      CIOnThreadCleanUpReset(v46);
      dropThreadId(v48, 1, add_explicit + 1);
      return CICleanUpReset(v48, HIDWORD(v46));
    }

    else
    {
      v13 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v14 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(v4 + 1192), 0x40000000, v13 + 1);
      v44 = HIDWORD(v14);
      v45 = v14;
      v43 = __PAIR64__(v15, v16);
      v17 = threadData[9 * v14 + 1] + 320 * HIDWORD(v14);
      *(v17 + 216) = 0;
      v18 = *(v17 + 312);
      v19 = *(v17 + 224);
      if (v19)
      {
        v19(*(v17 + 288));
      }

      v42 = v45;
      v41 = v44;
      v40 = v43;
      if (_setjmp(v17))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          LOWORD(v33) = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v33, 2u);
        }

        *(v17 + 312) = v18;
        CIOnThreadCleanUpReset(v40);
        dropThreadId(v42, 1, v13 + 1);
        CICleanUpReset(v42, HIDWORD(v40));
      }

      else
      {
        v20 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
        v21 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v20 + 1);
        v38 = HIDWORD(v21);
        v39 = v21;
        v37 = __PAIR64__(v22, v23);
        v24 = threadData[9 * v21 + 1] + 320 * HIDWORD(v21);
        v25 = *(v24 + 312);
        v26 = *(v24 + 224);
        if (v26)
        {
          v26(*(v24 + 288));
        }

        v36 = v39;
        v35 = v38;
        v34 = v37;
        if (_setjmp(v24))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LOWORD(v33) = 0;
            _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v33, 2u);
          }

          *(v24 + 312) = v25;
          CIOnThreadCleanUpReset(v34);
          dropThreadId(v36, 1, v20 + 1);
          CICleanUpReset(v36, HIDWORD(v34));
        }

        else
        {
          v33 = 0;
          if (!db_get_obj_callback(*(v4 + 1192), v5, &v33, 1, si_docIdRewriteCallback, *(v4 + 2368), 0))
          {
            free(v33);
            atomic_store(v5, (v4 + 2080));
          }

          v27 = threadData[9 * v36 + 1] + 320 * v35;
          *(v27 + 312) = v25;
          v28 = *(v27 + 232);
          if (v28)
          {
            v28(*(v27 + 288));
          }

          dropThreadId(v36, 0, v20 + 1);
        }

        v29 = threadData[9 * v42 + 1] + 320 * v41;
        *(v29 + 312) = v18;
        v30 = *(v29 + 232);
        if (v30)
        {
          v30(*(v29 + 288));
        }

        dropThreadId(v42, 0, v13 + 1);
      }

      v31 = threadData[9 * v48 + 1] + 320 * v47;
      *(v31 + 312) = v11;
      v32 = *(v31 + 232);
      if (v32)
      {
        v32(*(v31 + 288));
      }

      return dropThreadId(v48, 0, add_explicit + 1);
    }
  }

  return result;
}

uint64_t _si_init_localized_terms(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  if (*(a1 + 6648))
  {
    v38 = __si_assert_copy_extra_661(-1);
    v39 = v38;
    v40 = "";
    if (v38)
    {
      v40 = v38;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 34518, "!ref->uniqueLocalizedTerms", v40);
    free(v39);
    if (__valid_fs(-1))
    {
      v41 = 2989;
    }

    else
    {
      v41 = 3072;
    }

    *v41 = -559038737;
    abort();
  }

  v2 = fd_create_protected(*(a1 + 32), "tmp.spotlight.loc", 0, 0);
  v3 = v2;
  v4 = v2;
  if (*(a1 + 2073))
  {
    v5 = 122;
  }

  else
  {
    v5 = 90;
  }

  v50 = 0;
  v6 = _fd_acquire_fd(v2, &v50);
  memset(&v49, 0, sizeof(v49));
  v7 = fstat(v6, &v49);
  st_size = v49.st_size;
  _fd_release_fd(v3, v6, 0, v50);
  if (v7 == -1 || st_size == 0)
  {
    fd_release(v4);
    v4 = 0;
  }

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 0x40000000;
  v48[2] = ___si_init_localized_terms_block_invoke;
  v48[3] = &__block_descriptor_tmp_1142;
  v48[4] = a1;
  if (v4)
  {
    v54 = 0u;
    v55 = 0u;
    memset(v53, 0, sizeof(v53));
    store_stream_init(v53, v4, 0);
    if (!*&v53[16] && *(a1 + 1284) >= 84)
    {
      v10 = SICopyProperty(a1, @"database.localizedtermsuuid");
      if (v10)
      {
        v11 = v10;
        if (CFDataGetLength(v10) == 16 && store_stream_read_vint32_706(v53) == 13)
        {
          v57.location = 0;
          *buffer = 0;
          v52 = 0;
          v57.length = 16;
          CFDataGetBytes(v11, v57, buffer);
          store_stream_read_bytes_707(v53, (a1 + 6856), 0x10uLL);
          if (!uuid_compare(buffer, (a1 + 6856)))
          {
            updated = TermUpdateSetRestore(v53, 0, 0, 0, 1, v5, 0, 0, 0, 0, v48);
            *(a1 + 6648) = updated;
            if (updated)
            {
              v28 = *__error();
              v29 = _SILogForLogForCategory(0);
              v30 = 2 * (gSILogLevels[0] < 4);
              if (os_log_type_enabled(v29, v30))
              {
                WORD2(v47) = 0;
                _os_log_impl(&dword_1C278D000, v29, v30, "restored localized terms", &v47 + 4, 2u);
              }

              *__error() = v28;
              CFRelease(v11);
              store_stream_destroy(v53);
              fd_release(v4);
              v12 = 1;
              goto LABEL_21;
            }
          }
        }

        CFRelease(v11);
      }
    }

    store_stream_destroy(v53);
    fd_release(v4);
  }

  *(a1 + 6648) = TermUpdateSetCreate(0, 0, 0, 1, v5, 0, 0, v48);
  v12 = 0;
LABEL_21:
  memset(v53, 0, 24);
  pthread_rwlockattr_init(v53);
  pthread_rwlock_init((a1 + 6656), v53);
  pthread_rwlockattr_destroy(v53);
  v13 = *(a1 + 6648);
  *(v13 + 280) = a1 + 6656;
  *(v13 + 608) = getPropertyStringCallback;
  *(a1 + 6872) = 0;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v15 = setThreadIdAndInfo(*(a1 + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  *buffer = HIDWORD(v15);
  *v53 = v15;
  v47 = __PAIR64__(v16, v17);
  v18 = threadData[9 * v15 + 1] + 320 * HIDWORD(v15);
  *(v18 + 216) = 0;
  v19 = *(v18 + 312);
  v20 = *(v18 + 224);
  if (v20)
  {
    v20(*(v18 + 288));
  }

  v46 = *v53;
  v45 = *buffer;
  v44 = v47;
  if (_setjmp(v18))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v18 + 312) = v19;
    CIOnThreadCleanUpReset(v44);
    dropThreadId(v46, 1, add_explicit + 1);
    result = CICleanUpReset(v46, HIDWORD(v44));
    goto LABEL_58;
  }

  if (*(a1 + 1284) >= 84)
  {
    v22 = *(a1 + 1192);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 0x40000000;
    aBlock[2] = ___si_init_localized_terms_block_invoke_1146;
    aBlock[3] = &__block_descriptor_tmp_1147;
    aBlock[4] = a1;
    if (*v22 == 1685287992)
    {
      *(v22 + 968) = _Block_copy(aBlock);
    }

    if ((v12 & 1) == 0)
    {
      v23 = *(a1 + 1192);
      if (*v23 == 1685287992)
      {
        if (*(v23 + 968))
        {
          v24 = *(v23 + 912);
          if ((*(v23 + 804) & 0x14) == 0)
          {
            if (*(v24 + 56) >= 2u)
            {
              v26 = 1;
              do
              {
                (*(*(v23 + 968) + 16))();
                ++v26;
              }

              while (v26 < *(v24 + 56));
            }

            goto LABEL_55;
          }

          if (v24)
          {
            v25 = *(v24 + 216);
            if (v25 <= 842150449)
            {
              if (v25 == -572662307)
              {
                v31 = data_map_double_count(*(v23 + 912));
LABEL_52:
                v32 = v31 + 1;
                if (v31 + 1 >= 2)
                {
                  v33 = 2;
                  do
                  {
                    v34 = v33;
                    (*(*(v23 + 968) + 16))();
                    v33 = v34 + 1;
                  }

                  while (v32 > v34);
                }

                goto LABEL_55;
              }

              if (v25 != -270471200)
              {
                goto LABEL_55;
              }

LABEL_50:
              v31 = *(v24 + 224) - 1;
              goto LABEL_52;
            }

            if (v25 == 1684300900)
            {
              goto LABEL_50;
            }

            if (v25 == 842150450)
            {
              v31 = (*(v24 + 220) - 1);
              goto LABEL_52;
            }
          }
        }
      }
    }
  }

LABEL_55:
  v35 = threadData[9 * v46 + 1] + 320 * v45;
  *(v35 + 312) = v19;
  v36 = *(v35 + 232);
  if (v36)
  {
    v36(*(v35 + 288));
  }

  result = dropThreadId(v46, 0, add_explicit + 1);
LABEL_58:
  v37 = *MEMORY[0x1E69E9840];
  return result;
}