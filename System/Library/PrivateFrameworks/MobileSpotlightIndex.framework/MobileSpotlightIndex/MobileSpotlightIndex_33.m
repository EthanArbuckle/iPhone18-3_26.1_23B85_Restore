uint64_t fullVaccuumNeeded(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  itemCounts(*(a1 + 1392), &v16, &v14);
  itemCounts(*(a1 + 1384), &v15, &v13);
  v4 = v14;
  v5 = v16;
  if (a2)
  {
    if (3 * v16 >= 4 * v14 || (v6 = v15, v16 <= 5 * v15))
    {
LABEL_13:
      result = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v6 = v15;
    v7 = v16 < 2 * v14 && v16 > 4 * v15;
    if (!v7 && v15 + v16 >= 2 * (v13 + v14))
    {
      goto LABEL_13;
    }
  }

  v8 = *__error();
  v9 = _SILogForLogForCategory(0);
  v10 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v9, v10))
  {
    *buf = 134218752;
    v18 = v5;
    v19 = 2048;
    v20 = v6;
    v21 = 2048;
    v22 = v4;
    v23 = 2048;
    v24 = v13;
    _os_log_impl(&dword_1C278D000, v9, v10, "full vacuum needed - count: %lld, live count: %lld, delete count: %lld, live delete count: %lld", buf, 0x2Au);
  }

  *__error() = v8;
  result = 1;
LABEL_14:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t si_sync_index_vaccuum_if_needed(uint64_t result, char a2, void *a3, uint64_t a4, NSObject *a5)
{
  if (result)
  {
    v5 = result;
    if (*(result + 1192) && *(result + 1040) && *(result + 1048))
    {
      si_sync_ctx_create_with_defer_fd(result, 0);
      v11 = v10;
      *(v10 + 136) = a2;
      si_power_info_init(v10 + 104, a3, a4, a5);
      si_enqueue_barrier_with_qos(*(v5 + 1160), 9, si_sync_index_delayed_if_dirty0, v11);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void si_sync_index_delayed_if_dirty0(uint64_t a1, int a2)
{
  v3 = a1;
  if (!a2)
  {
    si_enqueue_barrier_with_qos(*(*a1 + 1048), 9, si_sync_index_delayed_if_dirty, a1);
    v3 = 0;
  }

  si_sync_ctx_free(v3, a2 != 0);
}

void si_sync_index_delayed_if_dirty(uint64_t a1, int a2)
{
  if (!a2)
  {
    v4 = malloc_type_calloc(1uLL, 0x460uLL, 0x1070040C187FD8AuLL);
    v5 = *a1;
    *(v4 + 131) = "void si_sync_index_delayed_if_dirty(si_sync_ctx *, Boolean)";
    *v4 = v5;
    v4[16] = 0;
    *(v4 + 1041) = 257;
    v4[1043] = 0;
    *(v4 + 274) = 1;
    v4[1100] = *(a1 + 136);
    v6 = *(a1 + 120);
    *(v4 + 1064) = *(a1 + 104);
    *(v4 + 1080) = v6;
    *(a1 + 104) = 0;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 112) = 0;
    v7 = *(v5 + 2360);
    if (v7)
    {
      v8 = *(v7 + 64);
      if (v8)
      {
        *(a1 + 104) = v8(*(v7 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 2631, "void si_sync_index_delayed_if_dirty(si_sync_ctx *, Boolean)");
      }
    }

    __strlcpy_chk();
    si_enqueue_barrier_with_qos(*(*a1 + 1160), 9, _SIContinueIssueMerge0, v4);
    v9 = _CIListsClean(*(*a1 + 1392), *(*a1 + 1384));
    v10 = *a1;
    if (v9)
    {
      v11 = *(v10 + 1192);
      if (v11)
      {
        if (!db_is_dirty(v11))
        {
          goto LABEL_10;
        }

        v10 = *a1;
      }
    }

    si_enqueue_work_with_qos(*(v10 + 1104), 9, si_sync_index_delayed0, a1);
    a1 = 0;
  }

LABEL_10:

  si_sync_ctx_free(a1, a2 != 0);
}

uint64_t *itemCounts(uint64_t *result, void *a2, void *a3)
{
  if (*(result + 2))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = *result;
    do
    {
      v7 = *(v6 + 8 * v3);
      v8 = atomic_load((v7 + 16));
      v4 += v8;
      LODWORD(v8) = *(v7 + 68);
      v9 = *(v7 + 80);
      if (v8 >= 2)
      {
        v8 = v8;
      }

      else
      {
        v8 = 0;
      }

      v6 = *result;
      v5 = v9 + v5 + v8 - *(*(*result + 8 * v3++) + 80);
    }

    while (v3 < *(result + 2));
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *a2 += v5;
  *a3 += v4;
  return result;
}

uint64_t reparent_parented_items(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v15[512] = *MEMORY[0x1E69E9840];
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = v1;
    v7 = *(v3 + 1192);
    do
    {
      v8 = *v6++;
      v14 = 0;
      if (!db_get_obj(v7, v8, &v14, 0))
      {
        v9 = v14;
        if (*(v14 + 3))
        {
          bzero(v15, 0x1000uLL);
          LiveIndex = si_getLiveIndex(*(v4 + 1384));
          v13 = 0;
          computePathFS(v4, v14, v15, &v13);
          si_updateIndexForPathRepair(v4, LiveIndex, v14, v15, v13);
          v9 = v14;
        }

        free(v9);
      }

      --v5;
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t reset_parented_items(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 1192);
  cs_orphan_oid = si_get_cs_orphan_oid(a3);
  if (a2)
  {
    v8 = cs_orphan_oid;
    do
    {
      v10 = *a1++;
      v9 = v10;
      v19 = 0;
      if (!db_get_obj(v6, v10, &v19, 0))
      {
        v11 = v19;
        if (*(v19 + 3) == v8 || (*(v19 + 3) = v8, (updated = db_update_obj(v6, v11, 9)) == 0))
        {
          *buf = v8;
          *&buf[8] = 2;
          LiveIndex = si_getLiveIndex(*(a3 + 1384));
          si_updateIndexForPathRepair(a3, LiveIndex, v19, buf, 2);
        }

        else
        {
          v13 = updated;
          v14 = *__error();
          v15 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *&buf[4] = "reset_parented_items";
            *&buf[12] = 1024;
            *&buf[14] = 36232;
            v21 = 1024;
            v22 = v13;
            v23 = 2048;
            v24 = v9;
            _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: updateErr err %d (%lld)", buf, 0x22u);
          }

          *__error() = v14;
        }

        free(v19);
      }

      --a2;
    }

    while (a2);
  }

  v17 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t gather_parented_items(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (a2[3])
  {
    SIValueSet<unsigned long long>::SIValueSetInsert((a3 + 16), *a2);
  }

  return 1;
}

void cf_release_scheduler(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (atomic_fetch_add((a2 + 96), 0xFFFFFFFF) == 1)
    {
      _si_scheduler_destroy(a2);
    }
  }
}

uint64_t query_node_unique_set_value_callback_retain(uint64_t a1, uint64_t a2)
{
  result = a2;
  atomic_fetch_add_explicit((a2 + 72), 1u, memory_order_relaxed);
  return result;
}

void updateUsedBites(int a1, CFNumberRef number, __CFBitVector *a3)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberLongType, &valuePtr);
  if (valuePtr <= 0xFE)
  {
    CFBitVectorSetBitAtIndex(a3, valuePtr, 1u);
  }
}

uint64_t store_stream_read_vint32_706(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ((*(a1 + 32) - v2) < 6)
  {
    v17 = 0;
    LODWORD(v5) = 0;
    __dst = 0;
    while (store_stream_read_bytes_707(a1, &__dst, 1uLL) == 1)
    {
      v5 = ((__dst & 0x7F) << v17) | v5;
      v17 += 7;
      if ((__dst & 0x80) == 0)
      {
        return v5;
      }
    }

    return 0;
  }

  else
  {
    v3 = *(a1 + 48);
    v4 = v2 + 1;
    v5 = *(v3 + v2);
    if ((*(v3 + v2) & 0x80000000) == 0)
    {
      v6 = v2 + 1;
LABEL_11:
      *(a1 + 40) = v6;
      return v5;
    }

    v6 = v2 + 2;
    v7 = *(v3 + v4);
    v8 = *(v3 + v4);
    if ((v7 & 0x80000000) == 0)
    {
      v5 = v5 & 0x7F | (v8 << 7);
      goto LABEL_11;
    }

    v9 = v2 + 3;
    v10 = *(v3 + v6);
    v11 = v10;
    if ((v10 & 0x80000000) == 0)
    {
      v12 = ((v8 & 0x7F) << 7) | (v10 << 14) | (v5 & 0x7F);
      v6 = v9;
LABEL_10:
      v5 = v12;
      goto LABEL_11;
    }

    v6 = v2 + 4;
    v13 = *(v3 + v9);
    v14 = *(v3 + v9);
    if ((v13 & 0x80000000) == 0)
    {
      v12 = ((v11 & 0x7F) << 14) | (v14 << 21) | ((v8 & 0x7F) << 7) | (v5 & 0x7F);
      goto LABEL_10;
    }

    v16 = *(v3 + v6);
    *(a1 + 40) = v2 + 5;
    if (v16 < 0)
    {
      return ((v14 & 0x7F) << 21) | (v16 << 28) | ((v11 & 0x7F) << 14) | ((v8 & 0x7F) << 7) | (v5 & 0x7F);
    }

    else
    {
      v5 = 0;
      *(a1 + 16) = 22;
    }
  }

  return v5;
}

uint64_t store_stream_read_bytes_707(unsigned int *a1, char *__dst, size_t __n)
{
  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  if (v7 + __n > v6)
  {
    v8 = 0;
    v11 = *(a1 + 5);
    while (1)
    {
      v9 = v6 - v11;
      if (v6 != v11)
      {
        memcpy(__dst, (*(a1 + 6) + v11), v6 - v11);
        v6 = *(a1 + 4);
        *(a1 + 5) += v9;
      }

      v12 = prot_pread(*a1, *(a1 + 6), v6, *(a1 + 3));
      if (v12 == -1)
      {
        break;
      }

      v6 = v12;
      *(a1 + 4) = v12;
      *(a1 + 5) = 0;
      *(a1 + 3) += v12;
      if (!v12)
      {
        return v9 + v8;
      }

      v7 = 0;
      v11 = 0;
      __dst += v9;
      __n -= v9;
      v8 += v9;
      if (__n <= v12)
      {
        goto LABEL_3;
      }
    }

    v9 = 0;
    a1[4] = *__error();
  }

  else
  {
    v8 = 0;
LABEL_3:
    memcpy(__dst, (*(a1 + 6) + v7), __n);
    *(a1 + 5) += __n;
    v9 = __n;
  }

  return v9 + v8;
}

void ___si_init_localized_terms_block_invoke_1146(uint64_t a1, unsigned int a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(a1 + 32);
    bzero(v37, 0x400uLL);
    RawLocalizedUniquedField = getRawLocalizedUniquedField(*(v4 + 1192), a2, v37, 0);
    if (RawLocalizedUniquedField)
    {
      v6 = RawLocalizedUniquedField;
      v7 = *MEMORY[0x1E695E480];
      v8 = _decodeSDBField(*(v4 + 1192), v6, v6 + 13, 0, 0, 0, 0, *MEMORY[0x1E695E480]);
      if (v8)
      {
        v9 = v8;
        v10 = *__error();
        v11 = _SILogForLogForCategory(0);
        v12 = 2 * (gSILogLevels[0] < 4);
        if (os_log_type_enabled(v11, v12))
        {
          *buf = 67109378;
          *v34 = a2;
          *&v34[4] = 2112;
          *&v34[6] = v9;
          _os_log_impl(&dword_1C278D000, v11, v12, "new loc field(%d): %@", buf, 0x12u);
        }

        *__error() = v10;
        v13 = CFGetTypeID(v9);
        if (v13 == CFDictionaryGetTypeID() && CFDictionaryGetCount(v9))
        {
          Mutable = CFDictionaryCreateMutable(v7, 0, 0, MEMORY[0x1E695E9E8]);
          field_name_for_id = db_get_field_name_for_id(*(v4 + 1192), *(v6 + 1));
          if (field_name_for_id)
          {
            id_for_field = db_get_id_for_field(*(v4 + 1192), field_name_for_id);
            CFDictionaryAddValue(Mutable, (id_for_field | ((*(v6 + 1) & 0x100) << 23)), v9);
            TermUpdateSetAddDocumentInfo(*(v4 + 6648), (*(v4 + 6584) >> 25) & 3, a2, 0, Mutable, 0, 0, 5u, 0);
            CFRelease(Mutable);
          }

          else
          {
            si_analytics_log_8973(0, v16, v17, v18, v19, v20, v21, v22, *(v6 + 1));
            v24 = *__error();
            v25 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v32 = *(v6 + 1);
              *buf = 136315650;
              *v34 = "si_handle_new_unique_localized_field";
              *&v34[8] = 1024;
              *&v34[10] = 541;
              v35 = 1024;
              v36 = v32;
              _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: No field name for field id %d", buf, 0x18u);
            }

            *__error() = v24;
          }
        }

        CFRelease(v9);
      }

      if (v6 != v37)
      {
        free(v6);
      }
    }
  }

  v26 = *(a1 + 32);
  if ((*(v26 + 6872) & 1) == 0)
  {
    uuid_generate_random((v26 + 6856));
    v27 = CFDataCreate(0, (*(a1 + 32) + 6856), 16);
    SISetProperty(*(a1 + 32), @"database.localizedtermsuuid", v27);
    CFRelease(v27);
    v28 = *__error();
    v29 = _SILogForLogForCategory(0);
    v30 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v29, v30))
    {
      *v37 = 67109120;
      v38 = a2;
      _os_log_impl(&dword_1C278D000, v29, v30, "new loc term %d", v37, 8u);
    }

    *__error() = v28;
    *(*(a1 + 32) + 6872) = 1;
  }

  v31 = *MEMORY[0x1E69E9840];
}

dispatch_semaphore_t freeQueueSetup()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  freeQueue = dispatch_queue_create("com.apple.spotlight.index.free", v0);
  result = dispatch_semaphore_create(16);
  freeSemaphore = result;
  return result;
}

void __registerForGameModeChange_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  sGameModeNotificationQueue = dispatch_queue_create("com.apple.spotlight.CoreSpotlight.gm", v0);
  notify_register_check("com.apple.system.console_mode_changed", &registerForGameModeChange__gameModeNotifyToken);
  notify_register_dispatch("com.apple.system.console_mode_changed", &registerForGameModeChange__gameModeNotifyToken, sGameModeNotificationQueue, &__block_literal_global_1137);
  v1 = sGameModeNotificationQueue;

  dispatch_async(v1, &__block_literal_global_1140);
}

uint64_t checkGameModeAndSuspendResume(int a1)
{
  state64 = 0;
  notify_get_state(a1, &state64);
  pthread_mutex_lock(&sGameModeMutex);
  sInGameMode = state64 != 0;
  if (!state64)
  {
    pthread_cond_broadcast(&sGameModeCond);
  }

  return pthread_mutex_unlock(&sGameModeMutex);
}

uint64_t __si_set_vector_store_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  a2[1798] = v3;
  v4 = a2[614];
  if (v4)
  {
    v4[26] = v3;
    v5 = v4[19];
    v6 = v4 + 20;
    if (v5 != v4 + 20)
    {
      do
      {
        (*(*v5[5] + 288))(v5[5], v3);
        v7 = v5[1];
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = v5[2];
            v9 = *v8 == v5;
            v5 = v8;
          }

          while (!v9);
        }

        v5 = v8;
      }

      while (v8 != v6);
    }
  }

  v10 = a2[1799];
  if (v10)
  {
    TermUpdateSetSetVectorStore(*(v10 + 80), v3);
  }

  v11 = a2[1800];
  if (v11)
  {
    TermUpdateSetSetVectorStore(*(v11 + 80), v3);
  }

  return 1;
}

void _sdb_cache_flush_callback(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(0);
    v6 = 2 * (gSILogLevels[0] < 4);
    v7 = os_log_type_enabled(v5, v6);
    if (a2)
    {
      if (v7)
      {
        v9 = 67109120;
        v10 = a2;
        _os_log_impl(&dword_1C278D000, v5, v6, "_sdb_cache_flush_callback: resuming watchdog (%d)", &v9, 8u);
      }

      *__error() = v4;
      si_indexingWatchdogResume(*(a1 + 64));
    }

    else
    {
      if (v7)
      {
        v9 = 67109120;
        v10 = 0;
        _os_log_impl(&dword_1C278D000, v5, v6, "_sdb_cache_flush_callback: suspending watchdog (%d)", &v9, 8u);
      }

      *__error() = v4;
      si_indexingWatchdogSuspend(*(a1 + 64));
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t _onceInitTuning()
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 1;
  *v4 = 0x1900000006;
  v2 = 4;
  sysctl(v4, 2u, &v3, &v2, 0, 0);
  gCPUCount = v3;
  result = pthread_mutex_unlock(&_onceInitTuning_prefLock);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

int *rename_transitional_state(int a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (renameatx_np(a1, "tmp.indexState", a1, "indexState", 0x10u))
  {
    v2 = *__error();
    v3 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v8 = *__error();
      v10 = 136316162;
      v11 = "rename_transitional_state";
      v12 = 1024;
      v13 = 12011;
      v14 = 1024;
      v15 = v8;
      v16 = 2080;
      v17 = "tmp.indexState";
      v18 = 2080;
      v19 = "indexState";
      _os_log_error_impl(&dword_1C278D000, v3, OS_LOG_TYPE_ERROR, "%s:%d: errno:%d %s -> %s", &v10, 0x2Cu);
    }

    *__error() = v2;
  }

  result = renameatx_np(a1, "tmp.spotlight.state.transition", a1, "tmp.spotlight.state", 0x10u);
  if (result)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = *__error();
      v10 = 136316162;
      v11 = "rename_transitional_state";
      v12 = 1024;
      v13 = 12015;
      v14 = 1024;
      v15 = v9;
      v16 = 2080;
      v17 = "tmp.spotlight.state.transition";
      v18 = 2080;
      v19 = "tmp.spotlight.state";
      _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: errno:%d %s -> %s", &v10, 0x2Cu);
    }

    result = __error();
    *result = v5;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t check_touch_file(uint64_t result, const char *a2, uint64_t a3)
{
  if ((result & 0x80000000) == 0)
  {
    if (a2)
    {
      result = openat(result, a2, 0x8000);
      if (result != -1)
      {
        v4 = result;
        (*(a3 + 16))(a3);

        return close(v4);
      }
    }
  }

  return result;
}

uint64_t si_read_index_state(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v42 = *MEMORY[0x1E69E9840];
  v8 = x_openat(*(v1 + 32), "tmp.spotlight.state", 0, v3, v4, v5, v6, v7, v30);
  if (v8 == -1)
  {
    v12 = *__error();
    v13 = *__error();
    v14 = _SILogForLogForCategory(11);
    v15 = v14;
    if (v12 == 2)
    {
      v25 = 2 * (dword_1EBF46AF8 < 4);
      if (os_log_type_enabled(v14, v25))
      {
        __src[0] = 134218240;
        *&__src[1] = v2;
        LOWORD(__src[3]) = 1024;
        *(&__src[3] + 2) = 2;
        _os_log_impl(&dword_1C278D000, v15, v25, "%p open index state error:%d", __src, 0x12u);
      }

      *__error() = v13;
      v12 = 2;
    }

    else if (v12 == 92)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __src[0] = 136316162;
        *&__src[1] = "si_read_index_state";
        LOWORD(__src[3]) = 1024;
        *(&__src[3] + 2) = 34679;
        HIWORD(__src[4]) = 2048;
        *&__src[5] = v2;
        LOWORD(__src[7]) = 1024;
        *(&__src[7] + 2) = 92;
        HIWORD(__src[8]) = 2080;
        *&__src[9] = strerror(92);
        _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: %p open index state error:%d (%s); removing the file.", __src, 0x2Cu);
      }

      *__error() = v13;
      if (unlinkat(*(v2 + 32), "tmp.spotlight.state", 0))
      {
        v16 = *__error();
        v17 = _SILogForLogForCategory(11);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v28 = __error();
          v29 = strerror(*v28);
          __src[0] = 136315650;
          *&__src[1] = "si_read_index_state";
          LOWORD(__src[3]) = 1024;
          *(&__src[3] + 2) = 34681;
          HIWORD(__src[4]) = 2080;
          *&__src[5] = v29;
          _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: Error removing tmp.spotlight.state: %s\n", __src, 0x1Cu);
        }

        *__error() = v16;
      }

      v12 = 92;
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __src[0] = 136315906;
        *&__src[1] = "si_read_index_state";
        LOWORD(__src[3]) = 1024;
        *(&__src[3] + 2) = 34686;
        HIWORD(__src[4]) = 2048;
        *&__src[5] = v2;
        LOWORD(__src[7]) = 1024;
        *(&__src[7] + 2) = v12;
        _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: %p open index state error:%d", __src, 0x22u);
      }

      *__error() = v13;
    }
  }

  else
  {
    v9 = v8;
    if (*(v2 + 2072) == 1)
    {
      fcntl(v8, 64, 3);
    }

    bzero(__src, 0x1000uLL);
    v10 = prot_pread(v9, __src, 0x1000uLL, 0);
    v11 = v10;
    if (v10 == -1)
    {
      v12 = *__error();
    }

    else
    {
      if (v10 == 4096)
      {
        close(v9);
LABEL_21:
        if (LOBYTE(__src[0]) == 1)
        {
          memcpy((v2 + 2480), __src, 0x1000uLL);
          v20 = *__error();
          v21 = _SILogForLogForCategory(11);
          v22 = 2 * (dword_1EBF46AF8 < 4);
          if (os_log_type_enabled(v21, v22))
          {
            if ((BYTE1(__src[0]) - 1) > 3u)
            {
              v23 = "unknown";
            }

            else
            {
              v23 = off_1E8192938[(BYTE1(__src[0]) - 1)];
            }

            *buf = 134218242;
            v32 = v2;
            v33 = 2080;
            *v34 = v23;
            _os_log_impl(&dword_1C278D000, v21, v22, "%p read state:%s", buf, 0x16u);
          }
        }

        else
        {
          v20 = *__error();
          v24 = _SILogForLogForCategory(11);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v32 = "si_read_index_state";
            v33 = 1024;
            *v34 = 34706;
            *&v34[4] = 2048;
            *&v34[6] = v2;
            v35 = 1024;
            v36 = LOBYTE(__src[0]);
            _os_log_error_impl(&dword_1C278D000, v24, OS_LOG_TYPE_ERROR, "%s:%d: %p invalid version:%d", buf, 0x22u);
          }
        }

        *__error() = v20;
        _si_dump_index_state(v2, 4);
        v12 = 0;
        goto LABEL_36;
      }

      v12 = 22;
    }

    v18 = *__error();
    v19 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v32 = "si_read_index_state";
      v33 = 1024;
      *v34 = 34699;
      *&v34[4] = 2048;
      *&v34[6] = v2;
      v35 = 1024;
      v36 = v9;
      v37 = 2048;
      v38 = v11;
      v39 = 1024;
      v40 = v12;
      _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: %p read index state fd:%d rs:%ld error:%d", buf, 0x32u);
    }

    *__error() = v18;
    close(v9);
    if (!v12)
    {
      goto LABEL_21;
    }
  }

LABEL_36:
  v26 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t _SIOpenIndexFilesWithState(uint64_t a1, int a2, unsigned int a3, int a4, char a5, _BYTE *a6, void *a7, uint64_t a8, _DWORD *a9, char a10)
{
  v448 = *MEMORY[0x1E69E9840];
  *a6 = 0;
  *a7 = 0;
  v432[0] = MEMORY[0x1E69E9820];
  v432[1] = 0x40000000;
  v432[2] = ___SIOpenIndexFilesWithState_block_invoke;
  v432[3] = &__block_descriptor_tmp_951;
  v432[4] = a1;
  v13 = *(a1 + 6944);
  v14 = *(a1 + 2484);
  v402 = *(a1 + 2486);
  v431 = 0;
  v430 = 0;
  v428 = 0;
  v427 = 0;
  cf = 0;
  if (a4)
  {
    v15 = 48;
  }

  else
  {
    v15 = 16;
  }

  if (a3)
  {
    v15 |= 0x40u;
  }

  if (*(a1 + 2073))
  {
    v15 |= 0x400u;
  }

  v16 = v13 == 0;
  if (v13)
  {
    v17 = 0;
  }

  else
  {
    v17 = v14;
  }

  v18 = *(a1 + 6584);
  v19 = (v18 >> 13) & 0x800 | v15;
  if (!v16)
  {
    v19 |= 0x1000u;
  }

  v20 = v19 | ~(v18 >> 7) & 0x8000;
  if (a10)
  {
    v21 = v20 | 0x2000;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(a1 + 2072);
  if (*(a1 + 2072))
  {
    v23 = 111;
  }

  else
  {
    v23 = 95;
  }

  if (*(a1 + 2072))
  {
    v24 = 114;
  }

  else
  {
    v24 = 102;
  }

  if (*(a1 + 2072))
  {
    v25 = v21 | 0x100;
  }

  else
  {
    v25 = v21;
  }

  v26 = CIMetaInfoRead(a1 + 1200, v22);
  if (v26)
  {
    v27 = v26;
    v28 = *__error();
    v29 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *__str = 136315906;
      *&__str[4] = "_SIOpenIndexFilesWithState";
      *&__str[12] = 1024;
      *&__str[14] = 11203;
      *&__str[18] = 2048;
      *&__str[20] = a1;
      *&__str[28] = 1024;
      *&__str[30] = v27;
      _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: %p CIMetaInfoRead err:%d", __str, 0x22u);
    }

    *__error() = v28;
    bzero(__str, 0x400uLL);
    snprintf(__str, 0x400uLL, "CIMetaInfoRead failed %d", v27);
LABEL_29:
    __si_set_error_str(1, "%s:%u: %s", v30, v31, v32, v33, v34, v35, "SpotlightIndex.c");
    goto LABEL_30;
  }

  v394 = v22;
  v403 = v24;
  v401 = v23;
  v404 = a3;
  v391 = a7;
  v392 = v25;
  v396 = v17;
  v393 = v14;
  if (*(a1 + 1244) > 0x31u || *(a1 + 1252) > 0x31u)
  {
    v38 = *__error();
    v39 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v215 = *(a1 + 1244);
      v216 = *(a1 + 1252);
      *__str = 136316162;
      *&__str[4] = "_SIOpenIndexFilesWithState";
      *&__str[12] = 1024;
      *&__str[14] = 11210;
      *&__str[18] = 2048;
      *&__str[20] = a1;
      *&__str[28] = 1024;
      *&__str[30] = v215;
      *&__str[34] = 1024;
      *&__str[36] = v216;
      _os_log_error_impl(&dword_1C278D000, v39, OS_LOG_TYPE_ERROR, "%s:%d: %p Too many live indexes %d/%d", __str, 0x28u);
    }

    *__error() = v38;
    bzero(__str, 0x400uLL);
    snprintf(__str, 0x400uLL, "too many live indexes %d, %d", *(a1 + 1244), *(a1 + 1252));
    __si_set_error_str(1, "%s:%u: %s", v40, v41, v42, v43, v44, v45, "SpotlightIndex.c");
    v36 = -1;
    goto LABEL_42;
  }

  v48 = 0;
  if (v22)
  {
    v49 = 75777;
  }

  else
  {
    v49 = 10241;
  }

  v395 = v49;
  v390 = (a1 + 2408);
  v50 = a1 + 2488 + v14;
  v51 = v23;
  while (1)
  {
    v52 = *(a1 + 2482);
    if (!*(a1 + 2482))
    {
      v52 = *(a1 + 2481);
    }

    v53 = *(a1 + 32);
    v439 = 0;
    bzero(&__str[2], 0x3FEuLL);
    strcpy(__str, ".");
    strlcat(__str, "store.db", 0x400uLL);
    v59 = 0;
    v426 = 0;
    if (v52 > 2)
    {
      break;
    }

    if (v52 == 1)
    {
      v62 = *__error();
      v63 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v63, OS_LOG_TYPE_DEFAULT, "Restore sdb from shadow", buf, 2u);
      }

      *__error() = v62;
      updated = update_db_header(v53);
      if ((updated & 0xFFFFFFFD) != 0)
      {
        v65 = updated;
        v66 = *__error();
        v67 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v441) = v65;
          _os_log_impl(&dword_1C278D000, v67, OS_LOG_TYPE_DEFAULT, "Failed to update header err:%d", buf, 8u);
        }
      }

      else
      {
        v68 = copyFileFallback(v53, "store.db", v53, __str, &v439, 1, 1);
        v69 = *__error();
        if (v68)
        {
          v70 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C278D000, v70, OS_LOG_TYPE_DEFAULT, "Restore data_map from shadow", buf, 2u);
          }

          *__error() = v69;
          bzero(buf, 0x400uLL);
          snprintf(buf, 0x400uLL, "%sStr-%d.map", "db", 1);
          v435 = 0u;
          v437 = 0u;
          v438 = 0u;
          v436 = 0u;
          v433 = v53;
          v434 = buf;
          *&v435 = 0x28400000002;
          v71 = data_map_init_with_ctx(&v433);
          if (v71)
          {
            v72 = v71;
            data_map_commit(v71);
            data_map_destroy(v72);
          }

          bzero(buf, 0x400uLL);
          snprintf(buf, 0x400uLL, "%sStr-%d.map", "db", 2);
          v435 = 0u;
          v437 = 0u;
          v438 = 0u;
          v436 = 0u;
          v433 = v53;
          v434 = buf;
          DWORD1(v435) = 132;
          v73 = data_map_init_with_ctx(&v433);
          v51 = v23;
          if (v73)
          {
            v74 = v73;
            data_map_commit(v73);
            data_map_destroy(v74);
          }

          bzero(buf, 0x400uLL);
          snprintf(buf, 0x400uLL, "%sStr-%d.map", "db", 3);
          v435 = 0u;
          v437 = 0u;
          v438 = 0u;
          v436 = 0u;
          v433 = v53;
          v434 = buf;
          DWORD1(v435) = 132;
          v75 = data_map_init_with_ctx(&v433);
          if (v75)
          {
            v76 = v75;
            data_map_commit(v75);
            data_map_destroy(v76);
          }

          bzero(buf, 0x400uLL);
          snprintf(buf, 0x400uLL, "%sStr-%d.map", "db", 4);
          v435 = 0u;
          v437 = 0u;
          v438 = 0u;
          v436 = 0u;
          v433 = v53;
          v434 = buf;
          DWORD1(v435) = 644;
          v77 = data_map_init_with_ctx(&v433);
          if (v77)
          {
            v78 = v77;
            data_map_commit(v77);
            data_map_destroy(v78);
          }

          bzero(buf, 0x400uLL);
          snprintf(buf, 0x400uLL, "%sStr-%d.map", "db", 5);
          v435 = 0u;
          v437 = 0u;
          v438 = 0u;
          v436 = 0u;
          v433 = v53;
          v434 = buf;
          DWORD1(v435) = 132;
          v79 = data_map_init_with_ctx(&v433);
          if (v79)
          {
            v80 = v79;
            data_map_commit(v79);
            data_map_destroy(v80);
          }

          bzero(buf, 0x400uLL);
          snprintf(buf, 0x400uLL, "%sStr-%d.map", "db", 6);
          v435 = 0u;
          v437 = 0u;
          v438 = 0u;
          v436 = 0u;
          v433 = v53;
          v434 = buf;
          *&v435 = 0x2C400000004;
          v81 = data_map_init_with_ctx(&v433);
          if (v81)
          {
            v82 = v81;
            data_map_commit(v81);
            data_map_destroy(v82);
          }

          v61 = v53;
LABEL_62:
          v60 = update_db_header(v61);
          if (v60)
          {
            goto LABEL_71;
          }

          v59 = 4;
LABEL_64:
          v426 = v59;
          goto LABEL_100;
        }

        if (v69)
        {
          v65 = v69;
        }

        else
        {
          v65 = -1;
        }

        v66 = *__error();
        v83 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v441 = "db2_update_datastore_state";
          v442 = 1024;
          LODWORD(v443) = 6796;
          WORD2(v443) = 2080;
          *(&v443 + 6) = "store.db";
          HIWORD(v443) = 2080;
          v444 = __str;
          _os_log_error_impl(&dword_1C278D000, v83, OS_LOG_TYPE_ERROR, "%s:%d: Failed to copyfile for recovery %s->%s", buf, 0x26u);
        }
      }

      *__error() = v66;
      v51 = v23;
      goto LABEL_96;
    }

    if (v52 == 2)
    {
      v60 = update_db_header(v53);
      if (v60)
      {
        goto LABEL_71;
      }

      v59 = 2;
      goto LABEL_64;
    }

LABEL_100:
    v86 = v402;
    if (v59 != *(a1 + 2482))
    {
      *(a1 + 2482) = v59;
      v87 = si_write_index_state(a1, 0, 0, v54, v55, v56, v57, v58);
      if (v87)
      {
        v225 = v87;
        bzero(__str, 0x400uLL);
        snprintf(__str, 0x400uLL, "si_write_index_state failed %d, %d", v225, v59);
        __si_set_error_str(1, "%s:%u: %s", v226, v227, v228, v229, v230, v231, "SpotlightIndex.c");
        v232 = *__error();
        v233 = _SILogForLogForCategory(11);
        if (os_log_type_enabled(v233, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v441 = "_SIOpenIndexFilesWithState";
          v442 = 1024;
          LODWORD(v443) = 11235;
          WORD2(v443) = 2048;
          *(&v443 + 6) = a1;
          HIWORD(v443) = 1024;
          LODWORD(v444) = v225;
          _os_log_error_impl(&dword_1C278D000, v233, OS_LOG_TYPE_ERROR, "%s:%d: %p si_write_index_state err:%d", buf, 0x22u);
        }

        *__error() = v232;
        goto LABEL_255;
      }
    }

    v421 = 0u;
    v422 = 0u;
    v423 = 0;
    LODWORD(v421) = *(a1 + 32);
    *(&v421 + 1) = "store.db";
    *&v422 = __PAIR64__(*(a1 + 60), v395);
    if (SIIsAppleInternal_onceToken != -1)
    {
      dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
    }

    v88 = a1 + 2192;
    if (!SIIsAppleInternal_internal)
    {
      v88 = 0;
    }

    *(&v422 + 1) = v88;
    LOBYTE(v423) = 0;
    v424 = a1;
    v425 = _sdb_cache_flush_callback;
    if (*(a1 + 2481) != 2)
    {
      datastore_with_ctx = db2_get_datastore_with_ctx(&v421);
      *(a1 + 1192) = datastore_with_ctx;
      if (datastore_with_ctx)
      {
        *__str = 0;
        v183 = SICopyProperty(a1, @"kSINextIndexId");
        v184 = v403;
        if (v183)
        {
          v185 = v183;
          v186 = CFGetTypeID(v183);
          if (v186 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v185, kCFNumberSInt32Type, __str);
          }

          CFRelease(v185);
        }

        if (*__str > *(a1 + 1456))
        {
          *(a1 + 1456) = *__str;
        }

        db_datastore_set_bg_assertion_flag(*(a1 + 1192), *(a1 + 6944));
        if (v404)
        {
          if (*(a1 + 2483) == 2)
          {
            _si_dump_index_state(a1, 2);
            if (*(a1 + 2483) == 2)
            {
              v378 = __si_assert_copy_extra_661(-1);
              v369 = v378;
              v379 = "";
              if (v378)
              {
                v379 = v378;
              }

              __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 11520, "s->directory_state!=kSIIndexStateFastFlush", v379);
LABEL_369:
              free(v369);
              if (__valid_fs(-1))
              {
                v373 = 2989;
              }

              else
              {
                v373 = 3072;
              }

              *v373 = -559038737;
              abort();
            }
          }

          v187 = *__error();
          v188 = _SILogForLogForCategory(6);
          v189 = 2 * (dword_1EBF46AE4 < 4);
          if (os_log_type_enabled(v188, v189))
          {
            v190 = *(a1 + 2483);
            v191 = *(a1 + 2481);
            if (*(a1 + 2483))
            {
              v192 = *(a1 + 2483);
            }

            else
            {
              v192 = *(a1 + 2481);
            }

            *__str = 67109632;
            *&__str[4] = v192;
            *&__str[8] = 1024;
            *&__str[10] = v190;
            *&__str[14] = 1024;
            *&__str[16] = v191;
            _os_log_impl(&dword_1C278D000, v188, v189, "Update reverse store with state: %d (%d, %d)", __str, 0x14u);
          }

          *__error() = v187;
          v193 = *(a1 + 2483);
          if (!*(a1 + 2483))
          {
            v193 = *(a1 + 2481);
          }

          v194 = reverseStoreUpdateState(*(a1 + 32), v193, &v426);
          v195 = v194;
          v184 = v403;
          if (v194 == 2 && v394)
          {
            v196 = *__error();
            v197 = _SILogForLogForCategory(6);
            if (os_log_type_enabled(v197, OS_LOG_TYPE_ERROR))
            {
              *__str = 136315394;
              *&__str[4] = "_SIOpenIndexFilesWithState";
              *&__str[12] = 1024;
              *&__str[14] = 11527;
              _os_log_error_impl(&dword_1C278D000, v197, OS_LOG_TYPE_ERROR, "%s:%d: Ignoring missing path store", __str, 0x12u);
            }

            *__error() = v196;
            *(a1 + 6624) = createReverseStore(*(a1 + 32), "", v432);
            LODWORD(v86) = v402;
            goto LABEL_277;
          }

          if (v194)
          {
            v234 = *__error();
            v235 = _SILogForLogForCategory(11);
            if (os_log_type_enabled(v235, OS_LOG_TYPE_ERROR))
            {
              *__str = 136315650;
              *&__str[4] = "_SIOpenIndexFilesWithState";
              *&__str[12] = 1024;
              *&__str[14] = 11532;
              *&__str[18] = 1024;
              *&__str[20] = v195;
              _os_log_error_impl(&dword_1C278D000, v235, OS_LOG_TYPE_ERROR, "%s:%d: reverseStoreUpdateState err:%d", __str, 0x18u);
            }

            *__error() = v234;
            bzero(__str, 0x400uLL);
            snprintf(__str, 0x400uLL, "reverseStoreUpdateState err %d", v195);
            goto LABEL_254;
          }

          v249 = v426;
          if (v426 != *(a1 + 2483))
          {
            v250 = *__error();
            v251 = _SILogForLogForCategory(6);
            v252 = 2 * (dword_1EBF46AE4 < 4);
            if (os_log_type_enabled(v251, v252))
            {
              *__str = 67109120;
              *&__str[4] = v249;
              _os_log_impl(&dword_1C278D000, v251, v252, "Got reverse store with state: %d", __str, 8u);
            }

            *__error() = v250;
            *(a1 + 2483) = v249;
            v258 = si_write_index_state(a1, 0, 0, v253, v254, v255, v256, v257);
            if (v258)
            {
              v259 = v258;
              v260 = *__error();
              v261 = _SILogForLogForCategory(11);
              if (os_log_type_enabled(v261, OS_LOG_TYPE_ERROR))
              {
                *__str = 136315650;
                *&__str[4] = "_SIOpenIndexFilesWithState";
                *&__str[12] = 1024;
                *&__str[14] = 11543;
                *&__str[18] = 1024;
                *&__str[20] = v259;
                _os_log_error_impl(&dword_1C278D000, v261, OS_LOG_TYPE_ERROR, "%s:%d: si_write_index_state err:%d", __str, 0x18u);
              }

              *__error() = v260;
              bzero(__str, 0x400uLL);
              snprintf(__str, 0x400uLL, "si_write_index_state err %d", v259);
              goto LABEL_29;
            }
          }

          v433 = 0;
          v262 = check_crash_state(*(a1 + 32), 0, a5, &v433, 2);
          bzero(__str, 0x400uLL);
          v263 = *__error();
          v264 = _SILogForLogForCategory(0);
          v265 = 2 * (gSILogLevels[0] < 4);
          if (os_log_type_enabled(v264, v265))
          {
            v266 = v433;
            v267 = fcntl(*(a1 + 32), 50, __str);
            if (__str[0])
            {
              v268 = v267 < 0;
            }

            else
            {
              v268 = 1;
            }

            if (v268)
            {
              v269 = 0;
            }

            else
            {
              v269 = __str;
            }

            *buf = 134218242;
            v441 = v266;
            v442 = 2080;
            *&v443 = v269;
            _os_log_impl(&dword_1C278D000, v264, v265, "rs last_crash_delta: %ld for %s", buf, 0x16u);
          }

          *__error() = v263;
          v270 = openReverseStore(*(a1 + 32), v262, 0, 0, *(a1 + 6592), &v427, v432);
          *(a1 + 6624) = v270;
          if (!v270)
          {
            *a9 |= 1u;
          }

          LODWORD(v86) = v402;
          v184 = v403;
        }

LABEL_277:
        v271 = v396;
        updateMetaInfoForState((a1 + 1200), v396, v86);
        if (v396)
        {
          v272 = 0;
          v273 = 0;
          while (1)
          {
            v274 = a1 + v272;
            v275 = *(a1 + v272 + 2488);
            if (!*(a1 + v272 + 2488))
            {
              v275 = *(a1 + 2481);
            }

            v276 = ContentIndexUpdateState(*(a1 + 32), *(a1 + 1284), v401, v184, v404, 0, v272, v275, &v426);
            if (v276)
            {
              v283 = v276;
              v284 = *__error();
              v285 = _SILogForLogForCategory(11);
              if (!os_log_type_enabled(v285, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_290;
              }

              *__str = 136315906;
              *&__str[4] = "_SIOpenIndexFilesWithState";
              *&__str[12] = 1024;
              *&__str[14] = 11584;
              *&__str[18] = 2048;
              *&__str[20] = a1;
              *&__str[28] = 1024;
              *&__str[30] = v283;
              v286 = "%s:%d: %p ContentIndexUpdateState err:%d";
              goto LABEL_381;
            }

            if (*(v274 + 2488) != v426)
            {
              *(v274 + 2488) = v426;
              v282 = si_write_index_state(a1, 0, 0, v277, v278, v279, v280, v281);
              if (v282)
              {
                break;
              }
            }

            ++v272;
            v271 = v396;
            v273 = v272 >= v396;
            v184 = v403;
            if (v396 == v272)
            {
              goto LABEL_285;
            }
          }

          v287 = v282;
          v284 = *__error();
          v285 = _SILogForLogForCategory(11);
          if (!os_log_type_enabled(v285, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_290;
          }

          *__str = 136315906;
          *&__str[4] = "_SIOpenIndexFilesWithState";
          *&__str[12] = 1024;
          *&__str[14] = 11591;
          *&__str[18] = 2048;
          *&__str[20] = a1;
          *&__str[28] = 1024;
          *&__str[30] = v287;
          v286 = "%s:%d: %p si_write_index_state err:%d";
LABEL_381:
          _os_log_error_impl(&dword_1C278D000, v285, OS_LOG_TYPE_ERROR, v286, __str, 0x22u);
LABEL_290:
          v271 = v396;
          v184 = v403;
          *__error() = v284;
          if (!v273 || v402 == 0)
          {
            goto LABEL_303;
          }
        }

        else
        {
LABEL_285:
          if (!v402)
          {
LABEL_303:
            v303 = *(a1 + 1456);
            v409[0] = MEMORY[0x1E69E9820];
            v409[1] = 0x40000000;
            v409[2] = ___SIOpenIndexFilesWithState_block_invoke_969;
            v409[3] = &__block_descriptor_tmp_970;
            v409[4] = a1;
            _si_next_index_id(a1, (v271 + v402), 0, 1);
            v408[0] = MEMORY[0x1E69E9820];
            v408[1] = 0x40000000;
            v408[2] = ___SIOpenIndexFilesWithState_block_invoke_2_971;
            v408[3] = &__block_descriptor_tmp_972;
            v408[4] = a1;
            v304 = *(a1 + 1392);
            v305 = *(a1 + 1384);
            v306 = *(a1 + 6592);
            v307 = *(a1 + 1192);
            if (v307)
            {
              vector_store = db_get_vector_store(v307);
            }

            else
            {
              vector_store = 0;
            }

            v36 = ContentIndexOpenBulk(a1 + 1200, a8, v304, v305, v392 | 6, v306, v390, v391, vector_store, v409, v408);
            if (v36 < 0)
            {
              *(a1 + 1456) = v303;
              v329 = *__error();
              if (v329)
              {
                v330 = v329;
              }

              else
              {
                v330 = -1;
              }

              bzero(__str, 0x400uLL);
              snprintf(__str, 0x400uLL, "ContentIndexOpenBulk err %d, %d", v36, v330);
              __si_set_error_str(0, "%s:%u: %s", v331, v332, v333, v334, v335, v336, "SpotlightIndex.c");
              goto LABEL_31;
            }

            v239 = *__error();
            v309 = _SILogForLogForCategory(11);
            v310 = 2 * (dword_1EBF46AF8 < 4);
            if (os_log_type_enabled(v309, v310))
            {
              v311 = *(a1 + 2408);
              *__str = 134218240;
              *&__str[4] = a1;
              *&__str[12] = 2048;
              *&__str[14] = v311;
              _os_log_impl(&dword_1C278D000, v309, v310, "opened index %p with recovery time is %llu)", __str, 0x16u);
            }

LABEL_309:
            v312 = v396;
            *__error() = v239;
            if ((a2 == 1) | v48 & 1)
            {
              v36 = 2;
            }

            if (!*(*(a1 + 1384) + 8))
            {
              v318 = *(a1 + 1392);
              v319 = *(*(*v318 + 8 * (*(v318 + 8) - 1)) + 40);
              v407[0] = MEMORY[0x1E69E9820];
              v407[1] = 0x40000000;
              v407[2] = ___SIOpenIndexFilesWithState_block_invoke_974;
              v407[3] = &__block_descriptor_tmp_975;
              v407[4] = a1;
              v320 = *(a1 + 32);
              v321 = *(*v318 + 8 * (*(v318 + 8) - 1));
              v322 = *(v321 + 68);
              v323 = *(v321 + 80);
              v324 = v322 >= 2 ? v322 : 0;
              v325 = v319 ? v319 + 1 : 2;
              v326 = *(a1 + 1284);
              v327 = *(a1 + 1192);
              v328 = v327 ? db_get_vector_store(v327) : 0;
              v406[0] = MEMORY[0x1E69E9820];
              v406[1] = 0x40000000;
              v406[2] = ___SIOpenIndexFilesWithState_block_invoke_2_976;
              v406[3] = &__block_descriptor_tmp_977;
              v406[4] = a1;
              New = ContentIndexCreateNew(v320, @"tmp.", v323 + v324, v325, v392, 1, v326, v328, v406, v407, *(a1 + 60));
              if (New)
              {
                v338 = New;
                *buf = 0;
                aBlock[0] = MEMORY[0x1E69E9820];
                aBlock[1] = 0x40000000;
                aBlock[2] = ___SIOpenIndexFilesWithState_block_invoke_3;
                aBlock[3] = &__block_descriptor_tmp_978;
                aBlock[4] = a1;
                aBlock[5] = New;
                ContentIndexSetDirtyCallback(New, aBlock);
                *(v338 + 15201) = 4;
                v447 = 0;
                v446 = 0u;
                memset(__str, 0, sizeof(__str));
                ContentIndexSyncIndex(v338, __str, buf);
                bzero(&__str[8], 0x208uLL);
                *__str = 0x6D6F76650A00;
                *&__str[8] = 2;
                __str[12] = 1;
                *&__str[28] = 1;
                ContentIndexListAppend(*(a1 + 1384), v338);
                v339 = *(a1 + 1392);
                v340 = *(a1 + 1384);
                si_clone_index_metadata_to_inflight(a1);
                __strlcpy_chk();
                v341 = si_openat_protected(*(a1 + 32), "tmp.movePlan", 1538, 3);
                pwrite(v341, __str, 0x210uLL, 0);
                fcntl(v341, 85);
                ContentIndexChangePrefix(v338);
                unlinkat(*(a1 + 32), "tmp.movePlan", 2048);
                close(v341);
              }
            }

            v342 = *(a1 + 1384);
            v343 = *(v342 + 8);
            v344 = v402;
            if (v343)
            {
              v345 = *(*(*v342 + 8 * (v343 - 1)) + 4);
              if (db_uses_stringmap(*(a1 + 1192)))
              {
                if ((v345 - 95) >= 4)
                {
                  if ((db_corespotlight_store(*(a1 + 1192)) & 1) == 0 && (v345 - 99) >= 2 && v345 != 102)
                  {
                    v384 = __si_assert_copy_extra_661(-1);
                    v369 = v384;
                    v385 = "";
                    if (v384)
                    {
                      v385 = v384;
                    }

                    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 11707, "db_corespotlight_store(newIndex->store) || version == 99 || version == 100 || version == 102", v385);
                    goto LABEL_369;
                  }
                }

                else
                {
                  ContentIndexListsApply(*(a1 + 1392), *(a1 + 1384), *(&off_1E8192958 + (v345 - 95)));
                }
              }

              v346 = *(*(**(a1 + 1384) + 8 * (*(*(a1 + 1384) + 8) - 1)) + 4);
              if (db_uses_stringmap(*(a1 + 1192)))
              {
                if ((v346 - 95) >= 4)
                {
                  if ((db_corespotlight_store(*(a1 + 1192)) & 1) == 0 && (v346 - 99) >= 2 && v346 != 102)
                  {
                    v386 = __si_assert_copy_extra_661(-1);
                    v369 = v386;
                    v387 = "";
                    if (v386)
                    {
                      v387 = v386;
                    }

                    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 11725, "db_corespotlight_store(newIndex->store) || version == 99 || version == 100 || version == 102", v387);
                    goto LABEL_369;
                  }
                }

                else
                {
                  ContentIndexListsApply(*(a1 + 1392), *(a1 + 1384), *(&off_1E8192978 + (v346 - 95)));
                }
              }
            }

            v347 = *(a1 + 2482) == 4;
            if (*(a1 + 2482) == 4 && v404)
            {
              v347 = *(a1 + 2483) == 4;
            }

            if (v36)
            {
              if (v36 == 2)
              {
                v348 = *(a1 + 1392);
                v349 = *(v348 + 8);
                if (v349)
                {
                  v350 = *v348;
                  do
                  {
                    v351 = *v350++;
                    *(v351 + 15201) = 4;
                    --v349;
                  }

                  while (v349);
                }

                v352 = *(a1 + 1384);
                v353 = *(v352 + 8);
                if (v353)
                {
                  v354 = *v352;
                  do
                  {
                    v355 = *v354++;
                    *(v355 + 15201) = 4;
                    --v353;
                  }

                  while (v353);
                }
              }
            }

            else
            {
              v356 = *(a1 + 1392);
              if (v396 != *(v356 + 8))
              {
                v380 = __si_assert_copy_extra_661(-1);
                v369 = v380;
                v381 = "";
                if (v380)
                {
                  v381 = v380;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 11744, "scanCount == newIndex->syncSet->indexCount", v381);
                goto LABEL_369;
              }

              v357 = *(a1 + 1384);
              v358 = (a1 + 2488);
              if (*(v357 + 8) != v402)
              {
                v382 = __si_assert_copy_extra_661(-1);
                v375 = v382;
                v383 = "";
                if (v382)
                {
                  v383 = v382;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 11745, "liveCount == newIndex->liveSet->indexCount", v383);
LABEL_376:
                free(v375);
                if (__valid_fs(-1))
                {
                  v377 = 2989;
                }

                else
                {
                  v377 = 3072;
                }

                *v377 = -559038737;
                abort();
              }

              if (v396)
              {
                v359 = *v356;
                do
                {
                  v361 = *v358++;
                  v360 = v361;
                  v347 = (v361 == 4) & v347;
                  v362 = *v359++;
                  *(v362 + 15201) = v360;
                  --v312;
                }

                while (v312);
              }

              if (v402)
              {
                v363 = *v357;
                v364 = (v393 + a1 + 2488);
                do
                {
                  v366 = *v364++;
                  v365 = v366;
                  v347 = (v366 == 4) & v347;
                  v367 = *v363++;
                  *(v367 + 15201) = v365;
                  --v344;
                }

                while (v344);
              }
            }

            if (v347 && *(a1 + 2481) != 4)
            {
              *(a1 + 2481) = 4;
              si_write_index_state(a1, 0, 0, v313, v314, v315, v316, v317);
            }

            goto LABEL_42;
          }
        }

        v288 = 0;
        v289 = v393 + a1 + 2488;
        while (1)
        {
          v290 = *(v289 + v288);
          if (!*(v289 + v288))
          {
            v290 = *(a1 + 2481);
          }

          v291 = ContentIndexUpdateState(*(a1 + 32), *(a1 + 1284), v401, v184, v404, 1, v288, v290, &v426);
          if (v291)
          {
            v298 = v291;
            v299 = *__error();
            v300 = _SILogForLogForCategory(11);
            if (!os_log_type_enabled(v300, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_302;
            }

            *__str = 136315906;
            *&__str[4] = "_SIOpenIndexFilesWithState";
            *&__str[12] = 1024;
            *&__str[14] = 11601;
            *&__str[18] = 2048;
            *&__str[20] = a1;
            *&__str[28] = 1024;
            *&__str[30] = v298;
            v301 = "%s:%d: %p ContentIndexUpdateState err:%d";
            goto LABEL_383;
          }

          if (*(v289 + v288) != v426)
          {
            *(v289 + v288) = v426;
            v297 = si_write_index_state(a1, 0, 0, v292, v293, v294, v295, v296);
            if (v297)
            {
              break;
            }
          }

          ++v288;
          v184 = v403;
          if (v402 == v288)
          {
            goto LABEL_303;
          }
        }

        v302 = v297;
        v299 = *__error();
        v300 = _SILogForLogForCategory(11);
        if (!os_log_type_enabled(v300, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_302;
        }

        *__str = 136315906;
        *&__str[4] = "_SIOpenIndexFilesWithState";
        *&__str[12] = 1024;
        *&__str[14] = 11608;
        *&__str[18] = 2048;
        *&__str[20] = a1;
        *&__str[28] = 1024;
        *&__str[30] = v302;
        v301 = "%s:%d: %p si_write_index_state err:%d";
LABEL_383:
        _os_log_error_impl(&dword_1C278D000, v300, OS_LOG_TYPE_ERROR, v301, __str, 0x22u);
LABEL_302:
        *__error() = v299;
        goto LABEL_303;
      }

LABEL_254:
      __si_set_error_str(1, "%s:%u: %s", v177, v178, v179, v180, v181, v182, "SpotlightIndex.c");
LABEL_255:
      v36 = -1;
      goto LABEL_31;
    }

    if (v48)
    {
      v368 = __si_assert_copy_extra_661(-1);
      v369 = v368;
      v370 = "";
      if (v368)
      {
        v370 = v368;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 11254, "!fast_flush_failed", v370);
      goto LABEL_369;
    }

    v89 = db2_get_datastore_with_ctx(&v421);
    *(a1 + 1192) = v89;
    if (!v89)
    {
      v101 = 0;
      goto LABEL_175;
    }

    *__str = 0;
    v90 = SICopyProperty(a1, @"kSINextIndexId");
    if (v90)
    {
      v91 = v90;
      v92 = CFGetTypeID(v90);
      if (v92 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v91, kCFNumberSInt32Type, __str);
      }

      CFRelease(v91);
    }

    if (*__str > *(a1 + 1456))
    {
      *(a1 + 1456) = *__str;
    }

    db_datastore_set_bg_assertion_flag(*(a1 + 1192), *(a1 + 6944));
    v99 = v396;
    if (*(a1 + 2482) == 2)
    {
      v100 = db_restore_dirty_chunk_info(*(a1 + 32), &v430, v93, v94, v95, v96, v97, v98);
      if (v100)
      {
        goto LABEL_117;
      }

      db_set_dirty_chunks(*(a1 + 1192), v430, v431, SHIDWORD(v431));
      v430 = 0;
    }

    v102 = x_openat(*(a1 + 32), "repair_dirstore", 0x20000000, v94, v95, v96, v97, v98, v388);
    if (v102 != -1)
    {
      v103 = v102;
      *__str = 0;
      pread(v102, __str, 4uLL, 0);
      close(v103);
      *a9 |= *__str;
    }

    if (!v404)
    {
      goto LABEL_130;
    }

    v104 = *(a1 + 2483);
    if (!*(a1 + 2483))
    {
      v104 = *(a1 + 2481);
    }

    v105 = reverseStoreUpdateState(*(a1 + 32), v104, &v426);
    v101 = v105;
    if (v105 == 2 && v394)
    {
      v111 = *__error();
      v112 = _SILogForLogForCategory(6);
      if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
      {
        *__str = 136315394;
        *&__str[4] = "_SIOpenIndexFilesWithState";
        *&__str[12] = 1024;
        *&__str[14] = 11309;
        _os_log_error_impl(&dword_1C278D000, v112, OS_LOG_TYPE_ERROR, "%s:%d: Ignoring missing path store", __str, 0x12u);
      }

      *__error() = v111;
      *(a1 + 6624) = createReverseStore(*(a1 + 32), "", v432);
      goto LABEL_130;
    }

    if (v105)
    {
      goto LABEL_175;
    }

    v139 = v426;
    if (v426 == *(a1 + 2483))
    {
      v389 = v50;
      goto LABEL_199;
    }

    *(a1 + 2483) = v426;
    v100 = si_write_index_state(a1, 0, 0, v106, v107, v108, v109, v110);
    if (v100)
    {
LABEL_117:
      v101 = v100;
LABEL_175:
      v36 = -1;
      goto LABEL_176;
    }

    v389 = v50;
    v139 = *(a1 + 2483);
LABEL_199:
    if (v139 == 2)
    {
      v166 = reverseStoreRestoreDirtyBitmap(*(a1 + 32), &v427);
      if (v166)
      {
        v101 = v166;
        v36 = -1;
        v50 = v389;
        goto LABEL_176;
      }
    }

    v433 = 0;
    v167 = check_crash_state(*(a1 + 32), 0, a5, &v433, 2);
    bzero(__str, 0x400uLL);
    v168 = *__error();
    v169 = _SILogForLogForCategory(0);
    v170 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v169, v170))
    {
      v171 = v433;
      v172 = fcntl(*(a1 + 32), 50, __str);
      if (__str[0])
      {
        v173 = v172 < 0;
      }

      else
      {
        v173 = 1;
      }

      *buf = 134218242;
      if (v173)
      {
        v174 = 0;
      }

      else
      {
        v174 = __str;
      }

      v441 = v171;
      v442 = 2080;
      *&v443 = v174;
      _os_log_impl(&dword_1C278D000, v169, v170, "rs last_crash_delta: %ld for %s", buf, 0x16u);
    }

    *__error() = v168;
    v175 = openReverseStore(*(a1 + 32), v167, 0, 0, *(a1 + 6592), &v427, v432);
    *(a1 + 6624) = v175;
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
      v175 = *(a1 + 6624);
    }

    v86 = v402;
    v99 = v396;
    v51 = v23;
    v50 = v389;
    v428 = 0;
    v427 = 0;
    if (!v175)
    {
      *a9 |= 1u;
    }

LABEL_130:
    v113 = v86;
    updateMetaInfoForState((a1 + 1200), v99, v86);
    if (v99)
    {
      v114 = 0;
      while (1)
      {
        v115 = a1 + v114;
        v116 = *(a1 + v114 + 2488);
        if (!*(a1 + v114 + 2488))
        {
          v116 = *(a1 + 2481);
        }

        v117 = ContentIndexUpdateState(*(a1 + 32), *(a1 + 1284), v51, v403, v404, 0, v114, v116, &v426);
        if (v117)
        {
          v101 = v117;
          v140 = *__error();
          v141 = _SILogForLogForCategory(11);
          if (!os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_174;
          }

          *__str = 136315906;
          *&__str[4] = "_SIOpenIndexFilesWithState";
          *&__str[12] = 1024;
          *&__str[14] = 11359;
          *&__str[18] = 2048;
          *&__str[20] = a1;
          *&__str[28] = 1024;
          *&__str[30] = v101;
          v142 = v141;
          v143 = "%s:%d: %p ContentIndexUpdateState err:%d";
          goto LABEL_173;
        }

        if (*(v115 + 2488) != v426)
        {
          *(v115 + 2488) = v426;
          v123 = si_write_index_state(a1, 0, 0, v118, v119, v120, v121, v122);
          if (v123)
          {
            break;
          }
        }

        if (v99 == ++v114)
        {
          goto LABEL_138;
        }
      }

      v101 = v123;
      v140 = *__error();
      v148 = _SILogForLogForCategory(11);
      if (!os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_174;
      }

      *__str = 136315906;
      *&__str[4] = "_SIOpenIndexFilesWithState";
      *&__str[12] = 1024;
      *&__str[14] = 11366;
      *&__str[18] = 2048;
      *&__str[20] = a1;
      *&__str[28] = 1024;
      *&__str[30] = v101;
      v142 = v148;
      v143 = "%s:%d: %p si_write_index_state err:%d";
      goto LABEL_173;
    }

LABEL_138:
    if (v113)
    {
      v124 = 0;
      while (1)
      {
        v125 = *(v50 + v124);
        if (!*(v50 + v124))
        {
          v125 = *(a1 + 2481);
        }

        v126 = ContentIndexUpdateState(*(a1 + 32), *(a1 + 1284), v51, v403, v404, 1, v124, v125, &v426);
        if (v126)
        {
          v101 = v126;
          v140 = *__error();
          v144 = _SILogForLogForCategory(11);
          if (!os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_174;
          }

          *__str = 136315906;
          *&__str[4] = "_SIOpenIndexFilesWithState";
          *&__str[12] = 1024;
          *&__str[14] = 11376;
          *&__str[18] = 2048;
          *&__str[20] = a1;
          *&__str[28] = 1024;
          *&__str[30] = v101;
          v142 = v144;
          v143 = "%s:%d: %p ContentIndexUpdateState err:%d";
          goto LABEL_173;
        }

        if (*(v50 + v124) != v426)
        {
          *(v50 + v124) = v426;
          v132 = si_write_index_state(a1, 0, 0, v127, v128, v129, v130, v131);
          if (v132)
          {
            break;
          }
        }

        if (v113 == ++v124)
        {
          goto LABEL_146;
        }
      }

      v101 = v132;
      v140 = *__error();
      v150 = _SILogForLogForCategory(11);
      if (!os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_174;
      }

      *__str = 136315906;
      *&__str[4] = "_SIOpenIndexFilesWithState";
      *&__str[12] = 1024;
      *&__str[14] = 11383;
      *&__str[18] = 2048;
      *&__str[20] = a1;
      *&__str[28] = 1024;
      *&__str[30] = v101;
      v142 = v150;
      v143 = "%s:%d: %p si_write_index_state err:%d";
LABEL_173:
      _os_log_error_impl(&dword_1C278D000, v142, OS_LOG_TYPE_ERROR, v143, __str, 0x22u);
LABEL_174:
      *__error() = v140;
      goto LABEL_175;
    }

LABEL_146:
    if (!*(a1 + 1232))
    {
      *(a1 + 1232) = 1;
    }

    v420 = 0;
    v413 = 0u;
    v414 = 0u;
    v415 = 0u;
    v416 = 0u;
    v417 = 0u;
    v418 = 0u;
    v419 = 0;
    v412 = 0;
    v133 = *(a1 + 1456);
    v411[0] = MEMORY[0x1E69E9820];
    v411[1] = 0x40000000;
    v411[2] = ___SIOpenIndexFilesWithState_block_invoke_958;
    v411[3] = &__block_descriptor_tmp_959;
    v411[4] = a1;
    _si_next_index_id(a1, (*(*(a1 + 1384) + 8) + *(*(a1 + 1392) + 8)), 0, 1);
    v410[0] = MEMORY[0x1E69E9820];
    v410[1] = 0x40000000;
    v410[2] = ___SIOpenIndexFilesWithState_block_invoke_2;
    v410[3] = &__block_descriptor_tmp_960;
    v410[4] = a1;
    v134 = *(a1 + 1392);
    v135 = *(a1 + 1384);
    v136 = *(a1 + 6592);
    v137 = *(a1 + 1192);
    if (v137)
    {
      v138 = db_get_vector_store(v137);
    }

    else
    {
      v138 = 0;
    }

    v36 = ContentIndexOpenBulk(a1 + 1200, &v413, v134, v135, v392 | 2, v136, &v412, &v420, v138, v411, v410);
    if ((v36 & 0x80000000) == 0)
    {
      v236 = v418;
      *(a8 + 64) = v417;
      *(a8 + 80) = v236;
      *(a8 + 96) = v419;
      v237 = v414;
      *a8 = v413;
      *(a8 + 16) = v237;
      v238 = v416;
      *(a8 + 32) = v415;
      *(a8 + 48) = v238;
      *v391 = v420;
      *v390 = v412;
      v239 = *__error();
      v240 = _SILogForLogForCategory(11);
      v241 = 2 * (dword_1EBF46AF8 < 4);
      if (os_log_type_enabled(v240, v241))
      {
        v242 = *(a1 + 2408);
        *__str = 134218240;
        *&__str[4] = a1;
        *&__str[12] = 2048;
        *&__str[14] = v242;
        _os_log_impl(&dword_1C278D000, v240, v241, "opened SIRef:%p from fast flush with recovery time %llu", __str, 0x16u);
      }

      v48 = 0;
      goto LABEL_309;
    }

    *(a1 + 1456) = v133;
    v145 = *__error();
    if (v145)
    {
      v101 = v145;
    }

    else
    {
      v101 = -1;
    }

    v146 = *__error();
    v147 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
    {
      *__str = 136315906;
      *&__str[4] = "_SIOpenIndexFilesWithState";
      *&__str[12] = 1024;
      *&__str[14] = 11419;
      *&__str[18] = 2048;
      *&__str[20] = a1;
      *&__str[28] = 1024;
      *&__str[30] = v36;
      _os_log_error_impl(&dword_1C278D000, v147, OS_LOG_TYPE_ERROR, "%s:%d: %p ContentIndexOpenBulk err:%d", __str, 0x22u);
    }

    *__error() = v146;
    if (v36 == -2)
    {
      bzero(__str, 0x400uLL);
      v36 = -2;
      snprintf(__str, 0x400uLL, "ContentIndexOpenBulk failed %d, %d", -2, v101);
      __si_set_error_str(0, "%s:%u: %s", v243, v244, v245, v246, v247, v248, "SpotlightIndex.c");
      goto LABEL_31;
    }

LABEL_176:
    v151 = **(a1 + 6592);
    v152 = *__error();
    v153 = _SILogForLogForCategory(11);
    v154 = v153;
    if (v151)
    {
      v198 = 2 * (dword_1EBF46AF8 < 4);
      if (os_log_type_enabled(v153, v198))
      {
        *__str = 134218240;
        *&__str[4] = a1;
        *&__str[12] = 1024;
        *&__str[14] = v101;
        _os_log_impl(&dword_1C278D000, v154, v198, "%p open from fast flush canceled:%d", __str, 0x12u);
      }

      *__error() = v152;
      bzero(__str, 0x400uLL);
      snprintf(__str, 0x400uLL, "open from fast flush canceled %d", v101);
      __si_set_error_str(1, "%s:%u: %s", v199, v200, v201, v202, v203, v204, "SpotlightIndex.c");
      if (v101)
      {
        goto LABEL_31;
      }

      goto LABEL_42;
    }

    v155 = dword_1EBF46AF8 < 3;
    if (os_log_type_enabled(v153, (dword_1EBF46AF8 < 3)))
    {
      *__str = 134218240;
      *&__str[4] = a1;
      *&__str[12] = 1024;
      *&__str[14] = v101;
      _os_log_impl(&dword_1C278D000, v154, v155, "*warn* %p open from fast flush failed:%d", __str, 0x12u);
    }

    *__error() = v152;
    v161 = *(a1 + 1192);
    if (v161)
    {
      db_release_datastore_no_sync(v161);
      *(a1 + 1192) = 0;
    }

    v162 = *(a1 + 6624);
    v51 = v23;
    if (v162)
    {
      freeReverseDirStore(v162);
      *(a1 + 6624) = 0;
    }

    if (*(*(a1 + 1392) + 8))
    {
      v371 = __si_assert_copy_extra_661(-1);
      v369 = v371;
      v372 = "";
      if (v371)
      {
        v372 = v371;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 11460, "newIndex->syncSet->indexCount==0", v372);
      goto LABEL_369;
    }

    if (*(*(a1 + 1384) + 8))
    {
      v374 = __si_assert_copy_extra_661(-1);
      v375 = v374;
      v376 = "";
      if (v374)
      {
        v376 = v374;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 11461, "newIndex->liveSet->indexCount==0", v376);
      goto LABEL_376;
    }

    *(a1 + 2481) = 1;
    if (*(a1 + 2482) != 4)
    {
      *(a1 + 2482) = 1;
    }

    if (v404 && *(a1 + 2483) != 4)
    {
      *(a1 + 2483) = 1;
    }

    v163 = *(a1 + 2484) + *(a1 + 2486);
    if (v163)
    {
      v164 = (a1 + 2488);
      do
      {
        if (*v164 != 4)
        {
          *v164 = 1;
        }

        ++v164;
        --v163;
      }

      while (v163);
    }

    v165 = si_write_index_state(a1, 0, 0, v156, v157, v158, v159, v160);
    v48 = 1;
    if (v165)
    {
      v205 = v165;
      v206 = *__error();
      v207 = _SILogForLogForCategory(11);
      if (os_log_type_enabled(v207, OS_LOG_TYPE_ERROR))
      {
        *__str = 136315906;
        *&__str[4] = "_SIOpenIndexFilesWithState";
        *&__str[12] = 1024;
        *&__str[14] = 11481;
        *&__str[18] = 2048;
        *&__str[20] = a1;
        *&__str[28] = 1024;
        *&__str[30] = v205;
        _os_log_error_impl(&dword_1C278D000, v207, OS_LOG_TYPE_ERROR, "%s:%d: %p si_write_index_state err:%d", __str, 0x22u);
      }

      *__error() = v206;
      bzero(__str, 0x400uLL);
      snprintf(__str, 0x400uLL, "si_write_index_state err %d", v205);
      __si_set_error_str(1, "%s:%u: %s", v209, v210, v211, v212, v213, v214, "SpotlightIndex.c");
      goto LABEL_31;
    }
  }

  if (v52 != 3)
  {
    if (v52 == 4)
    {
      v61 = v53;
      goto LABEL_62;
    }

    goto LABEL_100;
  }

  v60 = update_db_header(v53);
  if (v60)
  {
LABEL_71:
    v65 = v60;
    goto LABEL_96;
  }

  if (copyFileFallback(v53, __str, v53, "store.db", &v439, 1, 1))
  {
    v61 = v53;
    goto LABEL_62;
  }

  v149 = *__error();
  if (v149)
  {
    v65 = v149;
  }

  else
  {
    v65 = -1;
  }

LABEL_96:
  v84 = *__error();
  v85 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v441 = "db2_update_datastore_state";
    v442 = 1024;
    LODWORD(v443) = 6913;
    WORD2(v443) = 1024;
    *(&v443 + 6) = v52;
    WORD5(v443) = 1024;
    HIDWORD(v443) = v65;
    _os_log_error_impl(&dword_1C278D000, v85, OS_LOG_TYPE_ERROR, "%s:%d: update state (%d) failed err:%d", buf, 0x1Eu);
  }

  *__error() = v84;
  if (!v65)
  {
    v59 = 0;
    goto LABEL_100;
  }

  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "db_update_datastore_state failed %d, %d", v65, v52);
  __si_set_error_str(1, "%s:%u: %s", v217, v218, v219, v220, v221, v222, "SpotlightIndex.c");
  v223 = *__error();
  v224 = _SILogForLogForCategory(11);
  if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v441 = "_SIOpenIndexFilesWithState";
    v442 = 1024;
    LODWORD(v443) = 11225;
    WORD2(v443) = 2048;
    *(&v443 + 6) = a1;
    HIWORD(v443) = 1024;
    LODWORD(v444) = v65;
    _os_log_error_impl(&dword_1C278D000, v224, OS_LOG_TYPE_ERROR, "%s:%d: %p db_update_datastore_state err:%d", buf, 0x22u);
  }

  *__error() = v223;
LABEL_30:
  v36 = -1;
LABEL_31:
  v37 = *(a1 + 1192);
  if (v37)
  {
    if (v36 != -2 && !**(a1 + 6592) && (*(a1 + 6944) & 1) == 0)
    {
      *a6 = 1;
    }

    db_release_datastore_no_sync(v37);
    *(a1 + 1192) = 0;
  }

LABEL_42:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v428 = 0;
  v427 = 0;
  free(v430);
  if (v36 < 0)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = v36;
  }

  v47 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t handleDirStoreOverlay(uint64_t a1)
{
  v76 = *MEMORY[0x1E69E9840];
  v2 = fd_create_protected(*(a1 + 32), "dirStore.overlay", 0, 0);
  if (!v2)
  {
    v11 = 0;
    goto LABEL_91;
  }

  v3 = v2;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v70 = 0;
  v4 = _fd_acquire_fd(v2, &v70);
  memset(&v69, 0, sizeof(v69));
  v5 = fstat(v4, &v69);
  if (v5 == -1 || !v69.st_size)
  {
    if (v5 == -1)
    {
      v11 = 0xFFFFFFFFLL;
    }

    else
    {
      v11 = 0;
    }

    _fd_release_fd(v3, v4, 0, v70);
    goto LABEL_90;
  }

  _fd_release_fd(v3, v4, 0, v70);
  if (!store_stream_init(&v71, v3, 0))
  {
    v11 = 0xFFFFFFFFLL;
LABEL_90:
    fd_release(v3);
    goto LABEL_91;
  }

  for (i = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0); ; CFSetAddValue(i, *(*(*v8 + 8 * (vint32_706 - 1)) + 56)))
  {
    vint32_706 = store_stream_read_vint32_706(&v71);
    if (!vint32_706)
    {
      break;
    }

    v8 = *(a1 + 1392);
    if (vint32_706 > *(v8 + 8))
    {
LABEL_92:
      v11 = 0xFFFFFFFFLL;
      goto LABEL_93;
    }
  }

  while (1)
  {
    v10 = store_stream_read_vint32_706(&v71);
    if (!v10)
    {
      break;
    }

    v9 = *(a1 + 1384);
    if (v10 > *(v9 + 8))
    {
      goto LABEL_92;
    }

    CFSetAddValue(i, *(*(*v9 + 8 * (v10 - 1)) + 56));
  }

  v11 = v72;
  if (!v72)
  {
    v63 = v3;
    while (1)
    {
      v12 = store_stream_read_vint32_706(&v71);
      v13 = v12 < 513;
      v14 = v12 < 513 && v12 != 0;
      if (v14 != 1)
      {
        break;
      }

      v15 = v12;
      MEMORY[0x1EEE9AC00](v12);
      v17 = &v57[-v16];
      bzero(&v57[-v16], v18);
      v68 = v57;
      if (v15 >= 1)
      {
        v19 = 0;
        v20 = *(&v73 + 1);
        do
        {
          if (v73 - v20 < 0xB)
          {
            v24 = 0;
            v22 = 0;
            __dst = 0;
            v65 = v74;
            while (1)
            {
              v25 = v73;
              v66 = v24;
              if (v20 + 1 > v73)
              {
                v67 = 0;
                LODWORD(v59) = v71;
                p_dst = &__dst;
                v64 = *(&v72 + 1);
                v61 = 1;
                while (1)
                {
                  v60 = v25 - v20;
                  if (v25 != v20)
                  {
                    memcpy(p_dst, &v65[v20], v60);
                  }

                  v28 = prot_pread(v59, v65, v25, v64);
                  if (v28 == -1)
                  {
                    v20 = v25;
                    *&v73 = v25;
                    *(&v73 + 1) = v25;
                    *(&v72 + 1) = v64;
                    v27 = 0;
                    LODWORD(v72) = *__error();
                    goto LABEL_32;
                  }

                  v64 += v28;
                  v20 = 0;
                  if (!v28)
                  {
                    break;
                  }

                  p_dst += v60;
                  v67 += v60;
                  v25 = v28;
                  v61 -= v60;
                  if (v61 <= v28)
                  {
                    v20 = 0;
                    *(&v72 + 1) = v64;
                    *&v73 = v28;
                    v26 = p_dst;
                    v27 = v61;
                    goto LABEL_31;
                  }
                }

                v73 = 0uLL;
                *(&v72 + 1) = v64;
                v27 = v60;
              }

              else
              {
                v67 = 0;
                v26 = &__dst;
                v27 = 1;
LABEL_31:
                memcpy(v26, &v65[v20], v27);
                v20 += v27;
                *(&v73 + 1) = v20;
              }

LABEL_32:
              if (v27 + v67 != 1)
              {
                break;
              }

              v22 |= (__dst & 0x7F) << v66;
              v24 = (v66 + 7);
              if ((__dst & 0x80) == 0)
              {
                goto LABEL_26;
              }
            }

            v22 = 0;
          }

          else
          {
            v21 = 0;
            v22 = 0;
            do
            {
              v23 = *(v74 + v20++);
              v22 |= (v23 & 0x7F) << v21;
              if ((v23 & 0x80) == 0)
              {
                break;
              }

              v52 = v21 == 63;
              v21 += 7;
            }

            while (!v52);
            *(&v73 + 1) = v20;
          }

LABEL_26:
          v17[v19++] = v22;
        }

        while (v19 != v15);
      }

      v29 = store_stream_read_vint32_706(&v71);
      if (v29 >= 513)
      {
        v13 = 1;
        break;
      }

      v30 = v29;
      MEMORY[0x1EEE9AC00](v29);
      v32 = &v57[-v31];
      bzero(&v57[-v31], v33);
      if (v30 >= 1)
      {
        v34 = 0;
        v35 = *(&v73 + 1);
        do
        {
          if (v73 - v35 < 0xB)
          {
            v39 = 0;
            v37 = 0;
            __dst = 0;
            v64 = v74;
            while (1)
            {
              v65 = v39;
              if (v35 + 1 > v73)
              {
                v60 = v73;
                v66 = 0;
                v58 = v71;
                v61 = &__dst;
                p_dst = *(&v72 + 1);
                v67 = 1;
                while (1)
                {
                  v59 = v60 - v35;
                  if (v60 != v35)
                  {
                    memcpy(v61, &v64[v35], v59);
                  }

                  v43 = prot_pread(v58, v64, v60, p_dst);
                  if (v43 == -1)
                  {
                    v35 = v60;
                    *&v73 = v60;
                    *(&v73 + 1) = v60;
                    *(&v72 + 1) = p_dst;
                    v44 = __error();
                    v42 = 0;
                    LODWORD(v72) = *v44;
                    goto LABEL_60;
                  }

                  p_dst += v43;
                  v35 = 0;
                  if (!v43)
                  {
                    break;
                  }

                  v61 += v59;
                  v66 += v59;
                  v60 = v43;
                  v67 -= v59;
                  if (v67 <= v43)
                  {
                    v35 = 0;
                    *(&v72 + 1) = p_dst;
                    *&v73 = v43;
                    v40 = v61;
                    v41 = v67;
                    goto LABEL_59;
                  }
                }

                v73 = 0uLL;
                *(&v72 + 1) = p_dst;
                v42 = v59;
              }

              else
              {
                v66 = 0;
                v40 = &__dst;
                v41 = 1;
LABEL_59:
                v67 = v41;
                memcpy(v40, &v64[v35], v41);
                v42 = v67;
                v35 += v67;
                *(&v73 + 1) = v35;
              }

LABEL_60:
              if (v42 + v66 != 1)
              {
                break;
              }

              v37 |= (__dst & 0x7F) << v65;
              v39 = (v65 + 7);
              if ((__dst & 0x80) == 0)
              {
                goto LABEL_54;
              }
            }

            v37 = 0;
          }

          else
          {
            v36 = 0;
            v37 = 0;
            do
            {
              v38 = *(v74 + v35++);
              v37 |= (v38 & 0x7F) << v36;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v52 = v36 == 63;
              v36 += 7;
            }

            while (!v52);
            *(&v73 + 1) = v35;
          }

LABEL_54:
          *&v32[8 * v34++] = v37;
        }

        while (v34 != v30);
      }

      v45 = *(a1 + 1392);
      if (*(v45 + 8))
      {
        v46 = 0;
        do
        {
          if (CFSetContainsValue(i, *(*(*v45 + 8 * v46) + 56)))
          {
            _CIMoveDirectory(*(**(a1 + 1392) + 8 * v46), v15, v17, v30, v32);
          }

          ++v46;
          v45 = *(a1 + 1392);
        }

        while (v46 < *(v45 + 8));
      }

      v47 = *(a1 + 1384);
      if (*(v47 + 8))
      {
        v48 = 0;
        do
        {
          if (CFSetContainsValue(i, *(*(*v47 + 8 * v48) + 56)))
          {
            _CIMoveDirectory(*(**(a1 + 1384) + 8 * v48), v15, v17, v30, v32);
          }

          ++v48;
          v47 = *(a1 + 1384);
        }

        while (v48 < *(v47 + 8));
      }
    }

    v51 = v72;
    store_stream_destroy(&v71);
    v52 = v14 != v13 && v51 == 0;
    if (v52)
    {
      v11 = 0;
      v3 = v63;
    }

    else
    {
      v53 = *(a1 + 1392);
      if (*(v53 + 8))
      {
        v54 = 0;
        do
        {
          if (CFSetContainsValue(i, *(*(*v53 + 8 * v54) + 56)))
          {
            _CIMakeInvalid(*(**(a1 + 1392) + 8 * v54));
          }

          ++v54;
          v53 = *(a1 + 1392);
        }

        while (v54 < *(v53 + 8));
      }

      v55 = *(a1 + 1384);
      v3 = v63;
      if (*(v55 + 8))
      {
        v56 = 0;
        do
        {
          if (CFSetContainsValue(i, *(*(*v55 + 8 * v56) + 56)))
          {
            _CIMakeInvalid(*(**(a1 + 1384) + 8 * v56));
          }

          ++v56;
          v55 = *(a1 + 1384);
        }

        while (v56 < *(v55 + 8));
      }

      if (v51)
      {
        v11 = v51;
      }

      else
      {
        v11 = 0xFFFFFFFFLL;
      }
    }
  }

LABEL_93:
  fd_release(v3);
  if (i)
  {
    CFRelease(i);
  }

LABEL_91:
  v49 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t handleIndexRepair(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  if (!v3 || (v6 = *(a1 + 2408), !(v6 | a3)))
  {
    result = 0;
    goto LABEL_43;
  }

  v61 = 0;
  v62 = v3;
  v60[0] = v6;
  v60[1] = a3;
  v63 = *(a2 + 144);
  v64 = 0;
  v7 = v6;
  v8 = 0;
  if (*(a1 + 2072) == 1)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 1192);
    v11 = malloc_type_calloc(1uLL, 0x38uLL, 0x1060040EBC759B4uLL);
    if (fcntl(v9, 63) == 1)
    {
      v12 = v9;
      v13 = 2;
    }

    else
    {
      v13 = 0;
      v12 = v9;
    }

    *v11 = fd_create_protected(v12, "journalRepair.1", 536872450, v13);
    v11[1] = v10;
    *(v11 + 4) = db_get_id_for_field(v10, "_kMDItemGroupId");
    *(v11 + 5) = db_get_id_for_field(v10, "_kMDItemBundleID");
    *(v11 + 6) = db_get_id_for_field(v10, "_kMDItemExternalID");
    v7 = *(a1 + 2408);
    v8 = v11;
  }

  v15 = *(a1 + 1192);
  v65 = v8;
  v66 = v15;
  if (v7)
  {
    if (a3)
    {
      v16 = db_clear_docids_setup(v15);
      v59 = 0;
      add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v18 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, add_explicit + 1);
      LODWORD(v54) = HIDWORD(v18);
      *buf = v18;
      v58 = __PAIR64__(v19, v20);
      v21 = threadData[9 * v18 + 1] + 320 * HIDWORD(v18);
      v22 = *(v21 + 312);
      v23 = *(v21 + 224);
      if (v23)
      {
        v23(*(v21 + 288));
      }

      v57 = *buf;
      v56 = v54;
      v55 = v58;
      if (_setjmp(v21))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          LOWORD(valuePtr[0]) = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", valuePtr, 2u);
        }

        *(v21 + 312) = v22;
        CIOnThreadCleanUpReset(v55);
        dropThreadId(v57, 1, add_explicit + 1);
        CICleanUpReset(v57, HIDWORD(v55));
        v24 = 0;
      }

      else
      {
        db_set_host(*(a1 + 1192), a1);
        v28 = *(a1 + 1192);
        if (*v28 != 1685287992)
        {
          v48 = *__error();
          v49 = _SILogForLogForCategory(4);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            v50 = *v28;
            LODWORD(valuePtr[0]) = 136315650;
            *(valuePtr + 4) = "db_clear_docids";
            WORD2(valuePtr[1]) = 1024;
            *(&valuePtr[1] + 6) = 414;
            WORD1(valuePtr[2]) = 1024;
            HIDWORD(valuePtr[2]) = v50;
            _os_log_error_impl(&dword_1C278D000, v49, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", valuePtr, 0x18u);
          }

          *__error() = v48;
          v51 = __si_assert_copy_extra_332();
          v52 = v51;
          if (v51)
          {
            v53 = v51;
          }

          else
          {
            v53 = "";
          }

          __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 414, v53);
          free(v52);
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        v29 = db2_clear_docids(*(a1 + 1192), v16, *(a1 + 6592), 1, clear_docid_match_new, v60);
        v59 = 1;
        v30 = threadData[9 * v57 + 1] + 320 * v56;
        *(v30 + 312) = v22;
        v31 = *(v30 + 232);
        if (v31)
        {
          v31(*(v30 + 288));
        }

        dropThreadId(v57, 0, add_explicit + 1);
        v24 = v29;
      }

      if (v59)
      {
        v27 = v24;
      }

      else
      {
        v27 = 0xFFFFFFFFLL;
      }

      db_clear_docids_cleanup(*(a1 + 1192), v16);
    }

    else
    {
      v27 = 0;
    }

    v32 = SICopyProperty(a1, @"database.recoverscantime");
    if (v32)
    {
      v33 = v32;
      valuePtr[0] = 0;
      if (CFNumberGetValue(v32, kCFNumberSInt64Type, valuePtr) && valuePtr[0] > *(a1 + 2408))
      {
        *(a1 + 2408) = valuePtr[0];
      }

      CFRelease(v33);
    }

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
    memset(valuePtr, 0, sizeof(valuePtr));
    v54 = *(a1 + 2408);
    v34 = localtime(&v54);
    strftime(valuePtr, 0x100uLL, "%F %T", v34);
    v35 = *__error();
    v36 = _SILogForLogForCategory(11);
    v37 = 2 * (dword_1EBF46AF8 < 4);
    if (os_log_type_enabled(v36, v37))
    {
      *buf = 134219010;
      v68 = a1;
      v69 = 2080;
      v70 = valuePtr;
      v71 = 2048;
      v72 = a3;
      v73 = 1024;
      v74 = HIDWORD(v64);
      v75 = 2048;
      v76 = v61;
      _os_log_impl(&dword_1C278D000, v36, v37, "%p repair - catchup scan time stamp: %s, base: %ld, repair count: %d, remair max: %ld", buf, 0x30u);
    }

    *__error() = v35;
    v26 = v65;
    v25 = v27;
    if (!v65)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  v25 = -*(a1 + 2072);
  v26 = v8;
  if (v8)
  {
LABEL_36:
    *(a1 + 6952) = *v26;
    if (v26[5])
    {
      _MDPlistContainerEndArray();
      v38 = v26[5];
      _MDPlistContainerEndArray();
      v39 = v26[5];
      _MDPlistContainerEndContainer();
      mobile_journal_plist(*v26, 0, 0, v26[5], 0, 0);
      CFRelease(v26[5]);
    }

    v40 = v26[4];
    if (v40)
    {
      CFRelease(v40);
    }

    free(v26);
  }

LABEL_41:
  if (!v25)
  {
    v42 = *(a1 + 1384);
    if (v42)
    {
      v43 = HIDWORD(v64);
      v44 = *(v42 + 8);
      if (!v44 || (v45 = *(*v42 + 8 * (v44 - 1)), v46 = atomic_load((v45 + 36)), (v46 & 3) != 0) || *(v45 + 15203) == 1)
      {
        new_live_index(a1, 0, v61 + 1);
        v42 = *(a1 + 1384);
      }

      if (v43)
      {
        if (v42)
        {
          v47 = *(v42 + 8);
          if (v47)
          {
            ContentIndexSetEmergency(*(*v42 + 8 * (v47 - 1)), 1);
          }
        }
      }
    }
  }

  result = v25;
LABEL_43:
  v41 = *MEMORY[0x1E69E9840];
  return result;
}

void si_handle_tmp_files(uint64_t a1, int a2, int a3, __CFArray **a4, __CFArray **a5, __CFArray **a6)
{
  v115 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v103 = _os_feature_enabled_impl();
  }

  else
  {
    v103 = 1;
  }

  v105 = 0;
  if (!fd_setDir(a1, &v105))
  {
    v52 = 0;
    v53 = 0;
    v12 = 0;
    v104 = 0;
    LODWORD(v16) = 0;
    LODWORD(v15) = 0;
    goto LABEL_72;
  }

  v12 = opendir(".");
  if (!v12)
  {
    v52 = 0;
    v53 = 0;
    v104 = 0;
    LODWORD(v16) = 0;
    LODWORD(v15) = 0;
    goto LABEL_70;
  }

  v93 = a2;
  v99 = a6;
  v101 = 0;
  v96 = 0;
  v98 = 0;
  v104 = 0;
  v13 = 0;
  v14 = 0;
  allocator = *MEMORY[0x1E695E480];
  while (1)
  {
    v15 = v14;
    v16 = v13;
    v17 = readdir(v12);
    if (!v17)
    {
      break;
    }

    v18 = v17;
    d_name = v17->d_name;
    v13 = v16;
    v14 = v15;
    if (v17->d_name[0] != 46)
    {
      d_type = v17->d_type;
      v21 = d_type == 4 || d_type == 10;
      v13 = v16;
      v14 = v15;
      if (!v21)
      {
        if (!strncmp(v17->d_name, "tmp.", 4uLL))
        {
          v28 = strncmp(d_name, "tmp.SnowLeopard", 0xFuLL);
          v13 = v16;
          v14 = v15;
          if (v28)
          {
            v29 = strncmp(d_name, "tmp.Lion", 8uLL);
            v13 = v16;
            v14 = v15;
            if (v29)
            {
              v30 = strncmp(d_name, "tmp.Cab", 7uLL);
              v13 = v16;
              v14 = v15;
              if (v30)
              {
                v31 = strncmp(d_name, "tmp.Star", 8uLL);
                v13 = v16;
                v14 = v15;
                if (v31)
                {
                  v32 = strncmp(d_name, "tmp.Glow", 8uLL);
                  v13 = v16;
                  v14 = v15;
                  if (v32)
                  {
                    v33 = strncmp(d_name, "tmp.SequoiaPhotosFixed", 0x16uLL);
                    v13 = v16;
                    v14 = v15;
                    if (v33)
                    {
                      if (!_os_feature_enabled_impl() || (v34 = strncmp(d_name, "tmp.macOS16", 0xBuLL), v13 = v16, v14 = v15, v34))
                      {
                        v35 = strncmp(d_name, "tmp.spotlight", 0xDuLL);
                        v13 = v16;
                        v14 = v15;
                        if (v35)
                        {
                          v36 = strncmp(d_name, "tmp.store.recovery", 0x12uLL);
                          v13 = v16;
                          v14 = v15;
                          if (v36)
                          {
                            if (v93 && !strncmp(d_name, "tmp.journals.", 0xDuLL))
                            {
                              for (i = &v18->d_name[13]; *i; ++i)
                              {
                                if (*i == 46)
                                {
                                  if (!i[1])
                                  {
                                    break;
                                  }

                                  bzero(buf, 0x400uLL);
                                  __strcpy_chk();
                                  v43 = i - d_name - 4;
                                  if (*(&buf[0].st_dev + v43) != 46)
                                  {
                                    v87 = __si_assert_copy_extra_661(-1);
                                    v88 = v87;
                                    v89 = "";
                                    if (v87)
                                    {
                                      v89 = v87;
                                    }

                                    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 11023, "new_path[ptr-direntry->d_name-4]=='.'", v89);
                                    free(v88);
                                    if (__valid_fs(-1))
                                    {
                                      v90 = 2989;
                                    }

                                    else
                                    {
                                      v90 = 3072;
                                    }

                                    *v90 = -559038737;
                                    abort();
                                  }

                                  *(&buf[0].st_dev + v43) = 47;
                                  v92 = *__error();
                                  v44 = _SILogForLogForCategory(0);
                                  v45 = 2 * (gSILogLevels[0] < 4);
                                  v46 = v44;
                                  if (os_log_type_enabled(v44, v45))
                                  {
                                    *v106 = 136315394;
                                    v107 = d_name;
                                    v108 = 2080;
                                    *v109 = buf;
                                    _os_log_impl(&dword_1C278D000, v46, v45, "renaming: %s to %s", v106, 0x16u);
                                  }

                                  *__error() = v92;
                                  rename(d_name, buf, v47);
                                  if (v48)
                                  {
                                    v49 = *__error();
                                    v50 = _SILogForLogForCategory(0);
                                    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                                    {
                                      v51 = *__error();
                                      *v106 = 136316162;
                                      v107 = "si_handle_tmp_files";
                                      v108 = 1024;
                                      *v109 = 11029;
                                      *&v109[4] = 1024;
                                      *&v109[6] = v51;
                                      v110 = 2080;
                                      v111 = d_name;
                                      v112 = 2080;
                                      v113 = buf;
                                      _os_log_error_impl(&dword_1C278D000, v50, OS_LOG_TYPE_ERROR, "%s:%d: move error:%d, %s to %s", v106, 0x2Cu);
                                    }

                                    *__error() = v49;
                                  }

                                  goto LABEL_57;
                                }
                              }
                            }

LABEL_23:
                            v91 = a3;
                            v25 = *__error();
                            v26 = _SILogForLogForCategory(10);
                            v27 = 2 * (dword_1EBF46AF4 < 4);
                            if (os_log_type_enabled(v26, v27))
                            {
                              buf[0].st_dev = 136315138;
                              *&buf[0].st_mode = d_name;
                              _os_log_impl(&dword_1C278D000, v26, v27, "unlink (%s)", buf, 0xCu);
                            }

                            *__error() = v25;
                            unlink(d_name);
                            v13 = v16;
                            v14 = v15;
                            a3 = v91;
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
          if (a4 && !strncmp(d_name, "journalAttr.", 0xCuLL))
          {
            *&buf[0].st_dev = 0;
            v38 = strtoll(&v18->d_name[12], buf, 0);
            if (v38 < 2)
            {
              goto LABEL_57;
            }

            v39 = v38;
            Mutable = *a4;
            if (!*a4)
            {
              Mutable = CFArrayCreateMutable(allocator, 0, 0);
              *a4 = Mutable;
            }

LABEL_56:
            CFArrayAppendValue(Mutable, v39);
            goto LABEL_57;
          }

          if (a5 && !strncmp(d_name, "menuItemsJournalAttr.", 0x15uLL))
          {
            *&buf[0].st_dev = 0;
            v41 = strtoll(&v18->d_name[21], buf, 0);
            if (v41 < 2)
            {
              goto LABEL_57;
            }

            v39 = v41;
            Mutable = *a5;
            if (!*a5)
            {
              Mutable = CFArrayCreateMutable(allocator, 0, 0);
              *a5 = Mutable;
            }

            goto LABEL_56;
          }

          if (v99 && !strncmp(d_name, "deferAttr.", 0xAuLL))
          {
            *&buf[0].st_dev = 0;
            v42 = strtoll(&v18->d_name[10], buf, 0);
            if (v42 < 2)
            {
              goto LABEL_57;
            }

            v39 = v42;
            Mutable = *v99;
            if (!*v99)
            {
              Mutable = CFArrayCreateMutable(allocator, 0, 0);
              *v99 = Mutable;
            }

            goto LABEL_56;
          }

          v22 = strncmp(d_name, "skg_", 4uLL);
          d_namlen = v18->d_namlen;
          if (v22)
          {
            v13 = v16;
            v14 = v15;
            if (d_namlen >= 0xD)
            {
              v24 = strncmp(d_name + d_namlen - 13, "topK.mdplistc", 0xDuLL);
              v13 = v16;
              v14 = v15;
              if (!v24)
              {
                goto LABEL_23;
              }
            }
          }

          else
          {
            v13 = 1;
            v14 = 1;
            if (d_namlen != 4)
            {
              memset(buf, 0, 144);
              if (!stat(d_name, buf))
              {
                if (!strncmp(d_name, "skg_deleteAttr.", 0xFuLL))
                {
                  v98 += buf[0].st_size;
                  v101 = (v101 + 1);
                }

                else if (!strncmp(d_name, "skg_knowledgeEntry.", 0x13uLL))
                {
                  v96 += buf[0].st_size;
                  ++v104;
                }
              }

LABEL_57:
              v13 = v16;
              v14 = v15;
            }
          }
        }
      }
    }
  }

  closedir(v12);
  v53 = v96;
  v52 = v98;
  v12 = v101;
LABEL_70:
  v54 = v105;
  MEMORY[0x1C6921200](v105);
  if ((v54 & 0x80000000) == 0)
  {
    close(v54);
  }

LABEL_72:
  v55 = v53 > 0x1DCD6500;
  v56 = _os_feature_enabled_impl() ^ 1 | (v52 > 0x3B9ACA00) | a3 | v15;
  if (v56)
  {
    *v106 = 0;
    v57 = 0;
    if (fd_setDir(a1, v106))
    {
      v100 = a1;
      v58 = v53;
      v59 = opendir(".");
      if (v59)
      {
        v60 = v59;
        v61 = a3;
        v57 = 0;
        while (1)
        {
          v62 = readdir(v60);
          if (!v62)
          {
            break;
          }

          v63 = v62->d_name;
          if (v62->d_name[0] != 46)
          {
            v64 = v62->d_type;
            v65 = v64 == 4 || v64 == 10;
            if (!v65 && !strncmp(v62->d_name, "skg_", 4uLL) && (!strncmp(v63, "skg_deleteAttr.", 0xFuLL) || !strncmp(v63, "skg_knowledgeEntry.", 0x13uLL)))
            {
              v97 = *__error();
              v66 = _SILogForLogForCategory(10);
              v67 = 2 * (dword_1EBF46AF4 < 4);
              allocatora = v66;
              if (os_log_type_enabled(v66, v67))
              {
                buf[0].st_dev = 136315138;
                *&buf[0].st_mode = v63;
                _os_log_impl(&dword_1C278D000, allocatora, v67, "unlink (%s)", buf, 0xCu);
              }

              *__error() = v97;
              unlink(v63);
              v57 = 1;
            }
          }
        }

        closedir(v60);
        a3 = v61;
      }

      else
      {
        v57 = 0;
      }

      v68 = *v106;
      MEMORY[0x1C6921200](*v106);
      v53 = v58;
      if ((v68 & 0x80000000) == 0)
      {
        close(v68);
      }

      LODWORD(a1) = v100;
    }

    bzero(buf, 0x400uLL);
    if ((fcntl(a1, 50, buf) & 0x80000000) == 0 && LOBYTE(buf[0].st_dev))
    {
      v69 = strlen(buf);
      snprintf(buf + v69, 1024 - v69, "/%s", "skg_");
      v70 = open(buf, 1793, 384);
      if ((v70 & 0x80000000) == 0)
      {
        close(v70);
        if (v57)
        {
          v71 = v53;
          bzero(buf, 0x400uLL);
          if ((fcntl(a1, 50, buf) & 0x80000000) == 0)
          {
            if (LOBYTE(buf[0].st_dev))
            {
              v72 = strlen(buf);
              v73 = *MEMORY[0x1E695E480];
              v74 = CFURLCreateWithBytes(*MEMORY[0x1E695E480], buf, v72, 0x8000100u, 0);
              if (v74)
              {
                v75 = v74;
                v102 = v12;
                PathComponent = CFURLCreateCopyDeletingLastPathComponent(v73, v74);
                if (PathComponent)
                {
                  v77 = PathComponent;
                  v78 = CFURLCopyLastPathComponent(PathComponent);
                  if (v78)
                  {
                    v79 = v78;
                    if ((v56 | v103 | v55 | a3 | v16))
                    {
                      v80 = dictionaryFromPurgeEvent(v78, v104, v71);
                      analytics_send_event();
                      xpc_release(v80);
                    }

                    v81 = dictionaryFromPurgeEvent(v79, v102, v52);
                    analytics_send_event();
                    xpc_release(v81);
                    CFRelease(v79);
                  }

                  CFRelease(v77);
                }

                CFRelease(v75);
              }
            }
          }
        }

        goto LABEL_113;
      }

      v82 = *__error();
      v83 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        *v106 = 136315394;
        v107 = "si_purge_journal_files";
        v108 = 1024;
        *v109 = 10908;
        _os_log_error_impl(&dword_1C278D000, v83, OS_LOG_TYPE_ERROR, "%s:%d: write skg marker error", v106, 0x12u);
      }

      *__error() = v82;
    }

    v84 = *__error();
    v85 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      buf[0].st_dev = 136315394;
      *&buf[0].st_mode = "si_handle_tmp_files";
      WORD2(buf[0].st_ino) = 1024;
      *(&buf[0].st_ino + 6) = 11086;
      _os_log_error_impl(&dword_1C278D000, v85, OS_LOG_TYPE_ERROR, "%s:%d: unable to purge skg files", buf, 0x12u);
    }

    *__error() = v84;
  }

LABEL_113:
  v86 = *MEMORY[0x1E69E9840];
}

int *dump_filesystem_meta(int a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  *__str = 0u;
  v53 = 0u;
  v2 = openat(a1, ".", 0);
  if (v2 == -1)
  {
    v15 = *__error();
    v16 = _SILogForLogForCategory(0);
    v17 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v16, (gSILogLevels[0] < 3)))
    {
      v18 = *__error();
      v51.st_dev = 67109376;
      *&v51.st_mode = a1;
      LOWORD(v51.st_ino) = 1024;
      *(&v51.st_ino + 2) = v18;
      _os_log_impl(&dword_1C278D000, v16, v17, "*warn* openat(%d): %d", &v51, 0xEu);
    }

    result = __error();
    *result = v15;
  }

  else
  {
    v3 = v2;
    v4 = fdopendir(v2);
    if (v4)
    {
      v5 = v4;
      v24 = time(0);
      v6 = MEMORY[0x1E69E9C10];
      while (1)
      {
        v7 = readdir(v5);
        if (!v7)
        {
          break;
        }

        if (v7->d_type == 8)
        {
          d_name = v7->d_name;
          memset(&v51, 0, sizeof(v51));
          if (!fstatat(a1, v7->d_name, &v51, 32) && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            st_blksize = v51.st_blksize;
            st_flags = v51.st_flags;
            st_mode = v51.st_mode;
            st_size = v51.st_size;
            tv_sec = v51.st_atimespec.tv_sec;
            prettyStr(v24 - v51.st_atimespec.tv_sec, __str);
            v12 = v51.st_mtimespec.tv_sec;
            prettyStr(v24 - v51.st_mtimespec.tv_sec, __str);
            v13 = v51.st_ctimespec.tv_sec;
            prettyStr(v24 - v51.st_ctimespec.tv_sec, __str);
            *buf = 67111938;
            v28 = a1;
            v29 = 2080;
            v30 = d_name;
            v31 = 2048;
            v32 = st_size;
            v33 = 1024;
            v34 = st_blksize;
            v35 = 1024;
            v36 = st_mode;
            v37 = 1024;
            v38 = st_flags;
            v39 = 2048;
            v40 = tv_sec;
            v41 = 2080;
            v42 = __str;
            v43 = 2048;
            v44 = v12;
            v45 = 2080;
            v46 = __str;
            v47 = 2048;
            v48 = v13;
            v49 = 2080;
            v50 = __str;
            _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, "[fsmeta %d] %s sz:%llu bs:%d md:%d fl:%d at:%lus(%s ago) mt:%lus(%s ago) ct:%lus(%s ago)", buf, 0x6Au);
          }
        }
      }

      result = closedir(v5);
    }

    else
    {
      v19 = *__error();
      v20 = _SILogForLogForCategory(0);
      v21 = gSILogLevels[0] < 3;
      if (os_log_type_enabled(v20, (gSILogLevels[0] < 3)))
      {
        v22 = *__error();
        v51.st_dev = 67109376;
        *&v51.st_mode = v3;
        LOWORD(v51.st_ino) = 1024;
        *(&v51.st_ino + 2) = v22;
        _os_log_impl(&dword_1C278D000, v20, v21, "*warn* fdopendir(%d): %d", &v51, 0xEu);
      }

      *__error() = v19;
      result = close(v3);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t si_validate_db(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(a1 + 1192), 0x40000000, add_explicit + 1);
  v21 = v3;
  v4 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v19 = v5;
  v20 = HIDWORD(v3);
  v18 = v6;
  *(v4 + 216) = 0;
  v7 = *(v4 + 312);
  v8 = *(v4 + 224);
  if (v8)
  {
    v8(*(v4 + 288));
  }

  if (_setjmp(v4))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v4 + 312) = v7;
    CIOnThreadCleanUpReset(v18);
    v9 = 1;
    dropThreadId(v21, 1, add_explicit + 1);
    CICleanUpReset(v21, v19);
  }

  else
  {
    field_name_for_id = db_get_field_name_for_id(*(a1 + 1192), 1);
    v11 = field_name_for_id;
    if (field_name_for_id && !strncmp(field_name_for_id, "_kMDXXXX___DUMMY", 0x10uLL))
    {
      v9 = 1;
    }

    else
    {
      v12 = *__error();
      v13 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v23 = "si_validate_db";
        v24 = 1024;
        v25 = 1039;
        v26 = 2080;
        v27 = v11;
        _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: Entry 1 in the name table is %s (should be dummy field name)", buf, 0x1Cu);
      }

      v9 = 0;
      *__error() = v12;
    }

    v14 = threadData[9 * v21 + 1] + 320 * v20;
    *(v14 + 312) = v7;
    v15 = *(v14 + 232);
    if (v15)
    {
      v15(*(v14 + 288));
    }

    dropThreadId(v21, 0, add_explicit + 1);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

int *disableWritingForAllButLastOfRunsOfTransaction(int *result)
{
  v1 = result;
  v16 = *MEMORY[0x1E69E9840];
  v2 = result[2];
  if (v2 >= 2)
  {
    v3 = 0;
    do
    {
      v4 = (*v1 + 8 * v3);
      result = *v4;
      if ((*v4)[10] == v4[1][10])
      {
        _CIDisableUpdates(result);
        v5 = *__error();
        v6 = _SILogForLogForCategory(0);
        v7 = 2 * (gSILogLevels[0] < 4);
        if (os_log_type_enabled(v6, v7))
        {
          v8 = *(*(*v1 + 8 * v3) + 40);
          *buf = 67109120;
          v15 = v8;
          _os_log_impl(&dword_1C278D000, v6, v7, "Disable updates for index in transaction %d", buf, 8u);
        }

        result = __error();
        *result = v5;
        v2 = v1[2];
      }

      v9 = v3 + 2;
      ++v3;
    }

    while (v9 < v2);
  }

  v1[4] = -1;
  if (v2)
  {
    v10 = 0;
    while (1)
    {
      v11 = *(*v1 + 8 * v10);
      v12 = atomic_load((v11 + 36));
      if ((v12 & 3) == 0 && (*(v11 + 15203) & 1) == 0)
      {
        break;
      }

      if (++v10 >= v1[2])
      {
        goto LABEL_15;
      }
    }

    v1[4] = v10;
  }

LABEL_15:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t indexSetGetNotCompactCount(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = v1 - 1;
  do
  {
    v4 = atomic_load((*(*a1 + 8 * v3) + 36));
    if ((v4 & 4) != 0)
    {
      break;
    }

    v5 = *(*a1 + 8 * v3);
    v6 = atomic_load((v5 + 36));
    v7 = (v6 & 3) != 0 ? 1 : *(v5 + 15203);
    v2 = (v2 + v7);
    v8 = v3-- + 1;
  }

  while (v8 > 1);
  return v2;
}

uint64_t indexSetGetNotMergedCount(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (v1 < 1)
  {
    return 0;
  }

  result = 0;
  v4 = *a1;
  for (i = 8 * v1 - 8; ; i -= 8)
  {
    v6 = *(v4 + i);
    v7 = atomic_load((v6 + 36));
    if ((v7 & 3) == 0 && *(v6 + 15203) != 1)
    {
      break;
    }

    v4 = *a1;
    if (*(*(*a1 + i) + 52) > 2)
    {
      break;
    }

    result = (result + 1);
    if (v1 == result)
    {
      return v1;
    }
  }

  return result;
}

uint64_t indexSetGetLiveCount(uint64_t a1, unsigned int a2)
{
  v2 = a2 - 1;
  if ((a2 - 1) < 1)
  {
    return 0;
  }

  result = 0;
  v5 = *(*(a1 + 8 * v2) + 40);
  for (i = a1 + 8 * a2 - 16; v5 == *(*i + 40); i -= 8)
  {
    result = (result + 1);
    if (v2 == result)
    {
      return a2 - 1;
    }
  }

  return result;
}

void holdAndIssueMerge(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v8 = malloc_type_calloc(1uLL, 0x460uLL, 0x1070040C187FD8AuLL);
  v8[1042] = 0;
  *(v8 + 132) = copyHoldQueue(a1);
  *v8 = a1;
  v9 = *(*a3 + 8 * (*(a3 + 8) - a2));
  v8[16] = a4;
  *(v8 + 2) = *(v9 + 56);
  *(v8 + 3) = a2;
  v8[1041] = 0;
  *(v8 + 131) = "void holdAndIssueMerge(SIRef, int32_t, SIIndexSetRef, _Bool, _Bool)";
  *(v8 + 274) = 7;
  v8[1100] = 0;
  if (!*(v8 + 136) && !*(v8 + 266))
  {
    v11 = *(a1 + 2360);
    if (v11)
    {
      v12 = *(v11 + 64);
      if (v12)
      {
        *(v8 + 266) = v12(*(v11 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 10834, "void holdAndIssueMerge(SIRef, int32_t, SIIndexSetRef, _Bool, _Bool)");
      }
    }
  }

  __strlcpy_chk();
  v10 = *(a1 + 1064);

  si_enqueue_work(v10, si_mergeIndex, v8);
}

void compactReadOnlyIndexes(uint64_t a1, char a2)
{
  v4 = malloc_type_calloc(1uLL, 0x460uLL, 0x1070040C187FD8AuLL);
  v4[16] = a2;
  *v4 = a1;
  v5 = *(a1 + 1048);

  si_enqueue_barrier_with_qos(v5, 9, si_compactReadOnlyIndexes1, v4);
}

uint64_t indexSetGetWritableCount(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 0;
  }

  LODWORD(v2) = 0;
  v3 = v1 - 1;
  do
  {
    v4 = *(*a1 + 8 * v3);
    v5 = atomic_load((v4 + 36));
    if ((v5 & 3) != 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(v4 + 15203) ^ 1;
    }

    v2 = (v2 + v6);
    v7 = v3-- + 1;
  }

  while (v7 > 1);
  return v2;
}

void _SIPreHeatIndex(uint64_t a1, const void *a2, char a3)
{
  if (*(a1 + 1192) && *(a1 + 1096))
  {
    v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040A95220FAuLL);
    v6[16] = a3;
    *v6 = a1;
    if (a2)
    {
      CFRetain(a2);
    }

    *(v6 + 1) = a2;
    v7 = *(a1 + 1096);

    si_enqueue_work(v7, si_preheat, v6);
  }
}

void si_preheat(uint64_t *a1, int a2)
{
  if (!a2)
  {
    v3 = *a1;
    kdebug_trace();
    v14 = 0;
    if (fd_setDir(*(v3 + 32), &v14))
    {
      v4 = *(v3 + 1384);
      v5 = *(v4 + 8);
      if (v5)
      {
        _CIPreHeatIndex(*(*v4 + 8 * (v5 - 1)), *(a1 + 16));
      }

      v6 = *(v3 + 1392);
      if (*(v6 + 8))
      {
        v7 = 0;
        do
        {
          _CIPreHeatIndex(*(*v6 + 8 * v7++), *(a1 + 16));
        }

        while (v7 < *(v6 + 8));
      }

      v8 = *(v3 + 1384);
      if (*(v8 + 8))
      {
        v9 = 0;
        do
        {
          _CIPreHeatIndex(*(*v8 + 8 * v9++), *(a1 + 16));
        }

        while (v9 < *(v8 + 8));
      }

      v10 = a1[1];
      if (v10)
      {
        v11 = *(v10 + 112);
        if (v11)
        {
          if (CFArrayGetCount(*(v10 + 112)))
          {
            CFArrayGetValueAtIndex(v11, 0);
            icu_locale_create();
            icu_locale_get_rules();
            icu_locale_retain();
          }
        }
      }

      v12 = v14;
      MEMORY[0x1C6921200](v14);
      if ((v12 & 0x80000000) == 0)
      {
        close(v12);
      }
    }

    kdebug_trace();
  }

  v13 = a1[1];
  if (v13)
  {
    CFRelease(v13);
  }

  free(a1);
}

void si_compactReadOnlyIndexes1(uint64_t a1, int a2)
{
  v3 = a1;
  if (!a2)
  {
    si_enqueue_work_with_qos(*(*a1 + 1040), 9, si_compactReadOnlyIndexes2, a1);
    v3 = 0;
  }

  si_merge_ctx_free(v3, a2 != 0);
}

void si_compactReadOnlyIndexes2(uint64_t *a1, int a2)
{
  v3 = a1;
  if (!a2)
  {
    v4 = *a1;
    si_sync_ctx_create_with_defer_fd(*a1, 0);
    v6 = v5;
    *(v5 + 96) = 1;
    if ((*(*v5 + 2437) & 1) == 0 && (*(*v3 + 2072) & 1) == 0)
    {
      attachJournal(v5);
    }

    syncIndex(v6, 0);
    si_enqueue_work(*(v4 + 1064), si_compactReadOnlyIndexes3, v3);
    v3 = 0;
  }

  si_merge_ctx_free(v3, a2 != 0);
}

void si_compactReadOnlyIndexes3(uint64_t a1, int a2)
{
  if (!a2)
  {
    v4 = *a1;
    v8 = 0;
    if (fd_setDir(*(v4 + 32), &v8))
    {
      v5 = 1392;
      if (*(a1 + 16))
      {
        v5 = 1384;
      }

      v6 = *(v4 + v5);
      v9 = v4;
      __checkIndexSetDocIdOrder(v4, v6);
      if (*(v6 + 8))
      {
        CompactIndexes(v4, 0, 0, v6);
      }

      v7 = v8;
      MEMORY[0x1C6921200](v8);
      if ((v7 & 0x80000000) == 0)
      {
        close(v7);
      }
    }
  }

  si_merge_ctx_free(a1, a2 != 0);
}

char *prettyStr(uint64_t a1, char *__str)
{
  if (a1 < 86400)
  {
    if (a1 % 86400 < 3600)
    {
      if (a1 % 86400 % 3600 < 60)
      {
        snprintf(__str, 0x80uLL, "%lds");
      }

      else
      {
        snprintf(__str, 0x80uLL, "%ld:%ld");
      }
    }

    else
    {
      snprintf(__str, 0x80uLL, "%ld:%ld:%ld");
    }
  }

  else
  {
    snprintf(__str, 0x80uLL, "%ldd%ld:%ld:%ld");
  }

  return __str;
}

int *__totalDiskSpaceSize_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  bzero(&v7, 0x878uLL);
  result = statfs("/", &v7);
  if (result)
  {
    v1 = *__error();
    v2 = _SILogForLogForCategory(0);
    v3 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v2, (gSILogLevels[0] < 3)))
    {
      v4 = *__error();
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(&dword_1C278D000, v2, v3, "*warn* Failed to get total disk space size. err=%d", v6, 8u);
    }

    result = __error();
    *result = v1;
  }

  else
  {
    gTotalDiskSpaceSize = v7.f_blocks * v7.f_bsize;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

xpc_object_t dictionaryFromPurgeEvent(const __CFString *a1, int64_t a2, int64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  empty = xpc_dictionary_create_empty();
  if (CFStringGetCString(a1, buffer, 1024, 0x8000100u))
  {
    xpc_dictionary_set_string(empty, "indexId", buffer);
  }

  xpc_dictionary_set_int64(empty, "itemcount", a2);
  xpc_dictionary_set_int64(empty, "indexingtime", 0);
  xpc_dictionary_set_int64(empty, "aggregatedatasize", a3);
  v7 = *MEMORY[0x1E69E9840];
  return empty;
}

uint64_t clear_docid_match_new(uint64_t a1, uint64_t a2)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3 > *(a2 + 16))
  {
    *(a2 + 16) = v3;
    v3 = *(a1 + 32);
  }

  if (v3 >= *(a2 + 8))
  {
    ++*(a2 + 44);
    v5 = *(a2 + 48);
    if (!v5)
    {
      goto LABEL_19;
    }

    v32[0] = *(v5 + 20);
    *v31 = 0;
    if (db_get_field_by_id(*(v5 + 8), a1, v32, v31, 0))
    {
      goto LABEL_19;
    }

    v6 = *MEMORY[0x1E695E480];
    v7 = _decodeSDBField(*(v5 + 8), *v31, (*v31 + 13), 0, 0, 0, 0, *MEMORY[0x1E695E480]);
    if (!v7)
    {
      goto LABEL_19;
    }

    v8 = v7;
    v9 = *(v5 + 32);
    if (!v9 || *(v5 + 48) > 0x40u || CFStringCompare(v9, v8, 0))
    {
      if (*(v5 + 40))
      {
        _MDPlistContainerEndArray();
        v10 = *(v5 + 40);
        _MDPlistContainerEndArray();
        v11 = *(v5 + 40);
        _MDPlistContainerEndContainer();
        mobile_journal_plist(*v5, 0, *(v5 + 48), *(v5 + 40), 0, 0);
        CFRelease(*(v5 + 40));
        *(v5 + 40) = 0;
      }

      v12 = *(v5 + 32);
      if (v12)
      {
        CFRelease(v12);
      }

      *(v5 + 32) = CFRetain(v8);
      *(v5 + 48) = 0;
      *(v5 + 40) = _MDPlistContainerCreateMutable();
      _MDPlistContainerBeginContainer();
      v13 = *(v5 + 40);
      _MDPlistContainerBeginArray();
      v14 = *(v5 + 40);
      _MDPlistContainerAddObject();
      v15 = *(v5 + 40);
      _MDPlistContainerBeginArray();
    }

    LODWORD(v32[0]) = *(v5 + 24);
    if (!db_get_field_by_id(*(v5 + 8), a1, v32, v31, 0))
    {
      v20 = _decodeSDBField(*(v5 + 8), *v31, (*v31 + 13), 0, 0, 0, 0, v6);
      if (v20)
      {
        v21 = v20;
        if (objectHasContent(*(v5 + 8), a1))
        {
          v22 = *(v5 + 40);
          _MDPlistContainerBeginDictionary();
          v23 = *(v5 + 40);
          _MDPlistContainerAddCString();
          v24 = *(v5 + 40);
          _MDPlistContainerAddObject();
          v25 = *(v5 + 40);
          _MDPlistContainerAddCString();
          v26 = *(v5 + 40);
          _MDPlistContainerAddObject();
          v27 = *(v5 + 40);
          _MDPlistContainerAddCString();
          v28 = *(v5 + 40);
          _MDPlistContainerAddBooleanValue();
          v29 = *(v5 + 40);
          _MDPlistContainerEndDictionary();
          ++*(v5 + 48);
          CFRelease(v21);
          goto LABEL_18;
        }

        CFRelease(v21);
      }
    }

    v16 = *(v5 + 40);
    _MDPlistContainerBeginDictionary();
    v17 = *(v5 + 8);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 0x40000000;
    v30[2] = __RepairJournalWrite_block_invoke;
    v30[3] = &__block_descriptor_tmp_995;
    v30[4] = v5;
    v30[5] = a1;
    _enumerate_dbo(v17, a1, 0, v30);
    v18 = *(v5 + 40);
    _MDPlistContainerEndDictionary();
    ++*(v5 + 48);
LABEL_18:
    CFRelease(v8);
LABEL_19:
    result = 1;
    goto LABEL_20;
  }

  result = 0;
LABEL_20:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void __RepairJournalWrite_block_invoke(uint64_t a1, char *__s1, uint64_t a3)
{
  if (strcmp(__s1, "_kMDItemGroupId"))
  {
    if (strcmp(__s1, "_kMDItemTextContentIndexExists"))
    {
      v6 = _decodeSDBField(*(*(a1 + 32) + 8), a3, (a3 + 13), 0, 0, 0, 0, *MEMORY[0x1E695E480]);
      if (v6)
      {
        v7 = v6;
        v8 = *(*(a1 + 32) + 40);
        _MDPlistContainerAddCString();
        v9 = *(*(a1 + 32) + 40);
        _MDPlistContainerAddObject();

        CFRelease(v7);
      }
    }
  }
}

int *updateMetaInfoForState(int *result, int a2, int a3)
{
  v5 = result;
  v27 = *MEMORY[0x1E69E9840];
  if (result[10] != a2)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(11);
    v8 = dword_1EBF46AF8 < 3;
    if (os_log_type_enabled(v7, (dword_1EBF46AF8 < 3)))
    {
      v9 = v5[10];
      v23 = 67109376;
      v24 = a2;
      v25 = 1024;
      v26 = v9;
      _os_log_impl(&dword_1C278D000, v7, v8, "*warn* clean scan count mis-match expected:%d got %d", &v23, 0xEu);
    }

    result = __error();
    *result = v6;
    v5[10] = a2;
  }

  if (v5[12] != a2)
  {
    v10 = *__error();
    v11 = _SILogForLogForCategory(11);
    v12 = dword_1EBF46AF8 < 3;
    if (os_log_type_enabled(v11, (dword_1EBF46AF8 < 3)))
    {
      v13 = v5[12];
      v23 = 67109376;
      v24 = a2;
      v25 = 1024;
      v26 = v13;
      _os_log_impl(&dword_1C278D000, v11, v12, "*warn* shadow scan count mis-match expected:%d got %d", &v23, 0xEu);
    }

    result = __error();
    *result = v10;
    v5[12] = a2;
  }

  if (v5[11] != a3)
  {
    v14 = *__error();
    v15 = _SILogForLogForCategory(11);
    v16 = dword_1EBF46AF8 < 3;
    if (os_log_type_enabled(v15, (dword_1EBF46AF8 < 3)))
    {
      v17 = v5[11];
      v23 = 67109376;
      v24 = a3;
      v25 = 1024;
      v26 = v17;
      _os_log_impl(&dword_1C278D000, v15, v16, "*warn* clean live count mis-match expected:%d got %d", &v23, 0xEu);
    }

    result = __error();
    *result = v14;
    v5[11] = a3;
  }

  if (v5[13] != a3)
  {
    v18 = *__error();
    v19 = _SILogForLogForCategory(11);
    v20 = dword_1EBF46AF8 < 3;
    if (os_log_type_enabled(v19, (dword_1EBF46AF8 < 3)))
    {
      v21 = v5[13];
      v23 = 67109376;
      v24 = a3;
      v25 = 1024;
      v26 = v21;
      _os_log_impl(&dword_1C278D000, v19, v20, "*warn* shadow live count mis-match expected:%d got %d", &v23, 0xEu);
    }

    result = __error();
    *result = v18;
    v5[13] = a3;
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SIOpenJWLIndex(int a1, void *a2, uint64_t a3)
{
  v98 = *MEMORY[0x1E69E9840];
  v6 = malloc_type_calloc(1uLL, 0x2788uLL, 0x10F00403822957CuLL);
  *v6 = 0xC0DE10DE10DEC0DELL;
  v7 = guarded_dup(a1);
  v6[4] = v7;
  v6[5] = v8;
  if (v7 == -1 || MEMORY[0x1C6921200]())
  {
    v9 = *__error();
    v10 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v45 = *(v6 + 8);
      v46 = __error();
      v47 = strerror(*v46);
      v48 = *__error();
      *buf = 136316418;
      *&buf[4] = "SIOpenJWLIndex";
      *&buf[12] = 1024;
      *&buf[14] = 13997;
      *&buf[18] = 1024;
      *&buf[20] = v45;
      *&buf[24] = 1024;
      *&buf[26] = a1;
      *&buf[30] = 2080;
      *&buf[32] = v47;
      *&buf[40] = 1024;
      *&buf[42] = v48;
      _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: Unable to set jwl index fd: %d (dirfd: %d), err: %s(%d)", buf, 0x2Eu);
    }

    *__error() = v9;
    free(v6);
    result = 0xFFFFFFFFLL;
    goto LABEL_6;
  }

  pthread_rwlock_init((v6 + 10), 0);
  pthread_mutex_init((v6 + 204), 0);
  *(v6 + 15) = 2 * a3;
  *(v6 + 145) = 0u;
  *(v6 + 1741) = 1;
  *(v6 + 2072) = 1;
  *(v6 + 1743) = 1;
  clientstates_file = si_read_clientstates_file(v6);
  v6[9] = clientstates_file;
  if (!clientstates_file)
  {
    v37 = *__error();
    v38 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v50 = __error();
      v51 = strerror(*v50);
      v52 = *__error();
      *buf = 136315906;
      *&buf[4] = "SIOpenJWLIndex";
      *&buf[12] = 1024;
      *&buf[14] = 14014;
      *&buf[18] = 2080;
      *&buf[20] = v51;
      *&buf[28] = 1024;
      *&buf[30] = v52;
      _os_log_error_impl(&dword_1C278D000, v38, OS_LOG_TYPE_ERROR, "%s:%d: Unable to read client state file, err: %s(%d)", buf, 0x22u);
    }

    *__error() = v37;
    pthread_mutex_destroy((v6 + 204));
    pthread_rwlock_destroy((v6 + 10));
    free(v6);
    result = 4294967294;
    goto LABEL_6;
  }

  Value = CFDictionaryGetValue(clientstates_file, @"version");
  if (!Value)
  {
    v39 = *__error();
    v40 = _SILogForLogForCategory(11);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    *buf = 136315394;
    *&buf[4] = "si_validate_and_read_clientstate";
    *&buf[12] = 1024;
    *&buf[14] = 13896;
    v41 = "%s:%d: si_validate_and_read_clientstate: version not found";
LABEL_57:
    v43 = v40;
    v44 = 18;
    goto LABEL_58;
  }

  valuePtr[0] = 0;
  CFNumberGetValue(Value, kCFNumberIntType, valuePtr);
  if (valuePtr[0] != 1)
  {
    v39 = *__error();
    v42 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "si_validate_and_read_clientstate";
      *&buf[12] = 1024;
      *&buf[14] = 13892;
      *&buf[18] = 1024;
      *&buf[20] = valuePtr[0];
      *&buf[24] = 1024;
      *&buf[26] = 1;
      v41 = "%s:%d: si_validate_and_read_clientstate: version mismatch %d != %d";
      v43 = v42;
      v44 = 30;
LABEL_58:
      _os_log_error_impl(&dword_1C278D000, v43, OS_LOG_TYPE_ERROR, v41, buf, v44);
      goto LABEL_59;
    }

    goto LABEL_59;
  }

  v15 = CFDictionaryGetValue(v6[9], @"journalSerialNumber");
  if (!v15)
  {
    v39 = *__error();
    v40 = _SILogForLogForCategory(11);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    *buf = 136315394;
    *&buf[4] = "si_validate_and_read_clientstate";
    *&buf[12] = 1024;
    *&buf[14] = 13910;
    v41 = "%s:%d: si_validate_and_read_clientstate: journal sno not found";
    goto LABEL_57;
  }

  *valuePtr = 0;
  CFNumberGetValue(v15, kCFNumberSInt64Type, valuePtr);
  if (*valuePtr <= 0)
  {
    v39 = *__error();
    v49 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "si_validate_and_read_clientstate";
      *&buf[12] = 1024;
      *&buf[14] = 13905;
      *&buf[18] = 2048;
      *&buf[20] = *valuePtr;
      v41 = "%s:%d: si_validate_and_read_clientstate: invalid journal sno %lld";
LABEL_45:
      v43 = v49;
      v44 = 28;
      goto LABEL_58;
    }

    goto LABEL_59;
  }

  v6[266] = *valuePtr;
  v16 = CFDictionaryGetValue(v6[9], @"syncCount");
  if (!v16)
  {
    v39 = *__error();
    v40 = _SILogForLogForCategory(11);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    *buf = 136315394;
    *&buf[4] = "si_validate_and_read_clientstate";
    *&buf[12] = 1024;
    *&buf[14] = 13924;
    v41 = "%s:%d: si_validate_and_read_clientstate: synccount not found";
    goto LABEL_57;
  }

  valuePtr[0] = 0;
  CFNumberGetValue(v16, kCFNumberIntType, valuePtr);
  if (valuePtr[0] <= 0)
  {
    v39 = *__error();
    v53 = _SILogForLogForCategory(11);
    if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    *buf = 136315650;
    *&buf[4] = "si_validate_and_read_clientstate";
    *&buf[12] = 1024;
    *&buf[14] = 13919;
    *&buf[18] = 1024;
    *&buf[20] = valuePtr[0];
    v41 = "%s:%d: si_validate_and_read_clientstate: invalid synccount %d";
LABEL_54:
    v43 = v53;
    v44 = 24;
    goto LABEL_58;
  }

  *(v6 + 586) = valuePtr[0];
  v17 = CFDictionaryGetValue(v6[9], @"deferSyncCount");
  if (!v17)
  {
    v39 = *__error();
    v40 = _SILogForLogForCategory(11);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    *buf = 136315394;
    *&buf[4] = "si_validate_and_read_clientstate";
    *&buf[12] = 1024;
    *&buf[14] = 13954;
    v41 = "%s:%d: si_validate_and_read_clientstate: defersynccount not found";
    goto LABEL_57;
  }

  valuePtr[0] = 0;
  CFNumberGetValue(v17, kCFNumberIntType, valuePtr);
  if (valuePtr[0] <= 0)
  {
    v39 = *__error();
    v53 = _SILogForLogForCategory(11);
    if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    *buf = 136315650;
    *&buf[4] = "si_validate_and_read_clientstate";
    *&buf[12] = 1024;
    *&buf[14] = 13949;
    *&buf[18] = 1024;
    *&buf[20] = valuePtr[0];
    v41 = "%s:%d: si_validate_and_read_clientstate: invalid defersynccount %d";
    goto LABEL_54;
  }

  *(v6 + 587) = valuePtr[0];
  v18 = CFDictionaryGetValue(v6[9], @"cookie");
  if (!v18)
  {
    v39 = *__error();
    v40 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "si_validate_and_read_clientstate";
      *&buf[12] = 1024;
      *&buf[14] = 13967;
      v41 = "%s:%d: si_validate_and_read_clientstate: cookie not found";
      goto LABEL_57;
    }

LABEL_59:
    *__error() = v39;
    v54 = *__error();
    v55 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SIOpenJWLIndex";
      *&buf[12] = 1024;
      *&buf[14] = 14023;
      _os_log_error_impl(&dword_1C278D000, v55, OS_LOG_TYPE_ERROR, "%s:%d: Invalid client state file, can't open jwlindex", buf, 0x12u);
    }

    *__error() = v54;
    pthread_mutex_destroy((v6 + 204));
    pthread_rwlock_destroy((v6 + 10));
    free(v6);
    result = 4294967293;
    goto LABEL_6;
  }

  v19 = v18;
  v20 = CFUUIDCreateFromString(*MEMORY[0x1E695E480], v18);
  v6[180] = v20;
  if (!v20)
  {
    v39 = *__error();
    v49 = _SILogForLogForCategory(11);
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    *buf = 136315650;
    *&buf[4] = "si_validate_and_read_clientstate";
    *&buf[12] = 1024;
    *&buf[14] = 13962;
    *&buf[18] = 2112;
    *&buf[20] = v19;
    v41 = "%s:%d: si_validate_and_read_clientstate: invalid cookie %@";
    goto LABEL_45;
  }

  *(v6 + 89) = CFUUIDGetUUIDBytes(v20);
  pthread_mutex_init((v6 + 165), 0);
  v21 = *(v6 + 15);
  if (v21 == 3)
  {
    v22 = 3;
  }

  else
  {
    v22 = 2 * a3;
  }

  if (v21 == 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = v22;
  }

  *(v6 + 15) = v23;
  _SIChangeProtectionClassForFilesInDirectory(*(v6 + 8), a3);
  v24 = *(v6 + 15);
  if (v24)
  {
    v25 = 6;
  }

  else
  {
    v25 = v24 & 0xFFFFFFFE;
  }

  *(v6 + 15) = v25;
  v26 = CFDictionaryGetValue(v6[9], @"journalName");
  v27 = v26;
  if (v26)
  {
    v28 = *(v6 + 8);
    CStringPtr = CFStringGetCStringPtr(v26, 0x8000100u);
    v30 = openat(v28, CStringPtr, 536870922);
    if (v30 == -1)
    {
      v56 = *__error();
      v57 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v75 = CFStringGetCStringPtr(v27, 0x8000100u);
        v76 = __error();
        v77 = strerror(*v76);
        *buf = 136315906;
        *&buf[4] = "SIOpenJWLIndex";
        *&buf[12] = 1024;
        *&buf[14] = 14045;
        *&buf[18] = 2080;
        *&buf[20] = v75;
        *&buf[28] = 2080;
        *&buf[30] = v77;
        _os_log_error_impl(&dword_1C278D000, v57, OS_LOG_TYPE_ERROR, "%s:%d: Unable to open journal %s err: %s", buf, 0x26u);
      }

      *__error() = v56;
    }

    else
    {
      v31 = v30;
      v32 = *(v6 + 8);
      v33 = CFStringGetCStringPtr(v27, 0x8000100u);
      v34 = fd_create_protected(v32, v33, 536870922, 2u);
      close(v31);
      if (v34)
      {
        v6[290] = v34;
        _fd_acquire_fd(v34, buf);
        v35 = *(v6 + 15);
        if (*(v6 + 2072) == 1 && (*(v6 + 829) & 0x10) == 0)
        {
          v36 = *(v6 + 15);
          if (_os_feature_enabled_impl())
          {
            _os_feature_enabled_impl();
          }
        }

        v6[263] = si_mobile_journal_create(v6);
      }
    }
  }

  if (!v6[263])
  {
    memset(v97, 0, sizeof(v97));
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    v93 = 0u;
    v92 = 0u;
    v91 = 0u;
    v90 = 0u;
    v89 = 0u;
    v88 = 0u;
    v87 = 0u;
    v86 = 0u;
    v73 = *(v6 + 587) - 1;
    memset(buf, 0, sizeof(buf));
    __sprintf_chk(buf, 0, 0xFFuLL, "%s%d", "deferAttr.", v73);
    if (v27)
    {
      v74 = CFStringGetCStringPtr(v27, 0x8000100u);
      if (!strcmp(v74, buf))
      {
        *(v6 + 1742) = 1;
      }
    }
  }

  v58 = &off_1F427B590;
  v59 = v6 + 126;
  v60 = 6;
  do
  {
    bzero(buf, 0x450uLL);
    v61 = *(v58 + 2);
    v62 = *(v58 + 3);
    if (v61 == 11)
    {
      bzero(valuePtr, 0x400uLL);
      v63 = fcntl(*(v6 + 8), 50, valuePtr);
      if (LOBYTE(valuePtr[0]))
      {
        v64 = v63 < 0;
      }

      else
      {
        v64 = 1;
      }

      if (v64)
      {
        v65 = 0;
      }

      else
      {
        v65 = valuePtr;
      }

      snprintf(buf, 0x450uLL, "%s scheduler for jwl index at %s", *v58, v65);
      if (v6[119])
      {
        v78 = __si_assert_copy_extra_661(-1);
        v79 = v78;
        v80 = "";
        if (v78)
        {
          v80 = v78;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 14090, "newIndex->workqueues.schedulers[schedId]==0", v80);
LABEL_96:
        free(v79);
        if (__valid_fs(-1))
        {
          v83 = 2989;
        }

        else
        {
          v83 = 3072;
        }

        *v83 = -559038737;
        abort();
      }

      if (v59[v62])
      {
        v81 = __si_assert_copy_extra_661(-1);
        v79 = v81;
        v82 = "";
        if (v81)
        {
          v82 = v81;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 14091, "newIndex->workqueues.queues[queueId]==0", v82);
        goto LABEL_96;
      }

      v66 = *(v58 - 24);
      v67 = *(v58 - 2);
      v68 = *(v58 - 4);
      root_scheduler = si_create_root_scheduler(buf);
      v6[119] = root_scheduler;
      *(v6 + 2072);
      v59[v62] = si_create_child_queue(root_scheduler);
    }

    else
    {
      v6[v61 + 108] = 0;
      v59[v62] = 0;
    }

    v58 += 7;
    --v60;
  }

  while (v60);
  if (SIIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
  }

  if (SIIsAppleInternal_internal)
  {
    v70 = fd_create_protected(*(v6 + 8), "activityJournal.1", 536871433, 3u);
    si_activity_journal_init((v6 + 274), v70);
    fd_mark_purgable(v6[274]);
  }

  v71 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_BACKGROUND, 0);
  v72 = dispatch_queue_create("com.apple.spotlight.index.journal.toc", v71);
  result = 0;
  v6[148] = v72;
  *a2 = v6;
LABEL_6:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _SIChangeProtectionClassForFilesInDirectory(int a1, uint64_t a2)
{
  v60 = *MEMORY[0x1E69E9840];
  bzero(__s, 0x400uLL);
  if (fcntl(a1, 50, __s) < 0 || !__s[0])
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v10 = *__error();
    v11 = __error();
    v12 = strerror(*v11);
    *buf = 136316162;
    v52 = "_SIChangeProtectionClassForFilesInDirectory";
    v53 = 1024;
    v54 = 35378;
    v55 = 1024;
    v56 = a1;
    v57 = 1024;
    LODWORD(v58[0]) = v10;
    WORD2(v58[0]) = 2080;
    *(v58 + 6) = v12;
    v13 = "%s:%d: Error getting realpath, dirFd: %d, err: %d(%s)";
    goto LABEL_103;
  }

  v4 = strlen(__s);
  v5 = opendir(__s);
  if (!v5)
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v44 = *__error();
    v45 = __error();
    v46 = strerror(*v45);
    *buf = 136316162;
    v52 = "_SIChangeProtectionClassForFilesInDirectory";
    v53 = 1024;
    v54 = 35374;
    v55 = 1024;
    v56 = a1;
    v57 = 1024;
    LODWORD(v58[0]) = v44;
    WORD2(v58[0]) = 2080;
    *(v58 + 6) = v46;
    v13 = "%s:%d: Error opendir, dirFd: %d, err: %d(%s)";
LABEL_103:
    _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, v13, buf, 0x28u);
LABEL_9:
    *__error() = v8;
    v14 = *__error();
    if (v14)
    {
      v7 = v14;
    }

    else
    {
      v7 = 0xFFFFFFFFLL;
    }

    goto LABEL_101;
  }

  v6 = v5;
  if (fcntl(a1, 63) == a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = set_protection_class(a1, a2);
    if (v7)
    {
      v15 = *__error();
      v16 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v47 = *__error();
        v48 = __error();
        v49 = strerror(*v48);
        *buf = 136315906;
        v52 = "_SIChangeProtectionClassForFilesInDirectory";
        v53 = 1024;
        v54 = 35274;
        v55 = 1024;
        v56 = v47;
        v57 = 2080;
        v58[0] = v49;
        _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: Error set_protectionclass err: %d(%s)", buf, 0x22u);
      }

      *__error() = v15;
    }
  }

  if (_SIChangeProtectionClassForFilesInDirectory_sleptBefore)
  {
    goto LABEL_22;
  }

  if (isAppleInternalInstall_onceToken != -1)
  {
    dispatch_once(&isAppleInternalInstall_onceToken, &__block_literal_global_2134);
  }

  if (isAppleInternalInstall_isInternalInstall == 1 && strstr(__s, "MobileMailIndex"))
  {
    v17 = 1;
    _SIChangeProtectionClassForFilesInDirectory_sleptBefore = 1;
    sleepDuringMailClassCMigration();
  }

  else
  {
LABEL_22:
    v17 = 0;
  }

  v18 = v4 - 1023;
  if ((a2 - 1) < 2 || a2 == 7)
  {
    v20 = 3;
  }

  else
  {
    v20 = a2;
  }

  while (1)
  {
    v21 = readdir(v6);
    if (!v21)
    {
      break;
    }

    v22 = v21;
    d_type = v21->d_type;
    v24 = d_type == 8 || d_type == 4;
    if (v24 && (v21->d_name[0] != 46 || v21->d_name[1] && (v21->d_name[1] != 46 || v21->d_name[2])) && v18 + v21->d_namlen >= 0xFFFFFFFFFFFFFC00)
    {
      if (v17)
      {
        sleepDuringMailClassCMigration();
      }

      v25 = v20;
      if (a2 <= 7)
      {
        v25 = v20;
        if (((1 << a2) & 0x86) != 0)
        {
          v25 = v20;
          if (strcmp("tmp.spotlight.state", v22->d_name))
          {
            v25 = v20;
            if (strncmp("clientstatesmetafile", v22->d_name, 0x15uLL))
            {
              v25 = v20;
              if (strncmp("activityJournal.", v22->d_name, 0x10uLL))
              {
                v25 = v20;
                if (strncmp("tmp.store.recovery.", v22->d_name, 0x13uLL))
                {
                  v25 = v20;
                  if (strncmp("store.updates", v22->d_name, 0xDuLL))
                  {
                    v25 = v20;
                    if (!strstr(v22->d_name, "indexHead"))
                    {
                      v25 = v20;
                      if (!strstr(v22->d_name, "indexState"))
                      {
                        v25 = v20;
                        if (!strstr(v22->d_name, "indexBigDates"))
                        {
                          v25 = v20;
                          if (!strstr(v22->d_name, "indexScores"))
                          {
                            v25 = v20;
                            if (!strstr(v22->d_name, "indexGroups"))
                            {
                              v25 = v20;
                              if (!strstr(v22->d_name, "indexIds"))
                              {
                                v25 = v20;
                                if (!strstr(v22->d_name, "indexPositionTable"))
                                {
                                  v25 = v20;
                                  if (!strstr(v22->d_name, "indexPositions"))
                                  {
                                    v25 = v20;
                                    if (!strstr(v22->d_name, "indexPostings"))
                                    {
                                      v25 = v20;
                                      if (!strstr(v22->d_name, "indexTermIds"))
                                      {
                                        v25 = v20;
                                        if (!strstr(v22->d_name, "directoryStoreFile"))
                                        {
                                          v25 = v20;
                                          if (!strstr(v22->d_name, "shadowIndexGroups"))
                                          {
                                            v25 = v20;
                                            if (!strstr(v22->d_name, "shadowIndexHead"))
                                            {
                                              v25 = v20;
                                              if (!strstr(v22->d_name, "shadowIndexPositionTable"))
                                              {
                                                v25 = v20;
                                                if (!strstr(v22->d_name, "shadowIndexTermIds"))
                                                {
                                                  v25 = v20;
                                                  if (!strstr(v22->d_name, "bgassertions"))
                                                  {
                                                    v25 = v20;
                                                    if (strncmp("remapping", v22->d_name, 9uLL))
                                                    {
                                                      if (strncmp("dbStr", v22->d_name, 5uLL) || (v25 = v20, strstr(v22->d_name, ".data")))
                                                      {
                                                        d_namlen = v22->d_namlen;
                                                        if (d_namlen < 4 || (v40 = &v22->d_name[d_namlen], *(v40 - 3) != 116) || *(v40 - 2) != 111 || (v25 = v20, *(v40 - 1) != 99))
                                                        {
                                                          v25 = v20;
                                                          if (!strstr(v22->d_name, "errorFile"))
                                                          {
                                                            v41 = strstr(v22->d_name, "vectorIndexDrops.plist");
                                                            v25 = v41 ? v20 : 7;
                                                            if (a2 != 7 && !v41)
                                                            {
                                                              if (strstr(v22->d_name, "journalAttr.") || strstr(v22->d_name, "assertedJournalAttr.1") || strstr(v22->d_name, "deferattr."))
                                                              {
                                                                v25 = 2;
                                                              }

                                                              else if (strstr(v22->d_name, "journalRepair."))
                                                              {
                                                                v25 = 2;
                                                              }

                                                              else
                                                              {
                                                                v25 = a2;
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
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v26 = openat(v6->__dd_fd, v22->d_name, 0x8000);
      if (v26 == -1)
      {
        v31 = *__error();
        v32 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v34 = *__error();
          v35 = __error();
          v36 = strerror(*v35);
          *buf = 136315906;
          v52 = "_SIChangeProtectionClassForFilesInDirectory";
          v53 = 1024;
          v54 = 35368;
          v55 = 1024;
          v56 = v34;
          v57 = 2080;
          v58[0] = v36;
          _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: Error openfd err: %d(%s)", buf, 0x22u);
        }

        *__error() = v31;
        v33 = *__error();
        if (v33)
        {
          v7 = v33;
        }

        else
        {
          v7 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v27 = v26;
        if (fcntl(v26, 63) != v25)
        {
          v28 = set_protection_class(v27, v25);
          v7 = v7 ? v7 : v28;
          if (v28)
          {
            v29 = *__error();
            v30 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v50 = *__error();
              v37 = __error();
              v38 = strerror(*v37);
              *buf = 136315906;
              v52 = "_SIChangeProtectionClassForFilesInDirectory";
              v53 = 1024;
              v54 = 35363;
              v55 = 1024;
              v56 = v50;
              v57 = 2080;
              v58[0] = v38;
              _os_log_error_impl(&dword_1C278D000, v30, OS_LOG_TYPE_ERROR, "%s:%d: Error set_protectionclass err: %d(%s)", buf, 0x22u);
            }

            *__error() = v29;
          }
        }

        close(v27);
      }
    }
  }

  closedir(v6);
LABEL_101:
  v42 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t set_protection_class(int a1, uint64_t a2)
{
  v2 = a2;
  v9 = *MEMORY[0x1E69E9840];
  if (fcntl(a1, 64, a2) == -1)
  {
    bzero(v8, 0x400uLL);
    v5 = fcntl(a1, 50, v8);
    result = 0xFFFFFFFFLL;
    if ((v5 & 0x80000000) == 0 && v8[0])
    {
      v7 = v2;
      if (setattrlist(v8, &setattr_protection_class_req, &v7, 4uLL, 1u) == -1)
      {
        result = 0xFFFFFFFFLL;
      }

      else
      {
        result = 0;
      }
    }
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sleepDuringMailClassCMigration()
{
  v7 = *MEMORY[0x1E69E9840];
  if (isAppleInternalInstall_onceToken != -1)
  {
    dispatch_once(&isAppleInternalInstall_onceToken, &__block_literal_global_2134);
  }

  if (isAppleInternalInstall_isInternalInstall == 1)
  {
    if (sleepDuringMailClassCMigration_onceToken != -1)
    {
      dispatch_once(&sleepDuringMailClassCMigration_onceToken, &__block_literal_global_2143);
    }

    if (sleepDuringMailClassCMigration_shouldSleep == 1)
    {
      v0 = *__error();
      v1 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        v3 = 136315394;
        v4 = "sleepDuringMailClassCMigration";
        v5 = 1024;
        v6 = 35253;
        _os_log_error_impl(&dword_1C278D000, v1, OS_LOG_TYPE_ERROR, "%s:%d: Sleeping 2 seconds during mail migration", &v3, 0x12u);
      }

      *__error() = v0;
      sleep(2u);
    }
  }

  v2 = *MEMORY[0x1E69E9840];
}

FILE *__sleepDuringMailClassCMigration_block_invoke()
{
  result = fopen("/private/var/mobile/spotlightMailMigrationSleepEnabled", "r");
  if (result)
  {
    result = fclose(result);
    sleepDuringMailClassCMigration_shouldSleep = 1;
  }

  return result;
}

uint64_t _SISetProtectionClass(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 60);
  v3 = 2 * a2;
  if (v2 == 3)
  {
    v3 = 3;
  }

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  *(a1 + 60) = v4;
  return _SIChangeProtectionClassForFilesInDirectory(*(a1 + 32), a2);
}

uint64_t _SISetPriority(uint64_t result, int a2, int a3)
{
  if (a2 && a3)
  {
    v5 = __si_assert_copy_extra_661(-1);
    v6 = v5;
    v7 = "";
    if (v5)
    {
      v7 = v5;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "si_utils.h", 118, "!(priority && mailIndex)", v7);
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

  v3 = *(result + 60);
  if (v3)
  {
    v4 = 6;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFE;
  }

  if (a3)
  {
    v4 = 3;
  }

  if (a2)
  {
    v4 = 1;
  }

  *(result + 60) = v4;
  return result;
}

void SICloseJWLIndex(uint64_t a1)
{
  if (a1)
  {
    si_scheduler_boost_and_forget(*(a1 + 952));
    Current = CFAbsoluteTimeGetCurrent();
    _SIShutdownIndexSchedulers(a1, 0, 0, Current);
    v3 = *(a1 + 952);
    if (v3 && atomic_fetch_add((v3 + 96), 0xFFFFFFFF) == 1)
    {
      _si_scheduler_destroy(v3);
    }

    v4 = *(a1 + 2104);
    if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      _si_mobile_journal_finalize(v4, 1);
    }

    v5 = *(a1 + 2112);
    if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
    {
      _si_mobile_journal_finalize(v5, 1);
    }

    v6 = *(a1 + 2320);
    if (v6)
    {
      fd_release(v6);
    }

    v7 = *(a1 + 2328);
    if (v7)
    {
      fd_release(v7);
    }

    if (SIIsAppleInternal_onceToken != -1)
    {
      dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
    }

    if (SIIsAppleInternal_internal)
    {
      SIActivityJournalClose((a1 + 2192));
      v8 = *(a1 + 2192);
      *(a1 + 2192) = 0;
      if (v8)
      {
        fd_release(v8);
      }
    }

    dispatch_release(*(a1 + 1184));
    v9 = *(a1 + 72);
    if (v9)
    {
      CFRelease(v9);
    }

    *(a1 + 72) = 0;
    v10 = *(a1 + 1440);
    if (v10)
    {
      CFRelease(v10);
    }

    *(a1 + 1440) = 0;
    pthread_mutex_destroy((a1 + 1632));
    pthread_rwlock_destroy((a1 + 80));
    pthread_mutex_destroy((a1 + 1320));
    *v11 = *(a1 + 32);
    *(a1 + 32) = -1;
    if (v11[0] != -1)
    {
      if (*&v11[2])
      {
        guarded_close_np();
      }

      else
      {
        close(v11[0]);
      }
    }

    free(a1);
  }
}

uint64_t SIOpenIndex(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, __int128 *a7, uint64_t a8, uint64_t a9, _DWORD *a10)
{
  v79 = *MEMORY[0x1E69E9840];
  makeThreadId();
  if (freeQueueOnce != -1)
  {
    dispatch_once(&freeQueueOnce, &__block_literal_global_710);
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v19 = setThreadIdAndInfo(a2, sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v66 = HIDWORD(v19);
  v67 = v19;
  v64 = v21;
  v65 = v20;
  v22 = threadData[9 * v19 + 1] + 320 * HIDWORD(v19);
  *(v22 + 216) = 0;
  v61 = *(v22 + 312);
  v23 = *(v22 + 224);
  v24 = v22;
  if (v23)
  {
    v23(*(v22 + 288));
  }

  if (_setjmp(v24))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v69 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v69, 2u);
    }

    v24[78] = v61;
    CIOnThreadCleanUpReset(v64);
    dropThreadId(v67, 1, add_explicit + 1);
    CICleanUpReset(v67, v65);
    v25 = 0xFFFFFFFFLL;
    goto LABEL_69;
  }

  v62 = *a7;
  v63 = *(a7 + 2);
  Current = CFAbsoluteTimeGetCurrent();
  if (a8)
  {
    v27 = *(a8 + 24);
    *(a8 + 24) = 0;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;
  v76 = 0;
  if (a6)
  {
    v60 = v27;
    v75 = 0;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    *v69 = 0u;
    v70 = 0u;
    *buf = v62;
    *&buf[16] = v63;
    v29 = _SIOpenIndex(a1, a2, a3, a4, a5, v69, buf, a8, a9, &v76, a10);
    if ((v29 & 0x80000000) != 0)
    {
      if (v76 == 1)
      {
        v37 = *__error();
        if (v37)
        {
          v38 = v37;
        }

        else
        {
          v38 = -1;
        }

LABEL_22:
        v39 = v38;
        v68 = -1;
        v40 = a2 == -1 || (fd_setDir(a2, &v68) & 1) == 0;
        v41 = *__error();
        v42 = _SILogForLogForCategory(11);
        v43 = 2 * (dword_1EBF46AF8 < 4);
        if (os_log_type_enabled(v42, v43))
        {
          if (__si_error_str_key)
          {
            v44 = pthread_getspecific(__si_error_str_key);
          }

          else
          {
            v44 = 0;
          }

          *buf = 134218498;
          *&buf[4] = a1;
          *&buf[12] = 1024;
          *&buf[14] = v29;
          *&buf[18] = 2080;
          *&buf[20] = v44;
          _os_log_impl(&dword_1C278D000, v42, v43, "%p _SIOpenIndex: %d %s", buf, 0x1Cu);
        }

        *__error() = v41;
        if (!v40)
        {
          v45 = v68;
          MEMORY[0x1C6921200](v68);
          if ((v45 & 0x80000000) == 0)
          {
            close(v45);
          }
        }

        v36 = v39;
        v35 = v29;
        v28 = v60;
        if (a8)
        {
          goto LABEL_35;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v30 = *(&v72 + 1);
      a6[8] = v72;
      v31 = *&v69[8];
      v32 = v70;
      a6[6] = *v69;
      a6[7] = *(&v32 + 1);
      v33 = *(&v71 + 1);
      a6[4] = v71;
      a6[5] = v30;
      v34 = v75;
      a6[2] = v73;
      a6[3] = v31;
      *a6 = v32;
      a6[1] = v33;
      a6[11] = v34;
    }

    v38 = -1;
    goto LABEL_22;
  }

  v35 = 4294967294;
  v36 = -1;
  if (a8)
  {
LABEL_35:
    *(a8 + 24) = v28;
  }

LABEL_36:
  if ((v35 & 0x80000000) == 0)
  {
    if ((a5 & 0xC) == 0)
    {
      v46 = *a1;
      if (*a1)
      {
        v47 = SICopyProperty(*a1, @"kSIRepairSizes");
        if (!v47)
        {
          if ((*(v46 + 6584) & 0x6000000) != 0x4000000)
          {
            v48 = SICopyProperty(v46, @"kSIConsistencyCheck");
            if (!v48)
            {
              goto LABEL_50;
            }

            CFRelease(v48);
          }

          si_repair_sizes(v46);
          goto LABEL_50;
        }

        CFRelease(v47);
      }
    }

LABEL_50:
    bumpWorkTime(*a1, Current);
    if (v35 != 1 && *(*a1 + 2072) == 1)
    {
      v49 = *(*a1 + 1384);
      v50 = *(v49 + 8);
      if (v50 >= 2)
      {
        v51 = count_IndexSet(v49, v50 - 2, 1);
        analytics_send_event_lazy();
        if (v51 <= 3 && (v51 != 3 || gSISystemOnBattery))
        {
          if (v51 == 3)
          {
            v59 = *(*a1 + 2360);
            if (v59)
            {
              if (*(v59 + 80))
              {
                *v69 = MEMORY[0x1E69E9820];
                *&v69[8] = 0x40000000;
                *&v70 = __OpenIndex_block_invoke_3;
                *(&v70 + 1) = &__block_descriptor_tmp_1080;
                *&v71 = 3;
                analytics_send_event_lazy();
                (*(*(*a1 + 2360) + 80))(*(*(*a1 + 2360) + 144), 0, @"IndexOpenCompact", &__block_literal_global_1086);
              }
            }
          }
        }

        else
        {
          *v69 = MEMORY[0x1E69E9820];
          *&v69[8] = 0x40000000;
          *&v70 = __OpenIndex_block_invoke_2;
          *(&v70 + 1) = &__block_descriptor_tmp_1078;
          *&v71 = v51;
          analytics_send_event_lazy();
          setupAndIssueMergeCleanup(*a1, *(**(*a1 + 1384) + 8 * (*(*(*a1 + 1384) + 8) - 2)), 0);
        }

        v52 = count_UncompactedIndexSet(*(*a1 + 1384), *(*(*a1 + 1384) + 8) - 2);
        if (v52)
        {
          if (gSISystemOnBattery == 1 && (v53 = *(*a1 + 2360)) != 0 && *(v53 + 80))
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = __OpenIndex_block_invoke_5;
            *&buf[24] = &__block_descriptor_tmp_1088;
            v78 = v52;
            analytics_send_event_lazy();
            (*(*(*a1 + 2360) + 80))(*(*(*a1 + 2360) + 144), 0, @"IndexOpenCompact", &__block_literal_global_1091);
          }

          else
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = __OpenIndex_block_invoke_8;
            *&buf[24] = &__block_descriptor_tmp_1095;
            v78 = v52;
            analytics_send_event_lazy();
            setupAndIssueMergeCleanup(*a1, *(**(*a1 + 1384) + 8 * (*(*(*a1 + 1384) + 8) - 2)), 0);
          }
        }
      }

      v54 = CleanupWritableIndexes(*(*a1 + 1384));
      if ((CleanupWritableIndexes(*(*a1 + 1392)) & 1) != 0 || v54)
      {
        SISyncIndex(*a1);
      }
    }

    goto LABEL_66;
  }

  if (v35 == -1 && v28)
  {
    v28(a8);
LABEL_45:
    *__error() = v36;
    goto LABEL_66;
  }

  if (v35 == -1)
  {
    goto LABEL_45;
  }

LABEL_66:
  v55 = threadData[9 * v67 + 1] + 320 * v66;
  *(v55 + 312) = v61;
  v56 = *(v55 + 232);
  if (v56)
  {
    v56(*(v55 + 288));
  }

  dropThreadId(v67, 0, add_explicit + 1);
  v25 = v35;
LABEL_69:
  _si_log_indexes(*a1);
  v57 = *MEMORY[0x1E69E9840];
  return v25;
}

uint64_t si_repair_sizes(uint64_t result)
{
  v60 = *MEMORY[0x1E69E9840];
  if (*(result + 1192))
  {
    v1 = result;
    if ((*(result + 1288) & 1) == 0)
    {
      v2 = *(result + 2360);
      if (v2)
      {
        if (*(v2 + 40))
        {
          v55 = 0;
          result = fd_setDir(*(result + 32), &v55);
          if (result)
          {
            add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
            v4 = setThreadIdAndInfo(*(v1 + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
            v54 = v4;
            v5 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
            v52 = v6;
            v53 = HIDWORD(v4);
            v51 = v7;
            *(v5 + 216) = 0;
            v8 = *(v5 + 312);
            v9 = *(v5 + 224);
            if (v9)
            {
              v9(*(v5 + 288));
            }

            v50 = v54;
            v49 = v53;
            v48 = v52;
            v47 = v51;
            if (_setjmp(v5))
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
              }

              *(v5 + 312) = v8;
              CIOnThreadCleanUpReset(v47);
              dropThreadId(v50, 1, add_explicit + 1);
              CICleanUpReset(v50, v48);
            }

            else
            {
              v31 = v8;
              v10 = *__error();
              v11 = _SILogForLogForCategory(4);
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, "Gathering size data for repair", buf, 2u);
              }

              *__error() = v10;
              v12 = *MEMORY[0x1E695E480];
              alloc = *MEMORY[0x1E695E480];
              Mutable = RLEOIDArrayCreateMutable(*MEMORY[0x1E695E480]);
              v14 = RLEOIDArrayCreateMutable(v12);
              *buf = 0;
              v44 = buf;
              v45 = 0x2000000000;
              v46 = 0;
              v39 = 0;
              v40 = &v39;
              v41 = 0x2000000000;
              v42 = 0;
              v15 = *(v1 + 1392);
              v16 = *(v1 + 1384);
              v32[0] = MEMORY[0x1E69E9820];
              v32[1] = 0x40000000;
              v37 = Mutable;
              v38 = v14;
              v33 = __si_repair_sizes_block_invoke;
              v34 = &unk_1E8191C38;
              v35 = &v39;
              v36 = buf;
              if (v15 && *(v15 + 8))
              {
                v17 = 0;
                while ((v33)(v32, *(*v15 + 8 * v17), 0))
                {
                  if (++v17 >= *(v15 + 8))
                  {
                    goto LABEL_19;
                  }
                }
              }

              else
              {
LABEL_19:
                if (v16 && *(v16 + 8))
                {
                  v18 = 0;
                  do
                  {
                    if (!(v33)(v32, *(*v16 + 8 * v18), 1))
                    {
                      break;
                    }

                    ++v18;
                  }

                  while (v18 < *(v16 + 8));
                }
              }

              v19 = *(v44 + 3);
              v20 = si_repair_size_for_oids(v1);
              CFRelease(v14);
              v21 = v40[3];
              v22 = si_repair_size_for_oids(v1);
              CFRelease(Mutable);
              v23 = CFStringCreateWithCString(alloc, sysVersionCStr, 0x8000100u);
              si_set_property(v1, @"kSIRepairSizes", v23, 1, 0);
              CFRelease(v23);
              v24 = *__error();
              v25 = _SILogForLogForCategory(4);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *v56 = 134218240;
                v57 = v20;
                v58 = 2048;
                v59 = v22;
                _os_log_impl(&dword_1C278D000, v25, OS_LOG_TYPE_DEFAULT, "Gathering size data for repair (%lld, %lld)", v56, 0x16u);
              }

              *__error() = v24;
              v26 = threadData[9 * v50 + 1] + 320 * v49;
              *(v26 + 312) = v31;
              v27 = *(v26 + 232);
              if (v27)
              {
                v27(*(v26 + 288));
              }

              dropThreadId(v50, 0, add_explicit + 1);
              _Block_object_dispose(&v39, 8);
              _Block_object_dispose(buf, 8);
            }

            v28 = v55;
            result = MEMORY[0x1C6921200](v55);
            if ((v28 & 0x80000000) == 0)
            {
              result = close(v28);
            }
          }
        }
      }
    }
  }

  v29 = *MEMORY[0x1E69E9840];
  return result;
}

void setupAndIssueMergeCleanup(uint64_t a1, int a2, NSObject *a3)
{
  v37 = a2;
  v38 = 0;
  v6 = si_needsVaccuum(*(a1 + 1384), &v37, &v38);
  v7 = *(a1 + 1384);
  v8 = *(v7 + 2);
  if (!v8)
  {
    return;
  }

  v9 = v6;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = (v8 - 1);
  while (1)
  {
    v16 = *(*v7 + 8 * v15);
    if (*(v16 + 56) != a2)
    {
      v16 = v11;
      goto LABEL_8;
    }

    v17 = atomic_load((v16 + 36));
    if ((v17 & 3) == 0 && *(v16 + 15203) != 1)
    {
      break;
    }

    v13 = *(v16 + 40);
    v10 = 1;
    v14 = v15;
    v12 = v15;
    v11 = *(*v7 + 8 * v15);
LABEL_8:
    --v15;
    if (!--v8)
    {
      if (!v10)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  v14 = v15;
  v12 = v15;
  if (!v10)
  {
    return;
  }

LABEL_10:
  v18 = *(v7 + 2);
  v19 = *v7;
  if (v18)
  {
    v20 = v18 - 1;
    while (*(*(v19 + 8 * v20) + 40) != v13)
    {
      if (!v20--)
      {
        goto LABEL_26;
      }
    }

    v22 = 0;
    v14 = v20 + 1;
    v23 = 1;
    while (v20 + v22 != -1)
    {
      v24 = *(*v7 + 8 * (v20 + v22));
      if (*(v24 + 40) == v13 || *(v24 + 52) == *(v16 + 52) || (v25 = atomic_load((v24 + 36)), (v25 & 4) == 0))
      {
        ++v23;
        v14 = v20 + v22;
      }

      v26 = atomic_load((v24 + 36));
      if ((v26 & 3) == 0 && *(v24 + 15203) != 1)
      {
        break;
      }

      --v22;
    }

    if (v23)
    {
      v19 = *v7;
      goto LABEL_26;
    }
  }

  else
  {
LABEL_26:
    v27 = v12 + 1;
    v28 = *(v19 + 8 * v14);
    if (v28)
    {
      v29 = v27 == v14;
    }

    else
    {
      v29 = 1;
    }

    if (!v29)
    {
      v30 = *(v28 + 56);
      v31 = v27 - v14;
      v32 = malloc_type_calloc(1uLL, 0x460uLL, 0x1070040C187FD8AuLL);
      *v32 = a1;
      v32[16] = 1;
      v32[1041] = v9;
      *(v32 + 2) = v30;
      *(v32 + 3) = v31;
      v32[1042] = 0;
      *(v32 + 131) = "void setupAndIssueMergeCleanup(SIRef, int32_t, _Bool, xpc_activity_t, _Bool *, dispatch_group_t)";
      *(v32 + 274) = 9;
      v32[1100] = 1;
      __strlcpy_chk();
      v33 = v32 + 1064;
      si_power_info_init((v32 + 1064), 0, 0, a3);
      if (!*(v32 + 136) && !*v33)
      {
        v35 = *(a1 + 2360);
        if (v35)
        {
          v36 = *(v35 + 64);
          if (v36)
          {
            *v33 = v36(*(v35 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 9873, "void setupAndIssueMergeCleanup(SIRef, int32_t, _Bool, xpc_activity_t, _Bool *, dispatch_group_t)");
          }
        }
      }

      v34 = *(a1 + 1064);

      si_enqueue_work(v34, si_mergeIndex, v32);
    }
  }
}

uint64_t count_UncompactedIndexSet(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (v2 <= a2)
  {
    return 0;
  }

  v3 = 0;
  if ((a2 & 0x80000000) == 0)
  {
    v4 = 1;
    v5 = a2;
    do
    {
      v6 = *(*a1 + 8 * v5);
      v7 = atomic_load((v6 + 36));
      if ((v7 & 3) == 0 && *(v6 + 15203) != 1)
      {
        break;
      }

      v8 = atomic_load((*(*a1 + 8 * v5) + 36));
      if ((v8 & 4) == 0)
      {
        v3 = v4;
      }

      ++v4;
    }

    while (v5-- > 0);
    v2 = *(a1 + 8);
  }

  if (v2 >= v3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t CleanupWritableIndexes(uint64_t a1)
{
  if (*(a1 + 8) < 2u)
  {
    v3 = 0;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(*a1 + 8 * v2);
      v5 = atomic_load((v4 + 36));
      if ((v5 & 3) == 0 && (*(v4 + 15203) & 1) == 0)
      {
        _CIDisableUpdates(*(*a1 + 8 * v2));
        v3 = 1;
      }

      v6 = v2 + 2;
      ++v2;
    }

    while (v6 < *(a1 + 8));
  }

  return v3 & 1;
}

void __OpenIndex_block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t))
{
  if (a2)
  {
    v5 = *(a2 + 1104);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __OpenIndex_block_invoke_7;
    v6[3] = &__block_descriptor_tmp_1093;
    v6[4] = a2;
    v6[5] = a5;
    si_enqueue_block(v5, v6);
  }
}

void __OpenIndex_block_invoke_7(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1384);
  if (count_UncompactedIndexSet(v2, *(v2 + 8) - 2))
  {
    v3 = *(*v2 + 8 * (*(v2 + 8) - 2));
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    setupAndIssueMergeCleanup(v4, v3, v5);
  }
}

void __OpenIndex_block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 1384);
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4 >= 3 && count_IndexSet(v3, v4 - 2, 1) >= 3)
      {
        v5 = *(*v3 + 8 * (*(v3 + 8) - 2));

        setupAndIssueMergeCleanup(a2, v5, 0);
      }
    }
  }
}

uint64_t __si_repair_sizes_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v5 = setThreadIdAndInfo(*(a2 + 64), sIndexExceptionCallbacks, a2, 0x20000000, add_explicit + 1);
    *buf = v5;
    v6 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
    v32 = HIDWORD(v5);
    v31 = __PAIR64__(v7, v8);
    *(v6 + 216) = 0;
    v9 = *(v6 + 312);
    v10 = *(v6 + 224);
    if (v10)
    {
      v10(*(v6 + 288));
    }

    v30 = *buf;
    v29 = v32;
    v28 = v31;
    if (_setjmp(v6))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v27, 2u);
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

      CIOnThreadCleanUpReset(v28);
      dropThreadId(v30, 1, add_explicit + 1);
      CICleanUpReset(v30, HIDWORD(v28));
    }

    else
    {
      v12 = *(a2 + 14432);
      if (v12)
      {
        v26 = *(a2 + 14408);
        if (v26)
        {
          v13 = *(a2 + 68);
          if (v13 >= 2)
          {
            v14 = 6;
            v15 = *(a2 + 45);
            for (i = 1; i != v13; ++i)
            {
              if (v15)
              {
                v17 = *(v12 + i);
              }

              else
              {
                v17 = (*(v12 + (((3435973837u * i) >> 32) & 0xFFFFFFFC)) >> (v14 - 30 * (i / 5))) & 0x3F;
              }

              v18 = v17 & 0xFFFFFFDF;
              if (v18)
              {
                v19 = v18 == 17;
                v20 = 56;
                if (v19)
                {
                  v20 = 48;
                }

                v21 = *(a1 + v20);
                if (v19)
                {
                  v22 = 32;
                }

                else
                {
                  v22 = 40;
                }

                SIValueSet<unsigned long long>::SIValueSetInsert((v21 + 216), *(v26 + 8 * i));
                ++*(*(*(a1 + v22) + 8) + 24);
              }

              v14 += 6;
            }
          }
        }
      }

      v23 = threadData[9 * v30 + 1] + 320 * v29;
      *(v23 + 312) = v9;
      v24 = *(v23 + 232);
      if (v24)
      {
        v24(*(v23 + 288));
      }

      dropThreadId(v30, 0, add_explicit + 1);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }

  return 1;
}

uint64_t si_repair_size_for_oids(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v6 = *MEMORY[0x1E69E9840];
  if (v2)
  {
    v3 = *(v1 + 2360);
    RLEOIDIteratorCreate(v2);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

void SICalculateSize(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v4 = *(a1 + 1016);
  if (v4)
  {
    v6 = malloc_type_malloc(0x18uLL, 0xA00402214FCE6uLL);
    v6[2] = a3;
    *v6 = a1;
    v6[1] = a2;

    si_enqueue_work(v4, si_get_size, v6);
  }

  else
  {

    a2(a3, 0);
  }
}

void si_get_size(void *a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = 0;
    goto LABEL_25;
  }

  v4 = *a1;
  v5 = *(*a1 + 1392);
  v6 = *(*a1 + 1384);
  if (v5 && *(v5 + 8) >= 1)
  {
    v7 = 0;
    v3 = 0;
    do
    {
      v3 += ContentIndexCalculateSize(*(*v5 + 8 * v7++), 6);
    }

    while (v7 < *(v5 + 8));
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  if (*(v6 + 8) >= 1)
  {
    v8 = 0;
    do
    {
      v3 += ContentIndexCalculateSize(*(*v6 + 8 * v8++), 6);
    }

    while (v8 < *(v6 + 8));
  }

LABEL_13:
  v9 = v4[149];
  if (v9)
  {
    if (*v9 != 1685287992)
    {
      v18 = *__error();
      v19 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = *v9;
        v24.st_dev = 136315650;
        *&v24.st_mode = "db_get_size";
        WORD2(v24.st_ino) = 1024;
        *(&v24.st_ino + 6) = 258;
        HIWORD(v24.st_uid) = 1024;
        v24.st_gid = v20;
        _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", &v24, 0x18u);
      }

      *__error() = v18;
      v21 = __si_assert_copy_extra_332();
      v22 = v21;
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 258, v23);
      free(v22);
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    memset(&v24, 0, sizeof(v24));
    v10 = *(v9 + 848);
    if (!v10)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v11 = fstatat(*(v10 + 44), *(v10 + 72), &v24, 2048);
      v12 = g_prot_error_callback;
      if (v11 != -1 || g_prot_error_callback == 0)
      {
        break;
      }

      v14 = *(v10 + 40);
      v15 = __error();
      if (((*(v12 + 16))(v12, v14, *v15, 8) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if (!v11)
    {
      v16 = 2 * v24.st_size;
    }

    else
    {
LABEL_23:
      v16 = 0;
    }

    v3 += v16;
  }

LABEL_25:
  (a1[1])(a1[2], v3);
  v17 = *MEMORY[0x1E69E9840];

  free(a1);
}

uint64_t doFastFlushIndex(uint64_t a1)
{
  v59 = *MEMORY[0x1E69E9840];
  v2 = getiopolicy_np(0, 1);
  setiopolicy_np(0, 1, 1);
  v52 = 1;
  v3 = *(a1 + 2360);
  v48 = vextq_s8(*v3, *v3, 8uLL);
  v4 = *(a1 + 1192);
  v49 = v3[9].i64[0];
  v50 = v4;
  v5 = *(a1 + 1392);
  v51 = a1;
  v53 = v5;
  v6 = *(a1 + 1384);
  v54 = v6;
  valuePtr = *(a1 + 2136);
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (v7)
  {
    v8 = v7;
    si_set_property(a1, @"ConsumedJournalSerialNumber", v7, 1, 0);
    CFRelease(v8);
  }

  pthread_mutex_lock((a1 + 1568));
  v46 = 0;
  if (fd_setDir(*(a1 + 32), &v46))
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v10 = setThreadIdAndInfo(*(a1 + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
    v45 = v10;
    v11 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
    v43 = v12;
    v44 = HIDWORD(v10);
    v42 = v13;
    *(v11 + 216) = 0;
    v14 = *(v11 + 312);
    v15 = *(v11 + 224);
    if (v15)
    {
      v15(*(v11 + 288));
    }

    if (_setjmp(v11))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v11 + 312) = v14;
      CIOnThreadCleanUpReset(v42);
      dropThreadId(v45, 1, add_explicit + 1);
      CICleanUpReset(v45, v43);
    }

    else
    {
      v16 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v17 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(a1 + 1192), 0x40000000, v16 + 1);
      v41 = v17;
      v39 = v18;
      v40 = HIDWORD(v17);
      v38 = v19;
      v20 = threadData[9 * v17 + 1] + 320 * HIDWORD(v17);
      *(v20 + 216) = 0;
      v37 = *(v20 + 312);
      v21 = *(v20 + 224);
      if (v21)
      {
        v21(*(v20 + 288));
      }

      if (_setjmp(v20))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
        }

        *(v20 + 312) = v37;
        CIOnThreadCleanUpReset(v38);
        dropThreadId(v41, 1, v16 + 1);
        CICleanUpReset(v41, v39);
      }

      else
      {
        _si_store_property_cache(a1, 0, 1);
        si_storesizes(a1, 0);
        v22 = *(a1 + 2360);
        if (v22)
        {
          v23 = *(v22 + 48);
          if (v23)
          {
            v23(*(v22 + 144));
          }
        }

        v24 = *(a1 + 6592);
        *buf = xmmword_1F427BAA0;
        *&buf[16] = *&off_1F427BAB0;
        v56 = xmmword_1F427BAC0;
        v57 = *off_1F427BAD0;
        v58 = &v48;
        v25 = _ContentIndexSyncIndexBulk(a1 + 1200, v5, v6, 4, 0, buf, v24, 0, 0);
        v26 = *(a1 + 2360);
        if (v26)
        {
          v27 = *(v26 + 56);
          if (v27)
          {
            v27(*(v26 + 144));
          }
        }

        if (v25)
        {
          v28 = *__error();
          v29 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "doFastFlushIndex";
            *&buf[12] = 1024;
            *&buf[14] = 2105;
            *&buf[18] = 1024;
            *&buf[20] = v25;
            _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: ContentIndexSyncIndexBulk err:%d", buf, 0x18u);
          }

          *__error() = v28;
        }

        v30 = threadData[9 * v41 + 1] + 320 * v40;
        *(v30 + 312) = v37;
        v31 = *(v30 + 232);
        if (v31)
        {
          v31(*(v30 + 288));
        }

        dropThreadId(v41, 0, v16 + 1);
      }

      v32 = threadData[9 * v45 + 1] + 320 * v44;
      *(v32 + 312) = v14;
      v33 = *(v32 + 232);
      if (v33)
      {
        v33(*(v32 + 288));
      }

      dropThreadId(v45, 0, add_explicit + 1);
    }

    v34 = v46;
    MEMORY[0x1C6921200](v46);
    if ((v34 & 0x80000000) == 0)
    {
      close(v34);
    }
  }

  pthread_mutex_unlock((a1 + 1568));
  result = setiopolicy_np(0, 1, v2);
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SIIndexInactive_block_invoke()
{
  if (g_fd_list)
  {
    return _fd_close_inactive(-1, 0, 0, 1);
  }

  return result;
}

void SIFetchClientsMetaInfo(uint64_t a1, uint64_t a2)
{
  v4 = bundleIdHash("com.apple.searchd", 18) << 32;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5 = *(a1 + 1192);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __SIFetchClientsMetaInfo_block_invoke;
  v6[3] = &unk_1E8191170;
  v6[4] = &v15;
  v6[5] = &v11;
  v6[6] = &v7;
  v6[7] = a1;
  db_iterate_objects_in_range(v5, v4, v4 + 0x100000000, 0, v6);
  (*(a2 + 16))(a2, *(v16 + 6), *(v12 + 6), *(v8 + 6));
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
}

uint64_t __SIFetchClientsMetaInfo_block_invoke(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = 0;
  v4 = a1[7];
  v14[0] = *(v4 + 2064);
  v14[1] = 0;
  if (!db_get_field_by_id(*(v4 + 1192), a2, v14, &v13, &v12))
  {
    string_for_id = v12;
    if ((v13[1] & 0x10) != 0)
    {
      string_for_id = db_get_string_for_id(*(a1[7] + 1192), *v12);
    }

    if (string_for_id && !strcmp(string_for_id, "com.apple.searchd"))
    {
      v8 = 0;
      ++*(*(a1[4] + 8) + 24);
      v11 = 0;
      __s2 = 0;
      while (db_next_field(*(a1[7] + 1192), a2, 0, &v11, &__s2, &v13) == 35)
      {
        if (!strncmp("_kMDItemStateInfo_", __s2, 0x11uLL))
        {
          v8 = 1;
          v9 = 1;
          if (*v13 == 14)
          {
            goto LABEL_13;
          }
        }
      }

      v9 = 0;
LABEL_13:
      *(*(a1[5] + 8) + 24) += v9;
      *(*(a1[6] + 8) + 24) += v8;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return 1;
}

void si_setstorecookie(uint64_t a1, CFTypeRef cf)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1440);
  if (!v4 || !CFEqual(v4, cf))
  {
    v5 = CFRetain(cf);
    *(a1 + 1440) = v5;
    *(a1 + 1424) = CFUUIDGetUUIDBytes(v5);
    if (*(a1 + 1192))
    {
      if ((*(a1 + 1288) & 1) == 0)
      {
        indexmetadata = si_create_indexmetadata(a1, 1);
        v32 = indexmetadata;
        if (indexmetadata)
        {
          v7 = indexmetadata;
          v30 = 0;
          v31 = 0;
          add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
          v9 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(a1 + 1192), 0x40000000, add_explicit + 1);
          v29 = v9;
          v10 = threadData[9 * v9 + 1] + 320 * HIDWORD(v9);
          v27 = v11;
          v28 = HIDWORD(v9);
          v26 = v12;
          *(v10 + 216) = 0;
          v13 = *(v10 + 312);
          v14 = *(v10 + 224);
          if (v14)
          {
            v14(*(v10 + 288));
          }

          if (_setjmp(v10))
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
            }

            *(v10 + 312) = v13;
            CIOnThreadCleanUpReset(v26);
            dropThreadId(v29, 1, add_explicit + 1);
            CICleanUpReset(v29, v27);
            v15 = v7;
          }

          else
          {
            if (db_get_field(*(a1 + 1192), v7, "kMDStoreUUID", &v30, &v31) || *(v30 + 8) != 16 || (*(a1 + 1424) == *v31 ? (v17 = *(a1 + 1432) == v31[1]) : (v17 = 0), !v17))
            {
              updated = db_add_field(*(a1 + 1192), &v32, 1u, "kMDStoreUUID", 0, 0x108u, 14, (a1 + 1424), v16, 16);
              if (updated || (updated = db_update_obj(*(a1 + 1192), v32, 12)) != 0)
              {
                v19 = updated;
                v20 = *__error();
                v21 = _SILogForLogForCategory(7);
                v22 = dword_1EBF46AE8 < 3;
                if (os_log_type_enabled(v21, (dword_1EBF46AE8 < 3)))
                {
                  *buf = 67109120;
                  v34 = v19;
                  _os_log_impl(&dword_1C278D000, v21, v22, "*warn* Failed setting store cookie (%d)", buf, 8u);
                }

                *__error() = v20;
              }

              else
              {
                db_dirty_datastore(*(a1 + 1192));
              }
            }

            v23 = threadData[9 * v29 + 1] + 320 * v28;
            *(v23 + 312) = v13;
            v24 = *(v23 + 232);
            if (v24)
            {
              v24(*(v23 + 288));
            }

            dropThreadId(v29, 0, add_explicit + 1);
            v15 = v32;
          }

          free(v15);
        }
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t SIProcessTerminating()
{
  v0 = 0;
  v12[1] = *MEMORY[0x1E69E9840];
  atomic_compare_exchange_strong_explicit(&gTerminating, &v0, 1u, memory_order_relaxed, memory_order_relaxed);
  gProcessTerminating = 1;
  pthread_mutex_lock(&schlock);
  if (!gShutdownGroup)
  {
    gShutdownGroup = dispatch_group_create();
    if (global_schedulers[0])
    {
      Count = CFDictionaryGetCount(global_schedulers[0]);
      if (Count)
      {
        v4 = Count;
        v5 = 8 * Count;
        MEMORY[0x1EEE9AC00](Count);
        v6 = (v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
        bzero(v6, v5);
        MEMORY[0x1EEE9AC00](v7);
        v8 = v6;
        bzero(v6, v5);
        CFDictionaryGetKeysAndValues(global_schedulers[0], v6, v6);
        if (v4 >= 1)
        {
          do
          {
            dispatch_group_enter(gShutdownGroup);
            v9 = *v8++;
            child_queue = si_create_child_queue(v9);
            v11 = *v6++;
            si_enqueue_work_with_qos(child_queue, 25, si_spindle_shutdown, v11);
            --v4;
          }

          while (v4);
        }
      }
    }
  }

  result = pthread_mutex_unlock(&schlock);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void si_spindle_shutdown(uint64_t a1, int a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    goto LABEL_2;
  }

  pthread_mutex_lock(&schlock);
  if (!gAllIndexes)
  {
    pthread_mutex_unlock(&schlock);
    goto LABEL_2;
  }

  Count = CFSetGetCount(gAllIndexes);
  MEMORY[0x1EEE9AC00](Count);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v6, v5);
  CFSetGetValues(gAllIndexes, v6);
  if (Count < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *&v6[8 * v7];
      if (*(v9 + 1404) == a1)
      {
        *&v6[8 * v8] = v9;
        CFSetRemoveValue(gAllIndexes, *&v6[8 * v7]);
        ++v8;
      }

      ++v7;
    }

    while (Count != v7);
    if (v8)
    {
      v10 = malloc_type_malloc(8 * v8, 0x80040B8603338uLL);
      memcpy(v10, v6, 8 * v8);
      goto LABEL_16;
    }
  }

  v10 = 0;
LABEL_16:
  pthread_mutex_unlock(&schlock);
  if (v10)
  {
    _SIShutdownIndexBulk(v10, v8);
    free(v10);
  }

LABEL_2:
  if (gShutdownGroup)
  {
    dispatch_group_leave(gShutdownGroup);
  }

  v2 = *MEMORY[0x1E69E9840];
}

int *_SIShutdownIndexBulk(int *result, uint64_t a2)
{
  v164 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v146 = v132;
    v143 = result;
    v2 = *result;
    v3 = *(*result + 1404);
    v145 = v3;
    v4 = *(v2 + 6584);
    MEMORY[0x1EEE9AC00](result);
    v6 = &v132[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v8 = 8 * v7;
    MEMORY[0x1EEE9AC00](v9);
    v10 = &v132[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v144 = v11;
    v12 = 104 * v11;
    MEMORY[0x1EEE9AC00](v13);
    v15 = &v132[-v14];
    bzero(v6, v16);
    bzero(v10, v8);
    bzero(v15, v12);
    Current = CFAbsoluteTimeGetCurrent();
    v18 = *__error();
    v19 = _SILogForLogForCategory(11);
    v20 = 2 * (dword_1EBF46AF8 < 4);
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 67109376;
      *&buf[4] = v145;
      *&buf[8] = 1024;
      *&buf[10] = v144;
      _os_log_impl(&dword_1C278D000, v19, v20, "shut down starting for spindle:%d count:%d", buf, 0xEu);
    }

    v21 = v6;
    v140 = v15;
    *__error() = v18;
    if ((v4 & 0x1000000) != 0)
    {
      v45 = v145;
      v47 = v143;
      v46 = v144;
      if (!exc_pthread_key)
      {
        pthread_key_create(&exc_pthread_key, 0);
      }

      v156[0] = MEMORY[0x1E69E9820];
      v156[1] = 0x40000000;
      v156[2] = ___SIShutdownIndexBulk_block_invoke;
      v156[3] = &__block_descriptor_tmp_1200;
      v157 = v45;
      v156[4] = v47;
      v156[5] = v10;
      v156[6] = v140;
      v156[7] = v46;
      v156[8] = v21;
      dispatch_apply(v46, 0, v156);
      v48 = *__error();
      v49 = _SILogForLogForCategory(11);
      v50 = 2 * (dword_1EBF46AF8 < 4);
      if (!os_log_type_enabled(v49, v50))
      {
        goto LABEL_100;
      }

      v51 = CFAbsoluteTimeGetCurrent();
      *buf = 67109376;
      *&buf[4] = v45;
      *&buf[8] = 2048;
      *&buf[10] = v51 - Current;
    }

    else
    {
      v23 = v143;
      v22 = v144;
      if (v144 >= 1)
      {
        v24 = 0;
        do
        {
          if (v3 != *(*v23 + 1404))
          {
            v128 = __si_assert_copy_extra_661(-1);
            v129 = v128;
            v130 = "";
            if (v128)
            {
              v130 = v128;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 16501, "indexSpindleId==si_indices[0]->indexSpindleId", v130);
            free(v129);
            if (__valid_fs(-1))
            {
              v131 = 2989;
            }

            else
            {
              v131 = 3072;
            }

            *v131 = -559038737;
            abort();
          }

          v25 = v23[v24];
          if ((*(v25 + 1288) & 1) == 0)
          {
            *&v10[8 * v24] = _SIShutdownSetup(v25);
          }

          ++v24;
        }

        while (v22 != v24);
      }

      v139 = v15;
      v141 = v10;
      v26 = *__error();
      v27 = _SILogForLogForCategory(11);
      v28 = 2 * (dword_1EBF46AF8 < 4);
      if (os_log_type_enabled(v27, v28))
      {
        v29 = CFAbsoluteTimeGetCurrent();
        *buf = 67109376;
        *&buf[4] = v145;
        *&buf[8] = 2048;
        *&buf[10] = v29 - Current;
        _os_log_impl(&dword_1C278D000, v27, v28, "shutdown setup complete for spindle:%d after %f seconds.", buf, 0x12u);
      }

      *__error() = v26;
      v30 = v144;
      v142 = v21;
      if (v144 < 1)
      {
        v44 = 0;
      }

      else
      {
        v136 = 72;
        v134 = 320;
        v31 = v141;
        v32 = v143;
        v33 = 0;
        do
        {
          v34 = *v31;
          if (*v31)
          {
            *buf = 0;
            add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
            v155 = 0;
            v154 = 0;
            v152 = 0;
            v153 = 0;
            v36 = setThreadIdAndInfo(*(*v32 + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
            v154 = HIDWORD(v36);
            v155 = v36;
            v152 = v38;
            v153 = v37;
            v39 = *(&threadData[1] + v36 * v136) + HIDWORD(v36) * v134;
            *(v39 + 216) = 0;
            v40 = *(v39 + 312);
            v41 = *(v39 + 224);
            if (v41)
            {
              v41(*(v39 + 288));
            }

            v151 = v155;
            v150 = v154;
            v149 = v153;
            v148 = v152;
            if (_setjmp(v39))
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v147[0] = 0;
                _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v147, 2u);
              }

              *(v39 + 312) = v40;
              CIOnThreadCleanUpReset(v148);
              dropThreadId(v151, 1, add_explicit + 1);
              CICleanUpReset(v151, v149);
            }

            else
            {
              _CISyncContextSync(v34, buf);
              v42 = threadData[9 * v151 + 1] + 320 * v150;
              *(v42 + 312) = v40;
              v43 = *(v42 + 232);
              if (v43)
              {
                v43(*(v42 + 288));
              }

              dropThreadId(v151, 0, add_explicit + 1);
            }

            if (!v33)
            {
              v33 = *buf;
            }
          }

          v44 = v33;
          ++v32;
          ++v31;
          --v30;
        }

        while (v30);
      }

      v52 = v44;
      v53 = *__error();
      v54 = _SILogForLogForCategory(11);
      v55 = 2 * (dword_1EBF46AF8 < 4);
      if (os_log_type_enabled(v54, v55))
      {
        v56 = CFAbsoluteTimeGetCurrent();
        *buf = 67109376;
        *&buf[4] = v145;
        *&buf[8] = 2048;
        *&buf[10] = v56 - Current;
        _os_log_impl(&dword_1C278D000, v54, v55, "shutdown sync complete for spindle:%d after %f seconds.", buf, 0x12u);
      }

      *__error() = v53;
      v57 = v144;
      v58 = v141;
      v59 = v139;
      if (v52)
      {
        fd_sync(v52, 1);
        v60 = *__error();
        v61 = _SILogForLogForCategory(11);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          v62 = CFAbsoluteTimeGetCurrent();
          *buf = 67109376;
          *&buf[4] = v145;
          *&buf[8] = 2048;
          *&buf[10] = v62 - Current;
          _os_log_impl(&dword_1C278D000, v61, OS_LOG_TYPE_DEFAULT, "shutdown sync-fsync for spindle:%d after %f seconds.", buf, 0x12u);
        }

        *__error() = v60;
      }

      if (v57 < 1)
      {
        v74 = 0;
      }

      else
      {
        v63 = &v59[104 * v57];
        v64 = 0;
        v138 = v63;
        v137 = 72;
        v135 = 320;
        v65 = v143;
        do
        {
          v66 = *v58;
          if (*v58)
          {
            *buf = 0;
            v67 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
            v155 = 0;
            v154 = 0;
            v152 = 0;
            v153 = 0;
            v68 = setThreadIdAndInfo(*(*v65 + 32), sFdExceptionCallbacks, 0, 1, v67 + 1);
            v154 = HIDWORD(v68);
            v155 = v68;
            v152 = v70;
            v153 = v69;
            v71 = *(&threadData[1] + v68 * v137) + HIDWORD(v68) * v135;
            *(v71 + 216) = 0;
            v72 = *(v71 + 312);
            v73 = *(v71 + 224);
            if (v73)
            {
              v73(*(v71 + 288));
            }

            v151 = v155;
            v150 = v154;
            v149 = v153;
            v148 = v152;
            if (_setjmp(v71))
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v147[0] = 0;
                _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v147, 2u);
              }

              *(v71 + 312) = v72;
              CIOnThreadCleanUpReset(v148);
              dropThreadId(v151, 1, v67 + 1);
              CICleanUpReset(v151, v149);
            }

            else
            {
              _CISyncContextCommitData(v66, buf, v138);
              v75 = threadData[9 * v151 + 1] + 320 * v150;
              *(v75 + 312) = v72;
              v76 = *(v75 + 232);
              if (v76)
              {
                v76(*(v75 + 288));
              }

              dropThreadId(v151, 0, v67 + 1);
            }

            if (v64)
            {
              v74 = v64;
            }

            else
            {
              v74 = *buf;
            }
          }

          else
          {
            v74 = v64;
          }

          ++v65;
          ++v58;
          v64 = v74;
          --v57;
        }

        while (v57);
      }

      v77 = *__error();
      v78 = _SILogForLogForCategory(11);
      v79 = 2 * (dword_1EBF46AF8 < 4);
      if (os_log_type_enabled(v78, v79))
      {
        v80 = CFAbsoluteTimeGetCurrent();
        *buf = 67109376;
        *&buf[4] = v145;
        *&buf[8] = 2048;
        *&buf[10] = v80 - Current;
        _os_log_impl(&dword_1C278D000, v78, v79, "shutdown commit data complete for spindle:%d after %f seconds.", buf, 0x12u);
      }

      *__error() = v77;
      v81 = v144;
      if (v74)
      {
        fd_sync(v74, 1);
        v82 = *__error();
        v83 = _SILogForLogForCategory(11);
        v84 = 2 * (dword_1EBF46AF8 < 4);
        if (os_log_type_enabled(v83, v84))
        {
          v85 = CFAbsoluteTimeGetCurrent();
          *buf = 67109376;
          *&buf[4] = v145;
          *&buf[8] = 2048;
          *&buf[10] = v85 - Current;
          _os_log_impl(&dword_1C278D000, v83, v84, "shutdown commit-fsync for spindle:%d after %f seconds.", buf, 0x12u);
        }

        *__error() = v82;
      }

      if (v81 >= 1)
      {
        v133 = 72;
        v86 = v141;
        v88 = v143;
        v87 = v144;
        do
        {
          v89 = *v86;
          if (*v86)
          {
            v90 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
            *buf = 0;
            v155 = 0;
            v154 = 0;
            v153 = 0;
            v91 = setThreadIdAndInfo(*(*v88 + 32), sFdExceptionCallbacks, 0, 1, v90 + 1);
            v155 = HIDWORD(v91);
            *buf = v91;
            v154 = v92;
            v153 = v93;
            v94 = *(&threadData[1] + v91 * v133) + 320 * HIDWORD(v91);
            *(v94 + 216) = 0;
            v95 = *(v94 + 312);
            v96 = *(v94 + 224);
            if (v96)
            {
              v96(*(v94 + 288));
            }

            v152 = *buf;
            v151 = v155;
            v150 = v154;
            v149 = v153;
            if (_setjmp(v94))
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                LOWORD(v148) = 0;
                _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v148, 2u);
              }

              *(v94 + 312) = v95;
              CIOnThreadCleanUpReset(v149);
              dropThreadId(v152, 1, v90 + 1);
              CICleanUpReset(v152, v150);
            }

            else
            {
              _CISyncContextCommitHeader(v89);
              v97 = threadData[9 * v152 + 1] + 320 * v151;
              *(v97 + 312) = v95;
              v98 = *(v97 + 232);
              if (v98)
              {
                v98(*(v97 + 288));
              }

              dropThreadId(v152, 0, v90 + 1);
            }
          }

          ++v88;
          ++v86;
          --v87;
        }

        while (v87);
      }

      v99 = *__error();
      v100 = _SILogForLogForCategory(11);
      v101 = 2 * (dword_1EBF46AF8 < 4);
      if (os_log_type_enabled(v100, v101))
      {
        v102 = CFAbsoluteTimeGetCurrent();
        *buf = 67109376;
        *&buf[4] = v145;
        *&buf[8] = 2048;
        *&buf[10] = v102 - Current;
        _os_log_impl(&dword_1C278D000, v100, v101, "shutdown commit header complete for spindle:%d after %f seconds.", buf, 0x12u);
      }

      *__error() = v99;
      v103 = v144;
      v104 = v142;
      if (v144 >= 1)
      {
        v106 = v140;
        v105 = v141;
        v107 = v144;
        do
        {
          v108 = *v105;
          if (*v105)
          {
            if (!*(v108 + 168))
            {
              v109 = *(v108 + 72);
              if (v109)
              {
                if (CIDocCountsNonEmpty(v106))
                {
                  v110 = *(v108 + 80);
                  v111 = *(v106 + 5);
                  v161 = *(v106 + 4);
                  v162 = v111;
                  v163 = *(v106 + 12);
                  v112 = *(v106 + 1);
                  *buf = *v106;
                  *&buf[16] = v112;
                  v113 = *(v106 + 3);
                  v159 = *(v106 + 2);
                  v160 = v113;
                  v109(v110, buf);
                }
              }
            }
          }

          v106 += 104;
          ++v105;
          --v107;
        }

        while (v107);
        v114 = v141;
        v104 = v142;
        v103 = v144;
        v115 = v144;
        do
        {
          if (*v114)
          {
            _CISyncContextDestroy(*v114);
          }

          ++v114;
          --v115;
        }

        while (v115);
      }

      v116 = *__error();
      v117 = _SILogForLogForCategory(11);
      v118 = 2 * (dword_1EBF46AF8 < 4);
      if (os_log_type_enabled(v117, v118))
      {
        v119 = CFAbsoluteTimeGetCurrent();
        *buf = 67109376;
        *&buf[4] = v145;
        *&buf[8] = 2048;
        *&buf[10] = v119 - Current;
        _os_log_impl(&dword_1C278D000, v117, v118, "shut down complete for spindle:%d after %f seconds.", buf, 0x12u);
      }

      *__error() = v116;
      if (v103 >= 1)
      {
        v120 = v143;
        v121 = v104;
        v122 = v103;
        do
        {
          v123 = v122;
          v124 = v121;
          v125 = v120 + 1;
          _SIShutdownComplete(*v120);
          *v124 = 0;
          v120 = v125;
          v121 = v124 + 1;
          v122 = v123 - 1;
        }

        while (v123 != 1);
      }

      v48 = *__error();
      v49 = _SILogForLogForCategory(11);
      v50 = 2 * (dword_1EBF46AF8 < 4);
      if (!os_log_type_enabled(v49, v50))
      {
        goto LABEL_100;
      }

      v126 = CFAbsoluteTimeGetCurrent();
      *buf = 67109376;
      *&buf[4] = v145;
      *&buf[8] = 2048;
      *&buf[10] = v126 - Current;
    }

    _os_log_impl(&dword_1C278D000, v49, v50, "shut down complete for spindle:%d after %f seconds.", buf, 0x12u);
LABEL_100:
    result = __error();
    *result = v48;
  }

  v127 = *MEMORY[0x1E69E9840];
  return result;
}

void *_SIShutdownSetup(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  if (a1 && sContactsIndex == a1)
  {
    sContactsIndex = 0;
  }

  bzero(v63, 0x400uLL);
  v2 = fcntl(*(a1 + 32), 50, v63);
  if (v63[0])
  {
    v3 = v2 < 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v63;
  }

  v5 = *__error();
  v6 = _SILogForLogForCategory(0);
  v7 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(a1 + 32);
    *buf = 67109378;
    *&buf[4] = v8;
    *&buf[8] = 2080;
    *&buf[10] = v4;
    _os_log_impl(&dword_1C278D000, v6, v7, "Index shut down starting for index at %d %s.", buf, 0x12u);
  }

  *__error() = v5;
  Current = CFAbsoluteTimeGetCurrent();
  os_unfair_lock_lock((a1 + 2224));
  v10 = CFAbsoluteTimeGetCurrent();
  activityJournalWriteVInt64(a1 + 2192, 35, v10);
  os_unfair_lock_unlock((a1 + 2224));
  *(a1 + 2428) = 1;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2000000000;
  v62 = 0;
  v11 = *(a1 + 1392);
  v12 = *(a1 + 1384);
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 0x40000000;
  v56 = ___SIShutdownSetup_block_invoke;
  v57 = &unk_1E8191F90;
  v58 = &v59;
  if (v11 && *(v11 + 8))
  {
    v13 = 0;
    while ((v56)(v55, *(*v11 + 8 * v13), 0))
    {
      if (++v13 >= *(v11 + 8))
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    if (v12 && *(v12 + 8))
    {
      v14 = 0;
      do
      {
        if (!(v56)(v55, *(*v12 + 8 * v14), 1))
        {
          break;
        }

        ++v14;
      }

      while (v14 < *(v12 + 8));
    }
  }

  if (v60[3])
  {
    goto LABEL_23;
  }

  si_scheduler_boost_and_forget(*(a1 + 944));
  si_scheduler_boost_and_forget(*(a1 + 864));
  si_scheduler_boost_and_forget(*(a1 + 872));
  si_scheduler_boost_and_forget(*(a1 + 896));
  si_scheduler_boost_and_forget(*(a1 + 912));
  si_scheduler_boost_and_forget(*(a1 + 888));
  _SIShutdownIndexSchedulers(a1, 1, 1, Current);
  si_cancel_activectx(a1);
  *(a1 + 2420) = 1;
  if (*(a1 + 2481) == 4 && (*(a1 + 2460) & 1) == 0)
  {
    v27 = *__error();
    v28 = _SILogForLogForCategory(11);
    v29 = 2 * (dword_1EBF46AF8 < 4);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(a1 + 32);
      *buf = 67109376;
      *&buf[4] = v30;
      *&buf[8] = 1024;
      *&buf[10] = 4;
      _os_log_impl(&dword_1C278D000, v28, v29, "shutdown %d clean %x", buf, 0xEu);
    }

    v15 = 0;
    *__error() = v27;
  }

  else
  {
    v16 = (a1 + 1384);
    v54 = 0;
    if (!*(a1 + 1192) && !*(a1 + 1392) && !*v16)
    {
LABEL_23:
      v15 = 0;
      goto LABEL_57;
    }

    if (fd_setDir(*(a1 + 32), &v54))
    {
      add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v18 = setThreadIdAndInfo(*(a1 + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
      v53 = v18;
      v19 = threadData[9 * v18 + 1] + 320 * HIDWORD(v18);
      v51 = v20;
      v52 = HIDWORD(v18);
      v50 = v21;
      *(v19 + 216) = 0;
      v22 = *(v19 + 312);
      v23 = *(v19 + 224);
      if (v23)
      {
        v23(*(v19 + 288));
      }

      if (_setjmp(v19))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
        }

        *(v19 + 312) = v22;
        CIOnThreadCleanUpReset(v50);
        dropThreadId(v53, 1, add_explicit + 1);
        CICleanUpReset(v53, v51);
        goto LABEL_23;
      }

      if (*(a1 + 1192))
      {
        _si_store_property_cache(a1, 0, 0);
        si_storesizes(a1, 0);
      }

      v31 = v54;
      MEMORY[0x1C6921200](v54);
      if ((v31 & 0x80000000) == 0)
      {
        close(v31);
      }

      if (*(a1 + 1288))
      {
        v32 = 0;
      }

      else
      {
        v33 = *(a1 + 1192);
        v49 = *v16;
        v34 = malloc_type_malloc(0x40uLL, 0x10A0040BD50C579uLL);
        *v34 = 0;
        *(v34 + 1) = 0;
        *(v34 + 2) = 0;
        *(v34 + 3) = v33;
        *(v34 + 4) = a1;
        *(v34 + 20) = 257;
        *(v34 + 42) = 0;
        *(v34 + 23) = 0;
        *(v34 + 3) = vextq_s8(v49, v49, 8uLL);
        v35 = *(a1 + 1392);
        do
        {
          do
          {
            v36 = v35;
            v37 = *(a1 + 1384);
            __dmb(0xBu);
            v35 = *(a1 + 1392);
          }

          while (v36 != v35);
          v38 = *(a1 + 1392);
          v39 = *v16;
          v35 = v38;
        }

        while (v37 != *v16);
        v40 = *(a1 + 6592);
        *buf = xmmword_1F427BAA0;
        *&buf[16] = *&off_1F427BAB0;
        *&buf[32] = xmmword_1F427BAC0;
        v65 = *off_1F427BAD0;
        v66 = v34;
        v32 = _CISyncContextCreate(a1 + 1200, v38, v39, 2, 0, buf, v40, 0, 0);
      }

      v41 = *__error();
      v42 = _SILogForLogForCategory(0);
      v43 = 2 * (gSILogLevels[0] < 4);
      if (os_log_type_enabled(v42, v43))
      {
        v44 = CFAbsoluteTimeGetCurrent();
        *buf = 136315394;
        *&buf[4] = v4;
        *&buf[12] = 2048;
        *&buf[14] = v44 - Current;
        _os_log_impl(&dword_1C278D000, v42, v43, "Index closed for %s after %f seconds.", buf, 0x16u);
      }

      *__error() = v41;
      v45 = threadData[9 * v53 + 1] + 320 * v52;
      *(v45 + 312) = v22;
      v46 = *(v45 + 232);
      if (v46)
      {
        v46(*(v45 + 288));
      }

      dropThreadId(v53, 0, add_explicit + 1);
      v15 = v32;
    }

    else
    {
      v24 = *__error();
      v25 = *__error();
      v26 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "_SIShutdownSetup";
        *&buf[12] = 1024;
        *&buf[14] = 16665;
        *&buf[18] = 1024;
        *&buf[20] = v24;
        *&buf[24] = 2080;
        *&buf[26] = v4;
        _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: setDir 1 error %d (%s)", buf, 0x22u);
      }

      v15 = 0;
      *__error() = v25;
    }
  }

LABEL_57:
  _Block_object_dispose(&v59, 8);
  v47 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t _SIShutdownComplete(uint64_t a1)
{
  if (a1 && sContactsIndex == a1)
  {
    sContactsIndex = 0;
  }

  si_cancel_activectx(a1);
  pthread_mutex_lock((a1 + 1880));
  if (!*(a1 + 2416))
  {
    *(a1 + 2416) = 1;
    pthread_cond_signal((a1 + 1944));
  }

  return pthread_mutex_unlock((a1 + 1880));
}

_DWORD *SIWaitForAllIndexShutdown()
{
  v14 = *MEMORY[0x1E69E9840];
  result = SIProcessTerminating();
  if (gShutdownGroup)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v2 = *__error();
    v3 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1C278D000, v3, OS_LOG_TYPE_DEFAULT, "SIWaitForAllIndexShutdown start", &v12, 2u);
    }

    *__error() = v2;
    v4 = gShutdownGroup;
    v5 = dispatch_time(0, 30000000000);
    v6 = dispatch_group_wait(v4, v5);
    v7 = *__error();
    v8 = _SILogForLogForCategory(11);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v9)
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_DEFAULT, "SIWaitForAllIndexShutdown timeout", &v12, 2u);
      }

      *__error() = v7;
      _exit(1);
    }

    if (v9)
    {
      v10 = CFAbsoluteTimeGetCurrent();
      v12 = 134217984;
      v13 = v10 - Current;
      _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_DEFAULT, "SIWaitForAllIndexShutdown complete after %f", &v12, 0xCu);
    }

    result = __error();
    *result = v7;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void SICloseIndex(void *a1)
{
  v62 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = _SILogForLogForCategory(11);
  v4 = 2 * (dword_1EBF46AF8 < 4);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 67109120;
    *&buf[4] = gTerminating;
    _os_log_impl(&dword_1C278D000, v3, v4, "SICloseIndex, terminating:%d", buf, 8u);
  }

  *__error() = v2;
  if (gTerminating)
  {
    *(a1 + 605) = 1;
    *a1[824] = -1;
  }

  _SICloseIndex(a1, 1);
  si_cancel_activectx(a1);
  dispatch_sync(freeQueue, &__block_literal_global_1209);
  for (i = 104; i != 108; ++i)
  {
    dispatch_release(a1[i]);
  }

  dispatch_release(a1[148]);
  if ((*(a1 + 828) & 8) != 0)
  {
    if (*(a1 + 605))
    {
      goto LABEL_95;
    }

LABEL_13:
    v7 = a1[174];
    v8 = a1[173];
    if (v7)
    {
      LODWORD(v9) = *(v7 + 8);
      if (v9)
      {
        v10 = 0;
        do
        {
          freeIndex(*(*v7 + 8 * v10++));
          v9 = *(v7 + 8);
        }

        while (v10 < v9);
      }

      if (!v8)
      {
        goto LABEL_25;
      }
    }

    else if (!v8)
    {
      goto LABEL_28;
    }

    LODWORD(v11) = *(v8 + 8);
    if (v11)
    {
      v12 = 0;
      do
      {
        freeIndex(*(*v8 + 8 * v12++));
        v11 = *(v8 + 8);
      }

      while (v12 < v11);
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    LODWORD(v9) = *(v7 + 8);
LABEL_25:
    bzero(*v7, 8 * v9);
    *(v7 + 8) = 0;
    *(v7 + 16) = -1;
    if (v8)
    {
      LODWORD(v11) = *(v8 + 8);
LABEL_27:
      bzero(*v8, 8 * v11);
      *(v8 + 8) = 0;
      *(v8 + 16) = -1;
    }

LABEL_28:
    v13 = a1[225];
    if (v13)
    {
      CFRelease(v13);
      CFRelease(a1[226]);
      pthread_mutex_destroy((a1 + 227));
    }

    v14 = a1[213];
    if (v14)
    {
      CFRelease(v14);
    }

    v15 = a1[827];
    if (v15)
    {
      CFRelease(v15);
    }

    v16 = a1[177];
    if (v16)
    {
      CFRelease(v16);
    }

    v17 = a1[222];
    if (v17)
    {
      CFRelease(v17);
    }

    v18 = a1[223];
    if (v18)
    {
      CFRelease(v18);
    }

    if ((a1[259] & 1) == 0)
    {
      v19 = a1[826];
      if (v19)
      {
        CFRelease(v19);
      }

      a1[826] = 0;
    }

    pthread_mutex_destroy((a1 + 214));
    pthread_mutex_destroy((a1 + 165));
    ContentIndexListFree(a1[174]);
    ContentIndexListFree(a1[173]);
    v20 = a1[860];
    if (v20)
    {
      db_release_datastore_no_sync(v20);
    }

    v21 = a1[149];
    if (v21)
    {
      db_release_datastore_no_sync(v21);
    }

    v22 = a1[828];
    if (v22)
    {
      freeReverseDirStore(v22);
    }

    v23 = a1[261];
    if (v23)
    {
      CFRelease(v23);
    }

    a1[261] = 0;
    v24 = a1[262];
    if (v24)
    {
      CFRelease(v24);
    }

    a1[262] = 0;
    v25 = *(a1 + 22);
    *buf = *(a1 + 21);
    v59 = v25;
    v26 = *(a1 + 24);
    v60 = *(a1 + 23);
    v61 = v26;
    releaseCommDates(buf);
    v27 = *(a1 + 26);
    *buf = *(a1 + 25);
    v59 = v27;
    v28 = *(a1 + 28);
    v60 = *(a1 + 27);
    v61 = v28;
    releaseCommDates(buf);
    v29 = *(a1 + 30);
    *buf = *(a1 + 29);
    v59 = v29;
    v30 = *(a1 + 32);
    v60 = *(a1 + 31);
    v61 = v30;
    releaseCommDates(buf);
    v31 = *(a1 + 34);
    *buf = *(a1 + 33);
    v59 = v31;
    v32 = *(a1 + 36);
    v60 = *(a1 + 35);
    v61 = v32;
    releaseCommDates(buf);
    v33 = *(a1 + 38);
    *buf = *(a1 + 37);
    v59 = v33;
    v34 = *(a1 + 40);
    v60 = *(a1 + 39);
    v61 = v34;
    releaseCommDates(buf);
    v35 = a1[82];
    if (v35)
    {
      CFRelease(v35);
    }

    a1[82] = 0;
    v36 = a1[36];
    if (v36)
    {
      CFRelease(v36);
    }

    a1[36] = 0;
    v37 = a1[37];
    if (v37)
    {
      CFRelease(v37);
    }

    a1[37] = 0;
    v38 = a1[39];
    if (v38)
    {
      CFRelease(v38);
    }

    a1[39] = 0;
    v39 = a1[40];
    if (v39)
    {
      CFRelease(v39);
    }

    a1[40] = 0;
    v40 = a1[9];
    if (v40)
    {
      CFRelease(v40);
    }

    a1[9] = 0;
    v41 = a1[180];
    if (v41)
    {
      CFRelease(v41);
    }

    a1[180] = 0;
    v42 = a1[83];
    if (v42)
    {
      CFRelease(v42);
    }

    a1[83] = 0;
    v43 = a1[131];
    if (v43 && !*v43)
    {
      si_workqueue_drain(a1[131]);
      si_workqueue_destroy(v43);
    }

    for (j = 108; j != 126; ++j)
    {
      v45 = a1[j];
      if (v45 && atomic_fetch_add((v45 + 96), 0xFFFFFFFF) == 1)
      {
        _si_scheduler_destroy(v45);
      }
    }

    v46 = *(a1 + 351);
    v47 = a1[187];
    if (v47)
    {
      CFRelease(v47);
    }

    v48 = a1[295];
    if (v48)
    {
      v49 = *(v48 + 24);
      if (v49)
      {
        v49();
      }
    }

    v50 = a1[296];
    if (v50)
    {
      CFRelease(v50);
    }

    a1[296] = 0;
    si_deleteExhaustedRemappings(a1, a1[297]);
    a1[297] = 0;
    v51 = a1[825];
    if (v51)
    {
      CFRelease(v51);
    }

    a1[825] = 0;
    v52 = a1[281];
    if (v52)
    {
      free(*v52);
      free(v52[1]);
      free(v52);
    }

    v53 = a1[831];
    if (v53)
    {
      TermUpdateSetRelease(v53);
    }

    pthread_rwlock_destroy((a1 + 832));
    pthread_mutex_destroy((a1 + 235));
    pthread_cond_destroy((a1 + 243));
    pthread_mutex_destroy((a1 + 188));
    pthread_mutex_destroy((a1 + 196));
    pthread_mutex_destroy((a1 + 204));
    pthread_mutex_destroy(a1 + 109);
    pthread_mutex_destroy((a1 + 282));
    free(a1[865]);
    doc_store_close(a1[162]);
    a1[162] = 0;
    si_cancel_activectx(a1);
    *a1 = 0;
    if (gFlushSuspendOnceToken != -1)
    {
      dispatch_once(&gFlushSuspendOnceToken, &__block_literal_global_1212);
    }

    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&v59 = ___SIFreeIndex_block_invoke_3;
    *(&v59 + 1) = &__block_descriptor_tmp_1214;
    *&v60 = a1;
    dispatch_async(gFlushSuspendQueue, buf);
    global_queue = dispatch_get_global_queue(-32768, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SIFreeIndex_block_invoke_4;
    block[3] = &__block_descriptor_tmp_1215;
    block[4] = v46;
    dispatch_async(global_queue, block);
    CIPurgeTokenizers();
    v55 = 240;
    do
    {
      slab_cleanup(v55);
      v55 = (v55 + 1);
    }

    while (v55 != 255);
    goto LABEL_95;
  }

  pthread_mutex_lock(&schlock);
  v6 = *(a1 + 605);
  if (gAllIndexes)
  {
    CFSetRemoveValue(gAllIndexes, a1);
  }

  pthread_mutex_unlock(&schlock);
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_95:
  v56 = *MEMORY[0x1E69E9840];
}

CFDictionaryRef SICopyProperties(uint64_t a1)
{
  if (!*(a1 + 1192))
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 1504));
  v2 = *(a1 + 1496);
  if (!v2)
  {
    if (!si_create_propertydict(a1, 0, 0))
    {
      Copy = 0;
      goto LABEL_6;
    }

    v2 = *(a1 + 1496);
  }

  Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v2);
LABEL_6:
  pthread_mutex_unlock((a1 + 1504));
  return Copy;
}

uint64_t SIGetIndexVersion(uint64_t result)
{
  if (result)
  {
    return *(result + 6932);
  }

  return result;
}

uint64_t SIGetObjectCount(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 1192)) != 0)
  {
    return db_get_object_count(v1);
  }

  else
  {
    return -1;
  }
}

uint64_t SISyncIndexForLikelyShutdown(uint64_t result)
{
  if (result)
  {
    if (*(result + 1192) && *(result + 1040) && *(result + 1048) && *(result + 1160))
    {
      si_enqueue_barrier_with_qos(*(result + 1104), 9, si_flush_index_for_likely_shutdown_delayed0, result);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void si_flush_index_for_likely_shutdown_delayed0(uint64_t a1, int a2)
{
  if (!a2)
  {
    si_enqueue_barrier_with_qos(*(a1 + 1160), 9, si_flush_index_for_likely_shutdown_delayed1, a1);
  }
}

void si_flush_index_for_likely_shutdown_delayed1(uint64_t a1, int a2)
{
  if (!a2)
  {
    si_enqueue_barrier_with_qos(*(a1 + 1048), 9, si_flush_index_for_likely_shutdown_delayed, a1);
  }
}

void si_flush_index_for_likely_shutdown_delayed(uint64_t a1, int a2)
{
  if (!a2)
  {
    si_enqueue_work_with_qos(*(a1 + 1040), 9, fastFlushIndex, a1);
  }
}

void fastFlushIndex(uint64_t a1, int a2)
{
  if (!a2)
  {
    v4 = os_transaction_create();
    doFastFlushIndex(a1);

    os_release(v4);
  }
}

void _SIGetAllOids(uint64_t a1, void (*a2)(uint64_t, void, uint64_t), uint64_t a3)
{
  if (a1 && *(a1 + 1192))
  {
    v5 = malloc_type_malloc(0x18uLL, 0xA00402214FCE6uLL);
    v5[2] = a3;
    *v5 = a1;
    v5[1] = a2;
    v6 = *(a1 + 1040);

    si_enqueue_work(v6, si_gatherOids, v5);
  }

  else
  {

    a2(a3, 0, 1);
  }
}

void si_gatherOids(void **a1, int a2)
{
  if (a2)
  {
    (a1[1])(a1[2], 0, 1);
  }

  else
  {
    v3 = *a1;
    v4 = (*a1)[173];
    v5 = (*a1)[174];
    Mutable = RLEOIDArrayCreateMutable(*MEMORY[0x1E695E480]);
    v10 = 0;
    if (fd_setDir(*(v3 + 8), &v10))
    {
      if (*(v5 + 8))
      {
        v7 = 0;
        do
        {
          _CIAddOids(*(*v5 + 8 * v7++), Mutable);
        }

        while (v7 < *(v5 + 8));
      }

      if (*(v4 + 8))
      {
        v8 = 0;
        do
        {
          _CIAddOids(*(*v4 + 8 * v8++), Mutable);
        }

        while (v8 < *(v4 + 8));
      }

      v9 = v10;
      MEMORY[0x1C6921200](v10);
      if ((v9 & 0x80000000) == 0)
      {
        close(v9);
      }
    }

    (a1[1])(a1[2], Mutable, 0);
  }

  free(a1);
}

void _SICheckIndexForDuplicateOids(uint64_t a1)
{
  if (a1 && *(a1 + 1192))
  {
    v2 = *(a1 + 1064);
    if (v2)
    {
      si_enqueue_work_with_qos(v2, 9, si_checkDuplicateOids, a1);
    }
  }
}

void si_checkDuplicateOids(uint64_t a1, int a2)
{
  if (!a2)
  {
    v3 = *(a1 + 2368);
    if (v3 && CFArrayGetCount(v3))
    {
      v4 = *(a1 + 1064);

      si_enqueue_work_with_qos(v4, 9, _si_checkDuplicateOidsAfterCompact, a1);
    }

    else
    {

      _si_checkDuplicateOids(a1);
    }
  }
}

void _si_checkDuplicateOids(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  bzero(v38, 0x400uLL);
  v2 = fcntl(*(a1 + 32), 50, v38);
  if (v38[0])
  {
    v3 = v2 < 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v38;
  }

  v25 = _si_scheduler_suspend(*(a1 + 864), "SpotlightIndex.c", 18206);
  atomic_fetch_add((a1 + 1452), 1u);
  v5 = _si_scheduler_suspend(*(a1 + 872), "SpotlightIndex.c", 2139);
  atomic_fetch_add((a1 + 1452), 0xFFFFFFFF);
  v6 = *__error();
  v7 = _SILogForLogForCategory(7);
  v8 = dword_1EBF46AE8 < 3;
  if (os_log_type_enabled(v7, (dword_1EBF46AE8 < 3)))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_1C278D000, v7, v8, "*warn* Starting duplicate oid check for %s", &buf, 0xCu);
  }

  *__error() = v6;
  v9 = *MEMORY[0x1E695E480];
  v10 = SIUINT64SetCreate();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x2000000000;
  v37 = 0;
  v11 = *(a1 + 1392);
  v12 = *(a1 + 1384);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 0x40000000;
  v27 = ___si_checkDuplicateOids_block_invoke;
  v28 = &unk_1E81923D0;
  p_buf = &buf;
  v30 = v10;
  if (v12)
  {
    v13 = *(v12 + 8);
    while (v13 >= 1)
    {
      v14 = v13 - 1;
      v15 = (v27)(v26, *(*v12 + 8 * v13 - 8), 1);
      v13 = v14;
      if (!v15)
      {
        goto LABEL_18;
      }
    }
  }

  if (v11)
  {
    v16 = *(v11 + 8);
    do
    {
      if (v16 < 1)
      {
        break;
      }

      v17 = v16 - 1;
      v18 = (v27)(v26, *(*v11 + 8 * v16 - 8), 0);
      v16 = v17;
    }

    while (v18);
  }

LABEL_18:
  CFRelease(v10);
  v19 = *__error();
  v20 = _SILogForLogForCategory(7);
  v21 = dword_1EBF46AE8 < 3;
  if (os_log_type_enabled(v20, (dword_1EBF46AE8 < 3)))
  {
    v22 = *(*(&buf + 1) + 24);
    *v31 = 136315394;
    v32 = v4;
    v33 = 1024;
    v34 = v22;
    _os_log_impl(&dword_1C278D000, v20, v21, "*warn* Finished duplicate oid check for %s. Missing deletes:%d", v31, 0x12u);
  }

  *__error() = v19;
  si_scheduler_resume(*(a1 + 864), v25, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 18223);
  si_scheduler_resume(*(a1 + 872), v5, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 18224);
  v23 = CFStringCreateWithCString(v9, sysVersionCStr, 0x8000100u);
  SISetProperty(a1, @"kIndexCheckDupOids", v23);
  CFRelease(v23);
  _Block_object_dispose(&buf, 8);
  v24 = *MEMORY[0x1E69E9840];
}

void _si_checkDuplicateOidsAfterCompact(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
LABEL_2:
    v2 = *MEMORY[0x1E69E9840];
    return;
  }

  v4 = *(a1 + 2368);
  if (v4 && CFArrayGetCount(v4))
  {
    bzero(v15, 0x400uLL);
    v5 = fcntl(*(a1 + 32), 50, v15);
    v6 = v15[0];
    v7 = *__error();
    v8 = _SILogForLogForCategory(7);
    v9 = dword_1EBF46AE8 < 3;
    if (os_log_type_enabled(v8, (dword_1EBF46AE8 < 3)))
    {
      if (v6)
      {
        v10 = v5 < 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      *buf = 136315138;
      v14 = v11;
      _os_log_impl(&dword_1C278D000, v8, v9, "*warn* Skipping duplicate oid check for %s", buf, 0xCu);
    }

    *__error() = v7;
    goto LABEL_2;
  }

  v12 = *MEMORY[0x1E69E9840];

  _si_checkDuplicateOids(a1);
}

uint64_t _SIIssueRecovery(uint64_t result)
{
  v9 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (*(result + 1192))
    {
      bzero(v8, 0x400uLL);
      result = fcntl(*(v1 + 32), 50, v8);
      if ((result & 0x80000000) == 0)
      {
        if (v8[0])
        {
          v2 = *__error();
          v3 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v7 = v8;
            _os_log_impl(&dword_1C278D000, v3, OS_LOG_TYPE_DEFAULT, "Recovery issued for %s", buf, 0xCu);
          }

          *__error() = v2;
          *buf = 0;
          result = fd_setDir(*(v1 + 32), buf);
          if (result)
          {
            renameatx_np(*(v1 + 32), "indexState", *(v1 + 32), "indexState.aside", 0x10u);
            si_makeUnavailable(v1, 22, 2, 10, "recovery");
            v4 = *buf;
            result = MEMORY[0x1C6921200](*buf);
            if ((v4 & 0x80000000) == 0)
            {
              result = close(v4);
            }
          }
        }
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

int *_SISetQueryBehavior(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = gSIQueryBehavior;
  gSIQueryBehavior = a1;
  v2 = *__error();
  v3 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109376;
    v6[1] = v1;
    v7 = 1024;
    v8 = gSIQueryBehavior;
    _os_log_impl(&dword_1C278D000, v3, OS_LOG_TYPE_DEFAULT, "_SISetQueryBehavior from %d to %d", v6, 0xEu);
  }

  result = __error();
  *result = v2;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void si_cacheCleanup(void *a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    goto LABEL_13;
  }

  v3 = *a1;
  walk = a1[2];
  if (!walk)
  {
    bzero(&v16, 0x400uLL);
    if (fcntl(*(v3 + 32), 50, &v16) < 0 || !v16)
    {
      walk = a1[2];
      if (!walk)
      {
        goto LABEL_13;
      }
    }

    else
    {
      __strlcat_chk();
      v14 = xmmword_1C2BFB198;
      v15 = 0;
      fsi_attr_size(&v14);
      walk = fsi_create_walk(&v16);
      a1[2] = walk;
      if (!walk)
      {
        goto LABEL_13;
      }
    }
  }

  if (!**(v3 + 6592))
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    *&v8 = MEMORY[0x1E69E9820];
    *(&v8 + 1) = 0x40000000;
    v9 = __si_cacheCleanup_block_invoke;
    v10 = &unk_1E81923F8;
    v12 = v3;
    v13 = a1;
    v11 = &v16;
    if (fsi_iterate_f(walk, &v8))
    {
      _Block_object_dispose(&v16, 8);
    }

    else
    {
      v5 = *(v17 + 24);
      _Block_object_dispose(&v16, 8);
      if (v5 == 1)
      {
        si_enqueue_work(*(*a1 + 1064), si_cacheCleanup, a1);
        goto LABEL_16;
      }
    }
  }

LABEL_13:
  v6 = a1[2];
  if (v6)
  {
    fsi_close(v6);
  }

  free(a1);
LABEL_16:
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __si_cacheCleanup_block_invoke(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v35 = *MEMORY[0x1E69E9840];
  if (**(a1[5] + 6592) | a4)
  {
    result = 1;
    goto LABEL_37;
  }

  v7 = a1[6];
  v8 = *(v7 + 8);
  v9 = *(v7 + 24 + 8 * v8);
  *(v7 + 24 + 8 * v8) = v9 + 1;
  v10 = *(a3 + 4);
  if (!v10)
  {
    if (v8 == 4)
    {
      __endptr = 0;
      v18 = strtoll(*(a3 + 32), &__endptr, 0);
      v19 = __endptr;
      if (__endptr != *(a3 + 32))
      {
        v20 = v18;
        if (v18)
        {
          if (!strcmp(__endptr, ".txt") || strcmp(v19, ".tmp"))
          {
            bzero(buf, 0x400uLL);
            v21 = *(a1[5] + 1416);
            if (!*(v21 + 240))
            {
              v22 = (*(v21 + 48))(v21, v20, buf, 0);
              if (v22)
              {
                memset(&v29, 0, sizeof(v29));
                if (stat(v22, &v29) == -1 && *__error() == 2)
                {
                  v23 = *__error();
                  v24 = _SILogForLogForCategory(0);
                  v25 = 2 * (gSILogLevels[0] < 4);
                  if (os_log_type_enabled(v24, v25))
                  {
                    v26 = *(a3 + 16);
                    *v31 = 136315138;
                    v32 = v26;
                    _os_log_impl(&dword_1C278D000, v24, v25, "deleting stale cache file%s", v31, 0xCu);
                  }

                  *__error() = v23;
                  if (!unlink(*(a3 + 16)))
                  {
                    v27 = a1[6] + 8 * *(a1[6] + 8);
                    --*(v27 + 24);
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_36;
  }

  if (v10 == 2)
  {
    if (v8 >= 2 && (*(v7 + 64) & 1) == 0 && !v9)
    {
      v13 = *__error();
      v14 = _SILogForLogForCategory(0);
      v15 = 2 * (gSILogLevels[0] < 4);
      if (os_log_type_enabled(v14, v15))
      {
        v16 = *(a3 + 16);
        *buf = 136315138;
        v34 = v16;
        _os_log_impl(&dword_1C278D000, v14, v15, "deleting stale cache folder%s", buf, 0xCu);
      }

      *__error() = v13;
      v17 = rmdir(*(a3 + 16));
      v7 = a1[6];
      if (v17)
      {
        LODWORD(v8) = *(v7 + 8);
      }

      else
      {
        v8 = *(v7 + 8);
        --*(v7 + 8 * v8 + 16);
      }
    }

    *(v7 + 64) = 0;
    *(v7 + 8) = v8 - 1;
    if (v8 == 4)
    {
      do
      {
        *(a2 + 3400) = 1;
        a2 = *(a2 + 8608);
      }

      while (a2);
      result = 0;
      *(*(a1[4] + 8) + 24) = 1;
      goto LABEL_37;
    }

LABEL_36:
    result = 0;
    goto LABEL_37;
  }

  if (v10 != 1)
  {
    goto LABEL_36;
  }

  v11 = v8 + 1;
  *(v7 + 8) = v8 + 1;
  if (v8 < 1 || v11 <= 4 && strlen(*(a3 + 32)) == 4)
  {
    result = 0;
  }

  else
  {
    *(v7 + 64) = 1;
    result = 2;
  }

  *(v7 + 24 + 8 * v11) = 0;
LABEL_37:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

void _SIIssueSizeRepair(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 1192))
    {
      si_enqueue_barrier(*(a1 + 1048), si_sizeRepair, a1);
    }
  }
}

uint64_t si_sizeRepair(uint64_t result, int a2)
{
  if (!a2 && *(result + 1192) && (*(result + 1288) & 1) == 0)
  {
    return si_set_property(result, @"kSIRepairSizes", *MEMORY[0x1E695E738], 1, 1);
  }

  return result;
}

_DWORD *_SIOpenIndexFilesForMerge(_DWORD *result)
{
  v25 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 149);
    if (*v2 != 1685287992)
    {
      v14 = *__error();
      v15 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *v2;
        *buf = 136315650;
        *&buf[4] = "db_ensure_open_files";
        v21 = 1024;
        v22 = 276;
        v23 = 1024;
        v24 = v16;
        _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
      }

      *__error() = v14;
      v17 = __si_assert_copy_extra_332();
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 276, v19);
      free(v18);
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    if (db_read_lock(v2 + 584))
    {
      sdb2_die(v2, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15502);
    }

    v3 = *(v2 + 848);
    *buf = 0;
    v4 = _fd_acquire_fd(v3, buf);
    if (v4 != -1)
    {
      v3[17] = 1;
      _fd_release_fd(v3, v4, 0, *buf);
    }

    v5 = *(v2 + 840);
    *buf = 0;
    v6 = _fd_acquire_fd(v5, buf);
    if (v6 != -1)
    {
      v5[17] = 1;
      _fd_release_fd(v5, v6, 0, *buf);
    }

    v7 = pthread_mutex_lock((v2 + 584));
    v8 = *(v2 + 780) - 1;
    *(v2 + 780) = v8;
    if (!v8)
    {
      db_rwlock_wakeup(v2 + 584, 0, 0);
    }

    result = pthread_mutex_unlock((v2 + 584));
    if (v7)
    {
      sdb2_die(v2, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15505);
    }

    v9 = *(v1 + 174);
    v10 = *(v1 + 173);
    if (*(v9 + 8))
    {
      v11 = 0;
      do
      {
        result = _CIEnsureOpenFiles(*(*v9 + 8 * v11++));
      }

      while (v11 < *(v9 + 8));
    }

    if (*(v10 + 8))
    {
      v12 = 0;
      do
      {
        result = _CIEnsureOpenFiles(*(*v10 + 8 * v12++));
      }

      while (v12 < *(v10 + 8));
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}